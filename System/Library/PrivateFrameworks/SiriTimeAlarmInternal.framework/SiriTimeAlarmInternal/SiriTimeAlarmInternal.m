uint64_t sub_269271E40()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269271E80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271EC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271F24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271F64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271FA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272018()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26927206C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2692721E4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2692722C8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26927237C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_2692C7430();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[14];

  return v17(v18, a2, v16);
}

uint64_t sub_2692725A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_2692C7430();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[14];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2692727D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_269272890(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269272940(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_2692C7430();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_269272AC4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_2692C7430();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_269272C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
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

    return (v10 + 1);
  }
}

uint64_t sub_269272D14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269272DE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272E1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272E54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269272EA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269272EE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272F40()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269272F8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26927309C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269273130()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26927318C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2692731CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269273214()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 8);

  v8 = sub_2692C7310();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *&v0[v10 + 8];

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_26927339C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2692734A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skipConfirmation];
  *a2 = result;
  return result;
}

uint64_t sub_2692734F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_26927365C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skipConfirmation];
  *a2 = result;
  return result;
}

uint64_t sub_2692736AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273758@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relativeOffsetInMinutes];
  *a2 = result;
  return result;
}

id sub_2692737C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isMeridianInferred];
  *a2 = result;
  return result;
}

id sub_269273810@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 createdAlarm];
  *a2 = result;
  return result;
}

id sub_269273860@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 successCode];
  *a2 = result;
  return result;
}

uint64_t sub_2692738A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273900(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_26927395C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

id sub_2692739EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operation];
  *a2 = result;
  return result;
}

id sub_269273A34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 handleSilently];
  *a2 = result;
  return result;
}

uint64_t sub_269273AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273B1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273B70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

id sub_269273BC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarm];
  *a2 = result;
  return result;
}

id sub_269273C10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operation];
  *a2 = result;
  return result;
}

id sub_269273C68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proposedMeridiemSetByUser];
  *a2 = result;
  return result;
}

id sub_269273CC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updatedAlarm];
  *a2 = result;
  return result;
}

uint64_t sub_269273D10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273D68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273DBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

uint64_t sub_269273E14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273E6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273EC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

id sub_269273F10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearchType];
  *a2 = result;
  return result;
}

uint64_t sub_269273F60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273FB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269274014@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 enabled];
  *a2 = result;
  return result;
}

id sub_269274064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 firing];
  *a2 = result;
  return result;
}

id sub_2692740BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sleepAlarmAttribute];
  *a2 = result;
  return result;
}

id sub_269274114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 undoable];
  *a2 = result;
  return result;
}

id sub_269274164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 override];
  *a2 = result;
  return result;
}

id sub_2692741C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearchStatus];
  *a2 = result;
  return result;
}

id sub_26927420C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 includeSleepAlarm];
  *a2 = result;
  return result;
}

id sub_26927425C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 period];
  *a2 = result;
  return result;
}

id sub_2692742A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isMeridianInferred];
  *a2 = result;
  return result;
}

id sub_2692742F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmReferenceType];
  *a2 = result;
  return result;
}

id sub_26927434C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeRange];
  *a2 = result;
  return result;
}

id sub_26927439C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 repeatSchedule];
  *a2 = result;
  return result;
}

uint64_t sub_2692743E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_269274440(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_26927444C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302AA8);
  v1 = __swift_project_value_buffer(v0, qword_280302AA8);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SearchAlarmIntentHandler.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_26927594C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
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

id SearchAlarmIntentHandler.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_269275850(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id SearchAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchAlarmIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v14);
  v0 = type metadata accessor for SiriAlarmManagerImpl();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v5 = swift_allocObject();
  *(v3 + v4) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v7 = qword_280303380;
  *(v3 + v6) = qword_280303380;
  sub_269275A30(&v14, v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v8 = type metadata accessor for SearchAlarmIntentHandler();
  v9 = objc_allocWithZone(v8);
  v15 = v0;
  v16 = &protocol witness table for SiriAlarmManagerImpl;
  *&v14 = v3;
  *&v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject] = v7;
  sub_269275A6C(&v14, &v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

uint64_t sub_2692748B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2692C77A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2692C7A20();
  v13 = *&v3[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  (*(v8 + 8))(v12, v7);
  v14 = [a1 alarmSearch];
  if (!v14)
  {
    if ([a1 alarmSearchType] == 2 || objc_msgSend(a1, sel_alarmSearchType) == 3)
    {
      v15 = v3;
      if (qword_280302AA0 != -1)
      {
        swift_once();
      }

      v16 = sub_2692C77C0();
      __swift_project_value_buffer(v16, qword_280302AA8);
      v17 = sub_2692C77B0();
      v18 = sub_2692C7A00();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_269270000, v17, v18, ".whenIs or .howLongUntil request, alarmSearch is nil. Will default to searching for the next active alarm.", v19, 2u);
        MEMORY[0x26D6368E0](v19, -1, -1);
      }

      type metadata accessor for AlarmSearch();
      v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v21 = sub_2692C7820();
      v14 = [v20 initWithIdentifier:0 displayString:v21];

      [v14 setAlarmReferenceType_];
      v3 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_269275A6C(&v3[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager], v29);
  v22 = v30;
  v23 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = a2;
  v24[4] = a3;
  v25 = *(v23 + 56);
  v26 = v3;

  v25(v14, sub_269275B14, v24, v22, v23);

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_269274BE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_2692C7A10();
  v14 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v7 + 8))(v11, v6);
  if (v13)
  {
    if (v12 == 12)
    {
      if (qword_280302AA0 != -1)
      {
        swift_once();
      }

      v15 = sub_2692C77C0();
      __swift_project_value_buffer(v15, qword_280302AA8);
      v16 = sub_2692C77B0();
      v17 = sub_2692C7A00();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_269270000, v16, v17, "No alarm exists on device.", v18, 2u);
        MEMORY[0x26D6368E0](v18, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2692C9430;
      type metadata accessor for SearchAlarmAlarmsResolutionResult();
      v20 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      if (qword_280302AA0 != -1)
      {
        swift_once();
      }

      v35 = sub_2692C77C0();
      __swift_project_value_buffer(v35, qword_280302AA8);
      v36 = sub_2692C77B0();
      v37 = sub_2692C7A00();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_269270000, v36, v37, "No alarm found that user specified.", v38, 2u);
        MEMORY[0x26D6368E0](v38, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2692C9430;
      type metadata accessor for SearchAlarmAlarmsResolutionResult();
      v20 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_31;
  }

  if (qword_280302AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_2692C77C0();
  __swift_project_value_buffer(v21, qword_280302AA8);

  v22 = sub_2692C77B0();
  v23 = sub_2692C7A00();
  sub_2692743E4(v12, 0);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315138;
    v26 = type metadata accessor for SiriAlarm();
    v27 = MEMORY[0x26D635E70](v12, v26);
    v29 = sub_26927C4DC(v27, v28, &v42);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_269270000, v22, v23, "Alarm search get a list of alarms %s.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D6368E0](v25, -1, -1);
    MEMORY[0x26D6368E0](v24, -1, -1);
  }

  if (!(v12 >> 62))
  {
    v30 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      v42 = MEMORY[0x277D84F90];
      sub_2692C7C10();
      goto LABEL_15;
    }

LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2692C9430;
    type metadata accessor for SearchAlarmAlarmsResolutionResult();
    v20 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_31:
    *(v19 + 32) = v20;
    goto LABEL_32;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_30;
  }

  v39 = sub_2692C7C60();
  v19 = MEMORY[0x277D84F90];
  if (!v39)
  {
    goto LABEL_32;
  }

  v42 = MEMORY[0x277D84F90];
  v30 = v39;
  sub_2692C7C10();
  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_15:
  type metadata accessor for SearchAlarmAlarmsResolutionResult();
  v31 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x26D6360D0](v31, v12);
    }

    else
    {
      v32 = *(v12 + 8 * v31 + 32);
    }

    v33 = v32;
    ++v31;
    sub_2692C42D8(v32);

    sub_2692C7BF0();
    v34 = v42[2];
    sub_2692C7C20();
    sub_2692C7C30();
    sub_2692C7C00();
  }

  while (v30 != v31);
  v19 = v42;
LABEL_32:
  a3(v19);
}

void sub_26927525C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchAlarmAlarmsResolutionResult();
  v3 = sub_2692C7910();
  (*(a2 + 16))(a2, v3);
}

void sub_2692752C8(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v4 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 1;
  [v3 setUserActivity_];
  a2(v3);
}

void sub_26927541C(uint64_t a1, void (*a2)(char *))
{
  if (qword_280302AA0 != -1)
  {
    swift_once();
  }

  v3 = sub_2692C77C0();
  __swift_project_value_buffer(v3, qword_280302AA8);
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_269270000, v4, v5, "SearchAlarmIntentHandler handle intent.", v6, 2u);
    MEMORY[0x26D6368E0](v6, -1, -1);
  }

  v7 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v8 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  a2(v7);
}

id SearchAlarmIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchAlarmIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_2692756C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2692756F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26927571C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_269275800@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_269275810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26927603C(a1);

  *a2 = v3;
  return result;
}

id sub_269275850(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for SearchAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_26927594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for SearchAlarmIntentHandler());
  (*(v7 + 16))(v10, a1, a3);
  return sub_269275850(v10, v11, a3, a4);
}

uint64_t sub_269275A30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_269275A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_269275C20(uint64_t a1)
{
  if (qword_280302AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_2692C77C0();
  __swift_project_value_buffer(v2, qword_280302AA8);
  v3 = sub_2692C77B0();
  v4 = sub_2692C7A00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_269270000, v3, v4, "SearchAlarmIntentHandler handle intent.", v5, 2u);
    MEMORY[0x26D6368E0](v5, -1, -1);
  }

  v6 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v7 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = 4;
  [v6 setUserActivity_];
  (*(a1 + 16))(a1, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void type metadata accessor for MTAlarmRepeatSchedule()
{
  if (!qword_280302B78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280302B78);
    }
  }
}

uint64_t sub_269275FF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTAlarmRepeatSchedule();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26927603C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

BOOL sub_26927607C()
{
  v0 = sub_2692C7290();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_2692C72B0();
  if (v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = sub_2692C7290();
  if (v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = sub_2692C72B0();
  if (v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = sub_2692C7290();
  if (v13)
  {
    return 0;
  }

  v15 = v12;
  v16 = sub_2692C72B0();
  if (v17)
  {
    if (v15 == v8)
    {
      v16 = 0;
      return v11 >= v16;
    }

    if (v15 == v2)
    {
      v16 = 0;
      return v16 >= v5;
    }
  }

  else
  {
    if (v15 == v8)
    {
      return v11 >= v16;
    }

    if (v15 == v2)
    {
      return v16 >= v5;
    }
  }

  if (v8 >= v2)
  {
    return v15 < v8 && v2 < v15;
  }

  else
  {
    return v2 < v15 || v15 < v8;
  }
}

uint64_t sub_26927617C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302C00);
  v1 = __swift_project_value_buffer(v0, qword_280302C00);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id UpdateAlarmIntentHandler.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_26927CB80(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id UpdateAlarmIntentHandler.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_26927CA84(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id UpdateAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UpdateAlarmIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v14);
  v0 = type metadata accessor for SiriAlarmManagerImpl();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v5 = swift_allocObject();
  *(v3 + v4) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v7 = qword_280303380;
  *(v3 + v6) = qword_280303380;
  sub_269275A30(&v14, v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  updated = type metadata accessor for UpdateAlarmIntentHandler();
  v9 = objc_allocWithZone(updated);
  v15 = v0;
  v16 = &protocol witness table for SiriAlarmManagerImpl;
  *&v14 = v3;
  *&v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject] = v7;
  sub_269275A6C(&v14, &v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = v9;
  v13.super_class = updated;
  v10 = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

void sub_269276594(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v14 = sub_2692C77C0();
  __swift_project_value_buffer(v14, qword_280302C00);
  v15 = sub_2692C77B0();
  v16 = sub_2692C7A00();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v47 = v13;
    v18 = a3;
    v19 = a2;
    v20 = v17;
    *v17 = 0;
    _os_log_impl(&dword_269270000, v15, v16, "UpdateAlarmIntentHandler resolving alarm.", v17, 2u);
    v21 = v20;
    a2 = v19;
    a3 = v18;
    v4 = v3;
    v13 = v47;
    MEMORY[0x26D6368E0](v21, -1, -1);
  }

  v22 = [a1 alarm];
  if (v22)
  {
    v23 = v22;
    v24 = sub_2692C77B0();
    v25 = sub_2692C7A00();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136315138;
      v28 = [v23 identifier];
      if (v28)
      {
        v29 = a2;
        v30 = v28;
        v31 = sub_2692C7830();
        v33 = v32;

        a2 = v29;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      v49[0] = v31;
      v49[1] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v42 = sub_2692C7840();
      v44 = sub_26927C4DC(v42, v43, &v48);

      *(v26 + 4) = v44;
      _os_log_impl(&dword_269270000, v24, v25, "UpdateAlarmIntentHandler: Using alarm with ID %s on intent for resolution", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D6368E0](v27, -1, -1);
      MEMORY[0x26D6368E0](v26, -1, -1);
    }

    type metadata accessor for UpdateAlarmAlarmResolutionResult();
    v45 = sub_2692C42D8(v23);
    a2();
  }

  else
  {
    v34 = [a1 alarmSearch];
    v35 = [a1 operation];
    sub_2692C7A20();
    v36 = *&v4[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v13, v8);
    sub_269275A6C(&v4[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v49);
    v37 = v50;
    v38 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v39 = swift_allocObject();
    v39[2] = v4;
    v39[3] = a2;
    v39[4] = a3;
    v39[5] = v35;
    v40 = *(v38 + 56);
    v41 = v4;

    v40(v34, sub_26927CC88, v39, v37, v38);

    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }
}

void sub_269276A18(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  v17 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v10 + 8))(v14, v9);
  if (v16)
  {
    if (v15 == 12)
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v18 = sub_2692C77C0();
      __swift_project_value_buffer(v18, qword_280302C00);
      v19 = sub_2692C77B0();
      v20 = sub_2692C7A00();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_269270000, v19, v20, "No alarm exists on device.", v21, 2u);
        MEMORY[0x26D6368E0](v21, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v22 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v31 = sub_2692C77C0();
      __swift_project_value_buffer(v31, qword_280302C00);
      v32 = sub_2692C77B0();
      v33 = sub_2692C7A00();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_269270000, v32, v33, "No alarm found that user specified.", v34, 2u);
        MEMORY[0x26D6368E0](v34, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v22 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_37;
  }

  if (!(v15 >> 62))
  {
    v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23 == 1)
    {
      goto LABEL_10;
    }

LABEL_34:
    type metadata accessor for UpdateAlarmAlarmResolutionResult();
    if (v23)
    {
      v41 = sub_2692C433C(v15);
LABEL_38:
      v15 = v41;
      a3();
      goto LABEL_39;
    }

    v22 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_37:
    v41 = v22;
    goto LABEL_38;
  }

  if (sub_2692C7C60() != 1 || !sub_2692C7C60())
  {
    v23 = sub_2692C7C60();
    goto LABEL_34;
  }

LABEL_10:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26D6360D0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v24 = *(v15 + 32);
  }

  v15 = v24;
  v25 = [v24 sleepAlarmAttribute];
  if (v25)
  {

    if (a5 != 2)
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v36 = sub_2692C77C0();
      __swift_project_value_buffer(v36, qword_280302C00);
      v37 = sub_2692C77B0();
      v38 = sub_2692C7A00();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_269270000, v37, v38, "User want to change time for sleep alarm. Success.", v39, 2u);
        MEMORY[0x26D6368E0](v39, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v30 = sub_2692C42D8(v15);
      goto LABEL_30;
    }

    if (qword_280302AC0 == -1)
    {
LABEL_16:
      v26 = sub_2692C77C0();
      __swift_project_value_buffer(v26, qword_280302C00);
      v27 = sub_2692C77B0();
      v28 = sub_2692C7A00();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_269270000, v27, v28, "User want to change label for sleep alarm. Unsupported.", v29, 2u);
        MEMORY[0x26D6368E0](v29, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v30 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_30:
      v40 = v30;
      a3();

      goto LABEL_39;
    }

LABEL_42:
    swift_once();
    goto LABEL_16;
  }

  type metadata accessor for UpdateAlarmAlarmResolutionResult();
  v35 = sub_2692C42D8(v15);
  a3();

  v15 = v35;
LABEL_39:
}

void sub_269276FD0(void *a1, void (*a2)(void))
{
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302C00);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Resolving proposedLabel.", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  if ([a1 operation] == 2)
  {
    v8 = [a1 proposedLabel];
    if (v8)
    {
      v9 = v8;
      v12 = [objc_opt_self() successWithResolvedString_];

      v10 = v12;
      goto LABEL_11;
    }

    sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
    v11 = [swift_getObjCClassFromMetadata() needsValue];
  }

  else
  {
    sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
    v11 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v10 = v11;
LABEL_11:
  v13 = v10;
  a2();
}

void sub_2692771C8(void *a1, void (*a2)(void))
{
  v4 = sub_2692C7310();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - v12;
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v14 = sub_2692C77C0();
  __swift_project_value_buffer(v14, qword_280302C00);
  v15 = sub_2692C77B0();
  v16 = sub_2692C7A00();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_269270000, v15, v16, "Resolving proposedTime.", v17, 2u);
    MEMORY[0x26D6368E0](v17, -1, -1);
  }

  v18 = [a1 operation];
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = [a1 proposedTime];
      if (v19)
      {
        v20 = v19;
        sub_2692C7280();

        sub_2692C7290();
        if ((v21 & 1) == 0)
        {
          v30 = objc_opt_self();
          v31 = sub_2692C7270();
          v32 = [v30 successWithResolvedDateComponents_];

          (a2)(v32);
          (*(v5 + 8))(v13, v4);
          return;
        }

        (*(v5 + 8))(v13, v4);
      }

      v22 = [a1 proposedRecurrence];
      if (v22)
      {
LABEL_11:

        sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
        v23 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_27:
        v36 = v23;
        a2();

        return;
      }

LABEL_26:
      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v23 = [swift_getObjCClassFromMetadata() needsValue];
      goto LABEL_27;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v25 = [swift_getObjCClassFromMetadata() notRequired];
  }

  else
  {
    v24 = [a1 proposedLabel];
    if (!v24)
    {
      v27 = [a1 proposedTime];
      if (v27)
      {
        v28 = v27;
        sub_2692C7280();

        sub_2692C7290();
        if ((v29 & 1) == 0)
        {
          v33 = objc_opt_self();
          v34 = sub_2692C7270();
          v35 = [v33 successWithResolvedDateComponents_];

          (a2)(v35);
          (*(v5 + 8))(v10, v4);
          return;
        }

        (*(v5 + 8))(v10, v4);
      }

      v22 = [a1 proposedRecurrence];
      if (v22)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v25 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v38 = v25;
  a2();
  v26 = v38;
}

void sub_2692776D8(void *a1, void (*a2)(void))
{
  v3 = [a1 proposedMeridiemSetByUser];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() successWithResolvedValue_];
    a2();
  }

  else
  {
    sub_26927CC94(0, &qword_280302C40, 0x277CD3AB0);
    v5 = [swift_getObjCClassFromMetadata() notRequired];
    a2();
  }
}

