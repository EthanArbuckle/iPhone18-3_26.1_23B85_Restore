uint64_t sub_21D517BCC(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF54CC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

void **sub_21D517C40(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **sub_21D517CE0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF54CC();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v12[1] = v13[1];
  return a1;
}

char *sub_21D517D84(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **sub_21D517E0C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_21D517EC4()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D517F68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *v4 = *a2;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v41 = a2[1];
    *(a1 + 8) = v41;
    *(a1 + 16) = *(a2 + 16);
    v6 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v6;
    v7 = a2[6];
    *(a1 + 40) = a2[5];
    *(a1 + 48) = v7;
    v8 = a2[8];
    *(a1 + 56) = a2[7];
    *(a1 + 64) = v8;
    v9 = a2[10];
    *(a1 + 72) = a2[9];
    *(a1 + 80) = v9;
    *(a1 + 88) = *(a2 + 88);
    v10 = a2[13];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v10;
    v11 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
    v12 = *(v11 + 48);
    __dst = v4 + v12;
    v43 = v11;
    v40 = a2 + v12;
    v13 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v14 = *(v13 - 8);
    v39 = *(v14 + 48);
    v15 = v41;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v39(v40, 1, v13))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
      memcpy(__dst, v40, *(*(v16 - 8) + 64));
      v17 = a3;
    }

    else
    {
      v19 = sub_21DBF54CC();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v40, 1, v19))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(__dst, v40, *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v20 + 16))(__dst, v40, v19);
        (*(v20 + 56))(__dst, 0, 1, v19);
      }

      v17 = a3;
      v22 = *(v13 + 20);
      v23 = &__dst[v22];
      v24 = &v40[v22];
      v25 = *(v24 + 1);
      *v23 = *v24;
      *(v23 + 1) = v25;
      v26 = *(v14 + 56);
      sub_21DBF8E0C();
      v26(__dst, 0, 1, v13);
    }

    *(v4 + *(v43 + 52)) = *(a2 + *(v43 + 52));
    *(v4 + *(v43 + 56)) = *(a2 + *(v43 + 56));
    v27 = *(v17 + 20);
    v28 = v4 + v27;
    v29 = a2 + v27;
    v30 = *(a2 + v27 + 8);
    sub_21DBF8E0C();
    if (v30 == 1)
    {
      v31 = *(v29 + 48);
      *(v28 + 2) = *(v29 + 32);
      *(v28 + 3) = v31;
      *(v28 + 4) = *(v29 + 64);
      v32 = *(v29 + 16);
      *v28 = *v29;
      *(v28 + 1) = v32;
    }

    else
    {
      *v28 = *v29;
      *(v28 + 1) = v30;
      v33 = *(v29 + 24);
      *(v28 + 2) = *(v29 + 16);
      *(v28 + 3) = v33;
      v34 = *(v29 + 40);
      *(v28 + 4) = *(v29 + 32);
      *(v28 + 5) = v34;
      v35 = *(v29 + 56);
      *(v28 + 6) = *(v29 + 48);
      *(v28 + 7) = v35;
      v36 = *(v29 + 64);
      v37 = *(v29 + 72);
      *(v28 + 8) = v36;
      *(v28 + 9) = v37;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
    }

    *(v4 + *(v17 + 24)) = *(a2 + *(v17 + 24));
    sub_21DBF8E0C();
  }

  return v4;
}

uint64_t sub_21D51831C(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0) + 48);
  v5 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_21DBF54CC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4, 1, v6))
    {
      (*(v7 + 8))(v4, v6);
    }
  }

  if (*(a1 + *(a2 + 20) + 8) != 1)
  {
  }
}

uint64_t sub_21D5184D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v39 = *(a2 + 8);
  *(a1 + 8) = v39;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  v10 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v11 = *(v10 + 48);
  __dst = (a1 + v11);
  v41 = v10;
  v38 = (a2 + v11);
  v12 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v13 = *(v12 - 8);
  v37 = *(v13 + 48);
  v14 = v39;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v37(v38, 1, v12))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(__dst, v38, *(*(v15 - 8) + 64));
    v16 = a3;
  }

  else
  {
    v17 = sub_21DBF54CC();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v38, 1, v17))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(__dst, v38, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(__dst, v38, v17);
      (*(v18 + 56))(__dst, 0, 1, v17);
    }

    v16 = a3;
    v20 = *(v12 + 20);
    v21 = &__dst[v20];
    v22 = &v38[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = *(v13 + 56);
    sub_21DBF8E0C();
    v24(__dst, 0, 1, v12);
  }

  *(a1 + *(v41 + 52)) = *(a2 + *(v41 + 52));
  *(a1 + *(v41 + 56)) = *(a2 + *(v41 + 56));
  v25 = *(v16 + 20);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v28 = *(a2 + v25 + 8);
  sub_21DBF8E0C();
  if (v28 == 1)
  {
    v29 = *(v27 + 48);
    *(v26 + 32) = *(v27 + 32);
    *(v26 + 48) = v29;
    *(v26 + 64) = *(v27 + 64);
    v30 = *(v27 + 16);
    *v26 = *v27;
    *(v26 + 16) = v30;
  }

  else
  {
    *v26 = *v27;
    *(v26 + 8) = v28;
    v31 = *(v27 + 24);
    *(v26 + 16) = *(v27 + 16);
    *(v26 + 24) = v31;
    v32 = *(v27 + 40);
    *(v26 + 32) = *(v27 + 32);
    *(v26 + 40) = v32;
    v33 = *(v27 + 56);
    *(v26 + 48) = *(v27 + 48);
    *(v26 + 56) = v33;
    v34 = *(v27 + 64);
    v35 = *(v27 + 72);
    *(v26 + 64) = v34;
    *(v26 + 72) = v35;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  *(a1 + *(v16 + 24)) = *(a2 + *(v16 + 24));
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D51883C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  v7 = v5;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  sub_21DBF8E0C();

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  sub_21DBF8E0C();

  v8 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v9 = v8[12];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (v15)
  {
    if (!v16)
    {
      v17 = sub_21DBF54CC();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v11, 1, v17))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(v10, v11, *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 16))(v10, v11, v17);
        (*(v18 + 56))(v10, 0, 1, v17);
      }

      v25 = *(v12 + 20);
      v26 = &v10[v25];
      v27 = &v11[v25];
      *v26 = *v27;
      *(v26 + 1) = *(v27 + 1);
      v28 = *(v13 + 56);
      sub_21DBF8E0C();
      v28(v10, 0, 1, v12);
      goto LABEL_13;
    }

LABEL_7:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(v10, v11, *(*(v20 - 8) + 64));
LABEL_13:
    v29 = a3;
    goto LABEL_14;
  }

  if (v16)
  {
    sub_21D515A94(v10, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
    goto LABEL_7;
  }

  v21 = sub_21DBF54CC();
  v46 = *(v21 - 8);
  v22 = *(v46 + 48);
  v23 = v22(v10, 1, v21);
  v24 = v22(v11, 1, v21);
  if (!v23)
  {
    if (!v24)
    {
      (*(v46 + 24))(v10, v11, v21);
      goto LABEL_25;
    }

    (*(v46 + 8))(v10, v21);
    goto LABEL_24;
  }

  if (v24)
  {
LABEL_24:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(v10, v11, *(*(v42 - 8) + 64));
    goto LABEL_25;
  }

  (*(v46 + 16))(v10, v11, v21);
  (*(v46 + 56))(v10, 0, 1, v21);
LABEL_25:
  v29 = a3;
  v43 = *(v12 + 20);
  v44 = &v10[v43];
  v45 = &v11[v43];
  *v44 = *v45;
  *(v44 + 1) = *(v45 + 1);
  sub_21DBF8E0C();

LABEL_14:
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  sub_21DBF8E0C();

  v30 = *(v29 + 20);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a1 + v30 + 8);
  v34 = *(a2 + v30 + 8);
  if (v33 == 1)
  {
    if (v34 == 1)
    {
      *v31 = *v32;
      v35 = *(v32 + 16);
      v36 = *(v32 + 32);
      v37 = *(v32 + 64);
      *(v31 + 48) = *(v32 + 48);
      *(v31 + 64) = v37;
      *(v31 + 16) = v35;
      *(v31 + 32) = v36;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 24) = *(v32 + 24);
      *(v31 + 32) = *(v32 + 32);
      *(v31 + 40) = *(v32 + 40);
      *(v31 + 48) = *(v32 + 48);
      *(v31 + 56) = *(v32 + 56);
      *(v31 + 64) = *(v32 + 64);
      *(v31 + 72) = *(v32 + 72);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
    }
  }

  else if (v34 == 1)
  {
    sub_21D1D9B90(v31);
    *v31 = *v32;
    v38 = *(v32 + 64);
    v40 = *(v32 + 16);
    v39 = *(v32 + 32);
    *(v31 + 48) = *(v32 + 48);
    *(v31 + 64) = v38;
    *(v31 + 16) = v40;
    *(v31 + 32) = v39;
  }

  else
  {
    *v31 = *v32;
    *(v31 + 8) = *(v32 + 8);
    sub_21DBF8E0C();

    *(v31 + 16) = *(v32 + 16);
    *(v31 + 24) = *(v32 + 24);
    sub_21DBF8E0C();

    *(v31 + 32) = *(v32 + 32);
    *(v31 + 40) = *(v32 + 40);
    sub_21DBF8E0C();

    *(v31 + 48) = *(v32 + 48);
    *(v31 + 56) = *(v32 + 56);
    sub_21DBF8E0C();

    *(v31 + 64) = *(v32 + 64);
    *(v31 + 72) = *(v32 + 72);
    sub_21DBF8E0C();
  }

  *(a1 + *(v29 + 24)) = *(a2 + *(v29 + 24));
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D518EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v6 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v7 = v6[12];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = sub_21DBF54CC();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(v8, v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 32))(v8, v9, v13);
      (*(v14 + 56))(v8, 0, 1, v13);
    }

    *&v8[*(v10 + 20)] = *&v9[*(v10 + 20)];
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  *(a1 + v6[13]) = *(a2 + v6[13]);
  *(a1 + v6[14]) = *(a2 + v6[14]);
  v16 = *(a3 + 20);
  v17 = *(a3 + 24);
  v18 = (a1 + v16);
  v19 = (a2 + v16);
  v20 = v19[4];
  v18[3] = v19[3];
  v18[4] = v20;
  v21 = v19[2];
  v18[1] = v19[1];
  v18[2] = v21;
  *v18 = *v19;
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

uint64_t sub_21D51914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;

  *(a1 + 88) = *(a2 + 88);
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

  v11 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v12 = v11[12];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v17(v14, 1, v15);
  if (!v18)
  {
    if (v19)
    {
      sub_21D515A94(v13, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
      goto LABEL_7;
    }

    v25 = sub_21DBF54CC();
    v46 = *(v25 - 8);
    v26 = *(v46 + 48);
    v27 = v26(v13, 1, v25);
    v28 = v26(v14, 1, v25);
    if (v27)
    {
      if (!v28)
      {
        (*(v46 + 32))(v13, v14, v25);
        (*(v46 + 56))(v13, 0, 1, v25);
LABEL_16:
        v22 = a3;
        v30 = *(v15 + 20);
        v31 = &v13[v30];
        v32 = &v14[v30];
        v34 = *v32;
        v33 = *(v32 + 1);
        *v31 = v34;
        *(v31 + 1) = v33;

        goto LABEL_17;
      }
    }

    else
    {
      if (!v28)
      {
        (*(v46 + 40))(v13, v14, v25);
        goto LABEL_16;
      }

      (*(v46 + 8))(v13, v25);
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(v13, v14, *(*(v29 - 8) + 64));
    goto LABEL_16;
  }

  if (v19)
  {
LABEL_7:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(v13, v14, *(*(v24 - 8) + 64));
    v22 = a3;
    goto LABEL_17;
  }

  v20 = sub_21DBF54CC();
  v21 = *(v20 - 8);
  v22 = a3;
  if ((*(v21 + 48))(v14, 1, v20))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(v13, v14, *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(v13, v14, v20);
    (*(v21 + 56))(v13, 0, 1, v20);
  }

  *&v13[*(v15 + 20)] = *&v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_17:
  *(a1 + v11[13]) = *(a2 + v11[13]);
  *(a1 + v11[14]) = *(a2 + v11[14]);

  v35 = *(v22 + 20);
  v36 = (a1 + v35);
  v37 = (a2 + v35);
  if (*(a1 + v35 + 8) != 1)
  {
    v38 = v37[1];
    if (v38 != 1)
    {
      *v36 = *v37;
      v36[1] = v38;

      v41 = v37[3];
      v36[2] = v37[2];
      v36[3] = v41;

      v42 = v37[5];
      v36[4] = v37[4];
      v36[5] = v42;

      v43 = v37[7];
      v36[6] = v37[6];
      v36[7] = v43;

      v44 = v37[9];
      v36[8] = v37[8];
      v36[9] = v44;

      goto LABEL_22;
    }

    sub_21D1D9B90(v36);
  }

  v39 = *(v37 + 3);
  *(v36 + 2) = *(v37 + 2);
  *(v36 + 3) = v39;
  *(v36 + 4) = *(v37 + 4);
  v40 = *(v37 + 1);
  *v36 = *v37;
  *(v36 + 1) = v40;
LABEL_22:
  *(a1 + *(v22 + 24)) = *(a2 + *(v22 + 24));

  return a1;
}

uint64_t sub_21D519680()
{
  result = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D519724(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21D519814(uint64_t a1)
{
  v2 = sub_21DBF54CC();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_21D5198A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D519944(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  sub_21DBF8E0C();

  *(a1 + a3[6]) = *(a2 + a3[6]);
  sub_21DBF8E0C();

  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D519A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_21D519A98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_21D519B6C()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRRemindersListHighlightTarget.TargetItem.init(item:includesChildren:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_21D105764(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  result = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t TTRRemindersListHighlightTarget.init(item:includesChildren:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D105764(a1, a2, type metadata accessor for TTRRemindersListViewModel.Item);
  type metadata accessor for TTRRemindersListHighlightTarget(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListHighlightTarget.firstItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListHighlightTarget(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D10507C(v2, v6, type metadata accessor for TTRRemindersListHighlightTarget);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v9 = *v6;
    if (*(v9 + 16))
    {
      v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v11 = *(v10 - 8);
      sub_21D10507C(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), a1, type metadata accessor for TTRRemindersListViewModel.Item);

      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    else
    {

      v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    }
  }

  else
  {
    sub_21D105764(v6, a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }
}

uint64_t TTRRemindersListHighlightTarget.targetItems.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListHighlightTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D10507C(v1, v12, type metadata accessor for TTRRemindersListHighlightTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21D105764(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588B8);
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC08D00;
    v18 = v15 + v17;
    sub_21D10507C(v9, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v18 + *(v2 + 20)) = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21D105764(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588B8);
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC08D00;
    v16 = v15 + v14;
    sub_21D10507C(v9, v16, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v16 + *(v2 + 20)) = 1;
LABEL_5:
    sub_21D106B58(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    return v15;
  }

  v19 = *v12;
  v20 = *(v19 + 16);
  if (v20)
  {
    v28 = MEMORY[0x277D84F90];
    sub_21D18F10C(0, v20, 0);
    v15 = v28;
    v21 = *(v7 + 80);
    v27 = v19;
    v22 = v19 + ((v21 + 32) & ~v21);
    v23 = *(v7 + 72);
    do
    {
      sub_21D10507C(v22, v5, type metadata accessor for TTRRemindersListViewModel.Item);
      v5[*(v2 + 20)] = 0;
      v28 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21D18F10C(v24 > 1, v25 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v25 + 1;
      sub_21D105764(v5, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, type metadata accessor for TTRRemindersListHighlightTarget.TargetItem);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t TTRRemindersListHighlightTarget.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListHighlightTarget(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10507C(v1, v7, type metadata accessor for TTRRemindersListHighlightTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v11 = *(*v7 + 16);

      v14[1] = v11;
      v15 = sub_21DBFC5BC();
      v16 = v12;
      MEMORY[0x223D42AA0](0x736D65746920, 0xE600000000000000);
      return v15;
    }

    sub_21D105764(v7, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_21DBFBEEC();

    v15 = 0xD000000000000010;
    v16 = 0x800000021DC5F100;
    v9 = sub_21D25D250();
    MEMORY[0x223D42AA0](v9);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v10 = v15;
  }

  else
  {
    sub_21D105764(v7, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    v10 = sub_21D25D250();
  }

  sub_21D106B58(v4, type metadata accessor for TTRRemindersListViewModel.Item);
  return v10;
}

void *initializeBufferWithCopyOfBuffer for TTRRemindersListHighlightTarget(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      sub_21DBF8E0C();
LABEL_253:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 != 6)
          {
            if (v8 != 7)
            {
              if (v8 == 8)
              {
                goto LABEL_17;
              }

              goto LABEL_70;
            }

            v39 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(a2, 1, v39))
            {
              goto LABEL_69;
            }

            goto LABEL_125;
          }

          v33 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v34 = *(v33 - 8);
          if ((*(v34 + 48))(a2, 1, v33))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v35 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v56 = *(v33 + 20);
            v57 = sub_21DBF6C1C();
            v158 = *(*(v57 - 8) + 16);
            sub_21DBF8E0C();
            v158(a1 + v56, a2 + v56, v57);
            (*(v34 + 56))(a1, 0, 1, v33);
          }

          v58 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v59 = a1 + v58;
          v60 = a2 + v58;
          v61 = *(v60 + 1);
          if (!v61)
          {
            *v59 = *v60;
            *(v59 + 2) = *(v60 + 2);
            goto LABEL_252;
          }

          goto LABEL_118;
        }

        if (v8 != 4)
        {
          goto LABEL_43;
        }

        v36 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v37 = *(v20 + 48);
        v38 = v36;
        if (v37(a2 + v18, 1, v19))
        {
          goto LABEL_63;
        }

        v62 = swift_getEnumCaseMultiPayload();
        if (v62 > 4)
        {
          if (v62 <= 7)
          {
            if (v62 == 5 || v62 == 6)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }

          if (v62 != 8 && v62 != 9)
          {
            goto LABEL_250;
          }

          goto LABEL_219;
        }

        if (v62 <= 2)
        {
          if (v62 != 1)
          {
            if (v62 == 2)
            {
              goto LABEL_216;
            }

LABEL_250:
            memcpy(a1 + v18, a2 + v18, *(v20 + 64));
            goto LABEL_251;
          }

          goto LABEL_219;
        }

LABEL_216:
        v144 = sub_21DBF563C();
        (*(*(v144 - 8) + 16))(a1 + v18, a2 + v18, v144);
        swift_storeEnumTagMultiPayload();
LABEL_251:
        (*(v20 + 56))(a1 + v18, 0, 1, v19);
        goto LABEL_252;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v30 = *a2;
          *a1 = *a2;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          v31 = *(v20 + 48);
          v32 = v30;
          if (v31(a2 + v18, 1, v19))
          {
            goto LABEL_63;
          }

          v55 = swift_getEnumCaseMultiPayload();
          if (v55 > 4)
          {
            if (v55 <= 7)
            {
              if (v55 == 5 || v55 == 6)
              {
                goto LABEL_216;
              }

              goto LABEL_250;
            }

            if (v55 != 8 && v55 != 9)
            {
              goto LABEL_250;
            }

            goto LABEL_219;
          }

          if (v55 > 2)
          {
            goto LABEL_216;
          }

          if (v55 == 1)
          {
            goto LABEL_219;
          }

          if (v55 != 2)
          {
            goto LABEL_250;
          }
        }

        else
        {
          v17 = *a2;
          *a1 = *a2;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          v21 = *(v20 + 48);
          v22 = v17;
          if (v21(a2 + v18, 1, v19))
          {
            goto LABEL_63;
          }

          v54 = swift_getEnumCaseMultiPayload();
          if (v54 > 4)
          {
            if (v54 <= 7)
            {
              if (v54 == 5 || v54 == 6)
              {
                goto LABEL_216;
              }

              goto LABEL_250;
            }

            if (v54 != 8 && v54 != 9)
            {
              goto LABEL_250;
            }

            goto LABEL_219;
          }

          if (v54 > 2)
          {
            goto LABEL_216;
          }

          if (v54 == 1)
          {
            goto LABEL_219;
          }

          if (v54 != 2)
          {
            goto LABEL_250;
          }
        }

        goto LABEL_216;
      }

      if (v8)
      {
        if (v8 == 1)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 <= 4)
          {
            if (v14 > 2)
            {
LABEL_127:
              v73 = sub_21DBF563C();
              (*(*(v73 - 8) + 16))(a1, a2, v73);
              swift_storeEnumTagMultiPayload();
              goto LABEL_180;
            }

            if (v14 != 1)
            {
              if (v14 == 2)
              {
                goto LABEL_127;
              }

              goto LABEL_179;
            }

LABEL_130:
            v74 = *a2;
            *a1 = *a2;
            v75 = v74;
            swift_storeEnumTagMultiPayload();
            goto LABEL_180;
          }

          if (v14 > 7)
          {
            if (v14 == 8 || v14 == 9)
            {
              goto LABEL_130;
            }
          }

          else if (v14 == 5 || v14 == 6)
          {
            goto LABEL_127;
          }

LABEL_179:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_180:
          v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v86 = v85[5];
          v87 = a1 + v86;
          v88 = a2 + v86;
          v89 = *(a2 + v86 + 8);
          if (v89)
          {
            *v87 = *v88;
            *(v87 + 1) = v89;
            v90 = *(v88 + 2);
            v91 = *(v88 + 3);
            v92 = *(v88 + 4);
            v93 = *(v88 + 5);
            v94 = *(v88 + 6);
            v150 = *(v88 + 7);
            v160 = v88[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v90, v91, v92, v93, v94, v150, v160);
            *(v87 + 2) = v90;
            *(v87 + 3) = v91;
            *(v87 + 4) = v92;
            *(v87 + 5) = v93;
            *(v87 + 6) = v94;
            *(v87 + 7) = v150;
            v87[64] = v160;
            *(v87 + 65) = *(v88 + 65);
            v95 = v88[120];
            if (v95 == 255)
            {
              *(v87 + 72) = *(v88 + 72);
              *(v87 + 88) = *(v88 + 88);
              *(v87 + 104) = *(v88 + 104);
              v87[120] = v88[120];
            }

            else
            {
              v96 = *(v88 + 9);
              v97 = *(v88 + 12);
              v151 = *(v88 + 11);
              v161 = *(v88 + 10);
              v98 = *(v88 + 13);
              v99 = *(v88 + 14);
              v100 = v95 & 1;
              sub_21D0FB960(v96, v161, v151, v97, v98, v99, v95 & 1);
              *(v87 + 9) = v96;
              *(v87 + 10) = v161;
              *(v87 + 11) = v151;
              *(v87 + 12) = v97;
              *(v87 + 13) = v98;
              *(v87 + 14) = v99;
              v87[120] = v100;
            }

            v87[121] = v88[121];
            goto LABEL_200;
          }

LABEL_190:
          v114 = *(v88 + 5);
          *(v87 + 4) = *(v88 + 4);
          *(v87 + 5) = v114;
          *(v87 + 6) = *(v88 + 6);
          *(v87 + 106) = *(v88 + 106);
          v115 = *(v88 + 1);
          *v87 = *v88;
          *(v87 + 1) = v115;
          v116 = *(v88 + 3);
          *(v87 + 2) = *(v88 + 2);
          *(v87 + 3) = v116;
LABEL_200:
          *(a1 + v85[6]) = *(a2 + v85[6]);
          *(a1 + v85[7]) = *(a2 + v85[7]);
          *(a1 + v85[8]) = *(a2 + v85[8]);
          *(a1 + v85[9]) = *(a2 + v85[9]);
          *(a1 + v85[10]) = *(a2 + v85[10]);
          v130 = v85[11];
          v131 = *(a2 + v130);
          *(a1 + v130) = v131;
          v132 = v131;
          goto LABEL_252;
        }

LABEL_70:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        goto LABEL_253;
      }

      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 4)
      {
        if (v29 > 2)
        {
LABEL_131:
          v76 = sub_21DBF563C();
          (*(*(v76 - 8) + 16))(a1, a2, v76);
          swift_storeEnumTagMultiPayload();
          goto LABEL_187;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_131;
          }

          goto LABEL_186;
        }

LABEL_134:
        v77 = *a2;
        *a1 = *a2;
        v78 = v77;
        swift_storeEnumTagMultiPayload();
        goto LABEL_187;
      }

      if (v29 > 7)
      {
        if (v29 == 8 || v29 == 9)
        {
          goto LABEL_134;
        }
      }

      else if (v29 == 5 || v29 == 6)
      {
        goto LABEL_131;
      }

LABEL_186:
      memcpy(a1, a2, *(*(v28 - 8) + 64));
LABEL_187:
      v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v101 = v85[5];
      v87 = a1 + v101;
      v88 = a2 + v101;
      v102 = *(a2 + v101 + 8);
      if (v102)
      {
        *v87 = *v88;
        *(v87 + 1) = v102;
        v103 = *(v88 + 2);
        v104 = *(v88 + 3);
        v105 = *(v88 + 4);
        v106 = *(v88 + 5);
        v107 = *(v88 + 6);
        v152 = *(v88 + 7);
        v162 = v88[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v103, v104, v105, v106, v107, v152, v162);
        *(v87 + 2) = v103;
        *(v87 + 3) = v104;
        *(v87 + 4) = v105;
        *(v87 + 5) = v106;
        *(v87 + 6) = v107;
        *(v87 + 7) = v152;
        v87[64] = v162;
        *(v87 + 65) = *(v88 + 65);
        v108 = v88[120];
        if (v108 == 255)
        {
          *(v87 + 72) = *(v88 + 72);
          *(v87 + 88) = *(v88 + 88);
          *(v87 + 104) = *(v88 + 104);
          v87[120] = v88[120];
        }

        else
        {
          v109 = *(v88 + 9);
          v110 = *(v88 + 12);
          v153 = *(v88 + 11);
          v163 = *(v88 + 10);
          v111 = *(v88 + 13);
          v112 = *(v88 + 14);
          v113 = v108 & 1;
          sub_21D0FB960(v109, v163, v153, v110, v111, v112, v108 & 1);
          *(v87 + 9) = v109;
          *(v87 + 10) = v163;
          *(v87 + 11) = v153;
          *(v87 + 12) = v110;
          *(v87 + 13) = v111;
          *(v87 + 14) = v112;
          v87[120] = v113;
        }

        v87[121] = v88[121];
        goto LABEL_200;
      }

      goto LABEL_190;
    }

    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 != 6)
        {
          if (v10 != 7)
          {
            if (v10 == 8)
            {
LABEL_17:
              *a1 = *a2;
              v11 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v12 = sub_21DBF8D7C();
              (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
LABEL_252:
              swift_storeEnumTagMultiPayload();
              goto LABEL_253;
            }

            goto LABEL_70;
          }

          v39 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v40 = *(v39 - 8);
          if ((*(v40 + 48))(a2, 1, v39))
          {
LABEL_69:
            v53 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v53 - 8) + 64));
LABEL_126:
            v72 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v72 + 20)) = *(a2 + *(v72 + 20));
            goto LABEL_252;
          }

