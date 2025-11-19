uint64_t sub_1BD7773DC()
{
  v1 = v0[35];
  swift_willThrow();

  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v14 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  v0[22] = sub_1BD77C4C0;
  v0[23] = v8;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1BD126964;
  v0[21] = &block_descriptor_182_0;
  v9 = _Block_copy(v0 + 18);
  v10 = v7;
  sub_1BE051F74();
  v0[26] = MEMORY[0x1E69E7CC0];
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v2, v4, v9);
  _Block_release(v9);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v14);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1BD777628(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a2;
  v5 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD77769C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD777728;

  return sub_1BD776BE0();
}

uint64_t sub_1BD777728(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD777828, 0, 0);
}

uint64_t sub_1BD777828()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) associatedPassUniqueID], v1, v2))
  {
    sub_1BE052434();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    if (v4)
    {
      v8 = sub_1BE052404();
    }

    else
    {
      v8 = 0;
    }

    v9 = [v6 passWithUniqueID_];

    v10 = [v9 paymentPass];
    if (v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];

      v12 = v11;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_14:
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_1BD7779B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = sub_1BE04D8A4();
  MEMORY[0x1BFB40450](v11, a2, a3, a4);
  v10(v18, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_1BE04D8A4();
  MEMORY[0x1BFB40460](v13, a5, a6, a7);
  v12(v18, 0);
}

uint64_t sub_1BD777B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD777B30, 0, 0);
}

uint64_t sub_1BD777B30()
{
  v1 = *(v0 + 176);
  v2 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v2 paymentDataProvider:*(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider)];
  *(v0 + 184) = v3;

  if (v3)
  {
    v5 = v3;
    v6 = sub_1BE04AE64();
    v7 = sub_1BE04AE64();
    [v5 setLimit:0 startDate:v6 endDate:v7];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1BD777EAC;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD9C18BC;
    *(v0 + 104) = &block_descriptor_173_0;
    *(v0 + 112) = v8;
    [v5 reloadTransactionsWithCompletion_];
    v4 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v4);
  }

  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v4 = sub_1BE053704();
    v9 = v4;
  }

  else
  {
    v9 = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    if (v9 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    v11 = 0;
    v12 = &selRef_recurringPaymentMemo;
    v13 = &selRef_thumbnailWidth;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v10 >> 62)
      {
        v15 = MEMORY[0x1BFB40900](v11, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v11 + 32);
      }

      v16 = v15;
      if ([v15 transactionType] || objc_msgSend(v16, v12[17]) || objc_msgSend(v16, v13[157]) != 1)
      {
      }

      else
      {
        v17 = *(v0 + 152);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1BD1D96EC(0, *(v14 + 2) + 1, 1, v14);
        }

        v19 = *(v14 + 2);
        v18 = *(v14 + 3);
        if (v19 >= v18 >> 1)
        {
          v14 = sub_1BD1D96EC((v18 > 1), v19 + 1, 1, v14);
        }

        v20 = *(v0 + 152);
        *(v14 + 2) = v19 + 1;
        v21 = &v14[16 * v19];
        *(v21 + 4) = v16;
        *(v21 + 5) = v20;
        v12 = &selRef_recurringPaymentMemo;
        v13 = &selRef_thumbnailWidth;
      }

      ++v11;
    }

    while (v9 != v11);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v0 + 184);

  v23 = *(v0 + 8);

  return v23(v14);
}

uint64_t sub_1BD777EAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD777F8C, 0, 0);
}

void sub_1BD777F8C()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  if (v1 >> 62)
  {
    v2 = sub_1BE053704();
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_22:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = &selRef_recurringPaymentMemo;
  v6 = &selRef_thumbnailWidth;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB40900](v3, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v3 + 32);
    }

    v8 = v7;
    if ([v7 transactionType] || objc_msgSend(v8, v5[17]) || objc_msgSend(v8, v6[157]) != 1)
    {
    }

    else
    {
      v9 = *(v0 + 152);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1BD1D96EC(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_1BD1D96EC((v10 > 1), v11 + 1, 1, v4);
      }

      v12 = *(v0 + 152);
      *(v4 + 2) = v11 + 1;
      v13 = &v4[16 * v11];
      *(v13 + 4) = v8;
      *(v13 + 5) = v12;
      v5 = &selRef_recurringPaymentMemo;
      v6 = &selRef_thumbnailWidth;
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_23:
  v14 = *(v0 + 184);

  v15 = *(v0 + 8);

  v15(v4);
}