void sub_2692777DC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_26927786C(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
  v4 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 1;
  [v3 setUserActivity_];
  a2(v3);
}

void sub_2692779C0(void (*a1)(char *, uint64_t), void (*a2)(char *), uint64_t a3)
{
  v82 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v75 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v75 - v14;
  v16 = sub_2692C7360();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v75 - v24;
  v81 = a1;
  v26 = [a1 alarm];
  if (v26)
  {
    v83 = v26;
    v27 = [v26 sleepAlarmAttribute];
    if (v27)
    {
      v80 = v3;

      sub_26927826C(v15);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_26927CEA8(v15, &qword_280302C50, &unk_2692C96A0);
        if (qword_280302AC0 != -1)
        {
          swift_once();
        }

        v28 = sub_2692C77C0();
        __swift_project_value_buffer(v28, qword_280302C00);
        v29 = v83;
        v30 = sub_2692C77B0();
        v31 = sub_2692C79F0();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = a2;
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v84[0] = v34;
          *v33 = 136315138;
          v35 = v29;
          v36 = [v35 description];
          v37 = sub_2692C7830();
          v39 = v38;

          v40 = sub_26927C4DC(v37, v39, v84);

          *(v33 + 4) = v40;
          _os_log_impl(&dword_269270000, v30, v31, "Updating sleep alarm, but it had a malformed alarmId: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x26D6368E0](v34, -1, -1);
          v41 = v33;
          a2 = v32;
          MEMORY[0x26D6368E0](v41, -1, -1);
        }
      }

      else
      {
        v79 = a2;
        (*(v17 + 32))(v25, v15, v16);
        if (qword_280302AC0 != -1)
        {
          swift_once();
        }

        v54 = sub_2692C77C0();
        __swift_project_value_buffer(v54, qword_280302C00);
        (*(v17 + 16))(v22, v25, v16);
        v55 = v83;
        v56 = sub_2692C77B0();
        v57 = sub_2692C7A00();

        if (os_log_type_enabled(v56, v57))
        {
          v77 = v57;
          v78 = v56;
          v58 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v84[0] = v76;
          *v58 = 136315394;
          sub_2692806BC(&qword_280302C58, MEMORY[0x277CC9260]);
          v59 = sub_2692C7D30();
          v61 = v60;
          v62 = v22;
          v63 = *(v17 + 8);
          v63(v62, v16);
          v64 = sub_26927C4DC(v59, v61, v84);

          *(v58 + 4) = v64;
          *(v58 + 12) = 2080;
          v65 = [v55 dateTime];
          if (v65)
          {
            v66 = v65;
            sub_2692C7280();

            v67 = 0;
          }

          else
          {
            v67 = 1;
          }

          v69 = sub_2692C7310();
          (*(*(v69 - 8) + 56))(v10, v67, 1, v69);
          v70 = sub_2692C7840();
          v72 = sub_26927C4DC(v70, v71, v84);

          *(v58 + 14) = v72;
          v73 = v78;
          _os_log_impl(&dword_269270000, v78, v77, "[UpdateAlarmIntentHandler] Sleep alarm being updated. Existing sleepAlarmId = %s, dateTime = %s", v58, 0x16u);
          v74 = v76;
          swift_arrayDestroy();
          MEMORY[0x26D6368E0](v74, -1, -1);
          MEMORY[0x26D6368E0](v58, -1, -1);

          v63(v25, v16);
          a2 = v79;
        }

        else
        {

          v68 = *(v17 + 8);
          v68(v22, v16);
          v68(v25, v16);
          a2 = v79;
        }
      }

      sub_26927A3C0(v81, a2, v82);
    }

    else
    {
      sub_2692792F8(v81, v83, a2, v82);
      v53 = v83;
    }
  }

  else
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v42 = a2;
    v43 = sub_2692C77C0();
    __swift_project_value_buffer(v43, qword_280302C00);
    v44 = sub_2692C77B0();
    v45 = sub_2692C79F0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_269270000, v44, v45, "Please check resolveAlarm(), alarm slot was NOT resolved.", v46, 2u);
      MEMORY[0x26D6368E0](v46, -1, -1);
    }

    v47 = sub_2692C7760();
    v84[3] = v47;
    v84[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CC920;
    v49 = *MEMORY[0x277D61878];
    v50 = sub_2692C7710();
    (*(*(v50 - 8) + 104))(boxed_opaque_existential_1, v49, v50);
    (*(*(v47 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v47);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v51 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v52 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v51[v52] = 5;
    [v51 setUserActivity_];
    v42(v51);
  }
}

uint64_t sub_26927826C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2692C71D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2692C7830();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(v12, v14);
  v17 = v16;

  if (v17)
  {
    v53 = v15;
    v54 = v17;
    sub_2692C71C0();
    sub_2692807B8();
    v18 = sub_2692C7AA0();
    v20 = v19;
    (*(v5 + 8))(v9, v4);

    if (v20)
    {
      v53 = 0xD000000000000014;
      v54 = 0x80000002692CC780;
      MEMORY[0x26D635DF0](v18, v20);

      sub_2692C7350();
    }

    else
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v33 = sub_2692C77C0();
      __swift_project_value_buffer(v33, qword_280302C00);
      v34 = v2;
      v35 = sub_2692C77B0();
      v36 = sub_2692C79F0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v52 = v38;
        *v37 = 136315138;
        v39 = [v34 identifier];
        if (v39)
        {
          v40 = v39;
          v41 = sub_2692C7830();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        v53 = v41;
        v54 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
        v47 = sub_2692C7840();
        v49 = sub_26927C4DC(v47, v48, &v52);

        *(v37 + 4) = v49;
        _os_log_impl(&dword_269270000, v35, v36, "Bad alarm identifier when parsing ID: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x26D6368E0](v38, -1, -1);
        MEMORY[0x26D6368E0](v37, -1, -1);
      }

      v50 = sub_2692C7360();
      return (*(*(v50 - 8) + 56))(a1, 1, 1, v50);
    }
  }

  else
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v22 = sub_2692C77C0();
    __swift_project_value_buffer(v22, qword_280302C00);
    v23 = v2;
    v24 = sub_2692C77B0();
    v25 = sub_2692C79F0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53 = v27;
      *v26 = 136315138;
      v28 = [v23 identifier];
      if (v28)
      {
        v29 = v28;
        v30 = sub_2692C7830();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v44 = sub_26927C4DC(v30, v32, &v53);

      *(v26 + 4) = v44;
      _os_log_impl(&dword_269270000, v24, v25, "UpdateAlarmIntentHandler Bad alarm identifier: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D6368E0](v27, -1, -1);
      MEMORY[0x26D6368E0](v26, -1, -1);
    }

    v45 = sub_2692C7360();
    v46 = *(*(v45 - 8) + 56);

    return v46(a1, 1, 1, v45);
  }
}

void sub_2692787A8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_26927883C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v104 = a2;
  v108 = a4;
  v5 = sub_2692C74F0();
  v97 = *(v5 - 8);
  v98 = v5;
  v6 = *(v97 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v105 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v107 = &v96 - v15;
  v16 = sub_2692C7310();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2692C73E0();
  v111 = *(v106 - 8);
  v22 = *(v111 + 64);
  v24 = MEMORY[0x28223BE20](v106, v23);
  v99 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v96 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v102 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v96 - v36;
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v96 - v39;
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v41 = sub_2692C77C0();
  v42 = __swift_project_value_buffer(v41, qword_280302C00);
  v103 = a1;
  sub_26927CE40(a1, v40, &qword_280302C48, &qword_2692C9780);
  v112 = v42;
  v43 = sub_2692C77B0();
  v44 = sub_2692C7A00();
  v45 = os_log_type_enabled(v43, v44);
  v109 = v17;
  v101 = v28;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v96 = v16;
    v48 = v47;
    v113 = v47;
    *v46 = 136315138;
    sub_26927CE40(v40, v37, &qword_280302C48, &qword_2692C9780);
    v49 = sub_2692C7840();
    v51 = v50;
    sub_26927CEA8(v40, &qword_280302C48, &qword_2692C9780);
    v52 = sub_26927C4DC(v49, v51, &v113);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_269270000, v43, v44, "inferredAdjustedComponents: proposedTime: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v53 = v48;
    v16 = v96;
    MEMORY[0x26D6368E0](v53, -1, -1);
    MEMORY[0x26D6368E0](v46, -1, -1);
  }

  else
  {

    sub_26927CEA8(v40, &qword_280302C48, &qword_2692C9780);
  }

  v54 = sub_2692C77B0();
  v55 = sub_2692C7A00();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v106;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v113 = v59;
    *v58 = 136315138;
    if (v104)
    {
      v60 = 1702195828;
    }

    else
    {
      v60 = 0x65736C6166;
    }

    if (v104)
    {
      v61 = 0xE400000000000000;
    }

    else
    {
      v61 = 0xE500000000000000;
    }

    v62 = sub_26927C4DC(v60, v61, &v113);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_269270000, v54, v55, "inferredAdjustedComponents: meridiemSetByUser: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x26D6368E0](v59, -1, -1);
    MEMORY[0x26D6368E0](v58, -1, -1);
  }

  v63 = v111;
  v64 = v101;
  (*(v111 + 16))(v101, v110, v57);
  v65 = sub_2692C77B0();
  v66 = sub_2692C7A00();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v113 = v68;
    *v67 = 136315138;
    sub_2692806BC(&qword_280302C70, MEMORY[0x277CC9578]);
    v69 = sub_2692C7D30();
    v70 = v64;
    v72 = v71;
    v73 = *(v63 + 8);
    v73(v70, v57);
    v74 = sub_26927C4DC(v69, v72, &v113);

    *(v67 + 4) = v74;
    _os_log_impl(&dword_269270000, v65, v66, "inferredAdjustedComponents: anchorDate: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x26D6368E0](v68, -1, -1);
    MEMORY[0x26D6368E0](v67, -1, -1);
  }

  else
  {

    v73 = *(v63 + 8);
    v73(v64, v57);
  }

  v75 = v109;
  v76 = v107;
  v77 = v21;
  v78 = v105;
  v79 = v102;
  sub_26927CE40(v103, v102, &qword_280302C48, &qword_2692C9780);
  if ((*(v75 + 48))(v79, 1, v16) == 1)
  {
    v80 = &qword_280302C48;
    v81 = &qword_2692C9780;
    v82 = v79;
  }

  else
  {
    (*(v75 + 32))(v21, v79, v16);
    sub_2692C7630();
    sub_26927CE40(v76, v78, &qword_280302C60, &qword_2692C96E0);
    v83 = v111;
    if ((*(v111 + 48))(v78, 1, v57) != 1)
    {
      (*(v83 + 32))(v99, v78, v57);
      sub_2692C74B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
      v85 = sub_2692C74E0();
      v86 = *(v85 - 8);
      v87 = v86;
      v112 = v77;
      v88 = *(v86 + 72);
      v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_2692C9680;
      v91 = v90 + v89;
      v92 = *(v87 + 104);
      v92(v91, *MEMORY[0x277CC9988], v85);
      v92(v91 + v88, *MEMORY[0x277CC9998], v85);
      v92(v91 + 2 * v88, *MEMORY[0x277CC9968], v85);
      v92(v91 + 3 * v88, *MEMORY[0x277CC9980], v85);
      v92(v91 + 4 * v88, *MEMORY[0x277CC99A0], v85);
      v92(v91 + 5 * v88, *MEMORY[0x277CC99A8], v85);
      sub_2692A5EEC(v90);
      swift_setDeallocating();
      v75 = v109;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v93 = v99;
      v94 = v100;
      sub_2692C7460();

      (*(v97 + 8))(v94, v98);
      v73(v93, v106);
      sub_26927CEA8(v107, &qword_280302C60, &qword_2692C96E0);
      (*(v75 + 8))(v112, v16);
      v84 = 0;
      return (*(v75 + 56))(v108, v84, 1, v16);
    }

    sub_26927CEA8(v76, &qword_280302C60, &qword_2692C96E0);
    (*(v75 + 8))(v77, v16);
    v82 = v78;
    v80 = &qword_280302C60;
    v81 = &qword_2692C96E0;
  }

  sub_26927CEA8(v82, v80, v81);
  v84 = 1;
  return (*(v75 + 56))(v108, v84, 1, v16);
}