LABEL_125:
          v71 = sub_21DBF563C();
          (*(*(v71 - 8) + 16))(a1, a2, v71);
          *(a1 + *(v39 + 20)) = *(a2 + *(v39 + 20));
          (*(v40 + 56))(a1, 0, 1, v39);
          goto LABEL_126;
        }

        v47 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v48 = *(v47 - 8);
        if ((*(v48 + 48))(a2, 1, v47))
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v49 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v65 = *(v47 + 20);
          v66 = sub_21DBF6C1C();
          v159 = *(*(v66 - 8) + 16);
          sub_21DBF8E0C();
          v159(a1 + v65, a2 + v65, v66);
          (*(v48 + 56))(a1, 0, 1, v47);
        }

        v67 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v59 = a1 + v67;
        v60 = a2 + v67;
        v61 = *(v60 + 1);
        if (!v61)
        {
          *v59 = *v60;
          *(v59 + 2) = *(v60 + 2);
          goto LABEL_252;
        }

LABEL_118:
        *v59 = *v60;
        *(v59 + 1) = v61;
        v68 = *(v60 + 2);
        *(v59 + 2) = v68;
        sub_21DBF8E0C();
        v69 = v68;
        goto LABEL_252;
      }

      if (v10 != 4)
      {
LABEL_43:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v26 = a2[2];
        a1[2] = v26;
        v27 = v26;
        goto LABEL_252;
      }

      v50 = *a2;
      *a1 = *a2;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      v51 = *(v20 + 48);
      v52 = v50;
      if (v51(a2 + v18, 1, v19))
      {
LABEL_63:
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v18, a2 + v18, *(*(v46 - 8) + 64));
        goto LABEL_252;
      }

      v70 = swift_getEnumCaseMultiPayload();
      if (v70 > 4)
      {
        if (v70 <= 7)
        {
          if (v70 == 5 || v70 == 6)
          {
            goto LABEL_216;
          }

          goto LABEL_250;
        }

        if (v70 != 8 && v70 != 9)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (v70 > 2)
        {
          goto LABEL_216;
        }

        if (v70 != 1)
        {
          if (v70 == 2)
          {
            goto LABEL_216;
          }

          goto LABEL_250;
        }
      }

      goto LABEL_219;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v43 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v44 = *(v20 + 48);
        v45 = v43;
        if (v44(a2 + v18, 1, v19))
        {
          goto LABEL_63;
        }

        v64 = swift_getEnumCaseMultiPayload();
        if (v64 > 4)
        {
          if (v64 <= 7)
          {
            if (v64 == 5 || v64 == 6)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }

          if (v64 != 8 && v64 != 9)
          {
            goto LABEL_250;
          }
        }

        else
        {
          if (v64 > 2)
          {
            goto LABEL_216;
          }

          if (v64 != 1)
          {
            if (v64 == 2)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }
        }
      }

      else
      {
        v23 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v24 = *(v20 + 48);
        v25 = v23;
        if (v24(a2 + v18, 1, v19))
        {
          goto LABEL_63;
        }

        v63 = swift_getEnumCaseMultiPayload();
        if (v63 > 4)
        {
          if (v63 <= 7)
          {
            if (v63 == 5 || v63 == 6)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }

          if (v63 != 8 && v63 != 9)
          {
            goto LABEL_250;
          }
        }

        else
        {
          if (v63 > 2)
          {
            goto LABEL_216;
          }

          if (v63 != 1)
          {
            if (v63 == 2)
            {
              goto LABEL_216;
            }

            goto LABEL_250;
          }
        }
      }

LABEL_219:
      v145 = *(a2 + v18);
      *(a1 + v18) = v145;
      v146 = v145;
      swift_storeEnumTagMultiPayload();
      goto LABEL_251;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_70;
      }

      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_135:
          v79 = sub_21DBF563C();
          (*(*(v79 - 8) + 16))(a1, a2, v79);
          swift_storeEnumTagMultiPayload();
          goto LABEL_194;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_135;
          }

          goto LABEL_193;
        }

LABEL_138:
        v80 = *a2;
        *a1 = *a2;
        v81 = v80;
        swift_storeEnumTagMultiPayload();
        goto LABEL_194;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_138;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_135;
      }

LABEL_193:
      memcpy(a1, a2, *(*(v15 - 8) + 64));
LABEL_194:
      v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v117 = v85[5];
      v87 = a1 + v117;
      v88 = a2 + v117;
      v118 = *(a2 + v117 + 8);
      if (v118)
      {
        *v87 = *v88;
        *(v87 + 1) = v118;
        v119 = *(v88 + 2);
        v120 = *(v88 + 3);
        v121 = *(v88 + 4);
        v122 = *(v88 + 5);
        v123 = *(v88 + 6);
        v154 = *(v88 + 7);
        v164 = v88[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v119, v120, v121, v122, v123, v154, v164);
        *(v87 + 2) = v119;
        *(v87 + 3) = v120;
        *(v87 + 4) = v121;
        *(v87 + 5) = v122;
        *(v87 + 6) = v123;
        *(v87 + 7) = v154;
        v87[64] = v164;
        *(v87 + 65) = *(v88 + 65);
        v124 = v88[120];
        if (v124 == 255)
        {
          *(v87 + 72) = *(v88 + 72);
          *(v87 + 88) = *(v88 + 88);
          *(v87 + 104) = *(v88 + 104);
          v87[120] = v88[120];
        }

        else
        {
          v125 = *(v88 + 9);
          v126 = *(v88 + 12);
          v155 = *(v88 + 11);
          v165 = *(v88 + 10);
          v127 = *(v88 + 13);
          v128 = *(v88 + 14);
          v129 = v124 & 1;
          sub_21D0FB960(v125, v165, v155, v126, v127, v128, v124 & 1);
          *(v87 + 9) = v125;
          *(v87 + 10) = v165;
          *(v87 + 11) = v155;
          *(v87 + 12) = v126;
          *(v87 + 13) = v127;
          *(v87 + 14) = v128;
          v87[120] = v129;
        }

        v87[121] = v88[121];
        goto LABEL_200;
      }

      goto LABEL_190;
    }

    v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v42 = swift_getEnumCaseMultiPayload();
    if (v42 <= 4)
    {
      if (v42 > 2)
      {
LABEL_139:
        v82 = sub_21DBF563C();
        (*(*(v82 - 8) + 16))(a1, a2, v82);
        swift_storeEnumTagMultiPayload();
        goto LABEL_202;
      }

      if (v42 != 1)
      {
        if (v42 == 2)
        {
          goto LABEL_139;
        }

        goto LABEL_201;
      }

LABEL_142:
      v83 = *a2;
      *a1 = *a2;
      v84 = v83;
      swift_storeEnumTagMultiPayload();
      goto LABEL_202;
    }

    if (v42 > 7)
    {
      if (v42 == 8 || v42 == 9)
      {
        goto LABEL_142;
      }
    }

    else if (v42 == 5 || v42 == 6)
    {
      goto LABEL_139;
    }

LABEL_201:
    memcpy(a1, a2, *(*(v41 - 8) + 64));
LABEL_202:
    v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v133 = v85[5];
    v87 = a1 + v133;
    v88 = a2 + v133;
    v134 = *(a2 + v133 + 8);
    if (v134)
    {
      *v87 = *v88;
      *(v87 + 1) = v134;
      v135 = *(v88 + 2);
      v136 = *(v88 + 3);
      v137 = *(v88 + 4);
      v138 = *(v88 + 5);
      v148 = *(v88 + 6);
      v166 = *(v88 + 7);
      v156 = v88[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v135, v136, v137, v138, v148, v166, v156);
      *(v87 + 2) = v135;
      *(v87 + 3) = v136;
      *(v87 + 4) = v137;
      *(v87 + 5) = v138;
      *(v87 + 6) = v148;
      *(v87 + 7) = v166;
      v87[64] = v156;
      *(v87 + 65) = *(v88 + 65);
      v139 = v88[120];
      if (v139 == 255)
      {
        *(v87 + 72) = *(v88 + 72);
        *(v87 + 88) = *(v88 + 88);
        *(v87 + 104) = *(v88 + 104);
        v87[120] = v88[120];
      }

      else
      {
        v157 = *(v88 + 10);
        v167 = *(v88 + 9);
        v140 = *(v88 + 12);
        v149 = *(v88 + 11);
        v141 = *(v88 + 13);
        v142 = *(v88 + 14);
        v143 = v139 & 1;
        sub_21D0FB960(v167, v157, v149, v140, v141, v142, v139 & 1);
        *(v87 + 9) = v167;
        *(v87 + 10) = v157;
        *(v87 + 11) = v149;
        *(v87 + 12) = v140;
        *(v87 + 13) = v141;
        *(v87 + 14) = v142;
        v87[120] = v143;
      }

      v87[121] = v88[121];
      goto LABEL_200;
    }

    goto LABEL_190;
  }

  v9 = *a2;
  *a1 = *a2;
  a1 = (v9 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRRemindersListHighlightTarget(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3 = swift_getEnumCaseMultiPayload();
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      goto LABEL_22;
    }

    if (v3 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 4)
    {
      if (v8 <= 7)
      {
        if (v8 != 5 && v8 != 6)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      if (v8 != 8 && v8 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v8 > 2)
      {
        goto LABEL_42;
      }

      if (v8 != 1)
      {
        if (v8 != 2)
        {
LABEL_46:
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v20 = a1 + *(v19 + 20);
          if (*(v20 + 8))
          {

            sub_21D179EF0(*(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64));
            v21 = *(v20 + 120);
            if (v21 != 255)
            {
              sub_21D1078C0(*(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), v21 & 1);
            }
          }

          v9 = *(a1 + *(v19 + 44));
          goto LABEL_50;
        }

LABEL_42:
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 8))(a1, v18);
        goto LABEL_46;
      }
    }

    goto LABEL_46;
  }

  if (v3 <= 5)
  {
    if (v3 != 4)
    {
      v9 = *(a1 + 16);
LABEL_50:

      return;
    }

LABEL_22:

    v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v11 - 8) + 48))(a1 + v10, 1, v11))
    {
      return;
    }

    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 <= 7)
      {
        if (v12 != 5 && v12 != 6)
        {
          return;
        }

        goto LABEL_54;
      }

      if (v12 != 8 && v12 != 9)
      {
        return;
      }
    }

    else
    {
      if (v12 > 2)
      {
LABEL_54:
        v5 = sub_21DBF563C();
        v6 = *(*(v5 - 8) + 8);
        v7 = a1 + v10;
LABEL_55:

        v6(v7, v5);
        return;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
          return;
        }

        goto LABEL_54;
      }
    }

    v9 = *(a1 + v10);
    goto LABEL_50;
  }

  if (v3 != 6)
  {
    if (v3 == 7)
    {
      v17 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v17 - 8) + 48))(a1, 1, v17))
      {
        return;
      }

      v22 = sub_21DBF563C();
      v6 = *(*(v22 - 8) + 8);
      v5 = v22;
      v7 = a1;
    }

    else
    {
      if (v3 != 8)
      {
        return;
      }

      v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v5 = sub_21DBF8D7C();
      v6 = *(*(v5 - 8) + 8);
      v7 = a1 + v4;
    }

    goto LABEL_55;
  }

  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v13 - 8) + 48))(a1, 1, v13))
  {

    v14 = *(v13 + 20);
    v15 = sub_21DBF6C1C();
    (*(*(v15 - 8) + 8))(a1 + v14, v15);
  }

  v16 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v16 + 8))
  {

    v9 = *(v16 + 16);
    goto LABEL_50;
  }
}

void *initializeWithCopy for TTRRemindersListHighlightTarget(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v6 = swift_getEnumCaseMultiPayload();
      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 != 6)
          {
            if (v6 != 7)
            {
              if (v6 == 8)
              {
                goto LABEL_15;
              }

              goto LABEL_68;
            }

            v36 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v37 = *(v36 - 8);
            if ((*(v37 + 48))(a2, 1, v36))
            {
              goto LABEL_67;
            }

            goto LABEL_123;
          }

          v30 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(a2, 1, v30))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v32 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v53 = *(v30 + 20);
            v54 = sub_21DBF6C1C();
            v163 = *(*(v54 - 8) + 16);
            sub_21DBF8E0C();
            v163(a1 + v53, a2 + v53, v54);
            (*(v31 + 56))(a1, 0, 1, v30);
          }

          v55 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v56 = a1 + v55;
          v57 = a2 + v55;
          v58 = *(v57 + 1);
          if (!v58)
          {
            *v56 = *v57;
            *(v56 + 2) = *(v57 + 2);
            goto LABEL_250;
          }

          goto LABEL_116;
        }

        if (v6 != 4)
        {
          goto LABEL_41;
        }

        v33 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v34 = *(v17 + 48);
        v35 = v33;
        if (v34(a2 + v15, 1, v16))
        {
          goto LABEL_61;
        }

        v59 = swift_getEnumCaseMultiPayload();
        if (v59 > 4)
        {
          if (v59 <= 7)
          {
            if (v59 == 5 || v59 == 6)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }

          if (v59 != 8 && v59 != 9)
          {
            goto LABEL_248;
          }

          goto LABEL_217;
        }

        if (v59 <= 2)
        {
          if (v59 != 1)
          {
            if (v59 == 2)
            {
              goto LABEL_214;
            }

LABEL_248:
            memcpy(a1 + v15, a2 + v15, *(v17 + 64));
            goto LABEL_249;
          }

          goto LABEL_217;
        }

LABEL_214:
        v151 = sub_21DBF563C();
        (*(*(v151 - 8) + 16))(a1 + v15, a2 + v15, v151);
        swift_storeEnumTagMultiPayload();