void *sub_1BD778178()
{
  if (*(v0 + 80))
  {
    return 0;
  }

  v2 = *(v0 + 32);
  v3 = *(v0 + 24) >> 1;
  if (v2 == v3)
  {
    goto LABEL_9;
  }

  if (v2 >= v3 || v2 < *(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = *(*(v0 + 8) + 8 * v2);
    *(v0 + 32) = v2 + 1;
    v6 = *(v0 + 72);
    v7 = *(v0 + 64) >> 1;
    if (v6 == v7)
    {
LABEL_9:
      result = 0;
      *(v0 + 80) = 1;
      return result;
    }

    if (v6 < v7 && v6 >= *(v0 + 56))
    {
      v9 = *(*(v0 + 48) + 8 * v6);
      *(v0 + 72) = v6 + 1;
      v10 = v5;
      v11 = v5;
      v12 = v9;
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD778238(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccountDebugTransactionGroup(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD77BFE0(a2, v7, type metadata accessor for AccountDebugTransactionGroup);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_1BE04D8A4();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1BD1D97F8(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1BD1D97F8(v13 > 1, v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  sub_1BD77C264(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for AccountDebugTransactionGroup);
  v8(v16, 0);
}

uint64_t sub_1BD778430(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;

    return MEMORY[0x1EEE6DEE8](v7, v8);
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      sub_1BD0E5E8C(0, a4);
      v11 = sub_1BE052744();
    }

    **(*(v7 + 64) + 40) = v11;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD778530(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccountDebugSavingsStatement(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD77BFE0(a2, v7, type metadata accessor for AccountDebugSavingsStatement);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_1BE04D8A4();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1BD1D9820(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1BD1D9820(v13 > 1, v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  sub_1BD77C264(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for AccountDebugSavingsStatement);
  v8(v16, 0);
}

uint64_t sub_1BD778714(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BE053834();

  MEMORY[0x1BFB3F610](a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD7787DC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AccountDebugCKTransaction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29[-v12];
  if (a1)
  {
    sub_1BD77BFE0(a3, &v29[-v12], type metadata accessor for AccountDebugCKTransaction);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = sub_1BE04D8A4();
    v16 = v15;
    v17 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1BD1D9848(0, v17[2] + 1, 1, v17);
      *v16 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1BD1D9848(v19 > 1, v20 + 1, 1, v17);
      *v16 = v17;
    }

    v17[2] = v20 + 1;
    sub_1BD77C264(v13, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, type metadata accessor for AccountDebugCKTransaction);
    v14(v29, 0);
  }

  else
  {
    sub_1BD77BFE0(a3, v9, type metadata accessor for AccountDebugCKTransaction);
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = sub_1BE04D8A4();
    v23 = v22;
    v24 = *v22;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_1BD1D9848(0, v24[2] + 1, 1, v24);
      *v23 = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1BD1D9848(v26 > 1, v27 + 1, 1, v24);
      *v23 = v24;
    }

    v24[2] = v27 + 1;
    sub_1BD77C264(v9, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, type metadata accessor for AccountDebugCKTransaction);
    v21(v29, 0);
  }
}

uint64_t sub_1BD778B04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccountDebugCKReward(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD77BFE0(a2, v7, type metadata accessor for AccountDebugCKReward);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_1BE04D8A4();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1BD1D9870(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1BD1D9870(v13 > 1, v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  sub_1BD77C264(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for AccountDebugCKReward);
  v8(v16, 0);
}

uint64_t sub_1BD778CE8(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE048C84();
  sub_1BD779C9C(&v7);

  v2 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;
  v3 = a1;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE048C84();
  sub_1BD779BB8(&v7);

  v4 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v4;
  v5 = v3;
  return sub_1BE04D8C4();
}

void sub_1BD77921C()
{
  sub_1BD0E4578(319, &qword_1EBD52480, &qword_1EBD52488);
  if (v0 <= 0x3F)
  {
    sub_1BD779B58(319, &qword_1EBD368F0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1BD779B58(319, &unk_1EBD49E00, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD52490, &qword_1EBD3B6E8);
        if (v3 <= 0x3F)
        {
          sub_1BD77953C();
          if (v4 <= 0x3F)
          {
            sub_1BD0E4578(319, &qword_1EBD52498, &qword_1EBD524A0);
            if (v5 <= 0x3F)
            {
              sub_1BD0E4578(319, &qword_1EBD524A8, &qword_1EBD524B0);
              if (v6 <= 0x3F)
              {
                sub_1BD0E4578(319, &qword_1EBD524B8, &unk_1EBD524C0);
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD77953C()
{
  if (!qword_1EBD44FF0)
  {
    type metadata accessor for Decimal(255);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD44FF0);
    }
  }
}

void sub_1BD7795DC()
{
  sub_1BD779B58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD524E8);
      if (v2 <= 0x3F)
      {
        sub_1BD7796DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD7796DC()
{
  if (!qword_1EBD524F0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD524E8);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD524F0);
    }
  }
}

void sub_1BD77978C()
{
  sub_1BD779B58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v1 <= 0x3F)
    {
      sub_1BD779B58(319, &qword_1EBD52508, &type metadata for AccountDebugTransaction, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD524E8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD779928()
{
  result = sub_1BD0E5E8C(319, &qword_1EBD45650);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AccountDebugTransactionGroup(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD7799EC()
{
  sub_1BE04AF64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Decimal(319);
    if (v1 <= 0x3F)
    {
      sub_1BD779B58(319, &qword_1EBD52530, &type metadata for AccountDebugEvent, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1BD779B58(319, &qword_1EBD52538, &type metadata for AccountDebugTransaction, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BD779B58(319, &qword_1EBD52540, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD779B58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BD779BB8(void **a1)
{
  v2 = *(type metadata accessor for AccountDebugCKReward(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD779D80(v6, type metadata accessor for AccountDebugCKReward, sub_1BD77A380, sub_1BD779ED0);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD779C9C(void **a1)
{
  v2 = *(type metadata accessor for AccountDebugCKTransaction(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7E0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD779D80(v6, type metadata accessor for AccountDebugCKTransaction, sub_1BD77ACA8, sub_1BD77A128);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD779D80(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1BE053B14();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BE0527B4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1BD779ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for AccountDebugCKReward(0);
  MEMORY[0x1EEE9AC00](v37, v8);
  v36 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *a4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v20;
    while (1)
    {
      sub_1BD77BFE0(v23, v18, type metadata accessor for AccountDebugCKReward);
      sub_1BD77BFE0(v24, v13, type metadata accessor for AccountDebugCKReward);
      v25 = sub_1BE04AF04();
      sub_1BD77C048(v13, type metadata accessor for AccountDebugCKReward);
      sub_1BD77C048(v18, type metadata accessor for AccountDebugCKReward);
      if (v25 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_1BD77C264(v23, v36, type metadata accessor for AccountDebugCKReward);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD77C264(v26, v24, type metadata accessor for AccountDebugCKReward);
      v24 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD77A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for AccountDebugCKTransaction(0);
  MEMORY[0x1EEE9AC00](v37, v8);
  v36 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *a4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v20;
    while (1)
    {
      sub_1BD77BFE0(v23, v18, type metadata accessor for AccountDebugCKTransaction);
      sub_1BD77BFE0(v24, v13, type metadata accessor for AccountDebugCKTransaction);
      v25 = sub_1BE04AF04();
      sub_1BD77C048(v13, type metadata accessor for AccountDebugCKTransaction);
      sub_1BD77C048(v18, type metadata accessor for AccountDebugCKTransaction);
      if (v25 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_1BD77C264(v23, v36, type metadata accessor for AccountDebugCKTransaction);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD77C264(v26, v24, type metadata accessor for AccountDebugCKTransaction);
      v24 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD77A380(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v121 = type metadata accessor for AccountDebugCKReward(0);
  v115 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v9);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v119 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v120 = &v104 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v104 - v19;
  v117 = a3;
  v21 = a3[1];
  if (v21 >= 1)
  {
    v106 = a4;
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24 = v22;
      v25 = v22 + 1;
      if (v22 + 1 >= v21)
      {
        v33 = v22 + 1;
      }

      else
      {
        v118 = v21;
        v112 = v6;
        v26 = *v117;
        v27 = *(v115 + 72);
        v5 = *v117 + v27 * v25;
        sub_1BD77BFE0(v5, v20, type metadata accessor for AccountDebugCKReward);
        v28 = v26 + v27 * v24;
        v29 = v24;
        v30 = v120;
        sub_1BD77BFE0(v28, v120, type metadata accessor for AccountDebugCKReward);
        v114 = sub_1BE04AF04();
        sub_1BD77C048(v30, type metadata accessor for AccountDebugCKReward);
        sub_1BD77C048(v20, type metadata accessor for AccountDebugCKReward);
        v107 = v29;
        v31 = v29 + 2;
        v116 = v27;
        v32 = v26 + v27 * (v29 + 2);
        while (1)
        {
          v33 = v118;
          if (v118 == v31)
          {
            break;
          }

          v34 = v23;
          v35 = v114 == -1;
          sub_1BD77BFE0(v32, v20, type metadata accessor for AccountDebugCKReward);
          v36 = v120;
          sub_1BD77BFE0(v5, v120, type metadata accessor for AccountDebugCKReward);
          v37 = sub_1BE04AF04();
          sub_1BD77C048(v36, type metadata accessor for AccountDebugCKReward);
          sub_1BD77C048(v20, type metadata accessor for AccountDebugCKReward);
          v38 = v35 ^ (v37 != -1);
          v23 = v34;
          ++v31;
          v32 += v116;
          v5 += v116;
          if ((v38 & 1) == 0)
          {
            v33 = v31 - 1;
            break;
          }
        }

        v6 = v112;
        v24 = v107;
        if (v114 == -1)
        {
          if (v33 < v107)
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            return;
          }

          if (v107 < v33)
          {
            v105 = v23;
            v39 = v116 * (v33 - 1);
            v5 = v33 * v116;
            v118 = v33;
            v40 = v107 * v116;
            do
            {
              if (v24 != --v33)
              {
                v112 = v6;
                v41 = *v117;
                if (!*v117)
                {
                  goto LABEL_129;
                }

                sub_1BD77C264(v41 + v40, v109, type metadata accessor for AccountDebugCKReward);
                if (v40 < v39 || v41 + v40 >= v41 + v5)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v40 != v39)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD77C264(v109, v41 + v39, type metadata accessor for AccountDebugCKReward);
                v6 = v112;
              }

              ++v24;
              v39 -= v116;
              v5 -= v116;
              v40 += v116;
            }

            while (v24 < v33);
            v23 = v105;
            v24 = v107;
            v33 = v118;
          }
        }
      }

      v42 = v117[1];
      if (v33 >= v42)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v33, v24))
      {
        goto LABEL_121;
      }

      if (v33 - v24 >= v106)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v24, v106))
      {
        goto LABEL_122;
      }

      if (v24 + v106 < v42)
      {
        v42 = v24 + v106;
      }

      if (v42 < v24)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v33 == v42)
      {
LABEL_31:
        v22 = v33;
        if (v33 < v24)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v111 = v42;
        v112 = v6;
        v105 = v23;
        v89 = v24;
        v90 = *v117;
        v91 = *(v115 + 72);
        v92 = *v117 + v91 * (v33 - 1);
        v93 = -v91;
        v107 = v89;
        v94 = v89 - v33;
        v110 = v91;
        v5 = v90 + v33 * v91;
        do
        {
          v118 = v33;
          v113 = v5;
          v114 = v94;
          v116 = v92;
          v95 = v92;
          do
          {
            sub_1BD77BFE0(v5, v20, type metadata accessor for AccountDebugCKReward);
            v96 = v120;
            sub_1BD77BFE0(v95, v120, type metadata accessor for AccountDebugCKReward);
            v97 = sub_1BE04AF04();
            sub_1BD77C048(v96, type metadata accessor for AccountDebugCKReward);
            sub_1BD77C048(v20, type metadata accessor for AccountDebugCKReward);
            if (v97 != -1)
            {
              break;
            }

            if (!v90)
            {
              goto LABEL_126;
            }

            v98 = v119;
            sub_1BD77C264(v5, v119, type metadata accessor for AccountDebugCKReward);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD77C264(v98, v95, type metadata accessor for AccountDebugCKReward);
            v95 += v93;
            v5 += v93;
          }

          while (!__CFADD__(v94++, 1));
          v33 = v118 + 1;
          v92 = v116 + v110;
          v94 = v114 - 1;
          v5 = v113 + v110;
        }

        while (v118 + 1 != v111);
        v22 = v111;
        v6 = v112;
        v23 = v105;
        v24 = v107;
        if (v111 < v107)
        {
          goto LABEL_120;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD1D7844(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = *(v23 + 2);
      v43 = *(v23 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v23 = sub_1BD1D7844((v43 > 1), v44 + 1, 1, v23);
      }

      *(v23 + 2) = v45;
      v46 = &v23[16 * v44];
      *(v46 + 4) = v24;
      *(v46 + 5) = v22;
      v47 = *v108;
      if (!*v108)
      {
        goto LABEL_130;
      }

      if (v44)
      {
        while (1)
        {
          v5 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v48 = *(v23 + 4);
            v49 = *(v23 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_51:
            if (v51)
            {
              goto LABEL_109;
            }

            v64 = &v23[16 * v45];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = &v23[16 * v5 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_116;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                v5 = v45 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v74 = &v23[16 * v45];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_65:
          if (v69)
          {
            goto LABEL_111;
          }

          v77 = &v23[16 * v5];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_114;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_72:
          v85 = v5 - 1;
          if (v5 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*v117)
          {
            goto LABEL_127;
          }

          v86 = *&v23[16 * v85 + 32];
          v87 = *&v23[16 * v5 + 40];
          sub_1BD77B5D0(*v117 + *(v115 + 72) * v86, *v117 + *(v115 + 72) * *&v23[16 * v5 + 32], *v117 + *(v115 + 72) * v87, v47);
          if (v6)
          {
            goto LABEL_103;
          }

          if (v87 < v86)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1BD5ED6C8(v23);
          }

          if (v85 >= *(v23 + 2))
          {
            goto LABEL_106;
          }

          v88 = &v23[16 * v85];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          v122 = v23;
          sub_1BD5ED63C(v5);
          v23 = v122;
          v45 = *(v122 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v52 = &v23[16 * v45 + 32];
        v53 = *(v52 - 64);
        v54 = *(v52 - 56);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_107;
        }

        v57 = *(v52 - 48);
        v56 = *(v52 - 40);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_108;
        }

        v59 = &v23[16 * v45];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_110;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v63 >= v55)
        {
          v81 = &v23[16 * v5 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v50 < v84)
          {
            v5 = v45 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v21 = v117[1];
      if (v22 >= v21)
      {
        goto LABEL_93;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_93:
  v5 = *v108;
  if (!*v108)
  {
    goto LABEL_131;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v23 = sub_1BD5ED6C8(v23);
  }

  v122 = v23;
  v100 = *(v23 + 2);
  if (v100 >= 2)
  {
    while (*v117)
    {
      v101 = *&v23[16 * v100];
      v102 = *&v23[16 * v100 + 24];
      sub_1BD77B5D0(*v117 + *(v115 + 72) * v101, *v117 + *(v115 + 72) * *&v23[16 * v100 + 16], *v117 + *(v115 + 72) * v102, v5);
      if (v6)
      {
        goto LABEL_103;
      }

      if (v102 < v101)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD5ED6C8(v23);
      }

      if (v100 - 2 >= *(v23 + 2))
      {
        goto LABEL_119;
      }

      v103 = &v23[16 * v100];
      *v103 = v101;
      *(v103 + 1) = v102;
      v122 = v23;
      sub_1BD5ED63C(v100 - 1);
      v23 = v122;
      v100 = *(v122 + 2);
      if (v100 <= 1)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_128;
  }

LABEL_103:
}

void sub_1BD77ACA8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v121 = type metadata accessor for AccountDebugCKTransaction(0);
  v115 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v9);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v119 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v120 = &v104 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v104 - v19;
  v117 = a3;
  v21 = a3[1];
  if (v21 >= 1)
  {
    v106 = a4;
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24 = v22;
      v25 = v22 + 1;
      if (v22 + 1 >= v21)
      {
        v33 = v22 + 1;
      }

      else
      {
        v118 = v21;
        v112 = v6;
        v26 = *v117;
        v27 = *(v115 + 72);
        v5 = *v117 + v27 * v25;
        sub_1BD77BFE0(v5, v20, type metadata accessor for AccountDebugCKTransaction);
        v28 = v26 + v27 * v24;
        v29 = v24;
        v30 = v120;
        sub_1BD77BFE0(v28, v120, type metadata accessor for AccountDebugCKTransaction);
        v114 = sub_1BE04AF04();
        sub_1BD77C048(v30, type metadata accessor for AccountDebugCKTransaction);
        sub_1BD77C048(v20, type metadata accessor for AccountDebugCKTransaction);
        v107 = v29;
        v31 = v29 + 2;
        v116 = v27;
        v32 = v26 + v27 * (v29 + 2);
        while (1)
        {
          v33 = v118;
          if (v118 == v31)
          {
            break;
          }

          v34 = v23;
          v35 = v114 == -1;
          sub_1BD77BFE0(v32, v20, type metadata accessor for AccountDebugCKTransaction);
          v36 = v120;
          sub_1BD77BFE0(v5, v120, type metadata accessor for AccountDebugCKTransaction);
          v37 = sub_1BE04AF04();
          sub_1BD77C048(v36, type metadata accessor for AccountDebugCKTransaction);
          sub_1BD77C048(v20, type metadata accessor for AccountDebugCKTransaction);
          v38 = v35 ^ (v37 != -1);
          v23 = v34;
          ++v31;
          v32 += v116;
          v5 += v116;
          if ((v38 & 1) == 0)
          {
            v33 = v31 - 1;
            break;
          }
        }

        v6 = v112;
        v24 = v107;
        if (v114 == -1)
        {
          if (v33 < v107)
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            return;
          }

          if (v107 < v33)
          {
            v105 = v23;
            v39 = v116 * (v33 - 1);
            v5 = v33 * v116;
            v118 = v33;
            v40 = v107 * v116;
            do
            {
              if (v24 != --v33)
              {
                v112 = v6;
                v41 = *v117;
                if (!*v117)
                {
                  goto LABEL_129;
                }

                sub_1BD77C264(v41 + v40, v109, type metadata accessor for AccountDebugCKTransaction);
                if (v40 < v39 || v41 + v40 >= v41 + v5)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v40 != v39)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD77C264(v109, v41 + v39, type metadata accessor for AccountDebugCKTransaction);
                v6 = v112;
              }

              ++v24;
              v39 -= v116;
              v5 -= v116;
              v40 += v116;
            }

            while (v24 < v33);
            v23 = v105;
            v24 = v107;
            v33 = v118;
          }
        }
      }

      v42 = v117[1];
      if (v33 >= v42)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v33, v24))
      {
        goto LABEL_121;
      }

      if (v33 - v24 >= v106)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v24, v106))
      {
        goto LABEL_122;
      }

      if (v24 + v106 < v42)
      {
        v42 = v24 + v106;
      }

      if (v42 < v24)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v33 == v42)
      {
LABEL_31:
        v22 = v33;
        if (v33 < v24)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v111 = v42;
        v112 = v6;
        v105 = v23;
        v89 = v24;
        v90 = *v117;
        v91 = *(v115 + 72);
        v92 = *v117 + v91 * (v33 - 1);
        v93 = -v91;
        v107 = v89;
        v94 = v89 - v33;
        v110 = v91;
        v5 = v90 + v33 * v91;
        do
        {
          v118 = v33;
          v113 = v5;
          v114 = v94;
          v116 = v92;
          v95 = v92;
          do
          {
            sub_1BD77BFE0(v5, v20, type metadata accessor for AccountDebugCKTransaction);
            v96 = v120;
            sub_1BD77BFE0(v95, v120, type metadata accessor for AccountDebugCKTransaction);
            v97 = sub_1BE04AF04();
            sub_1BD77C048(v96, type metadata accessor for AccountDebugCKTransaction);
            sub_1BD77C048(v20, type metadata accessor for AccountDebugCKTransaction);
            if (v97 != -1)
            {
              break;
            }

            if (!v90)
            {
              goto LABEL_126;
            }

            v98 = v119;
            sub_1BD77C264(v5, v119, type metadata accessor for AccountDebugCKTransaction);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD77C264(v98, v95, type metadata accessor for AccountDebugCKTransaction);
            v95 += v93;
            v5 += v93;
          }

          while (!__CFADD__(v94++, 1));
          v33 = v118 + 1;
          v92 = v116 + v110;
          v94 = v114 - 1;
          v5 = v113 + v110;
        }

        while (v118 + 1 != v111);
        v22 = v111;
        v6 = v112;
        v23 = v105;
        v24 = v107;
        if (v111 < v107)
        {
          goto LABEL_120;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD1D7844(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = *(v23 + 2);
      v43 = *(v23 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v23 = sub_1BD1D7844((v43 > 1), v44 + 1, 1, v23);
      }

      *(v23 + 2) = v45;
      v46 = &v23[16 * v44];
      *(v46 + 4) = v24;
      *(v46 + 5) = v22;
      v47 = *v108;
      if (!*v108)
      {
        goto LABEL_130;
      }

      if (v44)
      {
        while (1)
        {
          v5 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v48 = *(v23 + 4);
            v49 = *(v23 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_51:
            if (v51)
            {
              goto LABEL_109;
            }

            v64 = &v23[16 * v45];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = &v23[16 * v5 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_116;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                v5 = v45 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v74 = &v23[16 * v45];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_65:
          if (v69)
          {
            goto LABEL_111;
          }

          v77 = &v23[16 * v5];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_114;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_72:
          v85 = v5 - 1;
          if (v5 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*v117)
          {
            goto LABEL_127;
          }

          v86 = *&v23[16 * v85 + 32];
          v87 = *&v23[16 * v5 + 40];
          sub_1BD77BAD8(*v117 + *(v115 + 72) * v86, *v117 + *(v115 + 72) * *&v23[16 * v5 + 32], *v117 + *(v115 + 72) * v87, v47);
          if (v6)
          {
            goto LABEL_103;
          }

          if (v87 < v86)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1BD5ED6C8(v23);
          }

          if (v85 >= *(v23 + 2))
          {
            goto LABEL_106;
          }

          v88 = &v23[16 * v85];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          v122 = v23;
          sub_1BD5ED63C(v5);
          v23 = v122;
          v45 = *(v122 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v52 = &v23[16 * v45 + 32];
        v53 = *(v52 - 64);
        v54 = *(v52 - 56);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_107;
        }

        v57 = *(v52 - 48);
        v56 = *(v52 - 40);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_108;
        }

        v59 = &v23[16 * v45];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_110;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v63 >= v55)
        {
          v81 = &v23[16 * v5 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v50 < v84)
          {
            v5 = v45 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v21 = v117[1];
      if (v22 >= v21)
      {
        goto LABEL_93;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_93:
  v5 = *v108;
  if (!*v108)
  {
    goto LABEL_131;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v23 = sub_1BD5ED6C8(v23);
  }

  v122 = v23;
  v100 = *(v23 + 2);
  if (v100 >= 2)
  {
    while (*v117)
    {
      v101 = *&v23[16 * v100];
      v102 = *&v23[16 * v100 + 24];
      sub_1BD77BAD8(*v117 + *(v115 + 72) * v101, *v117 + *(v115 + 72) * *&v23[16 * v100 + 16], *v117 + *(v115 + 72) * v102, v5);
      if (v6)
      {
        goto LABEL_103;
      }

      if (v102 < v101)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD5ED6C8(v23);
      }

      if (v100 - 2 >= *(v23 + 2))
      {
        goto LABEL_119;
      }

      v103 = &v23[16 * v100];
      *v103 = v101;
      *(v103 + 1) = v102;
      v122 = v23;
      sub_1BD5ED63C(v100 - 1);
      v23 = v122;
      v100 = *(v122 + 2);
      if (v100 <= 1)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_128;
  }

LABEL_103:
}

void sub_1BD77B5D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for AccountDebugCKReward(0);
  MEMORY[0x1EEE9AC00](v44, v8);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a2;
    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = v24;
      v38 = -v14;
      v39 = a1;
      while (2)
      {
        while (1)
        {
          v36 = v24;
          v27 = v41;
          v40 = v41;
          v41 += v25;
          while (1)
          {
            if (v27 <= a1)
            {
              v47 = v27;
              v45 = v36;
              goto LABEL_60;
            }

            v29 = a3;
            v37 = v24;
            v30 = a4;
            v31 = a3 + v25;
            v32 = v26 + v25;
            v33 = v42;
            sub_1BD77BFE0(v32, v42, type metadata accessor for AccountDebugCKReward);
            v34 = v43;
            sub_1BD77BFE0(v41, v43, type metadata accessor for AccountDebugCKReward);
            v35 = sub_1BE04AF04();
            sub_1BD77C048(v34, type metadata accessor for AccountDebugCKReward);
            sub_1BD77C048(v33, type metadata accessor for AccountDebugCKReward);
            if (v35 == -1)
            {
              break;
            }

            v24 = v32;
            a3 = v31;
            a4 = v30;
            if (v29 < v26 || v31 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v39;
            }

            else
            {
              a1 = v39;
              if (v29 != v26)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v26 = v32;
            v28 = v32 > a4;
            v25 = v38;
            v27 = v40;
            if (!v28)
            {
              v41 = v40;
              goto LABEL_59;
            }
          }

          a3 = v31;
          a4 = v30;
          if (v29 < v40 || v31 >= v40)
          {
            break;
          }

          v25 = v38;
          a1 = v39;
          v24 = v37;
          if (v29 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v26 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v25 = v38;
        a1 = v39;
        v24 = v37;
        if (v26 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v47 = v41;
    v45 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = v43;
      do
      {
        v21 = a3;
        v22 = v42;
        sub_1BD77BFE0(a2, v42, type metadata accessor for AccountDebugCKReward);
        sub_1BD77BFE0(a4, v20, type metadata accessor for AccountDebugCKReward);
        v23 = sub_1BE04AF04();
        sub_1BD77C048(v20, type metadata accessor for AccountDebugCKReward);
        sub_1BD77C048(v22, type metadata accessor for AccountDebugCKReward);
        if (v23 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_60:
  sub_1BD9353A0(&v47, &v46, &v45);
}

void sub_1BD77BAD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for AccountDebugCKTransaction(0);
  MEMORY[0x1EEE9AC00](v44, v8);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a2;
    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = v24;
      v38 = -v14;
      v39 = a1;
      while (2)
      {
        while (1)
        {
          v36 = v24;
          v27 = v41;
          v40 = v41;
          v41 += v25;
          while (1)
          {
            if (v27 <= a1)
            {
              v47 = v27;
              v45 = v36;
              goto LABEL_60;
            }

            v29 = a3;
            v37 = v24;
            v30 = a4;
            v31 = a3 + v25;
            v32 = v26 + v25;
            v33 = v42;
            sub_1BD77BFE0(v32, v42, type metadata accessor for AccountDebugCKTransaction);
            v34 = v43;
            sub_1BD77BFE0(v41, v43, type metadata accessor for AccountDebugCKTransaction);
            v35 = sub_1BE04AF04();
            sub_1BD77C048(v34, type metadata accessor for AccountDebugCKTransaction);
            sub_1BD77C048(v33, type metadata accessor for AccountDebugCKTransaction);
            if (v35 == -1)
            {
              break;
            }

            v24 = v32;
            a3 = v31;
            a4 = v30;
            if (v29 < v26 || v31 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v39;
            }

            else
            {
              a1 = v39;
              if (v29 != v26)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v26 = v32;
            v28 = v32 > a4;
            v25 = v38;
            v27 = v40;
            if (!v28)
            {
              v41 = v40;
              goto LABEL_59;
            }
          }

          a3 = v31;
          a4 = v30;
          if (v29 < v40 || v31 >= v40)
          {
            break;
          }

          v25 = v38;
          a1 = v39;
          v24 = v37;
          if (v29 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v26 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v25 = v38;
        a1 = v39;
        v24 = v37;
        if (v26 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v47 = v41;
    v45 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = v43;
      do
      {
        v21 = a3;
        v22 = v42;
        sub_1BD77BFE0(a2, v42, type metadata accessor for AccountDebugCKTransaction);
        sub_1BD77BFE0(a4, v20, type metadata accessor for AccountDebugCKTransaction);
        v23 = sub_1BE04AF04();
        sub_1BD77C048(v20, type metadata accessor for AccountDebugCKTransaction);
        sub_1BD77C048(v22, type metadata accessor for AccountDebugCKTransaction);
        if (v23 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_60:
  sub_1BD9353B8(&v47, &v46, &v45);
}

uint64_t sub_1BD77BFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD77C048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD77C0A8()
{
  result = qword_1EBD525A0;
  if (!qword_1EBD525A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD525A0);
  }

  return result;
}

uint64_t sub_1BD77C0FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD7667D4(a1, v4, v5, v6);
}

uint64_t sub_1BD77C1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD77C264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  v1 = *(type metadata accessor for AccountDebugTransactionGroup(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_1BE04AF64();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

unint64_t sub_1BD77C4DC()
{
  result = qword_1EBD52608;
  if (!qword_1EBD52608)
  {
    sub_1BD0E5E8C(255, &qword_1EBD524E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52608);
  }

  return result;
}

uint64_t sub_1BD77C570(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1BD77C5F0()
{
  v1 = *(type metadata accessor for AccountDebugCKTransaction(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1BD7787DC(v2, v3, v4);
}

uint64_t sub_1BD77C760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD77C7E8(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v4)
  {
    v5 = v3[4];
    v6 = v3[3];
    sub_1BD36A5EC(v4, v3[1], v3[2], v6, v5);
    sub_1BD785FE0(a1, v4, v5);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

uint64_t sub_1BD77C8EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

id sub_1BD77C960(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v83 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527B0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v83 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v2;
  sub_1BE04D8B4();

  v96[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748);
  sub_1BD0DE4F4(&qword_1EBD527B8, &qword_1EBD52748);
  sub_1BD785A90();
  v14 = v13;
  sub_1BE0522D4();

  (*(v5 + 16))(v13, v8, v4);
  v15 = *(v10 + 44);
  v16 = sub_1BD0DE4F4(&unk_1EBD527C8, &qword_1EBD527A8);
  sub_1BE052AD4();
  (*(v5 + 8))(v8, v4);
  v17 = v15;
  v18 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v85 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail;
  sub_1BE052B04();
  if (*&v13[v15] == v96[0])
  {
    return sub_1BD0DE53C(v14, &qword_1EBD527B0);
  }

  v86 = (v92 + v18);
  v84 = *MEMORY[0x1E695C208];
  v87 = v4;
  v88 = v15;
  v89 = v13;
  v90 = v16;
  while (1)
  {
    v21 = sub_1BE052B34();
    v23 = v22[1];
    v24 = v22[2];
    v25 = *(v22 + 24);
    v26 = *(v22 + 25);
    v95 = *v22;
    v93 = v24;
    v94 = v25;
    v27 = v23;
    v21(v96, 0);
    sub_1BE052B14();
    if (v26)
    {
      break;
    }

    v41 = *v86;
    if (*v86)
    {
      v42 = v86[4];
      v44 = v86[2];
      v43 = v86[3];
      v45 = v86[1];
      v46 = v23;
      v47 = v23;
      v48 = v23;
      sub_1BD36A5EC(v41, v45, v44, v43, v42);
      sub_1BD785FE0(v23, v41, v42);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v96[0] = v23;
      v46 = v23;
      v49 = v23;
      v50 = v23;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    v51 = *(v92 + v85);
    if (!v51)
    {
      goto LABEL_28;
    }

    v52 = v51;
    v53 = [v46 identifier];
    v54 = sub_1BE052434();
    v56 = v55;

    v57 = [v52 identifier];
    v58 = sub_1BE052434();
    v60 = v59;

    if (v54 == v58 && v56 == v60)
    {
    }

    else
    {
      v66 = sub_1BE053B84();

      if ((v66 & 1) == 0)
      {

LABEL_28:
        goto LABEL_29;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v67 = sub_1BE053074();

    if (v67)
    {

LABEL_33:
      v17 = v88;
      v14 = v89;
      goto LABEL_6;
    }

LABEL_29:
    v68 = v84;
    sub_1BD3EFFC8(MEMORY[0x1E69E7CC0]);
    v69 = sub_1BE04A0E4();
    v70 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
    v71 = sub_1BE052404();
    v72 = sub_1BE052724();

    v73 = [v70 initWithTitle:v71 preferences:v72 selectedIndex:v69 readOnly:0];

    if (!v73)
    {

      goto LABEL_33;
    }

    [v73 setContactKey_];

    result = [objc_opt_self() defaultInstance];
    v74 = v88;
    v14 = v89;
    if (!result)
    {
      goto LABEL_39;
    }

    v75 = result;
    v76 = [result saveContactToCoreRecents:v46 preference:v73];

    [v46 setContactSource_];
    [v46 setRecentContact_];

    v17 = v74;
LABEL_6:
    sub_1BE052B04();
    if (*(v14 + v17) == v96[0])
    {
      return sub_1BD0DE53C(v14, &qword_1EBD527B0);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v91 = v23;
  v28 = v23;
  sub_1BE04D8B4();

  v29 = v96[0];
  if (v96[0])
  {
    v30 = v28;
    v31 = v28;
    v32 = [v29 identifier];
    v33 = sub_1BE052434();
    v35 = v34;

    v36 = [v31 identifier];
    v37 = sub_1BE052434();
    v39 = v38;

    if (v33 == v37 && v35 == v39)
    {

      v40 = v91;
LABEL_20:
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
      v62 = sub_1BE053074();

      v17 = v88;
      v14 = v89;
      v28 = v30;
      if (v62)
      {
        v63 = *v86;
        if (*v86)
        {
          v64 = v86[4];
          v65 = v86[3];
          sub_1BD36A5EC(*v86, v86[1], v86[2], v65, v64);
          sub_1BD785FE0(0, v63, v64);

          v28 = v30;
          v17 = v88;
          swift_unknownObjectRelease();

          v14 = v89;
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v96[0] = 0;
          sub_1BE048964();
          sub_1BE04D8C4();
        }
      }
    }

    else
    {
      v61 = sub_1BE053B84();

      v40 = v91;
      if (v61)
      {
        goto LABEL_20;
      }

      v17 = v88;
      v14 = v89;
      v28 = v30;
    }
  }

  v77 = v28;
  v78 = [v77 recentContact];
  if (!v78)
  {
    v20 = v91;

LABEL_5:
    goto LABEL_6;
  }

  v79 = v78;
  result = [objc_opt_self() defaultInstance];
  v80 = v91;
  if (result)
  {
    v81 = result;
    v82 = v79;
    [v81 deleteRecent_];

    goto LABEL_5;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1BD77D460()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD77D4D4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD77D554()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD77D5C8()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context))
  {
    v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_1BE04D8B4();

    [v12 setIsHideMyEmailLoading_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((aBlock[0] & 1) == 0)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v18 = sub_1BE052D54();
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BD786408;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_174;
    v15 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD786764(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    v17 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    v16 = v18;
    MEMORY[0x1BFB3FDF0](0, v10, v5, v15);
    _Block_release(v15);

    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v17);
  }

  return result;
}

void sub_1BD77D988()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
    if (v1)
    {
      v2 = v1;

      [v2 didResolveLoadingState];
    }

    else
    {
    }
  }
}

uint64_t sub_1BD77DA24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD77D5C8();
}

id sub_1BD77DAC4(void **a1)
{
  v2 = v1;
  v3 = *a1;
  v124 = a1[1];
  v125 = v3;
  v4 = a1[2];
  v122 = a1[3];
  v123 = v4;
  v5 = a1[5];
  v126 = a1[4];
  v131 = v5;
  v6 = sub_1BE04A264();
  v120 = *(v6 - 8);
  v121 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v119 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v9 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v10);
  v12 = &v116 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52800);
  v128 = *(v13 - 1);
  v129 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v116 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527F8);
  v17 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127, v18);
  v20 = &v116 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527D8);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v116 - v24;
  v26 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52738);
  sub_1BE04D874();
  (*(v22 + 32))(v2 + v26, v25, v21);
  v27 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailError;
  LOBYTE(aBlock) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52760);
  sub_1BE04D874();
  (*(v17 + 32))(v2 + v27, v20, v127);
  v28 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailAccountConfigurationError;
  LOBYTE(aBlock) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52770);
  sub_1BE04D874();
  v29 = v16;
  v30 = v2;
  (v128)[4](v2 + v28, v29, v129);
  v31 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__supportsHideMyEmail;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v32 = *(v9 + 32);
  v33 = v130;
  v32(v30 + v31, v12, v130);
  v34 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailLoading;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v32(v30 + v34, v12, v33);
  v35 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailSelected;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v32(v30 + v35, v12, v33);
  v36 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__useHideMyEmailTransactionDefault;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v32(v30 + v36, v12, v33);
  v37 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  *(v30 + v37) = [objc_allocWithZone(MEMORY[0x1E69B88F0]) init];
  *(v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) = 0;
  *(v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) = 0;
  v38 = (v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_domainKey);
  *v38 = 0;
  v38[1] = 0;
  *(v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration) = 0;
  *(v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail) = 0;
  v39 = (v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress;
  *(v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress) = 0;
  v41 = v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *v41 = 0u;
  v42 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults;
  *(v30 + v42) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    v44 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_recents;
    *(v30 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_recents) = result;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = v122;
    v118 = v42;
    v116 = v40;
    v117 = v44;
    if (v122)
    {
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        v48 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1BE0B69E0;
        v50 = *MEMORY[0x1E69BB7B8];
        *(v49 + 32) = *MEMORY[0x1E69BB7B8];
        type metadata accessor for PKContactField(0);
        v51 = v50;
        v52 = v46;
        v53 = sub_1BE052724();

        v54 = [v48 clientErrors];
        if (v54)
        {
          v55 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
          v56 = sub_1BE052744();

          v57 = sub_1BD3F00D4(v56);
        }

        else
        {
          v57 = MEMORY[0x1E69E7CC0];
        }

        v58 = objc_opt_self();
        sub_1BD3F01E8(v57);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v59 = sub_1BE052724();

        v60 = [v58 pk:v53 FilteredShippingErrorsForContactFields:v59 errors:?];

        v61 = sub_1BE052744();
        v45 = sub_1BD3F00D4(v61);
      }
    }

    swift_beginAccess();
    v140[0] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8);
    sub_1BE04D874();
    swift_endAccess();
    v62 = v126;
    v63 = sub_1BD785D04(v46, v126);
    swift_beginAccess();
    LOBYTE(v140[0]) = v63 & 1;
    v130 = v30;
    sub_1BE04D874();
    swift_endAccess();
    v64 = v123;
    v65 = v124;
    v140[0] = v124;
    v66 = *v41;
    v67 = *(v41 + 8);
    v68 = *(v41 + 16);
    v69 = *(v41 + 24);
    v70 = *(v41 + 32);
    v71 = v46;
    v72 = v125;
    *v41 = v125;
    *(v41 + 8) = v65;
    *(v41 + 16) = v64;
    *(v41 + 24) = v71;
    v73 = v131;
    *(v41 + 32) = v62;
    *(v41 + 40) = v73;
    v129 = v71;
    v127 = v72;
    v74 = v62;
    sub_1BE048964();
    sub_1BD0DE19C(v140, &aBlock, &qword_1EBD3D490);
    sub_1BD40FB5C(v66, v67, v68, v69, v70);
    v128 = v74;
    v75 = [v74 shippingEmail];
    v76 = v75;
    if (v75)
    {
      v77 = MEMORY[0x1E69E7CC0];
      aBlock = sub_1BD9DE0A8(v75);
      v133 = v78;
      v79 = v119;
      sub_1BE04A214();
      sub_1BD0DDEBC();
      v80 = sub_1BE053564();
      v82 = v81;
      (*(v120 + 8))(v79, v121);

      v83 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v83 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v83)
      {
        *(v130 + v116) = 1;
        v84 = v76;
        v85 = v76;
        goto LABEL_17;
      }

      v86 = v130;
    }

    else
    {
      v86 = v130;
      v77 = MEMORY[0x1E69E7CC0];
    }

    v85 = [*(v86 + v117) meCard];
    v87 = [*(v86 + v118) defaultContactEmail];
    if (v87)
    {
      v88 = v87;

      v85 = v88;
    }

    else if (v85)
    {
      v99 = [v85 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
      v100 = sub_1BE052744();

      if (!(v100 >> 62))
      {
        v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_29;
      }

      goto LABEL_47;
    }

    while (1)
    {
LABEL_17:
      v89 = sub_1BE052434();
      v125 = v85;
      v91 = sub_1BD51D758(v89, v90, v85);

      if (v91 >> 62)
      {
        v92 = sub_1BE053704();
        v126 = v76;
        if (!v92)
        {
LABEL_32:

          v98 = MEMORY[0x1E69E7CC0];
          goto LABEL_33;
        }
      }

      else
      {
        v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v126 = v76;
        if (!v92)
        {
          goto LABEL_32;
        }
      }

      aBlock = v77;
      sub_1BE0538E4();
      if ((v92 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_47:
      v101 = sub_1BE053704();
LABEL_29:

      if (!v101)
      {

        v85 = 0;
      }
    }

    v93 = 0;
    do
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v94 = MEMORY[0x1BFB40900](v93, v91);
      }

      else
      {
        v94 = *(v91 + 8 * v93 + 32);
      }

      v95 = v94;
      ++v93;
      sub_1BE052434();
      v96 = v95;
      v97 = sub_1BE052404();

      [v96 setValueSource_];

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v92 != v93);

    v98 = aBlock;
    v77 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v138 = v77;
    v139 = MEMORY[0x1E69E7CD0];
    v102 = *(v98 + 16);
    v103 = v130;
    if (v102)
    {
      v104 = (v98 + 32);
      do
      {
        v105 = *v104;
        v106 = sub_1BD9DE0A8(v105);
        v108 = sub_1BD2A5644(&aBlock, v106, v107);

        if (v108)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v104;
        --v102;
      }

      while (v102);
      v77 = v138;
    }

    swift_beginAccess();
    v139 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748);
    sub_1BE04D874();
    swift_endAccess();
    v109 = v125;
    if (!v125)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (aBlock[2])
      {
        v109 = aBlock[4];
        v110 = v109;
      }

      else
      {
        v109 = 0;
      }
    }

    v111 = v128;
    [v128 setShippingEmail_];
    v112 = [v111 shippingEmail];
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v112;
    sub_1BE048964();
    sub_1BE04D8C4();
    LOBYTE(v112) = [*(v103 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults) useHideMyEmail];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = v112;
    sub_1BE048964();
    sub_1BE04D8C4();
    v113 = *(v103 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager);
    v136 = sub_1BD7867D4;
    v137 = v103;
    aBlock = MEMORY[0x1E69E9820];
    v133 = 1107296256;
    v134 = sub_1BD3CC8C0;
    v135 = &block_descriptor_115_0;
    v114 = _Block_copy(&aBlock);
    sub_1BE048964();
    v115 = v113;

    [v115 isAvailable_];

    _Block_release(v114);
    sub_1BD0DE53C(v140, &qword_1EBD3D490);

    return v103;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD77E990(char a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[15] = a1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v9 = sub_1BE0528D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  sub_1BE048964();
  sub_1BD122C00(0, 0, v8, &unk_1BE0F6250, v10);
}

uint64_t sub_1BD77EAEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD77EB7C();
}

uint64_t sub_1BD77EB7C()
{
  v1[41] = v0;
  v2 = sub_1BE04D214();
  v1[42] = v2;
  v1[43] = *(v2 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  sub_1BE0528A4();
  v1[48] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[49] = v4;
  v1[50] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD77EC94, v4, v3);
}

uint64_t sub_1BD77EC94()
{
  v1 = *(v0 + 328);
  v2 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive;
  if ((*(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , *(v0 + 504) != 1))
  {

    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 344);
    v13 = *(v0 + 352);
    v15 = *(v0 + 336);
    if (!v12)
    {
LABEL_8:

      (*(v14 + 8))(v13, v15);

      v18 = *(v0 + 8);

      return v18();
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Hide My Email lookup, but HME is already active or is unsupported";
LABEL_7:
    _os_log_impl(&dword_1BD026000, v10, v11, v17, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    goto LABEL_8;
  }

  v3 = *(v0 + 328);
  v4 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  *(v0 + 408) = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  v5 = [*(v3 + v4) forwardingEmailForPrimaryAccount];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE052434();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v20 = (*(v0 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
  *v20 = v7;
  v20[1] = v9;

  *(v1 + v2) = 1;
  if (![*(v3 + v4) isAccountConfigured])
  {

    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    v22 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 360);
    v15 = *(v0 + 336);
    v14 = *(v0 + 344);
    if (!v22)
    {
      goto LABEL_8;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Hide My Email lookup, account not configured";
    goto LABEL_7;
  }

  if (*(*(v0 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress))
  {

    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    v21 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 368);
    v15 = *(v0 + 336);
    v14 = *(v0 + 344);
    if (!v21)
    {
      goto LABEL_8;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Hide My Email lookup, merchant provided email address";
    goto LABEL_7;
  }

  v23 = swift_task_alloc();
  *(v0 + 416) = v23;
  *v23 = v0;
  v23[1] = sub_1BD77F000;

  return sub_1BD7822DC();
}

uint64_t sub_1BD77F000(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = v2;
  v4[35] = a1;
  v4[36] = a2;
  v4[53] = a2;

  v5 = v3[50];
  v6 = v3[49];

  return MEMORY[0x1EEE6DFA0](sub_1BD77F128, v6, v5);
}

uint64_t sub_1BD77F128()
{
  if (v0[53])
  {
    v1 = *(v0[41] + v0[51]);
    v0[54] = v1;
    v2 = v1;
    v3 = sub_1BE052404();
    v0[55] = v3;

    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_1BD77F384;
    v4 = swift_continuation_init();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52808);
    v0[56] = v5;
    v0[25] = v5;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1BD782AE0;
    v0[21] = &block_descriptor_71_0;
    v0[22] = v4;
    [v2 findHideMyEmailAddressWithKey:v3 completion:v0 + 18];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    sub_1BE04D084();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C54();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[47];
    v10 = v0[42];
    v11 = v0[43];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "Hide My Email lookup, no domain key found", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1BD77F384()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_1BD77F7E8;
  }

  else
  {
    v5 = sub_1BD77F4B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD77F4B4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  sub_1BD782BB4(v2, v3, 1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD77F574()
{
  v2 = v0[60];
  v1 = v0[61];

  v4 = v0[39];
  v3 = v0[40];

  sub_1BD782BB4(v4, v3, 1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD77F630()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1BD77F750, v3, v2);
}

uint64_t sub_1BD77F750()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD77F7E8()
{
  v1 = v0[57];
  v3 = v0[54];
  v2 = v0[55];
  swift_willThrow();

  sub_1BD781820();
  if (v4)
  {
    v5 = v0[56];
    v6 = *(v0[41] + v0[51]);
    v0[60] = v6;
    v7 = v6;
    v8 = sub_1BE052404();
    v0[61] = v8;

    v0[10] = v0;
    v0[15] = v0 + 39;
    v0[11] = sub_1BD77FAC0;
    v9 = swift_continuation_init();
    v0[33] = v5;
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1BD782AE0;
    v0[29] = &block_descriptor_75_2;
    v0[30] = v9;
    [v7 findHideMyEmailAddressWithKey:v8 completion:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-3005 userInfo:0];
    swift_willThrow();
    v0[58] = v10;
    if (([*(v0[41] + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults) useHideMyEmail] & 1) != 0 || *(v0[41] + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) == 1)
    {
      v11 = swift_task_alloc();
      v0[59] = v11;
      *v11 = v0;
      v11[1] = sub_1BD77F630;

      return sub_1BD782DA8();
    }

    else
    {

      v12 = v0[1];

      return v12();
    }
  }
}

uint64_t sub_1BD77FAC0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 496) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_1BD77FBF0;
  }

  else
  {
    v5 = sub_1BD77F574;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD77FBF0()
{
  v1 = v0[61];
  v2 = v0[60];
  swift_willThrow();

  v3 = v0[62];
  v0[58] = v3;
  if (([*(v0[41] + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults) useHideMyEmail] & 1) != 0 || *(v0[41] + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) == 1)
  {
    v4 = swift_task_alloc();
    v0[59] = v4;
    *v4 = v0;
    v4[1] = sub_1BD77F630;

    return sub_1BD782DA8();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

id sub_1BD77FD44(void *a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v64 = a4;
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v6 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52800);
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527F8);
  v14 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527D8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v58 - v21;
  v23 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
  aBlock[0] = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52738);
  sub_1BE04D874();
  v59 = v19;
  v60 = v18;
  (*(v19 + 32))(v5 + v23, v22, v18);
  v24 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailError;
  LOBYTE(aBlock[0]) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52760);
  sub_1BE04D874();
  (*(v14 + 32))(v5 + v24, v17, v65);
  v25 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailAccountConfigurationError;
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52770);
  sub_1BE04D874();
  (*(v66 + 32))(v5 + v25, v13, v67);
  v26 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__supportsHideMyEmail;
  LOBYTE(aBlock[0]) = 0;
  sub_1BE04D874();
  v27 = *(v6 + 32);
  v28 = v68;
  v27(v5 + v26, v9, v68);
  v29 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailLoading;
  LOBYTE(aBlock[0]) = 0;
  sub_1BE04D874();
  v27(v5 + v29, v9, v28);
  v30 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailSelected;
  LOBYTE(aBlock[0]) = 0;
  sub_1BE04D874();
  v27(v5 + v30, v9, v28);
  v31 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__useHideMyEmailTransactionDefault;
  LOBYTE(aBlock[0]) = 0;
  sub_1BE04D874();
  v27(v5 + v31, v9, v28);
  v32 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  *(v5 + v32) = [objc_allocWithZone(MEMORY[0x1E69B88F0]) init];
  *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) = 0;
  *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) = 0;
  v33 = (v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_domainKey);
  *v33 = 0;
  v33[1] = 0;
  *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration) = 0;
  *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail) = 0;
  v34 = (v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
  *v34 = 0;
  v34[1] = 0;
  *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress) = 0;
  v35 = (v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v35[1] = 0u;
  v35[2] = 0u;
  *v35 = 0u;
  v36 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults;
  *(v5 + v36) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_recents) = result;
    v38 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
    swift_beginAccess();
    v39 = *(v59 + 8);
    v40 = v61;
    v41 = v61;
    v39(v5 + v38, v60);
    v71 = v40;
    sub_1BE04D874();
    swift_endAccess();
    v71 = MEMORY[0x1E69E7CD0];
    v42 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    v43 = *(v62 + 16);
    if (v43)
    {
      v44 = (v62 + 32);
      do
      {
        v45 = *v44;
        v46 = sub_1BD9DE0A8(v45);
        v48 = sub_1BD2A5644(aBlock, v46, v47);

        if (v48)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v44;
        --v43;
      }

      while (v43);
      v42 = v70;
    }

    swift_beginAccess();
    v71 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    v71 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v71) = v64 & 1;
    sub_1BE04D874();
    swift_endAccess();
    v49 = *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager);
    aBlock[4] = sub_1BD7867CC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3CC8C0;
    aBlock[3] = &block_descriptor_112_0;
    v50 = _Block_copy(aBlock);
    v51 = v49;
    sub_1BE048964();

    [v51 isAvailable_];
    _Block_release(v50);

    LOBYTE(v50) = [*(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults) useHideMyEmail];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = v50;
    sub_1BE048964();
    sub_1BE04D8C4();

    v52 = (v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
    v53 = *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
    v54 = *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 8);
    v55 = *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 16);
    v56 = *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 24);
    v57 = *(v5 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32);
    *v52 = 0u;
    v52[1] = 0u;
    v52[2] = 0u;
    sub_1BD40FB5C(v53, v54, v55, v56, v57);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD780590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v11 == 1)
  {
    v5 = [*(a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager) forwardingEmailForPrimaryAccount];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BE052434();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = (a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
    *v10 = v7;
    v10[1] = v9;
  }

  return result;
}

uint64_t sub_1BD7806B8(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v118 = &v117 - v11;
  v12 = (v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v14 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 8);
  v15 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 16);
  v16 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 24);
  v17 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32);
  v122 = v4;
  *v12 = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v8;
  v12[5] = v7;
  sub_1BD40FB5C(v13, v14, v15, v16, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v3;
  v19 = v8;
  sub_1BE048964();
  sub_1BD0DE19C(&v122, &v121, &qword_1EBD3D490);
  v20 = v6;
  sub_1BE04D8B4();

  v21 = v121;
  v22 = &selRef_setIsFinalViewController_;
  v23 = [v19 shippingEmail];
  v24 = v23;
  if (!v21)
  {
    if (!v23)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v23)
  {
    v24 = v21;
LABEL_13:

    goto LABEL_14;
  }

  v119 = v20;
  v25 = v6;
  v26 = [v21 identifier];
  v27 = sub_1BE052434();
  v29 = v28;

  v30 = [v24 identifier];
  v31 = sub_1BE052434();
  v33 = v32;

  if (v27 == v31 && v29 == v33)
  {

    v22 = &selRef_setIsFinalViewController_;
    goto LABEL_10;
  }

  v34 = sub_1BE053B84();

  v22 = &selRef_setIsFinalViewController_;
  if ((v34 & 1) == 0)
  {

    v6 = v25;
    v20 = v119;
    goto LABEL_13;
  }

LABEL_10:
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  v35 = sub_1BE053074();

  v6 = v25;
  v20 = v119;
  if ((v35 & 1) == 0)
  {
LABEL_14:
    v36 = [v19 v22[371]];
    swift_getKeyPath();
    swift_getKeyPath();
    v121 = v36;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

LABEL_15:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v37 = v121;
  v120 = v19;
  if (v6)
  {
    v38 = v6;
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1BE0B69E0;
      v42 = v20;
      v43 = *MEMORY[0x1E69BB7B8];
      *(v41 + 32) = *MEMORY[0x1E69BB7B8];
      type metadata accessor for PKContactField(0);
      v119 = v42;
      v44 = v42;
      v45 = v43;
      v46 = sub_1BE052724();

      v47 = [v40 clientErrors];
      if (v47)
      {
        v48 = v47;
        v49 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v50 = sub_1BE052744();

        v51 = sub_1BD3F00D4(v50);
      }

      else
      {
        v49 = v22;
        v51 = MEMORY[0x1E69E7CC0];
      }

      v53 = objc_opt_self();
      sub_1BD3F01E8(v51);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v54 = sub_1BE052724();

      v55 = [v53 pk:v46 FilteredShippingErrorsForContactFields:v54 errors:?];

      v56 = sub_1BE052744();
      v52 = sub_1BD3F00D4(v56);

      v6 = v38;
      v22 = v49;
      v20 = v119;
      v19 = v120;
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC0];
      v19 = v120;
    }
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

  v57 = sub_1BD3FE590(v37, v52);

  if ((v57 & 1) == 0)
  {
    if (v6 && (objc_opt_self(), (v58 = swift_dynamicCastObjCClass()) != 0))
    {
      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1BE0B69E0;
      v61 = v20;
      v62 = *MEMORY[0x1E69BB7B8];
      *(v60 + 32) = *MEMORY[0x1E69BB7B8];
      type metadata accessor for PKContactField(0);
      v63 = v61;
      v64 = v62;
      v65 = sub_1BE052724();

      v66 = [v59 clientErrors];
      if (v66)
      {
        v67 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v68 = sub_1BE052744();

        v69 = sub_1BD3F00D4(v68);
      }

      else
      {
        v69 = MEMORY[0x1E69E7CC0];
      }

      v71 = objc_opt_self();
      sub_1BD3F01E8(v69);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v72 = sub_1BE052724();

      v73 = [v71 pk:v65 FilteredShippingErrorsForContactFields:v72 errors:?];

      v74 = sub_1BE052744();
      v70 = sub_1BD3F00D4(v74);
    }

    else
    {
      v70 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v121 = v70;
    sub_1BE048964();
    sub_1BE04D8C4();
    v19 = v120;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v75 = v121;
  v76 = [v19 v22[371]];
  if (v76)
  {

    v77 = 1;
  }

  else
  {
    v77 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail) != 0;
  }

  v78 = [v19 v22[371]];
  v79 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail;
  v80 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail);
  if (v78)
  {
    v81 = v78;
    if (!v80)
    {

      v91 = 0;
      goto LABEL_49;
    }

    HIDWORD(v117) = v75;
    v119 = v6;
    v82 = v80;
    v83 = [v81 identifier];
    v84 = sub_1BE052434();
    v86 = v85;

    v87 = [v82 identifier];
    v88 = sub_1BE052434();
    v90 = v89;

    if (v84 == v88 && v86 == v90)
    {
    }

    else
    {
      v92 = sub_1BE053B84();

      if ((v92 & 1) == 0)
      {

        v91 = 0;
        v6 = v119;
        goto LABEL_49;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v93 = sub_1BE053074();

    v6 = v119;
    LOBYTE(v75) = BYTE4(v117);
    if (v93)
    {
      goto LABEL_45;
    }

LABEL_41:
    v91 = 0;
    goto LABEL_49;
  }

  if (v80)
  {
    goto LABEL_41;
  }

LABEL_45:
  v91 = v75 != 4 || v77;
LABEL_49:
  v94 = v120;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v121 == 1 && (v91 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v121) = 4;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v121 == 1)
  {
    v95 = [v94 shippingEmail];
    if (v95)
    {

      v96 = [v94 shippingEmail];
      v97 = *(v2 + v79);
      if (v96)
      {
        v98 = v96;
        if (v97)
        {
          v119 = v6;
          v99 = v97;
          v100 = [v98 identifier];
          v101 = sub_1BE052434();
          v103 = v102;

          v104 = [v99 identifier];
          v105 = sub_1BE052434();
          v107 = v106;

          if (v101 == v105 && v103 == v107)
          {

            goto LABEL_63;
          }

          v108 = sub_1BE053B84();

          if (v108)
          {
LABEL_63:
            sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
            v109 = sub_1BE053074();

            v6 = v119;
            v94 = v120;
            if (v109)
            {
              goto LABEL_64;
            }

LABEL_68:
            sub_1BD7814CC();
            if (v91)
            {
              goto LABEL_65;
            }

            goto LABEL_69;
          }

          v6 = v119;
        }

        else
        {
          v99 = v96;
        }

        v94 = v120;
        goto LABEL_68;
      }

      v94 = v120;
      if (v97)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_64:
  if (v91)
  {
LABEL_65:
    v110 = 1;
    goto LABEL_70;
  }

LABEL_69:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v110 = v121 != 4;
LABEL_70:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v121) = v110;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (sub_1BD785D04(v6, v94))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v111 = v121 == 4;
  }

  else
  {
    v111 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v111 != v121)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v121) = v111;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  result = sub_1BD7815EC();
  if (result)
  {
    result = sub_1BD781820();
    if (v113)
    {

      if ((*(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        if (v121 == 1)
        {
          v114 = sub_1BE0528D4();
          v115 = v118;
          (*(*(v114 - 8) + 56))(v118, 1, 1, v114);
          v116 = swift_allocObject();
          v116[2] = 0;
          v116[3] = 0;
          v116[4] = v2;
          sub_1BE048964();
          sub_1BD122C00(0, 0, v115, &unk_1BE0F6178, v116);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BD7814CC()
{
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v2 == 4)
    {
      *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
      sub_1BD77D5C8();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      return sub_1BE04D8C4();
    }
  }

  return result;
}

id sub_1BD7815EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v16 - v8;
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context))
  {
    v14 = sub_1BE04AA64();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
LABEL_8:
    v15 = 0;
LABEL_9:
    sub_1BD0DE53C(v9, &unk_1EBD3CF70);
    return v15;
  }

  result = [*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32) paymentRequest];
  if (result)
  {
    v11 = result;
    v12 = [result originatingURL];

    if (v12)
    {
      sub_1BE04A9F4();

      v13 = sub_1BE04AA64();
      (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
    }

    else
    {
      v13 = sub_1BE04AA64();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    }

    sub_1BD226B4C(v4, v9);
    sub_1BE04AA64();
    v15 = 1;
    if ((*(*(v13 - 8) + 48))(v9, 1, v13) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1BD781820()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  v4 = *(v1 + 24);
  v5 = v3;
  sub_1BE048964();
  v6 = v2;
  swift_unknownObjectRetain();
  v7 = sub_1BD7815EC();
  result = [v5 paymentRequest];
  v9 = result;
  if (v7)
  {
    if (result)
    {
      v10 = [result merchantSession];

      if (v10)
      {
        v11 = [v10 merchantIdentifier];

        v12 = sub_1BE052434();

        swift_unknownObjectRelease();
        return v12;
      }

LABEL_9:

      swift_unknownObjectRelease();
      return 0;
    }

    __break(1u);
  }

  else if (result)
  {
    v13 = [result hashedMerchantIdentifier];

    if (v13)
    {
      v14 = sub_1BE052434();

      swift_unknownObjectRelease();

      return v14;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7819D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BE04D214();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD781A98, 0, 0);
}

uint64_t sub_1BD781A98()
{
  sub_1BE04D084();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Hide My Email setup, received merchant session", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1BD781BC8;

  return sub_1BD77EB7C();
}

uint64_t sub_1BD781BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BD781CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE051F54();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD781DF4, 0, 0);
}

uint64_t sub_1BD781DF4()
{
  v1 = v0[16];
  v2 = v0[13];
  v15 = v0[15];
  v16 = v0[14];
  v3 = v0[11];
  v14 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = sub_1BE052434();
  v8 = sub_1BD51D758(v6, v7, v4);

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  v0[6] = sub_1BD7867C4;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_109_1;
  v10 = _Block_copy(v0 + 2);
  sub_1BE048964();

  sub_1BE051F74();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1BD786764(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v10);
  _Block_release(v10);

  (*(v14 + 8))(v2, v3);
  (*(v15 + 8))(v1, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD782080(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = sub_1BE053704();
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BDA7AC70(v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77C960(v11);
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1BE0538E4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v6, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_1BE052434();
      v9 = v8;
      v10 = sub_1BE052404();

      [v9 setValueSource_];

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v3 != v6);
    v4 = v12;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7822DC()
{
  v1[20] = v0;
  v2 = sub_1BE04AA64();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_1BE0528A4();
  v1[26] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[27] = v4;
  v1[28] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD782414, v4, v3);
}

uint64_t sub_1BD782414()
{
  v1 = v0[20];
  v2 = (v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v0[29] = v3;
  if (!v3)
  {

    v12 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  v4 = v2[3];
  v0[30] = v4;
  v0[31] = v2[1];
  v0[32] = v2[5];
  v5 = v2[4];
  v6 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_domainKey;
  v0[33] = v5;
  v0[34] = v6;
  v7 = (v1 + v6);
  v8 = *(v1 + v6 + 8);
  v9 = v4;
  v10 = v5;
  sub_1BE048964();
  v11 = v3;
  if (!v8)
  {
    swift_unknownObjectRetain();
    if (sub_1BD7815EC())
    {
      v14 = [v10 paymentRequest];
      if (v14)
      {
        v15 = v14;

        v16 = [v15 originatingURL];

        v34 = v9;
        if (v16)
        {
          sub_1BE04A9F4();

          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        v23 = v0[24];
        v22 = v0[25];
        v25 = v0[21];
        v24 = v0[22];
        (*(v24 + 56))(v23, v17, 1, v25);
        sub_1BD226B4C(v23, v22);
        v26 = (*(v24 + 48))(v22, 1, v25);
        v27 = v0[25];
        if (v26)
        {

          swift_unknownObjectRelease();

          sub_1BD0DE53C(v27, &unk_1EBD3CF70);
          v12 = 0;
          v13 = 0;
        }

        else
        {
          v28 = v0[22];
          v29 = v0[23];
          v33 = v0[21];
          (*(v28 + 16))(v29, v27);
          sub_1BD0DE53C(v27, &unk_1EBD3CF70);
          v12 = sub_1BE04AA14();
          v13 = v30;

          swift_unknownObjectRelease();

          (*(v28 + 8))(v29, v33);
        }

        *v7 = v12;
        v7[1] = v13;
        sub_1BE048C84();

        goto LABEL_18;
      }

      __break(1u);
    }

    else
    {
      v18 = *(v0[20] + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager);
      v0[35] = v18;
      v19 = v18;
      v14 = [v10 hostApplicationIdentifier];
      v0[36] = v14;
      if (v14)
      {
        v20 = v14;
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_1BD782858;
        v21 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52830);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1BD784ED8;
        v0[13] = &block_descriptor_103_1;
        v0[14] = v21;
        [v19 bestDomainForAppIdentifier:v20 completion:v0 + 10];
        v14 = v0 + 2;

        return MEMORY[0x1EEE6DEC8](v14);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v14);
  }

  v12 = *v7;
  v13 = v7[1];
  sub_1BE048C84();
LABEL_18:

  v31 = v0[1];

  return v31(v12, v13);
}

uint64_t sub_1BD782858()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1BD782960, v2, v1);
}

uint64_t sub_1BD782960()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 264);
  if (v3)
  {
    v6 = *(v0 + 232);

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [*(v0 + 264) bundleIdentifier];
    v8 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 232);
    if (v7)
    {
      v11 = v7;
      v4 = sub_1BE052434();
      v3 = v12;

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();

      v4 = 0;
      v3 = 0;
    }
  }

  v13 = (*(v0 + 160) + *(v0 + 272));
  *v13 = v4;
  v13[1] = v3;
  sub_1BE048C84();

  v14 = *(v0 + 8);

  return v14(v4, v3);
}

uint64_t sub_1BD782AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1BE052434();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

void sub_1BD782BB4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail;
  v8 = *(v3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail);
  if (!v8)
  {
LABEL_7:
    sub_1BE048C84();
    sub_1BD9DE4A4();
    v15 = *(v3 + v7);
    *(v3 + v7) = v16;

    if (a3)
    {
      v17 = *(v3 + v7);
      v18 = (v3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
      v19 = *(v3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
      if (v19)
      {
        v20 = v18[4];
        v21 = v18[2];
        v25 = v18[3];
        v22 = v18[1];
        v23 = v17;
        sub_1BD36A5EC(v19, v22, v21, v25, v20);
        sub_1BD785FE0(v17, v19, v20);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v24 = v17;
        sub_1BE048964();
        sub_1BE04D8C4();
      }
    }

    return;
  }

  v9 = v8;
  v10 = sub_1BD9DE0A8(v9);
  v12 = v11;

  if (v10 != a1 || v12 != a2)
  {
    v14 = sub_1BE053B84();

    if (v14)
    {
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1BD782DA8()
{
  v1[4] = v0;
  v2 = sub_1BE052874();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04D214();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = sub_1BE0528A4();
  v1[15] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD782F20, v5, v4);
}

uint64_t sub_1BD782F20()
{
  if ([*(*(v0 + 32) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager) isAccountConfigured])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 209) = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77D5C8();
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_1BD783180;

    return sub_1BD7822DC();
  }

  else
  {

    sub_1BE04D084();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "Hide My Email creation, account not configured", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    (*(v8 + 8))(v6, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 208) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1BD783180(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD7832A8, v6, v5);
}

uint64_t sub_1BD7832A8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 32) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 32);
      v5 = *(v2 + 24);
      sub_1BD36A5EC(v3, *(v2 + 8), *(v2 + 16), v5, v4);
      sub_1BD785FE0(0, v3, v4);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 16) = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    v12 = sub_1BD781820();
    *(v0 + 168) = v13;
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = *(v0 + 152);
      v17 = *(v0 + 32);
      *(v17 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) = 0;
      *(v0 + 176) = sub_1BE052894();
      v18 = swift_task_alloc();
      *(v0 + 184) = v18;
      v18[2] = v17;
      v18[3] = v16;
      v18[4] = v1;
      v18[5] = v14;
      v18[6] = v15;
      v19 = swift_task_alloc();
      *(v0 + 192) = v19;
      *v19 = v0;
      v19[1] = sub_1BD7836C8;

      return MEMORY[0x1EEE6DD58]();
    }

    sub_1BE04D084();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Hide My Email creation, no merchant identifier found", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    v23 = *(v0 + 104);
    v24 = *(v0 + 64);
    v25 = *(v0 + 72);
    v26 = *(v0 + 32);

    (*(v25 + 8))(v23, v24);
    *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) = 1;
    *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) = 0;
  }

  else
  {

    sub_1BE04D084();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "Hide My Email creation, no domain key found", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);

    (*(v11 + 8))(v9, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 210) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77D5C8();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1BD7836C8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1BD7838A0;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1BD783808;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD783808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD7838A0()
{
  v1 = v0[25];

  v0[3] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  if (swift_dynamicCast())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_1BE04D084();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[25];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "Hide My Email registration, call timed out or user cancelled", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v11 = v0[25];
    sub_1BD784CAC(v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BD783AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v7[8] = swift_task_alloc();
  v7[9] = sub_1BE0528A4();
  v7[10] = sub_1BE052894();
  v9 = sub_1BE052844();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD783B80, v9, v8);
}

uint64_t sub_1BD783B80()
{
  v1 = v0[8];
  v2 = v0[7];
  v17 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_1BE0528D4();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();
  v8 = sub_1BE052894();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v5;
  v9[5] = v3;
  v9[6] = v4;
  v9[7] = v17;
  v9[8] = v2;
  sub_1BD7846B0(v1, &unk_1BE0F6208, v9);
  sub_1BD0DE53C(v1, &unk_1EBD3E580);
  v7(v1, 1, 1, v6);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v5;
  sub_1BE048964();
  sub_1BD7846B0(v1, &unk_1BE0F6218, v11);
  sub_1BD0DE53C(v1, &unk_1EBD3E580);
  v12 = sub_1BE052894();
  v0[13] = v12;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52818);
  *v13 = v0;
  v13[1] = sub_1BD783DD0;
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DAC8](v0 + 16, v12, v15, v14);
}

uint64_t sub_1BD783DD0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1BD783F98;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1BD783EEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD783EEC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  sub_1BE0529B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD783F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD784014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  sub_1BE0528A4();
  v8[25] = sub_1BE052894();
  v10 = sub_1BE052844();
  v8[26] = v10;
  v8[27] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD7840B4, v10, v9);
}

uint64_t sub_1BD7840B4()
{
  v1 = v0[20];
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager);
  v0[28] = v2;
  v3 = v2;
  v4 = sub_1BE052404();
  v0[29] = v4;
  v5 = v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v6)
  {
    v7 = *(v5 + 32);
    v8 = *(v5 + 24);
    v9 = v7;
    sub_1BE048964();
    v10 = v6;
    swift_unknownObjectRetain();
    if ((sub_1BD7815EC() & 1) == 0)
    {
      v11 = [v9 bundleIdentifier];
      if (v11)
      {
        v18 = v3;
        v12 = v11;
        sub_1BE052434();

        swift_unknownObjectRelease();

        v3 = v18;
        goto LABEL_7;
      }
    }

    swift_unknownObjectRelease();
  }

  sub_1BE048C84();
LABEL_7:
  v13 = sub_1BE052404();
  v0[30] = v13;

  v14 = sub_1BE052404();
  v0[31] = v14;
  v15 = sub_1BD7815EC();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD784348;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52808);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD782AE0;
  v0[13] = &block_descriptor_99_3;
  v0[14] = v16;
  [v3 registerHideMyEmailAddressWithKey:v4 originIdentifier:v13 merchantIdentifier:v14 isWebPayment:v15 & 1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD784348()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_1BD78461C;
  }

  else
  {
    v5 = sub_1BD784478;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD784478()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  if (sub_1BE052974())
  {
  }

  else
  {
    v7 = *(v0 + 160);
    v8 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration;
    if (*(v7 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration) == 1)
    {

      *(v7 + v8) = 0;
      sub_1BE052874();
      sub_1BD786764(&unk_1EBD52820, MEMORY[0x1E69E8550]);
      swift_allocError();
      sub_1BE052204();
      swift_willThrow();
      v9 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_1BD782BB4(v6, v5, 1);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77D5C8();
  }

  v9 = *(v0 + 8);
LABEL_7:

  return v9();
}

uint64_t sub_1BD78461C()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD7846B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  sub_1BD0DE19C(a1, v19 - v9, &unk_1EBD3E580);
  v11 = sub_1BE0528D4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(v10, &unk_1EBD3E580);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1BE052844();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BE0528C4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1BD7848A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1BD784944;

  return MEMORY[0x1EEE6DA60](10000000000);
}

uint64_t sub_1BD784944()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD784A74, 0, 0);
  }
}

uint64_t sub_1BD784A74()
{
  if (sub_1BE052974())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_1BD785884();
    v0[4] = swift_allocError();
    *v3 = 0;
    sub_1BE0528A4();
    v0[5] = sub_1BE052894();
    v5 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD784B68, v5, v4);
  }
}

uint64_t sub_1BD784B68()
{
  v1 = *(v0 + 32);

  sub_1BD784CAC(v1);

  return MEMORY[0x1EEE6DFA0](sub_1BD784BE4, 0, 0);
}

uint64_t sub_1BD784BE4()
{
  sub_1BE052874();
  sub_1BD786764(&unk_1EBD52820, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_1BE052204();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD784CAC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD77D5C8();
  sub_1BD7864E8(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v3 = v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v4)
  {
    v5 = *(v3 + 32);
    v6 = *(v3 + 24);
    sub_1BD36A5EC(*(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context), *(v3 + 8), *(v3 + 16), v6, v5);
    sub_1BD785FE0(0, v4, v5);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-3005 userInfo:0];
  if (*v3)
  {
    v8 = *v3;
    v9 = sub_1BE04A844();
    [v8 didEncounterShippingEmailError_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD784ED8(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1BE052434();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD784F50()
{
  v1 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__emailAddresses;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__errors;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD527E8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isValid;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailError;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527F8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailAccountConfigurationError;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52800);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__supportsHideMyEmail, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailLoading, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailSelected, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__useHideMyEmailTransactionDefault, v8);

  sub_1BD40FB5C(*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32));

  return v0;
}

uint64_t sub_1BD785240()
{
  sub_1BD784F50();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmailAddresses()
{
  result = qword_1EBD52720;
  if (!qword_1EBD52720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7852EC()
{
  sub_1BD0E4578(319, &qword_1EBD52730, &qword_1EBD52738);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD52740, &qword_1EBD52748);
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD52750, &qword_1EBD459D8);
      if (v2 <= 0x3F)
      {
        sub_1BD1E1120();
        if (v3 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD52758, &qword_1EBD52760);
          if (v4 <= 0x3F)
          {
            sub_1BD0E4578(319, &qword_1EBD52768, &qword_1EBD52770);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

id sub_1BD785584(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v25 - v17;
  v20 = *MEMORY[0x1E69B8048];
  v21 = *(v3 + 104);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v21(v14, v20, v2, v18);
      result = PKPassKitBundle();
      if (result)
      {
        v23 = result;
        v24 = sub_1BE04B6F4();
        v19 = v14;
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    v21(&v25 - v17, v20, v2, v18);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
LABEL_12:

      (*(v3 + 8))(v19, v2);
      return v24;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    v21(v10, v20, v2, v18);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v19 = v10;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v21(v6, v20, v2, v18);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v19 = v6;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1BD785884()
{
  result = qword_1EBD52778;
  if (!qword_1EBD52778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52778);
  }

  return result;
}

unint64_t sub_1BD7858DC()
{
  result = qword_1EBD52780;
  if (!qword_1EBD52780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52780);
  }

  return result;
}

unint64_t sub_1BD785934()
{
  result = qword_1EBD52788;
  if (!qword_1EBD52788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52788);
  }

  return result;
}

unint64_t sub_1BD78598C()
{
  result = qword_1EBD52790;
  if (!qword_1EBD52790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52790);
  }

  return result;
}

unint64_t sub_1BD7859E4()
{
  result = qword_1EBD52798;
  if (!qword_1EBD52798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52798);
  }

  return result;
}

unint64_t sub_1BD785A3C()
{
  result = qword_1EBD527A0;
  if (!qword_1EBD527A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD527A0);
  }

  return result;
}

unint64_t sub_1BD785A90()
{
  result = qword_1EBD527C0;
  if (!qword_1EBD527C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD527C0);
  }

  return result;
}

uint64_t sub_1BD785AEC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD785B6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD785C10@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD785C90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD785D04(void *a1, void *a2)
{
  if (!a1 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) == 0))
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_10;
    }

LABEL_6:
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v16)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B69E0;
  v7 = *MEMORY[0x1E69BB7B8];
  *(v6 + 32) = *MEMORY[0x1E69BB7B8];
  type metadata accessor for PKContactField(0);
  v8 = v7;
  v9 = a1;
  v10 = sub_1BE052724();

  v11 = [v5 clientErrors];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v13 = sub_1BE052744();

    v14 = sub_1BD3F00D4(v13);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v18 = objc_opt_self();
  sub_1BD3F01E8(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  v19 = sub_1BE052724();

  v20 = [v18 pk:v10 FilteredShippingErrorsForContactFields:v19 errors:?];

  v21 = sub_1BE052744();
  v22 = sub_1BD3F00D4(v21);

  v15 = v22;
  if (!(v22 >> 62))
  {
    goto LABEL_6;
  }

LABEL_10:
  v23 = sub_1BE053704();

  if (v23)
  {
    return 0;
  }

LABEL_11:
  v24 = [a2 shippingEmail];
  if (v24)
  {
    v25 = v24;
    sub_1BD9DE0A8(v24);

    v26 = [a2 contactFormatValidator];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1BE052404();

      v29 = [v27 emailAddressIsValid_];

      return v29;
    }
  }

  return 1;
}

void sub_1BD785FE0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a3 shippingEmail];
  v16 = v15;
  if (!a1)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v15)
  {
    v33[0] = v10;
    v33[1] = v6;
    v34 = a2;
    v35 = a1;
    v17 = [v35 identifier];
    v18 = sub_1BE052434();
    v20 = v19;

    v21 = [v16 identifier];
    v22 = sub_1BE052434();
    v24 = v23;

    if (v18 == v22 && v20 == v24)
    {
    }

    else
    {
      v25 = sub_1BE053B84();

      if ((v25 & 1) == 0)
      {

        a2 = v34;
        v10 = v33[0];
        goto LABEL_15;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v26 = sub_1BE053074();

    a2 = v34;
    v10 = v33[0];
    if (v26)
    {
      v27 = v35;

      return;
    }
  }

  v28 = a1;
LABEL_15:
  sub_1BD9DE0A8(a1);

LABEL_16:
  sub_1BE04D084();
  v29 = sub_1BE04D204();
  v30 = sub_1BE052C54();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1BD026000, v29, v30, "Updating selected email address", v31, 2u);
    MEMORY[0x1BFB45F20](v31, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  v32 = a1;
  sub_1BD6B56B4(v9, 2);
  sub_1BD42D548(v9);
  [a2 didSelectShippingEmail_];
}

uint64_t sub_1BD786354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD7819D8(a1, v4, v5, v6);
}

uint64_t sub_1BD786410(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BD0F985C;

  return sub_1BD783AA4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD7864E8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  type metadata accessor for PrivateEmailError(0);
  result = swift_dynamicCast();
  if (result)
  {
    sub_1BD786764(&qword_1EBD52810, type metadata accessor for PrivateEmailError);
    sub_1BE04A814();

    if (v3 + 11007 >= 6)
    {
      return 0;
    }

    else
    {
      return (0x10200000003uLL >> (8 * (v3 - 1)));
    }
  }

  return result;
}

uint64_t sub_1BD7865D4(uint64_t a1)
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
  v11[1] = sub_1BD126968;

  return sub_1BD784014(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD7866B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD7848A0(a1, v4, v5, v6);
}

uint64_t sub_1BD786764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7867DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD77EAEC();
}

uint64_t sub_1BD7868D0()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD7869B0()
{
  sub_1BE052524();
}

uint64_t sub_1BD786A7C()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD786B58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD789414();
  *a1 = result;
  return result;
}

void sub_1BD786B88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x69737365636F7270;
  v7 = 0xE700000000000000;
  v8 = 0x64656E6E616373;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6964616572;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

char *sub_1BD786C24(int a1)
{
  v2 = v1;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04D214();
  v70 = *(v3 - 8);
  v71 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v65 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v62 - v11;
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v62 - v20;
  v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex] = 0;
  v22 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions;
  *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions] = MEMORY[0x1E69E7CC0];
  v23 = &v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize];
  *v24 = 0;
  *(v24 + 1) = 0;
  v68 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage;
  v69 = v22;
  *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage] = 0;
  sub_1BD0E5E8C(0, &qword_1EBD35DA8);
  v25 = sub_1BE053014();
  v26 = sub_1BE052404();
  v27 = sub_1BE052404();
  v28 = [v25 URLForResource:v26 withExtension:v27];

  if (!v28)
  {
    sub_1BE04D0F4();
    v32 = sub_1BE04D204();
    v33 = sub_1BE052C34();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BD026000, v32, v33, "Failed to create card VFX asset url", v34, 2u);
      MEMORY[0x1BFB45F20](v34, -1, -1);
    }

    (*(v70 + 8))(v12, v71);

    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1BE04A9F4();

  sub_1BD0E5E8C(0, &unk_1EBD4DB60);
  (*(v14 + 16))(v18, v21, v13);
  v29 = sub_1BD1AAE28(MEMORY[0x1E69E7CC0]);
  v30 = sub_1BD636A80(v18, v29);
  v31 = v13;
  v68 = v21;
  v36 = v30;
  v37 = [v36 rootNode];
  v38 = sub_1BE052404();
  isEscapingClosureAtFileLocation = [v37 childNodeWithName_];

  if (!isEscapingClosureAtFileLocation)
  {
    goto LABEL_20;
  }

  v40 = sub_1BE052404();
  v41 = [v37 childNodeWithName_];

  if (!v41)
  {
    goto LABEL_15;
  }

  v69 = v14;
  v42 = sub_1BE052404();
  v43 = [v37 childNodeWithName_];

  if (!v43)
  {
    v43 = v41;
LABEL_18:

    goto LABEL_19;
  }

  v44 = sub_1BE052404();
  v45 = [v37 childNodeWithName_];

  if (!v45)
  {

    isEscapingClosureAtFileLocation = v41;
    goto LABEL_18;
  }

  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_camera] = v41;
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardParent] = isEscapingClosureAtFileLocation;
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardEmitter] = v43;
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardGridEmitter] = v45;
  v75 = 0;
  v67 = v45;
  v64 = v43;
  v63 = isEscapingClosureAtFileLocation;
  v62 = v41;
  v46 = [v36 assetRegistry];
  v47 = [v46 rootNode];

  v48 = swift_allocObject();
  *(v48 + 16) = &v75;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1BD789548;
  *(v49 + 24) = v48;
  aBlock[4] = sub_1BD789550;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD637520;
  aBlock[3] = &block_descriptor_33_6;
  v50 = _Block_copy(aBlock);
  sub_1BE048964();

  [v47 enumerateHierarchyUsingBlock_];

  _Block_release(v50);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_15:
    v43 = isEscapingClosureAtFileLocation;
LABEL_19:

    goto LABEL_20;
  }

  v51 = v75;
  v52 = v68;
  if (!v75)
  {
    while (1)
    {
      sub_1BE04D0F4();
      v59 = sub_1BE04D204();
      v60 = sub_1BE052C34();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1BD026000, v59, v60, "Failed to acquiring Client Texture node from VFX", v61, 2u);
        MEMORY[0x1BFB45F20](v61, -1, -1);
      }

      (*(v70 + 8))(v65, v71);
LABEL_20:
      sub_1BE053994();
      __break(1u);
    }
  }

  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_clientTexture] = v75;
  v53 = objc_allocWithZone(MEMORY[0x1E69DF380]);
  v54 = v51;
  v55 = [v53 initWithFrame:0 options:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_vfxView] = v55;
  v56 = v55;
  [v56 setWorld_];

  v73.receiver = v2;
  v73.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v73, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BD787800();
  sub_1BD788BA4(v66, 0, 0);
  [v35 addSubview_];

  (*(v69 + 8))(v52, v31);
  v57 = v75;

  return v35;
}