void sub_2692792F8(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v142 = a4;
  v7 = sub_2692C77A0();
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = *(v136 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v135 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2692C74F0();
  v128 = *(v130 - 8);
  v11 = *(v128 + 64);
  MEMORY[0x28223BE20](v130, v12);
  v127 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v131 = &v119 - v17;
  v18 = sub_2692C73E0();
  v133 = *(v18 - 8);
  v19 = *(v133 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v129 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v119 - v24;
  v26 = sub_2692C7310();
  v143 = *(v26 - 8);
  v27 = *(v143 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v134 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v35 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v141 = &v119 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v119 - v41;
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = &v119 - v45;
  v48 = MEMORY[0x28223BE20](v44, v47);
  v50 = &v119 - v49;
  MEMORY[0x28223BE20](v48, v51);
  v145 = a2;
  v146 = &v119 - v52;
  v53 = [a2 identifier];
  if (v53)
  {
    v126 = a3;
    v54 = v53;
    v122 = sub_2692C7830();
    v125 = v55;

    v56 = [a1 proposedLabel];
    if (v56)
    {
      v57 = v56;
      v132 = sub_2692C7830();
      v140 = v58;
    }

    else
    {
      v132 = 0;
      v140 = 0;
    }

    v65 = v143;
    v144 = a1;
    v66 = [a1 proposedTime];
    if (v66)
    {
      v67 = v66;
      sub_2692C7280();

      v68 = *(v65 + 56);
      v68(v50, 0, 1, v26);
    }

    else
    {
      v68 = *(v65 + 56);
      v68(v50, 1, 1, v26);
    }

    v69 = [v145 dateTime];
    if (v69)
    {
      v70 = v69;
      sub_2692C7280();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v68(v46, v71, 1, v26);
    v72 = [v144 proposedMeridiemSetByUser];
    v139 = v26;
    v123 = v35;
    if (v72)
    {
      v73 = v72;
      v74 = v18;
      v124 = [v72 BOOLValue];
    }

    else
    {
      v74 = v18;
      v124 = 0;
    }

    sub_2692C7610();
    sub_26927883C(v46, 1, v25, v42);
    v75 = v133;
    v76 = *(v133 + 8);
    v76(v25, v74);
    v77 = *(v65 + 48);
    v78 = v139;
    v121 = v65 + 48;
    v120 = v77;
    if (v77(v42, 1, v139) == 1)
    {
      sub_26927CEA8(v42, &qword_280302C48, &qword_2692C9780);
      sub_2692C7610();
      sub_26927883C(v50, v124, v25, v146);
      v76(v25, v74);
    }

    else
    {
      (*(v65 + 32))(v134, v42, v78);
      v79 = v127;
      sub_2692C74B0();
      v80 = v131;
      sub_2692C7480();
      (*(v128 + 8))(v79, v130);
      v81 = *(v75 + 48);
      if (v81(v80, 1, v74) == 1)
      {
        v82 = v129;
        sub_2692C7610();
        if (v81(v80, 1, v74) != 1)
        {
          sub_26927CEA8(v80, &qword_280302C60, &qword_2692C96E0);
        }
      }

      else
      {
        v82 = v129;
        (*(v75 + 32))(v129, v80, v74);
      }

      sub_26927883C(v50, v124, v82, v146);
      v76(v82, v74);
      (*(v143 + 8))(v134, v139);
    }

    sub_26927CEA8(v46, &qword_280302C48, &qword_2692C9780);
    sub_26927CEA8(v50, &qword_280302C48, &qword_2692C9780);
    v83 = v144;
    v84 = v141;
    v85 = v125;
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v86 = sub_2692C77C0();
    __swift_project_value_buffer(v86, qword_280302C00);
    sub_26927CE40(v146, v84, &qword_280302C48, &qword_2692C9780);
    v87 = v140;

    v88 = sub_2692C77B0();
    v89 = sub_2692C7A00();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v147[0] = v134;
      *v90 = 136315650;
      v91 = sub_26927C4DC(v122, v85, v147);

      *(v90 + 4) = v91;
      *(v90 + 12) = 2080;
      if (v87)
      {
        v92 = v132;
      }

      else
      {
        v92 = 0;
      }

      if (v87)
      {
        v93 = v87;
      }

      else
      {
        v93 = 0xE000000000000000;
      }

      v94 = sub_26927C4DC(v92, v93, v147);

      *(v90 + 14) = v94;
      *(v90 + 22) = 2080;
      v95 = v123;
      sub_26927CE40(v84, v123, &qword_280302C48, &qword_2692C9780);
      v96 = v139;
      if (v120(v95, 1, v139) == 1)
      {
        sub_26927CEA8(v95, &qword_280302C48, &qword_2692C9780);
        v97 = 0;
        v98 = 0xE000000000000000;
      }

      else
      {
        v97 = MEMORY[0x26D635790]();
        v98 = v101;
        (*(v143 + 8))(v95, v96);
      }

      v99 = v126;
      v100 = v138;
      sub_26927CEA8(v141, &qword_280302C48, &qword_2692C9780);
      v102 = sub_26927C4DC(v97, v98, v147);

      *(v90 + 24) = v102;
      _os_log_impl(&dword_269270000, v88, v89, "UpdateAlarmIntentHandler alarmId=%s, newLabel=%s, newTime=%s", v90, 0x20u);
      v103 = v134;
      swift_arrayDestroy();
      MEMORY[0x26D6368E0](v103, -1, -1);
      MEMORY[0x26D6368E0](v90, -1, -1);

      v83 = v144;
    }

    else
    {

      sub_26927CEA8(v84, &qword_280302C48, &qword_2692C9780);
      v99 = v126;
      v100 = v138;
    }

    sub_2692C7A20();
    v104 = *&v100[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject];
    v105 = v135;
    sub_2692C7790();
    sub_2692C7780();
    (*(v136 + 8))(v105, v137);
    sub_269275A6C(&v100[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v147);
    v106 = v148;
    v107 = v149;
    __swift_project_boxed_opaque_existential_1(v147, v148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_2692C9430;
    v109 = v145;
    *(v108 + 32) = v145;
    v110 = v109;
    v111 = [v83 proposedRecurrence];
    if (v111)
    {
      v112 = v111;
      type metadata accessor for AlarmRepeatSchedule();
      v113 = sub_2692C7930();
    }

    else
    {
      v113 = 0;
    }

    v114 = swift_allocObject();
    v114[2] = v100;
    v114[3] = v99;
    v114[4] = v142;
    v115 = *(v107 + 32);
    v116 = v100;

    v118 = v107;
    v117 = v146;
    v115(v108, v132, v140, v146, v113, sub_2692808C0, v114, v106, v118);

    sub_26927CEA8(v117, &qword_280302C48, &qword_2692C9780);
    __swift_destroy_boxed_opaque_existential_1Tm(v147);
  }

  else
  {
    v59 = sub_2692C7760();
    v148 = v59;
    v149 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v147);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CCA40;
    v61 = *MEMORY[0x277D61878];
    v62 = sub_2692C7710();
    (*(*(v62 - 8) + 104))(boxed_opaque_existential_1, v61, v62);
    (*(*(v59 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v59);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v147);
    v63 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v64 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v63[v64] = 5;
    [v63 setUserActivity_];
    a3(v63);
  }
}

void sub_26927A06C(unint64_t *a1, uint64_t a2, void (*a3)(char *))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_2692C7A10();
  v14 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v7 + 8))(v11, v6);
  if (v13)
  {
    v15 = sub_2692C7760();
    v27[3] = v15;
    v27[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    sub_269280704();
    v17 = swift_allocError();
    *v18 = v12;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v19 = *MEMORY[0x277D61838];
    v20 = sub_2692C76A0();
    (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, v19, v20);
    (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v15);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    v21 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v22 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v21[v22] = 5;
    [v21 setUserActivity_];
LABEL_12:
    a3(v21);

    return;
  }

  v21 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
  v23 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v21[v23] = 4;
  [v21 setUserActivity_];
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26D6360D0](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v12 + 32);
LABEL_8:
    v25 = v24;
LABEL_11:
    [v21 setUpdatedAlarm_];

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_26927A3C0(void (*a1)(char *, uint64_t), void (*a2)(char *), uint64_t a3)
{
  v172 = a3;
  v171 = a2;
  v163 = sub_2692C77A0();
  v162 = *(v163 - 8);
  v4 = *(v162 + 64);
  MEMORY[0x28223BE20](v163, v5);
  v161 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v177 = &v157 - v10;
  v175 = sub_2692C74F0();
  v174 = *(v175 - 8);
  v11 = *(v174 + 64);
  MEMORY[0x28223BE20](v175, v12);
  v173 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v166 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v186 = &v157 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v180 = &v157 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v168 = &v157 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v157 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v157 - v33;
  v35 = sub_2692C7310();
  v185 = *(v35 - 8);
  v36 = v185[8];
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v167 = &v157 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v169 = &v157 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v176 = &v157 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v187 = &v157 - v51;
  v52 = sub_2692C73E0();
  v181 = *(v52 - 8);
  v182 = v52;
  v53 = *(v181 + 64);
  v55 = MEMORY[0x28223BE20](v52, v54);
  v158 = &v157 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v157 - v58;
  updated = type metadata accessor for UpdateAlarmIntentResponse();
  v60 = [objc_allocWithZone(updated) init];
  v61 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v60[v61] = 4;
  v170 = v60;
  [v60 setUserActivity_];
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v62 = sub_2692C77C0();
  v179 = __swift_project_value_buffer(v62, qword_280302C00);
  v63 = sub_2692C77B0();
  v64 = sub_2692C7A00();
  v65 = os_log_type_enabled(v63, v64);
  v184 = v35;
  v178 = a1;
  v160 = v40;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v188[0] = v67;
    *v66 = 136315138;
    sub_2692C7610();
    v68 = sub_2692C7370();
    v70 = v69;
    (*(v181 + 8))(v59, v182);
    v71 = sub_26927C4DC(v68, v70, v188);
    v35 = v184;

    *(v66 + 4) = v71;
    _os_log_impl(&dword_269270000, v63, v64, "[UpdateAlarmIntentHandler.updateSleepAlarm] Using default anchor date: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    v72 = v67;
    a1 = v178;
    MEMORY[0x26D6368E0](v72, -1, -1);
    MEMORY[0x26D6368E0](v66, -1, -1);
  }

  v73 = [a1 alarm];
  v74 = v185;
  v75 = v34;
  if (v73)
  {
    v76 = v73;
    v77 = [v73 dateTime];

    v78 = v177;
    if (v77)
    {
      sub_2692C7280();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    v165 = v74[7];
    v165(v31, v79, 1, v35);
    sub_269280640(v31, v75);
    v183 = v74[6];
    if (v183(v75, 1, v35) != 1)
    {
      (v74[4])(v187, v75, v35);
      goto LABEL_15;
    }
  }

  else
  {
    v165 = v185[7];
    v165(v34, 1, 1, v35);
  }

  v80 = v75;
  v81 = v173;
  sub_2692C74B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v82 = sub_2692C74E0();
  v83 = *(v82 - 8);
  v84 = *(v83 + 72);
  v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_2692C9680;
  v87 = *(v83 + 104);
  v87(v86 + v85, *MEMORY[0x277CC9988], v82);
  v87(v86 + v85 + v84, *MEMORY[0x277CC9998], v82);
  v87(v86 + v85 + 2 * v84, *MEMORY[0x277CC9968], v82);
  v87(v86 + v85 + 3 * v84, *MEMORY[0x277CC9980], v82);
  v87(v86 + v85 + 4 * v84, *MEMORY[0x277CC99A0], v82);
  v87(v86 + v85 + 5 * v84, *MEMORY[0x277CC99A8], v82);
  sub_2692A5EEC(v86);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7610();
  sub_2692C7460();

  (*(v181 + 8))(v59, v182);
  (*(v174 + 8))(v81, v175);
  v35 = v184;
  v74 = v185;
  v183 = v185[6];
  if (v183(v80, 1, v184) != 1)
  {
    sub_26927CEA8(v80, &qword_280302C48, &qword_2692C9780);
  }

  v78 = v177;
  a1 = v178;
LABEL_15:
  v88 = v176;
  v89 = v176;
  v176 = v74[2];
  v177 = (v74 + 2);
  (v176)(v89, v187, v35);
  v90 = sub_2692C77B0();
  v91 = sub_2692C7A00();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v188[0] = v93;
    *v92 = 136315138;
    v94 = MEMORY[0x26D635790]();
    v96 = v95;
    v97 = v88;
    v98 = v185[1];
    v98(v97, v35);
    v99 = sub_26927C4DC(v94, v96, v188);
    v74 = v185;

    *(v92 + 4) = v99;
    _os_log_impl(&dword_269270000, v90, v91, "[UpdateAlarmIntentHandler.updateSleepAlarm] Inferring proposed time using anchor: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    v100 = v93;
    a1 = v178;
    MEMORY[0x26D6368E0](v100, -1, -1);
    MEMORY[0x26D6368E0](v92, -1, -1);
  }

  else
  {

    v101 = v88;
    v98 = v74[1];
    v98(v101, v35);
  }

  v102 = v180;
  v103 = [a1 proposedTime];
  v104 = v182;
  if (v103)
  {
    v105 = v103;
    sub_2692C7280();

    v106 = 0;
  }

  else
  {
    v106 = 1;
  }

  v107 = v165;
  v165(v102, v106, 1, v35);
  v108 = v186;
  (v176)(v186, v187, v35);
  v107(v108, 0, 1, v35);
  v109 = [a1 proposedMeridiemSetByUser];
  v178 = v98;
  if (v109)
  {
    v110 = v109;
    LODWORD(v165) = [v109 BOOLValue];
  }

  else
  {
    LODWORD(v165) = 0;
  }

  sub_2692C7610();
  v111 = v166;
  sub_26927883C(v186, 1, v59, v166);
  v112 = v181;
  v113 = *(v181 + 8);
  v113(v59, v104);
  if (v183(v111, 1, v35) == 1)
  {
    sub_26927CEA8(v111, &qword_280302C48, &qword_2692C9780);
    sub_2692C7610();
    v114 = v104;
    v115 = v35;
    v116 = v168;
    v117 = v180;
    sub_26927883C(v180, v165, v59, v168);
    v113(v59, v114);
    v118 = v178;
  }

  else
  {
    (v74[4])(v167, v111, v35);
    v119 = v173;
    sub_2692C74B0();
    sub_2692C7480();
    (*(v174 + 8))(v119, v175);
    v120 = *(v112 + 48);
    if (v120(v78, 1, v104) == 1)
    {
      v121 = v158;
      sub_2692C7610();
      v122 = v121;
      if (v120(v78, 1, v104) != 1)
      {
        sub_26927CEA8(v78, &qword_280302C60, &qword_2692C96E0);
      }
    }

    else
    {
      v122 = v158;
      (*(v112 + 32))(v158, v78, v104);
    }

    v116 = v168;
    v117 = v180;
    sub_26927883C(v180, v165, v122, v168);
    v113(v122, v104);
    v115 = v184;
    v118 = v178;
    v178(v167, v184);
  }

  sub_26927CEA8(v186, &qword_280302C48, &qword_2692C9780);
  sub_26927CEA8(v117, &qword_280302C48, &qword_2692C9780);
  if (v183(v116, 1, v115) == 1)
  {
    sub_26927CEA8(v116, &qword_280302C48, &qword_2692C9780);
    v123 = sub_2692C77B0();
    v124 = sub_2692C79F0();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_269270000, v123, v124, "[UpdateAlarmIntentHandler.updateSleepAlarm] Failed to infer proposed new time!", v125, 2u);
      MEMORY[0x26D6368E0](v125, -1, -1);
    }

    v126 = sub_2692C7760();
    v189 = v126;
    v190 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v188);
    *boxed_opaque_existential_1 = 0xD00000000000001BLL;
    boxed_opaque_existential_1[1] = 0x80000002692CC980;
    v128 = *MEMORY[0x277D61878];
    v129 = sub_2692C7710();
    (*(*(v129 - 8) + 104))(boxed_opaque_existential_1, v128, v129);
    (*(*(v126 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v126);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v188);
    v130 = [objc_allocWithZone(updated) init];
    v131 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v130[v131] = 5;
    [v130 setUserActivity_];
    v171(v130);

    return v118(v187, v184);
  }

  else
  {
    v133 = v169;
    (v74[4])(v169, v116, v115);
    v134 = v160;
    (v176)(v160, v133, v115);
    v135 = sub_2692C77B0();
    v136 = sub_2692C7A00();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v188[0] = v138;
      *v137 = 136315138;
      sub_2692806BC(&qword_280302C78, MEMORY[0x277CC8990]);
      v139 = sub_2692C7D30();
      v141 = v140;
      v118(v134, v115);
      v142 = sub_26927C4DC(v139, v141, v188);

      *(v137 + 4) = v142;
      _os_log_impl(&dword_269270000, v135, v136, "[UpdateAlarmIntentHandler.updateSleepAlarm] Proposed new time: %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v138);
      MEMORY[0x26D6368E0](v138, -1, -1);
      MEMORY[0x26D6368E0](v137, -1, -1);
    }

    else
    {

      v118(v134, v115);
    }

    sub_2692C7A20();
    v143 = v164;
    v144 = *&v164[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject];
    v145 = v161;
    sub_2692C7790();
    sub_2692C7780();
    (*(v162 + 8))(v145, v163);
    sub_269275A6C(v143 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager, v188);
    v146 = v189;
    v147 = v190;
    __swift_project_boxed_opaque_existential_1(v188, v189);
    v148 = swift_allocObject();
    v149 = v171;
    v148[2] = v143;
    v148[3] = v149;
    v150 = v170;
    v148[4] = v172;
    v148[5] = v150;
    v151 = *(v147 + 96);
    v152 = v143;

    v153 = v150;
    v154 = v169;
    v151(v169, sub_2692808BC, v148, v146, v147);

    v155 = v184;
    v156 = v178;
    v178(v154, v184);
    v156(v187, v155);
    return __swift_destroy_boxed_opaque_existential_1Tm(v188);
  }
}

void sub_26927B718(char *a1, char *a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v35 = a3;
  v36 = a4;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  sub_2692C7A10();
  v16 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  v17 = *(v9 + 8);
  v17(v13, v8);
  if (v15)
  {
    v18 = sub_2692C7760();
    v38 = v18;
    v39 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    sub_269280704();
    v20 = swift_allocError();
    *v21 = v14;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v22 = *MEMORY[0x277D61838];
    v23 = sub_2692C76A0();
    (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, v22, v23);
    (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v18);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v37);

    v24 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v25 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v24[v25] = 5;
    [v24 setUserActivity_];
    v35(v24);
  }

  else
  {
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v17(v13, v8);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v37);
    v26 = v38;
    v27 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v28 = swift_allocObject();
    v29 = v35;
    v30 = v36;
    v28[2] = a2;
    v28[3] = v29;
    v28[4] = v30;
    v28[5] = a5;
    v31 = *(v27 + 64);
    v32 = a2;

    v33 = a5;
    v31(sub_269280758, v28, v26, v27);

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }
}

void sub_26927BA98(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, char *a5)
{
  v87 = a5;
  v88 = a4;
  v89 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v83 - v10;
  v12 = sub_2692C7360();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v85 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v86 = &v83 - v19;
  v20 = sub_2692C77A0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = *(a1 + 8);
  sub_2692C7A10();
  v28 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v21 + 8))(v25, v20);
  if (v27 == 1)
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v29 = sub_2692C77C0();
    __swift_project_value_buffer(v29, qword_280302C00);
    v30 = sub_2692C77B0();
    v31 = sub_2692C79F0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_269270000, v30, v31, "Search sleep alarm failed.", v32, 2u);
      MEMORY[0x26D6368E0](v32, -1, -1);
    }

    v33 = sub_2692C7760();
    v91 = v33;
    v92 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
    sub_269280704();
    v35 = swift_allocError();
    *v36 = v26;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v37 = *MEMORY[0x277D61838];
    v38 = sub_2692C76A0();
    (*(*(v38 - 8) + 104))(boxed_opaque_existential_1, v37, v38);
    (*(*(v33 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v33);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v90);

LABEL_19:
    v65 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v66 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v65[v66] = 5;
    [v65 setUserActivity_];
    v89(v65);

    return;
  }

  if (!v26)
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v57 = sub_2692C77C0();
    __swift_project_value_buffer(v57, qword_280302C00);
    v58 = sub_2692C77B0();
    v59 = sub_2692C79F0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_269270000, v58, v59, "After changing sleep alarm time, search result got no sleep alarm.", v60, 2u);
      MEMORY[0x26D6368E0](v60, -1, -1);
    }

    v61 = sub_2692C7760();
    v91 = v61;
    v92 = MEMORY[0x277D61908];
    v62 = __swift_allocate_boxed_opaque_existential_1(v90);
    *v62 = 0xD000000000000012;
    v62[1] = 0x80000002692CCA20;
    v63 = *MEMORY[0x277D61878];
    v64 = sub_2692C7710();
    (*(*(v64 - 8) + 104))(v62, v63, v64);
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D618D8], v61);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    goto LABEL_19;
  }

  v39 = v26;
  v40 = v26;
  sub_26927826C(v11);
  v41 = v13;
  v42 = *(v13 + 48);
  v43 = v12;
  if (v42(v11, 1, v12) == 1)
  {
    sub_26927CEA8(v11, &qword_280302C50, &unk_2692C96A0);
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v44 = sub_2692C77C0();
    __swift_project_value_buffer(v44, qword_280302C00);
    v45 = v40;
    v46 = sub_2692C77B0();
    v47 = sub_2692C79F0();
    sub_269274440(v39, 0);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v40;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v90[0] = v50;
      *v49 = 136315138;
      v51 = [v45 description];
      v52 = sub_2692C7830();
      v54 = v53;

      sub_269274440(v39, 0);
      v55 = sub_26927C4DC(v52, v54, v90);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_269270000, v46, v47, "Handled changed sleep alarm, but didn't receive an alarm ID!: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x26D6368E0](v50, -1, -1);
      v56 = v49;
      v40 = v48;
      MEMORY[0x26D6368E0](v56, -1, -1);
    }
  }

  else
  {
    v67 = v86;
    (*(v41 + 32))(v86, v11, v43);
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v68 = sub_2692C77C0();
    __swift_project_value_buffer(v68, qword_280302C00);
    v69 = v85;
    (*(v41 + 16))(v85, v67, v43);
    v70 = sub_2692C77B0();
    v71 = sub_2692C7A00();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v90[0] = v84;
      *v72 = 136315138;
      sub_2692806BC(&qword_280302C58, MEMORY[0x277CC9260]);
      v73 = sub_2692C7D30();
      v74 = v43;
      v83 = v43;
      v75 = v41;
      v77 = v76;
      v78 = *(v75 + 8);
      v78(v69, v74);
      v79 = sub_26927C4DC(v73, v77, v90);

      *(v72 + 4) = v79;
      _os_log_impl(&dword_269270000, v70, v71, "Handled changed sleep alarm: %s", v72, 0xCu);
      v80 = v84;
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x26D6368E0](v80, -1, -1);
      MEMORY[0x26D6368E0](v72, -1, -1);

      v78(v86, v83);
    }

    else
    {

      v81 = *(v41 + 8);
      v81(v69, v43);
      v81(v67, v43);
    }
  }

  v82 = v87;
  [v87 setUpdatedAlarm_];
  v89(v82);
  sub_269274440(v39, 0);
}

id UpdateAlarmIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateAlarmIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26927C4DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26927C5A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_269280858(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26927C5A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26927C6B4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2692C7BE0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26927C6B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26927C700(a1, a2);
  sub_26927C830(&unk_2879E2610);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26927C700(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26927C91C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2692C7BE0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2692C78D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26927C91C(v10, 0);
        result = sub_2692C7B70();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26927C830(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26927C990(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26927C91C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C90, &qword_2692C96E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26927C990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C90, &qword_2692C96E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_26927CA84(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for UpdateAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_26927CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for UpdateAlarmIntentHandler());
  (*(v7 + 16))(v10, a1, a3);
  return sub_26927CA84(v10, v11, a3, a4);
}

uint64_t sub_26927CC94(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26927CE40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26927CEA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26927CF08(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  _Block_copy(a3);
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v13 = sub_2692C77C0();
  __swift_project_value_buffer(v13, qword_280302C00);
  v14 = sub_2692C77B0();
  v15 = sub_2692C7A00();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v49 = v11;
    v17 = a1;
    v18 = a3;
    v19 = v6;
    v20 = v7;
    v21 = a2;
    v22 = v12;
    v23 = v16;
    *v16 = 0;
    _os_log_impl(&dword_269270000, v14, v15, "UpdateAlarmIntentHandler resolving alarm.", v16, 2u);
    v24 = v23;
    v12 = v22;
    a2 = v21;
    v7 = v20;
    v6 = v19;
    a3 = v18;
    a1 = v17;
    v11 = v49;
    MEMORY[0x26D6368E0](v24, -1, -1);
  }

  v25 = [a1 alarm];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2692C77B0();
    v28 = sub_2692C7A00();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50 = v30;
      *v29 = 136315138;
      v31 = [v26 identifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_2692C7830();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v51[0] = v33;
      v51[1] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v44 = sub_2692C7840();
      v46 = sub_26927C4DC(v44, v45, &v50);

      *(v29 + 4) = v46;
      _os_log_impl(&dword_269270000, v27, v28, "UpdateAlarmIntentHandler: Using alarm with ID %s on intent for resolution", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x26D6368E0](v30, -1, -1);
      MEMORY[0x26D6368E0](v29, -1, -1);
    }

    type metadata accessor for UpdateAlarmAlarmResolutionResult();
    v47 = sub_2692C42D8(v26);
    (a3)[2](a3, v47);
  }

  else
  {
    v36 = [a1 alarmSearch];
    v37 = [a1 operation];
    sub_2692C7A20();
    v38 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v11, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v51);
    v39 = v52;
    v40 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v41 = swift_allocObject();
    v41[2] = a2;
    v41[3] = sub_2692808C4;
    v41[4] = v12;
    v41[5] = v37;
    v42 = *(v40 + 56);
    v43 = a2;

    v42(v36, sub_2692808B8, v41, v39, v40);

    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }
}

void sub_26927D3B4(void *a1, uint64_t a2)
{
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302C00);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Resolving proposedLabel.", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  if ([a1 operation] == 2)
  {
    v8 = [a1 proposedLabel];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() successWithResolvedString_];
    }

    else
    {
      sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
      v10 = [swift_getObjCClassFromMetadata() needsValue];
    }

    (*(a2 + 16))(a2, v10);
  }

  else
  {
    sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
    v10 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2);
  }
}

