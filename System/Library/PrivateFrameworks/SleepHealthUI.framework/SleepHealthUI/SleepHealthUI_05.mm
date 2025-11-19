id sub_269C9EBF8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v11 = sub_269D98250();
  __swift_project_value_buffer(v11, qword_280351208);
  v12 = a2;
  v13 = sub_269D98230();
  v14 = sub_269D9AB80();

  if (os_log_type_enabled(v13, v14))
  {
    v36 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = a4;
    v17 = a6;
    v18 = swift_slowAlloc();
    aBlock = v18;
    *v15 = 136446466;
    v19 = sub_269D9B4D0();
    v21 = sub_269C2EACC(v19, v20, &aBlock);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2114;
    *(v15 + 14) = v12;
    *v16 = v12;
    v22 = v12;
    _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] creating issue alert occurrence: %{public}@", v15, 0x16u);
    sub_269C773DC(v16);
    MEMORY[0x26D652460](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v23 = v18;
    a6 = v17;
    a4 = v35;
    MEMORY[0x26D652460](v23, -1, -1);
    v24 = v15;
    a3 = v36;
    MEMORY[0x26D652460](v24, -1, -1);
  }

  aBlock = v10;
  sub_269C9FBB0(&aBlock);
  v25 = sub_269D9A5F0();

  v26 = [objc_opt_self() alertControllerWithTitle:0 message:v25 preferredStyle:1];

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();

  v27 = sub_269D9A5F0();

  v42 = a3;
  v43 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_269CECE18;
  v41 = &block_descriptor_9;
  v28 = _Block_copy(&aBlock);

  v29 = objc_opt_self();
  v30 = [v29 actionWithTitle:v27 style:0 handler:{v28, 0xE000000000000000}];
  _Block_release(v28);

  [v26 addAction_];
  sub_269D972C0();
  v31 = sub_269D9A5F0();

  if (a5)
  {
    v42 = a5;
    v43 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_269CECE18;
    v41 = &block_descriptor_12_0;
    v32 = _Block_copy(&aBlock);
  }

  else
  {
    v32 = 0;
  }

  v33 = [v29 actionWithTitle:v31 style:1 handler:{v32, 0xE000000000000000}];
  _Block_release(v32);

  [v26 addAction_];
  return v26;
}

uint64_t sub_269C9F090(uint64_t a1)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1 != 1 && a1 != 2)
    {
      if (a1 != 3)
      {
        return result;
      }

      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 != 4)
      {
        goto LABEL_12;
      }

      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

LABEL_20:
      swift_once();
      return sub_269D972C0();
    }

    if (a1 != 6)
    {
      if (a1 != 7)
      {
        return result;
      }

LABEL_12:
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_20;
    }
  }

  if (qword_280C0AE70 != -1)
  {
    goto LABEL_20;
  }

  return sub_269D972C0();
}

uint64_t _sSo17UIAlertControllerC13SleepHealthUIE18changeAlertMessage8calendar10occurrence8weekdays7changesSS10Foundation8CalendarV_So27HKSPSleepScheduleOccurrenceCSo12HKSPWeekdaysVAC0pQ9EditModelC9ChangeSetVtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = sub_269D977F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v13 = a3;
  if (v12 == 1)
  {
    v13 = a3;
    if ([a2 crossesDayBoundary])
    {
      v13 = HKSPWeekdaysShiftBackOneDay();
    }
  }

  if (v13 == *MEMORY[0x277D62398])
  {
    goto LABEL_5;
  }

  if (!HKSPWeekdaysIsSingleDay())
  {
    v21 = sub_269D976E0();
    v22 = HKSPWeekendDaysInCalendar();

    if (v13 == v22 || (v23 = sub_269D976E0(), v24 = HKSPWeekdayDaysInCalendar(), v23, v13 == v24))
    {
LABEL_5:
      if (qword_280C0AE70 != -1)
      {
        swift_once();
      }

      return sub_269D972C0();
    }

    v25 = sub_269D976E0();
    v26 = HKSPDaysForWeekdaysInCalendar();

    sub_269D977B0();
    if (sub_269D977D0() != 2 || (v27 = sub_269D977E0(), (v28 & 1) != 0) || (v29 = v27, v30 = sub_269D977C0(), (v31 & 1) != 0))
    {
      v52 = 0;
      v53 = 0;
      v32 = sub_269D976E0();
      v33 = HKSPWeekdaysAreConsecutiveInCalendar();

      if (!v33)
      {
        if (qword_280C0AE70 != -1)
        {
          swift_once();
        }

        sub_269D972C0();
        sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_269D9EBE0;
        v40 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        [v40 setFormattingContext_];
        v41 = NSDateFormatter.localizedCommaSeparatedList(using:calendar:useShortSymbols:)(v13, a1, 0);
        v43 = v42;

        *(v39 + 56) = MEMORY[0x277D837D0];
        *(v39 + 64) = sub_269C7172C();
        *(v39 + 32) = v41;
        *(v39 + 40) = v43;
        v44 = sub_269D9A600();

        goto LABEL_25;
      }

      v51 = sub_269C9F090(v53);
      v35 = v34;
      v36 = sub_269C9F090(v52);
      v38 = v37;
      if (qword_280C0AE70 == -1)
      {
LABEL_24:
        sub_269D972C0();
        sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_269D9EBF0;
        v49 = MEMORY[0x277D837D0];
        *(v48 + 56) = MEMORY[0x277D837D0];
        v50 = sub_269C7172C();
        *(v48 + 32) = v51;
        *(v48 + 40) = v35;
        *(v48 + 96) = v49;
        *(v48 + 104) = v50;
        *(v48 + 64) = v50;
        *(v48 + 72) = v36;
        *(v48 + 80) = v38;
        v44 = sub_269D9A600();

LABEL_25:

        (*(v9 + 8))(v11, v8);
        return v44;
      }
    }

    else
    {
      v45 = v30;
      v51 = sub_269C9F090(v29);
      v35 = v46;
      v36 = sub_269C9F090(v45);
      v38 = v47;
      if (qword_280C0AE70 == -1)
      {
        goto LABEL_24;
      }
    }

    swift_once();
    goto LABEL_24;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269D9EBE0;
  v16 = HKSPDayForWeekdays();
  v17 = sub_269C9F090(v16);
  v19 = v18;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_269C7172C();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = sub_269D9A600();

  return v20;
}

uint64_t _sSo17UIAlertControllerC13SleepHealthUIE16changeNextAction10occurrence7changesSSSo27HKSPSleepScheduleOccurrenceC_AC0lM9EditModelC9ChangeSetVtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_10;
  }

  v3 = [a1 alarmConfiguration];
  v4 = [v3 isEnabled];

  if ((v2 & 4) == 0 && !v4)
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_10;
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_10:
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269C9FBB0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = 2;
  }

  else if ((v1 & 2) != 0)
  {
    v3 = 3;
  }

  else if ((v1 & 4) != 0)
  {
    v3 = 4;
  }

  else
  {
    if ((v1 & 8) == 0)
    {
      return 0;
    }

    v3 = 5;
  }

  sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269D9EBF0;
  v5 = sub_269C85F54(v3);
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_269C7172C();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v10 = sub_269D972C0();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v2 = sub_269D9A600();

  return v2;
}

void sub_269C9FD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C9FDD4(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269C9FE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_269C9FEAC(uint64_t a1, uint64_t a2)
{
  sub_269CA01B8(0, &qword_28034F268, sub_269CA0170, sub_269CA023C, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - v5;
  sub_269CA0170(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15[1] = a2;

    v11 = sub_269D99FF0();
    sub_269CA023C();
    (*(*(v12 - 8) + 16))(v10, a1, v12);
    *&v10[*(v8 + 36)] = v11;
    sub_269CA04A8(v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_269CA0380();
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C);
    sub_269D992D0();
    return sub_269CA050C(v10);
  }

  else
  {
    sub_269CA023C();
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_269CA0380();
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C);
    return sub_269D992D0();
  }
}

void sub_269CA01B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269CA023C()
{
  if (!qword_28034F278)
  {
    sub_269CA0298();
    v0 = sub_269D99360();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F278);
    }
  }
}

unint64_t sub_269CA0298()
{
  result = qword_28034F280;
  if (!qword_28034F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F280);
  }

  return result;
}

void sub_269CA02EC()
{
  if (!qword_28034F288)
  {
    sub_269D99400();
    sub_269CA0460(&qword_28034F290, MEMORY[0x277CDE350]);
    v0 = sub_269D99350();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F288);
    }
  }
}

unint64_t sub_269CA0380()
{
  result = qword_28034F298;
  if (!qword_28034F298)
  {
    sub_269CA0170(255);
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C);
    sub_269CA0460(&qword_28034F2A8, sub_269CA02EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F298);
  }

  return result;
}

uint64_t sub_269CA0460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CA04A8(uint64_t a1, uint64_t a2)
{
  sub_269CA0170(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CA050C(uint64_t a1)
{
  sub_269CA0170(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269CA0568()
{
  result = qword_28034F2B0;
  if (!qword_28034F2B0)
  {
    sub_269CA01B8(255, &qword_28034F2B8, sub_269CA0170, sub_269CA023C, MEMORY[0x277CE0338]);
    sub_269CA0380();
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F2B0);
  }

  return result;
}

id HKSPSleepStore.settings.getter()
{

  return sub_269CA099C(&selRef_currentSleepSettingsWithError_, "[%{public}s] Error retrieving current sleep settings: %{public}s", 0x277D62520);
}

id HKSPSleepStore.schedule.getter()
{
  v21[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v21[0] = 0;
  result = [v0 currentSleepScheduleWithError_];
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = v21[0] == 0;
  }

  if (!v2)
  {
    v3 = result;
    v4 = qword_280C0B218;
    v5 = v21[0];
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_269D98250();
    __swift_project_value_buffer(v6, qword_280C0B220);
    v7 = v5;
    v8 = sub_269D98230();
    v9 = sub_269D9AB60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136446466;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, v21);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = v7;
      v16 = [v15 description];
      v17 = sub_269D9A630();
      v19 = v18;

      v20 = sub_269C2EACC(v17, v19, v21);

      *(v10 + 14) = v20;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Error retrieving current sleep schedule: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }

    else
    {
    }

    return v3;
  }

  return result;
}

id HKSPSleepStore.eventRecord.getter()
{

  return sub_269CA099C(&selRef_currentSleepEventRecordWithError_, "[%{public}s] Error retrieving current sleep event record: %{public}s", 0x277D624D8);
}

id sub_269CA099C(SEL *a1, const char *a2, Class *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v29[0] = 0;
  v7 = [v3 *a1];
  if (v7)
  {
    v8 = v7;
    v9 = v29[0];
  }

  else
  {
    v10 = v29[0];
    v11 = sub_269D97360();

    swift_willThrow();
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_280C0B220);
    v13 = v11;
    v14 = sub_269D98230();
    v15 = sub_269D9AB60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136446466;
      v18 = sub_269D9B4D0();
      v20 = sub_269C2EACC(v18, v19, v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v23 + 16))(v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v24 = sub_269D9A660();
      v26 = sub_269C2EACC(v24, v25, v29);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_269C18000, v14, v15, a2, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }

    v8 = [objc_allocWithZone(*a3) init];
  }

  return v8;
}

uint64_t HKSPSleepStore.secondsSinceAlarmDismissal.getter()
{
  v0 = sub_269D97580();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = HKSPSleepStore.eventRecord.getter();
  sub_269D97550();
  v5 = sub_269D974B0();
  (*(v1 + 8))(v3, v0);
  v6 = [v4 secondsSinceAlarmDismissalFromDate_];

  if (!v6)
  {
    return 0;
  }

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

void HKSPSleepStore.applySettingsModifications(settingsModifications:completion:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = HKSPSleepStore.settings.getter();
  [v10 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269CA1250();
  swift_dynamicCast();
  v11 = v16;
  a1(v16);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = ObjectType;
  aBlock[4] = sub_269CA129C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  sub_269C255A8(a3);

  [v5 saveCurrentSleepSettings:v14 completion:v13];
  _Block_release(v13);
}

void sub_269CA0F68(char a1, id a2, void (*a3)(id, uint64_t))
{
  if (a1)
  {
    if (a3)
    {
      a3(0, 0);
    }
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_269CA12C0();
      v5 = swift_allocError();
      a2 = 0;
      v4 = v5;
    }

    v6 = a2;
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v7 = sub_269D98250();
    __swift_project_value_buffer(v7, qword_280C0B220);
    v8 = v4;
    v9 = sub_269D98230();
    v10 = sub_269D9AB60();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446466;
      v13 = sub_269D9B4D0();
      v15 = sub_269C2EACC(v13, v14, &v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v18 + 16))(&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = sub_269D9A660();
      v21 = sub_269C2EACC(v19, v20, &v24);

      *(v11 + 14) = v21;
      _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Error saving sleep settings: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v12, -1, -1);
      MEMORY[0x26D652460](v11, -1, -1);
    }

    if (a3)
    {
      v22 = v4;
      a3(v4, 1);
    }
  }
}

unint64_t sub_269CA1250()
{
  result = qword_28034F2C0;
  if (!qword_28034F2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034F2C0);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269CA12C0()
{
  result = qword_28034F2C8;
  if (!qword_28034F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F2C8);
  }

  return result;
}

uint64_t ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell.apply(_:)(uint64_t a1)
{
  type metadata accessor for AlarmSnoozeDurationPickerModel(0);
  v3 = swift_allocObject();
  sub_269D97A20();
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel] = v3;

  [v1 setNeedsUpdateConfiguration];
}

id sub_269CA1400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel] = 0;
  if (a3)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v6 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = objc_allocWithZone(MEMORY[0x277D75348]);
  v13[4] = sub_269CC7C58;
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_269CC7F6C;
  v13[3] = &block_descriptor_11;
  v8 = _Block_copy(v13);
  v9 = v6;
  v10 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  [v9 setBackgroundColor_];

  [v9 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  sub_269D9ABD0();

  return v11;
}

uint64_t sub_269CA15B8()
{
  sub_269CA2760();
  v2[3] = v0;
  v2[4] = sub_269CA2908(&qword_28034F310, sub_269CA2760);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_269CA2A5C(0, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
  sub_269CA2830();
  sub_269D99390();
  return MEMORY[0x26D650E10](v2);
}

uint64_t sub_269CA16AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CA2A5C(0, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel))
  {
    type metadata accessor for AlarmSnoozeDurationPickerModel(0);
    sub_269CA2908(&qword_28034F318, type metadata accessor for AlarmSnoozeDurationPickerModel);

    sub_269D9A110();
    sub_269CA29E4(v7, v10);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  sub_269CA2950(v10, a2);
}

id ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269CA1AF8(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for AlarmSnoozeDurationPickerModel(0);
  v4 = swift_allocObject();
  sub_269D97A20();
  *(v4 + 16) = a1;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel] = v4;

  [v3 setNeedsUpdateConfiguration];
}

double sub_269CA1BB4()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v1 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  [v5 snoozeDuration];
  v3 = v2;

  return v3;
}

uint64_t sub_269CA1C78()
{

  v1 = OBJC_IVAR____TtC13SleepHealthUI30AlarmSnoozeDurationPickerModel___observationRegistrar;
  v2 = sub_269D97A30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_269CA1D24@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_269D98DE0();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  sub_269CA2B8C();
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CA2DC4();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v42 = sub_269D972C0();
  v43 = v15;
  sub_269D9A100();
  swift_getKeyPath();
  sub_269D9A120();

  v16 = (*(v5 + 8))(v7, v4);
  v39 = v35;
  v40 = v36;
  v41 = v37;
  MEMORY[0x28223BE20](v16);
  sub_269CA2C20();
  sub_269CA2D54();
  sub_269C3EEE8();
  v17 = MEMORY[0x277D837D0];
  sub_269D99F70();
  sub_269D98DD0();
  v18 = sub_269CA2908(&qword_28034F368, sub_269CA2B8C);
  v19 = v29;
  v20 = v33;
  sub_269D99AA0();
  (*(v30 + 8))(v2, v20);
  (*(v9 + 8))(v11, v19);
  sub_269CA2EA0(0, &qword_280C0B440, v17, MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_269DA0D60;
  *(v21 + 32) = sub_269D9A630();
  *(v21 + 40) = v22;
  *(v21 + 48) = 0x7065656C53;
  *(v21 + 56) = 0xE500000000000000;
  strcpy((v21 + 64), "ScheduleEditor");
  *(v21 + 79) = -18;
  v35 = v21;
  sub_269C49A1C(&unk_287A9FCE0);
  sub_269CA2EA0(0, &qword_280C0B4F0, v17, MEMORY[0x277D83940]);
  sub_269CA2CFC(&qword_280C0AF30, &qword_280C0B4F0, v17);
  v23 = sub_269D9A520();
  v25 = v24;

  sub_269C4BEAC(&unk_287A9FD00);
  v35 = v23;
  v36 = v25;

  MEMORY[0x26D650930](0x6F6974617275442ELL, 0xEF72656B6369506ELL);

  v35 = v19;
  v36 = v20;
  v37 = v18;
  v38 = MEMORY[0x277CDDB70];
  swift_getOpaqueTypeConformance2();
  v26 = v32;
  sub_269D99BB0();

  return (*(v31 + 8))(v14, v26);
}

uint64_t sub_269CA2370(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v6 = *MEMORY[0x277D61FF0] * 60.0;
  if (v6 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v10[1] = sub_269D70B40(*MEMORY[0x277D61FE8] * 60.0, *MEMORY[0x277D61FE0] * 60.0, v6);
    swift_getKeyPath();
    sub_269CA2EF0(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_269CA29E4(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    v9 = MEMORY[0x277D839F8];
    sub_269CA2EA0(0, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    sub_269CA2CFC(&qword_28034F350, &qword_28034F348, v9);
    sub_269D9A080();
  }

  return result;
}

uint64_t sub_269CA25D4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for ShorterDateComponentsFormatter();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v16.receiver = v5;
  v16.super_class = v4;
  v6 = objc_msgSendSuper2(&v16, sel_init);
  v7 = [v6 stringFromTimeInterval_];

  if (v7)
  {
    sub_269D9A630();
  }

  sub_269C3EEE8();
  v8 = sub_269D99960();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269CA2760()
{
  if (!qword_28034F2F0)
  {
    sub_269CA2A5C(255, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
    sub_269CA2830();
    v0 = sub_269D993A0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F2F0);
    }
  }
}

unint64_t sub_269CA2830()
{
  result = qword_28034F300;
  if (!qword_28034F300)
  {
    sub_269CA2A5C(255, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
    sub_269CA2908(&qword_28034F308, type metadata accessor for AlarmSnoozeDurationPickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F300);
  }

  return result;
}

uint64_t sub_269CA2908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CA2950(uint64_t a1, uint64_t a2)
{
  sub_269CA2A5C(0, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CA29E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269CA2A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CA2AD4()
{
  sub_269CA2A5C(319, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_269CA2B8C()
{
  if (!qword_28034F338)
  {
    sub_269CA2C20();
    sub_269CA2D54();
    v0 = sub_269D99F80();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F338);
    }
  }
}

void sub_269CA2C20()
{
  if (!qword_28034F340)
  {
    v0 = MEMORY[0x277D839F8];
    sub_269CA2EA0(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    sub_269CA2CFC(&qword_28034F350, &qword_28034F348, v0);
    v1 = sub_269D9A0A0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F340);
    }
  }
}

uint64_t sub_269CA2CFC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269CA2EA0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CA2D54()
{
  result = qword_28034F358;
  if (!qword_28034F358)
  {
    sub_269CA2C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F358);
  }

  return result;
}

void sub_269CA2DC4()
{
  if (!qword_28034F360)
  {
    sub_269CA2B8C();
    sub_269D98DE0();
    sub_269CA2908(&qword_28034F368, sub_269CA2B8C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F360);
    }
  }
}

void sub_269CA2EA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269CA2EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CA2F54@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AlarmSnoozeDurationPickerView(0);

  return sub_269CA25D4(a1, a2);
}

unint64_t sub_269CA2FD4()
{
  result = qword_28034F370;
  if (!qword_28034F370)
  {
    sub_269CA3104();
    sub_269CA2B8C();
    sub_269D98DE0();
    sub_269CA2908(&qword_28034F368, sub_269CA2B8C);
    swift_getOpaqueTypeConformance2();
    sub_269CA2908(&qword_28034E0A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F370);
  }

  return result;
}

void sub_269CA3104()
{
  if (!qword_28034F378)
  {
    sub_269CA2DC4();
    sub_269D99540();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F378);
    }
  }
}