void sub_1BD787688(void *a1, _BYTE *a2, void **a3)
{
  if (![a1 asset])
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [a1 name];
  v9 = sub_1BE052434();
  v11 = v10;

  if (v9 == 0x6554746E65696C43 && v11 == 0xED00006572757478)
  {
  }

  else
  {
    v13 = sub_1BE053B84();

    if ((v13 & 1) == 0)
    {
LABEL_8:

      swift_unknownObjectRelease();
      return;
    }
  }

  *a2 = 1;
  v14 = *a3;
  *a3 = v7;
}

void sub_1BD787800()
{
  v0 = MEMORY[0x1E69E6370];
  v24 = MEMORY[0x1E69E6370];
  LOBYTE(v23[0]) = 0;
  sub_1BD787F88(5, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v0;
  LOBYTE(v23[0]) = 0;
  sub_1BD787F88(4, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v0;
  LOBYTE(v23[0]) = 0;
  sub_1BD787F88(6, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v1 = MEMORY[0x1E69E6448];
  v24 = MEMORY[0x1E69E6448];
  LODWORD(v23[0]) = 1036831949;
  sub_1BD787F88(10, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1048576000;
  sub_1BD787F88(9, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(8, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1056964608;
  sub_1BD787F88(7, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1056964608;
  sub_1BD787F88(17, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1056964608;
  sub_1BD787F88(18, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1058642330;
  sub_1BD787F88(19, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(20, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(21, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(25, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(26, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1059481190;
  sub_1BD787F88(23, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1061997773;
  sub_1BD787F88(22, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1061158912;
  sub_1BD787F88(27, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v24 = v1;
  LODWORD(v23[0]) = 1041865114;
  sub_1BD787F88(1, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v2 = objc_opt_self();
  v3 = [v2 valueWithVFXFloat2_];
  v4 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  v24 = v4;
  v23[0] = v3;
  v21 = v3;
  sub_1BD787F88(13, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v5 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v5;
  v6 = v5;
  sub_1BD787F88(15, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v7 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v7;
  v8 = v7;
  sub_1BD787F88(11, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v9 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v9;
  v10 = v9;
  sub_1BD787F88(12, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v11 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v11;
  v12 = v11;
  sub_1BD787F88(14, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v13 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v13;
  v14 = v13;
  sub_1BD787F88(16, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90);
  v15 = *(v22 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardEmitter);
  v16 = [v15 particleEmitter];
  [v16 killParticles];

  v17 = [v15 particleEmitter];
  [v17 restart];

  v18 = *(v22 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardGridEmitter);
  v19 = [v18 particleEmitter];
  [v19 killParticles];

  v20 = [v18 particleEmitter];
  [v20 restart];
}

id sub_1BD787E2C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if (v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state] <= 2u)
  {
    v1 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation] * -25.0;
    v2 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation + 8] * -25.0;
  }

  result = [*&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_vfxView] setFrame_];
  v10 = &v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize];
  if (*&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize] != v7 || *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize + 8] != v8)
  {
    v17.origin.x = v5;
    v17.origin.y = v6;
    v17.size.width = v7;
    v17.size.height = v8;
    Width = CGRectGetWidth(v17);
    v18.origin.x = v5;
    v18.origin.y = v6;
    v18.size.width = v7;
    v18.size.height = v8;
    v13 = Width / CGRectGetHeight(v18);
    v15 = MEMORY[0x1E69E6448];
    *v14 = v13;
    sub_1BD787F88(0, v14);
    result = sub_1BD0DE53C(v14, &qword_1EBD3EC90);
  }

  *v10 = v7;
  v10[1] = v8;
  return result;
}

void sub_1BD787F88(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 behaviorGraph];
  if (v6)
  {
    v7 = v6;
    sub_1BD7888B0(a1);
    sub_1BD1C4810(a2, v15);
    v8 = v16;
    if (v16)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v15, v16);
      v10 = *(v8 - 8);
      MEMORY[0x1EEE9AC00](v9, v9);
      v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = sub_1BE053B74();
      (*(v10 + 8))(v12, v8);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1BE052404();

    [v7 setObject:v13 forKeyedSubscript:v14];

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1BD788288()
{
  result = qword_1EBD52898;
  if (!qword_1EBD52898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52898);
  }

  return result;
}

uint64_t sub_1BD7882DC(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex);
  v6 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions;
  swift_beginAccess();
  v7 = *(v2 + v6);
  *(v2 + v6) = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v5 == a1) | a2 & 1;
    v10 = v7 + 40;
    do
    {
      v11 = *(v10 - 8);
      v13 = v9;
      sub_1BE048964();
      v11(&v13);

      v10 += 16;
      --v8;
    }

    while (v8);
  }
}

void sub_1BD7883A4(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v39 = a4;
  v42 = a2;
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE051FC4();
  v40 = *(v15 - 8);
  v41 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v34 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex] == v42)
    {
      v36 = v6;
      v37 = v11;
      v35 = v5;
      v38 = v10;
      v24 = MEMORY[0x1E69E6370];
      v44 = MEMORY[0x1E69E6370];
      LOBYTE(aBlock[0]) = a3 & 1;
      v25 = Strong;
      sub_1BD787F88(4, aBlock);
      sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
      v34 = v9;
      v26 = v39;
      v44 = v24;
      LOBYTE(aBlock[0]) = v39 == 0;
      sub_1BD787F88(6, aBlock);
      sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
      v44 = v24;
      LOBYTE(aBlock[0]) = v26 == 2;
      sub_1BD787F88(5, aBlock);
      sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v27 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v40 = *(v40 + 8);
      (v40)(v19, v41);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v30 = v42;
      *(v29 + 16) = v28;
      *(v29 + 24) = v30;
      v45 = sub_1BD789560;
      v46 = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      v44 = &block_descriptor_24_3;
      v31 = _Block_copy(aBlock);

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v32 = v34;
      v33 = v35;
      sub_1BE053664();
      MEMORY[0x1BFB3FD90](v22, v14, v32, v31);
      _Block_release(v31);

      (*(v36 + 8))(v32, v33);
      (*(v37 + 8))(v14, v38);
      (v40)(v22, v41);
    }

    else
    {
    }
  }
}

void sub_1BD788850(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD7882DC(a2, 0);
  }
}

unint64_t sub_1BD7888B0(char a1)
{
  result = 0x7461526874646977;
  switch(a1)
  {
    case 1:
    case 22:
      result = 0xD000000000000013;
      break;
    case 2:
    case 6:
    case 25:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x697274614D746F72;
      break;
    case 4:
      result = 0x747261506F547369;
      break;
    case 5:
      result = 0x616E69466F547369;
      break;
    case 7:
    case 11:
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
    case 16:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6F6D416D6F6F6C62;
      break;
    case 18:
      result = 0x7544647261436F74;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x6E61654C64726163;
      break;
    case 21:
      result = 0x6873755064726163;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0x656C636974726170;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD788BA4(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1BE051F54();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FC4();
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v25 = &v60 - v24;
  v26 = *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_19:
    a2 = sub_1BD1D761C(0, a2[2] + 1, 1, a2);
    *(v5 + v4) = a2;
    goto LABEL_4;
  }

  v63 = v23;
  v64 = v22;
  v65 = v9;
  *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex) = v28;
  v62 = v28;
  sub_1BD7882DC(v28, 1);
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v4 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions;
  swift_beginAccess();
  a2 = *(v5 + v4);
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v4) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  v31 = a2[2];
  v30 = a2[3];
  if (v31 >= v30 >> 1)
  {
    a2 = sub_1BD1D761C((v30 > 1), v31 + 1, 1, a2);
  }

  a2[2] = v31 + 1;
  v32 = &a2[2 * v31];
  v32[4] = sub_1BD789540;
  v32[5] = v9;
  *(v5 + v4) = a2;
  swift_endAccess();
LABEL_7:
  v33 = *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state);
  *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state) = a1;
  if (a1 < 2u)
  {
    v34 = 0;
    v35 = 1;
    if (v33 >= 2 && a1 <= 1u)
    {
      v36 = MEMORY[0x1E69E6370];
      v73 = MEMORY[0x1E69E6370];
      LOBYTE(aBlock) = 1;
      sub_1BD787F88(4, &aBlock);
      sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
      v73 = v36;
      LOBYTE(aBlock) = 1;
      sub_1BD787F88(5, &aBlock);
      sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
      v73 = v36;
      LOBYTE(aBlock) = 1;
      sub_1BD787F88(6, &aBlock);
      sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v61 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v63 = *(v63 + 8);
      v37 = v20;
      v38 = v64;
      (v63)(v37, v64);
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      v41 = v62;
      *(v40 + 16) = v39;
      *(v40 + 24) = v41;
      *(v40 + 32) = 0;
      v74 = sub_1BD789530;
      v75 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v71 = 1107296256;
      v72 = sub_1BD126964;
      v73 = &block_descriptor_14_3;
      v42 = _Block_copy(&aBlock);

      sub_1BE051F74();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v43 = v65;
      v44 = v66;
      sub_1BE053664();
      v45 = v61;
      MEMORY[0x1BFB3FD90](v25, v15, v44, v42);
      _Block_release(v42);

      (*(v69 + 8))(v44, v43);
      (*(v67 + 8))(v15, v68);
      return (v63)(v25, v38);
    }
  }

  else if (a1 - 2 >= 2)
  {
    v47 = *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
    if (v47)
    {
      v48 = [v47 CGImage];
      if (v48)
      {
        v49 = v48;
        [*(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_clientTexture) setCGImage_];
      }
    }

    v35 = 0;
    v34 = 1;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v50 = MEMORY[0x1E69E6370];
  v73 = MEMORY[0x1E69E6370];
  LOBYTE(aBlock) = a1 > 1u;
  sub_1BD787F88(4, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v73 = v50;
  LOBYTE(aBlock) = v35;
  sub_1BD787F88(6, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v73 = v50;
  LOBYTE(aBlock) = v34;
  sub_1BD787F88(5, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v51 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v63 = *(v63 + 8);
  v52 = v20;
  v53 = v64;
  (v63)(v52, v64);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v56 = v62;
  *(v55 + 16) = v54;
  *(v55 + 24) = v56;
  v74 = sub_1BD789514;
  v75 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = sub_1BD126964;
  v73 = &block_descriptor_175;
  v57 = _Block_copy(&aBlock);

  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v58 = v65;
  v59 = v66;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v25, v15, v59, v57);
  _Block_release(v57);

  (*(v69 + 8))(v59, v58);
  (*(v67 + 8))(v15, v68);
  return (v63)(v25, v53);
}

uint64_t sub_1BD789414()
{
  v0 = sub_1BE053A44();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_1BD789460()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = 0;
  sub_1BE053994();
  __break(1u);
}

unint64_t sub_1BD789570()
{
  result = qword_1EBD528A0;
  if (!qword_1EBD528A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD528A0);
  }

  return result;
}

unint64_t sub_1BD7895C8()
{
  result = qword_1EBD528A8;
  if (!qword_1EBD528A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD528A8);
  }

  return result;
}

uint64_t sub_1BD789654()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB690);
  __swift_project_value_buffer(v9, qword_1EBDAB690);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD78986C()
{
  v0 = sub_1BE048EA4();
  __swift_allocate_value_buffer(v0, qword_1EBDAB6A8);
  v1 = __swift_project_value_buffer(v0, qword_1EBDAB6A8);
  v2 = *MEMORY[0x1E695A588];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1BD7898F4(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1BE04CFC4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  sub_1BE0528A4();
  v2[27] = sub_1BE052894();
  v6 = sub_1BE052844();
  v2[28] = v6;
  v2[29] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD789A50, v6, v5);
}

uint64_t sub_1BD789A50()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:DeletePassIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  *(v0 + 240) = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  sub_1BE048874();
  v12 = *(v0 + 32);
  sub_1BD030458(v0 + 16);
  v13 = [v12 secureElementPass];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 isUserDeletable];

    if ((v15 & 1) == 0)
    {

      sub_1BE0484F4();
      sub_1BD78DFD0(&qword_1EBD56120, MEMORY[0x1E6959D40]);
      swift_allocError();
      sub_1BE0484C4();
      swift_willThrow();
      sub_1BD78A010();

      v16 = *(v0 + 8);

      return v16();
    }
  }

  else
  {
  }

  sub_1BE048874();
  v18 = *(v0 + 96);
  *(v0 + 248) = v18;
  v19 = v18;
  sub_1BD030458(v0 + 80);
  v20 = swift_task_alloc();
  *(v0 + 256) = v20;
  *v20 = v0;
  v20[1] = sub_1BD789D8C;
  v21 = *(v0 + 144);
  v22 = *(v0 + 152);

  return sub_1BD78A2FC(v21, v19, v22);
}

uint64_t sub_1BD789D8C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1BD789F70;
  }

  else
  {
    v5 = sub_1BD789EC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD789EC8()
{
  v1 = *(v0 + 248);

  sub_1BD78A010();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD789F70()
{
  v1 = *(v0 + 248);

  sub_1BD78A010();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD78A010()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:DeletePassIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD78A2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[66] = a3;
  v3[65] = a2;
  v3[64] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v3[67] = swift_task_alloc();
  v4 = sub_1BE04A884();
  v3[68] = v4;
  v3[69] = *(v4 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v3[72] = v5;
  v3[73] = *(v5 - 8);
  v3[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v3[75] = swift_task_alloc();
  v6 = sub_1BE0523B4();
  v3[76] = v6;
  v3[77] = *(v6 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v7 = sub_1BE048C44();
  v3[82] = v7;
  v3[83] = *(v7 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v8 = sub_1BE048C54();
  v3[87] = v8;
  v3[88] = *(v8 - 8);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v9 = sub_1BE048654();
  v3[92] = v9;
  v3[93] = *(v9 - 8);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD78A66C, 0, 0);
}

uint64_t sub_1BD78A66C()
{
  v1 = [*(v0 + 520) paymentPass];
  *(v0 + 768) = v1;
  if (v1)
  {
    if ([v1 isPeerPaymentPass])
    {
      *(v0 + 496) = *(v0 + 528);
      sub_1BE048634();
      *(v0 + 504) = MEMORY[0x1E69E7CC0];
      sub_1BD78DFD0(&qword_1EBD528F0, MEMORY[0x1E695A448]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8);
      sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8);
      sub_1BE053664();
      sub_1BE048C34();
      v2 = swift_task_alloc();
      *(v0 + 776) = v2;
      v3 = sub_1BD15D050();
      *v2 = v0;
      v2[1] = sub_1BD78AC44;
      v4 = *(v0 + 760);
      v5 = *(v0 + 728);
      v6 = *(v0 + 688);
    }

    else
    {
      v9 = *(v0 + 648);
      v10 = *(v0 + 640);
      v11 = *(v0 + 616);
      v12 = *(v0 + 608);
      *(v0 + 480) = *(v0 + 528);
      sub_1BE0523A4();
      sub_1BE052394();
      sub_1BE048874();
      v13 = *(v0 + 352);
      *(v0 + 400) = *(v0 + 336);
      *(v0 + 416) = v13;
      v14 = *(v0 + 384);
      *(v0 + 432) = *(v0 + 368);
      *(v0 + 448) = v14;
      sub_1BD03071C();
      sub_1BE052384();
      v15 = *(v0 + 416);
      *(v0 + 272) = *(v0 + 400);
      *(v0 + 288) = v15;
      v16 = *(v0 + 448);
      *(v0 + 304) = *(v0 + 432);
      *(v0 + 320) = v16;
      sub_1BD030458(v0 + 272);
      sub_1BE052394();
      (*(v11 + 32))(v10, v9, v12);
      sub_1BE048644();
      *(v0 + 488) = MEMORY[0x1E69E7CC0];
      sub_1BD78DFD0(&qword_1EBD528F0, MEMORY[0x1E695A448]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8);
      sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8);
      sub_1BE053664();
      sub_1BE048C34();
      v17 = swift_task_alloc();
      *(v0 + 800) = v17;
      v3 = sub_1BD15D050();
      *v17 = v0;
      v17[1] = sub_1BD78B238;
      v4 = *(v0 + 752);
      v5 = *(v0 + 720);
      v6 = *(v0 + 680);
    }

    return MEMORY[0x1EEDB2D60](v5, v6, v4, &type metadata for DeletePassIntent, v3);
  }

  else if ([*(v0 + 520) passType])
  {
    sub_1BE048774();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    sub_1BE048874();
    v18 = swift_task_alloc();
    *(v0 + 848) = v18;
    *v18 = v0;
    v18[1] = sub_1BD78BD8C;

    return sub_1BD5441D4(v0 + 16);
  }
}

uint64_t sub_1BD78AC44()
{
  v2 = *v1;
  v2[98] = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[93];
    v5 = v2[92];
    v6 = v2[91];
    v7 = v2[88];
    v8 = v2[87];
    (*(v2[83] + 8))(v2[86], v2[82]);
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);

    return MEMORY[0x1EEE6DFA0](sub_1BD78CBA0, 0, 0);
  }

  else
  {
    v9 = v2[95];
    v10 = v2[93];
    v11 = v2[92];
    v12 = v2[91];
    v13 = v2[88];
    v14 = v2[87];
    (*(v2[83] + 8))(v2[86], v2[82]);
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    v15 = swift_task_alloc();
    v2[99] = v15;
    *v15 = v2;
    v15[1] = sub_1BD78AEAC;

    return sub_1BD0D7668();
  }
}

uint64_t sub_1BD78AEAC(char a1)
{
  *(*v1 + 932) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD78AFAC, 0, 0);
}