void sub_26927D5BC(void *a1, uint64_t a2)
{
  v4 = sub_2692C7310();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - v12;
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v14 = sub_2692C77C0();
  __swift_project_value_buffer(v14, qword_280302C00);
  v15 = sub_2692C77B0();
  v16 = sub_2692C7A00();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_269270000, v15, v16, "Resolving proposedTime.", v17, 2u);
    MEMORY[0x26D6368E0](v17, -1, -1);
  }

  v18 = [a1 operation];
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = [a1 proposedTime];
      if (v19)
      {
        v20 = v19;
        sub_2692C7280();

        sub_2692C7290();
        if ((v21 & 1) == 0)
        {
          v30 = objc_opt_self();
          v31 = sub_2692C7270();
          v32 = [v30 successWithResolvedDateComponents_];

          (*(a2 + 16))(a2, v32);
          (*(v5 + 8))(v13, v4);
          return;
        }

        (*(v5 + 8))(v13, v4);
      }

      v22 = [a1 proposedRecurrence];
      if (v22)
      {
LABEL_11:

        sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
        v23 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_27:
        v36 = v23;
        (*(a2 + 16))(a2, v36);

        return;
      }

LABEL_26:
      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v23 = [swift_getObjCClassFromMetadata() needsValue];
      goto LABEL_27;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v25 = [swift_getObjCClassFromMetadata() notRequired];
  }

  else
  {
    v24 = [a1 proposedLabel];
    if (!v24)
    {
      v27 = [a1 proposedTime];
      if (v27)
      {
        v28 = v27;
        sub_2692C7280();

        sub_2692C7290();
        if ((v29 & 1) == 0)
        {
          v33 = objc_opt_self();
          v34 = sub_2692C7270();
          v35 = [v33 successWithResolvedDateComponents_];

          (*(a2 + 16))(a2, v35);
          (*(v5 + 8))(v10, v4);
          return;
        }

        (*(v5 + 8))(v10, v4);
      }

      v22 = [a1 proposedRecurrence];
      if (v22)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v25 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v38 = v25;
  (*(a2 + 16))(a2, v38);
  v26 = v38;
}

void sub_26927DAC8(void *a1, uint64_t a2)
{
  v3 = [a1 proposedMeridiemSetByUser];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() successWithResolvedValue_];
    (*(a2 + 16))(a2);
  }

  else
  {
    sub_26927CC94(0, &qword_280302C40, 0x277CD3AB0);
    v5 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2);
  }
}