void DeepLinkOpener.open(url:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = sub_269D973A0();
    v8 = sub_269CA3604();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v11[4] = sub_269CA377C;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_269CA3540;
    v11[3] = &block_descriptor_12;
    v10 = _Block_copy(v11);
    sub_269C255A8(a2);

    [v6 openURL:v7 configuration:v8 completionHandler:v10];
    _Block_release(v10);
  }
}

uint64_t sub_269CA32B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_269CA3958(0, &unk_280351880, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_269D9A900();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_269D9A8E0();
  sub_269C255A8(a3);
  v11 = a2;
  v12 = sub_269D9A8D0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a2;
  sub_269C7A29C(0, 0, v9, &unk_269DA3A18, v13);
}

uint64_t sub_269CA341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_269D9A8E0();
  v6[6] = sub_269D9A8D0();
  v8 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269CA34B8, v8, v7);
}

uint64_t sub_269CA34B8()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(*(v0 + 40));
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_269CA3540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_269D9A490();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_269CA3604()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
  sub_269CA3958(0, &qword_28034F380, sub_269C583D4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;
  *(inited + 32) = sub_269D9A630();
  *(inited + 40) = v2;
  v3 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_269D9A630();
  *(inited + 88) = v4;
  *(inited + 120) = v3;
  *(inited + 96) = 1;
  sub_269C449C0(inited);
  swift_setDeallocating();
  sub_269C583D4();
  swift_arrayDestroy();
  v5 = sub_269D9A480();

  [v0 setFrontBoardOptions_];

  [v0 setSensitive_];
  return v0;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for DeepLinkOpener(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DeepLinkOpener(_WORD *result, int a2, int a3)
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

uint64_t sub_269CA3890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_269C71C08;

  return sub_269CA341C(a1, v4, v5, v6, v7, v8);
}

void sub_269CA3958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SleepOnboardingUserInfo.sleepDurationGoal.getter()
{
  swift_beginAccess();
  [*(v0 + 40) sleepDurationGoal];
  result = 0;
  if (v2 > 0.0)
  {
    [*(v0 + 40) sleepDurationGoal];
    return v3;
  }

  return result;
}

BOOL SleepOnboardingUserInfo.isWindDownEnabled.getter()
{
  swift_beginAccess();
  [*(v0 + 40) windDownTime];
  return v1 > 0.0;
}

uint64_t SleepOnboardingUserInfo.SleepScheduleType.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

id SleepOnboardingUserInfo.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return v2;
}

void sub_269CA3BA0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_269CA3BF8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_269CA3C3C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void sub_269CA3CD4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void sub_269CA3D6C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

void *sub_269CA3DC4()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_269CA3E08(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_269CA3ED4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_269CA3F6C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 80);
  return result;
}

uint64_t sub_269CA3FB0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_269CA4080(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t SleepOnboardingUserInfo.__allocating_init(onboardingManager:onboardingContext:sleepSchedule:sleepScheduleType:sleepSettings:)(void *a1, uint64_t *a2, void *a3, char *a4, void *a5)
{
  swift_allocObject();
  v10 = sub_269CA4E44(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t SleepOnboardingUserInfo.init(onboardingManager:onboardingContext:sleepSchedule:sleepScheduleType:sleepSettings:)(void *a1, uint64_t *a2, void *a3, char *a4, void *a5)
{
  v6 = sub_269CA4E44(a1, a2, a3, a4, a5);

  return v6;
}

void sub_269CA4208()
{
  if (*(v0 + 24))
  {
    return;
  }

  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = [v3 sleepResultsNotificationsOnWatch];

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    [*(v0 + 48) setWakeUpResults_];
  }

  swift_beginAccess();
  [*(v0 + 48) setTimeInBedTracking_];
  swift_beginAccess();
  [*(v0 + 40) setEnabled_];
  [*(v0 + 48) setSpringBoardGreetingDisabled_];
}

uint64_t SleepOnboardingUserInfo.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 11));

  return swift_deallocClassInstance();
}

id sub_269CA43EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 40) sleepDurationGoal];
  v6 = v5;
  v7 = 0;
  if (v6 > 0.0)
  {
    result = [*(v3 + 40) sleepDurationGoal];
  }

  *a2 = v7;
  *(a2 + 8) = v6 <= 0.0;
  return result;
}

id SleepOnboardingUserInfo.sleepDurationGoal.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *&a1;
  }

  swift_beginAccess();
  return [*(v2 + 40) setSleepDurationGoal_];
}

void (*SleepOnboardingUserInfo.sleepDurationGoal.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  [*(v1 + 40) sleepDurationGoal];
  v6 = v5;
  v7 = 0;
  if (v6 > 0.0)
  {
    [*(v1 + 40) sleepDurationGoal];
  }

  *(v4 + 24) = v7;
  *(v4 + 32) = v6 <= 0.0;
  return sub_269CA459C;
}

void sub_269CA459C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if (*(*a1 + 32))
  {
    v2 = 0.0;
  }

  [*(*(*a1 + 40) + 40) setSleepDurationGoal_];

  free(v1);
}

void (*SleepOnboardingUserInfo.windDownDuration.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  [*(v1 + 40) windDownTime];
  *(v4 + 24) = v5;
  return sub_269CA4690;
}

void sub_269CA4690(uint64_t a1)
{
  v1 = *a1;
  [*(*(*a1 + 32) + 40) setWindDownTime_];

  free(v1);
}

id SleepOnboardingUserInfo.isWindDownEnabled.setter(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    result = [*(v1 + 40) windDownTime];
    if (v3 == 0.0)
    {
      return [*(v1 + 40) setWindDownTime_];
    }
  }

  else
  {
    swift_beginAccess();
    return [*(v1 + 40) setWindDownTime_];
  }

  return result;
}

void (*SleepOnboardingUserInfo.isWindDownEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  [*(v1 + 40) windDownTime];
  *(v4 + 32) = v5 > 0.0;
  return sub_269CA4818;
}

void sub_269CA4818(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*(*a1 + 24) + 40);
  v4 = 0.0;
  if (v2)
  {
    [v3 windDownTime];
    if (v5 != 0.0)
    {
      goto LABEL_5;
    }

    v3 = *(v1[3] + 40);
    v4 = *MEMORY[0x277D623C8] * 60.0;
  }

  [v3 setWindDownTime_];
LABEL_5:

  free(v1);
}

void SleepOnboardingUserInfo.isSleepModeEnabled.setter(char a1)
{
  swift_beginAccess();
  if (a1)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  [*(v1 + 48) setScheduledSleepMode_];
  v4 = *(v1 + 48);
  [v4 setSleepModeOptions_];
}

void (*SleepOnboardingUserInfo.isSleepModeEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = [*(v1 + 48) scheduledSleepMode];
  return sub_269CA49CC;
}

void sub_269CA49CC(uint64_t a1)
{
  v1 = *a1;
  SleepOnboardingUserInfo.isSleepModeEnabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t SleepOnboardingUserInfo.hasWatch.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 80))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsSleepTracking.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsSleepStages.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsRespiratoryRate.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 120))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsWristTemperature.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 128))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsHealthStatus.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 136))(v1, v2) & 1;
}

uint64_t sub_269CA4C1C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 80))(v1, v2) & 1;
}

uint64_t sub_269CA4C78()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t sub_269CA4CD4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

uint64_t sub_269CA4D30()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 120))(v1, v2) & 1;
}

uint64_t sub_269CA4D8C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 128))(v1, v2) & 1;
}

uint64_t sub_269CA4DE8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 136))(v1, v2) & 1;
}

uint64_t sub_269CA4E44(void *a1, uint64_t *a2, void *a3, char *a4, void *a5)
{
  v6 = v5;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = a2[2];
  v13 = *a4;
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;
  v14 = [objc_allocWithZone(MEMORY[0x277CCD0A0]) init];
  *(v6 + 128) = 0;
  *(v6 + 72) = v14;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  *(v6 + 32) = v12;
  sub_269C2DB5C(a1, v6 + 88);
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
  }

  v16 = a3;
  [v15 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E978);
  swift_dynamicCast();
  *(v6 + 40) = v40;
  v17 = (v6 + 40);
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D62520]) init];
  }

  v19 = a5;
  [v18 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0);
  swift_dynamicCast();
  *(v6 + 48) = v40;
  v39 = v19;
  if (!a3)
  {
    v28 = 0;
    goto LABEL_30;
  }

  v20 = [v16 occurrences];
  sub_269C1B0B8(0, &qword_28034E050);
  v21 = sub_269D9A7E0();

  v37 = a1;
  v38 = v6;
  v36 = v13;
  v35 = (v6 + 40);
  if (v21 >> 62)
  {
LABEL_27:
    v22 = sub_269D9AF50();
    if (v22)
    {
LABEL_10:
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x26D651260](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_269D9A8E0();
        sub_269D9A8D0();
        sub_269D9A880();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v27 = [v25 isRepeating];

        if (v27)
        {
          break;
        }

        ++v23;
        if (v26 == v22)
        {
          goto LABEL_28;
        }
      }

      [v25 mutableCopy];

      sub_269D9AED0();
      swift_unknownObjectRelease();
      sub_269C1B0B8(0, &qword_28034DC30);
      if (swift_dynamicCast())
      {
        v28 = v40;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_10;
    }
  }

LABEL_28:

  v28 = 0;
LABEL_29:
  a1 = v37;
  v6 = v38;
  v13 = v36;
  v17 = v35;
LABEL_30:
  swift_beginAccess();
  v29 = *(v6 + 56);
  *(v6 + 56) = v28;

  *(v6 + 80) = v13;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v30);
  v32 = (*(v31 + 144))(v30, v31);
  swift_beginAccess();
  *(v6 + 128) = v32 & 1;
  if ((*(v6 + 24) & 1) == 0)
  {
    v33 = *MEMORY[0x277D623C8] * 60.0;
    swift_beginAccess();
    [*v17 setWindDownTime_];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_269CA5308()
{
  result = qword_28034F388;
  if (!qword_28034F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F388);
  }

  return result;
}

id sub_269CA5698(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v64 = a6;
  v63 = a5;
  v62 = a1;
  v12 = sub_269D97870();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v16 = sub_269D98250();
  v17 = __swift_project_value_buffer(v16, qword_280C0B728);
  (*(v13 + 16))(v15, a2, v12);

  v18 = sub_269D98230();
  v19 = sub_269D9AB80();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v58 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v59 = v17;
    v23 = v22;
    *&aBlock = v22;
    *v21 = 136446722;
    v24 = sub_269D9B4D0();
    v26 = sub_269C2EACC(v24, v25, &aBlock);
    v60 = a3;
    v27 = v26;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    sub_269CA6638();
    v28 = sub_269D9B230();
    v30 = v29;
    (*(v13 + 8))(v15, v12);
    v31 = sub_269C2EACC(v28, v30, &aBlock);
    a3 = v60;

    *(v21 + 14) = v31;
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_269C2EACC(a3, a4, &aBlock);
    _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] Cell provider called for indexPath %s itemIdentifier %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v23, -1, -1);
    v32 = v21;
    a7 = v58;
    MEMORY[0x26D652460](v32, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  swift_getObjectType();
  sub_269D97FE0();
  if (!v67)
  {
    sub_269C8492C(&aBlock, &qword_28034F390, &qword_280350880);

    v37 = sub_269D98230();
    v38 = sub_269D9AB80();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&aBlock = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_269C2EACC(a3, a4, &aBlock);
      _os_log_impl(&dword_269C18000, v37, v38, "The CellProvider block called us back with an item that no longer exists. Item Identifier: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x26D652460](v40, -1, -1);
      MEMORY[0x26D652460](v39, -1, -1);
    }

    return [objc_allocWithZone(MEMORY[0x277D75B48]) init];
  }

  v33 = a3;
  sub_269C25520(&aBlock, v73);
  sub_269C2DB5C(v73, &aBlock);
  sub_269C3232C(0, &qword_280350880);
  sub_269C3232C(0, &qword_28034E550);
  if (swift_dynamicCast())
  {
    sub_269C25520(v70, v72);
    __swift_project_boxed_opaque_existential_1Tm(v72, v72[3]);
    sub_269D97F30();
    v34 = sub_269D9A5F0();

    v35 = [v62 dequeueReusableCellWithIdentifier_];

    if (v35)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_269C2DB5C(v72, &aBlock);
        v36 = v35;
        sub_269D98000();
      }

      if (a7)
      {
        [v35 setBackgroundColor_];
      }

      else
      {
        if ([v62 style] == 2)
        {
          v41 = objc_allocWithZone(MEMORY[0x277D75348]);
          v68 = sub_269CC7C58;
          v69 = 0;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v66 = sub_269CC7F6C;
          v67 = &block_descriptor_13;
          v42 = _Block_copy(&aBlock);
          v43 = v35;
          v44 = [v41 initWithDynamicProvider_];
          _Block_release(v42);

          [v43 setBackgroundColor_];
        }

        else
        {
          v45 = objc_opt_self();
          v46 = v35;
          v44 = [v45 systemBackgroundColor];
          [v46 setBackgroundColor_];
        }
      }
    }

    else if (!a7)
    {
      [v62 style];
    }

    v47 = sub_269D98230();
    v48 = sub_269D9AB80();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&aBlock = v50;
      *v49 = 136446466;
      v51 = sub_269D9B4D0();
      v53 = sub_269C2EACC(v51, v52, &aBlock);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_269C2EACC(v33, a4, &aBlock);
      _os_log_impl(&dword_269C18000, v47, v48, "[%{public}s] Returning cell for item %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v50, -1, -1);
      MEMORY[0x26D652460](v49, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    return v35;
  }

  v71 = 0;
  memset(v70, 0, sizeof(v70));
  sub_269C8492C(v70, &qword_28034E548, &qword_28034E550);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_269D9B000();
  MEMORY[0x26D650930](91, 0xE100000000000000);
  v55 = sub_269D9B4D0();
  MEMORY[0x26D650930](v55);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  MEMORY[0x26D650930](0xD000000000000047, 0x8000000269DAFB90);
  MEMORY[0x26D650930](2112093, 0xE300000000000000);
  __swift_project_boxed_opaque_existential_1Tm(v73, v73[3]);
  v56 = sub_269D97F20();
  MEMORY[0x26D650930](v56);

  MEMORY[0x26D650930](0xD0000000000000AELL, 0x8000000269DAFBE0);
  result = sub_269D9B100();
  __break(1u);
  return result;
}

uint64_t sub_269CA5FCC()
{
  v1 = v0;
  v2 = *v0;
  sub_269CA6690();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 49) = 1;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v18 = v7;
    v15 = sub_269C2EACC(v13, v14, &v19);
    v7 = v18;

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Applying diffable snapshot", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  *(v1 + 50) = *(v1 + 48);
  swift_getObjectType();
  sub_269D97FF0();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v2;

  sub_269D983A0();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_269CA627C(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Finished applying snapshot", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  *(a1 + 50) = 0;
}

uint64_t sub_269CA6444()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269CA6638()
{
  result = qword_28034F398;
  if (!qword_28034F398)
  {
    sub_269D97870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F398);
  }

  return result;
}

void sub_269CA6690()
{
  if (!qword_28034EF20)
  {
    v0 = sub_269D98360();
    if (!v1)
    {
      atomic_store(v0, &qword_28034EF20);
    }
  }
}