uint64_t sub_1BD78AFAC()
{
  v1 = *(v0 + 768);
  if (*(v0 + 932) == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD78B238()
{
  v2 = *v1;
  v2[101] = v0;

  if (v0)
  {
    v3 = v2[94];
    v4 = v2[93];
    v5 = v2[92];
    v6 = v2[90];
    v7 = v2[88];
    v8 = v2[87];
    (*(v2[83] + 8))(v2[85], v2[82]);
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);

    return MEMORY[0x1EEE6DFA0](sub_1BD78CD04, 0, 0);
  }

  else
  {
    v9 = v2[94];
    v10 = v2[93];
    v11 = v2[92];
    v12 = v2[90];
    v13 = v2[88];
    v14 = v2[87];
    (*(v2[83] + 8))(v2[85], v2[82]);
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    v15 = swift_task_alloc();
    v2[102] = v15;
    *v15 = v2;
    v15[1] = sub_1BD78B4A0;

    return sub_1BD0D7278();
  }
}

uint64_t sub_1BD78B4A0(char a1)
{
  *(*v1 + 933) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD78B5A0, 0, 0);
}

uint64_t sub_1BD78B5A0()
{
  if (*(v0 + 933) == 1)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 coordinator];
    *(v0 + 824) = v2;

    if (v2)
    {
      v3 = *(v0 + 600);
      v4 = *(v0 + 520);
      v5 = sub_1BE0528D4();
      (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
      sub_1BE0528A4();
      v6 = v4;
      swift_unknownObjectRetain();
      v7 = sub_1BE052894();
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E85E0];
      v8[2] = v7;
      v8[3] = v9;
      v8[4] = v2;
      v8[5] = v6;
      v10 = sub_1BD123214(0, 0, v3, &unk_1BE0F6528, v8);
      *(v0 + 832) = v10;
      v11 = swift_task_alloc();
      *(v0 + 840) = v11;
      *v11 = v0;
      v11[1] = sub_1BD78B9E0;
      v12 = MEMORY[0x1E69E6370];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];

      return MEMORY[0x1EEE6DA20](v0 + 930, v10, v12, v13, v14);
    }

    sub_1BE04D074();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "DeletePassIntent: PKAppIntentCoordinator was nil", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v15 = *(v0 + 768);
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v22 = *(v0 + 576);

    (*(v21 + 8))(v20, v22);
    sub_1BE0484F4();
    sub_1BD78DFD0(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
  }

  else
  {
    v15 = *(v0 + 768);
    sub_1BD135218();
    swift_allocError();
    *v16 = 1;
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1BD78B9E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD78BADC, 0, 0);
}