void sub_26927DBC8(void *a1, void *a2, char *a3, void (**a4)(void, void))
{
  v143 = a3;
  v7 = sub_2692C77A0();
  v141 = *(v7 - 8);
  v142 = v7;
  v8 = *(v141 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v140 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2692C74F0();
  v131 = *(v132 - 8);
  v11 = *(v131 + 64);
  MEMORY[0x28223BE20](v132, v12);
  v130 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v134 = v124 - v17;
  v18 = sub_2692C73E0();
  v138 = *(v18 - 8);
  v19 = *(v138 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v133 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v124 - v24;
  v147 = sub_2692C7310();
  v26 = *(v147 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v147, v28);
  v139 = v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v135 = v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v145 = v124 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = v124 - v40;
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = v124 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v49 = v124 - v48;
  MEMORY[0x28223BE20](v47, v50);
  v148 = v124 - v51;
  v52 = swift_allocObject();
  *(v52 + 16) = a4;
  _Block_copy(a4);
  v146 = a2;
  v53 = [a2 identifier];
  if (v53)
  {
    v54 = v53;
    v125 = sub_2692C7830();
    v128 = v55;

    v56 = [a1 proposedLabel];
    if (v56)
    {
      v57 = v56;
      v136 = sub_2692C7830();
      v144 = v58;
    }

    else
    {
      v136 = 0;
      v144 = 0;
    }

    v65 = v147;
    v129 = v52;
    v66 = [a1 proposedTime];
    if (v66)
    {
      v67 = v66;
      sub_2692C7280();

      v68 = *(v26 + 56);
      v68(v49, 0, 1, v65);
    }

    else
    {
      v68 = *(v26 + 56);
      v68(v49, 1, 1, v65);
    }

    v69 = [v146 dateTime];
    if (v69)
    {
      v70 = v69;
      sub_2692C7280();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v68(v45, v71, 1, v65);
    v137 = a1;
    v72 = [a1 proposedMeridiemSetByUser];
    if (v72)
    {
      v73 = v72;
      v74 = v18;
      v127 = [v72 BOOLValue];
    }

    else
    {
      v74 = v18;
      v127 = 0;
    }

    sub_2692C7610();
    sub_26927883C(v45, 1, v25, v41);
    v75 = v138;
    v76 = *(v138 + 8);
    v76(v25, v74);
    v77 = *(v26 + 48);
    v78 = v147;
    v124[1] = v26 + 48;
    v124[0] = v77;
    v79 = v77(v41, 1, v147);
    v126 = v26;
    if (v79 == 1)
    {
      sub_26927CEA8(v41, &qword_280302C48, &qword_2692C9780);
      sub_2692C7610();
      sub_26927883C(v49, v127, v25, v148);
      v76(v25, v74);
      v80 = v144;
    }

    else
    {
      (*(v26 + 32))(v139, v41, v78);
      v81 = v130;
      sub_2692C74B0();
      v82 = v134;
      sub_2692C7480();
      (*(v131 + 8))(v81, v132);
      v83 = *(v75 + 48);
      if (v83(v82, 1, v74) == 1)
      {
        v84 = v133;
        sub_2692C7610();
        v85 = v83(v82, 1, v74);
        v86 = v84;
        v80 = v144;
        if (v85 != 1)
        {
          sub_26927CEA8(v82, &qword_280302C60, &qword_2692C96E0);
        }
      }

      else
      {
        v86 = v133;
        (*(v75 + 32))(v133, v82, v74);
        v80 = v144;
      }

      sub_26927883C(v49, v127, v86, v148);
      v76(v86, v74);
      (*(v126 + 8))(v139, v147);
    }

    sub_26927CEA8(v45, &qword_280302C48, &qword_2692C9780);
    sub_26927CEA8(v49, &qword_280302C48, &qword_2692C9780);
    v87 = v137;
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v88 = sub_2692C77C0();
    __swift_project_value_buffer(v88, qword_280302C00);
    v89 = v145;
    sub_26927CE40(v148, v145, &qword_280302C48, &qword_2692C9780);

    v90 = v128;

    v91 = sub_2692C77B0();
    v92 = sub_2692C7A00();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v149[0] = v94;
      *v93 = 136315650;
      v95 = sub_26927C4DC(v125, v90, v149);

      *(v93 + 4) = v95;
      *(v93 + 12) = 2080;
      if (v80)
      {
        v96 = v136;
      }

      else
      {
        v96 = 0;
      }

      if (v80)
      {
        v97 = v80;
      }

      else
      {
        v97 = 0xE000000000000000;
      }

      v98 = sub_26927C4DC(v96, v97, v149);

      *(v93 + 14) = v98;
      *(v93 + 22) = 2080;
      v99 = v145;
      v100 = v135;
      sub_26927CE40(v145, v135, &qword_280302C48, &qword_2692C9780);
      v101 = v147;
      if ((v124[0])(v100, 1, v147) == 1)
      {
        sub_26927CEA8(v100, &qword_280302C48, &qword_2692C9780);
        v102 = 0;
        v103 = 0xE000000000000000;
      }

      else
      {
        v105 = MEMORY[0x26D635790]();
        v106 = v101;
        v102 = v105;
        v103 = v107;
        (*(v126 + 8))(v100, v106);
      }

      v104 = v143;
      sub_26927CEA8(v99, &qword_280302C48, &qword_2692C9780);
      v108 = sub_26927C4DC(v102, v103, v149);

      *(v93 + 24) = v108;
      _os_log_impl(&dword_269270000, v91, v92, "UpdateAlarmIntentHandler alarmId=%s, newLabel=%s, newTime=%s", v93, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6368E0](v94, -1, -1);
      MEMORY[0x26D6368E0](v93, -1, -1);

      v87 = v137;
    }

    else
    {

      sub_26927CEA8(v89, &qword_280302C48, &qword_2692C9780);
      v104 = v143;
    }

    sub_2692C7A20();
    v109 = *&v104[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject];
    v110 = v140;
    sub_2692C7790();
    sub_2692C7780();
    (*(v141 + 8))(v110, v142);
    sub_269275A6C(&v104[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v149);
    v111 = v150;
    v112 = v151;
    __swift_project_boxed_opaque_existential_1(v149, v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_2692C9430;
    v114 = v146;
    *(v113 + 32) = v146;
    v115 = v114;
    v116 = [v87 proposedRecurrence];
    if (v116)
    {
      v117 = v116;
      type metadata accessor for AlarmRepeatSchedule();
      v118 = sub_2692C7930();
    }

    else
    {
      v118 = 0;
    }

    v119 = swift_allocObject();
    v119[2] = v104;
    v119[3] = sub_2692808C4;
    v119[4] = v129;
    v120 = *(v112 + 32);
    v121 = v104;

    v123 = v112;
    v122 = v148;
    v120(v113, v136, v144, v148, v118, sub_269280764, v119, v111, v123);

    sub_26927CEA8(v122, &qword_280302C48, &qword_2692C9780);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
  }

  else
  {
    v59 = sub_2692C7760();
    v150 = v59;
    v151 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v149);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CCA40;
    v61 = *MEMORY[0x277D61878];
    v62 = sub_2692C7710();
    (*(*(v62 - 8) + 104))(boxed_opaque_existential_1, v61, v62);
    (*(*(v59 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v59);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    v63 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v64 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v63[v64] = 5;
    [v63 setUserActivity_];
    (a4)[2](a4, v63);
  }
}

uint64_t sub_26927E984(void *a1, char *a2, void (**a3)(const void *, char *))
{
  v168 = a2;
  v188 = a1;
  v167 = sub_2692C77A0();
  v166 = *(v167 - 8);
  v4 = *(v166 + 64);
  MEMORY[0x28223BE20](v167, v5);
  v165 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v161 = &v159 - v10;
  v11 = sub_2692C74F0();
  v178 = *(v11 - 8);
  v12 = *(v178 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v177 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v170 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v189 = &v159 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v185 = &v159 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v173 = &v159 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v159 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v180 = &v159 - v34;
  v35 = sub_2692C7310();
  v190 = *(v35 - 8);
  v36 = v190[8];
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v159 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v171 = &v159 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v174 = &v159 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v182 = &v159 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v191 = &v159 - v51;
  v52 = sub_2692C73E0();
  v186 = *(v52 - 8);
  v53 = *(v186 + 64);
  v55 = MEMORY[0x28223BE20](v52, v54);
  v160 = &v159 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v159 - v58;
  v176 = swift_allocObject();
  *(v176 + 16) = a3;
  updated = type metadata accessor for UpdateAlarmIntentResponse();
  v60 = objc_allocWithZone(updated);
  v164 = a3;
  _Block_copy(a3);
  v61 = [v60 init];
  v62 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v61[v62] = 4;
  v175 = v61;
  [v61 setUserActivity_];
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v63 = sub_2692C77C0();
  v184 = __swift_project_value_buffer(v63, qword_280302C00);
  v64 = sub_2692C77B0();
  v65 = sub_2692C7A00();
  v66 = os_log_type_enabled(v64, v65);
  v163 = v40;
  v172 = v11;
  v181 = v52;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v192 = v68;
    *v67 = 136315138;
    sub_2692C7610();
    v69 = sub_2692C7370();
    v70 = v52;
    v72 = v71;
    (*(v186 + 8))(v59, v70);
    v73 = sub_26927C4DC(v69, v72, &v192);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_269270000, v64, v65, "[UpdateAlarmIntentHandler.updateSleepAlarm] Using default anchor date: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x26D6368E0](v68, -1, -1);
    MEMORY[0x26D6368E0](v67, -1, -1);
  }

  v74 = [v188 alarm];
  v75 = v190;
  v76 = v182;
  v77 = v180;
  if (v74)
  {
    v78 = v74;
    v79 = [v74 dateTime];

    if (v79)
    {
      sub_2692C7280();

      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v169 = v75[7];
    v169(v32, v80, 1, v35);
    sub_269280640(v32, v77);
    v187 = v75[6];
    if (v187(v77, 1, v35) != 1)
    {
      (v75[4])(v191, v77, v35);
      v88 = v172;
      goto LABEL_15;
    }
  }

  else
  {
    v169 = v190[7];
    v169(v180, 1, 1, v35);
  }

  v81 = v177;
  sub_2692C74B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v82 = sub_2692C74E0();
  v83 = *(v82 - 8);
  v84 = *(v83 + 72);
  v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_2692C9680;
  v87 = *(v83 + 104);
  v87(v86 + v85, *MEMORY[0x277CC9988], v82);
  v87(v86 + v85 + v84, *MEMORY[0x277CC9998], v82);
  v87(v86 + v85 + 2 * v84, *MEMORY[0x277CC9968], v82);
  v87(v86 + v85 + 3 * v84, *MEMORY[0x277CC9980], v82);
  v87(v86 + v85 + 4 * v84, *MEMORY[0x277CC99A0], v82);
  v87(v86 + v85 + 5 * v84, *MEMORY[0x277CC99A8], v82);
  sub_2692A5EEC(v86);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7610();
  sub_2692C7460();

  (*(v186 + 8))(v59, v181);
  v88 = v172;
  (*(v178 + 8))(v81, v172);
  v75 = v190;
  v89 = v180;
  v187 = v190[6];
  if (v187(v180, 1, v35) != 1)
  {
    sub_26927CEA8(v89, &qword_280302C48, &qword_2692C9780);
  }

  v76 = v182;
LABEL_15:
  v179 = v75[2];
  v180 = (v75 + 2);
  v179(v76, v191, v35);
  v90 = sub_2692C77B0();
  v91 = sub_2692C7A00();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v192 = v93;
    *v92 = 136315138;
    v94 = MEMORY[0x26D635790]();
    v96 = v95;
    v182 = v190[1];
    (v182)(v76, v35);
    v97 = sub_26927C4DC(v94, v96, &v192);
    v75 = v190;

    *(v92 + 4) = v97;
    _os_log_impl(&dword_269270000, v90, v91, "[UpdateAlarmIntentHandler.updateSleepAlarm] Inferring proposed time using anchor: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x26D6368E0](v93, -1, -1);
    MEMORY[0x26D6368E0](v92, -1, -1);
  }

  else
  {

    v182 = v75[1];
    (v182)(v76, v35);
  }

  v98 = [v188 proposedTime];
  v99 = v185;
  if (v98)
  {
    v100 = v98;
    sub_2692C7280();

    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  v102 = v169;
  v169(v99, v101, 1, v35);
  v103 = v189;
  v179(v189, v191, v35);
  v102(v103, 0, 1, v35);
  v104 = [v188 proposedMeridiemSetByUser];
  v183 = v35;
  if (v104)
  {
    v105 = v104;
    LODWORD(v188) = [v104 BOOLValue];
  }

  else
  {
    LODWORD(v188) = 0;
  }

  sub_2692C7610();
  v106 = v170;
  sub_26927883C(v189, 1, v59, v170);
  v107 = v186;
  v108 = *(v186 + 8);
  v109 = v181;
  v108(v59, v181);
  v110 = v183;
  if (v187(v106, 1, v183) == 1)
  {
    sub_26927CEA8(v106, &qword_280302C48, &qword_2692C9780);
    sub_2692C7610();
    v111 = v173;
    v112 = v185;
    sub_26927883C(v185, v188, v59, v173);
    v113 = v59;
    v114 = v111;
    v108(v113, v109);
    v115 = v182;
  }

  else
  {
    (v75[4])(v171, v106, v110);
    v116 = v177;
    sub_2692C74B0();
    v117 = v161;
    sub_2692C7480();
    (*(v178 + 8))(v116, v88);
    v118 = *(v107 + 48);
    v119 = v109;
    if (v118(v117, 1, v109) == 1)
    {
      v120 = v160;
      sub_2692C7610();
      v121 = v118(v117, 1, v119) == 1;
      v122 = v117;
      v114 = v173;
      if (!v121)
      {
        sub_26927CEA8(v122, &qword_280302C60, &qword_2692C96E0);
      }
    }

    else
    {
      v120 = v160;
      (*(v107 + 32))(v160, v117, v119);
      v114 = v173;
    }

    v112 = v185;
    sub_26927883C(v185, v188, v120, v114);
    v108(v120, v119);
    v75 = v190;
    v115 = v182;
    v110 = v183;
    (v182)(v171, v183);
  }

  sub_26927CEA8(v189, &qword_280302C48, &qword_2692C9780);
  sub_26927CEA8(v112, &qword_280302C48, &qword_2692C9780);
  if (v187(v114, 1, v110) == 1)
  {
    sub_26927CEA8(v114, &qword_280302C48, &qword_2692C9780);
    v123 = sub_2692C77B0();
    v124 = sub_2692C79F0();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_269270000, v123, v124, "[UpdateAlarmIntentHandler.updateSleepAlarm] Failed to infer proposed new time!", v125, 2u);
      MEMORY[0x26D6368E0](v125, -1, -1);
    }

    v126 = sub_2692C7760();
    v193 = v126;
    v194 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v192);
    *boxed_opaque_existential_1 = 0xD00000000000001BLL;
    boxed_opaque_existential_1[1] = 0x80000002692CC980;
    v128 = *MEMORY[0x277D61878];
    v129 = sub_2692C7710();
    (*(*(v129 - 8) + 104))(boxed_opaque_existential_1, v128, v129);
    (*(*(v126 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v126);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(&v192);
    v130 = [objc_allocWithZone(updated) init];
    v131 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v130[v131] = 5;
    [v130 setUserActivity_];
    v164[2](v164, v130);

    v115(v191, v110);
  }

  else
  {
    v132 = v174;
    (v75[4])(v174, v114, v110);
    v133 = v163;
    v179(v163, v132, v110);
    v134 = sub_2692C77B0();
    v135 = sub_2692C7A00();
    v136 = os_log_type_enabled(v134, v135);
    v182 = v115;
    if (v136)
    {
      v137 = swift_slowAlloc();
      v138 = v115;
      v139 = swift_slowAlloc();
      v192 = v139;
      *v137 = 136315138;
      sub_2692806BC(&qword_280302C78, MEMORY[0x277CC8990]);
      v140 = sub_2692C7D30();
      v142 = v141;
      v138(v133, v110);
      v143 = sub_26927C4DC(v140, v142, &v192);

      *(v137 + 4) = v143;
      _os_log_impl(&dword_269270000, v134, v135, "[UpdateAlarmIntentHandler.updateSleepAlarm] Proposed new time: %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v139);
      MEMORY[0x26D6368E0](v139, -1, -1);
      MEMORY[0x26D6368E0](v137, -1, -1);
    }

    else
    {

      v115(v133, v110);
    }

    sub_2692C7A20();
    v144 = v168;
    v145 = *&v168[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject];
    v146 = v165;
    sub_2692C7790();
    sub_2692C7780();
    (*(v166 + 8))(v146, v167);
    sub_269275A6C(v144 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager, &v192);
    v147 = v193;
    v148 = v194;
    __swift_project_boxed_opaque_existential_1(&v192, v193);
    v149 = swift_allocObject();
    v149[2] = v144;
    v149[3] = sub_26928062C;
    v150 = v175;
    v149[4] = v176;
    v149[5] = v150;
    v151 = *(v148 + 96);
    v152 = v144;

    v153 = v150;
    v154 = v174;
    v151(v174, sub_2692806B0, v149, v147, v148);

    v155 = v154;
    v156 = v182;
    v157 = v183;
    (v182)(v155, v183);
    v156(v191, v157);
    __swift_destroy_boxed_opaque_existential_1Tm(&v192);
  }
}

void sub_26927FD48(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v70 - v14;
  v16 = sub_2692C7360();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v70 - v24;
  _Block_copy(a3);
  _Block_copy(a3);
  v78 = a1;
  v26 = [a1 alarm];
  if (!v26)
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v41 = sub_2692C77C0();
    __swift_project_value_buffer(v41, qword_280302C00);
    v42 = sub_2692C77B0();
    v43 = sub_2692C79F0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_269270000, v42, v43, "Please check resolveAlarm(), alarm slot was NOT resolved.", v44, 2u);
      MEMORY[0x26D6368E0](v44, -1, -1);
    }

    v45 = sub_2692C7760();
    v79[3] = v45;
    v79[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CC920;
    v47 = *MEMORY[0x277D61878];
    v48 = sub_2692C7710();
    (*(*(v48 - 8) + 104))(boxed_opaque_existential_1, v47, v48);
    (*(*(v45 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v45);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v49 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v50 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v49[v50] = 5;
    [v49 setUserActivity_];
    (a3)[2](a3, v49);

    goto LABEL_26;
  }

  v27 = v26;
  v28 = [v26 sleepAlarmAttribute];
  if (v28)
  {
    v77 = a2;

    sub_26927826C(v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_26927CEA8(v15, &qword_280302C50, &unk_2692C96A0);
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v29 = sub_2692C77C0();
      __swift_project_value_buffer(v29, qword_280302C00);
      v30 = v27;
      v31 = sub_2692C77B0();
      v32 = sub_2692C79F0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v79[0] = v34;
        *v33 = 136315138;
        v35 = v30;
        v36 = [v35 description];
        v37 = sub_2692C7830();
        v39 = v38;

        v40 = sub_26927C4DC(v37, v39, v79);

        *(v33 + 4) = v40;
        _os_log_impl(&dword_269270000, v31, v32, "Updating sleep alarm, but it had a malformed alarmId: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x26D6368E0](v34, -1, -1);
        MEMORY[0x26D6368E0](v33, -1, -1);
      }
    }

    else
    {
      v75 = v6;
      (*(v17 + 32))(v25, v15, v16);
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v51 = sub_2692C77C0();
      __swift_project_value_buffer(v51, qword_280302C00);
      (*(v17 + 16))(v22, v25, v16);
      v52 = v27;
      v53 = sub_2692C77B0();
      v54 = sub_2692C7A00();
      v76 = v52;

      if (os_log_type_enabled(v53, v54))
      {
        v73 = v54;
        v74 = v53;
        v55 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79[0] = v72;
        *v55 = 136315394;
        sub_2692806BC(&qword_280302C58, MEMORY[0x277CC9260]);
        v56 = sub_2692C7D30();
        v58 = v57;
        v71 = *(v17 + 8);
        v71(v22, v16);
        v59 = sub_26927C4DC(v56, v58, v79);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        v60 = [v76 dateTime];
        if (v60)
        {
          v61 = v60;
          sub_2692C7280();

          v62 = 0;
        }

        else
        {
          v62 = 1;
        }

        v64 = sub_2692C7310();
        (*(*(v64 - 8) + 56))(v10, v62, 1, v64);
        v65 = sub_2692C7840();
        v67 = sub_26927C4DC(v65, v66, v79);

        *(v55 + 14) = v67;
        v68 = v74;
        _os_log_impl(&dword_269270000, v74, v73, "[UpdateAlarmIntentHandler] Sleep alarm being updated. Existing sleepAlarmId = %s, dateTime = %s", v55, 0x16u);
        v69 = v72;
        swift_arrayDestroy();
        MEMORY[0x26D6368E0](v69, -1, -1);
        MEMORY[0x26D6368E0](v55, -1, -1);

        v71(v25, v16);
      }

      else
      {

        v63 = *(v17 + 8);
        v63(v22, v16);
        v63(v25, v16);
      }
    }

    _Block_copy(a3);
    sub_26927E984(v78, v77, a3);
    _Block_release(a3);

LABEL_26:
    _Block_release(a3);
    _Block_release(a3);
    return;
  }

  _Block_copy(a3);
  sub_26927DBC8(v78, v27, a2, a3);
  _Block_release(a3);

  _Block_release(a3);

  _Block_release(a3);
}

uint64_t sub_269280640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692806BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269280704()
{
  result = qword_280302C80;
  if (!qword_280302C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302C80);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2692807B8()
{
  result = qword_280302C88;
  if (!qword_280302C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302C88);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_269280858(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2692809C0()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302C98);
  v1 = __swift_project_value_buffer(v0, qword_280302C98);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269280A88@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2692C7830();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(v5, v7);
  v9 = v8;

  if (v9)
  {
    sub_2692C73F0();
  }

  else
  {
    if (qword_280302AC8 != -1)
    {
      swift_once();
    }

    v11 = sub_2692C77C0();
    __swift_project_value_buffer(v11, qword_280302C98);
    v12 = v1;
    v13 = sub_2692C77B0();
    v14 = sub_2692C79F0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = [v12 identifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_2692C7830();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = sub_26927C4DC(v19, v21, &v25);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_269270000, v13, v14, "SiriAlarm+Additions.alarmID.getter Bad alarm identifier: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D6368E0](v16, -1, -1);
      MEMORY[0x26D6368E0](v15, -1, -1);
    }

    v23 = sub_2692C7420();
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

uint64_t sub_269280D00(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CE8, "ZH");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v30 - v7;
  v9 = sub_2692C7420();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(a1, a2);
  if (!v16)
  {
    if (qword_280302AC8 != -1)
    {
      swift_once();
    }

    v19 = sub_2692C77C0();
    __swift_project_value_buffer(v19, qword_280302C98);

    v20 = sub_2692C77B0();
    v21 = sub_2692C79F0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      if (a2)
      {
        v24 = a2;
      }

      else
      {
        a1 = 0;
        v24 = 0xE000000000000000;
      }

      v25 = sub_26927C4DC(a1, v24, &v31);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_269270000, v20, v21, "SiriAlarm+Additions.doesIdMatch Bad alarm identifier: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D6368E0](v23, -1, -1);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }

    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  sub_269280A88(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_26927CEA8(v8, &qword_280302CE8, "ZH");
LABEL_12:
    v26 = 0;
    return v26 & 1;
  }

  (*(v10 + 32))(v14, v8, v9);
  if (sub_2692C7400() == v17 && v18 == v27)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_2692C7D60();
  }

  (*(v10 + 8))(v14, v9);
  return v26 & 1;
}

uint64_t SiriAlarm.matches(alarmSearch:searchStatusOverride:)(void *a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), int a3)
{
  LODWORD(v227) = a3;
  v228 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v215 = &v202 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v213 = &v202 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v202 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v220 = &v202 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v221 = &v202 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v212 = &v202 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v217 = &v202 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v211 = &v202 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v214 = &v202 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v218 = &v202 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v222 = &v202 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v202 - v49;
  MEMORY[0x28223BE20](v48, v51);
  v226 = &v202 - v52;
  v53 = sub_2692C7310();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v57 = MEMORY[0x28223BE20](v53, v56);
  v224 = &v202 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v225 = &v202 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v216 = &v202 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v219 = &v202 - v67;
  MEMORY[0x28223BE20](v66, v68);
  v223 = &v202 - v69;
  v70 = sub_2692C71D0();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70, v73);
  v75 = &v202 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = [a1 alarmReferenceType];
  if (v76 < 3)
  {
    v77 = [a1 identifier];
    if (v77)
    {
      v81 = v77;
      v78 = sub_2692C7830();
      v80 = v79;

      LOBYTE(v81) = sub_269280D00(v78, v80);

      return v81 & 1;
    }

    v207 = v18;
    v208 = v22;
    v209 = v54;
    v210 = v3;
    v82 = [a1 includeSleepAlarm];
    v83 = sub_2692822D8();
    v84 = sub_2692C7A50();
    v85 = v84;
    if (v82)
    {
      v86 = sub_2692C7A70();

      if (v86)
      {
        v87 = [v210 sleepAlarmAttribute];
        if (v87)
        {

LABEL_92:
          LOBYTE(v81) = 1;
          return v81 & 1;
        }

LABEL_95:
        LOBYTE(v81) = 0;
        return v81 & 1;
      }
    }

    else
    {
    }

    v93 = [a1 label];
    v205 = v83;
    if (v93)
    {
      v206 = v53;
      v94 = v93;
      v95 = sub_2692C7830();
      v97 = v96;

      v229 = v95;
      v230 = v97;
      sub_2692C71B0();
      sub_2692807B8();
      sub_2692C7A90();
      v98 = *(v71 + 8);
      v98(v75, v70);

      v99 = sub_2692C7850();
      v101 = v100;

      v102 = [v210 label];
      if (!v102)
      {

        LOBYTE(v81) = 0;
        return v81 & 1;
      }

      v203 = v99;
      v103 = v102;
      v104 = sub_2692C7830();
      v204 = v101;
      v105 = v104;
      v107 = v106;

      v229 = v105;
      v230 = v107;
      sub_2692C71B0();
      sub_2692C7A90();
      v98(v75, v70);

      v108 = sub_2692C7850();
      v110 = v109;
      v111 = v204;

      if (v203 == v108 && v111 == v110)
      {

        v53 = v206;
      }

      else
      {
        v112 = sub_2692C7D60();

        v53 = v206;
        if ((v112 & 1) == 0)
        {
          goto LABEL_95;
        }
      }
    }

    v113 = v228;
    if (v227)
    {
      v113 = [a1 alarmSearchStatus];
    }

    v114 = v210;
    v115 = v209;
    if (v113 <= 1)
    {
      v119 = v226;
      if (!v113)
      {
        goto LABEL_39;
      }

      if (v113 == 1)
      {
        v120 = [v210 enabled];
        if (!v120)
        {
          goto LABEL_95;
        }

        v121 = v120;
        v122 = [v120 BOOLValue];

        if ((v122 & 1) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (v113 == 2)
      {
        v123 = [v210 enabled];
        v119 = v226;
        if (v123)
        {
          v124 = v123;
          v125 = [v123 BOOLValue];

          if (v125)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_39;
      }

      if (v113 == 3)
      {
        v116 = [v210 firing];
        if (!v116)
        {
          goto LABEL_95;
        }

        v117 = v116;
        v118 = [v116 BOOLValue];

        v119 = v226;
        if ((v118 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_39:
        v126 = [a1 repeatSchedule];
        if (!v126)
        {
          goto LABEL_47;
        }

        v127 = v126;
        type metadata accessor for AlarmRepeatSchedule();
        v128 = sub_2692C7930();

        v129 = [v114 repeatSchedule];
        if (v129)
        {
          v130 = v129;
          v131 = sub_2692C7930();

          v132 = sub_2692A86A0(v131);

          if (v128 >> 62)
          {
            if (sub_2692C7C60())
            {
LABEL_43:
              v133 = sub_2692A87CC(v132, v128);

              if ((v133 & 1) == 0)
              {
                goto LABEL_95;
              }

LABEL_47:
              v134 = [a1 timeRange];
              if (!v134)
              {
                v138 = *(v115 + 56);
                v138(v119, 1, 1, v53);
                goto LABEL_61;
              }

              v135 = v134;
              v136 = [v134 startDateComponents];

              if (v136)
              {
                sub_2692C7280();

                v137 = 0;
              }

              else
              {
                v137 = 1;
              }

              v228 = *(v115 + 56);
              v228(v50, v137, 1, v53);
              sub_269280640(v50, v119);
              v139 = v115;
              v140 = *(v115 + 48);
              if (v140(v119, 1, v53) != 1)
              {
                v227 = v140;
                v141 = v119;
                v142 = *(v115 + 32);
                v143 = v223;
                v142(v223, v141, v53);
                v144 = [a1 timeRange];
                if (!v144)
                {
                  (*(v139 + 8))(v143, v53);
                  v119 = v222;
                  v138 = v228;
                  v228(v222, 1, 1, v53);
                  v115 = v139;
                  goto LABEL_61;
                }

                v206 = v53;
                v145 = v144;
                v146 = [v144 endDateComponents];

                if (v146)
                {
                  v147 = v218;
                  sub_2692C7280();

                  v148 = 0;
                }

                else
                {
                  v148 = 1;
                  v147 = v218;
                }

                v149 = 1;
                v150 = v206;
                v151 = v227;
                v228(v147, v148, 1, v206);
                v152 = v147;
                v153 = v222;
                sub_269280640(v152, v222);
                if (v151(v153, 1, v150) != 1)
                {
                  v142(v219, v153, v150);
                  v173 = sub_2692C74F0();
                  (*(*(v173 - 8) + 56))(v213, 1, 1, v173);
                  v174 = sub_2692C7500();
                  (*(*(v174 - 8) + 56))(v215, 1, 1, v174);
                  v175 = v216;
                  sub_2692C72F0();
                  v176 = [v114 dateTime];
                  v177 = v211;
                  if (v176)
                  {
                    v178 = v176;
                    sub_2692C7280();

                    v149 = 0;
                  }

                  v179 = v228;
                  v180 = v206;
                  v228(v177, v149, 1, v206);
                  v181 = v214;
                  sub_269280640(v177, v214);
                  if (!v227(v181, 1, v180))
                  {
                    sub_2692C7290();
                  }

                  sub_26927CEA8(v181, &qword_280302C48, &qword_2692C9780);
                  sub_2692C72A0();
                  v182 = [v210 dateTime];
                  if (v182)
                  {
                    v183 = v212;
                    v184 = v182;
                    sub_2692C7280();

                    v185 = 0;
                  }

                  else
                  {
                    v185 = 1;
                    v183 = v212;
                  }

                  v179(v183, v185, 1, v180);
                  v186 = v217;
                  sub_269280640(v183, v217);
                  if (!v227(v186, 1, v180))
                  {
                    sub_2692C72B0();
                  }

                  v187 = v209;
                  v188 = v223;
                  sub_26927CEA8(v186, &qword_280302C48, &qword_2692C9780);
                  sub_2692C72C0();
                  v189 = v219;
                  LOBYTE(v81) = sub_26927607C();
                  v190 = *(v187 + 8);
                  v190(v175, v180);
                  v190(v189, v180);
                  v190(v188, v180);
                  return v81 & 1;
                }

                v115 = v209;
                (*(v209 + 8))(v223, v150);
                v53 = v150;
                v119 = v153;
              }

              v138 = v228;
LABEL_61:
              sub_26927CEA8(v119, &qword_280302C48, &qword_2692C9780);
              v154 = [a1 time];
              v155 = v225;
              if (!v154)
              {
                goto LABEL_92;
              }

              v156 = v224;
              v157 = v154;
              sub_2692C7280();

              (*(v115 + 32))(v155, v156, v53);
              v158 = sub_2692C7290();
              if (v159)
              {
                goto LABEL_85;
              }

              v160 = v158;
              v161 = [v210 dateTime];
              if (v161)
              {
                v162 = v220;
                v163 = v161;
                sub_2692C7280();

                v164 = 0;
              }

              else
              {
                v164 = 1;
                v162 = v220;
              }

              v138(v162, v164, 1, v53);
              v165 = v221;
              sub_269280640(v162, v221);
              if ((*(v115 + 48))(v165, 1, v53))
              {
                sub_26927CEA8(v165, &qword_280302C48, &qword_2692C9780);
LABEL_85:
                v191 = sub_2692C72B0();
                if (v192)
                {
                  (*(v115 + 8))(v155, v53);
                  goto LABEL_92;
                }

                v193 = v191;
                v194 = [v210 dateTime];
                if (v194)
                {
                  v195 = v207;
                  v196 = v194;
                  sub_2692C7280();

                  v197 = 0;
                }

                else
                {
                  v197 = 1;
                  v195 = v207;
                }

                v138(v195, v197, 1, v53);
                v198 = v208;
                sub_269280640(v195, v208);
                if ((*(v115 + 48))(v198, 1, v53))
                {
                  (*(v115 + 8))(v155, v53);
                  sub_26927CEA8(v198, &qword_280302C48, &qword_2692C9780);
                  goto LABEL_92;
                }

                v199 = sub_2692C72B0();
                v201 = v200;
                (*(v115 + 8))(v155, v53);
                sub_26927CEA8(v198, &qword_280302C48, &qword_2692C9780);
                if ((v201 & 1) != 0 || v193 == v199)
                {
                  goto LABEL_92;
                }

                goto LABEL_95;
              }

              v166 = sub_2692C7290();
              v168 = v167;
              sub_26927CEA8(v165, &qword_280302C48, &qword_2692C9780);
              if (v168)
              {
                goto LABEL_85;
              }

              v169 = [a1 isMeridianInferred];
              v170 = sub_2692C7A50();
              v171 = v170;
              if (v169)
              {
                v172 = sub_2692C7A70();

                if (v172)
                {
                  if (v160 % 12 == v166 % 12)
                  {
                    goto LABEL_85;
                  }

LABEL_72:
                  (*(v115 + 8))(v155, v53);
                  LOBYTE(v81) = 0;
                  return v81 & 1;
                }
              }

              else
              {
              }

              if (v160 == v166)
              {
                goto LABEL_85;
              }

              goto LABEL_72;
            }
          }

          else if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }
        }

        goto LABEL_47;
      }

      v119 = v226;
      if (v113 == 4)
      {
        goto LABEL_39;
      }
    }

    while (1)
    {
      v229 = v113;
LABEL_97:
      v113 = sub_2692C7D80();
      __break(1u);
    }
  }

  if (v76 != 3)
  {
    v229 = v76;
    goto LABEL_97;
  }

  v88 = [v3 sleepAlarmAttribute];
  if (!v88)
  {
    goto LABEL_92;
  }

  v81 = [a1 includeSleepAlarm];
  sub_2692822D8();
  v89 = sub_2692C7A50();
  v90 = v89;
  if (v81)
  {
    v91 = sub_2692C7A70();

    return v91 & 1;
  }

  return v81 & 1;
}

unint64_t sub_2692822D8()
{
  result = qword_280302CC0;
  if (!qword_280302CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280302CC0);
  }

  return result;
}

uint64_t SiriAlarm.isEqual(_:)(uint64_t a1)
{
  v3 = sub_2692C7310();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CC8, &qword_2692C9728);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v145 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v145 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v145 - v25;
  sub_26927CE40(a1, &v155, &qword_280302CD0, &unk_2692CAE00);
  if (!v157)
  {
    sub_26927CEA8(&v155, &qword_280302CD0, &unk_2692CAE00);
    return 0;
  }

  type metadata accessor for SiriAlarm();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v149 = v9;
  v150 = v23;
  v147 = v8;
  v148 = v19;
  v27 = v154;
  if (qword_280302AC8 != -1)
  {
    swift_once();
  }

  v28 = sub_2692C77C0();
  v29 = __swift_project_value_buffer(v28, qword_280302C98);
  v30 = v1;
  v31 = sub_2692C77B0();
  v32 = sub_2692C7A00();

  v33 = os_log_type_enabled(v31, v32);
  v151 = v26;
  v152 = v4;
  v153 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v155 = v145;
    *v34 = 136315138;
    v35 = v30;
    v36 = [v35 description];
    v37 = v29;
    v38 = sub_2692C7830();
    v146 = v13;
    v39 = v3;
    v40 = v27;
    v42 = v41;

    v43 = v38;
    v29 = v37;
    v44 = sub_26927C4DC(v43, v42, &v155);
    v27 = v40;
    v3 = v39;
    v13 = v146;

    *(v34 + 4) = v44;
    v30 = v153;
    _os_log_impl(&dword_269270000, v31, v32, "testing equality for SiriAlarm: %s", v34, 0xCu);
    v45 = v145;
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
    MEMORY[0x26D6368E0](v45, -1, -1);
    MEMORY[0x26D6368E0](v34, -1, -1);
  }

  v46 = [v30 label];
  if (v46)
  {
    v47 = v46;
    v48 = sub_2692C7830();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = [v27 label];
  if (!v51)
  {
    if (!v50)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v52 = v51;
  v53 = sub_2692C7830();
  v55 = v54;

  if (!v50)
  {
    if (!v55)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (!v55)
  {
LABEL_20:

    goto LABEL_21;
  }

  if (v48 == v53 && v50 == v55)
  {

    goto LABEL_25;
  }

  v66 = sub_2692C7D60();

  if ((v66 & 1) == 0)
  {
LABEL_21:
    v56 = v27;
    v57 = sub_2692C77B0();
    v58 = sub_2692C7A00();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v154 = v60;
      *v59 = 136315138;
      v61 = [v56 label];
      if (v61)
      {
        v62 = v61;
        v63 = sub_2692C7830();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      v155 = v63;
      v156 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v76 = sub_2692C7840();
      v78 = sub_26927C4DC(v76, v77, &v154);

      *(v59 + 4) = v78;
      v79 = "label doesn't match against: %s";
      goto LABEL_47;
    }

    goto LABEL_92;
  }

LABEL_25:
  v67 = v29;
  v68 = [v153 enabled];
  v69 = [v27 enabled];
  v70 = v69;
  if (!v68)
  {
    if (!v69)
    {
      goto LABEL_30;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (!v69)
  {
    v70 = v68;
    goto LABEL_37;
  }

  sub_2692822D8();
  v71 = sub_2692C7A70();

  if ((v71 & 1) == 0)
  {
LABEL_38:
    v56 = v27;
    v57 = sub_2692C77B0();
    v58 = sub_2692C7A00();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v155 = v60;
      *v59 = 136315138;
      v154 = [v56 enabled];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD8, &unk_2692C9730);
      v80 = sub_2692C7840();
      v82 = sub_26927C4DC(v80, v81, &v155);

      *(v59 + 4) = v82;
      v79 = "enabled doesn't match against: %s";
LABEL_47:
      _os_log_impl(&dword_269270000, v57, v58, v79, v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x26D6368E0](v60, -1, -1);
      MEMORY[0x26D6368E0](v59, -1, -1);

      return 0;
    }

    goto LABEL_92;
  }

LABEL_30:
  v72 = [v153 firing];
  v73 = [v27 firing];
  v74 = v73;
  if (!v72)
  {
    if (!v73)
    {
      goto LABEL_41;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!v73)
  {
    v74 = v72;
    goto LABEL_44;
  }

  sub_2692822D8();
  v75 = sub_2692C7A70();

  if ((v75 & 1) == 0)
  {
LABEL_45:
    v56 = v27;
    v57 = sub_2692C77B0();
    v58 = sub_2692C7A00();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v155 = v60;
      *v59 = 136315138;
      v154 = [v56 firing];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD8, &unk_2692C9730);
      v86 = sub_2692C7840();
      v88 = sub_26927C4DC(v86, v87, &v155);

      *(v59 + 4) = v88;
      v79 = "firing doesn't match against: %s";
      goto LABEL_47;
    }

LABEL_92:

    return 0;
  }

LABEL_41:
  v83 = [v153 repeatSchedule];
  if (v83)
  {
    v84 = v83;
    type metadata accessor for AlarmRepeatSchedule();
    v85 = sub_2692C7930();
  }

  else
  {
    v85 = 0;
  }

  v89 = [v27 repeatSchedule];
  v90 = v153;
  if (!v89)
  {
    if (!v85)
    {
      goto LABEL_66;
    }

    goto LABEL_55;
  }

  v91 = v89;
  v92 = type metadata accessor for AlarmRepeatSchedule();
  v93 = sub_2692C7930();

  if (v85)
  {
    if (v93)
    {
      v94 = sub_2692834F0(v85, v93);

      if (v94)
      {
LABEL_53:

        goto LABEL_66;
      }

      goto LABEL_63;
    }

LABEL_55:
    if (v85 >> 62)
    {
      v95 = sub_2692C7C60();
    }

    else
    {
      v95 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v95)
    {
      v96 = sub_2692C77B0();
      v97 = sub_2692C7A00();
      if (!os_log_type_enabled(v96, v97))
      {
LABEL_79:

        return 0;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_269270000, v96, v97, "repeatSchedule doesn't match against: nil", v98, 2u);
LABEL_65:
      MEMORY[0x26D6368E0](v98, -1, -1);
      goto LABEL_79;
    }

    goto LABEL_66;
  }

  if (v93)
  {
    if (v93 >> 62)
    {
      if (!sub_2692C7C60())
      {
        goto LABEL_53;
      }
    }

    else if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

LABEL_63:

    v96 = sub_2692C77B0();
    v99 = sub_2692C7A00();

    if (!os_log_type_enabled(v96, v99))
    {

      goto LABEL_79;
    }

    v100 = v92;
    v98 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v155 = v101;
    *v98 = 136315138;
    v102 = MEMORY[0x26D635E70](v93, v100);
    v104 = v103;

    v105 = sub_26927C4DC(v102, v104, &v155);

    *(v98 + 4) = v105;
    _os_log_impl(&dword_269270000, v96, v99, "repeatSchedule doesn't match against: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    MEMORY[0x26D6368E0](v101, -1, -1);
    goto LABEL_65;
  }

LABEL_66:
  v106 = [v90 sleepAlarmAttribute];
  v107 = [v27 sleepAlarmAttribute];
  v108 = v107;
  if (!v106)
  {
    if (!v107)
    {
      goto LABEL_71;
    }

LABEL_74:

    goto LABEL_75;
  }

  if (!v107)
  {
    v108 = v106;
    goto LABEL_74;
  }

  type metadata accessor for SleepAlarmAttribute();
  v109 = sub_2692C7A70();

  if ((v109 & 1) == 0)
  {
LABEL_75:
    v56 = v27;
    v57 = sub_2692C77B0();
    v58 = sub_2692C7A00();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v154 = v60;
      *v59 = 136315138;
      v114 = [v56 label];
      if (v114)
      {
        v115 = v114;
        v116 = sub_2692C7830();
        v118 = v117;
      }

      else
      {
        v116 = 0;
        v118 = 0;
      }

      v155 = v116;
      v156 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v135 = sub_2692C7840();
      v137 = sub_26927C4DC(v135, v136, &v154);

      *(v59 + 4) = v137;
      v79 = "sleepAlarmAttribute doesn't match against: %s";
      goto LABEL_47;
    }

    goto LABEL_92;
  }

LABEL_71:
  v146 = v67;
  v110 = [v90 dateTime];
  if (v110)
  {
    v111 = v151;
    v112 = v110;
    sub_2692C7280();

    v113 = 0;
  }

  else
  {
    v113 = 1;
    v111 = v151;
  }

  v119 = *(v152 + 56);
  v120 = 1;
  v119(v111, v113, 1, v3);
  v121 = [v27 dateTime];
  v122 = v150;
  if (v121)
  {
    v123 = v121;
    sub_2692C7280();

    v120 = 0;
  }

  v119(v122, v120, 1, v3);
  v124 = *(v149 + 48);
  v125 = v151;
  sub_26927CE40(v151, v13, &qword_280302C48, &qword_2692C9780);
  v153 = v124;
  sub_26927CE40(v122, &v124[v13], &qword_280302C48, &qword_2692C9780);
  v126 = *(v152 + 48);
  if (v126(v13, 1, v3) != 1)
  {
    v127 = v148;
    sub_26927CE40(v13, v148, &qword_280302C48, &qword_2692C9780);
    v128 = v153;
    if (v126(&v153[v13], 1, v3) != 1)
    {
      v138 = v152;
      v139 = v147;
      (*(v152 + 32))(v147, &v128[v13], v3);
      sub_269283730();
      v140 = sub_2692C7810();
      v141 = *(v138 + 8);
      v141(v139, v3);
      sub_26927CEA8(v150, &qword_280302C48, &qword_2692C9780);
      sub_26927CEA8(v151, &qword_280302C48, &qword_2692C9780);
      v141(v127, v3);
      sub_26927CEA8(v13, &qword_280302C48, &qword_2692C9780);
      if (v140)
      {
        goto LABEL_97;
      }

LABEL_89:
      v56 = v27;
      v57 = sub_2692C77B0();
      v58 = sub_2692C7A00();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v154 = v60;
        *v59 = 136315138;
        v129 = [v56 label];
        if (v129)
        {
          v130 = v129;
          v131 = sub_2692C7830();
          v133 = v132;
        }

        else
        {
          v131 = 0;
          v133 = 0;
        }

        v155 = v131;
        v156 = v133;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
        v142 = sub_2692C7840();
        v144 = sub_26927C4DC(v142, v143, &v154);

        *(v59 + 4) = v144;
        v79 = "dateTime doesn't match against: %s";
        goto LABEL_47;
      }

      goto LABEL_92;
    }

    sub_26927CEA8(v150, &qword_280302C48, &qword_2692C9780);
    sub_26927CEA8(v151, &qword_280302C48, &qword_2692C9780);
    (*(v152 + 8))(v127, v3);
LABEL_88:
    sub_26927CEA8(v13, &qword_280302CC8, &qword_2692C9728);
    goto LABEL_89;
  }

  sub_26927CEA8(v122, &qword_280302C48, &qword_2692C9780);
  sub_26927CEA8(v125, &qword_280302C48, &qword_2692C9780);
  if (v126(&v153[v13], 1, v3) != 1)
  {
    goto LABEL_88;
  }

  sub_26927CEA8(v13, &qword_280302C48, &qword_2692C9780);
LABEL_97:

  return 1;
}

unint64_t sub_269283398(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_22:
  result = sub_2692C7C60();
  v3 = result;
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6360D0](0, v1);
LABEL_6:
    v5 = v4;
    if (v2)
    {
      if (sub_2692C7C60() != 1)
      {
LABEL_8:
        v6 = 0;
        while (1)
        {
          v7 = v3 == v6;
          if (v3 == v6)
          {
            goto LABEL_19;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x26D6360D0](v6, v1);
          }

          else
          {
            if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v8 = *(v1 + 8 * v6 + 32);
          }

          v9 = v8;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          type metadata accessor for SiriAlarm();
          v2 = sub_2692C7A70();

          ++v6;
          if ((v2 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_8;
    }

    v7 = 1;
LABEL_19:

    return v7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2692834F0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for AlarmRepeatSchedule();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D6360D0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26D6360D0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2692C7A70();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_2692C7A70();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_2692C7C60();
  }

  result = sub_2692C7C60();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_269283730()
{
  result = qword_280302CE0;
  if (!qword_280302CE0)
  {
    sub_2692C7310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302CE0);
  }

  return result;
}

uint64_t sub_26928378C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302CF0);
  v1 = __swift_project_value_buffer(v0, qword_280302CF0);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269283854(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_2692C78B0();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_269283904(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2692C7D20() & 1;
  }
}

uint64_t _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CE8, "ZH");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = (&v135 - v7);
  v9 = sub_2692C7200();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  *&v142 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v135 - v16;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  *&v141 = &v135 - v21;
  v22 = sub_2692C7250();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  MEMORY[0x28223BE20](v26, v27);
  v30 = &v135 - v29;
  if (!a2)
  {
    if (qword_280302AD0 != -1)
    {
      swift_once();
    }

    v63 = sub_2692C77C0();
    __swift_project_value_buffer(v63, qword_280302CF0);
    v64 = sub_2692C77B0();
    v65 = sub_2692C7A00();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_269270000, v64, v65, "AlarmID.alarmUUID input identifier was nil!", v66, 2u);
      MEMORY[0x26D6368E0](v66, -1, -1);
    }

    return 0;
  }

  v136 = v17;
  v137 = v28;
  v139 = v8;
  v140 = v10;
  if (qword_280302AD0 != -1)
  {
    swift_once();
  }

  v31 = sub_2692C77C0();
  v32 = __swift_project_value_buffer(v31, qword_280302CF0);

  v33 = sub_2692C77B0();
  v34 = sub_2692C7A00();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v138 = v23;
    v37 = v22;
    v38 = v9;
    v39 = v32;
    v40 = v36;
    *&v143 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_26927C4DC(a1, a2, &v143);
    _os_log_impl(&dword_269270000, v33, v34, "AlarmID.alarmUUID parsing identifier from potential alarm URL: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v41 = v40;
    v32 = v39;
    v9 = v38;
    v22 = v37;
    v23 = v138;
    MEMORY[0x26D6368E0](v41, -1, -1);
    MEMORY[0x26D6368E0](v35, -1, -1);
  }

  v42 = sub_2692C78E0();

  if (v42)
  {
    v43 = sub_2692C78A0();
    v44 = sub_269283854(v43, a1, a2);
    v46 = v45;
    v48 = v47;
    v50 = v49;

    a1 = MEMORY[0x26D635DA0](v44, v46, v48, v50);
    a2 = v51;
  }

  *&v143 = a1;
  *(&v143 + 1) = a2;
  v146[0] = 0xD000000000000014;
  v146[1] = 0x80000002692CC780;
  v52 = sub_2692807B8();
  v53 = sub_2692C7AB0();

  if ((v53 & 1) == 0)
  {
LABEL_18:
    v67 = v141;
    sub_2692C7240();
    if ((*(v23 + 48))(v67, 1, v22) == 1)
    {
LABEL_30:
      *&v143 = a1;
      *(&v143 + 1) = a2;
      strcpy(v146, "x-apple-clock");
      HIWORD(v146[1]) = -4864;
      if (sub_2692C7AB0())
      {

        v84 = sub_2692C77B0();
        v85 = sub_2692C79F0();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v143 = v87;
          *v86 = 136315394;
          *(v86 + 4) = sub_26927C4DC(0x2D656C7070612D78, 0xED00006B636F6C63, &v143);
          *(v86 + 12) = 2080;
          *(v86 + 14) = sub_26927C4DC(a1, a2, &v143);
          _os_log_impl(&dword_269270000, v84, v85, "AlarmID.alarmUUID identifier is in an unexpected format, attempting detection of ID in %s in %s", v86, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6368E0](v87, -1, -1);
          MEMORY[0x26D6368E0](v86, -1, -1);
        }

        *&v143 = a1;
        *(&v143 + 1) = a2;

        v88 = MEMORY[0x26D635FF0](58, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v52);

        v89 = *(v88 + 16);
        if (v89)
        {
          v90 = v88 + 32 * v89;
          v142 = *v90;
          v91 = *(v90 + 16);
          v92 = *(v90 + 24);

          v143 = v142;
          v144 = v91;
          v145 = v92;
          *&v142 = sub_269284A80();
          v93 = MEMORY[0x26D635FF0](63, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40]);

          v94 = v93[2];
          if (v94)
          {
            if (sub_269283904(v93[4], v93[5], v93[6], v93[7], 0x6D72616C61, 0xE500000000000000))
            {
              v95 = &v93[4 * v94];
              v141 = *v95;
              v96 = v95[2];
              v97 = v95[3];

              v143 = v141;
              v144 = v96;
              v145 = v97;
              v98 = MEMORY[0x26D635FF0](38, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40], v142);

              *&v141 = *(v98 + 16);
              if (v141)
              {
                v139 = v32;
                v140 = v52;
                v99 = 0;
                v100 = (v98 + 56);
                while (1)
                {
                  if (v99 >= *(v98 + 16))
                  {
                    __break(1u);
                    goto LABEL_71;
                  }

                  v101 = a1;
                  v102 = *(v100 - 3);
                  v103 = *(v100 - 2);
                  v104 = *(v100 - 1);
                  v105 = *v100;
                  *&v143 = v102;
                  *(&v143 + 1) = v103;
                  v144 = v104;
                  v145 = v105;
                  v146[0] = 4023401;
                  v146[1] = 0xE300000000000000;

                  if (sub_2692C7AB0())
                  {
                    break;
                  }

                  ++v99;
                  v100 += 4;
                  a1 = v101;
                  if (v141 == v99)
                  {
                    goto LABEL_63;
                  }
                }

                *&v143 = v102;
                *(&v143 + 1) = v103;
                v144 = v104;
                v145 = v105;
                v121 = MEMORY[0x26D635FF0](61, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40], v142);

                v122 = *(v121 + 16);
                if (!v122)
                {
                  a1 = v101;
                  goto LABEL_63;
                }

                if (v122 > *(v121 + 16))
                {
                  goto LABEL_73;
                }

                v123 = (v121 + 32 * v122);
                v124 = *v123;
                v125 = v123[1];
                v126 = v123[2];
                v127 = v123[3];

                a1 = MEMORY[0x26D635DA0](v124, v125, v126, v127);

                return a1;
              }
            }
          }
        }

LABEL_63:
      }

      else
      {
        v106 = v139;
        sub_2692C73F0();
        v107 = sub_2692C7420();
        v108 = (*(*(v107 - 8) + 48))(v106, 1, v107);
        sub_26927CEA8(v106, &qword_280302CE8, "ZH");
        if (v108 != 1)
        {

          v109 = sub_2692C77B0();
          v110 = sub_2692C79D0();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *&v143 = v112;
            *v111 = 136315138;

            v113 = sub_26927C4DC(a1, a2, &v143);

            *(v111 + 4) = v113;
            _os_log_impl(&dword_269270000, v109, v110, "AlarmID.alarmUUID received raw UUID string for alarm identifier: %s", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v112);
            MEMORY[0x26D6368E0](v112, -1, -1);
            MEMORY[0x26D6368E0](v111, -1, -1);
          }

          return a1;
        }
      }

      v130 = sub_2692C77B0();
      v131 = sub_2692C79F0();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *&v143 = v133;
        *v132 = 136315138;
        v134 = sub_26927C4DC(a1, a2, &v143);

        *(v132 + 4) = v134;
        _os_log_impl(&dword_269270000, v130, v131, "AlarmID.alarmUUID identifier was in an unexpected format that we cannot parse: %s", v132, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        MEMORY[0x26D6368E0](v133, -1, -1);
        MEMORY[0x26D6368E0](v132, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    (*(v23 + 32))(v30, v67, v22);
    v68 = sub_2692C7230();
    if (!v69)
    {
      (*(v23 + 8))(v30, v22);
      goto LABEL_30;
    }

    *&v141 = v30;
    *&v143 = v68;
    *(&v143 + 1) = v69;
    strcpy(v146, "x-apple-clock");
    HIWORD(v146[1]) = -4864;
    v70 = sub_2692C7AB0();

    if (v70)
    {
      if (sub_2692C7220() == 0x6D72616C61 && v71 == 0xE500000000000000)
      {

LABEL_27:

        v73 = v137;
        v74 = v141;
        (*(v23 + 16))(v137, v141, v22);
        v75 = sub_2692C77B0();
        v76 = sub_2692C7A00();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v143 = v78;
          *v77 = 136315138;
          sub_269284AD4();
          v79 = sub_2692C7D30();
          v81 = v80;
          v139 = *(v23 + 8);
          v139(v73, v22);
          v82 = sub_26927C4DC(v79, v81, &v143);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_269270000, v75, v76, "AlarmID.alarmUUID identifier successfully converts to URL: %s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v78);
          v83 = v78;
          v74 = v141;
          MEMORY[0x26D6368E0](v83, -1, -1);
          MEMORY[0x26D6368E0](v77, -1, -1);
        }

        else
        {

          v139 = *(v23 + 8);
          v139(v73, v22);
        }

        result = sub_2692C7210();
        v114 = result;
        if (!result)
        {
          v139(v74, v22);
          return 0;
        }

        v137 = v22;
        v138 = v23;
        v115 = *(result + 16);
        v116 = v140;
        if (v115)
        {
          v117 = 0;
          v118 = (v140 + 8);
          while (v117 < *(v114 + 16))
          {
            (*(v116 + 16))(v142, v114 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v117, v9);
            if (sub_2692C71E0() == 25705 && v119 == 0xE200000000000000)
            {

LABEL_61:

              v128 = v140 + 32;
              v129 = v136;
              (*(v140 + 32))(v136, v142, v9);
              a1 = sub_2692C71F0();
              (*(v128 - 24))(v129, v9);
              v139(v141, v137);
              return a1;
            }

            v120 = sub_2692C7D60();

            if (v120)
            {
              goto LABEL_61;
            }

            ++v117;
            result = (*v118)(v142, v9);
            v116 = v140;
            if (v115 == v117)
            {
              goto LABEL_55;
            }
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_55:
        v139(v141, v137);

        return 0;
      }

      v72 = sub_2692C7D60();

      if (v72)
      {
        goto LABEL_27;
      }
    }

    (*(v23 + 8))(v141, v22);
    goto LABEL_30;
  }

  *&v143 = a1;
  *(&v143 + 1) = a2;

  v54 = MEMORY[0x26D635FF0](58, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v52);

  v55 = a1;
  v56 = *(v54 + 16);
  if (!v56)
  {

    a1 = v55;
    goto LABEL_18;
  }

  if (v56 <= *(v54 + 16))
  {
    v58 = (v54 + 32 * v56);
    v59 = *v58;
    v60 = v58[1];
    v61 = v58[2];
    v62 = v58[3];

    a1 = MEMORY[0x26D635DA0](v59, v60, v61, v62);

    return a1;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AlarmID(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AlarmID(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
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
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_269284A80()
{
  result = qword_280302D10;
  if (!qword_280302D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302D10);
  }

  return result;
}

unint64_t sub_269284AD4()
{
  result = qword_280302D18;
  if (!qword_280302D18)
  {
    sub_2692C7250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302D18);
  }

  return result;
}

uint64_t sub_269284B2C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2692C7B00();
    v5 = v4;
    v6 = sub_2692C7B50();
    v8 = v7;
    v9 = MEMORY[0x26D636040](v3, v5, v6, v7);
    sub_269284F04(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_269284F04(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_2692C7AF0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_269284F10(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_269284F04(v3, v5, v2 != 0);
  return v13;
}

void sub_269284C78(uint64_t (*a1)(void))
{
  v2 = sub_2692C7360();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(a1(0)) init];
  v9 = sub_2692C76E0();
  v10 = sub_269284B2C(v9);

  if (v10)
  {
    v11 = [v10 alarmURL];

    if (!v11)
    {
      __break(1u);
      return;
    }

    sub_2692C7340();

    sub_2692C7330();
    (*(v3 + 8))(v7, v2);
    v10 = sub_2692C7820();
  }

  [v8 setAlarmId_];

  sub_2692C7700();
  v12 = sub_2692C76C0();
  if (v12)
  {
    v13 = v12;
    v14 = sub_2692C7770();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = sub_2692C7820();

      [v8 setRemoteDeviceId_];
    }

    else
    {
    }
  }

  sub_2692C76F0();
  if (v19)
  {
    v20 = sub_2692C7820();
  }

  else
  {
    v20 = 0;
  }

  [v8 setRemoteExecutionId_];

  sub_2692C76D0();
  v21 = sub_2692C7980();
  [v8 setSkipConfirmation_];
}

uint64_t sub_269284F04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_269284F10(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D636070](a1, a2, v7);
      sub_269285110();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269285110();
    if (sub_2692C7B20() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2692C7B30();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2692C7A60();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2692C7A70();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_269285110()
{
  result = qword_280302D20;
  if (!qword_280302D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280302D20);
  }

  return result;
}

uint64_t sub_26928515C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_269285208()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D28);
  v1 = __swift_project_value_buffer(v0, qword_280302D28);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ChangeAlarmStatusIntentHandler.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_26928A8F0(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id ChangeAlarmStatusIntentHandler.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_26928A7F4(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id ChangeAlarmStatusIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChangeAlarmStatusIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v14);
  v0 = type metadata accessor for SiriAlarmManagerImpl();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v5 = swift_allocObject();
  *(v3 + v4) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v7 = qword_280303380;
  *(v3 + v6) = qword_280303380;
  sub_269275A30(&v14, v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v8 = type metadata accessor for ChangeAlarmStatusIntentHandler();
  v9 = objc_allocWithZone(v8);
  v15 = v0;
  v16 = &protocol witness table for SiriAlarmManagerImpl;
  *&v14 = v3;
  *&v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject] = v7;
  sub_269275A6C(&v14, &v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager]);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

uint64_t sub_269285620(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v68 = a2;
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &off_279C54000;
  v13 = [a1 operation];
  v14 = [a1 alarms];
  if (!v14)
  {
LABEL_25:
    if (v13 == 2)
    {
      sub_269275A6C(&v3[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v70);
      v27 = v71;
      v28 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v29 = swift_allocObject();
      v29[2] = v68;
      v29[3] = a3;
      v29[4] = a1;
      v29[5] = 2;
      v30 = *(v28 + 56);

      v31 = a1;
      v30(0, sub_26928AA10, v29, v27, v28);

      return __swift_destroy_boxed_opaque_existential_1Tm(v70);
    }

    v32 = [a1 alarmSearch];
    if (!v32)
    {
      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v55 = sub_2692C77C0();
      __swift_project_value_buffer(v55, qword_280302D28);
      v56 = a1;
      v57 = sub_2692C77B0();
      v58 = sub_2692C79F0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v56;
        v61 = v56;
        _os_log_impl(&dword_269270000, v57, v58, "No alarmSearch found for intent: %@", v59, 0xCu);
        sub_26927CEA8(v60, &qword_280302D50, &qword_2692CAB70);
        MEMORY[0x26D6368E0](v60, -1, -1);
        MEMORY[0x26D6368E0](v59, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_2692C9430;
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      *(v62 + 32) = sub_2692BE64C(1);
      v68(v62);
      goto LABEL_38;
    }

    v65 = v32;
    v67 = v3;
    if (qword_280302AD8 == -1)
    {
LABEL_29:
      v66 = a3;
      v33 = sub_2692C77C0();
      __swift_project_value_buffer(v33, qword_280302D28);
      v34 = a1;
      v35 = sub_2692C77B0();
      v36 = sub_2692C7A00();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v70[0] = v64;
        *v37 = 136315138;
        v69 = [v34 v12[233]];
        v38 = sub_2692C7840();
        v40 = v12;
        v41 = sub_26927C4DC(v38, v39, v70);

        *(v37 + 4) = v41;
        v12 = v40;
        _os_log_impl(&dword_269270000, v35, v36, "This is not dismiss request, try to do %s", v37, 0xCu);
        v42 = v64;
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x26D6368E0](v42, -1, -1);
        MEMORY[0x26D6368E0](v37, -1, -1);
      }

      v43 = v67;
      v44 = [v34 v12[233]];
      sub_2692C7A20();
      v45 = *&v43[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
      sub_2692C7790();
      sub_2692C7780();
      (*(v7 + 8))(v11, v6);
      sub_269275A6C(&v43[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v70);
      v46 = v71;
      v47 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v48 = swift_allocObject();
      v49 = v65;
      v48[2] = v43;
      v48[3] = v49;
      v50 = v68;
      v48[4] = v44;
      v48[5] = v50;
      v48[6] = v66;
      v51 = *(v47 + 56);

      v52 = v43;
      v53 = v49;
      v51(v49, sub_26928A9F8, v48, v46, v47);

      return __swift_destroy_boxed_opaque_existential_1Tm(v70);
    }

LABEL_42:
    swift_once();
    goto LABEL_29;
  }

  v15 = v14;
  type metadata accessor for SiriAlarm();
  v16 = sub_2692C7930();

  v12 = (v16 >> 62);
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  if (!sub_2692C7C60())
  {
LABEL_24:

    v12 = &off_279C54000;
    goto LABEL_25;
  }

LABEL_4:
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v17 = sub_2692C77C0();
  __swift_project_value_buffer(v17, qword_280302D28);

  v18 = sub_2692C77B0();
  v19 = sub_2692C7A00();
  if (os_log_type_enabled(v18, v19))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (v12)
    {
      v20 = sub_2692C7C60();
    }

    else
    {
      v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v20;

    _os_log_impl(&dword_269270000, v18, v19, "ChangeAlarmStatusIntentHandler: Using %ld alarms on intent for resolution", v11, 0xCu);
    MEMORY[0x26D6368E0](v11, -1, -1);

    v21 = v16 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
LABEL_20:
      v6 = *(v21 + 16);
      if (!v6)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {

    v21 = v16 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v6 = sub_2692C7C60();
  if (v6)
  {
LABEL_11:
    v70[0] = MEMORY[0x277D84F90];
    sub_2692C7C10();
    if ((v6 & 0x8000000000000000) == 0)
    {
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      v22 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x26D6360D0](v22, v16);
        }

        else
        {
          v23 = *(v16 + 8 * v22 + 32);
        }

        v24 = v23;
        ++v22;
        sub_2692C42D8(v23);

        sub_2692C7BF0();
        v25 = *(v70[0] + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (v6 != v22);

      v26 = v70[0];
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_21:

  v26 = MEMORY[0x277D84F90];
LABEL_22:
  v68(v26);
LABEL_38:
}

void sub_269285E40(uint64_t a1, void (*a2)(uint64_t), unint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v38 = *a1;
  v39 = v10;
  v11 = _s21SiriTimeAlarmInternal0C18IntentHandlerUtilsO15getFiringAlarms18fromSearchResponseSayAA0aC0CGs6ResultOyAhA0C14OperationErrorOG_tFZ_0(&v38);
  v12 = v11;
  if (v11 >> 62)
  {
    if (sub_2692C7C60())
    {
      v19 = sub_2692C7C60();
      if (!v19)
      {

        v18 = MEMORY[0x277D84F90];
LABEL_10:
        a2(v18);

        return;
      }

      v13 = v19;
      v38 = MEMORY[0x277D84F90];
      a4 = &v38;
      sub_2692C7C10();
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_4:
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v14 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x26D6360D0](v14, v12);
          }

          else
          {
            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          ++v14;
          sub_2692C42D8(v15);

          sub_2692C7BF0();
          v17 = *(v38 + 16);
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        while (v13 != v14);

        v18 = v38;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      v38 = MEMORY[0x277D84F90];
      sub_2692C7C10();
      goto LABEL_4;
    }
  }

  v20 = [a4 alarmSearch];
  if (!v20)
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v32 = sub_2692C77C0();
    __swift_project_value_buffer(v32, qword_280302D28);
    v33 = sub_2692C77B0();
    v34 = sub_2692C79F0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_269270000, v33, v34, "No firing alarms found, but alarmSearch was also nil!", v35, 2u);
      MEMORY[0x26D6368E0](v35, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2692C9430;
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    *(v18 + 32) = sub_2692BE64C(1);
    goto LABEL_10;
  }

  v21 = v20;
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v22 = sub_2692C77C0();
  __swift_project_value_buffer(v22, qword_280302D28);
  v23 = a4;
  v24 = sub_2692C77B0();
  v25 = sub_2692C7A00();

  if (os_log_type_enabled(v24, v25))
  {
    v37 = a3;
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v26 = 136315138;
    [v23 operation];
    v27 = sub_2692C7840();
    v29 = a2;
    v30 = sub_26927C4DC(v27, v28, &v38);

    *(v26 + 4) = v30;
    a2 = v29;
    _os_log_impl(&dword_269270000, v24, v25, "No firing alarms, try to do %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x26D6368E0](v36, -1, -1);
    v31 = v26;
    a3 = v37;
    MEMORY[0x26D6368E0](v31, -1, -1);
  }

  v38 = v9;
  v39 = v10;
  sub_26928B2EC(&v38, v21, a5, a2, a3);
}

void sub_2692862C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
  v3 = sub_2692C7910();
  (*(a2 + 16))(a2, v3);
}

void sub_26928632C(void *a1, void (*a2)(void))
{
  v3 = [a1 handleSilently];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_self() successWithResolvedValue_];
  a2();
}

uint64_t sub_2692864B4(uint64_t *a1, uint64_t a2, NSObject *a3, _DWORD *a4, void (*a5)(uint64_t), unint64_t a6)
{
  v22 = a6;
  v11 = sub_2692C77A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a1 + 8);
  sub_2692C7A10();
  v19 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v12 + 8))(v16, v11);
  v23 = v17;
  v24 = v18;
  return sub_26928B2EC(&v23, a3, a4, a5, v22);
}

void sub_26928660C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v11 = sub_2692C77A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v42[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    sub_2692C7A20();
    v24 = *&v5[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v12 + 8))(v16, v11);
    sub_269275A6C(&v5[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v42);
    v25 = v43;
    v26 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v27 = swift_allocObject();
    v27[2] = v5;
    v27[3] = a2;
    v27[4] = a3;
    v27[5] = a4;
    v27[6] = a5;
    v28 = *(v26 + 80);
    v29 = v5;
    v30 = a2;

    v28(sub_26928E8B4, v27, v25, v26);
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    sub_2692C7A20();
    v17 = *&v5[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v12 + 8))(v16, v11);
    sub_269275A6C(&v5[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v42);
    v18 = v43;
    v19 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v20 = swift_allocObject();
    v20[2] = v5;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = a4;
    v20[6] = a5;
    v21 = *(v19 + 88);
    v22 = v5;
    v23 = a2;

    v21(sub_26928E8B8, v20, v18, v19);
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return;
  }

  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v31 = sub_2692C77C0();
  __swift_project_value_buffer(v31, qword_280302D28);
  v32 = sub_2692C77B0();
  v33 = sub_2692C79F0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_269270000, v32, v33, "Only support .enable, .disable here.", v34, 2u);
    MEMORY[0x26D6368E0](v34, -1, -1);
  }

  v35 = sub_2692C7760();
  v43 = v35;
  v44 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v37 = *MEMORY[0x277D61890];
  v38 = sub_2692C7710();
  (*(*(v38 - 8) + 104))(boxed_opaque_existential_1, v37, v38);
  (*(*(v35 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v35);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  v39 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v40 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v39[v40] = 5;
  [v39 setUserActivity_];
  a4(v39);
}

void sub_269286ACC(unsigned __int8 *a1, char *a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v52 = a4;
  v54 = a3;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  v16 = a1[1];
  sub_2692C7A10();
  v17 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  v18 = *(v11 + 8);
  v18(v15, v10);
  if (v16)
  {
    v19 = v54;
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280302D28);
    v21 = v19;
    v22 = sub_2692C77B0();
    v23 = sub_2692C79F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55 = v25;
      *v24 = 136315138;
      v26 = [v21 identifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_2692C7830();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v56[0] = v28;
      v56[1] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v40 = sub_2692C7840();
      v42 = sub_26927C4DC(v40, v41, &v55);

      *(v24 + 4) = v42;
      _os_log_impl(&dword_269270000, v22, v23, "Failed to disable sleep alarm: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x26D6368E0](v25, -1, -1);
      MEMORY[0x26D6368E0](v24, -1, -1);
    }

    v43 = sub_2692C7760();
    v57 = v43;
    v58 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    sub_269280704();
    v45 = swift_allocError();
    *v46 = v53;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v47 = *MEMORY[0x277D61838];
    v48 = sub_2692C76A0();
    (*(*(v48 - 8) + 104))(boxed_opaque_existential_1, v47, v48);
    (*(*(v43 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v43);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v56);

    v49 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v50 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v49[v50] = 5;
    [v49 setUserActivity_];
    a5(v49);
  }

  else
  {
    v31 = swift_allocObject();
    *(v31 + 16) = a5;
    *(v31 + 24) = a6;

    v32 = v54;
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v18(v15, v10);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v56);
    v33 = v57;
    v34 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v35 = swift_allocObject();
    v35[2] = a2;
    v35[3] = sub_26928E618;
    v36 = v52;
    v35[4] = v31;
    v35[5] = v36;
    v35[6] = v32;
    v37 = *(v34 + 64);
    v38 = v32;
    v39 = a2;

    v37(sub_26928E63C, v35, v33, v34);

    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }
}

void sub_26928702C(unsigned __int8 *a1, char *a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v52 = a4;
  v54 = a3;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  v16 = a1[1];
  sub_2692C7A10();
  v17 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  v18 = *(v11 + 8);
  v18(v15, v10);
  if (v16)
  {
    v19 = v54;
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280302D28);
    v21 = v19;
    v22 = sub_2692C77B0();
    v23 = sub_2692C79F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55 = v25;
      *v24 = 136315138;
      v26 = [v21 identifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_2692C7830();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v56[0] = v28;
      v56[1] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v40 = sub_2692C7840();
      v42 = sub_26927C4DC(v40, v41, &v55);

      *(v24 + 4) = v42;
      _os_log_impl(&dword_269270000, v22, v23, "Failed to enable sleep alarm: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x26D6368E0](v25, -1, -1);
      MEMORY[0x26D6368E0](v24, -1, -1);
    }

    v43 = sub_2692C7760();
    v57 = v43;
    v58 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    sub_269280704();
    v45 = swift_allocError();
    *v46 = v53;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v47 = *MEMORY[0x277D61838];
    v48 = sub_2692C76A0();
    (*(*(v48 - 8) + 104))(boxed_opaque_existential_1, v47, v48);
    (*(*(v43 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v43);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v56);

    v49 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v50 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v49[v50] = 5;
    [v49 setUserActivity_];
    a5(v49);
  }

  else
  {
    v31 = swift_allocObject();
    *(v31 + 16) = a5;
    *(v31 + 24) = a6;

    v32 = v54;
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v18(v15, v10);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v56);
    v33 = v57;
    v34 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v35 = swift_allocObject();
    v35[2] = a2;
    v35[3] = sub_26928E6C8;
    v36 = v52;
    v35[4] = v31;
    v35[5] = v36;
    v35[6] = v32;
    v37 = *(v34 + 64);
    v38 = v32;
    v39 = a2;

    v37(sub_26928E8AC, v35, v33, v34);

    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }
}

void sub_26928758C(unint64_t a1, void (*a2)(char *), uint64_t a3, const char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v36 - v12;
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v14 = sub_2692C77C0();
  __swift_project_value_buffer(v14, qword_280302D28);

  v15 = sub_2692C77B0();
  v16 = sub_2692C7A00();

  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_17;
  }

  v41 = v8;
  v17 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v44 = v38;
  v39 = v17;
  *v17 = 136315138;
  v42 = v15;
  if (a1 >> 62)
  {
    v18 = sub_2692C7C60();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v16;
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_16:
    v27 = MEMORY[0x26D635E70](v19, v41);
    v29 = v28;

    v30 = sub_26927C4DC(v27, v29, &v44);

    v31 = v39;
    *(v39 + 1) = v30;
    v15 = v42;
    _os_log_impl(&dword_269270000, v42, v40, a4, v31, 0xCu);
    v32 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x26D6368E0](v32, -1, -1);
    MEMORY[0x26D6368E0](v31, -1, -1);
LABEL_17:

    v33 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v34 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v33[v34] = 4;
    [v33 setUserActivity_];
    type metadata accessor for SiriAlarm();
    v35 = sub_2692C7910();
    [v33 setModifiedAlarms_];

    a2(v33);
    return;
  }

  v43 = MEMORY[0x277D84F90];
  sub_2692A0AAC(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v36[0] = a4;
    v36[1] = a3;
    v37 = a2;
    v20 = 0;
    v19 = v43;
    v21 = a1 & 0xC000000000000001;
    v22 = a1;
    do
    {
      if (v21)
      {
        v23 = MEMORY[0x26D6360D0](v20, a1);
      }

      else
      {
        v23 = *(a1 + 8 * v20 + 32);
      }

      v24 = v23;
      sub_26927826C(v13);

      v43 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2692A0AAC(v25 > 1, v26 + 1, 1);
        v19 = v43;
      }

      ++v20;
      *(v19 + 16) = v26 + 1;
      sub_26928E660(v13, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, &qword_280302C50, &unk_2692C96A0);
      a1 = v22;
    }

    while (v18 != v20);
    a2 = v37;
    a4 = v36[0];
    goto LABEL_16;
  }

  __break(1u);
}