uint64_t sub_269CA6718(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *SleepOnboardingManager.__allocating_init(sleepStore:healthStore:)(void *a1, void *a2)
{
  v4 = sub_269CAB574(a1, a2);

  return v4;
}

void *SleepOnboardingManager.__allocating_init(sleepStore:healthStore:healthStatusFeatureProvider:sleepHealthNotificationSettingsProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = *(a4 + 24);
  v13 = *(a4 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = sub_269CAB98C(a1, a2, v11, v14, v4, v9, v12, v10, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v15;
}

void *SleepOnboardingManager.init(sleepStore:healthStore:healthStatusFeatureProvider:sleepHealthNotificationSettingsProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v8 = *(a3 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v15 = *(a4 + 24);
  v14 = *(a4 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_269CAB6AC(a1, a2, v12, v18, v22[1], v9, v15, v8, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v20;
}

id sub_269CA6AB4()
{
  sub_269D9A630();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_269D9A5F0();

  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 BOOLForKey_];

  return v3;
}

uint64_t sub_269CA6B68()
{
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v43[0] = 0;
  v2 = [v1 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  v3 = v43[0];
  if (!v2 || (v4 = v2, v5 = v43[0], v6 = [v4 BOOLValue], v4, v43[0] = 0, v7 = objc_msgSend(v1, sel_isCurrentOnboardingVersionCompletedWithError_, v43), v3 = v43[0], !v7))
  {
    v15 = v3;
    v16 = sub_269D97360();

    swift_willThrow();
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v17 = sub_269D98250();
    __swift_project_value_buffer(v17, qword_280C0B728);
    v18 = v16;
    v19 = sub_269D98230();
    v20 = sub_269D9AB60();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43[0] = v22;
      *v21 = 136446466;
      v23 = sub_269D9B4D0();
      v25 = sub_269C2EACC(v23, v24, v43);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v28 + 16))(v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v29 = sub_269D9A660();
      v31 = sub_269C2EACC(v29, v30, v43);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Error sleep tracking capability: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v22, -1, -1);
      MEMORY[0x26D652460](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v8 = v7;
  v9 = v43[0];
  v10 = [v8 BOOLValue];

  sub_269D9A630();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_269D9A5F0();

  v13 = [v11 initWithSuiteName_];

  if (v13)
  {
    v14 = [v13 BOOLForKey_];
  }

  else
  {
    v14 = 0;
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v32 = sub_269D98250();
  __swift_project_value_buffer(v32, qword_280C0B728);
  v33 = sub_269D98230();
  v34 = sub_269D9AB80();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43[0] = v36;
    *v35 = 136446978;
    v37 = sub_269D9B4D0();
    v39 = sub_269C2EACC(v37, v38, v43);

    *(v35 + 4) = v39;
    *(v35 + 12) = 1026;
    *(v35 + 14) = v6;
    *(v35 + 18) = 1026;
    *(v35 + 20) = v10;
    *(v35 + 24) = 1026;
    *(v35 + 26) = v14;
    _os_log_impl(&dword_269C18000, v33, v34, "[%{public}s] Watch onboarding check: isSupported:%{BOOL,public}d hasOnboarded:%{BOOL,public}d isWatchAgeGated:%{BOOL,public}d", v35, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x26D652460](v36, -1, -1);
    MEMORY[0x26D652460](v35, -1, -1);
  }

  if (!v6)
  {
LABEL_17:
    v40 = 0;
    return v40 & 1;
  }

  v40 = (v10 | v14) ^ 1;
  return v40 & 1;
}

id sub_269CA709C()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v25[0] = 0;
  v2 = [v1 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v25[0];
    v5 = [v3 BOOLValue];
  }

  else
  {
    v6 = v25[0];
    v7 = sub_269D97360();

    swift_willThrow();
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B728);
    v9 = v7;
    v10 = sub_269D98230();
    v11 = sub_269D9AB60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, v25);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v19 + 16))(v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v20 = sub_269D9A660();
      v22 = sub_269C2EACC(v20, v21, v25);

      *(v12 + 14) = v22;
      _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Unable to fetch sleep coaching state with error %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v5;
}

id sub_269CA73C4(SEL *a1)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269CA7424()
{
  v1 = sub_269D981D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 152), *(v0 + 176));
  sub_269D981F0();
  v5 = sub_269D981E0();
  (*(v2 + 8))(v4, v1);
  v6 = [v5 areAllRequirementsSatisfied];

  return v6;
}

id sub_269CA7798()
{
  v1 = sub_269D981D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 192), *(v0 + 216));
  sub_269D981F0();
  v5 = sub_269D981E0();
  (*(v2 + 8))(v4, v1);
  v6 = [v5 areAllRequirementsSatisfied];

  return v6;
}

uint64_t sub_269CA7B0C()
{
  swift_beginAccess();
  sub_269C2DB5C(v0 + 272, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  LOBYTE(v1) = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1 & 1;
}

uint64_t sub_269CA7B98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_269C2DB5C(v3 + 272, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  LOBYTE(v3) = (*(v5 + 24))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_269CA7C30()
{
  swift_beginAccess();
  sub_269C2DB5C(v0 + 272, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  LOBYTE(v1) = (*(v2 + 24))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1 & 1;
}

uint64_t sub_269CA7CBC(char a1)
{
  v2 = v1;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B728);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446466;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    if (a1)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_269C2EACC(v12, v13, v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Updating health status features enabled: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v2 + 296);
  v16 = *(v2 + 304);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 272, v15);
  (*(v16 + 32))(a1 & 1, v15, v16);
  return swift_endAccess();
}

void (*sub_269CA7EE4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 272, v4);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  v7 = (*(v6 + 24))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  *(v4 + 72) = v7 & 1;
  return sub_269CA7FC0;
}

void sub_269CA7FC0(uint64_t a1)
{
  v1 = *a1;
  sub_269CA7CBC(*(*a1 + 72));

  free(v1);
}

void sub_269CA8048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Fetching suggested sleep schedule", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  sub_269C4E764();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269DA13E0;
  *(v15 + 32) = [objc_allocWithZone(type metadata accessor for ProactiveSuggestionProvider()) init];
  *(v15 + 40) = HKSPDefaultScheduleProvider();
  v16 = v3[8];
  sub_269CABB38();
  v17 = sub_269D9A7D0();

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v6;
  v20[4] = sub_269CABB9C;
  v20[5] = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_269CA87D4;
  v20[3] = &block_descriptor_14;
  v19 = _Block_copy(v20);

  [v16 suggestedSleepScheduleWithProviders:v17 completion:v19];
  _Block_release(v19);
}

uint64_t sub_269CA82FC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_269CAC2E4(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  if (a3)
  {
    v13 = a3;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v14 = sub_269D98250();
    __swift_project_value_buffer(v14, qword_280C0B728);
    v15 = a3;
    v16 = sub_269D98230();
    v17 = sub_269D9AB60();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v18 = 136446466;
      v19 = sub_269D9B4D0();
      v21 = sub_269C2EACC(v19, v20, &v39);
      v38 = a4;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v37 = a1;
      MEMORY[0x28223BE20](ErrorValue);
      (*(v25 + 16))(&v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = sub_269D9A660();
      a1 = v37;
      v28 = sub_269C2EACC(v26, v27, &v39);
      a4 = v38;

      *(v18 + 14) = v28;
      _os_log_impl(&dword_269C18000, v16, v17, "[%{public}s] Unable to retrieve schedule with error %{public}s)", v18, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v29, -1, -1);
      MEMORY[0x26D652460](v18, -1, -1);
    }

    else
    {
    }
  }

  v30 = sub_269D9A900();
  (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
  sub_269D9A8E0();
  swift_unknownObjectRetain();

  v31 = a1;
  v32 = sub_269D9A8D0();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = a4;
  v33[5] = a5;
  v33[6] = a1;
  v33[7] = a2;
  sub_269C79F94(0, 0, v12, &unk_269DA3CE8, v33);
}

uint64_t sub_269CA86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_269D9A8E0();
  v7[6] = sub_269D9A8D0();
  v9 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269CA8754, v9, v8);
}

uint64_t sub_269CA8754()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v3(v2, v1);
  v4 = v0[1];

  return v4();
}

void sub_269CA87D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  swift_unknownObjectRelease();
}

id sub_269CA8878(void *a1)
{
  v2 = v1;
  v60[1] = *MEMORY[0x277D85DE8];
  v4 = sub_269D9A630();
  v6 = v5;
  if (v4 == sub_269D9A630() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_269D9B280();

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = *(v2 + 24);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v12 = result;
    v13 = [result hksp_supportsSleep];

    if (!v13 || (v14 = [v10 profileIdentifier], v15 = objc_msgSend(v14, sel_type), v14, v15 == 3))
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v16 = sub_269D98250();
      __swift_project_value_buffer(v16, qword_280C0B728);
      v17 = sub_269D98230();
      v18 = sub_269D9AB60();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v60[0] = v20;
        *v19 = 136446210;
        v21 = sub_269D9B4D0();
        v23 = sub_269C2EACC(v21, v22, v60);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_269C18000, v17, v18, "[%{public}s] Sleep coaching not supported", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x26D652460](v20, -1, -1);
        MEMORY[0x26D652460](v19, -1, -1);
      }

      goto LABEL_23;
    }

LABEL_15:
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v24 = sub_269D98250();
    __swift_project_value_buffer(v24, qword_280C0B728);
    v25 = a1;
    v26 = sub_269D98230();
    v27 = sub_269D9AB80();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60[0] = v29;
      *v28 = 136446466;
      v30 = sub_269D9B4D0();
      v32 = sub_269C2EACC(v30, v31, v60);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v33 = sub_269D9ACC0();
      v35 = sub_269C2EACC(v33, v34, v60);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_269C18000, v26, v27, "[%{public}s] Fetching onboarded state for feature with identifier %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v29, -1, -1);
      MEMORY[0x26D652460](v28, -1, -1);
    }

    sub_269CABBC0();
    v60[0] = 0;
    v36 = [swift_unknownObjectRetain() isCurrentOnboardingVersionCompletedWithError_];
    if (v36)
    {
      v37 = v36;
      v38 = v60[0];
      v39 = [v37 BOOLValue];

      swift_unknownObjectRelease();
      return v39;
    }

    v40 = v60[0];
    v41 = sub_269D97360();

    swift_willThrow();
    v42 = v25;
    v43 = v41;
    v17 = sub_269D98230();
    v44 = sub_269D9AB60();

    if (!os_log_type_enabled(v17, v44))
    {
      swift_unknownObjectRelease();

      return 0;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v60[0] = v46;
    *v45 = 136446722;
    v47 = sub_269D9B4D0();
    v49 = sub_269C2EACC(v47, v48, v60);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2082;
    v50 = sub_269D9ACC0();
    v52 = sub_269C2EACC(v50, v51, v60);

    *(v45 + 14) = v52;
    *(v45 + 22) = 2082;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v55 + 16))(v60 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
    v56 = sub_269D9A660();
    v58 = sub_269C2EACC(v56, v57, v60);

    *(v45 + 24) = v58;
    _os_log_impl(&dword_269C18000, v17, v44, "[%{public}s] Error reading onboarding completion for feature identifier %{public}s: %{public}s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v46, -1, -1);
    MEMORY[0x26D652460](v45, -1, -1);

    swift_unknownObjectRelease();
LABEL_23:

    return 0;
  }

  __break(1u);
  return result;
}

void sub_269CA8F20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98250();
  __swift_project_value_buffer(v5, qword_280C0B728);
  v6 = sub_269D98230();
  v7 = sub_269D9AB80();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = sub_269D9B4D0();
    v12 = sub_269C2EACC(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] Onboarding did complete for sleep", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D652460](v9, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);
  }

  sub_269CA4208();
  if (*(a1 + 24))
  {
    swift_beginAccess();
    if ([*(a1 + 48) sleepTracking])
    {
      v13 = *(a1 + 48);
      v14 = sub_269D98230();
      v15 = sub_269D9AB80();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446210;
        v18 = sub_269D9B4D0();
        v20 = sub_269C2EACC(v18, v19, aBlock);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Saving sleep settings", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x26D652460](v17, -1, -1);
        MEMORY[0x26D652460](v16, -1, -1);
      }

      v21 = v2[8];
      v22 = swift_allocObject();
      *(v22 + 16) = v4;
      aBlock[4] = sub_269CABD5C;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_269C7A600;
      aBlock[3] = &block_descriptor_6_0;
      v23 = _Block_copy(aBlock);

      [v21 saveCurrentSleepSettings:v13 options:2 completion:v23];
      _Block_release(v23);

      sub_269CA92A8(a1);
    }
  }

  else
  {

    sub_269CA9908(a1);
  }
}

uint64_t sub_269CA92A8(uint64_t a1)
{
  sub_269CAA070(*MEMORY[0x277CCC0E8]);
  result = swift_beginAccess();
  if (*(a1 + 128) == 1)
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280C0B728);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Enabling health status notifications", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    return sub_269CA7CBC(1);
  }

  return result;
}

void sub_269CA9460()
{
  v1 = *v0;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Sending tips discoverability signal", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v14[4] = sub_269CABD88;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_269CA6718;
  v14[3] = &block_descriptor_12_1;
  v11 = _Block_copy(v14);
  v12 = [objc_opt_self() blockOperationWithBlock_];
  _Block_release(v11);

  sub_269C1B0B8(0, &unk_28034F410);
  v13 = sub_269D9ABE0();
  [v13 addOperation_];
}

void sub_269CA96C4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D10DD8]);
  v1 = sub_269D9A5F0();
  v2 = [v0 initWithIdentifier_];

  [v2 donateSignal];
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280C0B728);
  v17 = v2;
  oslog = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446466;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = [v17 identifier];
    v11 = sub_269D9A630();
    v13 = v12;

    v14 = sub_269C2EACC(v11, v13, &v18);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_269C18000, oslog, v4, "[%{public}s] Tip with id %{public}s submitted successfully", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);

    v15 = v17;
  }

  else
  {

    v15 = oslog;
  }
}

void sub_269CA9908(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_269CAC2E4(0, &unk_28034F420, MEMORY[0x277D62578]);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v54 - v6;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, &aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Saving has completed sleep coaching onboarding", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  v57 = v2;
  sub_269CAA774();
  swift_beginAccess();
  v15 = *(a1 + 40);
  v56 = a1;
  v16 = *(a1 + 16);
  v17 = v15;
  v18 = v16;
  v19 = sub_269D98230();
  v20 = sub_269D9AB80();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446210;
    v23 = sub_269D9B4D0();
    v24 = v4;
    v26 = sub_269C2EACC(v23, v25, &aBlock);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Saving sleep schedule", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D652460](v22, -1, -1);
    MEMORY[0x26D652460](v21, -1, -1);
  }

  else
  {

    v24 = v4;
  }

  v27 = HKSPAnalyticsScheduleChangeContext();
  sub_269D9A490();

  v28 = v57[8];
  v29 = sub_269D9A480();

  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  v62 = sub_269CAC338;
  v63 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_269C7A600;
  v61 = &block_descriptor_40;
  v31 = _Block_copy(&aBlock);

  [v28 saveCurrentSleepSchedule:v17 options:3 context:v29 completion:v31];
  _Block_release(v31);

  v32 = v56;
  swift_beginAccess();
  v33 = *(v32 + 48);
  v34 = sub_269D98230();
  v35 = sub_269D9AB80();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v36 = 136446210;
    v38 = sub_269D9B4D0();
    v40 = sub_269C2EACC(v38, v39, &aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_269C18000, v34, v35, "[%{public}s] Saving sleep settings", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x26D652460](v37, -1, -1);
    MEMORY[0x26D652460](v36, -1, -1);
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v24;
  v62 = sub_269CAC4C8;
  v63 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_269C7A600;
  v61 = &block_descriptor_47;
  v42 = _Block_copy(&aBlock);

  [v28 saveCurrentSleepSettings:v33 options:2 completion:v42];
  _Block_release(v42);

  v43 = objc_opt_self();
  v44 = [v43 sharedBehavior];
  v45 = v57;
  if (!v44)
  {
    __break(1u);
    goto LABEL_20;
  }

  v46 = v44;
  v47 = [v44 features];

  if (!v47)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v48 = [v47 sleepResultsNotificationsOnWatch];

  if (v48)
  {
    sub_269C2DB5C((v45 + 29), &aBlock);
    __swift_project_boxed_opaque_existential_1Tm(&aBlock, v61);
    v49 = v55;
    sub_269D97A40();
    v50 = sub_269D97A80();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    sub_269D97D90();
    sub_269CAC364(v49);
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  if ([*(v32 + 48) sleepTracking])
  {
    sub_269CA92A8(v32);
  }

  sub_269CAA070(*MEMORY[0x277CCC0E0]);
  v51 = [v43 sharedBehavior];
  if (!v51)
  {
    goto LABEL_21;
  }

  v52 = v51;
  v53 = [v51 features];

  if (v53)
  {
    [v53 sleepDetails];

    sub_269CAAD94();
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_269CAA070(void *a1)
{
  v2 = v1;
  v4 = *v2;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98250();
  __swift_project_value_buffer(v5, qword_280C0B728);
  v6 = a1;
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136446466;
    v11 = sub_269D9B4D0();
    v13 = sub_269C2EACC(v11, v12, v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_269D9ACC0();
    v16 = sub_269C2EACC(v14, v15, v22);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Saving has onboarded feature with identifier %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v17 = sub_269CABBC0();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;
  v22[4] = sub_269CAC2DC;
  v22[5] = v18;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_269C7A600;
  v22[3] = &block_descriptor_34;
  v19 = _Block_copy(v22);
  v20 = v6;
  swift_unknownObjectRetain();

  [v17 setCurrentOnboardingVersionCompletedForCountryCode:0 countryCodeProvenance:0 date:0 settings:0 completion:v19];
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

void sub_269CAA318(int a1, NSObject *a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v6 = sub_269D98250();
    __swift_project_value_buffer(v6, qword_280C0B728);
    v7 = a2;
    v8 = a3;
    v9 = sub_269D98230();
    v10 = sub_269D9AB60();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 136446722;
      v13 = sub_269D9B4D0();
      v15 = sub_269C2EACC(v13, v14, &v38);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = sub_269D9ACC0();
      v18 = sub_269C2EACC(v16, v17, &v38);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v21 + 16))(&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = sub_269D9A660();
      v24 = sub_269C2EACC(v22, v23, &v38);

      *(v11 + 24) = v24;
      _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Failed to save onboarding state for feature %{public}s with error: %{public}s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v12, -1, -1);
      MEMORY[0x26D652460](v11, -1, -1);

      return;
    }

    v36 = a2;
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v25 = sub_269D98250();
    __swift_project_value_buffer(v25, qword_280C0B728);
    v26 = a3;
    v37 = sub_269D98230();
    v27 = sub_269D9AB80();

    if (os_log_type_enabled(v37, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136446466;
      v30 = sub_269D9B4D0();
      v32 = sub_269C2EACC(v30, v31, &v38);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v33 = sub_269D9ACC0();
      v35 = sub_269C2EACC(v33, v34, &v38);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_269C18000, v37, v27, "[%{public}s] Saved onboarding complete for feature %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v29, -1, -1);
      MEMORY[0x26D652460](v28, -1, -1);

      return;
    }

    v36 = v37;
  }
}

void sub_269CAA774()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280C0B728);
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446210;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Creating sleep focus", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  v11 = v1[8];
  v12 = [objc_opt_self() defaultConfigurationState];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  v15[4] = sub_269CAC2B0;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_269C7A600;
  v15[3] = &block_descriptor_28;
  v14 = _Block_copy(v15);

  [v11 createSleepFocusInState:v12 completion:v14];
  _Block_release(v14);
}

void sub_269CAA9B0(int a1, NSObject *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a2)
  {
    v7 = a2;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B728);
    v9 = a2;
    v10 = sub_269D98230();
    v11 = sub_269D9AB60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, &v33);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v19 + 16))(&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = sub_269D9A660();
      v22 = sub_269C2EACC(v20, v21, &v33);

      *(v12 + 14) = v22;
      _os_log_impl(&dword_269C18000, v10, v11, a4, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);

      return;
    }

    v31 = a2;
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v24 = sub_269D98250();
    __swift_project_value_buffer(v24, qword_280C0B728);
    v32 = sub_269D98230();
    v25 = sub_269D9AB80();
    if (os_log_type_enabled(v32, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136446210;
      v28 = sub_269D9B4D0();
      v30 = sub_269C2EACC(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_269C18000, v32, v25, a5, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D652460](v27, -1, -1);
      MEMORY[0x26D652460](v26, -1, -1);

      return;
    }

    v31 = v32;
  }
}