uint64_t sub_1BD78BADC()
{
  v1 = *(v0 + 768);
  if (*(v0 + 931))
  {
    sub_1BD135218();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  else
  {
    sub_1BE048774();
  }

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD78BD8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 856) = a1;
  *(v3 + 864) = a2;

  sub_1BD030458(v3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1BD78BE98, 0, 0);
}

uint64_t sub_1BD78BE98()
{
  v25 = *(v0 + 856);
  v26 = *(v0 + 864);
  v1 = *(v0 + 744);
  v2 = *(v0 + 632);
  v3 = *(v0 + 616);
  v23 = *(v0 + 608);
  v24 = *(v0 + 736);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v21 = *(v0 + 536);
  v22 = *(v0 + 624);
  v8 = *(v0 + 528);
  *(v0 + 464) = v8;
  sub_1BE04A864();
  sub_1BE04A864();
  sub_1BE048C24();
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  sub_1BE0523A4();
  sub_1BE052394();
  sub_1BE048874();
  v10 = *(v0 + 160);
  *(v0 + 208) = *(v0 + 144);
  *(v0 + 224) = v10;
  v11 = *(v0 + 192);
  *(v0 + 240) = *(v0 + 176);
  *(v0 + 256) = v11;
  sub_1BD03071C();
  sub_1BE052384();
  v12 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v12;
  v13 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v13;
  sub_1BD030458(v0 + 80);
  sub_1BE052394();
  (*(v3 + 32))(v22, v2, v23);
  sub_1BE048644();
  (*(v1 + 56))(v21, 0, 1, v24);
  v14 = swift_task_alloc();
  *(v0 + 872) = v14;
  v14[2] = v25;
  v14[3] = v26;
  v14[4] = v8;
  *(v0 + 472) = MEMORY[0x1E69E7CC0];
  sub_1BD78DFD0(&qword_1EBD528F0, MEMORY[0x1E695A448]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8);
  sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8);
  sub_1BE053664();
  v15 = swift_task_alloc();
  *(v0 + 880) = v15;
  v16 = type metadata accessor for PassEntitySnippetView();
  sub_1BD15D050();
  sub_1BD78DFD0(&qword_1EBD52908, type metadata accessor for PassEntitySnippetView);
  *v15 = v0;
  v15[1] = sub_1BD78C25C;
  v17 = *(v0 + 712);
  v18 = *(v0 + 672);
  v19 = *(v0 + 536);

  return MEMORY[0x1EEDE8838](v17, v18, v19, 1, sub_1BD78DFC4, v14, &type metadata for DeletePassIntent, v16);
}