void sub_26928796C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  v27 = a3;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_2692C7A10();
  v18 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v11 + 8))(v15, v10);
  if (v17)
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v19 = sub_2692C77C0();
    __swift_project_value_buffer(v19, qword_280302D28);
    v20 = sub_2692C77B0();
    v21 = sub_2692C79F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_269270000, v20, v21, "Failed to retrieve new sleep alarm when constructModifiedAlarms().", v22, 2u);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }
  }

  else if (v16)
  {
    v23 = v16;
    v24 = [a6 undoable];
    [v23 setUndoable_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2692C9430;
    *(v25 + 32) = v23;
    v28 = v25;
    sub_26928E654(v16, 0);

    sub_2692B46CC(v26);
    v27(v28);

    sub_269274440(v16, 0);
    return;
  }

  v27(a5);
}

void sub_269287C30(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v4 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 4;
  [v3 setUserActivity_];
  a2(v3);
}

void sub_269287D94(id a1, void (*a2)(char *), void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v161 - v15;
  v17 = sub_2692C77A0();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 alarms];
  if (!v23)
  {
    goto LABEL_92;
  }

  v24 = v23;
  v169 = v22;
  v170 = v18;
  v171 = v17;
  v172 = a1;
  type metadata accessor for SiriAlarm();
  v25 = sub_2692C7930();

  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_4;
    }