LABEL_249:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_250;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v27 = *a2;
          *a1 = *a2;
          v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v17 = *(v16 - 8);
          v28 = *(v17 + 48);
          v29 = v27;
          if (v28(a2 + v15, 1, v16))
          {
            goto LABEL_61;
          }

          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_214;
              }

              goto LABEL_248;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_248;
            }

            goto LABEL_217;
          }

          if (v52 > 2)
          {
            goto LABEL_214;
          }

          if (v52 == 1)
          {
            goto LABEL_217;
          }

          if (v52 != 2)
          {
            goto LABEL_248;
          }
        }

        else
        {
          v14 = *a2;
          *a1 = *a2;
          v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v17 = *(v16 - 8);
          v18 = *(v17 + 48);
          v19 = v14;
          if (v18(a2 + v15, 1, v16))
          {
            goto LABEL_61;
          }

          v51 = swift_getEnumCaseMultiPayload();
          if (v51 > 4)
          {
            if (v51 <= 7)
            {
              if (v51 == 5 || v51 == 6)
              {
                goto LABEL_214;
              }

              goto LABEL_248;
            }

            if (v51 != 8 && v51 != 9)
            {
              goto LABEL_248;
            }

            goto LABEL_217;
          }

          if (v51 > 2)
          {
            goto LABEL_214;
          }

          if (v51 == 1)
          {
            goto LABEL_217;
          }

          if (v51 != 2)
          {
            goto LABEL_248;
          }
        }

        goto LABEL_214;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v11 = swift_getEnumCaseMultiPayload();
          if (v11 <= 4)
          {
            if (v11 > 2)
            {
LABEL_125:
              v70 = sub_21DBF563C();
              (*(*(v70 - 8) + 16))(a1, a2, v70);
              swift_storeEnumTagMultiPayload();
              goto LABEL_178;
            }

            if (v11 != 1)
            {
              if (v11 == 2)
              {
                goto LABEL_125;
              }

              goto LABEL_177;
            }

LABEL_128:
            v71 = *a2;
            *a1 = *a2;
            v72 = v71;
            swift_storeEnumTagMultiPayload();
            goto LABEL_178;
          }

          if (v11 > 7)
          {
            if (v11 == 8 || v11 == 9)
            {
              goto LABEL_128;
            }
          }

          else if (v11 == 5 || v11 == 6)
          {
            goto LABEL_125;
          }

LABEL_177:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_178:
          v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v83 = v82[5];
          v84 = a1 + v83;
          v85 = a2 + v83;
          v86 = *(a2 + v83 + 8);
          if (v86)
          {
            v165 = a1;
            *v84 = *v85;
            *(v84 + 1) = v86;
            v87 = *(v85 + 2);
            v88 = *(v85 + 3);
            v89 = *(v85 + 4);
            v90 = *(v85 + 5);
            v92 = *(v85 + 6);
            v91 = *(v85 + 7);
            v155 = v85[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v87, v88, v89, v90, v92, v91, v155);
            *(v84 + 2) = v87;
            *(v84 + 3) = v88;
            *(v84 + 4) = v89;
            *(v84 + 5) = v90;
            *(v84 + 6) = v92;
            *(v84 + 7) = v91;
            v84[64] = v155;
            *(v84 + 65) = *(v85 + 65);
            v93 = v85[120];
            if (v93 == 255)
            {
              *(v84 + 72) = *(v85 + 72);
              *(v84 + 88) = *(v85 + 88);
              *(v84 + 104) = *(v85 + 104);
              v84[120] = v85[120];
            }

            else
            {
              v94 = *(v85 + 9);
              v156 = *(v85 + 10);
              v95 = *(v85 + 11);
              v96 = *(v85 + 12);
              v97 = *(v85 + 13);
              v98 = *(v85 + 14);
              v99 = v93 & 1;
              sub_21D0FB960(v94, v156, v95, v96, v97, v98, v93 & 1);
              *(v84 + 9) = v94;
              *(v84 + 10) = v156;
              *(v84 + 11) = v95;
              *(v84 + 12) = v96;
              *(v84 + 13) = v97;
              *(v84 + 14) = v98;
              v84[120] = v99;
            }

            a1 = v165;
            v84[121] = v85[121];
            goto LABEL_198;
          }

LABEL_188:
          v115 = *(v85 + 5);
          *(v84 + 4) = *(v85 + 4);
          *(v84 + 5) = v115;
          *(v84 + 6) = *(v85 + 6);
          *(v84 + 106) = *(v85 + 106);
          v116 = *(v85 + 1);
          *v84 = *v85;
          *(v84 + 1) = v116;
          v117 = *(v85 + 3);
          *(v84 + 2) = *(v85 + 2);
          *(v84 + 3) = v117;
LABEL_198:
          *(a1 + v82[6]) = *(a2 + v82[6]);
          *(a1 + v82[7]) = *(a2 + v82[7]);
          *(a1 + v82[8]) = *(a2 + v82[8]);
          *(a1 + v82[9]) = *(a2 + v82[9]);
          *(a1 + v82[10]) = *(a2 + v82[10]);
          v133 = v82[11];
          v134 = *(a2 + v133);
          *(a1 + v133) = v134;
          v135 = v134;
          goto LABEL_250;
        }

LABEL_68:
        memcpy(a1, a2, *(*(v5 - 8) + 64));
        goto LABEL_251;
      }

      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 4)
      {
        if (v26 > 2)
        {
LABEL_129:
          v73 = sub_21DBF563C();
          (*(*(v73 - 8) + 16))(a1, a2, v73);
          swift_storeEnumTagMultiPayload();
          goto LABEL_185;
        }

        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_129;
          }

          goto LABEL_184;
        }

LABEL_132:
        v74 = *a2;
        *a1 = *a2;
        v75 = v74;
        swift_storeEnumTagMultiPayload();
        goto LABEL_185;
      }

      if (v26 > 7)
      {
        if (v26 == 8 || v26 == 9)
        {
          goto LABEL_132;
        }
      }

      else if (v26 == 5 || v26 == 6)
      {
        goto LABEL_129;
      }

LABEL_184:
      memcpy(a1, a2, *(*(v25 - 8) + 64));
LABEL_185:
      v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v100 = v82[5];
      v84 = a1 + v100;
      v85 = a2 + v100;
      v101 = *(a2 + v100 + 8);
      if (v101)
      {
        v166 = a1;
        *v84 = *v85;
        *(v84 + 1) = v101;
        v102 = *(v85 + 2);
        v103 = *(v85 + 3);
        v104 = *(v85 + 4);
        v105 = *(v85 + 5);
        v107 = *(v85 + 6);
        v106 = *(v85 + 7);
        v157 = v85[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v102, v103, v104, v105, v107, v106, v157);
        *(v84 + 2) = v102;
        *(v84 + 3) = v103;
        *(v84 + 4) = v104;
        *(v84 + 5) = v105;
        *(v84 + 6) = v107;
        *(v84 + 7) = v106;
        v84[64] = v157;
        *(v84 + 65) = *(v85 + 65);
        v108 = v85[120];
        if (v108 == 255)
        {
          *(v84 + 72) = *(v85 + 72);
          *(v84 + 88) = *(v85 + 88);
          *(v84 + 104) = *(v85 + 104);
          v84[120] = v85[120];
        }

        else
        {
          v109 = *(v85 + 9);
          v158 = *(v85 + 10);
          v110 = *(v85 + 11);
          v111 = *(v85 + 12);
          v112 = *(v85 + 13);
          v113 = *(v85 + 14);
          v114 = v108 & 1;
          sub_21D0FB960(v109, v158, v110, v111, v112, v113, v108 & 1);
          *(v84 + 9) = v109;
          *(v84 + 10) = v158;
          *(v84 + 11) = v110;
          *(v84 + 12) = v111;
          *(v84 + 13) = v112;
          *(v84 + 14) = v113;
          v84[120] = v114;
        }

        a1 = v166;
        v84[121] = v85[121];
        goto LABEL_198;
      }

      goto LABEL_188;
    }

    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 3)
    {
      if (v7 > 5)
      {
        if (v7 != 6)
        {
          if (v7 != 7)
          {
            if (v7 == 8)
            {
LABEL_15:
              *a1 = *a2;
              v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v9 = sub_21DBF8D7C();
              (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_250:
              swift_storeEnumTagMultiPayload();
              goto LABEL_251;
            }

            goto LABEL_68;
          }

          v36 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v37 = *(v36 - 8);
          if ((*(v37 + 48))(a2, 1, v36))
          {
LABEL_67:
            v50 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v50 - 8) + 64));
LABEL_124:
            v69 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v69 + 20)) = *(a2 + *(v69 + 20));
            goto LABEL_250;
          }

LABEL_123:
          v68 = sub_21DBF563C();
          (*(*(v68 - 8) + 16))(a1, a2, v68);
          *(a1 + *(v36 + 20)) = *(a2 + *(v36 + 20));
          (*(v37 + 56))(a1, 0, 1, v36);
          goto LABEL_124;
        }

        v44 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(a2, 1, v44))
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v46 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v62 = *(v44 + 20);
          v63 = sub_21DBF6C1C();
          v164 = *(*(v63 - 8) + 16);
          sub_21DBF8E0C();
          v164(a1 + v62, a2 + v62, v63);
          (*(v45 + 56))(a1, 0, 1, v44);
        }

        v64 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v56 = a1 + v64;
        v57 = a2 + v64;
        v58 = *(v57 + 1);
        if (!v58)
        {
          *v56 = *v57;
          *(v56 + 2) = *(v57 + 2);
          goto LABEL_250;
        }

LABEL_116:
        *v56 = *v57;
        *(v56 + 1) = v58;
        v65 = *(v57 + 2);
        *(v56 + 2) = v65;
        sub_21DBF8E0C();
        v66 = v65;
        goto LABEL_250;
      }

      if (v7 != 4)
      {
LABEL_41:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v23 = a2[2];
        a1[2] = v23;
        v24 = v23;
        goto LABEL_250;
      }

      v47 = *a2;
      *a1 = *a2;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v48 = *(v17 + 48);
      v49 = v47;
      if (v48(a2 + v15, 1, v16))
      {
LABEL_61:
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v15, a2 + v15, *(*(v43 - 8) + 64));
        goto LABEL_250;
      }

      v67 = swift_getEnumCaseMultiPayload();
      if (v67 > 4)
      {
        if (v67 <= 7)
        {
          if (v67 == 5 || v67 == 6)
          {
            goto LABEL_214;
          }

          goto LABEL_248;
        }

        if (v67 != 8 && v67 != 9)
        {
          goto LABEL_248;
        }
      }

      else
      {
        if (v67 > 2)
        {
          goto LABEL_214;
        }

        if (v67 != 1)
        {
          if (v67 == 2)
          {
            goto LABEL_214;
          }

          goto LABEL_248;
        }
      }

      goto LABEL_217;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v40 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v41 = *(v17 + 48);
        v42 = v40;
        if (v41(a2 + v15, 1, v16))
        {
          goto LABEL_61;
        }

        v61 = swift_getEnumCaseMultiPayload();
        if (v61 > 4)
        {
          if (v61 <= 7)
          {
            if (v61 == 5 || v61 == 6)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }

          if (v61 != 8 && v61 != 9)
          {
            goto LABEL_248;
          }
        }

        else
        {
          if (v61 > 2)
          {
            goto LABEL_214;
          }

          if (v61 != 1)
          {
            if (v61 == 2)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }
        }
      }

      else
      {
        v20 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v21 = *(v17 + 48);
        v22 = v20;
        if (v21(a2 + v15, 1, v16))
        {
          goto LABEL_61;
        }

        v60 = swift_getEnumCaseMultiPayload();
        if (v60 > 4)
        {
          if (v60 <= 7)
          {
            if (v60 == 5 || v60 == 6)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }

          if (v60 != 8 && v60 != 9)
          {
            goto LABEL_248;
          }
        }

        else
        {
          if (v60 > 2)
          {
            goto LABEL_214;
          }

          if (v60 != 1)
          {
            if (v60 == 2)
            {
              goto LABEL_214;
            }

            goto LABEL_248;
          }
        }
      }

LABEL_217:
      v152 = *(a2 + v15);
      *(a1 + v15) = v152;
      v153 = v152;
      swift_storeEnumTagMultiPayload();
      goto LABEL_249;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_68;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_133:
          v76 = sub_21DBF563C();
          (*(*(v76 - 8) + 16))(a1, a2, v76);
          swift_storeEnumTagMultiPayload();
          goto LABEL_192;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_133;
          }

          goto LABEL_191;
        }

LABEL_136:
        v77 = *a2;
        *a1 = *a2;
        v78 = v77;
        swift_storeEnumTagMultiPayload();
        goto LABEL_192;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_136;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_133;
      }

LABEL_191:
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_192:
      v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v118 = v82[5];
      v84 = a1 + v118;
      v85 = a2 + v118;
      v119 = *(a2 + v118 + 8);
      if (v119)
      {
        v167 = a1;
        *v84 = *v85;
        *(v84 + 1) = v119;
        v120 = *(v85 + 2);
        v121 = *(v85 + 3);
        v122 = *(v85 + 4);
        v123 = *(v85 + 5);
        v125 = *(v85 + 6);
        v124 = *(v85 + 7);
        v159 = v85[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v120, v121, v122, v123, v125, v124, v159);
        *(v84 + 2) = v120;
        *(v84 + 3) = v121;
        *(v84 + 4) = v122;
        *(v84 + 5) = v123;
        *(v84 + 6) = v125;
        *(v84 + 7) = v124;
        v84[64] = v159;
        *(v84 + 65) = *(v85 + 65);
        v126 = v85[120];
        if (v126 == 255)
        {
          *(v84 + 72) = *(v85 + 72);
          *(v84 + 88) = *(v85 + 88);
          *(v84 + 104) = *(v85 + 104);
          v84[120] = v85[120];
        }

        else
        {
          v127 = *(v85 + 9);
          v160 = *(v85 + 10);
          v128 = *(v85 + 11);
          v129 = *(v85 + 12);
          v130 = *(v85 + 13);
          v131 = *(v85 + 14);
          v132 = v126 & 1;
          sub_21D0FB960(v127, v160, v128, v129, v130, v131, v126 & 1);
          *(v84 + 9) = v127;
          *(v84 + 10) = v160;
          *(v84 + 11) = v128;
          *(v84 + 12) = v129;
          *(v84 + 13) = v130;
          *(v84 + 14) = v131;
          v84[120] = v132;
        }

        a1 = v167;
        v84[121] = v85[121];
        goto LABEL_198;
      }

      goto LABEL_188;
    }

    v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v39 = swift_getEnumCaseMultiPayload();
    if (v39 <= 4)
    {
      if (v39 > 2)
      {
LABEL_137:
        v79 = sub_21DBF563C();
        (*(*(v79 - 8) + 16))(a1, a2, v79);
        swift_storeEnumTagMultiPayload();
        goto LABEL_200;
      }

      if (v39 != 1)
      {
        if (v39 == 2)
        {
          goto LABEL_137;
        }

        goto LABEL_199;
      }

LABEL_140:
      v80 = *a2;
      *a1 = *a2;
      v81 = v80;
      swift_storeEnumTagMultiPayload();
      goto LABEL_200;
    }

    if (v39 > 7)
    {
      if (v39 == 8 || v39 == 9)
      {
        goto LABEL_140;
      }
    }

    else if (v39 == 5 || v39 == 6)
    {
      goto LABEL_137;
    }

LABEL_199:
    memcpy(a1, a2, *(*(v38 - 8) + 64));
LABEL_200:
    v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v136 = v82[5];
    v84 = a1 + v136;
    v85 = a2 + v136;
    v137 = *(a2 + v136 + 8);
    if (v137)
    {
      v168 = a1;
      *v84 = *v85;
      *(v84 + 1) = v137;
      v138 = *(v85 + 2);
      v139 = *(v85 + 3);
      v140 = *(v85 + 4);
      v141 = *(v85 + 5);
      v142 = *(v85 + 6);
      v143 = *(v85 + 7);
      v161 = v85[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v138, v139, v140, v141, v142, v143, v161);
      *(v84 + 2) = v138;
      *(v84 + 3) = v139;
      *(v84 + 4) = v140;
      *(v84 + 5) = v141;
      *(v84 + 6) = v142;
      *(v84 + 7) = v143;
      v84[64] = v161;
      *(v84 + 65) = *(v85 + 65);
      v144 = v85[120];
      if (v144 == 255)
      {
        *(v84 + 72) = *(v85 + 72);
        *(v84 + 88) = *(v85 + 88);
        *(v84 + 104) = *(v85 + 104);
        v84[120] = v85[120];
      }

      else
      {
        v145 = *(v85 + 9);
        v162 = *(v85 + 10);
        v146 = *(v85 + 11);
        v147 = *(v85 + 12);
        v148 = *(v85 + 13);
        v149 = *(v85 + 14);
        v150 = v144 & 1;
        sub_21D0FB960(v145, v162, v146, v147, v148, v149, v144 & 1);
        *(v84 + 9) = v145;
        *(v84 + 10) = v162;
        *(v84 + 11) = v146;
        *(v84 + 12) = v147;
        *(v84 + 13) = v148;
        *(v84 + 14) = v149;
        v84[120] = v150;
      }

      a1 = v168;
      v84[121] = v85[121];
      goto LABEL_198;
    }

    goto LABEL_188;
  }

  *a1 = *a2;
  sub_21DBF8E0C();