void sub_269CAAD94()
{
  v1 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_269D9A9A0();
    v4 = [v2 displayTypeWithIdentifier_];

    if (v4)
    {
      sub_269D97EE0();
      oslog = [v4 objectType];
      sub_269D97ED0();
    }

    else
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v5 = sub_269D98250();
      __swift_project_value_buffer(v5, qword_280C0B728);
      oslog = sub_269D98230();
      v6 = sub_269D9AB60();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v15 = v9;
        *v7 = 136446466;
        v10 = sub_269D9B4D0();
        v12 = sub_269C2EACC(v10, v11, &v15);

        *(v7 + 4) = v12;
        *(v7 + 12) = 2114;
        v13 = sub_269D9A9A0();
        *(v7 + 14) = v13;
        *v8 = v13;
        _os_log_impl(&dword_269C18000, oslog, v6, "[%{public}s] Unable to create display type from identifier %{public}@", v7, 0x16u);
        sub_269C773DC(v8);
        MEMORY[0x26D652460](v8, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x26D652460](v9, -1, -1);
        MEMORY[0x26D652460](v7, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id *SleepOnboardingManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 19));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 34));
  return v0;
}

uint64_t SleepOnboardingManager.__deallocating_deinit()
{
  SleepOnboardingManager.deinit();

  return swift_deallocClassInstance();
}

id sub_269CAB1B0(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v5 = result;
    v6 = [result *a3];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269CAB260()
{
  v1 = *v0;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 272, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  LOBYTE(v2) = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v2 & 1;
}

uint64_t sub_269CAB2F0()
{
  v1 = *v0;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 272, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  LOBYTE(v2) = (*(v3 + 24))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v2 & 1;
}

void (*sub_269CAB3A4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  sub_269C2DB5C(v5 + 272, v4);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v4, v6);
  LOBYTE(v5) = (*(v7 + 24))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  *(v4 + 72) = v5 & 1;
  return sub_269CA7FC0;
}

void *sub_269CAB574(void *a1, void *a2)
{
  v4 = sub_269D97D80();
  v5 = sub_269D97D70();
  type metadata accessor for HealthStatusFeatureProvider();
  v6 = swift_allocObject();
  v16 = v4;
  v17 = MEMORY[0x277D62630];
  *&v15 = v5;
  v7 = *MEMORY[0x277CCC0F0];
  v8 = objc_allocWithZone(MEMORY[0x277CCD460]);
  swift_retain_n();
  v9 = a2;
  v10 = [v8 initWithFeatureIdentifier:v7 healthStore:v9];
  v11 = sub_269C1B0B8(0, &qword_28034F430);
  v12 = MEMORY[0x277D113B8];
  v6[5] = v11;
  v6[6] = v12;
  v6[2] = v10;

  sub_269C25520(&v15, (v6 + 7));
  type metadata accessor for SleepOnboardingManager();
  v13 = swift_allocObject();
  return sub_269CC88A4(a1, v9, v6, v5, v13);
}

void *sub_269CAB6AC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a6;
  v40 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v36 = a7;
  v37 = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  a5[2] = [a1 analyticsManager];
  a5[3] = a2;
  v18 = objc_opt_self();
  v19 = a2;
  v20 = [v18 hksp_healthNotificationCenter];
  type metadata accessor for SleepNotificationManager();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  a5[4] = v21;
  a5[8] = a1;
  v22 = type metadata accessor for SleepScheduleProvider();
  v23 = a1;
  v24 = SleepScheduleProvider.__allocating_init(sleepStore:)(v23);
  a5[12] = v22;
  a5[13] = &protocol witness table for SleepScheduleProvider;
  a5[9] = v24;
  v25 = v23;
  v26 = HKSPSleepStore.settings.getter();
  v27 = type metadata accessor for SleepSettingsProvider();
  v28 = objc_allocWithZone(v27);
  v29 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v25, v26);
  a5[17] = v27;
  a5[18] = &protocol witness table for SleepSettingsProvider;
  a5[14] = v29;
  a5[5] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0D0] sleepStore:v25];
  a5[6] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E0] sleepStore:v25];
  a5[7] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E8] sleepStore:v25];
  v30 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0C8] healthStore:v19];
  v31 = sub_269C1B0B8(0, &qword_28034F430);
  v32 = MEMORY[0x277D113B8];
  a5[22] = v31;
  a5[23] = v32;
  a5[19] = v30;
  v33 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0F8] healthStore:v19];
  a5[27] = v31;
  a5[28] = v32;
  a5[24] = v33;
  sub_269C25520(&v38, (a5 + 34));
  sub_269C25520(&v35, (a5 + 29));
  return a5;
}

void *sub_269CAB98C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a2;
  v26 = a8;
  v24 = a1;
  v13 = *(a7 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepOnboardingManager();
  v21 = swift_allocObject();
  (*(v18 + 16))(v20, a3, a6);
  (*(v13 + 16))(v16, a4, a7);
  return sub_269CAB6AC(v24, v25, v20, v16, v21, a6, a7, v26, a9);
}