LABEL_91:

    a1 = v172;
LABEL_92:
    v97 = [a1 alarmSearch];
    if (v97)
    {
      v98 = v97;
      v99 = [v97 time];

      if (v99)
      {
        sub_2692C7280();

        v100 = sub_2692C7310();
        (*(*(v100 - 8) + 56))(v13, 0, 1, v100);
      }

      else
      {
        v100 = sub_2692C7310();
        (*(*(v100 - 8) + 56))(v13, 1, 1, v100);
      }

      sub_26928E660(v13, v16, &qword_280302C48, &qword_2692C9780);
      sub_2692C7310();
      if ((*(*(v100 - 8) + 48))(v16, 1, v100) != 1)
      {
        sub_26927CEA8(v16, &qword_280302C48, &qword_2692C9780);
        v103 = sub_269290E5C();
        if (v103)
        {
          v104 = v103;
          sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v174);
          AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
          v106 = objc_allocWithZone(AlarmIntentHandler);
          v107 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject;
          if (qword_280302B50 != -1)
          {
            swift_once();
          }

          v108 = qword_280303380;
          *&v106[v107] = qword_280303380;
          sub_269275A6C(v174, &v106[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
          v173.receiver = v106;
          v173.super_class = AlarmIntentHandler;
          v109 = v108;
          v110 = objc_msgSendSuper2(&v173, sel_init);
          __swift_destroy_boxed_opaque_existential_1Tm(v174);

          sub_2692A665C(v104, v110, a2, a3);

          return;
        }

        goto LABEL_99;
      }
    }

    else
    {
      v101 = sub_2692C7310();
      (*(*(v101 - 8) + 56))(v16, 1, 1, v101);
    }

    sub_26927CEA8(v16, &qword_280302C48, &qword_2692C9780);
LABEL_99:
    v95 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v102 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v95[v102] = 5;
    [v95 setUserActivity_];
    a2(v95);
LABEL_100:

    return;
  }

  while (1)
  {
    v26 = sub_2692C7C60();
    if (!v26)
    {
      goto LABEL_91;
    }

LABEL_4:
    v166 = type metadata accessor for ChangeAlarmStatusIntentResponse();
    v27 = [objc_allocWithZone(v166) init];
    v28 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v27[v28] = 4;
    v168 = v27;
    [v27 setUserActivity_];
    if (ChangeAlarmStatusIntent.isDismissRequest(alarms:)(v25))
    {
      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v29 = sub_2692C77C0();
      __swift_project_value_buffer(v29, qword_280302D28);
      v30 = sub_2692C77B0();
      v31 = sub_2692C7A00();
      v32 = os_log_type_enabled(v30, v31);
      v34 = v170;
      v33 = v171;
      v35 = v169;
      if (v32)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_269270000, v30, v31, "Intent is dismiss firing alarm intent, trying to handle().", v36, 2u);
        MEMORY[0x26D6368E0](v36, -1, -1);
      }

      sub_2692C7A20();
      v37 = *(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject);
      sub_2692C7790();
      sub_2692C7780();
      (*(v34 + 8))(v35, v33);
      sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v174);
      v38 = v175;
      v39 = v176;
      __swift_project_boxed_opaque_existential_1(v174, v175);
      v40 = swift_allocObject();
      v41 = v168;
      v40[2] = v4;
      v40[3] = v41;
      v40[4] = a2;
      v40[5] = a3;
      v42 = *(v39 + 40);
      v43 = v4;
      v44 = v41;

      v42(v25, sub_26928E410, v40, v38, v39);

      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      return;
    }

    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v45 = sub_2692C77C0();
    v165 = __swift_project_value_buffer(v45, qword_280302D28);
    v46 = sub_2692C77B0();
    v16 = sub_2692C7A00();
    if (os_log_type_enabled(v46, v16))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_269270000, v46, v16, "Intent is enable/disable alarm intent(not dismiss), trying to handle().", v47, 2u);
      MEMORY[0x26D6368E0](v47, -1, -1);
    }

    v167 = swift_allocObject();
    *(v167 + 16) = MEMORY[0x277D84F90];
    v48 = [v172 operation];
    v163 = a2;
    v164 = a3;
    v161 = v4;
    if (v48 == 1)
    {
      a2 = 0;
      a3 = (v25 & 0xC000000000000001);
      v4 = (v25 & 0xFFFFFFFFFFFFFF8);
      v162 = MEMORY[0x277D84F90];
      while (1)
      {
        v62 = a2;
        while (1)
        {
          if (a3)
          {
            v64 = MEMORY[0x26D6360D0](v62, v25);
          }

          else
          {
            if (v62 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v64 = *(v25 + 8 * v62 + 32);
          }

          v65 = v64;
          a2 = (v62 + 1);
          if (__OFADD__(v62, 1))
          {
            goto LABEL_86;
          }

          v13 = [v64 enabled];
          v16 = sub_2692822D8();
          v66 = sub_2692C7A50();
          v67 = v66;
          if (v13)
          {
            v16 = sub_2692C7A70();

            if (v16)
            {
              goto LABEL_38;
            }
          }

          else
          {
          }

          v63 = [v65 identifier];
          if (v63)
          {
            break;
          }

LABEL_38:

          v62 = (v62 + 1);
          if (a2 == v26)
          {
            goto LABEL_52;
          }
        }

        v68 = v63;
        v69 = sub_2692C7830();
        v16 = v70;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_26928A5E0(0, *(v162 + 16) + 1, 1, v162);
        }

        v72 = *(v162 + 16);
        v71 = *(v162 + 24);
        if (v72 >= v71 >> 1)
        {
          v162 = sub_26928A5E0((v71 > 1), v72 + 1, 1, v162);
        }

        v73 = v162;
        *(v162 + 16) = v72 + 1;
        v74 = v73 + 16 * v72;
        *(v74 + 32) = v69;
        *(v74 + 40) = v16;
        if (a2 == v26)
        {
LABEL_52:
          v75 = *(v167 + 16);
          *(v167 + 16) = v162;

          goto LABEL_56;
        }
      }
    }

    if (v48 == 2)
    {
      a3 = (v25 & 0xC000000000000001);
      v4 = (v25 & 0xFFFFFFFFFFFFFF8);
      v162 = MEMORY[0x277D84F90];
      v49 = 0;
      if ((v25 & 0xC000000000000001) != 0)
      {
LABEL_33:
        v50 = MEMORY[0x26D6360D0](v49, v25);
        goto LABEL_23;
      }

      while (1)
      {
        while (1)
        {
          if (v49 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v50 = *(v25 + 8 * v49 + 32);
LABEL_23:
          v51 = v50;
          a2 = (v49 + 1);
          if (__OFADD__(v49, 1))
          {
            goto LABEL_87;
          }

          v52 = [v50 enabled];
          v16 = sub_2692822D8();
          v53 = sub_2692C7A50();
          v13 = v53;
          if (v52)
          {
            break;
          }

LABEL_19:
          v49 = (v49 + 1);
          if (a2 == v26)
          {
            goto LABEL_52;
          }

          if (a3)
          {
            goto LABEL_33;
          }
        }

        v16 = sub_2692C7A70();

        if ((v16 & 1) == 0)
        {
          goto LABEL_19;
        }

        v54 = [v51 identifier];
        if (!v54)
        {
          goto LABEL_19;
        }

        v55 = v54;
        v16 = sub_2692C7830();
        v57 = v56;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_26928A5E0(0, *(v162 + 16) + 1, 1, v162);
        }

        v59 = *(v162 + 16);
        v58 = *(v162 + 24);
        if (v59 >= v58 >> 1)
        {
          v162 = sub_26928A5E0((v58 > 1), v59 + 1, 1, v162);
        }

        v60 = v162;
        *(v162 + 16) = v59 + 1;
        v61 = v60 + 16 * v59;
        *(v61 + 32) = v16;
        *(v61 + 40) = v57;
        if (a2 == v26)
        {
          goto LABEL_52;
        }

        v49 = a2;
        if (a3)
        {
          goto LABEL_33;
        }
      }
    }

    v76 = sub_2692C77B0();
    v16 = sub_2692C79F0();
    if (os_log_type_enabled(v76, v16))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_269270000, v76, v16, "Unsupported operation when getting undoable alarms in .handle(), expected enable/disable.", v77, 2u);
      MEMORY[0x26D6368E0](v77, -1, -1);
    }