LABEL_251:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TTRRemindersListHighlightTarget(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_21D106B58(a1, type metadata accessor for TTRRemindersListHighlightTarget);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      sub_21DBF8E0C();
LABEL_10:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v6 = swift_getEnumCaseMultiPayload();
      if (v6 > 3)
      {
        if (v6 <= 5)
        {
          if (v6 == 4)
          {
            v7 = *a2;
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v10 = *(v9 - 8);
            v11 = *(v10 + 48);
            v12 = v7;
            if (v11(&a2[v8], 1, v9))
            {
LABEL_8:
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
              memcpy(&a1[v8], &a2[v8], *(*(v13 - 8) + 64));
LABEL_193:
              swift_storeEnumTagMultiPayload();
              goto LABEL_10;
            }

            v63 = swift_getEnumCaseMultiPayload();
            v64 = v9;
            v65 = v8;
            if (v63 <= 4)
            {
              if (v63 > 2)
              {
                goto LABEL_129;
              }

LABEL_96:
              if (v63 != 1)
              {
                if (v63 == 2)
                {
LABEL_129:
                  v81 = sub_21DBF563C();
                  (*(*(v81 - 8) + 16))(&a1[v65], &a2[v65], v81);
                  swift_storeEnumTagMultiPayload();
LABEL_192:
                  (*(v10 + 56))(&a1[v65], 0, 1, v64);
                  goto LABEL_193;
                }

LABEL_191:
                memcpy(&a1[v65], &a2[v65], *(v10 + 64));
                goto LABEL_192;
              }

LABEL_137:
              v85 = *&a2[v65];
              *&a1[v65] = v85;
              v86 = v85;
              swift_storeEnumTagMultiPayload();
              goto LABEL_192;
            }

            if (v63 <= 7)
            {
              goto LABEL_127;
            }

            goto LABEL_135;
          }

LABEL_38:
          *a1 = *a2;
          a1[8] = a2[8];
          a1[9] = a2[9];
          a1[10] = a2[10];
          v28 = *(a2 + 2);
          *(a1 + 2) = v28;
          v29 = v28;
          swift_storeEnumTagMultiPayload();
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      if (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
            goto LABEL_45;
          }

          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v18 = swift_getEnumCaseMultiPayload();
          if (v18 <= 4)
          {
            if (v18 > 2)
            {
LABEL_106:
              v66 = sub_21DBF563C();
              (*(*(v66 - 8) + 16))(a1, a2, v66);
              swift_storeEnumTagMultiPayload();
              goto LABEL_151;
            }

            if (v18 != 1)
            {
              if (v18 == 2)
              {
                goto LABEL_106;
              }

              goto LABEL_150;
            }

LABEL_109:
            v67 = *a2;
            *a1 = *a2;
            v68 = v67;
            swift_storeEnumTagMultiPayload();
            goto LABEL_151;
          }

          if (v18 > 7)
          {
            if (v18 == 8 || v18 == 9)
            {
              goto LABEL_109;
            }
          }

          else if (v18 == 5 || v18 == 6)
          {
            goto LABEL_106;
          }

LABEL_150:
          memcpy(a1, a2, *(*(v17 - 8) + 64));
LABEL_151:
          v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v88 = v87[5];
          v89 = &a1[v88];
          v90 = &a2[v88];
          if (!*&a2[v88 + 8])
          {
            goto LABEL_167;
          }

          goto LABEL_163;
        }

        v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v42 = swift_getEnumCaseMultiPayload();
        if (v42 > 4)
        {
          if (v42 <= 7)
          {
            if (v42 == 5 || v42 == 6)
            {
              goto LABEL_110;
            }

            goto LABEL_153;
          }

          if (v42 != 8 && v42 != 9)
          {
            goto LABEL_153;
          }
        }

        else
        {
          if (v42 > 2)
          {
LABEL_110:
            v69 = sub_21DBF563C();
            (*(*(v69 - 8) + 16))(a1, a2, v69);
            swift_storeEnumTagMultiPayload();
LABEL_154:
            v91 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v92 = v91[5];
            v93 = &a1[v92];
            v94 = &a2[v92];
            if (*&a2[v92 + 8])
            {
              *v93 = *v94;
              *(v93 + 1) = *(v94 + 1);
              v95 = *(v94 + 2);
              v96 = *(v94 + 3);
              v97 = *(v94 + 4);
              v98 = *(v94 + 5);
              v99 = *(v94 + 6);
              v166 = *(v94 + 7);
              v173 = v94[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v95, v96, v97, v98, v99, v166, v173);
              *(v93 + 2) = v95;
              *(v93 + 3) = v96;
              *(v93 + 4) = v97;
              *(v93 + 5) = v98;
              *(v93 + 6) = v99;
              *(v93 + 7) = v166;
              v93[64] = v173;
              v93[65] = v94[65];
              v93[66] = v94[66];
              v93[67] = v94[67];
              v93[68] = v94[68];
              v100 = v94[120];
              if (v100 == 255)
              {
                v112 = *(v94 + 72);
                v113 = *(v94 + 88);
                v114 = *(v94 + 104);
                v93[120] = v94[120];
                *(v93 + 104) = v114;
                *(v93 + 88) = v113;
                *(v93 + 72) = v112;
              }

              else
              {
                v167 = *(v94 + 10);
                v174 = *(v94 + 9);
                v101 = *(v94 + 11);
                v102 = *(v94 + 12);
                v103 = *(v94 + 13);
                v104 = *(v94 + 14);
                v105 = v100 & 1;
                sub_21D0FB960(v174, v167, v101, v102, v103, v104, v100 & 1);
                *(v93 + 9) = v174;
                *(v93 + 10) = v167;
                *(v93 + 11) = v101;
                *(v93 + 12) = v102;
                *(v93 + 13) = v103;
                *(v93 + 14) = v104;
                v93[120] = v105;
              }

              v93[121] = v94[121];
            }

            else
            {
              v106 = *v94;
              v107 = *(v94 + 1);
              v108 = *(v94 + 3);
              *(v93 + 2) = *(v94 + 2);
              *(v93 + 3) = v108;
              *v93 = v106;
              *(v93 + 1) = v107;
              v109 = *(v94 + 4);
              v110 = *(v94 + 5);
              v111 = *(v94 + 6);
              *(v93 + 106) = *(v94 + 106);
              *(v93 + 5) = v110;
              *(v93 + 6) = v111;
              *(v93 + 4) = v109;
            }

            a1[v91[6]] = a2[v91[6]];
            a1[v91[7]] = a2[v91[7]];
            a1[v91[8]] = a2[v91[8]];
            a1[v91[9]] = a2[v91[9]];
            a1[v91[10]] = a2[v91[10]];
            v115 = v91[11];
LABEL_177:
            v164 = *&a2[v115];
            *&a1[v115] = v164;
            v165 = v164;
            swift_storeEnumTagMultiPayload();
            goto LABEL_10;
          }

          if (v42 != 1)
          {
            if (v42 == 2)
            {
              goto LABEL_110;
            }

LABEL_153:
            memcpy(a1, a2, *(*(v41 - 8) + 64));
            goto LABEL_154;
          }
        }

        v70 = *a2;
        *a1 = *a2;
        v71 = v70;
        swift_storeEnumTagMultiPayload();
        goto LABEL_154;
      }

LABEL_34:
      if (v6 != 2)
      {
        v21 = *a2;
        *a1 = *a2;
        v22 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v24 = *(v23 - 8);
        v25 = *(v24 + 48);
        v26 = v21;
        if (v25(&a2[v22], 1, v23))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(&a1[v22], &a2[v22], *(*(v27 - 8) + 64));
          goto LABEL_193;
        }

        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          if (v51 <= 7)
          {
            if (v51 == 5 || v51 == 6)
            {
              goto LABEL_122;
            }

            goto LABEL_187;
          }

          if (v51 != 8 && v51 != 9)
          {
            goto LABEL_187;
          }
        }

        else
        {
          if (v51 > 2)
          {
LABEL_122:
            v78 = sub_21DBF563C();
            (*(*(v78 - 8) + 16))(&a1[v22], &a2[v22], v78);
            swift_storeEnumTagMultiPayload();
LABEL_188:
            (*(v24 + 56))(&a1[v22], 0, 1, v23);
            goto LABEL_193;
          }

          if (v51 != 1)
          {
            if (v51 == 2)
            {
              goto LABEL_122;
            }

LABEL_187:
            memcpy(&a1[v22], &a2[v22], *(v24 + 64));
            goto LABEL_188;
          }
        }

        v79 = *&a2[v22];
        *&a1[v22] = v79;
        v80 = v79;
        swift_storeEnumTagMultiPayload();
        goto LABEL_188;
      }

      v30 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      v34 = v30;
      if (v33(&a2[v8], 1, v31))
      {
        goto LABEL_8;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 4)
      {
        if (v52 <= 7)
        {
          if (v52 == 5 || v52 == 6)
          {
            goto LABEL_130;
          }

          goto LABEL_189;
        }

        if (v52 != 8 && v52 != 9)
        {
          goto LABEL_189;
        }
      }

      else
      {
        if (v52 > 2)
        {
LABEL_130:
          v82 = sub_21DBF563C();
          (*(*(v82 - 8) + 16))(&a1[v8], &a2[v8], v82);
          swift_storeEnumTagMultiPayload();
LABEL_190:
          (*(v32 + 56))(&a1[v8], 0, 1, v31);
          goto LABEL_193;
        }

        if (v52 != 1)
        {
          if (v52 == 2)
          {
            goto LABEL_130;
          }

LABEL_189:
          memcpy(&a1[v8], &a2[v8], *(v32 + 64));
          goto LABEL_190;
        }
      }

      v83 = *&a2[v8];
      *&a1[v8] = v83;
      v84 = v83;
      swift_storeEnumTagMultiPayload();
      goto LABEL_190;
    }

    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 > 3)
    {
      if (v6 <= 5)
      {
        if (v6 == 4)
        {
          v45 = *a2;
          *a1 = *a2;
          v46 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v10 = *(v47 - 8);
          v48 = *(v10 + 48);
          v49 = v45;
          if (v48(&a2[v46], 1, v47))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(&a1[v46], &a2[v46], *(*(v50 - 8) + 64));
            goto LABEL_193;
          }

          v63 = swift_getEnumCaseMultiPayload();
          v64 = v47;
          v65 = v46;
          if (v63 <= 4)
          {
            if (v63 > 2)
            {
              goto LABEL_129;
            }

            goto LABEL_96;
          }

          if (v63 <= 7)
          {
LABEL_127:
            if (v63 == 5 || v63 == 6)
            {
              goto LABEL_129;
            }

            goto LABEL_191;
          }

LABEL_135:
          if (v63 != 8 && v63 != 9)
          {
            goto LABEL_191;
          }

          goto LABEL_137;
        }

        goto LABEL_38;
      }

LABEL_14:
      switch(v6)
      {
        case 6:
          v38 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v39 = *(v38 - 8);
          if ((*(v39 + 48))(a2, 1, v38))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v40 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v55 = *(v38 + 20);
            v56 = sub_21DBF6C1C();
            v172 = *(*(v56 - 8) + 16);
            sub_21DBF8E0C();
            v172(&a1[v55], &a2[v55], v56);
            (*(v39 + 56))(a1, 0, 1, v38);
          }

          v57 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v58 = &a1[v57];
          v59 = &a2[v57];
          if (*(v59 + 1))
          {
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = *(v59 + 2);
            *(v58 + 2) = v60;
            sub_21DBF8E0C();
            v61 = v60;
          }

          else
          {
            v62 = *v59;
            *(v58 + 2) = *(v59 + 2);
            *v58 = v62;
          }

          goto LABEL_193;
        case 7:
          v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v36 = *(v35 - 8);
          if ((*(v36 + 48))(a2, 1, v35))
          {
            v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v37 - 8) + 64));
          }

          else
          {
            v53 = sub_21DBF563C();
            (*(*(v53 - 8) + 16))(a1, a2, v53);
            a1[*(v35 + 20)] = a2[*(v35 + 20)];
            (*(v36 + 56))(a1, 0, 1, v35);
          }

          v54 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v54 + 20)] = *&a2[*(v54 + 20)];
          swift_storeEnumTagMultiPayload();
          goto LABEL_10;
        case 8:
          *a1 = *a2;
          v15 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v16 = sub_21DBF8D7C();
          (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
          swift_storeEnumTagMultiPayload();
          goto LABEL_10;
      }

LABEL_45:
      memcpy(a1, a2, *(*(v5 - 8) + 64));
      goto LABEL_10;
    }

    if (v6 > 1)
    {
      goto LABEL_34;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_45;
      }

      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = swift_getEnumCaseMultiPayload();
      if (v20 <= 4)
      {
        if (v20 > 2)
        {
LABEL_114:
          v72 = sub_21DBF563C();
          (*(*(v72 - 8) + 16))(a1, a2, v72);
          swift_storeEnumTagMultiPayload();
          goto LABEL_162;
        }

        if (v20 != 1)
        {
          if (v20 == 2)
          {
            goto LABEL_114;
          }

          goto LABEL_161;
        }

LABEL_117:
        v73 = *a2;
        *a1 = *a2;
        v74 = v73;
        swift_storeEnumTagMultiPayload();
        goto LABEL_162;
      }

      if (v20 > 7)
      {
        if (v20 == 8 || v20 == 9)
        {
          goto LABEL_117;
        }
      }

      else if (v20 == 5 || v20 == 6)
      {
        goto LABEL_114;
      }

LABEL_161:
      memcpy(a1, a2, *(*(v19 - 8) + 64));
LABEL_162:
      v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v116 = v87[5];
      v89 = &a1[v116];
      v90 = &a2[v116];
      if (!*&a2[v116 + 8])
      {
LABEL_167:
        v131 = *v90;
        v132 = *(v90 + 1);
        v133 = *(v90 + 3);
        *(v89 + 2) = *(v90 + 2);
        *(v89 + 3) = v133;
        *v89 = v131;
        *(v89 + 1) = v132;
        v134 = *(v90 + 4);
        v135 = *(v90 + 5);
        v136 = *(v90 + 6);
        *(v89 + 106) = *(v90 + 106);
        *(v89 + 5) = v135;
        *(v89 + 6) = v136;
        *(v89 + 4) = v134;
LABEL_168:
        a1[v87[6]] = a2[v87[6]];
        a1[v87[7]] = a2[v87[7]];
        a1[v87[8]] = a2[v87[8]];
        a1[v87[9]] = a2[v87[9]];
        a1[v87[10]] = a2[v87[10]];
        v137 = v87[11];
        v138 = *&a2[v137];
        *&a1[v137] = v138;
        v139 = v138;
        swift_storeEnumTagMultiPayload();
        goto LABEL_10;
      }

LABEL_163:
      *v89 = *v90;
      *(v89 + 1) = *(v90 + 1);
      v117 = *(v90 + 2);
      v118 = *(v90 + 3);
      v119 = *(v90 + 4);
      v120 = *(v90 + 5);
      v121 = *(v90 + 6);
      v168 = *(v90 + 7);
      v175 = v90[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v117, v118, v119, v120, v121, v168, v175);
      *(v89 + 2) = v117;
      *(v89 + 3) = v118;
      *(v89 + 4) = v119;
      *(v89 + 5) = v120;
      *(v89 + 6) = v121;
      *(v89 + 7) = v168;
      v89[64] = v175;
      v89[65] = v90[65];
      v89[66] = v90[66];
      v89[67] = v90[67];
      v89[68] = v90[68];
      v122 = v90[120];
      if (v122 == 255)
      {
        v128 = *(v90 + 72);
        v129 = *(v90 + 88);
        v130 = *(v90 + 104);
        v89[120] = v90[120];
        *(v89 + 104) = v130;
        *(v89 + 88) = v129;
        *(v89 + 72) = v128;
      }

      else
      {
        v169 = *(v90 + 10);
        v176 = *(v90 + 9);
        v123 = *(v90 + 11);
        v124 = *(v90 + 12);
        v125 = *(v90 + 13);
        v126 = *(v90 + 14);
        v127 = v122 & 1;
        sub_21D0FB960(v176, v169, v123, v124, v125, v126, v122 & 1);
        *(v89 + 9) = v176;
        *(v89 + 10) = v169;
        *(v89 + 11) = v123;
        *(v89 + 12) = v124;
        *(v89 + 13) = v125;
        *(v89 + 14) = v126;
        v89[120] = v127;
      }

      v89[121] = v90[121];
      goto LABEL_168;
    }

    v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 > 4)
    {
      if (v44 <= 7)
      {
        if (v44 == 5 || v44 == 6)
        {
          goto LABEL_118;
        }

        goto LABEL_169;
      }

      if (v44 != 8 && v44 != 9)
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v44 > 2)
      {
LABEL_118:
        v75 = sub_21DBF563C();
        (*(*(v75 - 8) + 16))(a1, a2, v75);
        swift_storeEnumTagMultiPayload();
LABEL_170:
        v140 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v141 = v140[5];
        v142 = &a1[v141];
        v143 = &a2[v141];
        if (*&a2[v141 + 8])
        {
          *v142 = *v143;
          *(v142 + 1) = *(v143 + 1);
          v144 = *(v143 + 2);
          v145 = *(v143 + 3);
          v147 = *(v143 + 4);
          v146 = *(v143 + 5);
          v148 = *(v143 + 6);
          v177 = *(v143 + 7);
          v170 = v143[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v144, v145, v147, v146, v148, v177, v170);
          *(v142 + 2) = v144;
          *(v142 + 3) = v145;
          *(v142 + 4) = v147;
          *(v142 + 5) = v146;
          *(v142 + 6) = v148;
          *(v142 + 7) = v177;
          v142[64] = v170;
          v142[65] = v143[65];
          v142[66] = v143[66];
          v142[67] = v143[67];
          v142[68] = v143[68];
          v149 = v143[120];
          if (v149 == 255)
          {
            v161 = *(v143 + 72);
            v162 = *(v143 + 88);
            v163 = *(v143 + 104);
            v142[120] = v143[120];
            *(v142 + 104) = v163;
            *(v142 + 88) = v162;
            *(v142 + 72) = v161;
          }

          else
          {
            v171 = *(v143 + 10);
            v178 = *(v143 + 9);
            v151 = *(v143 + 11);
            v150 = *(v143 + 12);
            v152 = *(v143 + 13);
            v153 = *(v143 + 14);
            v154 = v149 & 1;
            sub_21D0FB960(v178, v171, v151, v150, v152, v153, v149 & 1);
            *(v142 + 9) = v178;
            *(v142 + 10) = v171;
            *(v142 + 11) = v151;
            *(v142 + 12) = v150;
            *(v142 + 13) = v152;
            *(v142 + 14) = v153;
            v142[120] = v154;
          }

          v142[121] = v143[121];
        }

        else
        {
          v155 = *v143;
          v156 = *(v143 + 1);
          v157 = *(v143 + 3);
          *(v142 + 2) = *(v143 + 2);
          *(v142 + 3) = v157;
          *v142 = v155;
          *(v142 + 1) = v156;
          v158 = *(v143 + 4);
          v159 = *(v143 + 5);
          v160 = *(v143 + 6);
          *(v142 + 106) = *(v143 + 106);
          *(v142 + 5) = v159;
          *(v142 + 6) = v160;
          *(v142 + 4) = v158;
        }

        a1[v140[6]] = a2[v140[6]];
        a1[v140[7]] = a2[v140[7]];
        a1[v140[8]] = a2[v140[8]];
        a1[v140[9]] = a2[v140[9]];
        a1[v140[10]] = a2[v140[10]];
        v115 = v140[11];
        goto LABEL_177;
      }

      if (v44 != 1)
      {
        if (v44 == 2)
        {
          goto LABEL_118;
        }

LABEL_169:
        memcpy(a1, a2, *(*(v43 - 8) + 64));
        goto LABEL_170;
      }
    }

    v76 = *a2;
    *a1 = *a2;
    v77 = v76;
    swift_storeEnumTagMultiPayload();
    goto LABEL_170;
  }

  return a1;
}

void *initializeWithTake for TTRRemindersListHighlightTarget(void *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 <= 3)
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v27 = swift_getEnumCaseMultiPayload();
          if (v27 <= 3)
          {
            if (v27 == 2 || v27 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v27 == 4 || v27 == 5 || v27 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_129;
        }

        if (v11 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v12 = swift_getEnumCaseMultiPayload();
          if (v12 <= 3)
          {
            if (v12 == 2 || v12 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v12 == 4 || v12 == 5 || v12 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_129;
        }

        goto LABEL_68;
      }

      if (v11 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
LABEL_65:
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v19, &a2[v19], *(*(v28 - 8) + 64));
          goto LABEL_171;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_109;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v43 = swift_getEnumCaseMultiPayload();
        if (v43 <= 3)
        {
          if (v43 == 2 || v43 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v43 == 4 || v43 == 5 || v43 == 6)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_169;
    }

    if (v11 <= 6)
    {
      if (v11 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v32 = swift_getEnumCaseMultiPayload();
        if (v32 <= 3)
        {
          if (v32 == 2 || v32 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v32 == 4 || v32 == 5 || v32 == 6)
        {
          goto LABEL_109;
        }

        goto LABEL_169;
      }

      if (v11 != 6)
      {
        goto LABEL_68;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
LABEL_33:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_111:
        v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v41 = a1 + v40;
        v42 = &a2[v40];
        *v41 = *v42;
        *(v41 + 2) = *(v42 + 2);
        goto LABEL_171;
      }

LABEL_110:
      *a1 = *a2;
      v38 = *(v16 + 20);
      v39 = sub_21DBF6C1C();
      (*(*(v39 - 8) + 32))(a1 + v38, &a2[v38], v39);
      (*(v17 + 56))(a1, 0, 1, v16);
      goto LABEL_111;
    }

    if (v11 != 7)
    {
      if (v11 != 8)
      {
        goto LABEL_68;
      }

LABEL_45:
      *a1 = *a2;
      v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v23 = sub_21DBF8D7C();
      (*(*(v23 - 8) + 32))(a1 + v22, &a2[v22], v23);
LABEL_171:
      swift_storeEnumTagMultiPayload();
      goto LABEL_172;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
      goto LABEL_67;
    }

    goto LABEL_102;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (!v8)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_129;
        }

        if (v8 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 <= 3)
          {
            if (v10 == 2 || v10 == 3)
            {
              goto LABEL_20;
            }
          }

          else if (v10 == 4 || v10 == 5 || v10 == 6)
          {
LABEL_20:
            v13 = sub_21DBF563C();
            (*(*(v13 - 8) + 32))(a1, a2, v13);
            swift_storeEnumTagMultiPayload();
LABEL_130:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = (a1 + v45);
            v47 = &a2[v45];
            v48 = *(v47 + 3);
            v46[2] = *(v47 + 2);
            v46[3] = v48;
            v49 = *(v47 + 1);
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = *(v47 + 6);
            v46[5] = *(v47 + 5);
            v46[6] = v50;
            v46[4] = *(v47 + 4);
            *(a1 + v44[6]) = a2[v44[6]];
            *(a1 + v44[7]) = a2[v44[7]];
            *(a1 + v44[8]) = a2[v44[8]];
            *(a1 + v44[9]) = a2[v44[9]];
            *(a1 + v44[10]) = a2[v44[10]];
            *(a1 + v44[11]) = *&a2[v44[11]];
            goto LABEL_171;
          }

LABEL_129:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_130;
        }

LABEL_68:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_172:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v8 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v31 = swift_getEnumCaseMultiPayload();
        if (v31 <= 3)
        {
          if (v31 == 2 || v31 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v31 == 4 || v31 == 5 || v31 == 6)
        {
          goto LABEL_109;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 <= 3)
        {
          if (v36 == 2 || v36 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v36 == 4 || v36 == 5 || v36 == 6)
        {
LABEL_109:
          v37 = sub_21DBF563C();
          (*(*(v37 - 8) + 32))(a1 + v19, &a2[v19], v37);
          swift_storeEnumTagMultiPayload();
LABEL_170:
          (*(v21 + 56))(a1 + v19, 0, 1, v20);
          goto LABEL_171;
        }
      }

LABEL_169:
      memcpy(a1 + v19, &a2[v19], *(v21 + 64));
      goto LABEL_170;
    }

    if (v8 <= 6)
    {
      if (v8 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_65;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 <= 3)
        {
          if (v30 == 2 || v30 == 3)
          {
            goto LABEL_109;
          }
        }

        else if (v30 == 4 || v30 == 5 || v30 == 6)
        {
          goto LABEL_109;
        }

        goto LABEL_169;
      }

      if (v8 != 6)
      {
        goto LABEL_68;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
        goto LABEL_33;
      }

      goto LABEL_110;
    }

    if (v8 != 7)
    {
      if (v8 != 8)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
LABEL_67:
      v29 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v29 - 8) + 64));