unint64_t sub_269CABB38()
{
  result = qword_28034F3A8;
  if (!qword_28034F3A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034F3A8);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269CABBC0()
{
  v1 = sub_269D9A630();
  v3 = v2;
  if (v1 == sub_269D9A630() && v3 == v4)
  {
    v7 = 40;
LABEL_8:

    return *(v0 + v7);
  }

  v6 = sub_269D9B280();

  if (v6)
  {
    v7 = 40;
    return *(v0 + v7);
  }

  v9 = sub_269D9A630();
  v11 = v10;
  if (v9 == sub_269D9A630() && v11 == v12)
  {
    v7 = 48;
    goto LABEL_8;
  }

  v14 = sub_269D9B280();

  if (v14)
  {
    v7 = 48;
    return *(v0 + v7);
  }

  v15 = sub_269D9A630();
  v17 = v16;
  if (v15 == sub_269D9A630() && v17 == v18)
  {
    v7 = 56;
    goto LABEL_8;
  }

  v19 = sub_269D9B280();

  if (v19)
  {
    v7 = 56;
  }

  else
  {
    v7 = 48;
  }

  return *(v0 + v7);
}

void sub_269CAC2E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269CAC364(uint64_t a1)
{
  sub_269CAC2E4(0, &unk_28034F420, MEMORY[0x277D62578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269CAC3DC(uint64_t a1)
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
  v10[1] = sub_269C71C08;

  return sub_269CA86B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t static NSDateComponentsFormatter.shorterDateString(from:)()
{
  v0 = type metadata accessor for ShorterDateComponentsFormatter();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, sel_init);
  v3 = sub_269D97110();
  v4 = [v2 stringFromDateComponents_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_269D9A630();

  return v5;
}

uint64_t static NSDateComponentsFormatter.shortHourString(from:)(double a1)
{
  v2 = type metadata accessor for ShortHourDateComponentsFormatter();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = 4;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  [v4 setUnitsStyle_];
  [v4 setAllowedUnits_];
  v5 = [v4 stringFromTimeInterval_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_269D9A630();

  return v6;
}

id ShortHourDateComponentsFormatter.__allocating_init(options:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  [v4 setUnitsStyle_];
  [v4 setAllowedUnits_];

  return v4;
}

uint64_t sub_269CAC7AC(uint64_t (*a1)(void), void *a2, double a3)
{
  v5 = a1();
  v6 = objc_allocWithZone(v5);
  *&v6[*a2] = 4;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = [v7 stringFromTimeInterval_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_269D9A630();

  return v9;
}

id sub_269CAC874(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_269CAC8E4(uint64_t (*a1)(void), double a2)
{
  v3 = [objc_allocWithZone(a1()) init];
  v4 = [v3 stringFromTimeInterval_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_269D9A630();

  return v5;
}

uint64_t sub_269CAC994(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = [objc_allocWithZone(a2()) init];
  v3 = sub_269D97110();
  v4 = [v2 stringFromDateComponents_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_269D9A630();

  return v5;
}

id static NSDateComponentsFormatter.briefStandaloneDuration.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  [v0 setFormattingContext_];
  return v0;
}

id sub_269CACAB0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  return v2;
}

id static NSDateComponentsFormatter.full.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  return v0;
}

void __swiftcall NSDateComponentsFormatter.spellOutFormatter()(NSDateComponentsFormatter *__return_ptr retstr)
{
  [v1 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269CAF458();
  swift_dynamicCast();
  [v2 setUnitsStyle_];
}

uint64_t sub_269CACBEC(double a1)
{
  v44 = sub_269D96F60();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97650();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  v53.receiver = v1;
  v53.super_class = v9;
  v10 = objc_msgSendSuper2(&v53, sel_stringFromTimeInterval_, a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_269D9A630();
  v14 = v13;

  sub_269CAD43C(v8);
  v15 = sub_269D975D0();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  if (v15 == 0x53555F6E65 && v17 == 0xE500000000000000)
  {
  }

  else
  {
    v19 = sub_269D9B280();

    if ((v19 & 1) == 0)
    {
      return v12;
    }
  }

  v42 = (v3 + 8);
  v20 = &unk_287A9FD48;
  v21 = 3;
  v41 = sub_269C3EEE8();
  while (1)
  {
    v45 = v21;
    v22 = *(v20 - 1);
    v23 = *v20;
    v24 = *(v20 - 3);
    v25 = *(v20 - 2);
    v51 = v12;
    v52 = v14;
    v49 = v24;
    v50 = v25;
    v40 = v22;
    v47 = v22;
    v48 = v23;

    v46 = v23;

    v26 = sub_269D9AEB0();
    v28 = v27;

    v51 = v24;
    v52 = v25;
    v29 = v43;
    sub_269D96F30();
    v30 = sub_269D9AEA0();
    v32 = v31;
    v33 = *v42;
    v34 = v29;
    v14 = v28;
    v12 = v26;
    (*v42)(v34, v44);

    if (v26 == v30 && v14 == v32)
    {
      break;
    }

    v35 = sub_269D9B280();

    v36 = v45;
    if (v35)
    {
      goto LABEL_17;
    }

    v20 += 4;
    v21 = v36 - 1;
    if (!v21)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return v12;
    }
  }

LABEL_17:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v51 = v40;
  v52 = v46;
  v37 = v43;
  sub_269D96F30();
  v12 = sub_269D9AEA0();
  v33(v37, v44);

  return v12;
}

uint64_t sub_269CAD00C()
{
  v42 = sub_269D96F60();
  v1 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269D97650();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D97110();
  v8 = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  v51.receiver = v0;
  v51.super_class = v8;
  v9 = objc_msgSendSuper2(&v51, sel_stringFromDateComponents_, v7);

  if (!v9)
  {
    return 0;
  }

  v10 = sub_269D9A630();
  v12 = v11;

  sub_269CAD43C(v6);
  v13 = sub_269D975D0();
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  if (v13 == 0x53555F6E65 && v15 == 0xE500000000000000)
  {
  }

  else
  {
    v17 = sub_269D9B280();

    if ((v17 & 1) == 0)
    {
      return v10;
    }
  }

  v40 = (v1 + 8);
  v18 = &unk_287A9FDC8;
  v19 = 3;
  v39 = sub_269C3EEE8();
  while (1)
  {
    v43 = v19;
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = *(v18 - 3);
    v23 = *(v18 - 2);
    v49 = v10;
    v50 = v12;
    v47 = v22;
    v48 = v23;
    v38 = v20;
    v45 = v20;
    v46 = v21;

    v44 = v21;

    v24 = sub_269D9AEB0();
    v26 = v25;

    v49 = v22;
    v50 = v23;
    v27 = v41;
    sub_269D96F30();
    v28 = sub_269D9AEA0();
    v30 = v29;
    v31 = *v40;
    v32 = v27;
    v12 = v26;
    v10 = v24;
    (*v40)(v32, v42);

    if (v24 == v28 && v12 == v30)
    {
      break;
    }

    v33 = sub_269D9B280();

    v34 = v43;
    if (v33)
    {
      goto LABEL_17;
    }

    v18 += 4;
    v19 = v34 - 1;
    if (!v19)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return v10;
    }
  }

LABEL_17:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v49 = v38;
  v50 = v44;
  v35 = v41;
  sub_269D96F30();
  v10 = sub_269D9AEA0();
  v31(v35, v42);

  return v10;
}

uint64_t sub_269CAD43C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_269CAF848(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_269CAF848(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = [v2 calendar];
  if (v13)
  {
    v14 = v13;
    sub_269D97710();

    v15 = sub_269D977A0();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  }

  else
  {
    v15 = sub_269D977A0();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  sub_269CAF89C(v7, v9);
  sub_269D977A0();
  if ((*(*(v15 - 8) + 48))(v9, 1, v15))
  {
    sub_269CAF91C(v9, &unk_280C0BB50, MEMORY[0x277CC99E8]);
    v16 = sub_269D97650();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  else
  {
    sub_269D97750();
    sub_269CAF91C(v9, &unk_280C0BB50, MEMORY[0x277CC99E8]);
    v16 = sub_269D97650();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) != 1)
    {
      return (*(v17 + 32))(a1, v12, v16);
    }
  }

  sub_269D97630();
  sub_269D97650();
  result = (*(*(v16 - 8) + 48))(v12, 1, v16);
  if (result != 1)
  {
    return sub_269CAF91C(v12, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  }

  return result;
}

uint64_t sub_269CAD7BC(uint64_t a1, uint64_t a2)
{
  v39 = sub_269D96F60();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D97650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CAD43C(v9);
  v10 = sub_269D975D0();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10 == 0x53555F6E65 && v12 == 0xE500000000000000)
  {
  }

  else
  {
    v14 = sub_269D9B280();

    if ((v14 & 1) == 0)
    {

      return a1;
    }
  }

  v37 = (v4 + 8);

  v15 = &unk_287A9FE48;
  v16 = 3;
  v36 = sub_269C3EEE8();
  while (1)
  {
    v40 = v16;
    v17 = *(v15 - 1);
    v18 = *v15;
    v19 = *(v15 - 3);
    v20 = *(v15 - 2);
    v46 = a1;
    v47 = a2;
    v44 = v19;
    v45 = v20;
    v35 = v17;
    v42 = v17;
    v43 = v18;

    v41 = v18;

    v21 = sub_269D9AEB0();
    v23 = v22;

    v46 = v19;
    v47 = v20;
    v24 = v38;
    sub_269D96F30();
    v25 = sub_269D9AEA0();
    v27 = v26;
    v28 = *v37;
    v29 = v24;
    a2 = v23;
    a1 = v21;
    (*v37)(v29, v39);

    if (v21 == v25 && a2 == v27)
    {
      break;
    }

    v30 = sub_269D9B280();

    v31 = v40;
    if (v30)
    {
      goto LABEL_15;
    }

    v15 += 4;
    v16 = v31 - 1;
    if (!v16)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return a1;
    }
  }

LABEL_15:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v46 = v35;
  v47 = v41;
  v32 = v38;
  sub_269D96F30();
  a1 = sub_269D9AEA0();
  v28(v32, v39);

  return a1;
}

id ForceDoubleZerosDateComponentsFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ForceDoubleZerosDateComponentsFormatter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id BriefOneHourIsSixtyMinDateComponentsFormatter.init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setZeroFormattingBehavior_];
  [v1 setUnitsStyle_];

  return v1;
}

uint64_t sub_269CADF7C()
{
  v1 = v0;
  v2 = sub_269D971A0();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = sub_269D97150();
  if ((v6 & 1) == 0)
  {
    if (v5 == 1)
    {
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }

  if (v4 <= 60)
  {
LABEL_8:
    v7 = 64;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 96;
LABEL_11:
  [v0 setAllowedUnits_];
  v8 = sub_269D97110();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter();
  v9 = objc_msgSendSuper2(&v12, sel_stringFromDateComponents_, v8);

  if (!v9)
  {
    return 0;
  }

  v10 = sub_269D9A630();

  return v10;
}

uint64_t sub_269CAE088()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269CAE0CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ShorterDateComponentsFormatter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_269CAE390()
{
  v1 = sub_269D97150();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  result = sub_269D971A0();
  v6 = 60 * v3;
  if ((v3 * 60) >> 64 != (60 * v3) >> 63)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    goto LABEL_14;
  }

  v10 = [v0 stringFromTimeInterval_];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_269D9A630();

  return v12;
}

id sub_269CAE468(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97120();
  v10 = a1;
  a4(v9);
  v12 = v11;

  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v13 = sub_269D9A5F0();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id ShorterDateComponentsFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269CAE648()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269CAE68C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ShortHourDateComponentsFormatter.init(options:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ShortHourDateComponentsFormatter();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [v2 setUnitsStyle_];
  [v2 setAllowedUnits_];

  return v2;
}

uint64_t sub_269CAE874(double a1)
{
  if (a1 / 60.0 / 60.0 != 0.0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    swift_beginAccess();
    v4 = HKTimePeriodString();

    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for ShortHourDateComponentsFormatter();
  v3 = objc_msgSendSuper2(&v8, sel_stringFromTimeInterval_, a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
LABEL_5:
  v6 = sub_269D9A630();

  return v6;
}

uint64_t sub_269CAEA08()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269CAEA4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_269CAEB1C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_269CAEC14(double a1)
{
  v39 = sub_269D96F60();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D97650();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  v9 = HKTimePeriodString();

  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = sub_269D9A630();
  v12 = v11;

  sub_269CAD43C(v7);
  v13 = sub_269D975D0();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  if (v13 == 0x53555F6E65 && v15 == 0xE500000000000000)
  {
  }

  else
  {
    v17 = sub_269D9B280();

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  v37 = (v2 + 8);
  v18 = &unk_287A9FEC8;
  v19 = 3;
  v36[1] = sub_269C3EEE8();
  while (1)
  {
    v40 = v19;
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = *(v18 - 3);
    v23 = *(v18 - 2);
    v46 = v10;
    v47 = v12;
    v44 = v22;
    v45 = v23;
    v36[0] = v20;
    v42 = v20;
    v43 = v21;

    v41 = v21;

    v24 = sub_269D9AEB0();
    v26 = v25;

    v46 = v22;
    v47 = v23;
    v27 = v38;
    sub_269D96F30();
    v28 = sub_269D9AEA0();
    v30 = v29;
    v31 = *v37;
    v32 = v27;
    v12 = v26;
    v10 = v24;
    (*v37)(v32, v39);

    if (v24 == v28 && v12 == v30)
    {
      break;
    }

    v33 = sub_269D9B280();

    v34 = v40;
    if (v33)
    {
      goto LABEL_16;
    }

    v18 += 4;
    v19 = v34 - 1;
    if (!v19)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return;
    }
  }

LABEL_16:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v46 = v36[0];
  v47 = v41;
  v35 = v38;
  sub_269D96F30();
  sub_269D9AEA0();
  v31(v35, v39);
}

id sub_269CAF060(void *a1, double a2, uint64_t a3, void (*a4)(double))
{
  v6 = a1;
  a4(a2);
  v8 = v7;

  if (v8)
  {
    v9 = sub_269D9A5F0();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_269CAF0F0()
{
  v0 = sub_269D971F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97120();
  (*(v1 + 8))(v3, v0);

  return 0;
}

id AbbreviatedOneHourIsSixtyMinDateComponentsFormatter.init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AbbreviatedOneHourIsSixtyMinDateComponentsFormatter();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setUnitsStyle_];
  [v1 setAllowedUnits_];

  return v1;
}

id sub_269CAF348(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269CAF458()
{
  result = qword_28034DE58;
  if (!qword_28034DE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034DE58);
  }

  return result;
}

void sub_269CAF4A4()
{
  if (!qword_28034F458)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F458);
    }
  }
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_269CAF848(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269CAF89C(uint64_t a1, uint64_t a2)
{
  sub_269CAF848(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CAF91C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269CAF848(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_269CAF9C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_269CAFA1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_269CAFAA4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_269D99040();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[3];
  v71 = v1[2];
  v72 = v6;
  *v73 = v1[4];
  *&v73[9] = *(v1 + 73);
  v7 = v1[1];
  v69 = *v1;
  v70 = v7;
  v51 = sub_269D99D10();
  v67 = v51;
  v68 = 256;
  v8 = 0.7;
  if ((v71 & 1) == 0)
  {
    v8 = 0.0;
  }

  v60 = xmmword_269DA3E80;
  v61 = xmmword_269DA3E80;
  v62 = xmmword_269DA3E80;
  v63 = 0;
  v64 = v8;
  v65 = xmmword_269DA3E90;
  v66 = 0;
  v59 = BYTE1(v71);
  if (v73[24])
  {
    *&v58[0] = *(&v71 + 1);
    *(v58 + 8) = v72;
    *(&v58[1] + 8) = *v73;
    *(&v58[2] + 1) = *&v73[16];
    sub_269CB1900(&v69, &v53);
  }

  else
  {
    sub_269CB1900(&v69, &v53);
    sub_269D9AB70();
    v9 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269CB1938(&v69);
    (*(v3 + 8))(v5, v2);
  }

  v74 = v58[0];
  v75 = v58[1];
  v76 = v58[2];
  v10 = swift_allocObject();
  v11 = v72;
  v10[3] = v71;
  v10[4] = v11;
  v10[5] = *v73;
  *(v10 + 89) = *&v73[9];
  v12 = v70;
  v10[1] = v69;
  v10[2] = v12;
  v13 = v75;
  v10[7] = v74;
  v10[8] = v13;
  v10[9] = v76;
  v14 = swift_allocObject();
  v15 = v72;
  v14[3] = v71;
  v14[4] = v15;
  v14[5] = *v73;
  *(v14 + 89) = *&v73[9];
  v16 = v70;
  v14[1] = v69;
  v14[2] = v16;
  sub_269CB1900(&v69, &v53);
  sub_269CB1900(&v69, &v53);
  sub_269CB197C();
  v50 = v17;
  sub_269CB1A4C();
  v49 = v18;
  sub_269CB1E04();
  v48 = v19;
  v47 = sub_269CB2C7C(&qword_28034F530, sub_269CB197C);
  v46 = sub_269CB2B9C();
  sub_269CB2020();
  v45 = v20;
  sub_269CB29E8();
  v22 = v21;
  sub_269CB2210();
  v44 = v23;
  sub_269CB23D4();
  v43 = v24;
  sub_269CB2570();
  v42 = v25;
  sub_269CB26DC();
  v41 = v26;
  sub_269CB281C();
  v28 = v27;
  sub_269CB28E0();
  v30 = v29;
  v31 = sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
  v53 = &type metadata for SleepScoreAnimationState;
  v54 = v30;
  v55 = v30;
  v56 = v31;
  v57 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
  v53 = &type metadata for SleepScoreAnimationState;
  v54 = v28;
  v55 = v22;
  v56 = OpaqueTypeConformance2;
  v57 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v53 = &type metadata for SleepScoreAnimationState;
  v54 = v41;
  v55 = v22;
  v56 = v34;
  v57 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v53 = &type metadata for SleepScoreAnimationState;
  v54 = v42;
  v55 = v22;
  v56 = v35;
  v57 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v53 = &type metadata for SleepScoreAnimationState;
  v54 = v43;
  v55 = v22;
  v56 = v36;
  v57 = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v53 = &type metadata for SleepScoreAnimationState;
  v54 = v44;
  v55 = v22;
  v56 = v37;
  v57 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v53 = &type metadata for SleepScoreAnimationState;
  v54 = v45;
  v55 = v22;
  v56 = v38;
  v57 = v33;
  swift_getOpaqueTypeConformance2();
  sub_269D99B20();
}

uint64_t sub_269CB0008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_269D9A180();
  v10 = v9;
  sub_269CB0198(a2, a3, &v23);
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v37 = v23;
  v38 = v24;
  *&v51 = v8;
  *(&v51 + 1) = v10;
  sub_269CB1AB4();
  (*(*(v11 - 8) + 16))(a4, a1, v11);
  sub_269CB1A4C();
  v13 = (a4 + *(v12 + 36));
  v14 = v50;
  v13[12] = v49;
  v13[13] = v14;
  v13[14] = v51;
  v15 = v46;
  v13[8] = v45;
  v13[9] = v15;
  v16 = v48;
  v13[10] = v47;
  v13[11] = v16;
  v17 = v42;
  v13[4] = v41;
  v13[5] = v17;
  v18 = v44;
  v13[6] = v43;
  v13[7] = v18;
  v19 = v38;
  *v13 = v37;
  v13[1] = v19;
  v20 = v40;
  v13[2] = v39;
  v13[3] = v20;
  v52[10] = v33;
  v52[11] = v34;
  v52[12] = v35;
  v52[13] = v36;
  v52[6] = v29;
  v52[7] = v30;
  v52[8] = v31;
  v52[9] = v32;
  v52[2] = v25;
  v52[3] = v26;
  v52[4] = v27;
  v52[5] = v28;
  v52[0] = v23;
  v52[1] = v24;
  v53 = v8;
  v54 = v10;
  sub_269CB2D10(&v37, &v22);
  return sub_269CB2D74(v52);
}

uint64_t sub_269CB0198@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = (v3 + 8);
  v7 = (v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(result + 80);
  if (v10 == 1.0)
  {
    v11 = v3;
  }

  else
  {
    v7 = (result + 32);
    v6 = (result + 16);
    v11 = result;
  }

  v12 = *v11;
  v13 = *v6;
  v14 = *v7;
  if ((*(v3 + 32) & 1) != 0 || v10 == 1.0)
  {
    goto LABEL_10;
  }

  v15 = round(*(result + 48));
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 < 9.22337204e18)
  {
    v9 = 0;
    v8 = v15;
LABEL_10:
    v16 = *(result + 8);
    v17 = *(result + 24);
    v18 = *(result + 40);
    v25 = *(result + 56);
    v26 = *a2;
    v19 = *(result + 72);
    v29 = v9;
    v27 = a2[1];
    v28 = *(a2 + 4);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v22 = sub_269D99670();

    result = swift_allocObject();
    v23 = *(v4 + 48);
    *(result + 48) = *(v4 + 32);
    *(result + 64) = v23;
    *(result + 80) = *(v4 + 64);
    *(result + 96) = *(v4 + 80);
    v24 = *(v4 + 16);
    *(result + 16) = *v4;
    *(result + 32) = v24;
    *a3 = v12;
    *(a3 + 8) = v16;
    *(a3 + 16) = v13;
    *(a3 + 24) = v17;
    *(a3 + 32) = v14;
    *(a3 + 40) = v18;
    *(a3 + 48) = v8;
    *(a3 + 56) = v29;
    *(a3 + 64) = v25;
    *(a3 + 80) = v19;
    *(a3 + 88) = v10;
    *(a3 + 96) = KeyPath;
    *(a3 + 136) = 0;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 144) = 0;
    *(a3 + 152) = v21;
    *(a3 + 160) = v26;
    *(a3 + 176) = v27;
    *(a3 + 192) = v28;
    *(a3 + 200) = v22;
    *(a3 + 208) = sub_269CB2DD0;
    *(a3 + 216) = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_269CB03A0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v136 = a2;
  sub_269CB2020();
  v135 = v3;
  v134 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v133 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2210();
  v132 = v5;
  v131 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v130 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB23D4();
  v149 = v7;
  v129 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v148 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2570();
  v147 = v9;
  v128 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v146 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB26DC();
  v145 = v11;
  v127 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v144 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB281C();
  v143 = v13;
  v126 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v142 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB29E8();
  v16 = v15;
  v159 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v118 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v158 = &v112 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v157 = &v112 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v156 = &v112 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v155 = &v112 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v154 = &v112 - v28;
  MEMORY[0x28223BE20](v27);
  v153 = &v112 - v29;
  sub_269CB28E0();
  v31 = v30;
  v150 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v151 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v112 - v35;
  MEMORY[0x28223BE20](v34);
  v152 = &v112 - v37;
  v124 = sub_269D9A200();
  v122 = *(v124 - 8);
  v38 = MEMORY[0x28223BE20](v124);
  v40 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v112 - v41;
  sub_269CB1E04();
  v125 = v43;
  v123 = *(v43 - 8);
  v44 = MEMORY[0x28223BE20](v43);
  v121 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v141 = &v112 - v47;
  MEMORY[0x28223BE20](v46);
  v120 = &v112 - v48;
  sub_269D9A8E0();
  v119 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = *a1;
  v49 = a1[1];
  v51 = a1[2];
  v115 = a1[3];
  v52 = *(a1 + 32);
  v114 = v52;
  if (v115 < 90)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52;
  }

  if (v53)
  {
    v54 = 0.833333333;
  }

  else
  {
    v54 = 1.33333333;
  }

  if (v53)
  {
    v55 = 0.5;
  }

  else
  {
    v55 = 1.0;
  }

  sub_269D9A1E0();
  sub_269D9A1E0();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v112 - 2) = 0x3FE5555555555555;
  *(&v112 - 1) = v40;
  v138 = v40;
  sub_269CB2990();
  v139 = v42;
  v58 = v57;
  v59 = sub_269CB2C7C(&qword_28034F508, sub_269CB2990);
  sub_269D98B00();
  v113 = MEMORY[0x277CDF6F0];
  v60 = v36;
  v61 = sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
  v116 = v61;
  MEMORY[0x26D64EF90](v60, &type metadata for SleepScoreAnimationState, v31, v61);
  v62 = *(v150 + 8);
  v150 += 8;
  v140 = v60;
  v62(v60, v31);
  v117 = v62;
  v63 = swift_getKeyPath();
  MEMORY[0x28223BE20](v63);
  *(&v112 - 2) = 0x3FE5555555555555;
  *(&v112 - 1) = v40;
  v64 = v151;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v64, &type metadata for SleepScoreAnimationState, v31, v61);
  v62(v64, v31);
  v65 = swift_getKeyPath();
  v137 = v31;
  MEMORY[0x28223BE20](v65);
  *(&v112 - 4) = 0x3FD5555555555555;
  *(&v112 - 3) = v54;
  v66 = v139;
  *(&v112 - 2) = v139;
  sub_269CB2AD8();
  v160 = MEMORY[0x277D839F8];
  v161 = v58;
  v162 = v58;
  v163 = v59;
  v164 = v59;
  swift_getOpaqueTypeConformance2();
  v67 = v154;
  sub_269D98B00();
  v68 = sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
  MEMORY[0x26D64EF90](v67, &type metadata for SleepScoreAnimationState, v16, v68);
  v69 = v159 + 8;
  v70 = *(v159 + 8);
  v70(v67, v16);
  v71 = swift_getKeyPath();
  MEMORY[0x28223BE20](v71);
  *(&v112 - 6) = 0x3FD5555555555555;
  *(&v112 - 5) = v115;
  *(&v112 - 32) = v114;
  *(&v112 - 3) = v54;
  v72 = v66;
  *(&v112 - 2) = v66;
  v73 = v155;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v73, &type metadata for SleepScoreAnimationState, v16, v68);
  v70(v73, v16);
  v74 = swift_getKeyPath();
  MEMORY[0x28223BE20](v74);
  *(&v112 - 4) = 0x3FD5555555555555;
  *(&v112 - 3) = v54;
  *(&v112 - 2) = v72;
  v75 = v156;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v75, &type metadata for SleepScoreAnimationState, v16, v68);
  v70(v75, v16);
  v76 = swift_getKeyPath();
  MEMORY[0x28223BE20](v76);
  *(&v112 - 4) = 0x3FD5555555555555;
  *(&v112 - 3) = v50;
  *(&v112 - 2) = v55;
  v77 = v138;
  *(&v112 - 1) = v138;
  v78 = v157;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v78, &type metadata for SleepScoreAnimationState, v16, v68);
  v70(v78, v16);
  v79 = swift_getKeyPath();
  MEMORY[0x28223BE20](v79);
  *(&v112 - 4) = 0x3FDAAAAAAAAAAAABLL;
  *(&v112 - 3) = v49;
  *(&v112 - 2) = v55;
  *(&v112 - 1) = v77;
  v80 = v158;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v80, &type metadata for SleepScoreAnimationState, v16, v68);
  v70(v80, v16);
  v159 = v69;
  v113 = v70;
  v81 = swift_getKeyPath();
  MEMORY[0x28223BE20](v81);
  *(&v112 - 4) = 0x3FE0000000000000;
  *(&v112 - 3) = v51;
  *(&v112 - 2) = v55;
  *(&v112 - 1) = v77;
  v82 = v118;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v82, &type metadata for SleepScoreAnimationState, v16, v68);
  v70(v82, v16);
  v83 = v137;
  v84 = v116;
  MEMORY[0x26D64EFC0](v152, &type metadata for SleepScoreAnimationState, v137, v116);
  sub_269D98D60();
  v160 = &type metadata for SleepScoreAnimationState;
  v161 = v83;
  v162 = v83;
  v163 = v84;
  v164 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v143;
  sub_269D98D60();
  v160 = &type metadata for SleepScoreAnimationState;
  v161 = v86;
  v162 = v16;
  v163 = OpaqueTypeConformance2;
  v164 = v68;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v145;
  sub_269D98D60();
  v160 = &type metadata for SleepScoreAnimationState;
  v161 = v88;
  v162 = v16;
  v163 = v87;
  v164 = v68;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v147;
  sub_269D98D60();
  v160 = &type metadata for SleepScoreAnimationState;
  v161 = v90;
  v162 = v16;
  v163 = v89;
  v164 = v68;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v130;
  v93 = v149;
  sub_269D98D60();
  v160 = &type metadata for SleepScoreAnimationState;
  v161 = v93;
  v162 = v16;
  v163 = v91;
  v164 = v68;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = v133;
  v96 = v132;
  sub_269D98D60();
  v160 = &type metadata for SleepScoreAnimationState;
  v161 = v96;
  v162 = v16;
  v163 = v94;
  v164 = v68;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = v121;
  v99 = v135;
  sub_269D98D60();
  v160 = &type metadata for SleepScoreAnimationState;
  v161 = v99;
  v162 = v16;
  v163 = v97;
  v164 = v68;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v125;
  MEMORY[0x26D64EFA0](v98, &type metadata for SleepScoreAnimationState, v125, v100);
  v123 = *(v123 + 8);
  (v123)(v98, v101);
  (*(v134 + 8))(v95, v99);
  (*(v131 + 8))(v92, v96);
  (*(v129 + 8))(v148, v149);
  (*(v128 + 8))(v146, v147);
  (*(v127 + 8))(v144, v145);
  (*(v126 + 8))(v142, v143);
  v102 = v137;
  v103 = v117;
  v117(v151, v137);
  v104 = v113;
  v113(v158, v16);
  v104(v157, v16);
  v104(v156, v16);
  v104(v155, v16);
  v104(v154, v16);
  v104(v153, v16);
  v103(v140, v102);
  v103(v152, v102);
  v105 = *(v122 + 8);
  v106 = v124;
  v105(v138, v124);
  v105(v139, v106);
  v107 = v120;
  v108 = v141;
  MEMORY[0x26D64EF90](v141, &type metadata for SleepScoreAnimationState, v101, v100);
  v109 = v108;
  v110 = v123;
  (v123)(v109, v101);
  MEMORY[0x26D64EFC0](v107, &type metadata for SleepScoreAnimationState, v101, v100);
  MEMORY[0x26D64EFA0](v98, &type metadata for SleepScoreAnimationState, v101, v100);
  v110(v98, v101);
  v110(v107, v101);
}

uint64_t sub_269CB17EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_269D9A200();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 80) == 1.0)
  {
    sub_269D9A1E0();
    sub_269D9A190();
    (*(v4 + 8))(v7, v3);
    return sub_269D98A30();
  }

  return result;
}

void sub_269CB197C()
{
  if (!qword_28034F460)
  {
    sub_269CB19F8();
    v0 = sub_269D989D0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F460);
    }
  }
}

unint64_t sub_269CB19F8()
{
  result = qword_28034F468;
  if (!qword_28034F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F468);
  }

  return result;
}

void sub_269CB1A4C()
{
  if (!qword_28034F470)
  {
    sub_269CB1AB4();
    sub_269CB1B0C();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F470);
    }
  }
}

void sub_269CB1AB4()
{
  if (!qword_28034F478)
  {
    sub_269CB197C();
    v0 = sub_269D99380();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F478);
    }
  }
}

void sub_269CB1B0C()
{
  if (!qword_28034F480)
  {
    sub_269CB1B70();
    sub_269CB1C80();
    v0 = sub_269D98E00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F480);
    }
  }
}

void sub_269CB1B70()
{
  if (!qword_28034F488)
  {
    sub_269CB1BD0();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F488);
    }
  }
}

void sub_269CB1BD0()
{
  if (!qword_28034F490)
  {
    sub_269CB1C30();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F490);
    }
  }
}

void sub_269CB1C30()
{
  if (!qword_28034F498)
  {
    v0 = sub_269D99530();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F498);
    }
  }
}

unint64_t sub_269CB1C80()
{
  result = qword_28034F4A0;
  if (!qword_28034F4A0)
  {
    sub_269CB1B70();
    sub_269CB1D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F4A0);
  }

  return result;
}

unint64_t sub_269CB1D00()
{
  result = qword_28034F4A8;
  if (!qword_28034F4A8)
  {
    sub_269CB1BD0();
    sub_269CB1DB0();
    sub_269CB2C7C(&qword_28034F4B8, sub_269CB1C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F4A8);
  }

  return result;
}

unint64_t sub_269CB1DB0()
{
  result = qword_28034F4B0;
  if (!qword_28034F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F4B0);
  }

  return result;
}

void sub_269CB1E04()
{
  if (!qword_28034F4C0)
  {
    sub_269CB2020();
    sub_269CB29E8();
    sub_269CB2210();
    sub_269CB23D4();
    sub_269CB2570();
    sub_269CB26DC();
    sub_269CB281C();
    sub_269CB28E0();
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4C0);
    }
  }
}

void sub_269CB2020()
{
  if (!qword_28034F4C8)
  {
    sub_269CB2210();
    sub_269CB29E8();
    sub_269CB23D4();
    sub_269CB2570();
    sub_269CB26DC();
    sub_269CB281C();
    sub_269CB28E0();
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4C8);
    }
  }
}