LABEL_56:
    v78 = 0;
    v174[0] = MEMORY[0x277D84F90];
    a3 = (v25 & 0xC000000000000001);
    a2 = (v25 & 0xFFFFFFFFFFFFFF8);
    v4 = &off_279C54000;
LABEL_59:
    if (a3)
    {
      v79 = MEMORY[0x26D6360D0](v78, v25);
    }

    else
    {
      if (v78 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v79 = *(v25 + 8 * v78 + 32);
    }

    v80 = v79;
    v13 = (v78 + 1);
    if (!__OFADD__(v78, 1))
    {
      break;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  v81 = [v79 sleepAlarmAttribute];
  if (v81)
  {

    v16 = v174;
    sub_2692C7BF0();
    v82 = *(v174[0] + 16);
    sub_2692C7C20();
    sub_2692C7C30();
    sub_2692C7C00();
  }

  else
  {
  }

  ++v78;
  if (v13 != v26)
  {
    goto LABEL_59;
  }

  v83 = 0;
  v162 = v174[0];
  v174[0] = MEMORY[0x277D84F90];
  do
  {
    if (a3)
    {
      v84 = MEMORY[0x26D6360D0](v83, v25);
    }

    else
    {
      if (v83 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v84 = *(v25 + 8 * v83 + 32);
    }

    v85 = v84;
    v86 = (v83 + 1);
    if (__OFADD__(v83, 1))
    {
      goto LABEL_84;
    }

    v87 = [v84 sleepAlarmAttribute];
    if (v87)
    {
      v16 = v87;
    }

    else
    {
      v16 = v174;
      sub_2692C7BF0();
      v13 = *(v174[0] + 16);
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    ++v83;
  }

  while (v86 != v26);

  v88 = v174[0];
  v89 = v162;
  if ((v162 & 0x8000000000000000) != 0 || (v162 & 0x4000000000000000) != 0)
  {
    v111 = sub_2692C7C60();
    v91 = v164;
    if (v111 <= 1)
    {
      v90 = sub_2692C7C60();
      goto LABEL_107;
    }

LABEL_79:

    v92 = sub_2692C77B0();
    v93 = sub_2692C79F0();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_269270000, v92, v93, "Can NOT enable multiple sleep alarms, should only handle upcoming one.\nCheck the resolveAlarms method and make sure it returns at most 1 sleep alarm.", v94, 2u);
      MEMORY[0x26D6368E0](v94, -1, -1);
    }

    v95 = [objc_allocWithZone(v166) init];
    v96 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v95[v96] = 5;
    [v95 setUserActivity_];
    v163(v95);

    goto LABEL_100;
  }

  v90 = *(v162 + 16);
  v91 = v164;
  if (v90 > 1)
  {
    goto LABEL_79;
  }

LABEL_107:
  if (!v90)
  {

    a3 = 0;
    goto LABEL_119;
  }

  if ((v89 & 0xC000000000000001) != 0)
  {
    v112 = MEMORY[0x26D6360D0](0, v89);
    goto LABEL_111;
  }

  if (!*(v89 + 16))
  {
    __break(1u);
LABEL_129:
    if (!sub_2692C7C60())
    {
      goto LABEL_130;
    }

LABEL_117:

LABEL_119:
    v122 = [v172 operation];
    if (v122 == 2)
    {
      sub_2692C7A20();
      v136 = v161;
      v137 = *(v161 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject);
      v138 = v169;
      sub_2692C7790();
      sub_2692C7780();
      (*(v170 + 8))(v138, v171);
      sub_269275A6C(v136 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v174);
      v139 = v175;
      v140 = v176;
      v172 = __swift_project_boxed_opaque_existential_1(v174, v175);
      v141 = swift_allocObject();
      v142 = v167;
      v143 = v168;
      v141[2] = v136;
      v141[3] = v142;
      v144 = v163;
      v141[4] = a3;
      v141[5] = v144;
      v141[6] = v91;
      v141[7] = v143;
      v145 = a3;
      v146 = *(v140 + 24);
      v171 = v145;
      v147 = v136;
      v135 = v143;

      v146(v88, sub_26928E3C4, v141, v139, v140);
    }

    else
    {
      if (v122 != 1)
      {

        v148 = sub_2692C77B0();
        v149 = sub_2692C79F0();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          *v150 = 0;
          _os_log_impl(&dword_269270000, v148, v149, "Operation is empty: don't know what to do with the alarm, return failure response.", v150, 2u);
          MEMORY[0x26D6368E0](v150, -1, -1);
        }

        v151 = sub_2692C7760();
        v175 = v151;
        v176 = MEMORY[0x277D61908];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v174);
        v153 = *MEMORY[0x277D61890];
        v154 = sub_2692C7710();
        (*(*(v154 - 8) + 104))(boxed_opaque_existential_1, v153, v154);
        (*(*(v151 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v151);
        sub_2692C76B0();
        __swift_destroy_boxed_opaque_existential_1Tm(v174);
        v155 = [objc_allocWithZone(v166) init];
        v156 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
        swift_beginAccess();
        *&v155[v156] = 5;
        [v155 setUserActivity_];
        v163(v155);

        return;
      }

      sub_2692C7A20();
      v123 = v161;
      v124 = *(v161 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject);
      v125 = v169;
      sub_2692C7790();
      sub_2692C7780();
      (*(v170 + 8))(v125, v171);
      sub_269275A6C(v123 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v174);
      v126 = v175;
      v127 = v176;
      v172 = __swift_project_boxed_opaque_existential_1(v174, v175);
      v128 = swift_allocObject();
      v129 = v167;
      v130 = v168;
      v128[2] = v123;
      v128[3] = v129;
      v131 = v163;
      v128[4] = a3;
      v128[5] = v131;
      v128[6] = v91;
      v128[7] = v130;
      v132 = a3;
      v133 = *(v127 + 16);
      v171 = v132;
      v134 = v123;
      v135 = v130;

      v133(v88, sub_26928E3DC, v128, v126, v127);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v174);

    return;
  }

  v112 = *(v89 + 32);
LABEL_111:
  a3 = v112;

  v86 = a3;
  v113 = [v86 identifier];
  if (v113)
  {
    v114 = v113;
    v115 = sub_2692C7830();
    v117 = v116;

    v118 = *(v167 + 16);
    v174[0] = v115;
    v174[1] = v117;
    MEMORY[0x28223BE20](v119, v120);
    *(&v161 - 2) = v174;

    LOBYTE(v115) = sub_26928515C(sub_26928E3F4, (&v161 - 4), v118);

    if (v115)
    {
      v121 = sub_2692C7980();
      [v86 setUndoable_];
    }
  }

  if (v88 < 0 || (v88 & 0x4000000000000000) != 0)
  {
    goto LABEL_129;
  }

  if (*(v88 + 16))
  {
    goto LABEL_117;
  }

LABEL_130:

  v157 = sub_2692C77B0();
  v158 = sub_2692C7A00();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    *v159 = 0;
    _os_log_impl(&dword_269270000, v157, v158, "Only found sleep alarm.", v159, 2u);
    MEMORY[0x26D6368E0](v159, -1, -1);
  }

  v160 = [v172 operation];
  sub_26928660C(v160, v86, MEMORY[0x277D84F90], v163, v91);
}