LABEL_103:
      v35 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v35 + 20)) = *&a2[*(v35 + 20)];
      goto LABEL_171;
    }

LABEL_102:
    v34 = sub_21DBF563C();
    (*(*(v34 - 8) + 32))(a1, a2, v34);
    *(a1 + *(v25 + 20)) = a2[*(v25 + 20)];
    (*(v26 + 56))(a1, 0, 1, v25);
    goto LABEL_103;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void *assignWithTake for TTRRemindersListHighlightTarget(void *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106B58(a1, type metadata accessor for TTRRemindersListHighlightTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 <= 3)
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v27 = swift_getEnumCaseMultiPayload();
          if (v27 <= 3)
          {
            if (v27 == 2 || v27 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v27 == 4 || v27 == 5 || v27 == 6)
          {
            goto LABEL_21;
          }

          goto LABEL_130;
        }

        if (v11 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v12 = swift_getEnumCaseMultiPayload();
          if (v12 <= 3)
          {
            if (v12 == 2 || v12 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v12 == 4 || v12 == 5 || v12 == 6)
          {
            goto LABEL_21;
          }

          goto LABEL_130;
        }

        goto LABEL_69;
      }

      if (v11 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
LABEL_66:
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v19, &a2[v19], *(*(v28 - 8) + 64));
          goto LABEL_172;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_110;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v43 = swift_getEnumCaseMultiPayload();
        if (v43 <= 3)
        {
          if (v43 == 2 || v43 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v43 == 4 || v43 == 5 || v43 == 6)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_170;
    }

    if (v11 <= 6)
    {
      if (v11 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v32 = swift_getEnumCaseMultiPayload();
        if (v32 <= 3)
        {
          if (v32 == 2 || v32 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v32 == 4 || v32 == 5 || v32 == 6)
        {
          goto LABEL_110;
        }

        goto LABEL_170;
      }

      if (v11 != 6)
      {
        goto LABEL_69;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
LABEL_34:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_112:
        v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v41 = a1 + v40;
        v42 = &a2[v40];
        *v41 = *v42;
        *(v41 + 2) = *(v42 + 2);
        goto LABEL_172;
      }

LABEL_111:
      *a1 = *a2;
      v38 = *(v16 + 20);
      v39 = sub_21DBF6C1C();
      (*(*(v39 - 8) + 32))(a1 + v38, &a2[v38], v39);
      (*(v17 + 56))(a1, 0, 1, v16);
      goto LABEL_112;
    }

    if (v11 != 7)
    {
      if (v11 != 8)
      {
        goto LABEL_69;
      }

LABEL_46:
      *a1 = *a2;
      v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v23 = sub_21DBF8D7C();
      (*(*(v23 - 8) + 32))(a1 + v22, &a2[v22], v23);
LABEL_172:
      swift_storeEnumTagMultiPayload();
      goto LABEL_173;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
      goto LABEL_68;
    }

    goto LABEL_103;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (!v8)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_21;
          }

          goto LABEL_130;
        }

        if (v8 == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 <= 3)
          {
            if (v10 == 2 || v10 == 3)
            {
              goto LABEL_21;
            }
          }

          else if (v10 == 4 || v10 == 5 || v10 == 6)
          {
LABEL_21:
            v13 = sub_21DBF563C();
            (*(*(v13 - 8) + 32))(a1, a2, v13);
            swift_storeEnumTagMultiPayload();
LABEL_131:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = (a1 + v45);
            v47 = &a2[v45];
            v48 = *(v47 + 3);
            v46[2] = *(v47 + 2);
            v46[3] = v48;
            v49 = *(v47 + 1);
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = *(v47 + 6);
            v46[5] = *(v47 + 5);
            v46[6] = v50;
            v46[4] = *(v47 + 4);
            *(a1 + v44[6]) = a2[v44[6]];
            *(a1 + v44[7]) = a2[v44[7]];
            *(a1 + v44[8]) = a2[v44[8]];
            *(a1 + v44[9]) = a2[v44[9]];
            *(a1 + v44[10]) = a2[v44[10]];
            *(a1 + v44[11]) = *&a2[v44[11]];
            goto LABEL_172;
          }

LABEL_130:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_131;
        }

LABEL_69:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_173:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v8 == 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v31 = swift_getEnumCaseMultiPayload();
        if (v31 <= 3)
        {
          if (v31 == 2 || v31 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v31 == 4 || v31 == 5 || v31 == 6)
        {
          goto LABEL_110;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 <= 3)
        {
          if (v36 == 2 || v36 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v36 == 4 || v36 == 5 || v36 == 6)
        {
LABEL_110:
          v37 = sub_21DBF563C();
          (*(*(v37 - 8) + 32))(a1 + v19, &a2[v19], v37);
          swift_storeEnumTagMultiPayload();
LABEL_171:
          (*(v21 + 56))(a1 + v19, 0, 1, v20);
          goto LABEL_172;
        }
      }

LABEL_170:
      memcpy(a1 + v19, &a2[v19], *(v21 + 64));
      goto LABEL_171;
    }

    if (v8 <= 6)
    {
      if (v8 == 4)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_66;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 <= 3)
        {
          if (v30 == 2 || v30 == 3)
          {
            goto LABEL_110;
          }
        }

        else if (v30 == 4 || v30 == 5 || v30 == 6)
        {
          goto LABEL_110;
        }

        goto LABEL_170;
      }

      if (v8 != 6)
      {
        goto LABEL_69;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2, 1, v16))
      {
        goto LABEL_34;
      }

      goto LABEL_111;
    }

    if (v8 != 7)
    {
      if (v8 != 8)
      {
        goto LABEL_69;
      }

      goto LABEL_46;
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(a2, 1, v25))
    {
LABEL_68:
      v29 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v29 - 8) + 64));
LABEL_104:
      v35 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v35 + 20)) = *&a2[*(v35 + 20)];
      goto LABEL_172;
    }

LABEL_103:
    v34 = sub_21DBF563C();
    (*(*(v34 - 8) + 32))(a1, a2, v34);
    *(a1 + *(v25 + 20)) = a2[*(v25 + 20)];
    (*(v26 + 56))(a1, 0, 1, v25);
    goto LABEL_104;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_21D52662C()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRRemindersListHighlightTarget.TargetItem(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v3, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v3, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v103 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v103(a1 + v39, v3 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (v3 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_129;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(v3, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, v3, v48);
              *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *v3;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_130:
        *(a1 + *(v6 + 20)) = *(v3 + *(v6 + 20));
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v20 = v3[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_129;
      }

      v31 = *v3;
      *a1 = *v3;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(v3 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
        goto LABEL_129;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v95 = *(v3 + v15);
        *(a1 + v15) = v95;
        v96 = v95;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_129;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v15, v3 + v15, *(v17 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v97 = sub_21DBF563C();
      (*(*(v97 - 8) + 16))(a1 + v15, v3 + v15, v97);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v106 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *v3;
        *a1 = *v3;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = v3 + v57;
      v60 = *(v3 + v57 + 8);
      if (v60)
      {
        v104 = v3;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v66 = *(v59 + 6);
        v65 = *(v59 + 7);
        v99 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v99);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v66;
        *(v58 + 7) = v65;
        v58[64] = v99;
        *(v58 + 65) = *(v59 + 65);
        v67 = v59[120];
        if (v67 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v68 = *(v59 + 9);
          v100 = *(v59 + 10);
          v69 = *(v59 + 11);
          v70 = *(v59 + 12);
          v71 = *(v59 + 13);
          v72 = *(v59 + 14);
          v73 = v67 & 1;
          sub_21D0FB960(v68, v100, v69, v70, v71, v72, v67 & 1);
          *(v58 + 9) = v68;
          *(v58 + 10) = v100;
          *(v58 + 11) = v69;
          *(v58 + 12) = v70;
          *(v58 + 13) = v71;
          *(v58 + 14) = v72;
          v58[120] = v73;
        }

        v6 = v106;
        v58[121] = v59[121];
        v3 = v104;
        goto LABEL_98;
      }

LABEL_95:
      v74 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v74;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v75 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v75;
      v76 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v76;
LABEL_98:
      *(a1 + v56[6]) = *(v3 + v56[6]);
      *(a1 + v56[7]) = *(v3 + v56[7]);
      *(a1 + v56[8]) = *(v3 + v56[8]);
      *(a1 + v56[9]) = *(v3 + v56[9]);
      *(a1 + v56[10]) = *(v3 + v56[10]);
      v77 = v56[11];
      v78 = *(v3 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v107 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *v3;
      *a1 = *v3;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v56[5];
    v58 = a1 + v80;
    v59 = v3 + v80;
    v81 = *(v3 + v80 + 8);
    if (v81)
    {
      v105 = v3;
      *v58 = *v59;
      *(v58 + 1) = v81;
      v82 = *(v59 + 2);
      v83 = *(v59 + 3);
      v84 = *(v59 + 4);
      v85 = *(v59 + 5);
      v86 = *(v59 + 6);
      v87 = *(v59 + 7);
      v101 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v101);
      *(v58 + 2) = v82;
      *(v58 + 3) = v83;
      *(v58 + 4) = v84;
      *(v58 + 5) = v85;
      *(v58 + 6) = v86;
      *(v58 + 7) = v87;
      v58[64] = v101;
      *(v58 + 65) = *(v59 + 65);
      v88 = v59[120];
      if (v88 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v89 = *(v59 + 9);
        v102 = *(v59 + 10);
        v90 = *(v59 + 11);
        v91 = *(v59 + 12);
        v92 = *(v59 + 13);
        v93 = *(v59 + 14);
        v94 = v88 & 1;
        sub_21D0FB960(v89, v102, v90, v91, v92, v93, v88 & 1);
        *(v58 + 9) = v89;
        *(v58 + 10) = v102;
        *(v58 + 11) = v90;
        *(v58 + 12) = v91;
        *(v58 + 13) = v92;
        *(v58 + 14) = v93;
        v58[120] = v94;
      }

      v6 = v107;
      v58[121] = v59[121];
      v3 = v105;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = (v11 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRRemindersListHighlightTarget.TargetItem(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v19 = a1 + *(v18 + 20);
          if (*(v19 + 8))
          {

            sub_21D179EF0(*(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64));
            v20 = *(v19 + 120);
            if (v20 != 255)
            {
              sub_21D1078C0(*(v19 + 72), *(v19 + 80), *(v19 + 88), *(v19 + 96), *(v19 + 104), *(v19 + 112), v20 & 1);
            }
          }

          v8 = *(a1 + *(v18 + 44));
          goto LABEL_45;
        }

LABEL_37:
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 8))(a1, v17);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v8 = *(a1 + 16);
LABEL_45:

      return;
    }

LABEL_17:

    v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v10 - 8) + 48))(a1 + v9, 1, v10))
    {
      return;
    }

    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 4)
    {
      if (v11 <= 7)
      {
        if (v11 != 5 && v11 != 6)
        {
          return;
        }

        goto LABEL_49;
      }

      if (v11 != 8 && v11 != 9)
      {
        return;
      }
    }

    else
    {
      if (v11 > 2)
      {
LABEL_49:
        v4 = sub_21DBF563C();
        v5 = *(*(v4 - 8) + 8);
        v6 = a1 + v9;
LABEL_50:

        v5(v6, v4);
        return;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          return;
        }

        goto LABEL_49;
      }
    }

    v8 = *(a1 + v9);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v16 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v16 - 8) + 48))(a1, 1, v16))
      {
        return;
      }

      v21 = sub_21DBF563C();
      v5 = *(*(v21 - 8) + 8);
      v4 = v21;
      v6 = a1;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        return;
      }

      v3 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v4 = sub_21DBF8D7C();
      v5 = *(*(v4 - 8) + 8);
      v6 = a1 + v3;
    }

    goto LABEL_50;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v12 - 8) + 48))(a1, 1, v12))
  {

    v13 = *(v12 + 20);
    v14 = sub_21DBF6C1C();
    (*(*(v14 - 8) + 8))(a1 + v13, v14);
  }

  v15 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v15 + 8))
  {

    v8 = *(v15 + 16);
    goto LABEL_45;
  }
}

void **initializeWithCopy for TTRRemindersListHighlightTarget.TargetItem(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v106 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *a2;
        *a1 = *a2;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = a2 + v56;
      v59 = *(a2 + v56 + 8);
      if (v59)
      {
        v102 = a2;
        v104 = a1;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        a3 = v106;
        v57[121] = v58[121];
        a2 = v102;
        a1 = v104;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v78 = v55[11];
      v79 = *(a2 + v78);
      *(a1 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v107 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *a2;
      *a1 = *a2;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v55[5];
    v57 = a1 + v81;
    v58 = a2 + v81;
    v82 = *(a2 + v81 + 8);
    if (v82)
    {
      v103 = a2;
      v105 = a1;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      a3 = v107;
      v57[121] = v58[121];
      a2 = v103;
      a1 = v105;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v39 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v39(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v41 = (a1 + v40);
      v42 = (a2 + v40);
      v43 = v42[1];
      if (v43)
      {
        *v41 = *v42;
        v41[1] = v43;
        v44 = v42[2];
        v41[2] = v44;
        sub_21DBF8E0C();
        v45 = v44;
      }

      else
      {
        *v41 = *v42;
        v41[2] = v42[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v47 = sub_21DBF563C();
        (*(*(v47 - 8) + 16))(a1, a2, v47);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithCopy for TTRRemindersListHighlightTarget.TargetItem(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D106B58(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v4, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v4, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, v4 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v4 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v4, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v4, v46);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v4;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v18 = v4[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *v4;
      *a1 = *v4;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(v4 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v100 = *(v4 + v13);
        *(a1 + v13) = v100;
        v101 = v100;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v111 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *v4;
        *a1 = *v4;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v109 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v104 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v104);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v104;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v105 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v105, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v105;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v111;
        v56[121] = v57[121];
        v4 = v109;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v111;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v111 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *v4;
      *a1 = *v4;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v110 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v106);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v107 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v107, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v107;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v111;
      v56[121] = v57[121];
      v4 = v110;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListHighlightTarget.TargetItem(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

void *assignWithTake for TTRRemindersListHighlightTarget.TargetItem(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106B58(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D52D00C()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *TTRIBackgroundView.__allocating_init(frame:backgroundColor:cornerRadius:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = [objc_allocWithZone(v6) initWithFrame_];
  v10 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  *&v9[v10] = a6;
  v11 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v12 = *&v9[v11];
  *&v9[v11] = a1;
  v13 = v9;

  return v13;
}

id TTRIBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners] = 15;
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for TTRIBackgroundView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D52DE50();

  return v10;
}

id sub_21D52D31C(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  *&v1[v3] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners] = 15;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRIBackgroundView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_21D52DE50();
  }

  return v5;
}

id sub_21D52D420(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  return [v3 setNeedsLayout];
}

id sub_21D52D490()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21D52D4E4(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D558(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

double sub_21D52D5BC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_21D52D60C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

id sub_21D52D670(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  return [v3 setNeedsLayout];
}

void *sub_21D52D6E0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21D52D72C(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D7A0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52D804;
}

uint64_t sub_21D52D808()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D52D84C(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D8AC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

uint64_t sub_21D52D910@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_21D52D964(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 setNeedsLayout];
}

uint64_t (*sub_21D52D9C4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

double sub_21D52DA28()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D52DA78(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  return [v2 setNeedsLayout];
}

uint64_t (*sub_21D52DAD4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D52E3C0;
}

id sub_21D52DB38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

void sub_21D52DB98()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for TTRIBackgroundView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  swift_beginAccess();
  v2 = TTRRectCorners.cornerMask(layoutDirection:isFlipped:)([v0 effectiveUserInterfaceLayoutDirection], 1);
  v3 = [v1 layer];
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    v6 = [v5 CGColor];
  }

  else
  {
    v6 = 0;
  }

  [v3 setBorderColor_];

  v7 = [v1 layer];
  v8 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderWidth;
  swift_beginAccess();
  [v7 setBorderWidth_];

  v9 = [v1 layer];
  [v9 setMaskedCorners_];

  v10 = [v1 layer];
  [v10 setCornerCurve_];

  v11 = [v1 layer];
  v12 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  [v11 setCornerRadius_];

  v13 = [v1 layer];
  v14 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v15 = [*&v1[v14] CGColor];
  [v13 setBackgroundColor_];
}

id sub_21D52DE50()
{
  type metadata accessor for UILayoutPriority(0);
  sub_21D367748();
  sub_21DBF84EC();
  LODWORD(v1) = v6;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  LODWORD(v2) = v6;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  LODWORD(v3) = v6;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = v6;
  return [v0 setContentCompressionResistancePriority:1 forAxis:v4];
}

id TTRIBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_set_3Tm_0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *&v6[v7] = v5;
  return [v6 setNeedsLayout];
}

uint64_t sub_21D52E3C4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_21D53859C(v0);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_21D52E424()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21D5340AC(v0, sub_21D5339EC, 1702125892, sub_21D539A98, sub_21D539AA0);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_21D52E4C8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_21D533CD4();
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_21D52E528()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = sub_21D5340AC(v0, sub_21D5344DC, 1701669204, sub_21D5396A4, sub_21D5396AC);
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_21D52E5CC()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_21D53480C();
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_21D52E62C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_21D534BE0();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_21D52E68C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_21D535150();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_21D52E6EC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_21D5392E0(v0);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_21D52E74C()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v1 = sub_21D5355F0();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_21D52E7AC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v1 = sub_21D535B78();
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_21D52E80C()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = sub_21D535E50();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_21D52E86C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong traitCollection], v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, v2, v4 == 1))
  {
    return 1;
  }

  else
  {
    return *(v0 + 64);
  }
}

uint64_t sub_21D52E8E4()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v1 = sub_21D536214();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_21D52E944()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_21D53659C();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_21D52E9A4()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v1 = sub_21D536E58();
    *(v0 + 176) = v1;
  }

  return v1;
}

uint64_t sub_21D52EA04()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v1 = sub_21D5373D4();
    *(v0 + 184) = v1;
  }

  return v1;
}

uint64_t sub_21D52EA64()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_21D5377AC(v0, sub_21D5360C0, 0x746165706552, 0xE600000000000000, sub_21D5395C4);
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_21D52EAFC()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v1 = sub_21D5377AC(v0, sub_21D537070, 0x6570655220646E45, 0xEA00000000007461, sub_21D5395BC);
    *(v0 + 192) = v1;
  }

  return v1;
}