void sub_269CB2210()
{
  if (!qword_28034F4D0)
  {
    sub_269CB23D4();
    sub_269CB29E8();
    sub_269CB2570();
    sub_269CB26DC();
    sub_269CB281C();
    sub_269CB28E0();
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4D0);
    }
  }
}

void sub_269CB23D4()
{
  if (!qword_28034F4D8)
  {
    sub_269CB2570();
    sub_269CB29E8();
    sub_269CB26DC();
    sub_269CB281C();
    sub_269CB28E0();
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4D8);
    }
  }
}

void sub_269CB2570()
{
  if (!qword_28034F4E0)
  {
    sub_269CB26DC();
    sub_269CB29E8();
    sub_269CB281C();
    sub_269CB28E0();
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4E0);
    }
  }
}

void sub_269CB26DC()
{
  if (!qword_28034F4E8)
  {
    sub_269CB281C();
    sub_269CB29E8();
    sub_269CB28E0();
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4E8);
    }
  }
}

void sub_269CB281C()
{
  if (!qword_28034F4F0)
  {
    sub_269CB28E0();
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4F0);
    }
  }
}

void sub_269CB28E0()
{
  if (!qword_28034F4F8)
  {
    sub_269CB2990();
    sub_269CB2C7C(&qword_28034F508, sub_269CB2990);
    v0 = sub_269D98AF0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F4F8);
    }
  }
}

void sub_269CB2990()
{
  if (!qword_28034F500)
  {
    v0 = sub_269D98C30();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F500);
    }
  }
}

void sub_269CB29E8()
{
  if (!qword_28034F518)
  {
    sub_269CB2AD8();
    sub_269CB2990();
    sub_269CB2C7C(&qword_28034F508, sub_269CB2990);
    swift_getOpaqueTypeConformance2();
    v0 = sub_269D98AF0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F518);
    }
  }
}

void sub_269CB2AD8()
{
  if (!qword_28034F520)
  {
    sub_269CB2990();
    sub_269CB2C7C(&qword_28034F508, sub_269CB2990);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F520);
    }
  }
}

unint64_t sub_269CB2B9C()
{
  result = qword_28034F538;
  if (!qword_28034F538)
  {
    sub_269CB1A4C();
    sub_269CB2C7C(&qword_28034F540, sub_269CB1AB4);
    sub_269CB2C7C(&qword_28034F548, sub_269CB1B0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F538);
  }

  return result;
}

uint64_t sub_269CB2C7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CB2D10(uint64_t a1, uint64_t a2)
{
  sub_269CB1B0C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CB2D74(uint64_t a1)
{
  sub_269CB1B0C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SleepSettingsModel.__allocating_init(sleepSettingsProvider:sleepHealthSettingsProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_269CB5948(v7, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

id SleepSettingsModel.__allocating_init(sleepStore:)(void *a1)
{
  v1 = a1;
  v2 = HKSPSleepStore.settings.getter();
  v3 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  v4 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v1, v2);
  sub_269D97D80();
  v5 = sub_269D97D70();
  v6 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
  v7 = sub_269CB5A60(v4, v5, v6);

  return v7;
}

id SleepSettingsModel.init(sleepSettingsProvider:sleepHealthSettingsProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_269CB57AC(v9, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

id SleepSettingsModel.__deallocating_deinit()
{
  v1 = sub_269D97D30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277D62620], v1);

  v5 = v0;
  sub_269D97D50();

  (*(v2 + 8))(v4, v1);

  v6 = type metadata accessor for SleepSettingsModel();
  v8.receiver = v5;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void (*sub_269CB32FC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) scheduledSleepMode];
  return sub_269CB3358;
}

void sub_269CB3394(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings);
  v4 = [v3 sleepModeOptions];
  v5 = 0x4000;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  [v3 setSleepModeOptions_];

  sub_269CB4B04();
}

void (*sub_269CB3414(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ([*(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions] & 0x4000) != 0;
  return sub_269CB3474;
}

void (*sub_269CB34D4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) sleepTracking];
  return sub_269CB3530;
}

void (*sub_269CB3574(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) timeInBedTracking];
  return sub_269CB35D0;
}

void (*sub_269CB3614(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) bedtimeReminders];
  return sub_269CB3670;
}

void (*sub_269CB36B4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) wakeUpResults];
  return sub_269CB3710;
}

uint64_t sub_269CB371C()
{
  v1 = sub_269D97A80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;

  sub_269D97D10();

  v5 = sub_269D97A50();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_269CB3834()
{
  v1 = sub_269D97A80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;

  sub_269D97D10();

  v5 = sub_269D97A70();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t sub_269CB3954()
{

  sub_269D97D60();
}

uint64_t sub_269CB39A4()
{
  v15 = MEMORY[0x277D62578];
  sub_269CB6768(0, &unk_28034F420, MEMORY[0x277D62578]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_269D97A80();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v16 = v0;

  sub_269D97D10();

  sub_269D97A60();
  v11 = *(v5 + 16);
  v11(v8, v10, v4);
  v11(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);

  sub_269D97D00();

  sub_269CB69DC(v3, &unk_28034F420, v15);
  v12 = *(v5 + 8);
  v12(v8, v4);
  return (v12)(v10, v4);
}

void sub_269CB3C1C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings);
  v4 = [v3 sleepModeOptions];
  v5 = 8;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  [v3 setSleepModeOptions_];

  sub_269CB4B04();
}

void (*sub_269CB3C9C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ([*(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions] & 8) != 0;
  return sub_269CB3CFC;
}

void (*sub_269CB3D5C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) chargingReminders];
  return sub_269CB3DB8;
}

void (*sub_269CB3DFC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) shareAcrossDevices];
  return sub_269CB3E58;
}

void sub_269CB3E9C(char a1, SEL *a2)
{
  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) *a2];

  sub_269CB4B04();
}

void (*sub_269CB3EDC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) watchSleepFeaturesEnabled];
  return sub_269CB3F38;
}

uint64_t sub_269CB3FAC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = (v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider);
  v4 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  return a1(v4, v5) & 1;
}

uint64_t sub_269CB4008()
{
  v1 = sub_269D97D30();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  v38 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB65D4();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D85248];
  sub_269CB6768(0, &qword_280C0AED0, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  sub_269CB67BC();
  v30 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider);
  v13 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 24);
  v14 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider), v13);
  v42 = (*(v14 + 16))(v13, v14);
  sub_269CB6874(0, &qword_28034DFE0, MEMORY[0x277CBCE30]);
  sub_269CB6968();
  v15 = sub_269D988B0();

  v42 = v15;
  sub_269C1B0B8(0, &qword_280C0AEB0);
  v16 = sub_269D9AC40();
  v43 = v16;
  v32 = sub_269D9AC30();
  v17 = *(v32 - 8);
  v31 = *(v17 + 56);
  v33 = v17 + 56;
  v31(v8, 1, 1, v32);
  sub_269CB6874(0, &qword_28034F598, MEMORY[0x277CBCD88]);
  sub_269CB68F4();
  v29[1] = sub_269C2FC08();
  sub_269D988E0();
  sub_269CB69DC(v8, &qword_280C0AED0, v41);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269CB5CB8(&qword_28034F5A8, 255, sub_269CB67BC);
  v18 = v30;
  sub_269D98900();

  (*(v34 + 8))(v11, v18);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v19 = v12[3];
  v20 = v12[4];
  __swift_project_boxed_opaque_existential_1Tm(v12, v19);
  v42 = (*(v20 + 24))(v19, v20);
  sub_269CB6A40(0, &qword_28034E8C8, MEMORY[0x277CBCE30]);
  sub_269CB6AB0();
  v21 = sub_269D988B0();

  v42 = v21;
  v22 = sub_269D9AC40();
  v43 = v22;
  v31(v8, 1, 1, v32);
  sub_269CB6A40(0, &qword_28034F580, MEMORY[0x277CBCD88]);
  sub_269CB66F4();
  v23 = v35;
  sub_269D988E0();
  sub_269CB69DC(v8, &qword_280C0AED0, v41);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269CB5CB8(&qword_28034F5B8, 255, sub_269CB65D4);
  v24 = v36;
  sub_269D98900();

  (*(v37 + 8))(v23, v24);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x277D62620], v40);

  sub_269D97D40();

  return (*(v25 + 8))(v26, v27);
}

void sub_269CB46EC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269CB47F4(v1);
  }
}

uint64_t sub_269CB4748()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for SleepSettingsModel();
    sub_269CB5CB8(&qword_28034F568, v2, type metadata accessor for SleepSettingsModel);
    sub_269D98770();

    sub_269D98810();
  }

  return result;
}

void sub_269CB47F4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  [a1 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0);
  if (swift_dynamicCast())
  {
    v4 = v27;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D62498]) init];
  }

  v5 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  v6 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings);
  v7 = sub_269D9ADD0();

  if ((v7 & 1) == 0)
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B220);
    v9 = v4;
    v10 = sub_269D98230();
    v11 = sub_269D9AB40();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28[0] = v26;
      *v12 = 136446466;
      v13 = sub_269D9B4D0();
      v15 = sub_269C2EACC(v13, v14, v28);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      v16 = v9;
      v17 = [v16 description];
      v18 = sub_269D9A630();
      v25 = v11;
      v20 = v19;

      v21 = sub_269C2EACC(v18, v20, v28);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_269C18000, v10, v25, "[%{public}s] Updating sleep settings: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v26, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);
    }

    v22 = *(v2 + v5);
    *(v2 + v5) = v9;
    v23 = v9;

    type metadata accessor for SleepSettingsModel();
    sub_269CB5CB8(&qword_28034F568, v24, type metadata accessor for SleepSettingsModel);
    sub_269D98770();
    sub_269D98810();
  }
}

void sub_269CB4B04()
{
  ObjectType = swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = v0;
  v4 = sub_269D98230();
  v5 = sub_269D9AB40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings];
    v12 = [v11 description];
    v13 = sub_269D9A630();
    v15 = v14;

    v16 = sub_269C2EACC(v13, v15, v24);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Saving sleep settings: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  v17 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 24];
  v18 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider], v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings];
  v21 = swift_allocObject();
  *(v21 + 16) = ObjectType;
  v24[4] = sub_269CB6B88;
  v24[5] = v21;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_269C7A600;
  v24[3] = &block_descriptor_15;
  v22 = _Block_copy(v24);
  v23 = v20;

  [v19 saveCurrentSleepSettings:v23 completion:v22];
  _Block_release(v22);
}

void sub_269CB4DEC(char a1, id a2)
{
  if (a1)
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v2 = sub_269D98250();
    __swift_project_value_buffer(v2, qword_280C0B220);
    v27 = sub_269D98230();
    v3 = sub_269D9AB40();
    if (os_log_type_enabled(v27, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v29 = v5;
      *v4 = 136446210;
      v6 = sub_269D9B4D0();
      v8 = sub_269C2EACC(v6, v7, &v29);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_269C18000, v27, v3, "[%{public}s] Successfully saved sleep settings.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D652460](v5, -1, -1);
      MEMORY[0x26D652460](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      type metadata accessor for HKError(0);
      v28 = 0;
      sub_269C581B0(MEMORY[0x277D84F90]);
      sub_269CB5CB8(&qword_28034DB88, 255, type metadata accessor for HKError);
      sub_269D97340();
      a2 = 0;
      v9 = v29;
    }

    v10 = a2;
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v11 = sub_269D98250();
    __swift_project_value_buffer(v11, qword_280C0B220);
    v12 = v9;
    v13 = sub_269D98230();
    v14 = sub_269D9AB60();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136446466;
      v17 = sub_269D9B4D0();
      v19 = sub_269C2EACC(v17, v18, &v29);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v22 + 16))(&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = sub_269D9A660();
      v25 = sub_269C2EACC(v23, v24, &v29);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] Error saving sleep settings: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v16, -1, -1);
      MEMORY[0x26D652460](v15, -1, -1);
    }

    else
    {
    }
  }
}

void sub_269CB5220(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v30 = a5;
  v11 = sub_269D97D30();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277D62620], v11);
  v15 = sub_269D97D20();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  if (!a2)
  {

    v20 = 0;
LABEL_9:
    sub_269CB5C00(a3, v32);
    v21 = v33;
    if (v33)
    {
      v22 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
      v23 = *(v21 - 8);
      MEMORY[0x28223BE20](v22);
      v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v25);
      v26 = sub_269D9B260();
      (*(v23 + 8))(v25, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      if (!a4)
      {
LABEL_12:
        v27 = type metadata accessor for SleepSettingsModel();
        v31.receiver = v6;
        v31.super_class = v27;
        objc_msgSendSuper2(&v31, sel_observeValueForKeyPath_ofObject_change_context_, v20, v26, a4, v30);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v26 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_269CB5CB8(&qword_28034DBB0, 255, type metadata accessor for NSKeyValueChangeKey);
    a4 = sub_269D9A480();
    goto LABEL_12;
  }

  if (v15 == a1 && v17 == a2)
  {
  }

  else
  {
    v19 = sub_269D9B280();

    if ((v19 & 1) == 0)
    {
      v20 = sub_269D9A5F0();
      goto LABEL_9;
    }
  }

  type metadata accessor for SleepSettingsModel();
  sub_269CB5CB8(&qword_28034F568, v28, type metadata accessor for SleepSettingsModel);
  sub_269D98770();
  sub_269D98810();
}

id SleepSettingsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269CB5770@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SleepSettingsModel();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

id sub_269CB57AC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v17, &a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider]);
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepHealthSettingsProvider] = a2;

  v11 = SleepSettingsProviding.sleepSettings.getter(a4, a5);
  [v11 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0);
  if (swift_dynamicCast())
  {
    v12 = v16;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D62498]) init];
  }

  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings] = v12;
  v15.receiver = a3;
  v15.super_class = type metadata accessor for SleepSettingsModel();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_269CB4008();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v13;
}

id sub_269CB5948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
  (*(v9 + 16))(v11, a1, a4);
  return sub_269CB57AC(v11, a2, v12, a4, a5);
}

id sub_269CB5A60(uint64_t a1, uint64_t a2, char *a3)
{
  v12[3] = type metadata accessor for SleepSettingsProvider();
  v12[4] = &protocol witness table for SleepSettingsProvider;
  v12[0] = a1;
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v12, &a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider]);
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepHealthSettingsProvider] = a2;

  sub_269D987C0();
  [v11 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0);
  if (swift_dynamicCast())
  {
    v6 = v10;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D62498]) init];
  }

  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings] = v6;
  v9.receiver = a3;
  v9.super_class = type metadata accessor for SleepSettingsModel();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_269CB4008();

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v7;
}

uint64_t sub_269CB5C00(uint64_t a1, uint64_t a2)
{
  sub_269CB5C64();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CB5C64()
{
  if (!qword_28034DC08)
  {
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DC08);
    }
  }
}

uint64_t sub_269CB5CB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id keypath_getTm_0@<X0>(void *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) *a2];
  *a3 = result;
  return result;
}

void sub_269CB65D4()
{
  if (!qword_28034F578)
  {
    sub_269CB6A40(255, &qword_28034F580, MEMORY[0x277CBCD88]);
    sub_269C1B0B8(255, &qword_280C0AEB0);
    sub_269CB66F4();
    sub_269C2FC08();
    v0 = sub_269D98710();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F578);
    }
  }
}

void sub_269CB668C()
{
  if (!qword_28034E8D0)
  {
    sub_269C1B0B8(255, &qword_28034E8D8);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E8D0);
    }
  }
}

unint64_t sub_269CB66F4()
{
  result = qword_28034F588;
  if (!qword_28034F588)
  {
    sub_269CB6A40(255, &qword_28034F580, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F588);
  }

  return result;
}

void sub_269CB6768(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CB67BC()
{
  if (!qword_28034F590)
  {
    sub_269CB6874(255, &qword_28034F598, MEMORY[0x277CBCD88]);
    sub_269C1B0B8(255, &qword_280C0AEB0);
    sub_269CB68F4();
    sub_269C2FC08();
    v0 = sub_269D98710();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F590);
    }
  }
}

void sub_269CB6874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_269C1B0B8(255, &qword_28034E8C0);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269CB68F4()
{
  result = qword_28034F5A0;
  if (!qword_28034F5A0)
  {
    sub_269CB6874(255, &qword_28034F598, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F5A0);
  }

  return result;
}

unint64_t sub_269CB6968()
{
  result = qword_28034DFE8;
  if (!qword_28034DFE8)
  {
    sub_269CB6874(255, &qword_28034DFE0, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DFE8);
  }

  return result;
}