uint64_t sub_1BD78C25C()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  v3 = v2[89];
  v4 = v2[88];
  v5 = v2[87];
  if (v0)
  {
    v6 = v2[84];
    v7 = v2[83];
    v8 = v2[82];
    v9 = v2[67];
    (*(v4 + 8))(v3, v5);
    sub_1BD78E018(v9);
    (*(v7 + 8))(v6, v8);
    v10 = sub_1BD78CE68;
  }

  else
  {
    v11 = v2[84];
    v12 = v2[83];
    v13 = v2[82];
    v14 = v2[67];
    (*(v4 + 8))(v3, v5);
    sub_1BD78E018(v14);
    (*(v12 + 8))(v11, v13);

    v10 = sub_1BD78C424;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD78C424()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8A60]) init];
  v0[112] = v1;
  if (v1)
  {
    v2 = v0[75];
    v3 = v0[65];
    [v1 removePass_];
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 coordinator];
    v0[113] = v5;

    v6 = sub_1BE0528D4();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_1BE0528A4();
    v7 = v3;
    swift_unknownObjectRetain();
    v8 = sub_1BE052894();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v5;
    v9[5] = v7;
    v11 = sub_1BD122F00(0, 0, v2, &unk_1BE0F6510, v9);
    v0[114] = v11;
    v12 = swift_task_alloc();
    v0[115] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
    *v12 = v0;
    v12[1] = sub_1BD78C7D4;
    v14 = MEMORY[0x1E69E73E0];
    v15 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v0 + 116, v11, v13, v14, v15);
  }

  else
  {
    v16 = v0[108];
    v17 = v0[107];
    sub_1BE0484F4();
    sub_1BD78DFD0(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD030220(v17, v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1BD78C7D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD78C8D0, 0, 0);
}

uint64_t sub_1BD78C8D0()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  if (*(v0 + 929))
  {
    sub_1BD135218();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    sub_1BE048774();
  }

  swift_unknownObjectRelease();

  sub_1BD030220(v3, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD78CBA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD78CD04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD78CE68()
{
  sub_1BD030220(v0[107], v0[108]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD78CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_1BE0528A4();
  v5[21] = sub_1BE052894();
  v7 = sub_1BE052844();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD78D078, v7, v6);
}

uint64_t sub_1BD78D078()
{
  v1 = [*(v0 + 160) uniqueID];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 200;
    *(v0 + 24) = sub_1BD78D1C4;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD68F38C;
    *(v0 + 104) = &block_descriptor_176;
    *(v0 + 112) = v4;
    [v3 presentDeletePassWithUniqueID:v2 completion:v0 + 80];
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD78D1C4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BD78D2CC, v2, v1);
}

uint64_t sub_1BD78D2CC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  *v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD78D340@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v5 = sub_1BE048C04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  sub_1BE048874();
  sub_1BD0415D4(v13);
  sub_1BD030458(v23);
  v14 = type metadata accessor for PassEntitySnippetView();
  sub_1BE048BC4();
  v15 = *(v6 + 8);
  v15(v13, v5);
  v16 = *(v14 + 24);
  v17 = sub_1BE04A884();
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  sub_1BE048874();
  sub_1BD0415D4(v9);
  sub_1BD030458(v22);
  sub_1BE048BF4();
  v15(v9, v5);
  v18 = v21;
  *a3 = a1;
  a3[1] = v18;
  return sub_1BD030394(a1, v18);
}