uint64_t sub_21D52EB9C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v386 = v1;
  v384 = v2;
  v4 = v3;
  v365 = type metadata accessor for TTRIDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v365);
  v373 = &v343[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v374 = &v343[-v7];
  v363 = type metadata accessor for TTRICalendarPickerCellContentState(0);
  MEMORY[0x28223BE20](v363);
  v372 = &v343[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v369 = &v343[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v368 = &v343[-v12];
  MEMORY[0x28223BE20](v13);
  v367 = &v343[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v343[-v16];
  v18 = sub_21DBF5C4C();
  v19 = *(v18 - 8);
  v377 = v18;
  v378 = v19;
  MEMORY[0x28223BE20](v18);
  v370 = &v343[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v366 = &v343[-v22];
  MEMORY[0x28223BE20](v23);
  v364 = &v343[-v24];
  MEMORY[0x28223BE20](v25);
  v362 = &v343[-v26];
  MEMORY[0x28223BE20](v27);
  v375 = &v343[-v28];
  MEMORY[0x28223BE20](v29);
  v31 = &v343[-v30];
  v380 = sub_21DBF604C();
  v383 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v379 = &v343[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v381 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v381);
  v371 = &v343[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v385 = &v343[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v343[-v37];
  v39 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v376 = &v343[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v382 = &v343[-v43];
  MEMORY[0x28223BE20](v44);
  v46 = &v343[-v45];
  sub_21D0D3954(v4, v38, &qword_27CE5D998);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_21D0CF7E0(v38, &qword_27CE5D998);
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    goto LABEL_55;
  }

  sub_21D539B30(v38, v46, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v51 = v386;
  if ((v384 & 0x200) != 0)
  {
    sub_21D539CB4(v46, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    goto LABEL_55;
  }

  v52 = v382;
  sub_21D539D14(v46, v382, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  v56 = v54 + 48;
  v360 = v55(v52, 1, v53);
  v359 = v46;
  if (v360 != 1)
  {
    v346 = v55;

    v344 = v52[*(v53 + 96)];
    v57 = v52;
    v58 = v385;
    sub_21D539B30(v57, v385, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v355 = v58[v381[5]];
    v59 = v381[7];
    v60 = v58[v381[11]];
    v358 = v355 ^ 1;
    v350 = v53;
    v345 = v56;
    if ((v60 - 2) >= 2)
    {
      if (v60)
      {
        LODWORD(v384) = 0;
        v361 = v355 ^ 1;
      }

      else
      {
        v361 = 0;
        LODWORD(v384) = 1;
      }
    }

    else
    {
      v361 = 0;
      LODWORD(v384) = 0;
    }

    v347 = v58[v59];
    v63 = v383;
    v64 = v383[13];
    v66 = v379;
    v65 = v380;
    v353 = *MEMORY[0x277D44DC0];
    v354 = (v383 + 13);
    v352 = v64;
    v64(v379);
    v67 = sub_21DBF603C();
    v68 = v63[1];
    v383 = v63 + 1;
    v351 = v68;
    v68(v66, v65);
    if (v67)
    {
      sub_21DBF507C();
      v69 = v378;
      v70 = v377;
      if ((*(v378 + 48))(v17, 1, v377) != 1)
      {
        (*(v69 + 32))(v31, v17, v70);
        v83 = _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V10dateString3forSS10Foundation8TimeZoneV_tF_0(v31);
        v348 = v84;
        v349 = v83;
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        v357 = sub_21D7A5CB4();
        v86 = v85;

        v76 = *(v69 + 8);
        (v76)(v31, v70);
        v51 = v386;
        v80 = v384;
        v81 = v69;
        v82 = v375;
        v356 = v86;
        if (!v384)
        {
LABEL_26:
          if (v355)
          {
            v106 = 0;
            v107 = 0;
          }

          else
          {
            v109 = v379;
            v108 = v380;
            v352(v379, v353, v380);
            v110 = sub_21DBF603C();
            v351(v109, v108);
            if (v110)
            {
              v111 = v368;
              sub_21DBF507C();
              v112 = v111;
              if ((*(v81 + 48))(v111, 1, v70) == 1)
              {
                sub_21D0CF7E0(v111, &unk_27CE60DB0);
              }

              else
              {
                v113 = v364;
                (*(v81 + 32))(v364, v112, v70);
                TTRReminderDetailViewModel.DatePickerModel.timeZoneAbbreviationString.getter();
                if (v114)
                {

                  v115 = [objc_opt_self() defaultTimeZone];
                  sub_21DBF5C2C();

                  sub_21D0F1CF8(&qword_27CE64FE0, MEMORY[0x277CC9A70]);
                  if (sub_21DBFA10C())
                  {
                    v106 = sub_21D7A235C(v113);
                    v107 = v116;
                  }

                  else
                  {
                    *&v490[0] = sub_21D7A235C(v113);
                    *(&v490[0] + 1) = v339;
                    MEMORY[0x223D42AA0](32, 0xE100000000000000);
                    v340 = TTRReminderDetailViewModel.DatePickerModel.timeZoneAbbreviationString.getter();
                    if (v341)
                    {
                      v342 = v341;
                    }

                    else
                    {
                      v340 = 0;
                      v342 = 0xE000000000000000;
                    }

                    MEMORY[0x223D42AA0](v340, v342);

                    v107 = *(&v490[0] + 1);
                    v106 = *&v490[0];
                  }

                  (v76)(v366, v70);
                  (v76)(v113, v70);
                  goto LABEL_36;
                }

                (v76)(v113, v70);
              }
            }

            v117 = [objc_opt_self() defaultTimeZone];
            sub_21DBF5C2C();

            v106 = sub_21D7A235C(v82);
            v118 = v82;
            v107 = v119;
            (v76)(v118, v70);
          }

LABEL_36:
          v372 = v107;
          v375 = v106;
          if (v361)
          {
            v120 = *(sub_21D52E5CC() + 32);

            v121 = *((*MEMORY[0x277D85000] & *v120) + 0x78);
            swift_beginAccess();
            v122 = v76;
            v123 = v374;
            sub_21D539D14(v120 + v121, v374, type metadata accessor for TTRIDatePickerCellContentState);
            v124 = sub_21DBF563C();
            (*(*(v124 - 8) + 24))(v123, v385, v124);
            v125 = v373;
            sub_21D539D14(v120 + v121, v373, type metadata accessor for TTRIDatePickerCellContentState);
            swift_beginAccess();
            v126 = v377;
            v80 = v384;
            sub_21D539C50(v123, v120 + v121);
            swift_endAccess();
            sub_21D5D2158(v125);

            sub_21D539CB4(v125, type metadata accessor for TTRIDatePickerCellContentState);
            v127 = v123;
            v128 = v122;
            sub_21D539CB4(v127, type metadata accessor for TTRIDatePickerCellContentState);
            v130 = v379;
            v129 = v380;
            v352(v379, v353, v380);
            LOBYTE(v120) = sub_21DBF603C();
            v351(v130, v129);
            if (v120)
            {
              v131 = v369;
              sub_21DBF507C();
              if ((*(v81 + 48))(v131, 1, v126) == 1)
              {
                sub_21D0CF7E0(v131, &unk_27CE60DB0);
              }

              else
              {
                (*(v81 + 32))(v370, v131, v126);
                v132 = *(v51[12] + 32);
                v133 = *((*MEMORY[0x277D85000] & *v132) + 0x78);
                swift_beginAccess();
                v386 = v128;
                v134 = v374;
                sub_21D539D14(v132 + v133, v374, type metadata accessor for TTRIDatePickerCellContentState);
                v135 = *(v365 + 20);
                v136 = *(v81 + 24);
                v383 = v132;
                v137 = &v134[v135];
                v138 = v370;
                v136(v137, v370, v126);
                v139 = v373;
                sub_21D539D14(v132 + v133, v373, type metadata accessor for TTRIDatePickerCellContentState);
                swift_beginAccess();
                v80 = v384;
                sub_21D539C50(v134, v132 + v133);
                swift_endAccess();
                v140 = v383;
                sub_21D5D2158(v139);

                sub_21D539CB4(v139, type metadata accessor for TTRIDatePickerCellContentState);
                (v386)(v138, v377);
                sub_21D539CB4(v134, type metadata accessor for TTRIDatePickerCellContentState);
              }
            }
          }

          if ((v355 & 1) == 0)
          {
            v141 = *(sub_21D52E62C() + 32);

            v142 = v141 + *((*MEMORY[0x277D85000] & *v141) + 0x78);
            swift_beginAccess();
            v143 = *v142;
            v144 = *(v142 + 1);
            v145 = *(v142 + 2);
            v478 = *(v142 + 3);
            v477 = v145;
            v476 = v144;
            v475 = v143;
            v146 = *(v142 + 4);
            v147 = *(v142 + 5);
            v148 = *(v142 + 6);
            *(v481 + 14) = *(v142 + 110);
            v481[0] = v148;
            v480 = v147;
            v479 = v146;
            v149 = *v142;
            v150 = *(v142 + 1);
            v151 = *(v142 + 3);
            v490[2] = *(v142 + 2);
            v490[3] = v151;
            v490[0] = v149;
            v490[1] = v150;
            v152 = *(v142 + 4);
            v153 = *(v142 + 5);
            v154 = *(v142 + 6);
            v491 = *(v142 + 14);
            v490[5] = v153;
            v490[6] = v154;
            v490[4] = v152;
            v492 = v344;
            v155 = *(v142 + 121);
            v494 = v142[125];
            v493 = v155;
            sub_21D539B98(&v475, v470);
            sub_21D5C6D8C(v490);
          }

          v156 = v376;
          sub_21D539D14(v359, v376, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
          v157 = v350;
          if (v346(v156, 1, v350) == 1)
          {
            v158 = 0;
            v159 = 0;
          }

          else
          {

            v160 = *(v157 + 64);
            v161 = v371;
            sub_21D539B30(v156, v371, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
            v162 = &v161[v381[12]];
            v158 = *v162;
            v159 = v162[1];
            sub_21DBF8E0C();
            sub_21D539CB4(v161, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
            sub_21D0CF7E0(&v156[v160], &unk_27CE628E0);
          }

          v383 = v159;
          if (v361)
          {
            v163 = *(sub_21D52E68C() + 32);

            if (v159)
            {
              v164 = v159;
            }

            else
            {
              v158 = 0;
              v164 = 0xE000000000000000;
            }

            v165 = v163 + *((*MEMORY[0x277D85000] & *v163) + 0x78);
            swift_beginAccess();
            v166 = *(v165 + 1);
            v167 = *v165;
            v477 = *(v165 + 2);
            v476 = v166;
            v475 = v167;
            v168 = *(v165 + 3);
            v169 = *(v165 + 4);
            v170 = *(v165 + 5);
            LOBYTE(v481[0]) = v165[96];
            v480 = v170;
            v479 = v169;
            v478 = v168;
            sub_21DBF8E0C();
            sub_21D539BF4(&v475, v470);

            v482 = v475;
            v487 = v479;
            v488 = v480;
            v489 = v481[0];
            v486 = v478;
            v485 = v477;
            v483 = v158;
            v484 = v164;
            sub_21D5C7018(&v482);
          }

          sub_21D539CB4(v385, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
          LODWORD(v384) = v80;
          sub_21D0CF7E0(&v382[*(v157 + 64)], &unk_27CE628E0);
          LODWORD(v385) = v347 ^ 1;
          v62 = v348;
          v61 = v349;
          goto LABEL_52;
        }

LABEL_22:
        v87 = *(sub_21D52E4C8() + 32);

        v88 = *((*MEMORY[0x277D85000] & *v87) + 0x78);
        swift_beginAccess();
        v89 = v87 + v88;
        v90 = v372;
        sub_21D539D14(v89, v372, type metadata accessor for TTRICalendarPickerCellContentState);
        v91 = sub_21DBF563C();
        (*(*(v91 - 8) + 24))(v90, v385, v91);
        sub_21D5C665C(v90);

        v93 = v379;
        v92 = v380;
        v352(v379, v353, v380);
        LOBYTE(v87) = sub_21DBF603C();
        v351(v93, v92);
        if (v87)
        {
          v94 = v367;
          sub_21DBF507C();
          if ((*(v81 + 48))(v94, 1, v70) == 1)
          {
            sub_21D0CF7E0(v94, &unk_27CE60DB0);
          }

          else
          {
            v95 = *(v81 + 32);
            v96 = v362;
            v95(v362, v94, v70);
            v97 = *(v51[10] + 32);
            v98 = *((*MEMORY[0x277D85000] & *v97) + 0x78);
            swift_beginAccess();
            v99 = v76;
            v100 = v372;
            sub_21D539D14(v97 + v98, v372, type metadata accessor for TTRICalendarPickerCellContentState);
            v101 = *(v363 + 20);
            v102 = *(v378 + 24);
            v103 = v97;
            v102(&v100[v101], v96, v377);
            v70 = v377;
            v104 = v100;
            v76 = v99;
            v80 = v384;
            sub_21D5C665C(v104);

            v105 = v96;
            v81 = v378;
            (v76)(v105, v70);
          }
        }

        goto LABEL_26;
      }

      sub_21D0CF7E0(v17, &unk_27CE60DB0);
    }

    v71 = objc_opt_self();
    v72 = [v71 defaultTimeZone];
    v73 = v375;
    sub_21DBF5C2C();

    v74 = _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V10dateString3forSS10Foundation8TimeZoneV_tF_0(v73);
    v348 = v75;
    v349 = v74;
    v70 = v377;
    v76 = *(v378 + 8);
    (v76)(v73, v377);
    v77 = [v71 &selRef__setContinuousCornerRadius_ + 3];
    sub_21DBF5C2C();

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v357 = sub_21D7A5CB4();
    v79 = v78;

    (v76)(v73, v70);
    v51 = v386;
    v80 = v384;
    v81 = v378;
    v82 = v73;
    v356 = v79;
    if (!v384)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v358 = 0;
  v361 = 0;
  LODWORD(v384) = 0;
  LODWORD(v385) = 0;
  v375 = 0;
  v372 = 0;
  v356 = 0;
  v357 = 0;
  v61 = 0;
  v62 = 0;
LABEL_52:
  v171 = v360 != 1;
  LODWORD(v386) = v360 != 1;
  v172 = *(sub_21D52E424() + 32);

  v173 = MEMORY[0x277D85000];
  v174 = v172 + *((*MEMORY[0x277D85000] & *v172) + 0x78);
  swift_beginAccess();
  v175 = *v174;
  v176 = *(v174 + 1);
  v177 = *(v174 + 3);
  v388[2] = *(v174 + 2);
  v388[3] = v177;
  v388[0] = v175;
  v388[1] = v176;
  v178 = *(v174 + 4);
  v179 = *(v174 + 5);
  v180 = *(v174 + 6);
  *(v389 + 14) = *(v174 + 110);
  v388[5] = v179;
  v389[0] = v180;
  v388[4] = v178;
  v181 = *v174;
  v182 = *(v174 + 1);
  v183 = *(v174 + 2);
  v478 = *(v174 + 3);
  v477 = v183;
  v476 = v182;
  v475 = v181;
  v184 = *(v174 + 4);
  v185 = *(v174 + 5);
  v186 = *(v174 + 6);
  *&v481[1] = *(v174 + 14);
  v481[0] = v186;
  v480 = v185;
  v479 = v184;
  BYTE8(v481[1]) = v171;
  v187 = *(v174 + 121);
  BYTE13(v481[1]) = v174[125];
  *(&v481[1] + 9) = v187;
  sub_21D539B98(v388, v470);
  sub_21D5C6D8C(&v475);

  v188 = *(v51[9] + 32);
  v189 = (v188 + *((*v173 & *v188) + 0x78));
  swift_beginAccess();
  v190 = v189[4];
  v191 = v189[5];
  v192 = *(v189 + 110);
  v396[0] = v189[6];
  v193 = *v189;
  v194 = v189[1];
  v195 = v189[2];
  v393 = v189[3];
  v392 = v195;
  v391 = v194;
  v390 = v193;
  *(v396 + 14) = v192;
  v395 = v191;
  v394 = v190;
  v196 = v188;
  sub_21D539B98(&v390, v470);

  v470[2] = v392;
  v470[3] = v393;
  v470[4] = v394;
  v470[0] = v390;
  v470[1] = v391;
  *v474 = *(v396 + 8);
  *&v474[14] = *(&v396[1] + 6);
  v471 = v395;
  v472 = v61;
  v473 = v62;
  sub_21D5C6D8C(v470);

  v197 = *(v51[9] + 32);
  v198 = (v197 + *((*v173 & *v197) + 0x78));
  swift_beginAccess();
  v199 = v198[4];
  v200 = v198[5];
  v201 = v198[6];
  *(v403 + 14) = *(v198 + 110);
  v202 = *v198;
  v203 = v198[1];
  v204 = v198[2];
  v400 = v198[3];
  v399 = v204;
  v398 = v203;
  v397 = v202;
  v403[0] = v201;
  v402 = v200;
  v401 = v199;
  v205 = v197;
  sub_21D539B98(&v397, v464);

  v464[4] = v401;
  v464[5] = v402;
  v468 = DWORD2(v403[1]);
  v469 = WORD6(v403[1]);
  v464[0] = v397;
  v464[1] = v398;
  v464[3] = v400;
  v464[2] = v399;
  v465 = *&v403[0];
  v466 = v357;
  v467 = v356;
  sub_21D5C6D8C(v464);

  v206 = *(v51[9] + 32);
  v207 = (v206 + *((*v173 & *v206) + 0x78));
  swift_beginAccess();
  v208 = *v207;
  v209 = v207[1];
  v210 = v207[2];
  v404[3] = v207[3];
  v404[2] = v210;
  v404[1] = v209;
  v404[0] = v208;
  v211 = v207[4];
  v212 = v207[5];
  v213 = v207[6];
  *(v405 + 14) = *(v207 + 110);
  v405[0] = v213;
  v404[5] = v212;
  v404[4] = v211;
  v214 = *v207;
  v215 = v207[1];
  v216 = v207[2];
  v460[3] = v207[3];
  v460[2] = v216;
  v460[1] = v215;
  v460[0] = v214;
  v217 = v207[4];
  v218 = v207[5];
  v219 = v207[6];
  *&v461[9] = *(v207 + 105);
  *v461 = v219;
  v460[5] = v218;
  v460[4] = v217;
  v462 = v386;
  v463 = *(&v405[1] + 10);
  v220 = v206;
  sub_21D539B98(v404, v455);
  sub_21D5C6D8C(v460);

  v221 = *(v51[9] + 32);
  v222 = v221 + *((*v173 & *v221) + 0x78);
  swift_beginAccess();
  v223 = *v222;
  v224 = *(v222 + 1);
  v225 = *(v222 + 2);
  v406[3] = *(v222 + 3);
  v406[2] = v225;
  v406[1] = v224;
  v406[0] = v223;
  v226 = *(v222 + 4);
  v227 = *(v222 + 5);
  v228 = *(v222 + 6);
  *(v407 + 14) = *(v222 + 110);
  v407[0] = v228;
  v406[5] = v227;
  v406[4] = v226;
  v229 = *v222;
  v230 = *(v222 + 1);
  v231 = *(v222 + 2);
  v455[3] = *(v222 + 3);
  v455[2] = v231;
  v455[1] = v230;
  v455[0] = v229;
  v232 = *(v222 + 4);
  v233 = *(v222 + 5);
  v234 = *(v222 + 6);
  *&v456[10] = *(v222 + 106);
  *v456 = v234;
  v455[5] = v233;
  v455[4] = v232;
  v457 = v385;
  v235 = *(v222 + 123);
  v459 = v222[125];
  v458 = v235;
  v236 = v221;
  sub_21D539B98(v406, v451);
  sub_21D5C6D8C(v455);

  v237 = *(v51[9] + 32);
  v238 = (v237 + *((*v173 & *v237) + 0x78));
  swift_beginAccess();
  v239 = *v238;
  v240 = v238[1];
  v241 = v238[2];
  v408[3] = v238[3];
  v408[2] = v241;
  v408[1] = v240;
  v408[0] = v239;
  v242 = v238[4];
  v243 = v238[5];
  v244 = v238[6];
  *(v409 + 14) = *(v238 + 110);
  v409[0] = v244;
  v408[5] = v243;
  v408[4] = v242;
  v245 = *v238;
  v246 = v238[1];
  v247 = v238[2];
  v451[3] = v238[3];
  v451[2] = v247;
  v451[1] = v246;
  v451[0] = v245;
  v248 = v238[4];
  v249 = v238[5];
  v250 = v238[6];
  *&v452[12] = *(v238 + 108);
  *v452 = v250;
  v451[5] = v249;
  v451[4] = v248;
  v453 = 1;
  v454 = BYTE13(v409[1]);
  v251 = v237;
  sub_21D539B98(v408, v448);
  sub_21D5C6D8C(v451);

  v252 = *(v51[9] + 32);
  v253 = (v252 + *((*v173 & *v252) + 0x78));
  swift_beginAccess();
  v254 = *v253;
  v255 = v253[1];
  v256 = v253[2];
  v410[3] = v253[3];
  v410[2] = v256;
  v410[1] = v255;
  v410[0] = v254;
  v257 = v253[4];
  v258 = v253[5];
  v259 = v253[6];
  *(v411 + 14) = *(v253 + 110);
  v411[0] = v259;
  v410[5] = v258;
  v410[4] = v257;
  v260 = *v253;
  v261 = v253[1];
  v262 = v253[2];
  v448[3] = v253[3];
  v448[2] = v262;
  v448[1] = v261;
  v448[0] = v260;
  v263 = v253[4];
  v264 = v253[5];
  v265 = v253[6];
  *&v449[13] = *(v253 + 109);
  *v449 = v265;
  v448[5] = v264;
  v448[4] = v263;
  v450 = v384;
  v266 = v252;
  sub_21D539B98(v410, v443);
  sub_21D5C6D8C(v448);

  v267 = *(sub_21D52E528() + 32);

  v268 = v267 + *((*v173 & *v267) + 0x78);
  swift_beginAccess();
  v269 = *v268;
  v270 = *(v268 + 1);
  v271 = *(v268 + 2);
  v412[3] = *(v268 + 3);
  v412[2] = v271;
  v412[1] = v270;
  v412[0] = v269;
  v272 = *(v268 + 4);
  v273 = *(v268 + 5);
  v274 = *(v268 + 6);
  *(v413 + 14) = *(v268 + 110);
  v413[0] = v274;
  v412[5] = v273;
  v412[4] = v272;
  v275 = *v268;
  v276 = *(v268 + 1);
  v277 = *(v268 + 2);
  v443[3] = *(v268 + 3);
  v443[2] = v277;
  v443[1] = v276;
  v443[0] = v275;
  v278 = *(v268 + 4);
  v279 = *(v268 + 5);
  v280 = *(v268 + 6);
  v444 = *(v268 + 14);
  v443[6] = v280;
  v443[5] = v279;
  v443[4] = v278;
  LODWORD(v252) = v358;
  v445 = v358;
  v281 = *(v268 + 121);
  v447 = v268[125];
  v446 = v281;
  sub_21D539B98(v412, v439);
  sub_21D5C6D8C(v443);

  v282 = *(v51[11] + 32);
  v283 = (v282 + *((*v173 & *v282) + 0x78));
  swift_beginAccess();
  v284 = *v283;
  v285 = v283[1];
  v286 = v283[2];
  v414[3] = v283[3];
  v414[2] = v286;
  v414[1] = v285;
  v414[0] = v284;
  v287 = v283[4];
  v288 = v283[5];
  v289 = v283[6];
  *(v415 + 14) = *(v283 + 110);
  v415[0] = v289;
  v414[5] = v288;
  v414[4] = v287;
  v290 = *v283;
  v291 = v283[1];
  v292 = v283[2];
  v439[3] = v283[3];
  v439[2] = v292;
  v439[1] = v291;
  v439[0] = v290;
  v293 = v283[4];
  v294 = v283[5];
  v295 = v283[6];
  *&v440[9] = *(v283 + 105);
  *v440 = v295;
  v439[5] = v294;
  v439[4] = v293;
  v296 = v252;
  v441 = v252;
  v442 = *(&v415[1] + 10);
  v297 = v282;
  sub_21D539B98(v414, v434);
  sub_21D5C6D8C(v439);

  v298 = *(v51[11] + 32);
  v299 = (v298 + *((*v173 & *v298) + 0x78));
  swift_beginAccess();
  v300 = v299[4];
  v301 = v299[5];
  v302 = *(v299 + 110);
  v422[0] = v299[6];
  v303 = *v299;
  v304 = v299[1];
  v305 = v299[2];
  v419 = v299[3];
  v418 = v305;
  v417 = v304;
  v416 = v303;
  *(v422 + 14) = v302;
  v421 = v301;
  v420 = v300;
  v306 = v298;
  sub_21D539B98(&v416, v434);

  v434[2] = v418;
  v434[3] = v419;
  v434[4] = v420;
  v434[0] = v416;
  v434[1] = v417;
  *v438 = *(v422 + 8);
  *&v438[14] = *(&v422[1] + 6);
  v435 = v421;
  v436 = v375;
  v437 = v372;
  sub_21D5C6D8C(v434);

  v307 = *(v51[11] + 32);
  v308 = (v307 + *((*v173 & *v307) + 0x78));
  swift_beginAccess();
  v309 = *v308;
  v310 = v308[1];
  v311 = v308[2];
  v423[3] = v308[3];
  v423[2] = v311;
  v423[1] = v310;
  v423[0] = v309;
  v312 = v308[4];
  v313 = v308[5];
  v314 = v308[6];
  *(v424 + 14) = *(v308 + 110);
  v424[0] = v314;
  v423[5] = v313;
  v423[4] = v312;
  v315 = *v308;
  v316 = v308[1];
  v317 = v308[2];
  v430[3] = v308[3];
  v430[2] = v317;
  v430[1] = v316;
  v430[0] = v315;
  v318 = v308[4];
  v319 = v308[5];
  v320 = v308[6];
  *&v431[12] = *(v308 + 108);
  *v431 = v320;
  v430[5] = v319;
  v430[4] = v318;
  v432 = 1;
  v433 = BYTE13(v424[1]);
  v321 = v307;
  sub_21D539B98(v423, v427);
  sub_21D5C6D8C(v430);

  v322 = *(v51[11] + 32);
  v323 = (v322 + *((*v173 & *v322) + 0x78));
  swift_beginAccess();
  v324 = *v323;
  v325 = v323[1];
  v326 = v323[2];
  v425[3] = v323[3];
  v425[2] = v326;
  v425[1] = v325;
  v425[0] = v324;
  v327 = v323[4];
  v328 = v323[5];
  v329 = v323[6];
  *(v426 + 14) = *(v323 + 110);
  v426[0] = v329;
  v425[5] = v328;
  v425[4] = v327;
  v330 = *v323;
  v331 = v323[1];
  v332 = v323[2];
  v427[3] = v323[3];
  v427[2] = v332;
  v427[1] = v331;
  v427[0] = v330;
  v333 = v323[4];
  v334 = v323[5];
  v335 = v323[6];
  *&v428[13] = *(v323 + 109);
  *v428 = v335;
  v427[5] = v334;
  v427[4] = v333;
  v336 = v361;
  v429 = v361;
  v337 = v322;
  sub_21D539B98(v425, &v387);
  sub_21D5C6D8C(v427);

  sub_21D539CB4(v359, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  if (v360 != 1)
  {
  }

  v49 = 0;
  v50 = v384 ^ 1;
  v47 = v336 ^ 1u;
  v48 = v296 ^ 1u;
LABEL_55:
  sub_21D52E424();
  sub_21D5D3E3C(v49);

  sub_21D52E4C8();
  sub_21D5D3E3C(v50);

  sub_21D52E528();
  sub_21D5D3E3C(v49);

  sub_21D52E5CC();
  sub_21D5D3E3C(v47);

  sub_21D52E62C();
  sub_21D5D3E3C(v48);

  sub_21D52E68C();
  sub_21D5D3E3C(v47);
}

uint64_t sub_21D530D58(uint64_t a1, __int16 a2)
{
  v4 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v4);
  v166 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v154 - v7;
  v9 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v167 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v154 - v13;
  sub_21D0D3954(a1, v8, &qword_27CE5D998);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5D998);
LABEL_7:
    v19 = 1;
    v20 = 1;
    v21 = 1;
    goto LABEL_8;
  }

  sub_21D539B30(v8, v14, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  if ((a2 & 0x2000) != 0)
  {
    sub_21D539CB4(v14, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    goto LABEL_7;
  }

  v15 = v167;
  sub_21D539D14(v14, v167, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  v18 = v168;
  if (v17 == 1)
  {
    sub_21D539CB4(v14, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v19 = 1;
    v20 = 1;
    v21 = 1;
LABEL_8:
    sub_21D52E74C();
    sub_21D5D3E3C(v21);

    sub_21D52E7AC();
    sub_21D5D3E3C(v20 & 1);

    sub_21D52E80C();
    sub_21D5D3E3C(v19);
  }

  v23 = v166;
  sub_21D539B30(v15, v166, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  v24 = v23 + v4[8];
  v25 = *(v24 + 16);
  v26 = *(v23 + v4[9]);
  v19 = *(v23 + v4[11]) != 2;
  if (v25 == 2)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v24;
  }

  if (v25 == 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v24 + 8);
  }

  if (v26 != 1)
  {
    sub_21D539CB4(v23, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D539CB4(v14, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v19 = 1;
    v20 = 1;
LABEL_59:
    sub_21D0CF7E0(v15 + *(v16 + 64), &unk_27CE628E0);
    v21 = v26 ^ 1u;
    goto LABEL_8;
  }

  v29 = *(v23 + v4[5]);
  if ((v25 & 1) == 0)
  {
    v19 = 1;
LABEL_58:
    *&v213 = v27;
    *(&v213 + 1) = v28;
    LOBYTE(v214) = v25 & 1;
    sub_21D5337A0(&v213, v29);
    sub_21D539CB4(v23, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D539CB4(v14, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v20 = v25 ^ 1;
    goto LABEL_59;
  }

  v164 = v28;
  v165 = v27;
  v30 = *(v23 + v4[10]);
  v161 = 1;
  v159 = v29;
  if (v30)
  {
    v163 = [objc_opt_self() ttr_systemRedColor];
  }

  else
  {
    v163 = 0;
  }

  sub_21D52E80C();

  v31 = *(*(v18 + 136) + 32);
  v32 = v165;
  sub_21D5C732C(v165, v164, 1);

  v33 = *(sub_21D52E7AC() + 32);

  v162 = v14;
  v160 = v25;
  v158 = v30;
  if (v32 < 0)
  {
    result = -v32;
    if (__OFSUB__(0, v32))
    {
      __break(1u);
      goto LABEL_61;
    }

    v34 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(result, v164);
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF516C();
  }

  v156 = v35;
  v157 = v34;
  v36 = MEMORY[0x277D85000];
  v37 = v33 + *((*MEMORY[0x277D85000] & *v33) + 0x78);
  swift_beginAccess();
  v38 = *(v37 + 1);
  v205 = *v37;
  v206 = v38;
  v39 = *(v37 + 2);
  v40 = *(v37 + 3);
  v41 = *(v37 + 5);
  v209 = *(v37 + 4);
  v210 = v41;
  v207 = v39;
  v208 = v40;
  v42 = *(v37 + 6);
  v43 = *(v37 + 7);
  v44 = *(v37 + 9);
  v212[1] = *(v37 + 8);
  v212[2] = v44;
  v211 = v42;
  v212[0] = v43;
  v45 = *(v37 + 10);
  v46 = *(v37 + 11);
  v47 = *(v37 + 12);
  *&v212[6] = *(v37 + 26);
  v212[4] = v46;
  v212[5] = v47;
  v212[3] = v45;
  sub_21D313A94(&v205, v272);

  v272[4] = v209;
  v272[5] = v210;
  v272[0] = v205;
  v272[1] = v206;
  v272[2] = v207;
  v272[3] = v208;
  v277 = *(&v212[1] + 8);
  v276 = *(v212 + 8);
  v281 = *(&v212[5] + 8);
  v280 = *(&v212[4] + 8);
  v279 = *(&v212[3] + 8);
  v278 = *(&v212[2] + 8);
  v273 = v211;
  v274 = v157;
  v275 = v156;
  sub_21D5C62E8(v272);

  v48 = v168;
  v49 = *(*(v168 + 128) + 32);
  v50 = v49 + *((*v36 & *v49) + 0x78);
  swift_beginAccess();
  v51 = *(v50 + 1);
  v213 = *v50;
  v214 = v51;
  v52 = *(v50 + 2);
  v53 = *(v50 + 3);
  v54 = *(v50 + 5);
  v217 = *(v50 + 4);
  v218 = v54;
  v215 = v52;
  v216 = v53;
  v55 = *(v50 + 6);
  v56 = *(v50 + 7);
  v57 = *(v50 + 9);
  v221 = *(v50 + 8);
  v222 = v57;
  v219 = v55;
  v220 = v56;
  v58 = *(v50 + 10);
  v59 = *(v50 + 11);
  v60 = *(v50 + 12);
  v226 = *(v50 + 26);
  v224 = v59;
  v225 = v60;
  v223 = v58;
  v61 = *(&v220 + 1);
  v62 = v163;
  v157 = v163;
  v63 = v49;
  sub_21D313A94(&v213, v263);

  v271 = v226;
  v263[4] = v217;
  v263[5] = v218;
  v263[6] = v219;
  v263[0] = v213;
  v263[1] = v214;
  v263[2] = v215;
  v263[3] = v216;
  v266 = v221;
  v267 = v222;
  v269 = v224;
  v270 = v225;
  v268 = v223;
  v264 = v220;
  v265 = v62;
  sub_21D5C62E8(v263);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_21DC08D00;
  if ((v165 & 0x8000000000000000) == 0)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v65 = sub_21DBF516C();
    goto LABEL_34;
  }

  result = -v165;
  if (!__OFSUB__(0, v165))
  {
    v65 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(result, v164);
LABEL_34:
    *(v64 + 32) = v65;
    *(v64 + 40) = v66;
    v155 = v16;
    if (v158)
    {
      if (qword_27CE57508 != -1)
      {
        swift_once();
      }

      v68 = qword_27CE67100;
      v67 = *algn_27CE67108;
      v69 = v64;
      v70 = *(v64 + 16);
      v71 = *(v64 + 24);
      sub_21DBF8E0C();
      if (v70 >= v71 >> 1)
      {
        v69 = sub_21D210A84((v71 > 1), v70 + 1, 1, v69);
      }

      v64 = v69;
      *(v69 + 2) = v70 + 1;
      v72 = &v69[16 * v70];
      *(v72 + 4) = v68;
      *(v72 + 5) = v67;
      v48 = v168;
      v73 = *(*(v168 + 128) + 32);
      v74 = v73 + *((*MEMORY[0x277D85000] & *v73) + 0x78);
      swift_beginAccess();
      v75 = *(v74 + 1);
      v238 = *v74;
      v239 = v75;
      v76 = *(v74 + 2);
      v77 = *(v74 + 3);
      v78 = *(v74 + 5);
      v242 = *(v74 + 4);
      v243 = v78;
      v240 = v76;
      v241 = v77;
      v79 = *(v74 + 6);
      v80 = *(v74 + 7);
      v81 = *(v74 + 9);
      v246 = *(v74 + 8);
      v247 = v81;
      v244 = v79;
      v245 = v80;
      v82 = *(v74 + 10);
      v83 = *(v74 + 11);
      v84 = *(v74 + 12);
      *&v248[3] = *(v74 + 26);
      v248[1] = v83;
      v248[2] = v84;
      v248[0] = v82;
      v85 = v73;
      sub_21D313A94(&v238, &v249);

      v259 = v248[0];
      v260 = v248[1];
      v261 = *&v248[2];
      v255 = v244;
      v256 = v245;
      v257 = v246;
      v258 = v247;
      v251 = v240;
      v252 = v241;
      v253 = v242;
      v254 = v243;
      v249 = v238;
      v250 = v239;
      v262 = xmmword_21DC1A0E0;
    }

    else
    {
      v86 = *(*(v48 + 128) + 32);
      v87 = v86 + *((*MEMORY[0x277D85000] & *v86) + 0x78);
      swift_beginAccess();
      v88 = *(v87 + 1);
      v238 = *v87;
      v239 = v88;
      v89 = *(v87 + 2);
      v90 = *(v87 + 3);
      v91 = *(v87 + 5);
      v242 = *(v87 + 4);
      v243 = v91;
      v240 = v89;
      v241 = v90;
      v92 = *(v87 + 6);
      v93 = *(v87 + 7);
      v94 = *(v87 + 9);
      v246 = *(v87 + 8);
      v247 = v94;
      v244 = v92;
      v245 = v93;
      v95 = *(v87 + 10);
      v96 = *(v87 + 11);
      v97 = *(v87 + 12);
      *&v248[3] = *(v87 + 26);
      v248[1] = v96;
      v248[2] = v97;
      v248[0] = v95;
      v85 = v86;
      sub_21D313A94(&v238, &v249);

      v259 = v248[0];
      v260 = v248[1];
      v255 = v244;
      v256 = v245;
      v257 = v246;
      v258 = v247;
      v251 = v240;
      v252 = v241;
      v253 = v242;
      v254 = v243;
      v249 = v238;
      v250 = v239;
      v261 = *&v248[2];
      v262 = 0uLL;
    }

    sub_21D5C62E8(&v249);

    v163 = v64;
    v98 = *(*(v48 + 128) + 32);
    *&v238 = v64;
    v99 = qword_280D1B938;
    v100 = v98;
    v23 = v166;
    if (v99 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v101 = sub_21DBFA07C();
    v103 = v102;

    v104 = v100 + *((*MEMORY[0x277D85000] & *v100) + 0x78);
    swift_beginAccess();
    v105 = *(v104 + 1);
    v194 = *v104;
    v195 = v105;
    v106 = *(v104 + 2);
    v107 = *(v104 + 3);
    v108 = *(v104 + 5);
    v198 = *(v104 + 4);
    v199 = v108;
    v196 = v106;
    v197 = v107;
    v109 = *(v104 + 6);
    v110 = *(v104 + 7);
    v111 = *(v104 + 9);
    v202 = *(v104 + 8);
    v203 = v111;
    v200 = v109;
    v201 = v110;
    v112 = *(v104 + 10);
    v113 = *(v104 + 11);
    v114 = *(v104 + 12);
    *&v204[3] = *(v104 + 26);
    v204[1] = v113;
    v204[2] = v114;
    v204[0] = v112;
    sub_21D313A94(&v194, &v238);

    v244 = v200;
    v245 = v201;
    v246 = v202;
    v240 = v196;
    v241 = v197;
    v242 = v198;
    v243 = v199;
    v238 = v194;
    v239 = v195;
    *(v248 + 8) = *(v204 + 8);
    *(&v248[1] + 8) = *(&v204[1] + 8);
    *(&v248[2] + 8) = *(&v204[2] + 8);
    *&v247 = v203;
    *(&v247 + 1) = v101;
    *&v248[0] = v103;
    sub_21D5C62E8(&v238);

    v115 = v168;
    v116 = *(v168 + 136);
    v117 = *(*(v168 + 128) + 32);
    swift_beginAccess();
    if (*(v116 + 49) == 1)
    {
      v118 = qword_27CE57240;
      v119 = v117;
      v16 = v155;
      if (v118 != -1)
      {
        swift_once();
      }

      v120 = &qword_27CE66C20;
    }

    else
    {
      v121 = qword_280D1AAE8;
      v122 = v117;
      v16 = v155;
      if (v121 != -1)
      {
        swift_once();
      }

      v120 = &qword_280D1AAF0;
    }

    v123 = v120[1];
    v163 = *v120;
    sub_21DBF8E0C();
    v124 = v117 + *((*MEMORY[0x277D85000] & *v117) + 0x78);
    swift_beginAccess();
    v125 = *(v124 + 1);
    v182 = *v124;
    v183 = v125;
    v126 = *(v124 + 2);
    v127 = *(v124 + 3);
    v128 = *(v124 + 5);
    v186 = *(v124 + 4);
    v187 = v128;
    v184 = v126;
    v185 = v127;
    v129 = *(v124 + 6);
    v130 = *(v124 + 7);
    v131 = *(v124 + 9);
    v190 = *(v124 + 8);
    v191 = v131;
    v188 = v129;
    v189 = v130;
    v132 = *(v124 + 10);
    v133 = *(v124 + 11);
    v134 = *(v124 + 12);
    *&v193[2] = *(v124 + 26);
    v193[0] = v133;
    v193[1] = v134;
    v192 = v132;
    sub_21D313A94(&v182, v232);

    v232[8] = v190;
    v232[9] = v191;
    v232[4] = v186;
    v232[5] = v187;
    v232[6] = v188;
    v232[7] = v189;
    v232[0] = v182;
    v232[1] = v183;
    v232[2] = v184;
    v232[3] = v185;
    v236 = *(v193 + 8);
    v237 = *(&v193[1] + 8);
    v233 = v192;
    v234 = v163;
    v235 = v123;
    sub_21D5C62E8(v232);

    v135 = *(v115 + 136);
    v136 = *(*(v115 + 128) + 32);
    swift_beginAccess();
    if (*(v135 + 49) == 1)
    {
      v137 = qword_27CE57278;
      v138 = v136;
      LOBYTE(v25) = v160;
      if (v137 != -1)
      {
        swift_once();
      }

      v139 = &qword_27CE66C70;
    }

    else
    {
      v140 = qword_280D1AA90;
      v141 = v136;
      LOBYTE(v25) = v160;
      if (v140 != -1)
      {
        swift_once();
      }

      v139 = &qword_280D1AA98;
    }

    v142 = v139[1];
    v163 = *v139;
    sub_21DBF8E0C();
    v143 = v136 + *((*MEMORY[0x277D85000] & *v136) + 0x78);
    swift_beginAccess();
    v144 = *(v143 + 1);
    v169 = *v143;
    v170 = v144;
    v145 = *(v143 + 2);
    v146 = *(v143 + 3);
    v147 = *(v143 + 5);
    v173 = *(v143 + 4);
    v174 = v147;
    v171 = v145;
    v172 = v146;
    v148 = *(v143 + 6);
    v149 = *(v143 + 7);
    v150 = *(v143 + 9);
    v177 = *(v143 + 8);
    v178 = v150;
    v176 = v149;
    v175 = v148;
    v151 = *(v143 + 10);
    v152 = *(v143 + 11);
    v153 = *(v143 + 12);
    *&v181[1] = *(v143 + 26);
    v180 = v152;
    v181[0] = v153;
    v179 = v151;
    sub_21D313A94(&v169, v227);

    v227[8] = v177;
    v227[9] = v178;
    v227[10] = v179;
    v227[4] = v173;
    v227[5] = v174;
    v227[6] = v175;
    v227[7] = v176;
    v227[0] = v169;
    v227[1] = v170;
    v227[2] = v171;
    v227[3] = v172;
    v231 = *(v181 + 8);
    v228 = v180;
    v229 = v163;
    v230 = v142;
    sub_21D5C62E8(v227);

    v15 = v167;
    v14 = v162;
    v26 = v161;
    v28 = v164;
    v27 = v165;
    LOBYTE(v29) = v159;
    goto LABEL_58;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_21D531E10(uint64_t a1, uint64_t a2)
{
  v226 = a2;
  v4 = sub_21DBF5C4C();
  v209 = *(v4 - 8);
  v210 = v4;
  MEMORY[0x28223BE20](v4);
  v208 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v211);
  v212 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v213 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v214 = &v206 - v10;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  v219 = v11;
  v220 = v12;
  MEMORY[0x28223BE20](v11);
  v215 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v221 = *(v14 - 8);
  v222 = v14;
  MEMORY[0x28223BE20](v14);
  v216 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v218 = (&v206 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  MEMORY[0x28223BE20](v18 - 8);
  v217 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v206 - v21;
  MEMORY[0x28223BE20](v23);
  v223 = &v206 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v206 - v26;
  v28 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v225 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v206 - v32;
  v227 = v2;
  v224 = sub_21D52E86C();
  sub_21D0D3954(a1, v27, &qword_27CE5D998);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_21D0CF7E0(v27, &qword_27CE5D998);
LABEL_7:
    v38 = 1;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    goto LABEL_8;
  }

  sub_21D539B30(v27, v33, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  if ((v226 & 0x1000) != 0)
  {
    sub_21D539CB4(v33, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    goto LABEL_7;
  }

  v34 = v225;
  sub_21D539D14(v33, v225, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v36 = (*(*(v35 - 1) + 48))(v34, 1, v35);
  v37 = v227;
  if (v36 == 1)
  {
    sub_21D539CB4(v33, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v38 = 1;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
  }

  else
  {
    v226 = v33;
    v45 = v34 + v35[12];
    v206 = *v45;
    v207 = *(v45 + 8);
    v47 = *(v45 + 16);
    v46 = *(v45 + 24);
    v48 = *(v45 + 40);
    v49 = v35[16];
    v50 = *(v34 + v35[20]);
    v51 = v223;
    sub_21D539AA8(v34 + v49, v223);
    if (v224)
    {
      v208 = v47;
      v210 = v48;
      v213 = v46;
      v52 = v50;
      v53 = *(sub_21D52E8E4() + 32);

      v54 = MEMORY[0x277D85000];
      v55 = (v53 + *((*MEMORY[0x277D85000] & *v53) + 0x78));
      swift_beginAccess();
      v56 = *v55;
      v57 = v55[1];
      v58 = v55[2];
      v273 = v55[3];
      v272 = v58;
      v271 = v57;
      v270 = v56;
      v59 = v55[4];
      v60 = v55[5];
      v61 = v55[6];
      *(v276 + 9) = *(v55 + 105);
      v276[0] = v61;
      v275 = v60;
      v274 = v59;
      v62 = v55[1];
      v243 = *v55;
      v244 = v62;
      v63 = v55[2];
      v64 = v55[3];
      v65 = v55[4];
      v66 = v55[5];
      v249 = *(v55 + 12);
      v247 = v65;
      v248 = v66;
      v245 = v63;
      v246 = v64;
      v67 = BYTE8(v276[1]);
      sub_21D0D3954(&v270, &v298, &unk_27CE5EA10);

      if (v52)
      {
        v68 = 11;
      }

      else
      {
        v68 = v206;
      }

      v69 = sub_21D538F58(v207);

      v70 = *(v37[19] + 32);
      v277 = v243;
      v278 = v244;
      v281 = v247;
      v282 = v248;
      v280 = v246;
      v279 = v245;
      *&v283 = v249;
      *(&v283 + 1) = v69;
      *&v284 = v68;
      LODWORD(v209) = v67;
      BYTE8(v284) = v67;
      v71 = v70;
      sub_21D0D3954(&v277, &v298, &unk_27CE5EA10);
      sub_21D5C74B4(&v277);

      LODWORD(v218) = v52;
      if (v52)
      {
        v72 = *(sub_21D52E944() + 32);

        v73 = v72 + *((*v54 & *v72) + 0x78);
        swift_beginAccess();
        v74 = *v73;
        v293 = *(v73 + 1);
        v292 = v74;
        v75 = *(v73 + 2);
        v76 = *(v73 + 3);
        v77 = *(v73 + 4);
        v297[0] = *(v73 + 5);
        v296 = v77;
        v295 = v76;
        v294 = v75;
        v78 = *(v73 + 6);
        v79 = *(v73 + 7);
        v80 = *(v73 + 8);
        v297[4] = *(v73 + 9);
        v297[3] = v80;
        v297[2] = v79;
        v297[1] = v78;
        v81 = *(v73 + 10);
        v82 = *(v73 + 11);
        v83 = *(v73 + 12);
        *&v297[8] = *(v73 + 26);
        v297[7] = v83;
        v297[6] = v82;
        v297[5] = v81;
        v84 = v54;
        v85 = v213;
        sub_21DBF8E0C();
        sub_21D313A94(&v292, &v298);

        v300 = v294;
        v301 = v295;
        v299 = v293;
        v298 = v292;
        v307 = *(&v297[4] + 8);
        v308 = *(&v297[5] + 8);
        v309 = *(&v297[6] + 8);
        v310 = *(&v297[7] + 8);
        *&v303[8] = *(v297 + 8);
        v304 = *(&v297[1] + 8);
        v305 = *(&v297[2] + 8);
        v306 = *(&v297[3] + 8);
        *&v302 = v296;
        *(&v302 + 1) = v208;
        *v303 = v85;
        sub_21D5C62E8(&v298);

        v86 = v222;
        v87 = v223;
        v54 = v84;
      }

      else
      {

        v86 = v222;
        v87 = v223;
      }

      v102 = v217;
      v296 = v247;
      v297[0] = v248;
      v292 = v243;
      v293 = v244;
      v295 = v246;
      v294 = v245;
      *&v297[1] = v249;
      *(&v297[1] + 1) = v69;
      *&v297[2] = v68;
      BYTE8(v297[2]) = v209;
      sub_21D0CF7E0(&v292, &unk_27CE5EA10);
      sub_21D0D3954(v87, v102, &unk_27CE628E0);
      if ((*(v221 + 48))(v102, 1, v86) == 1)
      {
        sub_21D0CF7E0(v87, &unk_27CE628E0);
        sub_21D539CB4(v226, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
        sub_21D0CF7E0(v102, &unk_27CE628E0);
        v38 = 1;
        v40 = 1;
        v41 = 1;
        v39 = v224;
      }

      else
      {
        v127 = v216;
        sub_21D539B30(v102, v216, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
        v128 = *(sub_21D52E9A4() + 32);

        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v129 = sub_21DBF516C();
        v221 = 0x800000021DC547E0;
        v130 = v129;
        v132 = v131;
        v133 = v128 + *((*v54 & *v128) + 0x78);
        swift_beginAccess();
        v134 = *(v133 + 6);
        v135 = *(v133 + 56);
        v136 = *(v133 + 4);
        v242[0] = *(v133 + 5);
        v137 = *v133;
        v138 = *(v133 + 1);
        v139 = *(v133 + 3);
        v239 = *(v133 + 2);
        v240 = v139;
        v237 = v137;
        v238 = v138;
        LOWORD(v242[2]) = v135;
        v242[1] = v134;
        v241 = v136;
        sub_21D0D3954(&v237, &v264, &qword_27CE5D9A0);

        v267 = v240;
        v265 = v238;
        v266 = v239;
        v264 = v237;
        *(v269 + 8) = *(v242 + 8);
        *(&v269[1] + 2) = *(&v242[1] + 2);
        *&v268 = v241;
        *(&v268 + 1) = v130;
        *&v269[0] = v132;
        sub_21D5C74DC(&v264);

        v140 = v214;
        sub_21D0D3954(v127 + *(v222 + 20), v214, &qword_27CE58D68);
        v142 = v219;
        v141 = v220;
        v143 = (*(v220 + 48))(v140, 1, v219);
        v40 = v143 == 1;
        if (v143 == 1)
        {
          v144 = v127;
          sub_21D0CF7E0(v140, &qword_27CE58D68);
          v145 = *(v37[22] + 32);
          v146 = v145 + *((*v54 & *v145) + 0x78);
          swift_beginAccess();
          v147 = *v146;
          v148 = *(v146 + 1);
          v149 = *(v146 + 3);
          v231 = *(v146 + 2);
          v232 = v149;
          v229 = v147;
          v230 = v148;
          v150 = *(v146 + 4);
          v151 = *(v146 + 5);
          v152 = *(v146 + 6);
          v236 = *(v146 + 56);
          v234 = v151;
          v235 = v152;
          v233 = v150;
          v153 = *v146;
          v154 = *(v146 + 2);
          v251 = *(v146 + 1);
          v252 = v154;
          v250 = v153;
          v155 = *(v146 + 3);
          v156 = *(v146 + 4);
          v157 = *(v146 + 6);
          v255 = *(v146 + 5);
          v256 = v157;
          v253 = v155;
          v254 = v156;
          LOBYTE(v257) = 0;
          BYTE1(v257) = HIBYTE(v236);
          v158 = v145;
          sub_21D0D3954(&v229, v228, &qword_27CE5D9A0);
          sub_21D5C74DC(&v250);

          v205 = v144;
        }

        else
        {
          (*(v141 + 32))(v215, v140, v142);
          v177 = *(v37[22] + 32);
          v178 = v177 + *((*v54 & *v177) + 0x78);
          swift_beginAccess();
          v179 = *v178;
          v180 = *(v178 + 1);
          v181 = *(v178 + 3);
          v231 = *(v178 + 2);
          v232 = v181;
          v229 = v179;
          v230 = v180;
          v182 = *(v178 + 4);
          v183 = *(v178 + 5);
          v184 = *(v178 + 6);
          v236 = *(v178 + 56);
          v234 = v183;
          v235 = v184;
          v233 = v182;
          v185 = *v178;
          v186 = *(v178 + 2);
          v251 = *(v178 + 1);
          v252 = v186;
          v250 = v185;
          v187 = *(v178 + 3);
          v188 = *(v178 + 4);
          v189 = *(v178 + 6);
          v255 = *(v178 + 5);
          v256 = v189;
          v253 = v187;
          v254 = v188;
          LOBYTE(v257) = 1;
          BYTE1(v257) = HIBYTE(v236);
          v190 = v177;
          sub_21D0D3954(&v229, v228, &qword_27CE5D9A0);
          sub_21D5C74DC(&v250);

          v191 = *(sub_21D52EA04() + 32);

          v192 = sub_21DBF516C();
          v194 = v193;
          v195 = MEMORY[0x277D85000];
          v196 = *((*MEMORY[0x277D85000] & *v191) + 0x78);
          swift_beginAccess();
          v197 = v212;
          sub_21D539D14(v191 + v196, v212, type metadata accessor for TTRITitledDatePickerCellContentState);

          *(v197 + 72) = v192;
          *(v197 + 80) = v194;
          sub_21D5C7798(v197);

          v198 = *(v227[23] + 32);
          v199 = *((*v195 & *v198) + 0x78);
          swift_beginAccess();
          sub_21D539D14(v198 + v199, v197, type metadata accessor for TTRITitledDatePickerCellContentState);
          v200 = *(v211 + 24);
          v201 = v220;
          v202 = *(v220 + 24);
          v203 = v198;
          v204 = v215;
          v202(v197 + v200, v215, v142);
          sub_21D5C7798(v197);

          (*(v201 + 8))(v204, v142);
          v205 = v216;
        }

        sub_21D539CB4(v205, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
        sub_21D0CF7E0(v223, &unk_27CE628E0);
        sub_21D539CB4(v226, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
        v39 = v224;
        v41 = 0;
        v38 = 1;
      }

      v101 = v218;
    }

    else
    {
      v88 = *(sub_21D52EA64() + 32);

      v89 = v88 + *((*MEMORY[0x277D85000] & *v88) + 0x78);
      swift_beginAccess();
      v90 = *v89;
      v271 = *(v89 + 1);
      v270 = v90;
      v91 = *(v89 + 2);
      v92 = *(v89 + 3);
      v93 = *(v89 + 4);
      v275 = *(v89 + 5);
      v274 = v93;
      v273 = v92;
      v272 = v91;
      v94 = *(v89 + 6);
      v95 = *(v89 + 7);
      v96 = *(v89 + 8);
      v276[3] = *(v89 + 9);
      v276[2] = v96;
      v276[1] = v95;
      v276[0] = v94;
      v97 = *(v89 + 10);
      v98 = *(v89 + 11);
      v99 = *(v89 + 12);
      *&v276[7] = *(v89 + 26);
      v276[6] = v99;
      v276[5] = v98;
      v276[4] = v97;
      sub_21DBF8E0C();
      sub_21D313A94(&v270, &v298);

      v302 = v274;
      *v303 = v275;
      v298 = v270;
      v299 = v271;
      v301 = v273;
      v300 = v272;
      v306 = *(&v276[2] + 8);
      v305 = *(&v276[1] + 8);
      v310 = *(&v276[6] + 8);
      v309 = *(&v276[5] + 8);
      v308 = *(&v276[4] + 8);
      v307 = *(&v276[3] + 8);
      *&v303[16] = *&v276[0];
      *&v304 = v47;
      *(&v304 + 1) = v46;
      sub_21D5C62E8(&v298);

      sub_21D0D3954(v51, v22, &unk_27CE628E0);
      v100 = v222;
      if ((*(v221 + 48))(v22, 1, v222) == 1)
      {
        sub_21D0CF7E0(v51, &unk_27CE628E0);
        sub_21D539CB4(v226, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
        sub_21D0CF7E0(v22, &unk_27CE628E0);
        v101 = 0;
        v38 = 1;
        v40 = 1;
        v41 = 1;
        v39 = v224;
      }

      else
      {
        v103 = v218;
        sub_21D539B30(v22, v218, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
        v104 = *(sub_21D52EAFC() + 32);

        v106 = *v103;
        v105 = v103[1];
        v107 = MEMORY[0x277D85000];
        v108 = v104 + *((*MEMORY[0x277D85000] & *v104) + 0x78);
        swift_beginAccess();
        v109 = *(v108 + 1);
        v264 = *v108;
        v265 = v109;
        v110 = *(v108 + 2);
        v111 = *(v108 + 3);
        v112 = *(v108 + 4);
        v269[0] = *(v108 + 5);
        v268 = v112;
        v267 = v111;
        v266 = v110;
        v113 = *(v108 + 6);
        v114 = *(v108 + 7);
        v115 = *(v108 + 8);
        v269[4] = *(v108 + 9);
        v269[3] = v115;
        v269[2] = v114;
        v269[1] = v113;
        v116 = *(v108 + 10);
        v117 = *(v108 + 11);
        v118 = *(v108 + 12);
        *&v269[8] = *(v108 + 26);
        v269[7] = v118;
        v269[6] = v117;
        v269[5] = v116;
        sub_21DBF8E0C();
        sub_21D313A94(&v264, &v292);

        v296 = v268;
        v297[0] = v269[0];
        v292 = v264;
        v293 = v265;
        v295 = v267;
        v294 = v266;
        *(&v297[3] + 8) = *(&v269[3] + 8);
        *(&v297[2] + 8) = *(&v269[2] + 8);
        *(&v297[7] + 8) = *(&v269[7] + 8);
        *(&v297[6] + 8) = *(&v269[6] + 8);
        *(&v297[5] + 8) = *(&v269[5] + 8);
        *(&v297[4] + 8) = *(&v269[4] + 8);
        *&v297[1] = *&v269[1];
        *(&v297[1] + 1) = v106;
        *&v297[2] = v105;
        sub_21D5C62E8(&v292);

        v119 = *(v37[24] + 32);
        v120 = v213;
        sub_21D0D3954(v103 + *(v100 + 20), v213, &qword_27CE58D68);
        v122 = v219;
        v121 = v220;
        v123 = (*(v220 + 48))(v120, 1, v219);
        v39 = v224;
        if (v123 == 1)
        {
          v124 = v119;
          sub_21D0CF7E0(v120, &qword_27CE58D68);
          v125 = 0;
          v126 = 0;
        }

        else
        {
          v159 = v121;
          v160 = objc_opt_self();
          v161 = v119;
          v162 = [v160 defaultTimeZone];
          v163 = v208;
          sub_21DBF5C2C();

          v125 = sub_21D7A2624(v163);
          v126 = v164;
          v165 = v163;
          v107 = MEMORY[0x277D85000];
          (*(v209 + 8))(v165, v210);
          (*(v159 + 8))(v120, v122);
        }

        v166 = v119 + *((*v107 & *v119) + 0x78);
        swift_beginAccess();
        v167 = *(v166 + 1);
        v250 = *v166;
        v251 = v167;
        v168 = *(v166 + 2);
        v169 = *(v166 + 3);
        v170 = *(v166 + 5);
        v254 = *(v166 + 4);
        v255 = v170;
        v252 = v168;
        v253 = v169;
        v171 = *(v166 + 6);
        v172 = *(v166 + 7);
        v173 = *(v166 + 9);
        v258 = *(v166 + 8);
        v259 = v173;
        v256 = v171;
        v257 = v172;
        v174 = *(v166 + 10);
        v175 = *(v166 + 11);
        v176 = *(v166 + 12);
        v263 = *(v166 + 26);
        v261 = v175;
        v262 = v176;
        v260 = v174;
        sub_21D313A94(&v250, &v277);

        v281 = v254;
        v282 = v255;
        v283 = v256;
        v284 = v257;
        v277 = v250;
        v278 = v251;
        v279 = v252;
        v280 = v253;
        v291 = v263;
        v290 = v262;
        v289 = v261;
        v287 = v259;
        v288 = v260;
        v285 = v125;
        v286 = v126;
        sub_21D5C62E8(&v277);

        sub_21D539CB4(v218, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
        sub_21D0CF7E0(v223, &unk_27CE628E0);
        sub_21D539CB4(v226, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
        v38 = 0;
        v101 = 0;
        v40 = 1;
        v41 = 1;
      }
    }

    sub_21D539CB4(v225, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v43 = v39 ^ 1;
    v42 = v101 ^ 1u;
  }

LABEL_8:
  sub_21D52E8E4();
  sub_21D5D3E3C(v43 & 1);

  sub_21D52E944();
  sub_21D5D3E3C(v42);

  sub_21D52E9A4();
  sub_21D5D3E3C(v41);

  sub_21D52EA04();
  sub_21D5D3E3C(v40);

  sub_21D52EA64();
  sub_21D5D3E3C(v39 & 1);

  sub_21D52EAFC();
  sub_21D5D3E3C(v38);
}