uint64_t sub_269CB69DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269CB6768(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_269CB6A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_269CB668C();
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269CB6AB0()
{
  result = qword_28034F5B0;
  if (!qword_28034F5B0)
  {
    sub_269CB6A40(255, &qword_28034E8C8, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F5B0);
  }

  return result;
}

uint64_t sub_269CB6B2C(uint64_t a1)
{
  sub_269CB5C64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *WeatherPrefetcher.__allocating_init(model:scheduler:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_269CB9254(a1, a2);

  return v4;
}

uint64_t sub_269CB6C10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269CB6C8C(uint64_t a1)
{
  sub_269C6C9C4(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_269CBA090(a1, &v9 - v6, sub_269C6C9C4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269CBA090(v7, v5, sub_269C6C9C4);

  sub_269D98890();
  return sub_269CB9B0C(v7, sub_269C6C9C4);
}

uint64_t sub_269CB6DB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269CB6E30(uint64_t a1)
{
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269CBA090(a1, v4, sub_269C6C9C4);

  sub_269D98890();
  return sub_269CB9B0C(a1, sub_269C6C9C4);
}

void (*sub_269CB6F20(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269CB6FC4()
{
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CB7060(uint64_t a1)
{
  sub_269C7C508(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_269CB71FC()
{
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CB7294(uint64_t a1)
{
  sub_269C7C508(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_269CB73E8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269C7C508(0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

void *WeatherPrefetcher.init(model:scheduler:)(void *a1, void *a2)
{
  v4 = sub_269CB9254(a1, a2);

  return v4;
}

uint64_t sub_269CB75B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  sub_269CB9A74(0);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = type metadata accessor for CurrentWeatherModel(0);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CBA090(a1, v15, sub_269C6C9C4);
  if ((*(v51 + 48))(v15, 1, v52) == 1)
  {
    v22 = sub_269C6C9C4;
    v23 = v15;
  }

  else
  {
    sub_269CB9AA8(v15, v21);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v24 = sub_269D98250();
    __swift_project_value_buffer(v24, qword_280351208);
    v48 = v21;
    sub_269CBA090(v21, v19, type metadata accessor for CurrentWeatherModel);
    v25 = sub_269D98230();
    v26 = sub_269D9AB80();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53[0] = v28;
      *v27 = 136446466;
      v29 = sub_269D9B4D0();
      v31 = sub_269C2EACC(v29, v30, v53);
      v49 = a2;
      v32 = v10;
      v33 = v13;
      v34 = v31;

      *(v27 + 4) = v34;
      *(v27 + 12) = 2082;
      v35 = sub_269CB7BE8();
      v37 = v36;
      sub_269CB9B0C(v19, type metadata accessor for CurrentWeatherModel);
      v38 = sub_269C2EACC(v35, v37, v53);
      v13 = v33;
      v10 = v32;

      *(v27 + 14) = v38;
      _os_log_impl(&dword_269C18000, v25, v26, "[%{public}s] weather model updated: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v28, -1, -1);
      MEMORY[0x26D652460](v27, -1, -1);
    }

    else
    {

      sub_269CB9B0C(v19, type metadata accessor for CurrentWeatherModel);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v40 = v48;
    if (Strong)
    {
      v41 = Strong;
      v42 = v50;
      sub_269D97550();
      v43 = sub_269D97580();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      v44 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate;
      swift_beginAccess();
      sub_269CB9F30(v42, v41 + v44);
      swift_endAccess();
    }

    swift_beginAccess();
    v45 = swift_weakLoadStrong();
    if (v45)
    {
      v46 = *(v45 + 16);

      sub_269C6DA78();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_269CBA090(v40, v13, type metadata accessor for CurrentWeatherModel);
      (*(v51 + 56))(v13, 0, 1, v52);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_269CBA090(v13, v10, sub_269C6C9C4);
      sub_269D98890();
      sub_269CB9B0C(v13, sub_269C6C9C4);
    }

    v22 = type metadata accessor for CurrentWeatherModel;
    v23 = v40;
  }

  sub_269CB9B0C(v23, v22);
}

uint64_t sub_269CB7BE8()
{
  sub_269CB9F94(0);
  v1 = *(v0 - 8);
  v64 = v0;
  v65 = v1;
  v2 = MEMORY[0x28223BE20](v0);
  v62 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v63 = &v55 - v4;
  v5 = sub_269D979B0();
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  MEMORY[0x28223BE20](v5);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_269D97810();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D97580();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CBA014(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v61 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v55 - v19;
  MEMORY[0x28223BE20](v18);
  v66 = &v55 - v20;
  v21 = type metadata accessor for CurrentWeatherModel(0);
  sub_269D97900();
  sub_269D97800();
  v22 = v63;
  sub_269D97A00();
  (*(v8 + 8))(v10, v56);
  (*(v12 + 8))(v14, v11);
  v23 = v64;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_269D9B000();

  v69 = 60;
  v70 = 0xE100000000000000;
  v67 = v21;
  sub_269CBA048();
  v24 = sub_269D9A660();
  MEMORY[0x26D650930](v24);

  MEMORY[0x26D650930](0x7469646E6F63203ALL, 0xED0000203A6E6F69);
  v25 = v57;
  sub_269D97910();
  sub_269CB9E04(&qword_28034F600, MEMORY[0x277CE3328]);
  v26 = v59;
  v27 = sub_269D9B230();
  MEMORY[0x26D650930](v27);

  v28 = v25;
  v29 = v65;
  (*(v60 + 8))(v28, v26);
  MEMORY[0x26D650930](0x203A706D6574202CLL, 0xE800000000000000);
  sub_269D978E0();
  sub_269CB9E04(&qword_28034F608, sub_269CB9F94);
  v30 = sub_269D9B230();
  MEMORY[0x26D650930](v30);

  v31 = *(v29 + 8);
  v65 = v29 + 8;
  v31(v22, v23);
  MEMORY[0x26D650930](0x203A776F6C20, 0xE600000000000000);
  v32 = v58;
  sub_269CBA090(v66, v58, sub_269CBA014);
  v33 = sub_269D978A0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v35(v32, 1, v33);
  if (v36 == 1)
  {
    sub_269CB9B0C(v32, sub_269CBA014);
    v37 = 0;
  }

  else
  {
    sub_269D97880();
    v60 = v34;
    v38 = v31;
    v39 = v62;
    sub_269D96F20();
    v40 = v64;
    v38(v22, v64);
    sub_269D96F00();
    v37 = v41;
    v42 = v39;
    v31 = v38;
    v34 = v60;
    v31(v42, v40);
    (*(v34 + 8))(v32, v33);
  }

  v67 = v37;
  v68 = v36 == 1;
  sub_269CBA0F8();
  v43 = sub_269D9A660();
  MEMORY[0x26D650930](v43);

  MEMORY[0x26D650930](0x203A6867696820, 0xE700000000000000);
  v44 = v61;
  sub_269CBA090(v66, v61, sub_269CBA014);
  v45 = v35(v44, 1, v33);
  if (v45 == 1)
  {
    sub_269CB9B0C(v44, sub_269CBA014);
    v46 = 0;
  }

  else
  {
    v47 = v63;
    sub_269D97890();
    v48 = v62;
    sub_269D96F20();
    v49 = v47;
    v50 = v64;
    v31(v49, v64);
    sub_269D96F00();
    v46 = v51;
    v31(v48, v50);
    (*(v34 + 8))(v44, v33);
  }

  v67 = v46;
  v68 = v45 == 1;
  v52 = sub_269D9A660();
  MEMORY[0x26D650930](v52);

  MEMORY[0x26D650930](62, 0xE100000000000000);
  v53 = v69;
  sub_269CB9B0C(v66, sub_269CBA014);
  return v53;
}

void sub_269CB83A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280351208);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, a4, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 16);

    a5(v17);
  }

  else
  {
  }
}

void sub_269CB85C4()
{
  v1 = v0;
  v2 = *v0;
  sub_269CB9A74(0);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97580();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v80 - v9;
  sub_269C6C9C4(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v84 = &v80 - v15;
  MEMORY[0x28223BE20](v14);
  v88 = (&v80 - v16);
  v17 = type metadata accessor for CurrentWeatherModel(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v21 = sub_269D98250();
  v89 = __swift_project_value_buffer(v21, qword_280351208);
  v22 = sub_269D98230();
  v23 = sub_269D9AB80();
  v24 = os_log_type_enabled(v22, v23);
  v87 = v2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v81 = v6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v85 = v17;
    v28 = v27;
    v90[0] = v27;
    *v26 = 136446210;
    v29 = sub_269D9B4D0();
    v82 = v20;
    v31 = v18;
    v32 = v1;
    v33 = v5;
    v34 = sub_269C2EACC(v29, v30, v90);
    v20 = v82;

    *(v26 + 4) = v34;
    v5 = v33;
    v1 = v32;
    v18 = v31;
    _os_log_impl(&dword_269C18000, v22, v23, "[%{public}s] refreshing weather", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v35 = v28;
    v17 = v85;
    MEMORY[0x26D652460](v35, -1, -1);
    v36 = v26;
    v6 = v81;
    MEMORY[0x26D652460](v36, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v88;
  sub_269D98880();

  if (v18[6](v37, 1, v17) == 1)
  {
    v38 = sub_269C6C9C4;
    v39 = v37;
LABEL_9:
    sub_269CB9B0C(v39, v38);
    v43 = sub_269D98230();
    v44 = sub_269D9AB80();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v91 = v46;
      *v45 = 136446210;
      v47 = sub_269D9B4D0();
      v49 = sub_269C2EACC(v47, v48, &v91);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_269C18000, v43, v44, "[%{public}s] weather not prefetched, fetching now", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x26D652460](v46, -1, -1);
      MEMORY[0x26D652460](v45, -1, -1);
    }

    sub_269C6D47C();
    return;
  }

  sub_269CB9AA8(v37, v20);
  v40 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate;
  swift_beginAccess();
  v41 = v1 + v40;
  v42 = v86;
  sub_269CBA090(v41, v86, sub_269CB9A74);
  if ((*(v6 + 48))(v42, 1, v5) == 1)
  {
    sub_269CB9B0C(v20, type metadata accessor for CurrentWeatherModel);
    v38 = sub_269CB9A74;
    v39 = v42;
    goto LABEL_9;
  }

  (*(v6 + 32))(v10, v42, v5);
  sub_269D974F0();
  if (v50 <= -300.0)
  {
    v88 = v18;
    v85 = v17;
    v62 = v80;
    (*(v6 + 16))(v80, v10, v5);
    v63 = sub_269D98230();
    v64 = sub_269D9AB80();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v82 = v20;
      v66 = v65;
      v89 = swift_slowAlloc();
      v91 = v89;
      *v66 = 136446466;
      v67 = sub_269D9B4D0();
      v69 = v62;
      v70 = sub_269C2EACC(v67, v68, &v91);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      sub_269CB9E04(&qword_280C0B3E8, MEMORY[0x277CC9578]);
      v71 = sub_269D9B230();
      v73 = v72;
      v74 = v69;
      v75 = *(v6 + 8);
      v75(v74, v5);
      v76 = sub_269C2EACC(v71, v73, &v91);

      *(v66 + 14) = v76;
      _os_log_impl(&dword_269C18000, v63, v64, "[%{public}s] weather was prefetched at %s and is stale, fetching now", v66, 0x16u);
      v77 = v89;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v77, -1, -1);
      v78 = v66;
      v20 = v82;
      MEMORY[0x26D652460](v78, -1, -1);
    }

    else
    {

      v75 = *(v6 + 8);
      v75(v62, v5);
    }

    v79 = v84;
    v88[7](v84, 1, 1, v85);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269CBA090(v79, v83, sub_269C6C9C4);

    sub_269D98890();
    sub_269CB9B0C(v79, sub_269C6C9C4);
    sub_269C6D47C();
    v75(v10, v5);
  }

  else
  {
    v51 = sub_269D98230();
    v52 = sub_269D9AB80();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v85 = v17;
      v89 = v54;
      v91 = v54;
      *v53 = 136446210;
      v55 = sub_269D9B4D0();
      v81 = v6;
      v57 = v18;
      v58 = v20;
      v59 = sub_269C2EACC(v55, v56, &v91);
      v6 = v81;

      *(v53 + 4) = v59;
      v20 = v58;
      v18 = v57;
      _os_log_impl(&dword_269C18000, v51, v52, "[%{public}s] weather was prefetched, updating", v53, 0xCu);
      v60 = v89;
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      v17 = v85;
      MEMORY[0x26D652460](v60, -1, -1);
      MEMORY[0x26D652460](v53, -1, -1);
    }

    v61 = v84;
    sub_269CBA090(v20, v84, type metadata accessor for CurrentWeatherModel);
    (v18[7])(v61, 0, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269CBA090(v61, v83, sub_269C6C9C4);

    sub_269D98890();
    sub_269CB9B0C(v61, sub_269C6C9C4);
    (*(v6 + 8))(v10, v5);
  }

  sub_269CB9B0C(v20, type metadata accessor for CurrentWeatherModel);
}

uint64_t WeatherPrefetcher.deinit()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_269CB9B0C(v0 + OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate, sub_269CB9A74);

  return v0;
}

uint64_t WeatherPrefetcher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_269CB9B0C(v0 + OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate, sub_269CB9A74);

  return swift_deallocClassInstance();
}

uint64_t sub_269CB9214@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherPrefetcher();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

void *sub_269CB9254(void *a1, void *a2)
{
  v3 = v2;
  v45 = a2;
  v49 = *v2;
  sub_269C7C508(0);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  sub_269C6C9C4(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  v19 = type metadata accessor for CurrentWeatherModel(0);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_269CBA090(v17, v15, sub_269C6C9C4);
  sub_269D98840();
  sub_269CB9B0C(v17, sub_269C6C9C4);
  (*(v9 + 32))(v3 + v18, v11, v8);
  v20 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate;
  v21 = sub_269D97580();
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  *(v3 + OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_cancellables) = MEMORY[0x277D84FA0];
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v22 = sub_269D98250();
  __swift_project_value_buffer(v22, qword_280351208);
  v23 = sub_269D98230();
  v24 = sub_269D9AB80();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50[0] = v26;
    *v25 = 136446210;
    v27 = v49;
    v28 = sub_269D9B4D0();
    v30 = sub_269C2EACC(v28, v29, v50);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_269C18000, v23, v24, "[%{public}s] initializing...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x26D652460](v26, -1, -1);
    MEMORY[0x26D652460](v25, -1, -1);
  }

  else
  {

    v27 = v49;
  }

  v31 = v45;
  v3[2] = a1;
  v3[3] = v31;
  swift_beginAccess();
  v32 = a1;
  v33 = v31;
  v34 = v46;
  sub_269D98850();
  swift_endAccess();
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v27;
  sub_269CB9E04(&qword_28034EA48, sub_269C7C508);

  v37 = v48;
  sub_269D98900();

  (*(v47 + 8))(v34, v37);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v50[0] = *&v33[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldPrefetch];
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v27;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_269CB9E4C;
  *(v40 + 24) = v39;
  sub_269CB9E90();
  sub_269CB9E04(&qword_28034F5E8, sub_269CB9E90);

  sub_269D98900();

  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v50[0] = *&v33[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldCancel];
  v41 = swift_allocObject();
  swift_weakInit();

  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v27;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_269CB9EF4;
  *(v43 + 24) = v42;
  sub_269D98900();

  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  sub_269D0D4C0();
  return v3;
}

void sub_269CB9A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269CB9AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CB9B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WeatherPrefetcher()
{
  result = qword_28034F5D8;
  if (!qword_28034F5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CB9BC0()
{
  sub_269CB9A10(319, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_269CB9A74(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_269CB9E04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269CB9E90()
{
  if (!qword_280350920)
  {
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350920);
    }
  }
}

uint64_t sub_269CB9F30(uint64_t a1, uint64_t a2)
{
  sub_269CB9A74(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_269CB9FC8()
{
  result = qword_28034E6A0;
  if (!qword_28034E6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E6A0);
  }

  return result;
}

unint64_t sub_269CBA048()
{
  result = qword_28034F5F8;
  if (!qword_28034F5F8)
  {
    type metadata accessor for CurrentWeatherModel(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F5F8);
  }

  return result;
}

uint64_t sub_269CBA090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269CBA0F8()
{
  if (!qword_280C0B4E0)
  {
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B4E0);
    }
  }
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

uint64_t sub_269CBA160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269CBA1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

CFTimeInterval sub_269CBA204(double a1, double a2)
{
  result = CACurrentMediaTime();
  v6 = *(v2 + 8);
  v7 = a1 - v6;
  if (a1 - v6 > 3.14159265)
  {
    v8 = a1 + -6.28318531;
    v6 = 0.0 - v6;
LABEL_5:
    v7 = v8 + v6;
    goto LABEL_6;
  }

  if (v7 < -3.14159265)
  {
    v8 = 6.28318531 - a1;
    goto LABEL_5;
  }

LABEL_6:
  if ((*(v2 + 1) & 1) == 0 && fabs(v7) > 2.22044605e-16)
  {
    *(v2 + 1) = 1;
    v7 = 0.0;
  }

  v9 = v7 / (result - *(v2 + 16));
  *(v2 + 32) = v9;
  v10 = a2;
  v11 = 1.0;
  if (v10 < 0.15)
  {
    v11 = 0.0;
    if (v10 > 0.0)
    {
      v12 = result;
      *&result = v10 / 0.15;
      [*(v2 + 40) _solveForInput_];
      v14 = v13;
      result = v12;
      v11 = v14;
    }
  }

  v15 = fabs(v9) / 0.975;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  v16 = *(v2 + 24) + v7 * (v15 * 0.75 + 0.25) * v11;
  *(v2 + 16) = result;
  *(v2 + 24) = v16;
  *(v2 + 8) = a1;
  return result;
}

unint64_t sub_269CBA384()
{
  result = qword_28034F610;
  if (!qword_28034F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F610);
  }

  return result;
}

unint64_t sub_269CBA3DC()
{
  result = qword_28034F618;
  if (!qword_28034F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F618);
  }

  return result;
}

uint64_t sub_269CBA4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_269C75338(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_269C2DB5C(v4, v8);
      sub_269C3232C(0, &qword_28034E550);
      sub_269C3232C(0, &qword_280350880);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_269C75338((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_269C25520(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_269CBA5F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_269C754C0(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        sub_269C754C0((v7 > 1), v6 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for ConfirmationScheduleItem;
      v12 = sub_269C5EA6C();
      *&v10 = v8;
      *(v2 + 16) = v6 + 1;
      sub_269C25520(&v10, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_269CBA6F4()
{
  sub_269CA6690();
  v2 = *(v1 - 8);
  v172 = v1;
  v173 = v2;
  MEMORY[0x28223BE20](v1);
  v170 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v171 = &v169 - v5;
  sub_269CBDF00(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v202 = (&v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v201 = (&v169 - v9);
  MEMORY[0x28223BE20](v10);
  v200 = (&v169 - v11);
  sub_269CBDF00(0, &qword_28034E048, MEMORY[0x277CC8990]);
  MEMORY[0x28223BE20](v12 - 8);
  v199 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v198 = &v169 - v15;
  v187 = type metadata accessor for ScheduleOccurrenceRow(0);
  MEMORY[0x28223BE20](v187);
  v186 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_269D98090();
  v176 = *(v205 - 8);
  v191 = v176;
  MEMORY[0x28223BE20](v205);
  v174 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v169 = &v169 - v19;
  MEMORY[0x28223BE20](v20);
  v192 = &v169 - v21;
  MEMORY[0x28223BE20](v22);
  v175 = &v169 - v23;
  MEMORY[0x28223BE20](v24);
  v177 = &v169 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v169 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v169 - v31;
  v178 = v0;
  v33 = sub_269CBBE00(v30);
  LOBYTE(v209[0]) = *(v33 + 96);
  v35 = *(v33 + 32);
  v34 = *(v33 + 40);
  v36 = *(v33 + 48);

  sub_269C539F4(v34, v35, v36, v32);

  v37 = MEMORY[0x277D84F90];
  v38 = sub_269D61F20(0, 1, 1, MEMORY[0x277D84F90]);
  v40 = *(v38 + 16);
  v39 = *(v38 + 24);
  v41 = v40 + 1;
  if (v40 >= v39 >> 1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    *(v38 + 16) = v41;
    v42 = *(v191 + 32);
    v193 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v203 = *(v191 + 72);
    v188 = v42;
    v189 = v191 + 32;
    v42(v38 + v193 + v203 * v40, v32, v205);
    v212 = v38;
    v190 = *(v178 + qword_28034F620);
    sub_269D987C0();
    v43 = *&v209[0];
    v44 = [*&v209[0] occurrences];

    sub_269C1B0B8(0, &qword_28034E050);
    v38 = sub_269D9A7E0();

    *&v209[0] = v37;
    v41 = v38 >> 62 ? sub_269D9AF50() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = MEMORY[0x277D84F90];
    v185 = v28;
    if (!v41)
    {
      break;
    }

    v46 = 0;
    v204 = v38 & 0xC000000000000001;
    v32 = (v38 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v204)
      {
        v47 = MEMORY[0x26D651260](v46, v38);
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46 >= v39)
        {
          goto LABEL_38;
        }

        v47 = *(v38 + 8 * v46 + 32);
      }

      v37 = v47;
      v40 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v28 = v41;
      sub_269D9A8E0();
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v48 = [v37 isSingleDayOverride];

      if (v48)
      {
      }

      else
      {
        sub_269D9B050();
        sub_269D9B090();
        sub_269D9B0A0();
        sub_269D9B060();
      }

      v41 = v28;
      ++v46;
      if (v40 == v28)
      {
        v49 = *&v209[0];
        v45 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v38 = sub_269D61F20(v39 > 1, v41, 1, v38);
  }

  v49 = MEMORY[0x277D84F90];
LABEL_19:

  if (v49 < 0 || (v49 & 0x4000000000000000) != 0)
  {
    v50 = sub_269D9AF50();
    if (!v50)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v50 = *(v49 + 16);
    if (!v50)
    {
      goto LABEL_42;
    }
  }

  v211 = v45;
  result = sub_269C75390(0, v50 & ~(v50 >> 63), 0);
  if (v50 < 0)
  {
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v45 = v211;
  v183 = sub_269D9A8E0();
  v52 = 0;
  v53 = *(v178 + qword_28034F630);
  v181 = v49 & 0xC000000000000001;
  v182 = v53;
  v180 = v50 - 1;
  v179 = xmmword_269D9EBF0;
  for (i = v49; ; v49 = i)
  {
    *&v197 = v52;
    if (v181)
    {
      v54 = MEMORY[0x26D651260]();
    }

    else
    {
      v54 = *(v49 + 8 * v52 + 32);
    }

    v55 = v54;
    v204 = v45;
    v196 = sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v56 = v55;
    static ScheduleOccurrenceViewModel.ViewStyle.sleepOnboardingStyle.getter(v209);
    v57 = [v56 bedtimeComponents];
    v58 = v198;
    sub_269D97120();

    v59 = sub_269D971F0();
    v60 = *(*(v59 - 8) + 56);
    v60(v58, 0, 1, v59);
    v61 = [v56 wakeUpComponents];
    v62 = v199;
    sub_269D97120();

    v60(v62, 0, 1, v59);
    v195 = [v56 weekdays];
    v63 = sub_269D97580();
    v64 = *(*(v63 - 8) + 56);
    v64(v200, 1, 1, v63);
    v64(v201, 1, 1, v63);
    v64(v202, 1, 1, v63);
    v65 = v56;
    v66 = [v65 alarmConfiguration];
    v67 = [v66 isEnabled];

    v194 = v65;
    if (v67)
    {
      v68 = 0;
    }

    else
    {
      v68 = 2;
    }

    v69 = type metadata accessor for ScheduleOccurrenceViewModel();
    v70 = v69[11];
    v71 = v186;
    v64(&v186[v70], 1, 1, v63);
    v72 = v69[12];
    v64((v71 + v72), 1, 1, v63);
    v73 = v69[13];
    v64((v71 + v73), 1, 1, v63);
    sub_269C4E3A0(v198, v71);
    sub_269C4E3A0(v199, v71 + v69[5]);
    v74 = v71 + v69[6];
    *v74 = 0;
    *(v74 + 8) = 1;
    *(v71 + v69[7]) = v195;
    sub_269CB9F30(v200, v71 + v73);
    sub_269CB9F30(v201, v71 + v72);
    sub_269CB9F30(v202, v71 + v70);
    *(v71 + v69[14]) = 0;
    *(v71 + v69[8]) = v68;
    *(v71 + v69[9]) = 0;
    v75 = v71 + v69[10];
    v76 = v209[11];
    *(v75 + 160) = v209[10];
    *(v75 + 176) = v76;
    *(v75 + 192) = v210;
    v77 = v209[7];
    *(v75 + 96) = v209[6];
    *(v75 + 112) = v77;
    v78 = v209[9];
    *(v75 + 128) = v209[8];
    *(v75 + 144) = v78;
    v79 = v209[3];
    *(v75 + 32) = v209[2];
    *(v75 + 48) = v79;
    v80 = v209[5];
    *(v75 + 64) = v209[4];
    *(v75 + 80) = v80;
    v81 = v209[1];
    *v75 = v209[0];
    *(v75 + 16) = v81;
    v82 = v190;

    v83 = v194;
    v84 = [v194 weekdays];
    sub_269CBD20C(v82, v84, v182, &v213);
    sub_269CBDA4C(0, &qword_28034E868, &qword_280350880, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v85 = swift_allocObject();
    *(v85 + 16) = v179;
    v86 = v187;
    *(v85 + 56) = v187;
    *(v85 + 64) = sub_269CBD0B0(&qword_28034F698, type metadata accessor for ScheduleOccurrenceRow);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v85 + 32));
    sub_269CBDF74(v71, boxed_opaque_existential_1, type metadata accessor for ScheduleOccurrenceRow);
    v215[0] = *&v214[8];
    *(v85 + 96) = &type metadata for EditScheduleOccurrenceRow;
    *(v85 + 104) = sub_269CBDFDC();
    v88 = swift_allocObject();
    *(v85 + 72) = v88;
    v89 = *v214;
    *(v88 + 16) = v213;
    *(v88 + 32) = v89;
    *(v88 + 48) = *&v214[16];
    v206 = v86;

    sub_269CBDAB4(v215, &v207);
    sub_269CBE030();
    v207 = sub_269D9A660();
    v208 = v90;
    MEMORY[0x26D650930](45, 0xE100000000000000);
    v91 = ScheduleOccurrenceViewModel.description.getter();
    MEMORY[0x26D650930](v91);

    v92 = v185;
    sub_269D98080();

    sub_269CBDB3C(v215);

    sub_269CBE078(v71);

    v45 = v204;
    v211 = v204;
    v94 = *(v204 + 16);
    v93 = *(v204 + 24);
    if (v94 >= v93 >> 1)
    {
      sub_269C75390(v93 > 1, v94 + 1, 1);
      v45 = v211;
    }

    *(v45 + 16) = v94 + 1;
    v188(v45 + v193 + v94 * v203, v92, v205);
    if (v180 == v197)
    {
      break;
    }

    v52 = v197 + 1;
  }

LABEL_42:

  v204 = v45;

  sub_269C49B10(v95);
  sub_269D987C0();
  v96 = *&v209[0];
  if ([*&v209[0] weekdaysWithOccurrences])
  {
    if ([v96 weekdaysWithoutOccurrences])
    {
      v97 = [v96 weekdaysWithOccurrences];
      v98 = 0;
      goto LABEL_48;
    }

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = 1;
LABEL_48:

  v99 = *(v178 + qword_28034F630);
  v100 = MEMORY[0x277D837D0];
  sub_269CBE1F8(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v198 = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_269DA0D60;
  *(v102 + 32) = sub_269D9A630();
  *(v102 + 40) = v103;
  *(v102 + 48) = 0x7065656C53;
  *(v102 + 56) = 0xE500000000000000;
  *(v102 + 64) = 0x696472616F626E4FLL;
  *(v102 + 72) = 0xEA0000000000676ELL;
  *&v209[0] = v102;
  sub_269C49A1C(&unk_287A9F380);
  sub_269CBE1F8(0, &qword_280C0B4F0, v100, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v104 = sub_269D9A520();
  v106 = v105;

  sub_269C4BEAC(&unk_287A9F3A0);
  sub_269CBDA4C(0, &qword_28034E100, &qword_28034E550, MEMORY[0x277D10D48], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v197 = xmmword_269D9EBE0;
  *(inited + 16) = xmmword_269D9EBE0;
  *(inited + 56) = &type metadata for AddSchedulePromptRow;
  *(inited + 64) = sub_269CBE0D4();
  v108 = swift_allocObject();
  *(inited + 32) = v108;
  *(v108 + 16) = v97;
  *(v108 + 24) = v98;
  *(v108 + 32) = v99;
  *(v108 + 40) = v104;
  *(v108 + 48) = v106;
  sub_269CBA4B8(inited);

  *&v209[0] = 0;
  *(&v209[0] + 1) = 0xE000000000000000;
  sub_269D9B000();

  *&v209[0] = 0xD000000000000013;
  *(&v209[0] + 1) = 0x8000000269DB04B0;
  sub_269D987C0();
  v109 = v207;
  if (![v207 weekdaysWithOccurrences])
  {
    v110 = 1;
LABEL_53:
    v111 = 1;
    goto LABEL_54;
  }

  if (![v109 weekdaysWithoutOccurrences])
  {
    v110 = 0;
    goto LABEL_53;
  }

  v110 = [v109 weekdaysWithOccurrences];
  v111 = 0;
LABEL_54:
  v113 = v175;
  v112 = v176;

  v207 = v110;
  LOBYTE(v208) = v111;
  v114 = sub_269D9A660();
  MEMORY[0x26D650930](v114);

  v115 = v177;
  sub_269D98080();
  v116 = *(v191 + 16);
  v191 += 16;
  v201 = v116;
  v116(v113, v115, v205);
  v117 = v212;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_55:
  v118 = v192;
  v120 = *(v117 + 2);
  v119 = *(v117 + 3);
  v121 = v120 + 1;
  if (v120 >= v119 >> 1)
  {
    v117 = sub_269D61F20(v119 > 1, v120 + 1, 1, v117);
  }

  *(v117 + 2) = v121;
  v122 = v117 + v193;
  v188(v117 + v193 + v120 * v203, v113, v205);
  v113 = 0;
  v123 = 0;
  v202 = (v112 + 8);
  v199 = v122;
  v200 = v117;
  while (1)
  {
    if (v123 >= *(v117 + 2))
    {
      __break(1u);
LABEL_96:
      v117 = sub_269D61F20(0, *(v117 + 2) + 1, 1, v117);
      goto LABEL_55;
    }

    v201(v118, v122, v205);
    v112 = sub_269D9A8E0();
    sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v125 = sub_269D98070();
    v127 = v126;
    if (*(v204 + 16))
    {
      break;
    }

    v124 = *v202;
    (*v202)(v118, v205);
LABEL_59:
    ++v123;
    v113 += 16;
    v122 += v203;
    v117 = v200;
    if (v121 == v123)
    {

LABEL_79:
      sub_269D980C0();
LABEL_80:
      v124(v177, v205);
    }
  }

  if (v125 == sub_269D98070() && v127 == v128)
  {
    v129 = 1;
  }

  else
  {
    v129 = sub_269D9B280();
  }

  v124 = *v202;
  (*v202)(v192, v205);
  if ((v129 & 1) == 0)
  {
    v118 = v192;
    goto LABEL_59;
  }

  v130 = v171;
  sub_269D980F0();
  v131 = v172;
  v132 = sub_269D98330();
  v133 = *(v173 + 8);
  v173 += 8;
  v133(v130, v131);
  v134 = *(v132 + 16);

  if (v123 >= v134 || v123 >= *(v200 + 2))
  {
    goto LABEL_79;
  }

  v135 = v170;
  sub_269D980F0();
  v136 = sub_269D98330();
  result = (v133)(v135, v131);
  if (v123 >= *(v136 + 16))
  {
    goto LABEL_98;
  }

  v195 = v133;
  v137 = *&v113[v136 + 40];
  v204 = *&v113[v136 + 32];

  if (v123 >= *(v200 + 2))
  {
    goto LABEL_99;
  }

  v138 = v169;
  v139 = v122;
  v140 = v205;
  v201(v169, v139, v205);
  v141 = sub_269D98070();
  v143 = v142;
  v124(v138, v140);
  if (v204 == v141 && v137 == v143)
  {

    goto LABEL_79;
  }

  v144 = sub_269D9B280();

  if (v144)
  {
    goto LABEL_79;
  }

  v145 = *(v200 + 2);
  v146 = MEMORY[0x277D84F90];
  if (v145)
  {
    *&v209[0] = MEMORY[0x277D84F90];
    sub_269C75370(0, v145, 0);
    v147 = *&v209[0];
    v148 = v199;
    do
    {
      v204 = v147;
      v199 = v148;
      (v201)(v174);
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v149 = v174;
      v196 = sub_269D98070();
      v151 = v150;
      v124(v149, v205);

      v147 = v204;
      *&v209[0] = v204;
      v153 = *(v204 + 16);
      v152 = *(v204 + 24);
      if (v153 >= v152 >> 1)
      {
        sub_269C75370((v152 > 1), v153 + 1, 1);
        v147 = *&v209[0];
      }

      *(v147 + 16) = v153 + 1;
      v154 = v147 + 16 * v153;
      *(v154 + 32) = v196;
      *(v154 + 40) = v151;
      v148 = v199 + v203;
      --v145;
    }

    while (v145);
    v146 = v147;
  }

  v155 = v171;
  sub_269D980F0();
  v156 = v172;
  v157 = sub_269D98330();
  result = v195(v155, v156);
  if (v123 >= *(v157 + 16))
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v158 = *&v113[v157 + 32];
  v159 = *&v113[v157 + 40];

  *&v209[0] = v158;
  *(&v209[0] + 1) = v159;
  MEMORY[0x28223BE20](v160);
  *(&v169 - 2) = v209;
  v161 = sub_269CBD160(sub_269CBE128, (&v169 - 4), v146);

  if ((v161 & 1) == 0)
  {
    goto LABEL_79;
  }

  v162 = swift_allocObject();
  *(v162 + 16) = v197;
  v163 = v171;
  sub_269D980F0();
  v164 = v172;
  v165 = sub_269D98330();
  result = v195(v163, v164);
  if (v123 < *(v165 + 16))
  {
    v167 = *&v113[v165 + 32];
    v166 = *&v113[v165 + 40];

    *(v162 + 32) = v167;
    *(v162 + 40) = v166;
    sub_269D980C0();
    v168 = sub_269D980E0();
    sub_269D98320();

    v168(v209, 0);
    sub_269D980D0();
    goto LABEL_80;
  }

LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_269CBBE00()
{
  v1 = qword_28034F638;
  if (*(v0 + qword_28034F638))
  {
    v2 = *(v0 + qword_28034F638);
  }

  else
  {
    v2 = sub_269CBBE68(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_269CBBE68(uint64_t a1)
{
  v1 = *(a1 + qword_28034F628);
  v2 = *(a1 + qword_28034F630);
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for GoalSectionProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  LOBYTE(v6) = 0;
  sub_269C5281C();
  swift_allocObject();
  *(v4 + 32) = sub_269D987F0();
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v4 + 112) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = v1;

  sub_269D987C0();
  sub_269C2FDFC();
  swift_allocObject();
  *(v4 + 40) = sub_269D987F0();
  *(v4 + 48) = v2;
  sub_269D987C0();
  *(v4 + 64) = v6;
  *(v4 + 72) = v7;
  *(v4 + 96) = 1;
  *(v4 + 80) = sub_269CBE248;
  *(v4 + 88) = v3;
  return v4;
}

uint64_t sub_269CBBFCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_269CBA6F4();
  }

  return result;
}

uint64_t sub_269CBC024(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_269D975C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_28034F638) = 0;
  v18[0] = a1;
  sub_269CBE180();
  swift_allocObject();
  v12 = a1;
  *(v4 + qword_28034F620) = sub_269D987F0();
  *v18 = a3;
  LOBYTE(v18[1]) = 0;
  sub_269C2FDFC();
  swift_allocObject();
  *(v4 + qword_28034F628) = sub_269D987F0();
  *(v4 + qword_28034F630) = a2;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_269D9B000();

  strcpy(v18, "MutableArray<");
  HIWORD(v18[1]) = -4864;
  sub_269D975B0();
  v13 = sub_269D97590();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x26D650930](v13, v15);

  MEMORY[0x26D650930](62, 0xE100000000000000);
  v16 = sub_269D980A0();

  sub_269CBA6F4();

  return v16;
}

uint64_t sub_269CBC26C()
{
}

uint64_t sub_269CBC2BC()
{
  sub_269D98100();

  return swift_deallocClassInstance();
}

uint64_t sub_269CBC348()
{
  type metadata accessor for ScheduleOccurrenceTableViewCell();
  sub_269CBD0B0(&qword_28034E3B0, type metadata accessor for ScheduleOccurrenceTableViewCell);
  sub_269D9AAE0();
  type metadata accessor for AddScheduleTableViewCell();
  sub_269CBD0B0(&qword_28034F658, type metadata accessor for AddScheduleTableViewCell);
  sub_269D9AAE0();
  sub_269D98060();
  sub_269D9AAE0();
  type metadata accessor for GoalTimePickerTableViewCell();
  sub_269CBD0B0(&qword_28034E160, type metadata accessor for GoalTimePickerTableViewCell);
  return sub_269D9AAE0();
}

uint64_t sub_269CBC470@<X0>(uint64_t *a1@<X8>)
{
  sub_269CBD0F8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CBDF00(0, &qword_28034F668, MEMORY[0x277D11208]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_269D9AAD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_269D9AAB0();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = sub_269D97860();
    (*(v9 + 16))(v4, v11, v8);
    v14 = (*(v9 + 88))(v4, v8);
    if (v14 == *MEMORY[0x277D111F0])
    {
      if (v13 == 1)
      {
        if (qword_280C0AE70 == -1)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }

      goto LABEL_19;
    }

    if (v14 == *MEMORY[0x277D11200])
    {
      if (v13 == 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v14 == *MEMORY[0x277D111E8])
      {
        v15 = *(sub_269D980B0() + 16);

        if (v15 - 1 == v13)
        {
          sub_269D987C0();
          v16 = v20;
          if ([v20 weekdaysWithOccurrences])
          {
            if (![v16 weekdaysWithoutOccurrences])
            {

              goto LABEL_6;
            }

            [v16 weekdaysWithOccurrences];
          }

          if (qword_280C0AE70 == -1)
          {
LABEL_5:
            sub_269D972C0();
LABEL_6:
            a1[3] = sub_269D9AB10();
            a1[4] = sub_269CBD0B0(&qword_28034F680, MEMORY[0x277D11218]);
            __swift_allocate_boxed_opaque_existential_1(a1);
            sub_269D9AAF0();
LABEL_21:
            v18 = *(v9 + 8);
            v18(v11, v8);
            return (v18)(v4, v8);
          }

LABEL_23:
          swift_once();
          goto LABEL_5;
        }

LABEL_19:
        a1[3] = sub_269D9AB30();
        a1[4] = sub_269CBD0B0(&qword_28034F670, MEMORY[0x277D11228]);
        __swift_allocate_boxed_opaque_existential_1(a1);
        sub_269D9AB20();
        goto LABEL_21;
      }

      if (v14 != *MEMORY[0x277D111F8])
      {
        goto LABEL_19;
      }

      v17 = *(sub_269D980B0() + 16);

      if (v17 - 1 == v13)
      {
        goto LABEL_19;
      }
    }

    a1[3] = sub_269D9AAA0();
    a1[4] = sub_269CBD0B0(&qword_28034F678, MEMORY[0x277D111E0]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_269D9AA90();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}