uint64_t sub_1BD78D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1BE0528A4();
  v5[5] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD78D5B4, v7, v6);
}

uint64_t sub_1BD78D5B4()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    [*(v0 + 24) handleDeletePassRequestWithPass_];
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD78D6AC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1BD78D754()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52988);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52990);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52998);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD78D8E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD7898F4(a1, v4);
}

uint64_t sub_1BD78D988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD78DA0C();
  *a1 = result;
  return result;
}

uint64_t sub_1BD78D9C0(uint64_t a1)
{
  v2 = sub_1BD15D050();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD78DA0C()
{
  v39 = sub_1BE048D74();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v0);
  v38 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v35 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v34 = v33 - v10;
  v11 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1BE04A874();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v33[0] = sub_1BE04A884();
  v20 = *(v33[0] - 8);
  v22 = MEMORY[0x1EEE9AC00](v33[0], v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v33 - v24;
  v33[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v13, qword_1EBDAB400);
  v27 = *(v14 + 16);
  v27(v17, v26, v13);
  sub_1BE04B0A4();
  v33[1] = v25;
  sub_1BE04A894();
  sub_1BE052354();
  v27(v17, v26, v13);
  sub_1BE04B0A4();
  v28 = v34;
  sub_1BE04A894();
  (*(v20 + 56))(v28, 0, 1, v33[0]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_1BE052354();
  v27(v17, v26, v13);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v29 = v35;
  sub_1BE048664();
  v30 = sub_1BE048654();
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 0, 1, v30);
  v31(v36, 1, 1, v30);
  (*(v37 + 104))(v38, *MEMORY[0x1E695A500], v39);
  sub_1BD0304AC();
  return sub_1BE0488C4();
}

uint64_t sub_1BD78DFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD78E018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD78E080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD78D518(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_88()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD78E188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD78CFDC(a1, v4, v5, v7, v6);
}

double sub_1BD78E248()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD78E2BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t AccountObservableBalance.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__balance;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__currencyCode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AccountObservableBalance.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__balance;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__currencyCode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD78E4DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountObservableBalance();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AccountObservableBalance()
{
  result = qword_1EBD529B0;
  if (!qword_1EBD529B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD78E570()
{
  sub_1BD540F14(319, &unk_1EBD529C0);
  if (v0 <= 0x3F)
  {
    sub_1BD540F14(319, &unk_1EBD49E00);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BD78E674@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD78E6F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD78E7A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD78E86C()
{
  v0 = sub_1BE04A704();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(v12, v8, &unk_1EBD52A20);
  v13 = 0;
  if ((*(v1 + 48))(v8, 1, v0) != 1)
  {
    (*(v1 + 32))(v4, v8, v0);
    v14 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    [v14 setStyle_];
    v15 = sub_1BE04A6B4();
    v16 = [v14 stringFromPersonNameComponents_];

    v13 = sub_1BE052434();
    (*(v1 + 8))(v4, v0);
  }

  sub_1BD0DE53C(v12, &unk_1EBD52A20);
  return v13;
}

uint64_t sub_1BD78EB10()
{
  v1 = sub_1BE04A704();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v31 - v20;
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD36A448(v9, v21);
    v23 = *(v2 + 48);
    if (v23(v21, 1, v1) == 1)
    {
      v24 = v21;
LABEL_6:
      sub_1BD0DE53C(v24, &unk_1EBD52A20);
      return 0;
    }

    sub_1BE04A6C4();
    v25 = *(v2 + 8);
    v25(v21, v1);
    sub_1BD0DE19C(v17, v13, &unk_1EBD52A20);
    if (v23(v13, 1, v1) == 1)
    {
      v24 = v17;
      goto LABEL_6;
    }

    (*(v2 + 32))(v5, v13, v1);
    v26 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    [v26 setStyle_];
    v27 = v25;
    v28 = sub_1BE04A6B4();
    v29 = [v26 stringFromPersonNameComponents_];

    v30 = sub_1BE052434();
    v27(v5, v1);
    sub_1BD0DE53C(v17, &unk_1EBD52A20);
    return v30;
  }

  return result;
}

uint64_t sub_1BD78EE98(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v103 - v14;
  v103 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v103, v16);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v104 = &v103 - v21;
  v105 = v1;
  v22 = (v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context);
  v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context);
  v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 8);
  v25 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 16);
  v26 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 24);
  v27 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 32);
  *v22 = v2;
  v22[1] = v3;
  v22[2] = v5;
  v22[3] = v4;
  v22[4] = v7;
  v22[5] = v6;
  sub_1BD40FB5C(v23, v24, v25, v26, v27);
  v107 = v4;
  v108 = v3;
  v28 = v2;
  v29 = v7;
  sub_1BE048964();
  sub_1BD0DE19C(&v108, &v106, &qword_1EBD3D490);
  sub_1BD0DE19C(&v107, &v106, &qword_1EBD40150);
  v30 = [v29 shippingName];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 nameComponents];

    if (v32)
    {
      sub_1BE04A6E4();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v35 = v104;
    v36 = sub_1BE04A704();
    (*(*(v36 - 8) + 56))(v11, v33, 1, v36);
    sub_1BD36A448(v11, v15);
  }

  else
  {
    v34 = sub_1BE04A704();
    (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
    v35 = v104;
  }

  sub_1BD36A448(v15, v35);
  *(v35 + *(v103 + 20)) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v37 = sub_1BD790138(v18, v35);
  sub_1BD791D58(v18, type metadata accessor for PersonNameComponentsData);
  if ((v37 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD7904FC(v35, v18);
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v38 = v106;
  if (v107 && (objc_opt_self(), (v39 = swift_dynamicCastObjCClass()) != 0))
  {
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1BE0B69E0;
    v42 = *MEMORY[0x1E69BB7C0];
    *(v41 + 32) = *MEMORY[0x1E69BB7C0];
    sub_1BD0DE19C(&v107, &v106, &qword_1EBD40150);
    type metadata accessor for PKContactField(0);
    v43 = v42;
    v44 = sub_1BE052724();

    v45 = [v40 clientErrors];
    if (v45)
    {
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v47 = sub_1BE052744();

      v48 = sub_1BD3F00D4(v47);
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC0];
    }

    v50 = objc_opt_self();
    sub_1BD3F01E8(v48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v51 = sub_1BE052724();

    v52 = [v50 pk:v44 FilteredShippingErrorsForContactFields:v51 errors:?];

    v53 = sub_1BE052744();
    v49 = sub_1BD3F00D4(v53);

    sub_1BD0DE53C(&v107, &qword_1EBD40150);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v54 = sub_1BD3FE590(v38, v49);

  if ((v54 & 1) == 0)
  {
    if (v107 && (objc_opt_self(), (v55 = swift_dynamicCastObjCClass()) != 0))
    {
      v56 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1BE0B69E0;
      v58 = *MEMORY[0x1E69BB7C0];
      *(v57 + 32) = *MEMORY[0x1E69BB7C0];
      sub_1BD0DE19C(&v107, &v106, &qword_1EBD40150);
      type metadata accessor for PKContactField(0);
      v59 = v58;
      v60 = sub_1BE052724();

      v61 = [v56 clientErrors];
      if (v61)
      {
        v62 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v63 = sub_1BE052744();

        v64 = sub_1BD3F00D4(v63);
      }

      else
      {
        v64 = MEMORY[0x1E69E7CC0];
      }

      v66 = objc_opt_self();
      sub_1BD3F01E8(v64);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v67 = sub_1BE052724();

      v68 = [v66 pk:v60 FilteredShippingErrorsForContactFields:v67 errors:?];

      v69 = sub_1BE052744();
      v65 = sub_1BD3F00D4(v69);

      sub_1BD0DE53C(&v107, &qword_1EBD40150);
    }

    else
    {
      v65 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v106 = v65;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v70 = v106;
  if (v107 && (objc_opt_self(), (v71 = swift_dynamicCastObjCClass()) != 0))
  {
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1BE0B69E0;
    v74 = *MEMORY[0x1E69BB7D0];
    *(v73 + 32) = *MEMORY[0x1E69BB7D0];
    sub_1BD0DE19C(&v107, &v106, &qword_1EBD40150);
    type metadata accessor for PKContactField(0);
    v75 = v74;
    v76 = sub_1BE052724();

    v77 = [v72 clientErrors];
    if (v77)
    {
      v78 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v79 = sub_1BE052744();

      v80 = sub_1BD3F00D4(v79);
    }

    else
    {
      v80 = MEMORY[0x1E69E7CC0];
    }

    v82 = objc_opt_self();
    sub_1BD3F01E8(v80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v83 = sub_1BE052724();

    v84 = [v82 pk:v76 FilteredShippingErrorsForContactFields:v83 errors:?];

    v85 = sub_1BE052744();
    v81 = sub_1BD3F00D4(v85);

    sub_1BD0DE53C(&v107, &qword_1EBD40150);
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

  v86 = sub_1BD3FE590(v70, v81);

  if ((v86 & 1) == 0)
  {
    if (v107 && (objc_opt_self(), (v87 = swift_dynamicCastObjCClass()) != 0))
    {
      v88 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1BE0B69E0;
      v90 = *MEMORY[0x1E69BB7D0];
      *(v89 + 32) = *MEMORY[0x1E69BB7D0];
      sub_1BD0DE19C(&v107, &v106, &qword_1EBD40150);
      type metadata accessor for PKContactField(0);
      v91 = v90;
      v92 = sub_1BE052724();

      v93 = [v88 clientErrors];
      if (v93)
      {
        v94 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v95 = sub_1BE052744();

        v96 = sub_1BD3F00D4(v95);
      }

      else
      {
        v96 = MEMORY[0x1E69E7CC0];
      }

      v98 = objc_opt_self();
      sub_1BD3F01E8(v96);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v99 = sub_1BE052724();

      v100 = [v98 pk:v92 FilteredShippingErrorsForContactFields:v99 errors:?];

      v101 = sub_1BE052744();
      v97 = sub_1BD3F00D4(v101);

      sub_1BD0DE53C(&v107, &qword_1EBD40150);
    }

    else
    {
      v97 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v106 = v97;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  return sub_1BD791D58(v35, type metadata accessor for PersonNameComponentsData);
}

void sub_1BD78FAE8()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  v2 = [v0 nameOrderForContact_];

  qword_1EBDAB6C0 = v2;
}

uint64_t sub_1BD78FB54()
{
  v1 = OBJC_IVAR____TtC9PassKitUI10PersonName__internalComponentsData;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI10PersonName__nameErrors;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD527E8);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName__phoneticNameErrors, v4);
  sub_1BD40FB5C(*(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 32));

  return swift_deallocClassInstance();
}

void sub_1BD78FCDC()
{
  sub_1BD78FF48(319, &qword_1EBD52A18, type metadata accessor for PersonNameComponentsData, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1BD78FE18();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD78FE18()
{
  if (!qword_1EBD52750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD459D8);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD52750);
    }
  }
}

void sub_1BD78FEA4()
{
  sub_1BD78FF48(319, &qword_1EBD36A50, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD78FF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD78FFAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD790028(uint64_t a1)
{
  v2 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD7904FC(a1, &v11 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD7904FC(v9, v5);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD791D58(v9, type metadata accessor for PersonNameComponentsData);
}

uint64_t sub_1BD790138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04A704();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A40);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v28 - v15, &unk_1EBD52A20);
  sub_1BD0DE19C(a2, &v16[v18], &unk_1EBD52A20);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BD0DE19C(v16, v12, &unk_1EBD52A20);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1BD7904A4();
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v16, &unk_1EBD52A20);
      if (v21)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = 0;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1BD0DE53C(v16, &unk_1EBD52A40);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(v16, &unk_1EBD52A20);
LABEL_9:
  type metadata accessor for PersonNameComponentsData(0);
  v23 = sub_1BD6B04D8();
  v25 = v24;
  if (v23 == sub_1BD6B04D8() && v25 == v26)
  {

    v20 = 1;
  }

  else
  {
    v20 = sub_1BE053B84();
  }

  return v20 & 1;
}

unint64_t sub_1BD7904A4()
{
  result = qword_1EBD42E60;
  if (!qword_1EBD42E60)
  {
    sub_1BE04A704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E60);
  }

  return result;
}

uint64_t sub_1BD7904FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonNameComponentsData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD790560(void **a1, int a2)
{
  v5 = *a1;
  v99 = a1[1];
  v100 = v5;
  v6 = a1[2];
  v97 = a1[3];
  v98 = v6;
  v7 = a1[4];
  v96 = a1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v91 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v101 = &v90 - v13;
  v14 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v90 - v20;
  v22 = v2 + OBJC_IVAR____TtC9PassKitUI10PersonName_context;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  v23 = OBJC_IVAR____TtC9PassKitUI10PersonName_defaults;
  *(v2 + v23) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    v25 = OBJC_IVAR____TtC9PassKitUI10PersonName_recents;
    *(v2 + OBJC_IVAR____TtC9PassKitUI10PersonName_recents) = result;
    v26 = [v7 shippingName];
    v95 = a2;
    v93 = v21;
    v94 = v14;
    v92 = v17;
    if (v26)
    {

      v28 = v96;
      v27 = v97;
      v29 = v97;
      v31 = v99;
      v30 = v100;
      v32 = v99;
      v33 = v100;
    }

    else
    {
      v90 = [*(v2 + v25) meCard];
      v34 = [*(v2 + v23) defaultContactName];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
        v37 = v34;
      }

      else
      {
        v38 = [*(v2 + v23) defaultShippingAddress];
        if (v38)
        {
          v36 = v38;
          v37 = v36;
        }

        else
        {
          v37 = 0;
          v36 = v90;
          v35 = v90;
        }
      }

      v39 = v35;
      [v7 setShippingName_];

      v33 = *a1;
      v32 = a1[1];
      v29 = a1[3];
      v31 = v99;
      v30 = v100;
      v28 = v96;
      v27 = v97;
    }

    v104 = v29;
    v105 = v32;
    v40 = *v22;
    v41 = *(v22 + 8);
    v42 = *(v22 + 16);
    v43 = *(v22 + 24);
    v44 = *(v22 + 32);
    *v22 = v30;
    *(v22 + 8) = v31;
    *(v22 + 16) = v98;
    *(v22 + 24) = v27;
    *(v22 + 32) = v7;
    *(v22 + 40) = v28;
    v45 = v33;
    v46 = v7;
    sub_1BE048964();
    sub_1BD0DE19C(&v105, v103, &qword_1EBD3D490);
    sub_1BD0DE19C(&v104, v103, &qword_1EBD40150);
    sub_1BD40FB5C(v40, v41, v42, v43, v44);
    v47 = [v46 shippingName];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 nameComponents];

      v50 = v95;
      v52 = v93;
      v51 = v94;
      v53 = v92;
      if (v49)
      {
        v54 = v91;
        sub_1BE04A6E4();

        v55 = 0;
        v56 = v2;
      }

      else
      {
        v55 = 1;
        v56 = v2;
        v54 = v91;
      }

      v59 = sub_1BE04A704();
      (*(*(v59 - 8) + 56))(v54, v55, 1, v59);
      v58 = v101;
      sub_1BD36A448(v54, v101);
    }

    else
    {
      v57 = sub_1BE04A704();
      v58 = v101;
      (*(*(v57 - 8) + 56))(v101, 1, 1, v57);
      v56 = v2;
      v50 = v95;
      v52 = v93;
      v51 = v94;
      v53 = v92;
    }

    sub_1BD36A448(v58, v52);
    *(v52 + *(v51 + 20)) = 1;
    swift_beginAccess();
    sub_1BD7904FC(v52, v53);
    sub_1BE04D874();
    sub_1BD791D58(v52, type metadata accessor for PersonNameComponentsData);
    swift_endAccess();
    *(v56 + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) = v50 & 1;
    if (v104 && (objc_opt_self(), (v60 = swift_dynamicCastObjCClass()) != 0))
    {
      v61 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1BE0B69E0;
      v63 = *MEMORY[0x1E69BB7C0];
      *(v62 + 32) = *MEMORY[0x1E69BB7C0];
      sub_1BD0DE19C(&v104, v103, &qword_1EBD40150);
      type metadata accessor for PKContactField(0);
      v64 = v63;
      v65 = sub_1BE052724();

      v66 = [v61 clientErrors];
      if (v66)
      {
        v67 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v68 = sub_1BE052744();

        v69 = sub_1BD3F00D4(v68);
      }

      else
      {
        v69 = MEMORY[0x1E69E7CC0];
      }

      v71 = objc_opt_self();
      sub_1BD3F01E8(v69);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v72 = sub_1BE052724();

      v73 = [v71 pk:v65 FilteredShippingErrorsForContactFields:v72 errors:?];

      v74 = sub_1BE052744();
      v70 = sub_1BD3F00D4(v74);

      sub_1BD0DE53C(&v104, &qword_1EBD40150);
    }

    else
    {
      v70 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v102 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8);
    sub_1BE04D874();
    swift_endAccess();
    if (v104 && (objc_opt_self(), (v75 = swift_dynamicCastObjCClass()) != 0))
    {
      v76 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1BE0B69E0;
      v78 = *MEMORY[0x1E69BB7D0];
      *(v77 + 32) = *MEMORY[0x1E69BB7D0];
      sub_1BD0DE19C(&v104, v103, &qword_1EBD40150);
      type metadata accessor for PKContactField(0);
      v79 = v78;
      v80 = sub_1BE052724();

      v81 = [v76 clientErrors];
      if (v81)
      {
        v82 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v83 = sub_1BE052744();

        v84 = sub_1BD3F00D4(v83);
      }

      else
      {
        v84 = MEMORY[0x1E69E7CC0];
      }

      v86 = objc_opt_self();
      sub_1BD3F01E8(v84);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v87 = sub_1BE052724();

      v88 = [v86 pk:v80 FilteredShippingErrorsForContactFields:v87 errors:?];

      v89 = sub_1BE052744();
      v85 = sub_1BD3F00D4(v89);

      sub_1BD0DE53C(&v104, &qword_1EBD40150);
    }

    else
    {
      v85 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v102 = v85;
    sub_1BE04D874();
    swift_endAccess();
    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD790E98(uint64_t a1, void *a2, void *a3)
{
  v147 = a2;
  v5 = sub_1BE04A704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v134 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v131 = &v129 - v11;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A40);
  MEMORY[0x1EEE9AC00](v145, v12);
  v154 = &v129 - v13;
  v152 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v152, v14);
  v137 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v141 = &v129 - v18;
  v19 = sub_1BE04D214();
  v139 = *(v19 - 8);
  v140 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v149 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v146 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v136 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v133 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v135 = &v129 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v150 = &v129 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v151 = &v129 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v144 = &v129 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v138 = &v129 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v148 = &v129 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v129 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v129 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v129 - v59;
  v61 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v142 = &v129 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v129 - v66;
  v70 = MEMORY[0x1EEE9AC00](v68, v69);
  v72 = &v129 - v71;
  v143 = a3;
  v73 = [a3 shippingName];
  v155 = v5;
  v156 = v6;
  if (v73)
  {
    v74 = a1;
    v75 = v73;
    v76 = [v73 nameComponents];

    if (v76)
    {
      sub_1BE04A6E4();

      v77 = *(v156 + 56);
      v78 = v56;
      v79 = 0;
    }

    else
    {
      v77 = *(v156 + 56);
      v78 = v56;
      v79 = 1;
    }

    v153 = v77;
    v77(v78, v79, 1, v155);
    sub_1BD36A448(v56, v60);
    a1 = v74;
  }

  else
  {
    v153 = *(v6 + 56);
    v153(v60, 1, 1, v5);
  }

  sub_1BD36A448(v60, v72);
  v72[*(v61 + 20)] = 1;
  v80 = sub_1BD790138(a1, v72);
  sub_1BD791D58(v72, type metadata accessor for PersonNameComponentsData);
  v81 = v154;
  if (v80)
  {
    goto LABEL_41;
  }

  v82 = v149;
  sub_1BE04D084();
  v132 = a1;
  sub_1BD7904FC(a1, v67);
  v83 = sub_1BE04D204();
  v84 = sub_1BE052C54();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v157 = v130;
    *v85 = 136315138;
    sub_1BD0DE19C(v67, v52, &unk_1EBD52A20);
    v87 = v155;
    v86 = v156;
    if ((*(v156 + 48))(v52, 1, v155) == 1)
    {
      sub_1BD0DE53C(v52, &unk_1EBD52A20);
      v88 = 0xE300000000000000;
      v89 = 7104878;
    }

    else
    {
      v89 = sub_1BE04A6A4();
      v88 = v90;
      (*(v86 + 8))(v52, v87);
    }

    v81 = v154;
    sub_1BD791D58(v67, type metadata accessor for PersonNameComponentsData);
    v91 = sub_1BD123690(v89, v88, &v157);

    *(v85 + 4) = v91;
    _os_log_impl(&dword_1BD026000, v83, v84, "Callback Handling: didSelectContactName %s", v85, 0xCu);
    v92 = v130;
    __swift_destroy_boxed_opaque_existential_0(v130);
    MEMORY[0x1BFB45F20](v92, -1, -1);
    MEMORY[0x1BFB45F20](v85, -1, -1);

    (*(v139 + 8))(v149, v140);
  }

  else
  {

    sub_1BD791D58(v67, type metadata accessor for PersonNameComponentsData);
    (*(v139 + 8))(v82, v140);
  }

  v93 = v148;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70);
  v94 = *(v154 + 12);
  a1 = v132;
  v95 = v141;
  sub_1BD0DE19C(v132, v141, &unk_1EBD52A20);
  LODWORD(v149) = *(a1 + *(v61 + 20));
  *(v95 + v94) = v149;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v95, 2);
  sub_1BD791D58(v95, type metadata accessor for Analytics.StateChange);
  v96 = v138;
  sub_1BD0DE19C(a1, v138, &unk_1EBD52A20);
  v98 = v155;
  v97 = v156;
  v99 = *(v156 + 48);
  v100 = v99(v96, 1, v155);
  v101 = v144;
  if (v100 == 1)
  {
    sub_1BD0DE53C(v96, &unk_1EBD52A20);
    v153(v93, 1, 1, v98);
  }

  else
  {
    sub_1BE04A6C4();
    (*(v97 + 8))(v96, v98);
  }

  v102 = v150;
  v103 = v151;
  v104 = [v143 shippingName];
  if (v104)
  {
    v105 = v104;
    v106 = [v104 nameComponents];

    if (v106)
    {
      v107 = v135;
      sub_1BE04A6E4();

      v108 = v107;
      v109 = 0;
      v103 = v151;
    }

    else
    {
      v109 = 1;
      v103 = v151;
      v108 = v135;
    }

    v153(v108, v109, 1, v98);
    v110 = v108;
    v102 = v150;
    sub_1BD36A448(v110, v150);
  }

  else
  {
    v153(v102, 1, 1, v98);
  }

  v111 = v102;
  v112 = v142;
  sub_1BD36A448(v111, v142);
  sub_1BD36A448(v112, v103);
  if (v99(v103, 1, v98) == 1)
  {
    sub_1BD0DE53C(v103, &unk_1EBD52A20);
    v153(v101, 1, 1, v98);
  }

  else
  {
    sub_1BE04A6C4();
    (*(v97 + 8))(v103, v98);
  }

  v113 = *(v145 + 48);
  sub_1BD0DE19C(v93, v81, &unk_1EBD52A20);
  sub_1BD0DE19C(v101, v81 + v113, &unk_1EBD52A20);
  if (v99(v81, 1, v98) == 1)
  {
    sub_1BD0DE53C(v101, &unk_1EBD52A20);
    sub_1BD0DE53C(v93, &unk_1EBD52A20);
    if (v99(v81 + v113, 1, v98) == 1)
    {
      sub_1BD0DE53C(v81, &unk_1EBD52A20);
      goto LABEL_36;
    }
  }

  else
  {
    v114 = v133;
    sub_1BD0DE19C(v81, v133, &unk_1EBD52A20);
    if (v99(v81 + v113, 1, v98) != 1)
    {
      v124 = v81;
      v125 = v156;
      v126 = v124 + v113;
      v127 = v131;
      (*(v156 + 32))(v131, v126, v98);
      sub_1BD7904A4();
      LODWORD(v151) = sub_1BE052334();
      v128 = *(v125 + 8);
      v128(v127, v155);
      sub_1BD0DE53C(v101, &unk_1EBD52A20);
      sub_1BD0DE53C(v148, &unk_1EBD52A20);
      v128(v114, v155);
      v98 = v155;
      a1 = v132;
      sub_1BD0DE53C(v124, &unk_1EBD52A20);
      if (v151)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    sub_1BD0DE53C(v101, &unk_1EBD52A20);
    sub_1BD0DE53C(v93, &unk_1EBD52A20);
    (*(v156 + 8))(v114, v98);
  }

  sub_1BD0DE53C(v81, &unk_1EBD52A40);
LABEL_32:
  v115 = v136;
  sub_1BD0DE19C(a1, v136, &unk_1EBD52A20);
  if (v99(v115, 1, v98) == 1)
  {
    sub_1BD0DE53C(v115, &unk_1EBD52A20);
    v116 = v137;
    v153(v137, 1, 1, v98);
  }

  else
  {
    v116 = v137;
    sub_1BE04A6C4();
    (*(v156 + 8))(v115, v98);
  }

  *(v116 + *(v154 + 12)) = v149;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v116, 2);
  sub_1BD791D58(v116, type metadata accessor for Analytics.StateChange);
LABEL_36:
  v117 = v146;
  sub_1BD0DE19C(a1, v146, &unk_1EBD52A20);
  if (v99(v117, 1, v98) == 1)
  {
    v118 = 0;
    v119 = v147;
LABEL_40:
    [v119 didSelectShippingName_];

LABEL_41:
    sub_1BD791D58(a1, type metadata accessor for PersonNameComponentsData);
    return;
  }

  v120 = v156;
  v121 = v134;
  (*(v156 + 32))(v134, v117, v98);
  v122 = objc_opt_self();
  v123 = sub_1BE04A6B4();
  v118 = [v122 pkContactWithNameComponents:v123 labeledValues:0];

  v119 = v147;
  if (v118)
  {
    (*(v120 + 8))(v121, v98);
    goto LABEL_40;
  }

  __break(1u);
}