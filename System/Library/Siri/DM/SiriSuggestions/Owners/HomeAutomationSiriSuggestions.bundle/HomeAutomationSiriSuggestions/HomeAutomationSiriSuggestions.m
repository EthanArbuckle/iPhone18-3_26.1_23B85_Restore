uint64_t sub_1770(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1790, 0, 0);
}

uint64_t sub_1790()
{
  v1 = v0[2];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[4] = v3;
  v0[5] = v4;
  v0[6] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_1840, v8, v7);
}

uint64_t sub_1840()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v0 + 56) = sub_29008();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_18B8, 0, 0);
}

uint64_t sub_18B8()
{
  if (qword_54D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = sub_366C0();
  sub_1D8C(v3, static Log.suggestions);
  sub_36920(27);

  sub_36790(v2[1]);
  v13._countAndFlagsBits = 544175136;
  v13._object = 0xE400000000000000;
  sub_36790(v13);
  v4 = v1 & 1;
  if (v1)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_36790(v5);

  v7._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0xD00000000000008BLL;
  v8._object = 0x8000000000039E10;
  v7._object = 0x8000000000039DF0;
  Logger.debug(output:test:caller:)(v7, 0, v8);

  sub_1DC4(&qword_54E78, &unk_37010);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_36F10;
  *(v9 + 56) = &type metadata for Bool;
  *(v9 + 32) = v4;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A78()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1AD4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1B08(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_1770(v6, a2);
}

uint64_t sub_1BA0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HasTargetedMoreThanOneEntityResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D48(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DC4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1E0C()
{
  sub_36250();
  v0 = sub_35F30();
  v3[3] = v0;
  v3[4] = sub_3E14(&qword_54F60, 255, &type metadata accessor for CoreSignalTypes);
  v1 = sub_3C30(v3);
  (*(*(v0 - 8) + 104))(v1, enum case for CoreSignalTypes.app(_:), v0);
  result = sub_36200();
  qword_594C0 = result;
  return result;
}

uint64_t sub_1F00()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  sub_1DC4(&qword_54F90, &qword_37168);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_36F10;
  if (qword_54CA0 != -1)
  {
    swift_once();
  }

  sub_36210();
  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_1FAC(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_35F20();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_2070, v2, 0);
}

uint64_t sub_2070()
{
  v1 = v0;
  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v3 = *(v0 + 15);
  v2 = *(v0 + 16);
  v4 = *(v0 + 14);
  v5 = *(v1 + 11);
  v6 = sub_366C0();
  sub_1D8C(v6, static Log.suggestions);
  sub_36920(33);

  sub_3ED0();
  v53 = v7;
  v51 = v5[4];
  v43 = v5;
  sub_1D48(v5, v5[3]);
  sub_35E70();
  v8 = sub_35F10();
  v10 = v9;
  v52 = *(v3 + 8);
  v52(v2, v4);
  v55._countAndFlagsBits = v8;
  v55._object = v10;
  sub_36790(v55);

  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v12._countAndFlagsBits = 0xD00000000000007ALL;
  v12._object = 0x8000000000039F30;
  v11._object = v53;
  Logger.debug(output:test:caller:)(v11, 0, v12);

  sub_1DC4(&qword_54F40, &qword_37130);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = *(v3 + 72);
  v49 = v14;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_37020;
  v15 = v50 + v13;
  v48 = *(v3 + 104);
  v48(v15, enum case for InvocationType.siriHelp(_:), v4);
  v16 = v15 + v14;
  v47 = sub_1DC4(&qword_54F48, &qword_37138);
  v44 = *(v47 + 48);
  v17 = enum case for AssistantTurnState.zeroTurn(_:);
  v46 = enum case for AssistantTurnState.zeroTurn(_:);
  v18 = sub_35FA0();
  sub_3EC0(v18);
  v45 = *(v19 + 104);
  v45(v16, v17, v18);
  v20 = enum case for InvocationModality.typed(_:);
  v21 = sub_35FC0();
  sub_3EC0(v21);
  v23 = *(v22 + 104);
  v23(v16 + v44, v20, v21);
  v24 = enum case for InvocationType.assistantTurn(_:);
  v48(v16, enum case for InvocationType.assistantTurn(_:), v4);
  v25 = v15 + 2 * v49;
  v26 = *(v47 + 48);
  v45(v25, v46, v18);
  v23(v25 + v26, enum case for InvocationModality.voice(_:), v21);
  v48(v25, v24, v4);
  sub_35E70();
  v27 = swift_task_alloc();
  *(v27 + 16) = v2;
  LOBYTE(v21) = sub_3878(sub_3B38, v27, v50);
  swift_setDeallocating();
  sub_394C();

  v52(v2, v4);
  if (v21)
  {
    v28 = v1;
    v29 = v43[4];
    sub_1D48(*(v1 + 11), v43[3]);
    v30 = sub_35EA0();
    strcpy(v1 + 56, "com.apple.Home");
    v1[71] = -18;
    v31 = swift_task_alloc();
    *(v31 + 16) = v1 + 56;
    v32 = sub_37C8(sub_3BAC, v31, v30);

    if (v32)
    {
      goto LABEL_6;
    }

    v33 = *(v1 + 12);
    v34 = v33[4];
    sub_1D48(v33, v33[3]);
    v35 = sub_35FE0();
    strcpy(v1 + 72, "com.apple.Home");
    v1[87] = -18;
    v36 = swift_task_alloc();
    *(v36 + 16) = v1 + 72;
    v37 = sub_37C8(sub_3E60, v36, v35);

    if (v37)
    {
LABEL_6:
      v38 = *(v1 + 13);
      sub_3BCC(*(v1 + 12), (v1 + 16));
      sub_2634((v1 + 16));
      sub_3D9C((v1 + 16), &qword_54F50, &unk_37140);
      sub_1DC4(&qword_54F58, &qword_38060);
      v39 = swift_allocObject();
      v39[1] = xmmword_37030;
      if (qword_54CA0 != -1)
      {
        swift_once();
      }

      *(v39 + 4) = qword_594C0;
    }

    else
    {
      v39 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
    v28 = v1;
  }

  v40 = *(v28 + 16);

  v41 = *(v28 + 1);

  return v41(v39);
}

void sub_2634(uint64_t a1)
{
  v43[1] = *v1;
  v44 = v1;
  v3 = sub_366C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v8 = sub_1D8C(v3, static Log.suggestions);
  sub_3EA0();
  Logger.debug(output:test:caller:)(v9, v10, v11);
  sub_36400();
  v12 = sub_363F0();
  v13 = sub_363D0();

  if (v13 == 2)
  {
    sub_3EA0();
    Logger.warning(output:test:file:function:line:)(v14, v15, v16, v17, 42);
    return;
  }

  v18 = sub_363F0();
  v19 = sub_363E0();

  if (sub_2B8C(v19) != 1)
  {
    sub_3C90(a1, &v47);
    if (v49)
    {
      sub_1D48(&v47, v49);
      v26 = sub_35FF0();
      sub_3D00(&v47);
    }

    else
    {
      sub_3D9C(&v47, &qword_54F50, &unk_37140);
      v26 = 0;
    }

    v30 = sub_2BB0(v26);

    if (v30)
    {

      sub_3EB0();
      sub_36920(38);

      sub_3ED0();
      v47 = 0xD000000000000024;
      v48 = v32;
      v45 = sub_365F0();
      v46 = v33;
      sub_1DC4(&qword_54F68, &qword_37150);
      v51._countAndFlagsBits = sub_36720();
      sub_36790(v51);
    }

    else
    {
      v34 = sub_363F0();
      v30 = sub_363C0();

      if (!v30)
      {
        if (sub_2B8C(v19))
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            goto LABEL_32;
          }

          if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_17;
          }

          __break(1u);
        }

        goto LABEL_29;
      }

      sub_3EB0();
      sub_36920(21);

      sub_3ED0();
      v47 = 0xD000000000000013;
      v48 = v35;

      v36 = sub_365F0();
      v38 = v37;

      v52._countAndFlagsBits = v36;
      v52._object = v38;
      sub_36790(v52);
    }

    sub_3EA0();
    Logger.debug(output:test:caller:)(v39, v40, v41);

LABEL_30:
    v31 = v44;
    goto LABEL_31;
  }

  (*(v4 + 16))(v7, v8, v3);
  sub_3EB0();
  sub_36920(21);

  sub_3ED0();
  v47 = 0xD000000000000013;
  v48 = v20;
  v21 = sub_2B8C(v19);
  if (v21)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_36930();
    }

    else
    {
      if (!*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_35;
      }

      v22 = *(v19 + 32);
    }

    v23 = sub_365F0();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v45 = v23;
  v46 = v25;
  sub_1DC4(&qword_54F68, &qword_37150);
  v50._countAndFlagsBits = sub_36720();
  sub_36790(v50);

  sub_3EA0();
  Logger.debug(output:test:caller:)(v27, v28, v29);

  (*(v4 + 8))(v7, v3);
  if (!v21)
  {
LABEL_29:

    v30 = 0;
    goto LABEL_30;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v30 = sub_36930();
    goto LABEL_18;
  }

  if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_17:
    v30 = *(v19 + 32);

LABEL_18:
    v31 = v44;

LABEL_31:
    v42 = v31[14];
    v31[14] = v30;

    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_2B8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_369D0();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t sub_2BB0(uint64_t a1)
{
  v2 = sub_35F90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v75 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_35F00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = sub_1DC4(&qword_54F70, &qword_37158);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17 - 8);
  v20 = &v56 - v19;
  v21 = sub_35E40();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = *(a1 + 16);
    if (v27)
    {
      v74 = v3;
      v61 = v27;
      v59 = v16;
      v64 = v20;
      v57 = v26;
      v58 = v24;
      v65 = v23;
      if (qword_54D20 != -1)
      {
        swift_once();
      }

      v28 = sub_366C0();
      v29 = sub_1D8C(v28, static Log.suggestions);
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      sub_36920(42);

      v80._countAndFlagsBits = 0xD000000000000028;
      v80._object = 0x800000000003A0A0;
      v81._countAndFlagsBits = sub_36810();
      sub_36790(v81);

      v62 = "Extracting home signals... for ";
      v30._object = 0x8000000000039F30;
      v30._countAndFlagsBits = 0xD00000000000007ALL;
      v63 = v29;
      Logger.debug(output:test:caller:)(v80, 0, v30);

      v60 = v10;
      v72 = *(v10 + 16);
      v71 = enum case for SalientEntityType.activeHome(_:);
      v70 = (v74 + 13);
      v73 = v10 + 16;
      ++v74;
      v68 = (v10 + 8);
      v31 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v66 = *(v10 + 72);
      v32 = v61;
      v69 = v9;
      v67 = v14;
      if (v61)
      {
        while (1)
        {
          v72(v14, v31, v9);
          sub_35EE0();
          (*v70)(v75, v71, v2);
          sub_3E14(&qword_54F78, 255, &type metadata accessor for SalientEntityType);
          sub_367D0();
          sub_367D0();
          if (v78 == v76 && v79 == v77)
          {
            break;
          }

          v34 = v32;
          v35 = v8;
          v36 = sub_36A20();
          v37 = *v74;
          (*v74)(v75, v2);
          v38 = v35;
          v37(v35, v2);

          if (v36)
          {
            goto LABEL_14;
          }

          v14 = v67;
          v9 = v69;
          (*v68)(v67, v69);
          v31 += v66;
          v32 = v34 - 1;
          v8 = v38;
          if (v34 == 1)
          {
            goto LABEL_12;
          }
        }

        v40 = *v74;
        (*v74)(v75, v2);
        v40(v8, v2);

LABEL_14:
        v41 = v60 + 32;
        v42 = v59;
        v43 = v69;
        (*(v60 + 32))(v59, v67, v69);
        sub_35EF0();
        (*(v41 - 24))(v42, v43);
        sub_1DC4(&qword_54F80, &qword_37160);
        v39 = v64;
        v44 = v65;
        v45 = swift_dynamicCast();
        sub_3D4C(v39, v45 ^ 1u, 1, v44);
        if (sub_3D74(v39, 1, v44) != 1)
        {
          v50 = v58;
          v51 = v57;
          (*(v58 + 32))(v57, v39, v44);
          v80._countAndFlagsBits = 0;
          v80._object = 0xE000000000000000;
          sub_36920(19);
          v82._countAndFlagsBits = 0xD000000000000011;
          v82._object = 0x800000000003A0F0;
          sub_36790(v82);
          sub_369A0();
          v52._object = (v62 | 0x8000000000000000);
          v52._countAndFlagsBits = 0xD00000000000007ALL;
          Logger.debug(output:test:caller:)(v80, 0, v52);

          sub_36400();
          v53 = sub_363F0();
          v54 = sub_363E0();

          __chkstk_darwin(v55);
          *(&v56 - 2) = v51;
          v48 = sub_33A4(sub_3DF4, (&v56 - 4), v54);

          (*(v50 + 8))(v51, v44);
          return v48;
        }
      }

      else
      {
LABEL_12:
        v39 = v64;
        sub_3D4C(v64, 1, 1, v65);
      }

      sub_3D9C(v39, &qword_54F70, &qword_37158);
      v46._countAndFlagsBits = 0xD00000000000001ALL;
      v46._object = 0x800000000003A0D0;
      v47._object = (v62 | 0x8000000000000000);
      v47._countAndFlagsBits = 0xD00000000000007ALL;
      Logger.debug(output:test:caller:)(v46, 0, v47);
    }
  }

  return 0;
}

uint64_t sub_33A4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_2B8C(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = sub_36930();
      v9 = result;
    }

    else
    {
      if (i >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_15;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    v10 = a1(&v11);
    if (v3)
    {

      return v9;
    }

    if (v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_349C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_365F0();
  v4 = v3;
  if (v2 == sub_35E30() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_36A20();
  }

  return v7 & 1;
}

uint64_t sub_3534()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_3564()
{
  sub_3534();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_35E8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0;

  return sub_1FAC(a1, a2);
}

uint64_t sub_3690(uint64_t a1, uint64_t a2)
{
  v3 = sub_3E14(&qword_54F38, a2, type metadata accessor for HomeAutomationSignalExtractor);

  return SignalExtractor.description.getter(a1, v3);
}

uint64_t sub_378C()
{
  type metadata accessor for HomeAutomationSignalExtractor();
  swift_allocObject();
  result = sub_1F00();
  qword_594C8 = result;
  return result;
}

BOOL sub_37C8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_3878(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_35F20() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_394C()
{
  v1 = *(*(sub_35F20() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_39EC(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*(sub_1DC4(a1, a2) - 8) + 80);
  v4 = *(v2 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v2, 32, 7);
}

uint64_t sub_3A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_36A20() & 1;
  }
}

uint64_t sub_3AA4()
{
  sub_35F20();
  sub_3E14(&qword_54F88, 255, &type metadata accessor for InvocationType);
  return sub_36700() & 1;
}

unint64_t sub_3B5C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_3BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_3C30(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_3C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC4(&qword_54F50, &unk_37140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3D00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3D9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1DC4(a2, a3);
  sub_3EC0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_3E14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_3E80()
{

  return swift_once();
}

uint64_t static UnitSemantic.< infix(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x746E6563726570;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746E6563726570;
  switch(v4)
  {
    case 1:
      v5 = 0x4373656572676564;
      v6 = 0x737569736C65;
      goto LABEL_5;
    case 2:
      v5 = 0xD000000000000011;
      v3 = 0x80000000000390F0;
      break;
    case 3:
      v5 = 0x4773656572676564;
      v6 = 0x636972656E65;
LABEL_5:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4373656572676564;
      v8 = 0x737569736C65;
      goto LABEL_10;
    case 2:
      v2 = 0xD000000000000011;
      v7 = 0x80000000000390F0;
      break;
    case 3:
      v2 = 0x4773656572676564;
      v8 = 0x636972656E65;
LABEL_10:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_36A20();
  }

  return v10 & 1;
}

unint64_t UnitSemantic.rawValue.getter(char a1)
{
  result = 0x746E6563726570;
  switch(a1)
  {
    case 1:
      result = 0x4373656572676564;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4773656572676564;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationSiriSuggestions::UnitSemantic_optional __swiftcall UnitSemantic.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v5._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4D150;
  v5._object = object;
  v3 = sub_369F0(v2, v5);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

HomeAutomationSiriSuggestions::UnitSemantic_optional sub_41A0@<W0>(Swift::String *a1@<X0>, HomeAutomationSiriSuggestions::UnitSemantic_optional *a2@<X8>)
{
  result.value = UnitSemantic.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_41D0@<X0>(unint64_t *a1@<X8>)
{
  result = UnitSemantic.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_42EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_46D4();
  v5 = sub_4728();
  v6 = sub_477C();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

uint64_t sub_4360(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_4374()
{
  result = qword_54FA8;
  if (!qword_54FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_54FA8);
  }

  return result;
}

unint64_t sub_43CC()
{
  result = qword_54FB0;
  if (!qword_54FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_54FB0);
  }

  return result;
}

unint64_t sub_4424()
{
  result = qword_54FB8;
  if (!qword_54FB8)
  {
    sub_4488(&qword_54FC0, &qword_372A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_54FB8);
  }

  return result;
}

uint64_t sub_4488(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_44D4()
{
  result = qword_54FC8;
  if (!qword_54FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_54FC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnitSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnitSemantic(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x468CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_46D4()
{
  result = qword_54FD0;
  if (!qword_54FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_54FD0);
  }

  return result;
}

unint64_t sub_4728()
{
  result = qword_54FD8;
  if (!qword_54FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_54FD8);
  }

  return result;
}

unint64_t sub_477C()
{
  result = qword_54FE0;
  if (!qword_54FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_54FE0);
  }

  return result;
}

uint64_t sub_47D4()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_594D0);
  v1 = sub_1D8C(v0, qword_594D0);
  *v1 = sub_283D4();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t *sub_486C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_48E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  v5 = sub_4E88(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v21[-v10];
  sub_1DC4(&qword_55068, &unk_373E0);
  v12 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_36F10;
  v16 = v15 + v14;
  IsSingleAccessoryOfTypeInHomeResolver = type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD00000000000001DLL;
  *(v18 + 24) = 0x8000000000039CF0;
  v23[3] = IsSingleAccessoryOfTypeInHomeResolver;
  v23[4] = sub_4DB0();
  v23[0] = v18;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v16 = 3;
  sub_3BCC(v23, v16 + 8);
  *(v16 + 48) = 1;
  (*(v7 + 16))(v16 + v12[12], v11, v4);
  v19 = v12[13];
  sub_362C0();
  sub_35D10();
  (*(v7 + 8))(v11, v4);
  sub_3D00(v23);
  sub_4E08(a1, a2);
  v22 = a2;
  sub_1F76C(sub_4E6C, v21, v15);
  swift_setDeallocating();
  return sub_39C4();
}

id sub_4BA8(void *a1)
{
  result = [a1 userTask];
  if (result)
  {
    v2 = result;
    [result taskType];

    v3 = sub_36350();
    if (v3 == sub_36350() && (sub_345E8() & 1) != 0)
    {
      sub_34608(&dword_14 + 2);
      if (v4)
      {
        return &dword_0 + 1;
      }

      else
      {
        sub_34608(&dword_1C);
        return (v5 & 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4C50()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  sub_4E88(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_37390;
  v7 = v6 + v5;
  v8 = enum case for SiriHintsMode.display(_:);
  v9 = sub_35DC0();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = *(v2 + 104);
  v10(v7, enum case for DeliveryVehicle.siriHints(_:), v0);
  v10(v7 + v4, enum case for DeliveryVehicle.assistantSuggestions(_:), v0);
  return v6;
}

unint64_t sub_4DB0()
{
  result = qword_55070;
  if (!qword_55070)
  {
    type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55070);
  }

  return result;
}

uint64_t sub_4E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static StateSemantic.< infix(_:_:)(char a1, char a2)
{
  v3 = StateSemantic.rawValue.getter(a1);
  v5 = v4;
  if (v3 == StateSemantic.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_36A20();
  }

  return v8 & 1;
}

uint64_t StateSemantic.rawValue.getter(char a1)
{
  result = 28271;
  switch(a1)
  {
    case 1:
      return 6710895;
    case 2:
      return 0xD000000000000011;
    case 3:
      v5 = 1702131053;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
    case 4:
      v6 = 0x6574756D6E75;
      goto LABEL_29;
    case 5:
      return 0x64656B636F6CLL;
    case 6:
      v3 = 0x6B636F6C6E75;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 7:
      v8 = 1801678700;
      return v8 | 0x676E6900000000;
    case 8:
      return 0x6E696B636F6C6E75;
    case 9:
      return 1852141679;
    case 10:
      v12 = 1936682083;
      goto LABEL_85;
    case 11:
      v8 = 1852141679;
      return v8 | 0x676E6900000000;
    case 12:
      v8 = 1936682083;
      return v8 | 0x676E6900000000;
    case 13:
      return 28789;
    case 14:
      return 1853321060;
    case 15:
      return 7827308;
    case 16:
      v9 = 1768187245;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6D7500000000;
    case 17:
      return 1751607656;
    case 18:
      return 0x796177666C6168;
    case 19:
      return 0x7369776B636F6C63;
    case 20:
      return 0xD000000000000010;
    case 21:
      v11 = 0x737265766572;
      return v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 22:
      v7 = 0x5F656B6F6D73;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6564000000000000;
    case 23:
    case 42:
      return 0xD000000000000012;
    case 24:
      return 0xD000000000000018;
    case 25:
      return 0xD00000000000001CLL;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0xD000000000000014;
    case 28:
      return 0x6E656C6C65637865;
    case 29:
      return 1685024615;
    case 30:
      return 1919508838;
    case 31:
      return 0x726F697265666E69;
    case 32:
      return 1919905648;
    case 33:
      v8 = 1952540008;
      return v8 | 0x676E6900000000;
    case 34:
      v8 = 1819242339;
      return v8 | 0x676E6900000000;
    case 35:
      v7 = 0x6F4D6F747561;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6564000000000000;
    case 36:
      return 0x6C61756E616DLL;
    case 37:
      return 0x6576654C6B616570;
    case 38:
      return 0xD000000000000010;
    case 39:
      return 0x6C6576656CLL;
    case 40:
      return 0x656772616863;
    case 41:
      return 0x745F726F736E6573;
    case 43:
      return 0x6F6D5F676E697773;
    case 44:
      return 0x6573755F6E69;
    case 45:
      return 0x755F6E695F746F6ELL;
    case 46:
      v5 = 1701671521;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
    case 47:
      return 0x696E5F64656D7261;
    case 48:
      return 0x74735F64656D7261;
    case 49:
      return 0x77615F64656D7261;
    case 50:
      v3 = 0x6D7261736964;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 51:
      return 0x72745F6D72616C61;
    case 52:
      return 1701602409;
    case 53:
      v5 = 1702390118;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
    case 54:
      return 0x676E69676E697773;
    case 55:
      v12 = 1835884906;
      goto LABEL_85;
    case 56:
      return 0x6E61656C63;
    case 57:
      v9 = 1969447286;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6D7500000000;
    case 58:
      return 7368557;
    case 59:
      return 0x6E416D7575636176;
    case 60:
      return 0x61656C4370656564;
    case 61:
      v10 = 1667855729;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 62:
      return 0x7465697571;
    case 63:
      v4 = 1299145573;
      goto LABEL_88;
    case 64:
      return 0x6573696F4E776F6CLL;
    case 65:
      return 0x6E6F697461636176;
    case 66:
      v4 = 1299081581;
      goto LABEL_88;
    case 67:
      v4 = 1299734893;
      goto LABEL_88;
    case 68:
      v4 = 1299800420;
LABEL_88:
      v11 = v4 & 0xFFFF0000FFFFFFFFLL | 0x646F00000000;
      return v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 69:
      return 0x646F4D746867696ELL;
    case 70:
      return 0x6573756170;
    case 71:
      return 0x656D75736572;
    case 72:
      v12 = 1801678692;
      goto LABEL_85;
    case 73:
      v10 = 1668641907;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 74:
      v12 = 1937072496;
LABEL_85:
      result = v12 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      break;
    case 75:
      v6 = 0x656D75736572;
LABEL_29:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 76:
      result = 0x646570706F7473;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationSiriSuggestions::StateSemantic_optional __swiftcall StateSemantic.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_36A30();

  if (v1 >= 0x4D)
  {
    return 77;
  }

  else
  {
    return v1;
  }
}

HomeAutomationSiriSuggestions::StateSemantic_optional sub_578C@<W0>(Swift::String *a1@<X0>, HomeAutomationSiriSuggestions::StateSemantic_optional *a2@<X8>)
{
  result.value = StateSemantic.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_57BC@<X0>(uint64_t *a1@<X8>)
{
  result = StateSemantic.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_58D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5C48();
  v5 = sub_5C9C();
  v6 = sub_5CF0();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_5950()
{
  result = qword_55088;
  if (!qword_55088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55088);
  }

  return result;
}

unint64_t sub_59A8()
{
  result = qword_55090;
  if (!qword_55090)
  {
    sub_4488(&qword_55098, &qword_374E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55090);
  }

  return result;
}

unint64_t sub_5A10()
{
  result = qword_550A0;
  if (!qword_550A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_550A0);
  }

  return result;
}

unint64_t sub_5A68()
{
  result = qword_550A8;
  if (!qword_550A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_550A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB4)
  {
    if (a2 + 76 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 76) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 77;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4D;
  v5 = v6 - 77;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StateSemantic(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 76 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 76) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB3)
  {
    v6 = ((a2 - 180) >> 8) + 1;
    *result = a2 + 76;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5C10);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 76;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5C48()
{
  result = qword_550B0;
  if (!qword_550B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_550B0);
  }

  return result;
}

unint64_t sub_5C9C()
{
  result = qword_550B8;
  if (!qword_550B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_550B8);
  }

  return result;
}

unint64_t sub_5CF0()
{
  result = qword_550C0;
  if (!qword_550C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_550C0);
  }

  return result;
}

uint64_t sub_5D48()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_594E8);
  v1 = sub_1D8C(v0, qword_594E8);
  *v1 = sub_28430();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

unint64_t sub_5DF0(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5E78()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_37390;
  v5 = v4 + v3;
  v6 = enum case for SiriHintsMode.display(_:);
  v7 = sub_35DC0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  v8 = *(v1 + 104);
  v8(v5, enum case for DeliveryVehicle.siriHints(_:), v0);
  v8(v5 + v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v0);
  return v4;
}

uint64_t sub_5FD4()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59500);
  v1 = sub_1D8C(v0, qword_59500);
  *v1 = sub_2848C();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = sub_4E88(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v26 - v8;
  sub_1DC4(&qword_55068, &unk_373E0);
  v10 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  v29 = v13;
  *(v13 + 16) = xmmword_37390;
  v14 = v13 + v12;
  IsSingleAccessoryOfTypeInHomeResolver = type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD00000000000001DLL;
  *(v16 + 24) = 0x8000000000039CF0;
  v35 = IsSingleAccessoryOfTypeInHomeResolver;
  v36 = sub_6530(&qword_55070, type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver);
  v34[0] = v16;
  sub_1DC4(&qword_55078, &unk_373F0);
  v28 = sub_352A0;
  sub_35D10();
  *v14 = 3;
  sub_3BCC(v34, v14 + 8);
  *(v14 + 48) = 1;
  v17 = v10[12];
  v27 = *(v5 + 16);
  v27(v14 + v17, v9, v2);
  v18 = v10[13];
  v26[2] = sub_362C0();
  sub_35D10();
  v19 = *(v5 + 8);
  v26[1] = v5 + 8;
  v19(v9, v2);
  sub_3D00(v34);
  v20 = v14 + v11;
  v21 = type metadata accessor for RoomNameResolver();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x656D614E6D6F6F72;
  *(v22 + 24) = 0xE800000000000000;
  v35 = v21;
  v36 = sub_6530(&qword_551B8, type metadata accessor for RoomNameResolver);
  v34[0] = v22;
  sub_35D10();
  *v20 = 1;
  sub_3BCC(v34, v20 + 8);
  *(v20 + 48) = 1;
  v27(v20 + v10[12], v9, v2);
  v23 = v20 + v10[13];
  sub_35D10();
  v19(v9, v2);
  sub_3D00(v34);
  v24 = v30;
  sub_4E08(v31, v30);
  v33 = v24;
  sub_1F76C(sub_6578, v32, v29);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_6494(void *a1)
{
  v1 = [a1 userTask];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 taskType];

  v3 = sub_36350();
  if (v3 != sub_36350() || (sub_345E8() & 1) == 0)
  {
    return 0;
  }

  sub_34608(&dword_0 + 1);
  return v4 & 1;
}

uint64_t sub_6530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6594()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59518);
  v1 = sub_1D8C(v0, qword_59518);
  *v1 = sub_284E8();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0xD00000000000001ALL, 0x8000000000039B50);
  v8[3] = v4;
  v8[4] = sub_6E0C(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_6740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v36 - v5;
  sub_1DC4(&qword_55068, &unk_373E0);
  v7 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = *(*v7 + 72);
  v10 = swift_allocObject();
  v38 = v10;
  *(v10 + 16) = xmmword_37020;
  v11 = v10 + v8;
  v12 = type metadata accessor for AccessoryTypeResolver();
  v13 = swift_allocObject();
  sub_6E6C();
  *(v14 + 16) = v15;
  *(v14 + 24) = 0xED00006570795479;
  v48 = v12;
  v49 = sub_6E0C(&qword_55238, type metadata accessor for AccessoryTypeResolver);
  v47[0] = v13;
  sub_1DC4(&qword_55078, &unk_373F0);
  v36[1] = sub_352A0;
  sub_6E54();
  *v11 = 0;
  sub_3BCC(v47, v11 + 8);
  *(v11 + 48) = 257;
  v16 = v7[12];
  v37 = v3[2];
  v36[0] = v2;
  v37(v11 + v16, v6, v2);
  v17 = v7[13];
  v44 = sub_362C0();
  v43 = sub_20BC0;
  sub_6E54();
  v18 = v3[1];
  v41 = v3 + 1;
  v42 = v18;
  v18(v6, v2);
  sub_3D00(v47);
  v19 = v9;
  v20 = v11 + v9;
  v21 = type metadata accessor for RoomNameResolver();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x656D614E6D6F6F72;
  *(v22 + 24) = 0xE800000000000000;
  v48 = v21;
  v49 = sub_6E0C(&qword_551B8, type metadata accessor for RoomNameResolver);
  v47[0] = v22;
  sub_6E54();
  *v20 = 1;
  sub_3BCC(v47, v20 + 8);
  *(v20 + 48) = 1;
  v23 = v36[0];
  v24 = v37;
  v37(v20 + v7[12], v6, v36[0]);
  v25 = v20 + v7[13];
  sub_6E54();
  v26 = v23;
  v42(v6, v23);
  sub_3D00(v47);
  v27 = v11 + 2 * v19;
  v28 = type metadata accessor for AccessoryNameResolver();
  v29 = swift_allocObject();
  sub_6E6C();
  *(v30 + 16) = v32;
  *(v30 + 24) = v31;
  v48 = v28;
  v49 = sub_6E0C(&qword_55240, type metadata accessor for AccessoryNameResolver);
  v47[0] = v29;
  sub_6E54();
  *v27 = 2;
  sub_3BCC(v47, v27 + 8);
  *(v27 + 48) = 0;
  v24(v27 + v7[12], v6, v26);
  v33 = v27 + v7[13];
  sub_6E54();
  v42(v6, v26);
  sub_3D00(v47);
  v34 = v39;
  sub_4E08(v40, v39);
  v46 = v34;
  sub_1F76C(sub_6DF0, v45, v38);
  swift_setDeallocating();
  return sub_39C4();
}

BOOL sub_6C48(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_34664(&off_4DF20);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6CD4()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_37390;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DeliveryVehicle.siriHelp(_:), v0);
  v6(v5 + v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v0);
  return v4;
}

uint64_t sub_6E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6E54()
{

  return sub_35D10();
}

uint64_t sub_6E80()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59530);
  v1 = sub_1D8C(v0, qword_59530);
  *v1 = sub_28544();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_6F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  v5 = sub_4E88(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v21[-v10];
  sub_1DC4(&qword_55068, &unk_373E0);
  v12 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_36F10;
  v16 = v15 + v14;
  IsSingleAccessoryOfTypeInHomeResolver = type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD00000000000001DLL;
  *(v18 + 24) = 0x8000000000039CF0;
  v23[3] = IsSingleAccessoryOfTypeInHomeResolver;
  v23[4] = sub_4DB0();
  v23[0] = v18;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v16 = 3;
  sub_3BCC(v23, v16 + 8);
  *(v16 + 48) = 1;
  (*(v7 + 16))(v16 + v12[12], v11, v4);
  v19 = v12[13];
  sub_362C0();
  sub_35D10();
  (*(v7 + 8))(v11, v4);
  sub_3D00(v23);
  sub_4E08(a1, a2);
  v22 = a2;
  sub_1F76C(sub_7280, v21, v15);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_71F0(void *a1)
{
  v1 = [a1 userTask];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 taskType];

  v3 = sub_36350();
  if (v3 != sub_36350())
  {
    return 0;
  }

  sub_34608(&dword_4);
  return v4 & 1;
}

uint64_t sub_729C()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59548);
  v1 = sub_1D8C(v0, qword_59548);
  *v1 = sub_285A0();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_7344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  v5 = sub_4E88(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v21[-v10];
  sub_1DC4(&qword_55068, &unk_373E0);
  v12 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_36F10;
  v16 = v15 + v14;
  v17 = type metadata accessor for RoomNameResolver();
  v18 = swift_allocObject();
  *(v18 + 16) = 0x656D614E6D6F6F72;
  *(v18 + 24) = 0xE800000000000000;
  v23[3] = v17;
  v23[4] = sub_7694();
  v23[0] = v18;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v16 = 1;
  sub_3BCC(v23, v16 + 8);
  *(v16 + 48) = 0;
  (*(v7 + 16))(v16 + v12[12], v11, v4);
  v19 = v12[13];
  sub_362C0();
  sub_35D10();
  (*(v7 + 8))(v11, v4);
  sub_3D00(v23);
  sub_4E08(a1, a2);
  v22 = a2;
  sub_1F76C(sub_76EC, v21, v15);
  swift_setDeallocating();
  return sub_39C4();
}

unint64_t sub_7604(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_7694()
{
  result = qword_551B8;
  if (!qword_551B8)
  {
    type metadata accessor for RoomNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_551B8);
  }

  return result;
}

void HueSemantic.rawValue.getter(__int16 a1)
{
  switch(a1)
  {
    case 4:
      sub_106CC(0x65676F6C6168);
      return;
    case 6:
      sub_106AC(0x6E2068676968);
      return;
    case 8:
      v4 = 0x207261656C63;
      goto LABEL_33;
    case 10:
    case 17:
    case 82:
    case 173:
    case 251:
    case 315:
    case 396:
    case 468:
    case 616:
    case 647:
      sub_105C4();
      return;
    case 12:
    case 531:
      sub_1068C(9);
      return;
    case 13:
    case 398:
    case 532:
      sub_105F4();
      return;
    case 18:
    case 33:
    case 87:
    case 101:
    case 103:
    case 105:
    case 118:
    case 179:
    case 201:
    case 328:
    case 383:
    case 411:
    case 419:
    case 470:
    case 505:
    case 591:
    case 600:
    case 653:
      sub_10770();
      return;
    case 19:
      v4 = 0x206563696C61;
      goto LABEL_33;
    case 24:
    case 44:
    case 66:
    case 72:
    case 100:
    case 108:
    case 120:
    case 121:
    case 128:
    case 137:
    case 146:
    case 174:
    case 175:
    case 185:
    case 220:
    case 229:
    case 243:
    case 244:
    case 266:
    case 291:
    case 374:
    case 400:
    case 410:
    case 412:
    case 430:
    case 452:
    case 465:
    case 466:
    case 472:
    case 488:
    case 490:
    case 493:
    case 512:
    case 525:
    case 576:
    case 601:
    case 623:
    case 657:
    case 705:
      goto LABEL_90;
    case 32:
    case 57:
    case 181:
    case 260:
    case 343:
    case 359:
    case 373:
    case 415:
    case 421:
    case 435:
    case 471:
    case 514:
    case 608:
    case 629:
    case 635:
      sub_1072C();
      return;
    case 38:
      sub_10748(0x6C6F65727561);
      return;
    case 39:
      sub_10654(0x656D6F727561);
      return;
    case 41:
    case 46:
    case 93:
    case 129:
    case 130:
    case 136:
    case 170:
    case 238:
    case 254:
    case 384:
    case 432:
    case 443:
    case 462:
    case 560:
    case 582:
    case 626:
    case 634:
    case 640:
    case 648:
    case 652:
    case 660:
    case 703:
      sub_105AC();
      return;
    case 42:
      v2 = 2036490594;
      goto LABEL_19;
    case 59:
    case 65:
    case 73:
    case 78:
    case 92:
    case 102:
    case 117:
    case 126:
    case 144:
    case 157:
    case 165:
    case 211:
    case 234:
    case 261:
    case 276:
    case 309:
    case 326:
    case 352:
    case 354:
    case 360:
    case 369:
    case 388:
    case 392:
    case 447:
    case 456:
    case 459:
    case 482:
    case 483:
    case 489:
    case 508:
    case 523:
    case 535:
    case 569:
    case 580:
    case 584:
    case 585:
    case 606:
    case 645:
    case 675:
    case 683:
      sub_106FC();
      return;
    case 61:
      v4 = 0x2069646E6F62;
      goto LABEL_33;
    case 62:
    case 156:
    case 258:
    case 259:
    case 268:
    case 288:
    case 294:
    case 316:
    case 319:
    case 333:
    case 372:
    case 376:
    case 413:
    case 449:
    case 498:
    case 515:
    case 521:
    case 527:
    case 553:
    case 568:
    case 573:
    case 581:
    case 612:
    case 633:
    case 700:
      sub_106F4();
      return;
    case 63:
    case 104:
      sub_1068C(5);
      return;
    case 64:
    case 71:
    case 75:
    case 116:
    case 142:
    case 186:
    case 215:
    case 222:
    case 225:
    case 235:
    case 239:
    case 269:
    case 274:
    case 275:
    case 280:
    case 289:
    case 290:
    case 297:
    case 299:
    case 302:
    case 325:
    case 332:
    case 345:
    case 364:
    case 370:
    case 405:
    case 429:
    case 431:
    case 434:
    case 439:
    case 460:
    case 464:
    case 473:
    case 484:
    case 486:
    case 497:
    case 503:
    case 506:
    case 509:
    case 511:
    case 517:
    case 534:
    case 548:
    case 575:
    case 614:
    case 638:
    case 639:
    case 651:
    case 706:
      sub_10758();
      return;
    case 68:
      sub_10740(0x206B63697262);
      return;
    case 70:
      v9 = 0x746867697262;
      goto LABEL_88;
    case 74:
      sub_10710(0x746867697262);
      return;
    case 76:
      sub_10768(0x746867697262);
      return;
    case 80:
    case 178:
    case 187:
    case 193:
    case 217:
    case 270:
    case 272:
    case 293:
    case 349:
    case 353:
    case 357:
    case 526:
    case 541:
    case 549:
    case 578:
      sub_105DC();
      return;
    case 81:
      sub_1066C(0x696C6C697262);
      return;
    case 89:
      sub_106AC(0x77796C727562);
      return;
    case 90:
      sub_106E4(0x20746E727562);
      return;
    case 95:
    case 279:
    case 283:
    case 287:
    case 320:
    case 323:
    case 378:
    case 425:
    case 426:
    case 448:
    case 501:
    case 528:
    case 577:
    case 589:
    case 620:
    case 625:
    case 637:
    case 658:
    case 676:
      sub_106D4();
      return;
    case 98:
      v4 = 0x207465646163;
      goto LABEL_33;
    case 110:
      sub_106EC(0x2079646E6163);
      return;
    case 113:
      sub_10760(0x6E6964726163);
      return;
    case 115:
      sub_106B4(0x6D726163u);
      return;
    case 119:
      sub_10684(0x6C656E726163);
      return;
    case 122:
      sub_106CC(0x6F64616C6563);
      return;
    case 124:
      sub_10684(0x7473656C6563);
      return;
    case 127:
      v5 = 0x656C75726563;
      goto LABEL_45;
    case 131:
      sub_10760(0x6F6372616863);
      return;
    case 134:
    case 362:
    case 390:
    case 397:
    case 404:
    case 477:
    case 672:
      sub_10588();
      return;
    case 139:
      sub_1067C(0x62616E6E6963);
      return;
    case 141:
      sub_106B4(0x72746963u);
      return;
    case 147:
      sub_10664(0x62206C6F6F63);
      return;
    case 148:
      v1 = 1819242339;
      goto LABEL_35;
    case 150:
      v9 = 0x726570706F63;
      goto LABEL_88;
    case 153:
      sub_106EC(0x206C61726F63);
      return;
    case 154:
      sub_10740(0x206C61726F63);
      return;
    case 155:
      v5 = 0x766F64726F63;
      goto LABEL_45;
    case 161:
      sub_10768(0x63696D736F63);
      return;
    case 162:
      sub_10710(0x6E6F74746F63);
      return;
    case 164:
      sub_106CC(0x6F736D697263);
      return;
    case 168:
      sub_1065C(0x646F66666164);
      return;
    case 169:
      sub_106A4(0x6C65646E6164);
      return;
    case 171:
      sub_1060C(0x6B726164u);
      return;
    case 176:
      v3 = 0x63206B726164;
      goto LABEL_22;
    case 195:
      v2 = 1802658148;
LABEL_19:
      sub_10748(v2 & 0xFFFF0000FFFFFFFFLL | 0x702000000000);
      return;
    case 199:
      sub_10760(0x73206B726164);
      return;
    case 204:
      sub_10664(0x73206B726164);
      return;
    case 206:
    case 207:
      v5 = 0x74206B726164;
      goto LABEL_45;
    case 208:
      sub_105B8(0x6B726164u);
      return;
    case 214:
      v1 = 2037801316;
LABEL_35:
      sub_10740(v1 & 0xFFFF0000FFFFFFFFLL | 0x672000000000);
      return;
    case 224:
      sub_1065C(0x6C2070656564);
      return;
    case 227:
      v8 = 0x702070656564;
      goto LABEL_78;
    case 242:
      sub_10704(0x73676765u);
      return;
    case 247:
      goto LABEL_17;
    case 252:
    case 476:
      sub_1062C();
      return;
    case 267:
      sub_106DC(0x736576616C66);
      return;
    case 277:
      sub_10768(0x68636E657266);
      return;
    case 278:
      sub_10674(0x68636E657266);
      return;
    case 282:
      v3 = 0x62736E696167;
      goto LABEL_22;
    case 296:
      v4 = 0x206E65657267;
      goto LABEL_33;
    case 322:
      sub_106C0(0x7A7A616Au);
      return;
    case 330:
      sub_10664(0x20736970616CLL);
      return;
    case 334:
    case 336:
    case 337:
    case 339:
    case 341:
      sub_10778();
      return;
    case 335:
    case 340:
    case 342:
      sub_10778();
LABEL_90:
      sub_10724();
      return;
    case 338:
      sub_10778();
LABEL_17:
      sub_10640();
      return;
    case 351:
      v4 = 0x20746867696CLL;
      goto LABEL_33;
    case 355:
      sub_1068C(5);
      return;
    case 363:
      v6 = 0x20746867696CLL;
      goto LABEL_58;
    case 377:
      sub_105A0(0x2075736Du);
      return;
    case 380:
      sub_10684(0x6C6F6E67616DLL);
      return;
    case 385:
      sub_10654(0x206F676E616DLL);
      return;
    case 394:
      sub_10710(0x6D756964656DLL);
      return;
    case 414:
      sub_10740(0x6320746E696DLL);
      return;
    case 417:
      sub_10748(0x736163636F6DLL);
      return;
    case 422:
      v8 = 0x61746E756F6DLL;
      goto LABEL_78;
    case 433:
      sub_1067C(0x63206E6F656ELL);
      return;
    case 440:
      sub_10734(0x20646C6Fu);
      return;
    case 441:
      sub_106DC(0x616C20646C6FLL);
      return;
    case 444:
      sub_10718(0x20646C6Fu);
      return;
    case 454:
      sub_10674(0x65676E61726FLL);
      return;
    case 463:
      sub_1060C(0x656C6170u);
      return;
    case 474:
      v8 = 0x7020656C6170;
      goto LABEL_78;
    case 478:
      sub_1065C(0x7320656C6170);
      return;
    case 479:
      sub_105B8(0x656C6170u);
      return;
    case 480:
      sub_106A4(0x7620656C6170);
      return;
    case 491:
      sub_10674(0x6C6574736170);
      return;
    case 504:
    case 507:
      sub_10618();
      return;
    case 513:
      v6 = 0x207967676970;
      goto LABEL_58;
    case 516:
      sub_10664(0x66206B6E6970);
      return;
    case 537:
      sub_106C0(0x70736172u);
      return;
    case 542:
      sub_10654(0x616D7A7A6172);
      return;
    case 543:
    case 624:
    case 667:
      sub_1069C();
      return;
    case 544:
      v5 = 0x726F20646572;
      goto LABEL_45;
    case 547:
      sub_10664(0x622068636972);
      return;
    case 550:
      sub_1065C(0x6C2068636972);
      return;
    case 551:
      sub_1067C(0x6D2068636972);
      return;
    case 557:
      v8 = 0x702065736F72;
LABEL_78:
      sub_10748(v8);
      return;
    case 559:
      sub_105B8(0x65736F72u);
      return;
    case 563:
      sub_1060C(0x79736F72u);
      return;
    case 565:
      v7 = 1635348338;
      goto LABEL_83;
    case 570:
      v6 = 0x207964647572;
LABEL_58:
      sub_106EC(v6);
      return;
    case 583:
      v3 = 0x7473646E6173;
LABEL_22:
      sub_106E4(v3);
      return;
    case 586:
      sub_105A0(0x20706173u);
      return;
    case 587:
      sub_10740(0x696870706173);
      return;
    case 595:
      sub_10704(0x73616573u);
      return;
    case 607:
      v4 = 0x206574616C73;
      goto LABEL_33;
    case 611:
      v4 = 0x20796B6F6D73;
      goto LABEL_33;
    case 615:
      v7 = 1701147763;
LABEL_83:
      sub_10750(v7 & 0xFFFF0000FFFFFFFFLL | 0x206C00000000);
      return;
    case 632:
      sub_10718(0x20616574u);
      return;
    case 649:
      v4 = 0x207374667574;
LABEL_33:
      sub_10750(v4);
      return;
    case 655:
      v9 = 0x6E6163737574;
LABEL_88:
      sub_10674(v9);
      return;
    case 662:
      sub_105A0(0x206F6675u);
      return;
    case 664:
      sub_106AC(0x72616D207075);
      return;
    case 666:
      sub_10734(0x20637375u);
      return;
    case 668:
      sub_106EC(0x206172746C75);
      return;
    case 669:
      sub_1067C(0x6D6172746C75);
      return;
    case 673:
      sub_1068C(13);
      return;
    case 678:
      v5 = 0x6974656E6576;
      goto LABEL_45;
    case 680:
      sub_106A4(0x6C696D726576);
      return;
    case 684:
      sub_10674(0x74656C6F6976);
      return;
    case 685:
      v5 = 0x696469726976;
LABEL_45:
      sub_1066C(v5);
      break;
    case 688:
      sub_106DC(0x206469766976);
      break;
    case 689:
      sub_10654(0x206469766976);
      break;
    case 691:
      sub_10664(0x62206D726177);
      break;
    case 701:
      sub_10684(0x726574736977);
      break;
    default:
      return;
  }
}

uint64_t static HueSemantic.< infix(_:_:)(__int16 a1, __int16 a2)
{
  HueSemantic.rawValue.getter(a1);
  v4 = v3;
  v6 = v5;
  HueSemantic.rawValue.getter(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_36A20();
  }

  return v10 & 1;
}

HomeAutomationSiriSuggestions::HueSemantic_optional __swiftcall HueSemantic.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  sub_1DC4(&qword_55340, &qword_37750);
  v2 = swift_allocObject();
  v9 = sub_4360(v2, 709);
  *v3 = "greenish";
  *(v3 + 8) = 8;
  *(v3 + 16) = 2;
  *(v3 + 24) = "candle";
  *(v3 + 32) = 6;
  *(v3 + 40) = 2;
  *(v3 + 48) = "40w tungsten";
  *(v3 + 56) = 12;
  *(v3 + 64) = 2;
  *(v3 + 72) = "100w tungsten";
  *(v3 + 80) = 13;
  *(v3 + 88) = 2;
  *(v3 + 96) = "halogen";
  *(v3 + 104) = 7;
  *(v3 + 112) = 2;
  *(v3 + 120) = "carbon arc";
  *(v3 + 128) = 10;
  *(v3 + 136) = 2;
  *(v3 + 144) = "high noon sun";
  *(v3 + 152) = 13;
  *(v3 + 160) = 2;
  *(v3 + 168) = "overcast sky";
  *(v3 + 176) = 12;
  *(v3 + 184) = 2;
  *(v3 + 192) = "clear blue sky";
  *(v3 + 200) = 14;
  *(v3 + 208) = 2;
  *(v3 + 216) = "warm fluorescent";
  *(v3 + 224) = 16;
  *(v3 + 232) = 2;
  *(v3 + 240) = "standard fluorescent";
  *(v3 + 248) = 20;
  *(v3 + 256) = 2;
  *(v3 + 264) = "cool white fluorescent";
  *(v3 + 272) = 22;
  *(v3 + 280) = 2;
  *(v3 + 288) = "full spectrum fluorescent";
  *(v3 + 296) = 25;
  *(v3 + 304) = 2;
  *(v3 + 312) = "black light fluorescent";
  *(v3 + 320) = 23;
  *(v3 + 328) = 2;
  *(v3 + 336) = "mercury vapor";
  *(v3 + 344) = 13;
  *(v3 + 352) = 2;
  *(v3 + 360) = "sodium vapor";
  *(v3 + 368) = 12;
  *(v3 + 376) = 2;
  *(v3 + 384) = "metal halide";
  *(v3 + 392) = 12;
  *(v3 + 400) = 2;
  *(v3 + 408) = "high pressure sodium";
  *(v3 + 416) = 20;
  *(v3 + 424) = 2;
  *(v3 + 432) = "air force blue";
  *(v3 + 440) = 14;
  *(v3 + 448) = 2;
  *(v3 + 456) = "alice blue";
  *(v3 + 464) = 10;
  *(v3 + 472) = 2;
  *(v3 + 480) = "alizarin crimson";
  *(v3 + 488) = 16;
  *(v3 + 496) = 2;
  *(v3 + 504) = "almond";
  *(v3 + 512) = 6;
  *(v3 + 520) = 2;
  *(v3 + 528) = "amaranth";
  *(v3 + 536) = 8;
  *(v3 + 544) = 2;
  *(v3 + 552) = "amber";
  *(v3 + 560) = 5;
  *(v3 + 568) = 2;
  *(v3 + 576) = "american rose";
  *(v3 + 584) = 13;
  *(v3 + 592) = 2;
  *(v3 + 600) = "amethyst";
  *(v3 + 608) = 8;
  *(v3 + 616) = 2;
  *(v3 + 624) = "antique brass";
  *(v3 + 632) = 13;
  *(v3 + 640) = 2;
  *(v3 + 648) = "antique fuchsia";
  *(v3 + 656) = 15;
  *(v3 + 664) = 2;
  *(v3 + 672) = "antique white";
  *(v3 + 680) = 13;
  *(v3 + 688) = 2;
  *(v3 + 696) = "apricot";
  *(v3 + 704) = 7;
  *(v3 + 712) = 2;
  *(v3 + 720) = "aqua";
  *(v3 + 728) = 4;
  *(v3 + 736) = 2;
  *(v3 + 744) = "aquamarine";
  *(v3 + 752) = 10;
  *(v3 + 760) = 2;
  *(v3 + 768) = "army green";
  *(v3 + 776) = 10;
  *(v3 + 784) = 2;
  *(v3 + 792) = "arylide yellow";
  *(v3 + 800) = 14;
  *(v3 + 808) = 2;
  *(v3 + 816) = "ash grey";
  *(v3 + 824) = 8;
  *(v3 + 832) = 2;
  *(v3 + 840) = "asparagus";
  *(v3 + 848) = 9;
  *(v3 + 856) = 2;
  *(v3 + 864) = "atomic tangerine";
  *(v3 + 872) = 16;
  *(v3 + 880) = 2;
  *(v3 + 888) = "auburn";
  *(v3 + 896) = 6;
  *(v3 + 904) = 2;
  *(v3 + 912) = "aureolin";
  *(v3 + 920) = 8;
  *(v3 + 928) = 2;
  *(v3 + 936) = "aurometalsaurus";
  *(v3 + 944) = 15;
  *(v3 + 952) = 2;
  *(v3 + 960) = "azure";
  *(v3 + 968) = 5;
  *(v3 + 976) = 2;
  *(v3 + 984) = "baby blue";
  *(v3 + 992) = 9;
  *(v3 + 1000) = 2;
  *(v3 + 1008) = "baby pink";
  *(v3 + 1016) = 9;
  *(v3 + 1024) = 2;
  *(v3 + 1032) = "banana mania";
  *(v3 + 1040) = 12;
  *(v3 + 1048) = 2;
  *(v3 + 1056) = "banana yellow";
  *(v3 + 1064) = 13;
  *(v3 + 1072) = 2;
  *(v3 + 1080) = "battleship grey";
  *(v3 + 1088) = 15;
  *(v3 + 1096) = 2;
  *(v3 + 1104) = "beau blue";
  *(v3 + 1112) = 9;
  *(v3 + 1120) = 2;
  *(v3 + 1128) = "beige";
  *(v3 + 1136) = 5;
  *(v3 + 1144) = 2;
  *(v3 + 1152) = "bisque";
  *(v3 + 1160) = 6;
  *(v3 + 1168) = 2;
  *(v3 + 1176) = "bistre";
  *(v3 + 1184) = 6;
  *(v3 + 1192) = 2;
  *(v3 + 1200) = "bittersweet";
  *(v3 + 1208) = 11;
  *(v3 + 1216) = 2;
  *(v3 + 1224) = "black";
  *(v3 + 1232) = 5;
  *(v3 + 1240) = 2;
  *(v3 + 1248) = "blanched almond";
  *(v3 + 1256) = 15;
  *(v3 + 1264) = 2;
  *(v3 + 1272) = "bleu de france";
  *(v3 + 1280) = 14;
  *(v3 + 1288) = 2;
  *(v3 + 1296) = "blond";
  *(v3 + 1304) = 5;
  *(v3 + 1312) = 2;
  *(v3 + 1320) = "blue";
  *(v3 + 1328) = 4;
  *(v3 + 1336) = 2;
  *(v3 + 1344) = "blue gray";
  *(v3 + 1352) = 9;
  *(v3 + 1360) = 2;
  *(v3 + 1368) = "blue green";
  *(v3 + 1376) = 10;
  *(v3 + 1384) = 2;
  *(v3 + 1392) = "blue purple";
  *(v3 + 1400) = 11;
  *(v3 + 1408) = 2;
  *(v3 + 1416) = "blue violet";
  *(v3 + 1424) = 11;
  *(v3 + 1432) = 2;
  *(v3 + 1440) = "blush";
  *(v3 + 1448) = 5;
  *(v3 + 1456) = 2;
  *(v3 + 1464) = "bondi blue";
  *(v3 + 1472) = 10;
  *(v3 + 1480) = 2;
  *(v3 + 1488) = "bone";
  *(v3 + 1496) = 4;
  *(v3 + 1504) = 2;
  *(v3 + 1512) = "boston university red";
  *(v3 + 1520) = 21;
  *(v3 + 1528) = 2;
  *(v3 + 1536) = "bottle green";
  *(v3 + 1544) = 12;
  *(v3 + 1552) = 2;
  *(v3 + 1560) = "boysenberry";
  *(v3 + 1568) = 11;
  *(v3 + 1576) = 2;
  *(v3 + 1584) = "brandeis blue";
  *(v3 + 1592) = 13;
  *(v3 + 1600) = 2;
  *(v3 + 1608) = "brass";
  *(v3 + 1616) = 5;
  *(v3 + 1624) = 2;
  *(v3 + 1632) = "brick red";
  *(v3 + 1640) = 9;
  *(v3 + 1648) = 2;
  *(v3 + 1656) = "begonia";
  *(v3 + 1664) = 7;
  *(v3 + 1672) = 2;
  *(v3 + 1680) = "bright red";
  *(v3 + 1688) = 10;
  *(v3 + 1696) = 2;
  *(v3 + 1704) = "bright white";
  *(v3 + 1712) = 12;
  *(v3 + 1720) = 2;
  *(v3 + 1728) = "bright yellow";
  *(v3 + 1736) = 13;
  *(v3 + 1744) = 2;
  *(v3 + 1752) = "bright blue";
  *(v3 + 1760) = 11;
  *(v3 + 1776) = "bright cerulean";
  *(v3 + 1800) = "bright green";
  *(v3 + 1824) = "bright lavender";
  *(v3 + 1848) = "bright maroon";
  *(v3 + 1872) = "bright pink";
  *(v3 + 1896) = "bright turquoise";
  *(v3 + 1920) = "brilliant lavender";
  *(v3 + 1944) = "brilliant rose";
  *(v3 + 1968) = "british racing green";
  *(v3 + 2640) = "candy pink";
  *(v3 + 2736) = "caribbean green";
  *(v3 + 2832) = "carnation pink";
  *(v3 + 2928) = "celadon";
  *(v3 + 3024) = "cerise pink";
  *(v3 + 3120) = "champagne";
  *(v3 + 3360) = "cinnamon";
  *(v3 + 3456) = "cocoa brown";
  *(v3 + 3552) = "cool grey";
  *(v3 + 3648) = "coral";
  *(v3 + 3744) = "corn";
  *(v3 + 3840) = "cornsilk";
  *(v3 + 3936) = "crimson";
  *(v3 + 4032) = "daffodil";
  *(v3 + 4128) = "dark byzantium";
  *(v3 + 1768) = 2;
  *(v3 + 4440) = "dark lavender";
  *(v3 + 4424) = 9;
  *(v3 + 4432) = 2;
  *(v3 + 4224) = "dark coral";
  *(v3 + 4400) = 10;
  *(v3 + 4408) = 2;
  *(v3 + 4416) = "dark lava";
  *(v3 + 4392) = "dark khaki";
  *(v3 + 4376) = 17;
  *(v3 + 4384) = 2;
  *(v3 + 4344) = "dark green";
  *(v3 + 4352) = 10;
  *(v3 + 4360) = 2;
  *(v3 + 4368) = "dark jungle green";
  *(v3 + 4312) = 2;
  *(v3 + 4320) = "dark gray";
  *(v3 + 4328) = 9;
  *(v3 + 4336) = 2;
  *(v3 + 4296) = "dark goldenrod";
  *(v3 + 4288) = 2;
  *(v3 + 4304) = 14;
  *(v3 + 4272) = "dark electric blue";
  *(v3 + 4256) = 9;
  *(v3 + 4264) = 2;
  *(v3 + 4280) = 18;
  *(v3 + 1784) = 15;
  *(v3 + 4248) = "dark cyan";
  *(v3 + 4232) = 10;
  *(v3 + 4240) = 2;
  *(v3 + 4200) = "dark chestnut";
  *(v3 + 4192) = 2;
  *(v3 + 4208) = 13;
  *(v3 + 4216) = 2;
  *(v3 + 4176) = "dark cerulean";
  *(v3 + 4160) = 20;
  *(v3 + 4168) = 2;
  *(v3 + 4184) = 13;
  *(v3 + 1792) = 2;
  *(v3 + 4152) = "dark candy apple red";
  *(v3 + 4136) = 14;
  *(v3 + 4144) = 2;
  *(v3 + 4104) = "dark brown";
  *(v3 + 4096) = 2;
  *(v3 + 4112) = 10;
  *(v3 + 4120) = 2;
  *(v3 + 4080) = "dark blue";
  *(v3 + 4064) = 9;
  *(v3 + 4072) = 2;
  *(v3 + 4088) = 9;
  *(v3 + 1808) = 12;
  *(v3 + 4056) = "dandelion";
  *(v3 + 4040) = 8;
  *(v3 + 4048) = 2;
  *(v3 + 4008) = "cyan";
  *(v3 + 4000) = 2;
  *(v3 + 4016) = 4;
  *(v3 + 4024) = 2;
  *(v3 + 3984) = "crimson glory";
  *(v3 + 3968) = 11;
  *(v3 + 3976) = 2;
  *(v3 + 3992) = 13;
  *(v3 + 1816) = 2;
  *(v3 + 3960) = "crimson red";
  *(v3 + 3944) = 7;
  *(v3 + 3952) = 2;
  *(v3 + 3912) = "cream";
  *(v3 + 3904) = 2;
  *(v3 + 3920) = 5;
  *(v3 + 3928) = 2;
  *(v3 + 3888) = "cotton candy";
  *(v3 + 3872) = 12;
  *(v3 + 3880) = 2;
  *(v3 + 3896) = 12;
  *(v3 + 1832) = 15;
  *(v3 + 3864) = "cosmic latte";
  *(v3 + 3848) = 8;
  *(v3 + 3856) = 2;
  *(v3 + 3816) = "cornflower blue";
  *(v3 + 3808) = 2;
  *(v3 + 3824) = 15;
  *(v3 + 3832) = 2;
  *(v3 + 3792) = "cornflower";
  *(v3 + 3776) = 11;
  *(v3 + 3784) = 2;
  *(v3 + 3800) = 10;
  *(v3 + 1840) = 2;
  *(v3 + 3768) = "cornell red";
  *(v3 + 3752) = 4;
  *(v3 + 3760) = 2;
  *(v3 + 3720) = "cordovan";
  *(v3 + 3712) = 2;
  *(v3 + 3728) = 8;
  *(v3 + 3736) = 2;
  *(v3 + 3696) = "coral red";
  *(v3 + 3680) = 10;
  *(v3 + 3688) = 2;
  *(v3 + 3704) = 9;
  *(v3 + 1856) = 13;
  *(v3 + 3672) = "coral pink";
  *(v3 + 3656) = 5;
  *(v3 + 3664) = 2;
  *(v3 + 3624) = "coquelicot";
  *(v3 + 3616) = 2;
  *(v3 + 3632) = 10;
  *(v3 + 3640) = 2;
  *(v3 + 3600) = "copper rose";
  *(v3 + 3584) = 6;
  *(v3 + 3592) = 2;
  *(v3 + 3608) = 11;
  *(v3 + 1864) = 2;
  *(v3 + 3576) = "copper";
  *(v3 + 3560) = 9;
  *(v3 + 3568) = 2;
  *(v3 + 3528) = "cool black";
  *(v3 + 3520) = 2;
  *(v3 + 3536) = 10;
  *(v3 + 3544) = 2;
  *(v3 + 3504) = "columbia blue";
  *(v3 + 3488) = 6;
  *(v3 + 3496) = 2;
  *(v3 + 3512) = 13;
  *(v3 + 1880) = 11;
  *(v3 + 3480) = "coffee";
  *(v3 + 3464) = 11;
  *(v3 + 3472) = 2;
  *(v3 + 3432) = "cobalt";
  *(v3 + 3424) = 2;
  *(v3 + 3440) = 6;
  *(v3 + 3448) = 2;
  *(v3 + 3408) = "classic rose";
  *(v3 + 3392) = 7;
  *(v3 + 3400) = 2;
  *(v3 + 3416) = 12;
  *(v3 + 1888) = 2;
  *(v3 + 3384) = "citrine";
  *(v3 + 3368) = 8;
  *(v3 + 3376) = 2;
  *(v3 + 3336) = "cinnabar";
  *(v3 + 3328) = 2;
  *(v3 + 3344) = 8;
  *(v3 + 3352) = 2;
  *(v3 + 3312) = "cinereous";
  *(v3 + 3296) = 13;
  *(v3 + 3304) = 2;
  *(v3 + 3320) = 9;
  *(v3 + 1904) = 16;
  *(v3 + 3288) = "chrome yellow";
  *(v3 + 3272) = 9;
  *(v3 + 3280) = 2;
  *(v3 + 3216) = "cherry blossom pink";
  *(v3 + 3248) = 8;
  *(v3 + 3256) = 2;
  *(v3 + 3264) = "chocolate";
  *(v3 + 3240) = "chestnut";
  *(v3 + 3224) = 19;
  *(v3 + 3232) = 2;
  *(v3 + 3192) = "cherry";
  *(v3 + 3184) = 2;
  *(v3 + 3200) = 6;
  *(v3 + 3208) = 2;
  *(v3 + 3168) = "chartreuse";
  *(v3 + 3152) = 8;
  *(v3 + 3160) = 2;
  *(v3 + 3176) = 10;
  *(v3 + 1912) = 2;
  *(v3 + 3144) = "charcoal";
  *(v3 + 3128) = 9;
  *(v3 + 3136) = 2;
  *(v3 + 3096) = "chamoisee";
  *(v3 + 3088) = 2;
  *(v3 + 3104) = 9;
  *(v3 + 3112) = 2;
  *(v3 + 3072) = "cerulean blue";
  *(v3 + 3056) = 8;
  *(v3 + 3064) = 2;
  *(v3 + 3080) = 13;
  *(v3 + 1928) = 18;
  *(v3 + 3048) = "cerulean";
  *(v3 + 3032) = 11;
  *(v3 + 3040) = 2;
  *(v3 + 3000) = "cerise";
  *(v3 + 2992) = 2;
  *(v3 + 3008) = 6;
  *(v3 + 3016) = 2;
  *(v3 + 2976) = "celestial blue";
  *(v3 + 2960) = 7;
  *(v3 + 2968) = 2;
  *(v3 + 2984) = 14;
  *(v3 + 1936) = 2;
  *(v3 + 2952) = "celeste";
  *(v3 + 2936) = 7;
  *(v3 + 2944) = 2;
  *(v3 + 2904) = "carrot orange";
  *(v3 + 2896) = 2;
  *(v3 + 2912) = 13;
  *(v3 + 2920) = 2;
  *(v3 + 2880) = "carolina blue";
  *(v3 + 2864) = 9;
  *(v3 + 2872) = 2;
  *(v3 + 2888) = 13;
  *(v3 + 1952) = 14;
  *(v3 + 2856) = "carnelian";
  *(v3 + 2840) = 14;
  *(v3 + 2848) = 2;
  *(v3 + 2808) = "carmine red";
  *(v3 + 2800) = 2;
  *(v3 + 2816) = 11;
  *(v3 + 2824) = 2;
  *(v3 + 2784) = "carmine pink";
  *(v3 + 2768) = 7;
  *(v3 + 2776) = 2;
  *(v3 + 2792) = 12;
  *(v3 + 1960) = 2;
  *(v3 + 2760) = "carmine";
  *(v3 + 2744) = 15;
  *(v3 + 2752) = 2;
  *(v3 + 2712) = "cardinal";
  *(v3 + 2704) = 2;
  *(v3 + 2720) = 8;
  *(v3 + 2728) = 2;
  *(v3 + 2688) = "caput mortuum";
  *(v3 + 2672) = 5;
  *(v3 + 2680) = 2;
  *(v3 + 2696) = 13;
  *(v3 + 1976) = 20;
  *(v3 + 2664) = "capri";
  *(v3 + 2648) = 10;
  *(v3 + 2656) = 2;
  *(v3 + 2616) = "candy apple red";
  *(v3 + 2608) = 2;
  *(v3 + 2624) = 15;
  *(v3 + 2632) = 2;
  *(v3 + 2592) = "canary yellow";
  *(v3 + 2576) = 6;
  *(v3 + 2584) = 2;
  *(v3 + 2600) = 13;
  *(v3 + 1984) = 2;
  *(v3 + 2568) = "canary";
  *(v3 + 2552) = 16;
  *(v3 + 2560) = 2;
  *(v3 + 2520) = "cambridge blue";
  *(v3 + 2528) = 14;
  *(v3 + 2536) = 2;
  *(v3 + 2544) = "camouflage green";
  *(v3 + 2488) = 2;
  *(v3 + 2496) = "cal poly pomona green";
  *(v3 + 2504) = 21;
  *(v3 + 2512) = 2;
  *(v3 + 1992) = "bronze";
  *(v3 + 2000) = 6;
  *(v3 + 2008) = 2;
  *(v3 + 2480) = 14;
  *(v3 + 2016) = "brown";
  *(v3 + 2024) = 5;
  *(v3 + 2032) = 2;
  *(v3 + 2040) = "bubble gum";
  *(v3 + 2048) = 10;
  *(v3 + 2056) = 2;
  *(v3 + 2064) = "buff";
  *(v3 + 2072) = 4;
  *(v3 + 2080) = 2;
  *(v3 + 2088) = "bulgarian rose";
  *(v3 + 2096) = 14;
  *(v3 + 2104) = 2;
  *(v3 + 2112) = "burgundy";
  *(v3 + 2120) = 8;
  *(v3 + 2128) = 2;
  *(v3 + 2136) = "burlywood";
  *(v3 + 2144) = 9;
  *(v3 + 2152) = 2;
  *(v3 + 2160) = "burnt orange";
  *(v3 + 2168) = 12;
  *(v3 + 2176) = 2;
  *(v3 + 2184) = "burnt sienna";
  *(v3 + 2192) = 12;
  *(v3 + 2200) = 2;
  *(v3 + 2208) = "burnt umber";
  *(v3 + 2216) = 11;
  *(v3 + 2224) = 2;
  *(v3 + 2232) = "byzantine";
  *(v3 + 2240) = 9;
  *(v3 + 2248) = 2;
  *(v3 + 2256) = "byzantium";
  *(v3 + 2264) = 9;
  *(v3 + 2272) = 2;
  *(v3 + 2280) = "cg blue";
  *(v3 + 2288) = 7;
  *(v3 + 2296) = 2;
  *(v3 + 2304) = "cg red";
  *(v3 + 2312) = 6;
  *(v3 + 2320) = 2;
  *(v3 + 2328) = "cadet";
  *(v3 + 2336) = 5;
  *(v3 + 2344) = 2;
  *(v3 + 2352) = "cadet blue";
  *(v3 + 2360) = 10;
  *(v3 + 2368) = 2;
  *(v3 + 2376) = "cadet grey";
  *(v3 + 2384) = 10;
  *(v3 + 2392) = 2;
  *(v3 + 2400) = "cadmium green";
  *(v3 + 2408) = 13;
  *(v3 + 2416) = 2;
  *(v3 + 2424) = "cadmium orange";
  *(v3 + 2432) = 14;
  *(v3 + 2440) = 2;
  *(v3 + 2448) = "cadmium red";
  *(v3 + 2456) = 11;
  *(v3 + 2464) = 2;
  *(v3 + 2472) = "cadmium yellow";
  *(v3 + 4448) = 13;
  *(v3 + 4456) = 2;
  *(v3 + 4464) = "dark magenta";
  *(v3 + 4472) = 12;
  *(v3 + 4480) = 2;
  *(v3 + 4488) = "dark midnight blue";
  *(v3 + 4496) = 18;
  *(v3 + 4504) = 2;
  *(v3 + 4512) = "dark olive green";
  *(v3 + 4520) = 16;
  *(v3 + 4528) = 2;
  *(v3 + 4536) = "dark orange";
  *(v3 + 4544) = 11;
  *(v3 + 4552) = 2;
  *(v3 + 4560) = "dark orchid";
  *(v3 + 4568) = 11;
  *(v3 + 4576) = 2;
  *(v3 + 4584) = "dark pastel blue";
  *(v3 + 4592) = 16;
  *(v3 + 4600) = 2;
  *(v3 + 4608) = "dark pastel green";
  *(v3 + 4616) = 17;
  *(v3 + 4624) = 2;
  *(v3 + 4632) = "dark pastel purple";
  *(v3 + 4640) = 18;
  *(v3 + 4648) = 2;
  *(v3 + 4656) = "dark pastel red";
  *(v3 + 4664) = 15;
  *(v3 + 4672) = 2;
  *(v3 + 4680) = "dark pink";
  *(v3 + 4688) = 9;
  *(v3 + 4696) = 2;
  *(v3 + 4704) = "dark powder blue";
  *(v3 + 4712) = 16;
  *(v3 + 4720) = 2;
  *(v3 + 4728) = "dark raspberry";
  *(v3 + 4736) = 14;
  *(v3 + 4744) = 2;
  *(v3 + 4752) = "dark red";
  *(v3 + 4760) = 8;
  *(v3 + 4768) = 2;
  *(v3 + 4776) = "dark salmon";
  *(v3 + 4784) = 11;
  *(v3 + 4792) = 2;
  *(v3 + 4800) = "dark scarlet";
  *(v3 + 4808) = 12;
  *(v3 + 4816) = 2;
  *(v3 + 4824) = "dark sea green";
  *(v3 + 4832) = 14;
  *(v3 + 4840) = 2;
  *(v3 + 4848) = "dark sienna";
  *(v3 + 4856) = 11;
  *(v3 + 4864) = 2;
  *(v3 + 4872) = "dark slate blue";
  *(v3 + 4880) = 15;
  *(v3 + 4888) = 2;
  *(v3 + 4896) = "dark slate gray";
  *(v3 + 4904) = 15;
  *(v3 + 4912) = 2;
  *(v3 + 4920) = "dark spring green";
  *(v3 + 4928) = 17;
  *(v3 + 4936) = 2;
  *(v3 + 4944) = "dark tan";
  *(v3 + 4952) = 8;
  *(v3 + 4960) = 2;
  *(v3 + 4968) = "dark tangerine";
  *(v3 + 4976) = 14;
  *(v3 + 4984) = 2;
  *(v3 + 4992) = "dark taupe";
  *(v3 + 5000) = 10;
  *(v3 + 5008) = 2;
  *(v3 + 5016) = "dark terra cotta";
  *(v3 + 5040) = "dark turquoise";
  *(v3 + 5064) = "dark violet";
  *(v3 + 5088) = "dark yellow";
  *(v3 + 5112) = "dartmouth green";
  *(v3 + 5136) = "davy grey";
  *(v3 + 5160) = "deep carmine";
  *(v3 + 5184) = "deep carmine pink";
  *(v3 + 5208) = "deep carrot orange";
  *(v3 + 5232) = "deep cerise";
  *(v3 + 5256) = "deep champagne";
  *(v3 + 5280) = "deep chestnut";
  *(v3 + 5304) = "deep coffee";
  *(v3 + 5328) = "deep fuchsia";
  *(v3 + 5352) = "deep jungle green";
  *(v3 + 5376) = "deep lilac";
  *(v3 + 5400) = "deep magenta";
  *(v3 + 5424) = "deep peach";
  *(v3 + 5448) = "deep pink";
  *(v3 + 5472) = "deep saffron";
  *(v3 + 5496) = "deep sky blue";
  *(v3 + 5520) = "denim";
  *(v3 + 5544) = "desert";
  *(v3 + 5568) = "desert sand";
  *(v3 + 5592) = "dim gray";
  *(v3 + 5616) = "dodger blue";
  *(v3 + 5640) = "dogwood rose";
  *(v3 + 5664) = "dollar bill";
  *(v3 + 5688) = "drab";
  *(v3 + 5712) = "duke blue";
  *(v3 + 5736) = "earth yellow";
  *(v3 + 5760) = "ecru";
  *(v3 + 5784) = "eggplant";
  *(v3 + 5808) = "eggshell";
  *(v3 + 5832) = "egyptian blue";
  *(v3 + 5856) = "electric blue";
  *(v3 + 5880) = "electric crimson";
  *(v3 + 5904) = "electric cyan";
  *(v3 + 5928) = "electric indigo";
  *(v3 + 5952) = "electric lavender";
  *(v3 + 5976) = "electric lime";
  *(v3 + 6000) = "electric purple";
  *(v3 + 6024) = "electric ultramarine";
  *(v3 + 6048) = "electric violet";
  *(v3 + 6072) = "emerald";
  *(v3 + 6096) = "eton blue";
  *(v3 + 6120) = "fallow";
  *(v3 + 6144) = "falu red";
  *(v3 + 6168) = "fashion fuchsia";
  *(v3 + 6192) = "fawn";
  *(v3 + 6216) = "fern";
  *(v3 + 6240) = "fern green";
  *(v3 + 6264) = "ferrari red";
  *(v3 + 6288) = "field drab";
  *(v3 + 6312) = "fire engine red";
  *(v3 + 6336) = "firebrick";
  *(v3 + 6360) = "flame";
  *(v3 + 6384) = "flamingo pink";
  *(v3 + 6408) = "flavescent";
  *(v3 + 6432) = "flax";
  *(v3 + 6456) = "floral white";
  *(v3 + 6480) = "fluorescent orange";
  *(v3 + 6504) = "fluorescent pink";
  *(v3 + 6528) = "fluorescent yellow";
  *(v3 + 6552) = "folly";
  *(v3 + 6576) = "forest green";
  *(v3 + 6600) = "french beige";
  *(v3 + 6624) = "french blue";
  *(v3 + 6648) = "french lilac";
  *(v3 + 6672) = "french rose";
  *(v3 + 6696) = "fuchsia";
  *(v3 + 6720) = "fuchsia pink";
  *(v3 + 6744) = "fuzzy wuzzy";
  *(v3 + 6768) = "gainsboro";
  *(v3 + 6792) = "gamboge";
  *(v3 + 6816) = "ghost white";
  *(v3 + 6840) = "ginger";
  *(v3 + 6864) = "glaucous";
  *(v3 + 6888) = "glitter";
  *(v3 + 6912) = "gold";
  *(v3 + 6936) = "golden brown";
  *(v3 + 6960) = "golden poppy";
  *(v3 + 6984) = "golden yellow";
  *(v3 + 7008) = "goldenrod";
  *(v3 + 7032) = "granny smith apple";
  *(v3 + 7056) = "gray";
  *(v3 + 7080) = "green";
  *(v3 + 7104) = "green blue";
  *(v3 + 7128) = "green yellow";
  *(v3 + 7152) = "grullo";
  *(v3 + 7176) = "guppie green";
  *(v3 + 7200) = "han blue";
  *(v3 + 7224) = "han purple";
  *(v3 + 7248) = "hansa yellow";
  *(v3 + 7272) = "harvard crimson";
  *(v3 + 7296) = "harvest gold";
  *(v3 + 7320) = "heart gold";
  *(v3 + 7344) = "heliotrope";
  *(v3 + 7368) = "hollywood cerise";
  *(v3 + 7392) = "honeydew";
  *(v3 + 7416) = "hot magenta";
  *(v3 + 7440) = "hot pink";
  *(v3 + 7464) = "icterine";
  *(v3 + 7488) = "incandescent";
  *(v3 + 7512) = "indigo";
  *(v3 + 7536) = "international klein blue";
  *(v3 + 7544) = 24;
  *(v3 + 7560) = "international orange";
  *(v3 + 7584) = "iris";
  *(v3 + 7608) = "isabelline";
  *(v3 + 7632) = "ivory";
  *(v3 + 7656) = "jade";
  *(v3 + 7680) = "jasmine";
  *(v3 + 7704) = "jasper";
  *(v3 + 7728) = "jazzberry jam";
  *(v3 + 7752) = "jonquil";
  *(v3 + 7776) = "june bud";
  *(v3 + 7800) = "jungle green";
  *(v3 + 7824) = "kelly green";
  *(v3 + 7848) = "khaki";
  *(v3 + 7872) = "la salle green";
  *(v3 + 7896) = "languid lavender";
  *(v3 + 7920) = "lapis lazuli";
  *(v3 + 7944) = "laser lemon";
  *(v3 + 7992) = "lava";
  *(v3 + 8016) = "lavender";
  *(v3 + 8040) = "lavender blue";
  *(v3 + 8064) = "lavender blush";
  *(v3 + 8088) = "lavender gray";
  *(v3 + 8112) = "lavender indigo";
  *(v3 + 8136) = "lavender mist";
  *(v3 + 8160) = "lavender pink";
  *(v3 + 8184) = "lavender purple";
  *(v3 + 8208) = "lavender rose";
  *(v3 + 8232) = "lawn green";
  *(v3 + 8256) = "lemon";
  *(v3 + 8280) = "lemon yellow";
  *(v3 + 8304) = "lemon chiffon";
  *(v3 + 8328) = "lemon lime";
  *(v3 + 8352) = "light crimson";
  *(v3 + 8376) = "light thulian pink";
  *(v3 + 8400) = "light apricot";
  *(v3 + 8424) = "light blue";
  *(v3 + 8448) = "light brown";
  *(v3 + 8472) = "light carmine pink";
  *(v3 + 8496) = "light coral";
  *(v3 + 8520) = "light cornflower blue";
  *(v3 + 8528) = 21;
  *(v3 + 8544) = "light cyan";
  *(v3 + 8568) = "light fuchsia pink";
  *(v3 + 8592) = "light goldenrod yellow";
  *(v3 + 8616) = "light gray";
  *(v3 + 8640) = "light green";
  *(v3 + 8648) = 11;
  *(v3 + 8656) = 2;
  *(v3 + 8664) = "light khaki";
  *(v3 + 8672) = 11;
  *(v3 + 8680) = 2;
  *(v3 + 8688) = "light pastel purple";
  *(v3 + 8696) = 19;
  *(v3 + 8704) = 2;
  *(v3 + 8712) = "light pink";
  *(v3 + 8720) = 10;
  *(v3 + 8728) = 2;
  *(v3 + 8736) = "light salmon";
  *(v3 + 8744) = 12;
  *(v3 + 8752) = 2;
  *(v3 + 8760) = "light salmon pink";
  *(v3 + 8768) = 17;
  *(v3 + 8776) = 2;
  *(v3 + 8784) = "light sea green";
  *(v3 + 8792) = 15;
  *(v3 + 8800) = 2;
  *(v3 + 8808) = "light sky blue";
  *(v3 + 8816) = 14;
  *(v3 + 8824) = 2;
  *(v3 + 8832) = "light slate gray";
  *(v3 + 8856) = "light taupe";
  *(v3 + 8880) = "light yellow";
  *(v3 + 8904) = "lilac";
  *(v3 + 8928) = "lime";
  *(v3 + 8952) = "lime green";
  *(v3 + 8976) = "lincoln green";
  *(v3 + 9000) = "linen";
  *(v3 + 9024) = "lion";
  *(v3 + 9040) = 2;
  *(v3 + 9048) = "msu green";
  *(v3 + 9072) = "magenta";
  *(v3 + 9096) = "magic mint";
  *(v3 + 9120) = "magnolia";
  *(v3 + 9144) = "mahogany";
  *(v3 + 9168) = "maize";
  *(v3 + 9192) = "majorelle blue";
  *(v3 + 9216) = "malachite";
  *(v3 + 9240) = "mango tango";
  *(v3 + 9264) = "maroon";
  *(v3 + 9288) = "mauve";
  *(v3 + 9312) = "mauve taupe";
  *(v3 + 9336) = "mauvelous";
  *(v3 + 9360) = "medium persian blue";
  *(v3 + 9384) = "medium aquamarine";
  *(v3 + 9408) = "medium blue";
  *(v3 + 9432) = "medium candy apple red";
  *(v3 + 9456) = "medium carmine";
  *(v3 + 9480) = "medium champagne";
  *(v3 + 9504) = "medium electric blue";
  *(v3 + 9528) = "medium jungle green";
  *(v3 + 9552) = "medium lavender magenta";
  *(v3 + 9576) = "medium orchid";
  *(v3 + 9600) = "medium purple";
  *(v3 + 9624) = "medium red violet";
  *(v3 + 9648) = "medium sea green";
  *(v3 + 9672) = "medium slate blue";
  *(v3 + 9696) = "medium spring green";
  *(v3 + 9720) = "medium taupe";
  *(v3 + 9744) = "medium teal blue";
  *(v3 + 9768) = "medium turquoise";
  *(v3 + 9792) = "medium violet red";
  *(v3 + 9816) = "melon";
  *(v3 + 9840) = "midnight blue";
  *(v3 + 9864) = "midnight green";
  *(v3 + 9888) = "mikado yellow";
  *(v3 + 9912) = "mint";
  *(v3 + 9936) = "mint cream";
  *(v3 + 9960) = "mint green";
  *(v3 + 9984) = "misty rose";
  *(v3 + 10008) = "moccasin";
  *(v3 + 10032) = "mode beige";
  *(v3 + 10056) = "moonstone blue";
  *(v3 + 10080) = "mordant red 19";
  *(v3 + 10104) = "moss green";
  *(v3 + 10128) = "mountain meadow";
  *(v3 + 10152) = "mountbatten pink";
  *(v3 + 10176) = "mulberry";
  *(v3 + 10200) = "munsell";
  *(v3 + 10224) = "mustard";
  *(v3 + 10248) = "myrtle";
  *(v3 + 10272) = "nadeshiko pink";
  *(v3 + 10296) = "napier green";
  *(v3 + 10320) = "naples yellow";
  *(v3 + 10344) = "navajo white";
  *(v3 + 10368) = "navy blue";
  *(v3 + 10392) = "neon carrot";
  *(v3 + 10416) = "neon fuchsia";
  *(v3 + 10440) = "neon green";
  *(v3 + 10464) = "north texas green";
  *(v3 + 10488) = "ocean boat blue";
  *(v3 + 10512) = "ochre";
  *(v3 + 10536) = "office green";
  *(v3 + 10560) = "old gold";
  *(v3 + 10584) = "old lace";
  *(v3 + 10608) = "old lavender";
  *(v3 + 10632) = "old mauve";
  *(v3 + 10656) = "old rose";
  *(v3 + 10680) = "olive";
  *(v3 + 10704) = "olive drab";
  *(v3 + 10728) = "olive green";
  *(v3 + 10752) = "olivine";
  *(v3 + 10776) = "onyx";
  *(v3 + 10800) = "opera mauve";
  *(v3 + 10824) = "orange";
  *(v3 + 10848) = "orange yellow";
  *(v3 + 10872) = "orange peel";
  *(v3 + 10896) = "orange red";
  *(v3 + 10920) = "orchid";
  *(v3 + 10944) = "otter brown";
  *(v3 + 10968) = "outer space";
  *(v3 + 10992) = "outrageous orange";
  *(v3 + 11568) = "paris green";
  *(v3 + 11664) = "pastel green";
  *(v3 + 11760) = "pastel purple";
  *(v3 + 11856) = "payne grey";
  *(v3 + 11952) = "pear";
  *(v3 + 12048) = "periwinkle";
  *(v3 + 12144) = "persian pink";
  *(v3 + 12240) = "phlox";
  *(v3 + 8600) = 22;
  *(v3 + 8608) = 2;
  *(v3 + 8624) = 10;
  *(v3 + 8632) = 2;
  *(v3 + 5024) = 16;
  *(v3 + 5032) = 2;
  *(v3 + 8552) = 10;
  *(v3 + 8560) = 2;
  *(v3 + 8576) = 18;
  *(v3 + 8584) = 2;
  *(v3 + 5048) = 14;
  *(v3 + 5056) = 2;
  *(v3 + 5072) = 11;
  *(v3 + 8504) = 11;
  *(v3 + 8512) = 2;
  *(v3 + 8536) = 2;
  *(v3 + 5080) = 2;
  *(v3 + 5096) = 11;
  *(v3 + 8456) = 11;
  *(v3 + 8464) = 2;
  *(v3 + 8480) = 18;
  *(v3 + 8488) = 2;
  *(v3 + 5104) = 2;
  *(v3 + 5120) = 15;
  *(v3 + 8408) = 13;
  *(v3 + 8416) = 2;
  *(v3 + 8432) = 10;
  *(v3 + 8440) = 2;
  *(v3 + 5128) = 2;
  *(v3 + 5144) = 9;
  *(v3 + 8360) = 13;
  *(v3 + 8368) = 2;
  *(v3 + 8384) = 18;
  *(v3 + 8392) = 2;
  *(v3 + 5152) = 2;
  *(v3 + 5168) = 12;
  *(v3 + 8312) = 13;
  *(v3 + 8320) = 2;
  *(v3 + 8336) = 10;
  *(v3 + 8344) = 2;
  *(v3 + 5176) = 2;
  *(v3 + 5192) = 17;
  *(v3 + 8264) = 5;
  *(v3 + 8272) = 2;
  *(v3 + 8288) = 12;
  *(v3 + 8296) = 2;
  *(v3 + 5200) = 2;
  *(v3 + 5216) = 18;
  *(v3 + 8216) = 13;
  *(v3 + 8224) = 2;
  *(v3 + 8240) = 10;
  *(v3 + 8248) = 2;
  *(v3 + 5224) = 2;
  *(v3 + 8168) = 13;
  *(v3 + 8176) = 2;
  *(v3 + 0x2000) = 15;
  *(v3 + 7952) = 11;
  *(v3 + 8200) = 2;
  *(v3 + 5240) = 11;
  *(v3 + 5248) = 2;
  *(v3 + 8120) = 15;
  *(v3 + 8128) = 2;
  *(v3 + 8144) = 13;
  *(v3 + 8152) = 2;
  *(v3 + 5264) = 14;
  *(v3 + 5272) = 2;
  *(v3 + 8072) = 14;
  *(v3 + 8080) = 2;
  *(v3 + 8096) = 13;
  *(v3 + 8104) = 2;
  *(v3 + 5288) = 13;
  *(v3 + 5296) = 2;
  *(v3 + 8024) = 8;
  *(v3 + 8032) = 2;
  *(v3 + 8048) = 13;
  *(v3 + 8056) = 2;
  *(v3 + 5312) = 11;
  *(v3 + 5320) = 2;
  *(v3 + 5336) = 12;
  *(v3 + 7984) = 2;
  *(v3 + 8000) = 4;
  *(v3 + 8008) = 2;
  *(v3 + 5344) = 2;
  *(v3 + 5360) = 17;
  *(v3 + 7904) = 16;
  *(v3 + 7912) = 2;
  *(v3 + 7928) = 12;
  *(v3 + 7936) = 2;
  *(v3 + 5368) = 2;
  *(v3 + 5384) = 10;
  *(v3 + 7856) = 5;
  *(v3 + 7864) = 2;
  *(v3 + 7880) = 14;
  *(v3 + 7888) = 2;
  *(v3 + 5392) = 2;
  *(v3 + 5408) = 12;
  *(v3 + 7808) = 12;
  *(v3 + 7816) = 2;
  *(v3 + 7832) = 11;
  *(v3 + 7840) = 2;
  *(v3 + 5416) = 2;
  *(v3 + 5432) = 10;
  *(v3 + 7760) = 7;
  *(v3 + 7768) = 2;
  *(v3 + 7784) = 8;
  *(v3 + 7792) = 2;
  *(v3 + 5440) = 2;
  *(v3 + 5456) = 9;
  *(v3 + 7712) = 6;
  *(v3 + 7720) = 2;
  *(v3 + 7736) = 13;
  *(v3 + 7744) = 2;
  *(v3 + 5464) = 2;
  *(v3 + 5480) = 12;
  *(v3 + 7664) = 4;
  *(v3 + 7672) = 2;
  *(v3 + 7688) = 7;
  *(v3 + 7696) = 2;
  *(v3 + 5488) = 2;
  *(v3 + 5504) = 13;
  *(v3 + 7616) = 10;
  *(v3 + 7624) = 2;
  *(v3 + 7640) = 5;
  *(v3 + 7648) = 2;
  *(v3 + 5512) = 2;
  *(v3 + 5528) = 5;
  *(v3 + 7568) = 20;
  *(v3 + 7576) = 2;
  *(v3 + 7592) = 4;
  *(v3 + 7600) = 2;
  *(v3 + 5536) = 2;
  *(v3 + 5552) = 6;
  *(v3 + 5560) = 2;
  *(v3 + 7520) = 6;
  *(v3 + 7528) = 2;
  *(v3 + 7552) = 2;
  *(v3 + 5576) = 11;
  *(v3 + 5584) = 2;
  *(v3 + 7472) = 8;
  *(v3 + 7480) = 2;
  *(v3 + 7496) = 12;
  *(v3 + 7504) = 2;
  *(v3 + 5600) = 8;
  *(v3 + 5608) = 2;
  *(v3 + 7424) = 11;
  *(v3 + 7432) = 2;
  *(v3 + 7448) = 8;
  *(v3 + 7456) = 2;
  *(v3 + 5624) = 11;
  *(v3 + 5632) = 2;
  *(v3 + 7376) = 16;
  *(v3 + 7384) = 2;
  *(v3 + 7400) = 8;
  *(v3 + 7408) = 2;
  *(v3 + 5648) = 12;
  *(v3 + 5656) = 2;
  *(v3 + 7328) = 10;
  *(v3 + 7336) = 2;
  *(v3 + 7352) = 10;
  *(v3 + 7360) = 2;
  *(v3 + 5672) = 11;
  *(v3 + 5680) = 2;
  *(v3 + 7280) = 15;
  *(v3 + 7288) = 2;
  *(v3 + 7304) = 12;
  *(v3 + 7312) = 2;
  *(v3 + 5696) = 4;
  *(v3 + 5704) = 2;
  *(v3 + 7232) = 10;
  *(v3 + 7240) = 2;
  *(v3 + 7256) = 12;
  *(v3 + 7264) = 2;
  *(v3 + 5720) = 9;
  *(v3 + 5728) = 2;
  *(v3 + 7184) = 12;
  *(v3 + 7192) = 2;
  *(v3 + 7208) = 8;
  *(v3 + 7216) = 2;
  *(v3 + 5744) = 12;
  *(v3 + 5752) = 2;
  *(v3 + 7136) = 12;
  *(v3 + 7144) = 2;
  *(v3 + 7160) = 6;
  *(v3 + 7168) = 2;
  *(v3 + 5768) = 4;
  *(v3 + 5776) = 2;
  *(v3 + 7088) = 5;
  *(v3 + 7096) = 2;
  *(v3 + 7112) = 10;
  *(v3 + 7120) = 2;
  *(v3 + 5792) = 8;
  *(v3 + 5800) = 2;
  *(v3 + 7040) = 18;
  *(v3 + 7048) = 2;
  *(v3 + 7064) = 4;
  *(v3 + 7072) = 2;
  *(v3 + 5816) = 8;
  *(v3 + 5824) = 2;
  *(v3 + 6992) = 13;
  *(v3 + 7000) = 2;
  *(v3 + 7016) = 9;
  *(v3 + 7024) = 2;
  *(v3 + 5840) = 13;
  *(v3 + 5848) = 2;
  *(v3 + 6944) = 12;
  *(v3 + 6952) = 2;
  *(v3 + 6968) = 12;
  *(v3 + 6976) = 2;
  *(v3 + 5864) = 13;
  *(v3 + 5872) = 2;
  *(v3 + 6896) = 7;
  *(v3 + 6904) = 2;
  *(v3 + 6920) = 4;
  *(v3 + 6928) = 2;
  *(v3 + 5888) = 16;
  *(v3 + 5896) = 2;
  *(v3 + 6848) = 6;
  *(v3 + 6856) = 2;
  *(v3 + 6872) = 8;
  *(v3 + 6880) = 2;
  *(v3 + 5912) = 13;
  *(v3 + 5920) = 2;
  *(v3 + 6800) = 7;
  *(v3 + 6808) = 2;
  *(v3 + 6824) = 11;
  *(v3 + 6832) = 2;
  *(v3 + 5936) = 15;
  *(v3 + 5944) = 2;
  *(v3 + 6752) = 11;
  *(v3 + 6760) = 2;
  *(v3 + 6776) = 9;
  *(v3 + 6784) = 2;
  *(v3 + 5960) = 17;
  *(v3 + 5968) = 2;
  *(v3 + 6704) = 7;
  *(v3 + 6712) = 2;
  *(v3 + 6728) = 12;
  *(v3 + 6736) = 2;
  *(v3 + 5984) = 13;
  *(v3 + 5992) = 2;
  *(v3 + 6656) = 12;
  *(v3 + 6664) = 2;
  *(v3 + 6680) = 11;
  *(v3 + 6688) = 2;
  *(v3 + 6008) = 15;
  *(v3 + 6016) = 2;
  *(v3 + 6608) = 12;
  *(v3 + 6616) = 2;
  *(v3 + 6632) = 11;
  *(v3 + 6640) = 2;
  *(v3 + 6032) = 20;
  *(v3 + 6040) = 2;
  *(v3 + 6560) = 5;
  *(v3 + 6568) = 2;
  *(v3 + 6584) = 12;
  *(v3 + 6592) = 2;
  *(v3 + 6056) = 15;
  *(v3 + 6064) = 2;
  *(v3 + 6512) = 16;
  *(v3 + 6520) = 2;
  *(v3 + 6536) = 18;
  *(v3 + 6544) = 2;
  *(v3 + 6080) = 7;
  *(v3 + 6088) = 2;
  *(v3 + 6464) = 12;
  *(v3 + 6472) = 2;
  *(v3 + 6488) = 18;
  *(v3 + 6496) = 2;
  *(v3 + 6104) = 9;
  *(v3 + 6112) = 2;
  *(v3 + 6416) = 10;
  *(v3 + 6424) = 2;
  *(v3 + 6440) = 4;
  *(v3 + 6448) = 2;
  *(v3 + 6128) = 6;
  *(v3 + 6136) = 2;
  *(v3 + 6368) = 5;
  *(v3 + 6376) = 2;
  *(v3 + 6392) = 13;
  *(v3 + 6400) = 2;
  *(v3 + 6152) = 8;
  *(v3 + 6160) = 2;
  *(v3 + 6320) = 15;
  *(v3 + 6328) = 2;
  *(v3 + 6344) = 9;
  *(v3 + 6352) = 2;
  *(v3 + 6176) = 15;
  *(v3 + 6184) = 2;
  *(v3 + 6272) = 11;
  *(v3 + 6280) = 2;
  *(v3 + 6296) = 10;
  *(v3 + 6304) = 2;
  *(v3 + 6200) = 4;
  *(v3 + 6208) = 2;
  *(v3 + 6224) = 4;
  *(v3 + 6232) = 2;
  *(v3 + 6248) = 10;
  *(v3 + 6256) = 2;
  *(v3 + 8840) = 16;
  *(v3 + 8848) = 2;
  *(v3 + 8864) = 11;
  *(v3 + 8872) = 2;
  *(v3 + 8888) = 12;
  *(v3 + 8896) = 2;
  *(v3 + 8912) = 5;
  *(v3 + 8920) = 2;
  *(v3 + 8936) = 4;
  *(v3 + 8944) = 2;
  *(v3 + 8960) = 10;
  *(v3 + 8968) = 2;
  *(v3 + 8984) = 13;
  *(v3 + 8992) = 2;
  *(v3 + 9008) = 5;
  *(v3 + 9016) = 2;
  *(v3 + 9032) = 4;
  *(v3 + 9056) = 9;
  *(v3 + 9064) = 2;
  *(v3 + 9080) = 7;
  *(v3 + 9088) = 2;
  *(v3 + 9104) = 10;
  *(v3 + 9112) = 2;
  *(v3 + 9128) = 8;
  *(v3 + 9136) = 2;
  *(v3 + 9152) = 8;
  *(v3 + 9160) = 2;
  *(v3 + 9176) = 5;
  *(v3 + 9184) = 2;
  *(v3 + 9200) = 14;
  *(v3 + 9208) = 2;
  *(v3 + 9224) = 9;
  *(v3 + 9232) = 2;
  *(v3 + 9248) = 11;
  *(v3 + 9256) = 2;
  *(v3 + 9272) = 6;
  *(v3 + 9280) = 2;
  *(v3 + 9296) = 5;
  *(v3 + 9304) = 2;
  *(v3 + 9320) = 11;
  *(v3 + 9328) = 2;
  *(v3 + 9344) = 9;
  *(v3 + 9352) = 2;
  *(v3 + 9368) = 19;
  *(v3 + 9376) = 2;
  *(v3 + 9392) = 17;
  *(v3 + 9400) = 2;
  *(v3 + 9416) = 11;
  *(v3 + 9424) = 2;
  *(v3 + 9440) = 22;
  *(v3 + 9448) = 2;
  *(v3 + 9464) = 14;
  *(v3 + 9472) = 2;
  *(v3 + 9488) = 16;
  *(v3 + 9496) = 2;
  *(v3 + 9512) = 20;
  *(v3 + 9520) = 2;
  *(v3 + 9536) = 19;
  *(v3 + 9544) = 2;
  *(v3 + 9560) = 23;
  *(v3 + 9568) = 2;
  *(v3 + 9584) = 13;
  *(v3 + 9592) = 2;
  *(v3 + 9608) = 13;
  *(v3 + 9616) = 2;
  *(v3 + 9632) = 17;
  *(v3 + 9640) = 2;
  *(v3 + 9656) = 16;
  *(v3 + 9664) = 2;
  *(v3 + 9680) = 17;
  *(v3 + 9688) = 2;
  *(v3 + 9704) = 19;
  *(v3 + 9712) = 2;
  *(v3 + 9728) = 12;
  *(v3 + 9736) = 2;
  *(v3 + 9752) = 16;
  *(v3 + 9760) = 2;
  *(v3 + 9776) = 16;
  *(v3 + 9784) = 2;
  *(v3 + 9800) = 17;
  *(v3 + 9808) = 2;
  *(v3 + 9824) = 5;
  *(v3 + 9832) = 2;
  *(v3 + 9848) = 13;
  *(v3 + 9856) = 2;
  *(v3 + 9872) = 14;
  *(v3 + 9880) = 2;
  *(v3 + 9896) = 13;
  *(v3 + 9904) = 2;
  *(v3 + 9920) = 4;
  *(v3 + 9928) = 2;
  *(v3 + 9944) = 10;
  *(v3 + 9952) = 2;
  *(v3 + 9968) = 10;
  *(v3 + 9976) = 2;
  *(v3 + 9992) = 10;
  *(v3 + 10000) = 2;
  *(v3 + 10016) = 8;
  *(v3 + 10024) = 2;
  *(v3 + 10040) = 10;
  *(v3 + 10048) = 2;
  *(v3 + 10064) = 14;
  *(v3 + 10072) = 2;
  *(v3 + 10088) = 14;
  *(v3 + 10096) = 2;
  *(v3 + 10112) = 10;
  *(v3 + 10120) = 2;
  *(v3 + 10136) = 15;
  *(v3 + 10144) = 2;
  *(v3 + 10160) = 16;
  *(v3 + 10168) = 2;
  *(v3 + 10184) = 8;
  *(v3 + 10192) = 2;
  *(v3 + 10208) = 7;
  *(v3 + 10216) = 2;
  *(v3 + 10232) = 7;
  *(v3 + 10240) = 2;
  *(v3 + 10256) = 6;
  *(v3 + 10264) = 2;
  *(v3 + 10280) = 14;
  *(v3 + 10288) = 2;
  *(v3 + 10304) = 12;
  *(v3 + 10312) = 2;
  *(v3 + 10328) = 13;
  *(v3 + 10336) = 2;
  *(v3 + 10352) = 12;
  *(v3 + 10360) = 2;
  *(v3 + 10376) = 9;
  *(v3 + 10384) = 2;
  *(v3 + 10400) = 11;
  *(v3 + 10408) = 2;
  *(v3 + 10424) = 12;
  *(v3 + 10432) = 2;
  *(v3 + 10448) = 10;
  *(v3 + 10456) = 2;
  *(v3 + 10472) = 17;
  *(v3 + 10480) = 2;
  *(v3 + 10496) = 15;
  *(v3 + 10504) = 2;
  *(v3 + 10520) = 5;
  *(v3 + 10528) = 2;
  *(v3 + 10544) = 12;
  *(v3 + 10552) = 2;
  *(v3 + 10568) = 8;
  *(v3 + 7960) = 2;
  *(v3 + 12360) = "pink";
  *(v3 + 12456) = "pistachio";
  *(v3 + 12552) = "powder blue";
  *(v3 + 12624) = "psychedelic purple";
  *(v3 + 12648) = "puce";
  *(v3 + 12720) = "purple heart";
  *(v3 + 12752) = 25;
  *(v3 + 12768) = "purple mountain majesty";
  *(v3 + 12936) = "raspberry rose";
  *(v3 + 13032) = "red";
  *(v3 + 13104) = "red violet";
  *(v3 + 13200) = "rich lilac";
  *(v3 + 13296) = "rose bonbon";
  *(v3 + 13392) = "rose quartz";
  *(v3 + 13488) = "rosso corsa";
  *(v3 + 13584) = "royal fuchsia";
  *(v3 + 13680) = "ruddy pink";
  *(v3 + 13776) = "sacramento state green";
  *(v3 + 13896) = "salmon";
  *(v3 + 13992) = "sandstorm";
  *(v3 + 14088) = "sapphire";
  *(v3 + 14184) = "screamin green";
  *(v3 + 14280) = "seashell";
  *(v3 + 14376) = "shamrock";
  *(v3 + 14472) = "silver";
  *(v3 + 14568) = "slate blue";
  *(v3 + 14664) = "smoky black";
  *(v3 + 14760) = "steel blue";
  *(v3 + 14856) = "straw";
  *(v3 + 10576) = 2;
  *(v3 + 14952) = "sunset orange";
  *(v3 + 14960) = 13;
  *(v3 + 14968) = 2;
  *(v3 + 14928) = "sunset";
  *(v3 + 14920) = 2;
  *(v3 + 14936) = 6;
  *(v3 + 14944) = 2;
  *(v3 + 14904) = "sunlight";
  *(v3 + 14888) = 7;
  *(v3 + 14896) = 2;
  *(v3 + 14912) = 8;
  *(v3 + 10592) = 8;
  *(v3 + 14880) = "sunglow";
  *(v3 + 14864) = 5;
  *(v3 + 14872) = 2;
  *(v3 + 14832) = "stormcloud";
  *(v3 + 14824) = 2;
  *(v3 + 14840) = 10;
  *(v3 + 14848) = 2;
  *(v3 + 14808) = "stizza";
  *(v3 + 14792) = 20;
  *(v3 + 14800) = 2;
  *(v3 + 14816) = 6;
  *(v3 + 10600) = 2;
  *(v3 + 14784) = "stil de grain yellow";
  *(v3 + 14768) = 10;
  *(v3 + 14776) = 2;
  *(v3 + 14736) = "spring green";
  *(v3 + 14728) = 2;
  *(v3 + 14744) = 12;
  *(v3 + 14752) = 2;
  *(v3 + 14712) = "spiro disco ball";
  *(v3 + 14696) = 4;
  *(v3 + 14704) = 2;
  *(v3 + 14720) = 16;
  *(v3 + 10616) = 12;
  *(v3 + 14688) = "snow";
  *(v3 + 14672) = 11;
  *(v3 + 14680) = 2;
  *(v3 + 14640) = "smokey topaz";
  *(v3 + 14632) = 2;
  *(v3 + 14648) = 12;
  *(v3 + 14656) = 2;
  *(v3 + 14616) = "smalt";
  *(v3 + 14600) = 10;
  *(v3 + 14608) = 2;
  *(v3 + 14624) = 5;
  *(v3 + 10624) = 2;
  *(v3 + 14592) = "slate gray";
  *(v3 + 14576) = 10;
  *(v3 + 14584) = 2;
  *(v3 + 14544) = "sky magenta";
  *(v3 + 14536) = 2;
  *(v3 + 14552) = 11;
  *(v3 + 14560) = 2;
  *(v3 + 14520) = "sky blue";
  *(v3 + 14504) = 9;
  *(v3 + 14512) = 2;
  *(v3 + 14528) = 8;
  *(v3 + 10640) = 9;
  *(v3 + 14496) = "skobeloff";
  *(v3 + 14480) = 6;
  *(v3 + 14488) = 2;
  *(v3 + 14448) = "sienna";
  *(v3 + 14440) = 2;
  *(v3 + 14456) = 6;
  *(v3 + 14464) = 2;
  *(v3 + 14424) = "shocking pink";
  *(v3 + 14408) = 14;
  *(v3 + 14416) = 2;
  *(v3 + 14432) = 13;
  *(v3 + 10648) = 2;
  *(v3 + 14400) = "shamrock green";
  *(v3 + 14384) = 8;
  *(v3 + 14392) = 2;
  *(v3 + 14352) = "shadow";
  *(v3 + 14344) = 2;
  *(v3 + 14360) = 6;
  *(v3 + 14368) = 2;
  *(v3 + 14328) = "sepia";
  *(v3 + 14312) = 16;
  *(v3 + 14320) = 2;
  *(v3 + 14336) = 5;
  *(v3 + 10664) = 8;
  *(v3 + 14304) = "selective yellow";
  *(v3 + 14288) = 8;
  *(v3 + 14296) = 2;
  *(v3 + 14256) = "seal brown";
  *(v3 + 14248) = 2;
  *(v3 + 14264) = 10;
  *(v3 + 14272) = 2;
  *(v3 + 14232) = "sea green";
  *(v3 + 14216) = 8;
  *(v3 + 14224) = 2;
  *(v3 + 14240) = 9;
  *(v3 + 10672) = 2;
  *(v3 + 14208) = "sea blue";
  *(v3 + 14192) = 14;
  *(v3 + 14200) = 2;
  *(v3 + 14160) = "school bus yellow";
  *(v3 + 14152) = 2;
  *(v3 + 14168) = 17;
  *(v3 + 14176) = 2;
  *(v3 + 14136) = "scarlet";
  *(v3 + 14120) = 16;
  *(v3 + 14128) = 2;
  *(v3 + 14144) = 7;
  *(v3 + 10688) = 5;
  *(v3 + 14112) = "satin sheen gold";
  *(v3 + 14096) = 8;
  *(v3 + 14104) = 2;
  *(v3 + 14064) = "sap green";
  *(v3 + 14056) = 2;
  *(v3 + 14072) = 9;
  *(v3 + 14080) = 2;
  *(v3 + 14040) = "sandy taupe";
  *(v3 + 14024) = 11;
  *(v3 + 14032) = 2;
  *(v3 + 14048) = 11;
  *(v3 + 10696) = 2;
  *(v3 + 14016) = "sandy brown";
  *(v3 + 14000) = 9;
  *(v3 + 14008) = 2;
  *(v3 + 13968) = "sand dune";
  *(v3 + 13960) = 2;
  *(v3 + 13976) = 9;
  *(v3 + 13984) = 2;
  *(v3 + 13944) = "sand";
  *(v3 + 13928) = 11;
  *(v3 + 13936) = 2;
  *(v3 + 13952) = 4;
  *(v3 + 10712) = 10;
  *(v3 + 13920) = "salmon pink";
  *(v3 + 13904) = 6;
  *(v3 + 13912) = 2;
  *(v3 + 13872) = "saint patrick blue";
  *(v3 + 13864) = 2;
  *(v3 + 13880) = 18;
  *(v3 + 13888) = 2;
  *(v3 + 13848) = "saffron";
  *(v3 + 13832) = 13;
  *(v3 + 13840) = 2;
  *(v3 + 13856) = 7;
  *(v3 + 13784) = 22;
  *(v3 + 13808) = 12;
  *(v3 + 13816) = 2;
  *(v3 + 13824) = "safety orange";
  *(v3 + 13800) = "saddle brown";
  *(v3 + 13792) = 2;
  *(v3 + 13752) = "rust";
  *(v3 + 13744) = 2;
  *(v3 + 13760) = 4;
  *(v3 + 13768) = 2;
  *(v3 + 13728) = "russet";
  *(v3 + 13712) = 6;
  *(v3 + 13720) = 2;
  *(v3 + 13736) = 6;
  *(v3 + 10720) = 2;
  *(v3 + 13704) = "rufous";
  *(v3 + 13688) = 10;
  *(v3 + 13696) = 2;
  *(v3 + 13656) = "ruddy brown";
  *(v3 + 13648) = 2;
  *(v3 + 13664) = 11;
  *(v3 + 13672) = 2;
  *(v3 + 13632) = "ruby";
  *(v3 + 13616) = 12;
  *(v3 + 13624) = 2;
  *(v3 + 13640) = 4;
  *(v3 + 10736) = 11;
  *(v3 + 13608) = "royal purple";
  *(v3 + 13592) = 13;
  *(v3 + 13600) = 2;
  *(v3 + 13560) = "royal blue";
  *(v3 + 13552) = 2;
  *(v3 + 13568) = 10;
  *(v3 + 13576) = 2;
  *(v3 + 13536) = "royal azure";
  *(v3 + 13520) = 10;
  *(v3 + 13528) = 2;
  *(v3 + 13544) = 11;
  *(v3 + 10744) = 2;
  *(v3 + 13512) = "rosy brown";
  *(v3 + 13496) = 11;
  *(v3 + 13504) = 2;
  *(v3 + 13464) = "rosewood";
  *(v3 + 13456) = 2;
  *(v3 + 13472) = 8;
  *(v3 + 13480) = 2;
  *(v3 + 13440) = "rose vale";
  *(v3 + 13424) = 10;
  *(v3 + 13432) = 2;
  *(v3 + 13448) = 9;
  *(v3 + 10760) = 7;
  *(v3 + 13416) = "rose taupe";
  *(v3 + 13400) = 11;
  *(v3 + 13408) = 2;
  *(v3 + 13368) = "rose pink";
  *(v3 + 13360) = 2;
  *(v3 + 13376) = 9;
  *(v3 + 13384) = 2;
  *(v3 + 13344) = "rose madder";
  *(v3 + 13328) = 10;
  *(v3 + 13336) = 2;
  *(v3 + 13352) = 11;
  *(v3 + 10768) = 2;
  *(v3 + 13320) = "rose ebony";
  *(v3 + 13304) = 11;
  *(v3 + 13312) = 2;
  *(v3 + 13272) = "rose";
  *(v3 + 13264) = 2;
  *(v3 + 13280) = 4;
  *(v3 + 13288) = 2;
  *(v3 + 13248) = "robin's egg blue";
  *(v3 + 13232) = 11;
  *(v3 + 13240) = 2;
  *(v3 + 13256) = 16;
  *(v3 + 10784) = 4;
  *(v3 + 13224) = "rich maroon";
  *(v3 + 13208) = 10;
  *(v3 + 13216) = 2;
  *(v3 + 13176) = "rich electric blue";
  *(v3 + 13168) = 2;
  *(v3 + 13184) = 18;
  *(v3 + 13192) = 2;
  *(v3 + 13152) = "rich carmine";
  *(v3 + 13136) = 10;
  *(v3 + 13144) = 2;
  *(v3 + 13160) = 12;
  *(v3 + 10792) = 2;
  *(v3 + 13128) = "rich black";
  *(v3 + 13112) = 10;
  *(v3 + 13120) = 2;
  *(v3 + 13080) = "red brown";
  *(v3 + 13072) = 2;
  *(v3 + 13088) = 9;
  *(v3 + 13096) = 2;
  *(v3 + 10808) = 11;
  *(v3 + 13056) = "red orange";
  *(v3 + 13040) = 3;
  *(v3 + 13048) = 2;
  *(v3 + 13064) = 10;
  *(v3 + 13008) = "razzmatazz";
  *(v3 + 13000) = 2;
  *(v3 + 13016) = 10;
  *(v3 + 13024) = 2;
  *(v3 + 12984) = "razzle dazzle rose";
  *(v3 + 12968) = 10;
  *(v3 + 12976) = 2;
  *(v3 + 12992) = 18;
  *(v3 + 10816) = 2;
  *(v3 + 12960) = "raw sienna";
  *(v3 + 12944) = 14;
  *(v3 + 12952) = 2;
  *(v3 + 12912) = "raspberry pink";
  *(v3 + 12904) = 2;
  *(v3 + 12920) = 14;
  *(v3 + 12928) = 2;
  *(v3 + 12888) = "raspberry glace";
  *(v3 + 12872) = 9;
  *(v3 + 12880) = 2;
  *(v3 + 12896) = 15;
  *(v3 + 10832) = 6;
  *(v3 + 12864) = "raspberry";
  *(v3 + 12848) = 11;
  *(v3 + 12856) = 2;
  *(v3 + 12816) = "purple taupe";
  *(v3 + 12824) = 12;
  *(v3 + 12832) = 2;
  *(v3 + 12840) = "radical red";
  *(v3 + 12784) = 2;
  *(v3 + 12792) = "purple pizzazz";
  *(v3 + 12800) = 14;
  *(v3 + 12808) = 2;
  *(v3 + 12776) = 23;
  *(v3 + 12760) = 2;
  *(v3 + 10840) = 2;
  *(v3 + 12744) = "purple mountain's majesty";
  *(v3 + 12728) = 12;
  *(v3 + 12736) = 2;
  *(v3 + 12696) = "purple";
  *(v3 + 12688) = 2;
  *(v3 + 12704) = 6;
  *(v3 + 12712) = 2;
  *(v3 + 12672) = "pumpkin";
  *(v3 + 12656) = 4;
  *(v3 + 12664) = 2;
  *(v3 + 12680) = 7;
  *(v3 + 10856) = 13;
  *(v3 + 12632) = 18;
  *(v3 + 12616) = 2;
  *(v3 + 12640) = 2;
  *(v3 + 12600) = "prussian blue";
  *(v3 + 12584) = 16;
  *(v3 + 12592) = 2;
  *(v3 + 12608) = 13;
  *(v3 + 10864) = 2;
  *(v3 + 12576) = "princeton orange";
  *(v3 + 12560) = 11;
  *(v3 + 12568) = 2;
  *(v3 + 12528) = "portland orange";
  *(v3 + 12520) = 2;
  *(v3 + 12536) = 15;
  *(v3 + 12544) = 2;
  *(v3 + 12504) = "plum";
  *(v3 + 12488) = 8;
  *(v3 + 12496) = 2;
  *(v3 + 12512) = 4;
  *(v3 + 10880) = 11;
  *(v3 + 12480) = "platinum";
  *(v3 + 12464) = 9;
  *(v3 + 12472) = 2;
  *(v3 + 12432) = "pink pearl";
  *(v3 + 12424) = 2;
  *(v3 + 12440) = 10;
  *(v3 + 12448) = 2;
  *(v3 + 12408) = "pink sherbet";
  *(v3 + 12392) = 13;
  *(v3 + 12400) = 2;
  *(v3 + 12416) = 12;
  *(v3 + 10888) = 2;
  *(v3 + 12384) = "pink flamingo";
  *(v3 + 12368) = 4;
  *(v3 + 12376) = 2;
  *(v3 + 12336) = "pine green";
  *(v3 + 12328) = 2;
  *(v3 + 12344) = 10;
  *(v3 + 12352) = 2;
  *(v3 + 10904) = 10;
  *(v3 + 12312) = "piggy pink";
  *(v3 + 12304) = 2;
  *(v3 + 12320) = 10;
  *(v3 + 12288) = "phthalo green";
  *(v3 + 12272) = 12;
  *(v3 + 12280) = 2;
  *(v3 + 12296) = 13;
  *(v3 + 10912) = 2;
  *(v3 + 12264) = "phthalo blue";
  *(v3 + 12248) = 5;
  *(v3 + 12256) = 2;
  *(v3 + 12216) = "persian rose";
  *(v3 + 12208) = 2;
  *(v3 + 12224) = 12;
  *(v3 + 12232) = 2;
  *(v3 + 12192) = "persian red";
  *(v3 + 12176) = 12;
  *(v3 + 12184) = 2;
  *(v3 + 12200) = 11;
  *(v3 + 10928) = 6;
  *(v3 + 12168) = "persian plum";
  *(v3 + 12152) = 12;
  *(v3 + 12160) = 2;
  *(v3 + 12120) = "persian orange";
  *(v3 + 12112) = 2;
  *(v3 + 12128) = 14;
  *(v3 + 12136) = 2;
  *(v3 + 12096) = "persian indigo";
  *(v3 + 12080) = 12;
  *(v3 + 12088) = 2;
  *(v3 + 12104) = 14;
  *(v3 + 10936) = 2;
  *(v3 + 12072) = "persian blue";
  *(v3 + 12056) = 10;
  *(v3 + 12064) = 2;
  *(v3 + 12024) = "peridot";
  *(v3 + 12016) = 2;
  *(v3 + 12032) = 7;
  *(v3 + 12040) = 2;
  *(v3 + 12000) = "pearl aqua";
  *(v3 + 11984) = 5;
  *(v3 + 11992) = 2;
  *(v3 + 12008) = 10;
  *(v3 + 10952) = 11;
  *(v3 + 11976) = "pearl";
  *(v3 + 11960) = 4;
  *(v3 + 11968) = 2;
  *(v3 + 11928) = "peach yellow";
  *(v3 + 11920) = 2;
  *(v3 + 11936) = 12;
  *(v3 + 11944) = 2;
  *(v3 + 11904) = "peach puff";
  *(v3 + 11888) = 5;
  *(v3 + 11896) = 2;
  *(v3 + 11912) = 10;
  *(v3 + 10960) = 2;
  *(v3 + 11880) = "peach";
  *(v3 + 11864) = 10;
  *(v3 + 11872) = 2;
  *(v3 + 11832) = "pastel yellow";
  *(v3 + 11824) = 2;
  *(v3 + 11840) = 13;
  *(v3 + 11848) = 2;
  *(v3 + 11808) = "pastel violet";
  *(v3 + 11792) = 10;
  *(v3 + 11800) = 2;
  *(v3 + 11816) = 13;
  *(v3 + 10976) = 11;
  *(v3 + 11784) = "pastel red";
  *(v3 + 11768) = 13;
  *(v3 + 11776) = 2;
  *(v3 + 11736) = "pastel pink";
  *(v3 + 11728) = 2;
  *(v3 + 11744) = 11;
  *(v3 + 11752) = 2;
  *(v3 + 11712) = "pastel orange";
  *(v3 + 11696) = 14;
  *(v3 + 11704) = 2;
  *(v3 + 11720) = 13;
  *(v3 + 10984) = 2;
  *(v3 + 11688) = "pastel magenta";
  *(v3 + 11672) = 12;
  *(v3 + 11680) = 2;
  *(v3 + 11640) = "pastel gray";
  *(v3 + 11632) = 2;
  *(v3 + 11648) = 11;
  *(v3 + 11656) = 2;
  *(v3 + 11616) = "pastel brown";
  *(v3 + 11600) = 11;
  *(v3 + 11608) = 2;
  *(v3 + 11624) = 12;
  *(v3 + 11000) = 17;
  *(v3 + 11592) = "pastel blue";
  *(v3 + 11576) = 11;
  *(v3 + 11584) = 2;
  *(v3 + 11544) = "papaya whip";
  *(v3 + 11536) = 2;
  *(v3 + 11552) = 11;
  *(v3 + 11560) = 2;
  *(v3 + 11520) = "pale violet red";
  *(v3 + 11504) = 10;
  *(v3 + 11512) = 2;
  *(v3 + 11528) = 15;
  *(v3 + 11008) = 2;
  *(v3 + 11496) = "pale taupe";
  *(v3 + 11480) = 11;
  *(v3 + 11488) = 2;
  *(v3 + 11016) = "oxford blue";
  *(v3 + 11456) = 19;
  *(v3 + 11464) = 2;
  *(v3 + 11472) = "pale silver";
  *(v3 + 11424) = "pale red violet";
  *(v3 + 11432) = 15;
  *(v3 + 11440) = 2;
  *(v3 + 11448) = "pale robin egg blue";
  *(v3 + 11392) = 2;
  *(v3 + 11400) = "pale plum";
  *(v3 + 11408) = 9;
  *(v3 + 11416) = 2;
  *(v3 + 11360) = 12;
  *(v3 + 11368) = 2;
  *(v3 + 11376) = "pale pink";
  *(v3 + 11384) = 9;
  *(v3 + 11024) = 11;
  *(v3 + 11336) = 13;
  *(v3 + 11344) = 2;
  *(v3 + 11352) = "pale magenta";
  *(v3 + 11304) = "pale green";
  *(v3 + 11312) = 10;
  *(v3 + 11320) = 2;
  *(v3 + 11328) = "pale lavender";
  *(v3 + 11272) = 2;
  *(v3 + 11280) = "pale goldenrod";
  *(v3 + 11288) = 14;
  *(v3 + 11296) = 2;
  *(v3 + 11240) = 20;
  *(v3 + 11248) = 2;
  *(v3 + 11256) = "pale gold";
  *(v3 + 11264) = 9;
  *(v3 + 11032) = 2;
  *(v3 + 11216) = 11;
  *(v3 + 11224) = 2;
  *(v3 + 11232) = "pale cornflower blue";
  *(v3 + 11040) = "pacific blue";
  *(v3 + 11192) = 13;
  *(v3 + 11200) = 2;
  *(v3 + 11208) = "pale copper";
  *(v3 + 11160) = "pale cerulean";
  *(v3 + 11168) = 13;
  *(v3 + 11176) = 2;
  *(v3 + 11184) = "pale chestnut";
  *(v3 + 11128) = 2;
  *(v3 + 11136) = "pale carmine";
  *(v3 + 11144) = 12;
  *(v3 + 11152) = 2;
  *(v3 + 11096) = 9;
  *(v3 + 11104) = 2;
  *(v3 + 11112) = "pale brown";
  *(v3 + 11120) = 10;
  *(v3 + 11048) = 12;
  *(v3 + 11072) = 9;
  *(v3 + 11080) = 2;
  *(v3 + 11088) = "pale blue";
  *(v3 + 11056) = 2;
  *(v3 + 11064) = "pale aqua";
  *(v3 + 14976) = "tan";
  *(v3 + 14984) = 3;
  *(v3 + 14992) = 2;
  *(v3 + 15000) = "tangelo";
  *(v3 + 15008) = 7;
  *(v3 + 15016) = 2;
  *(v3 + 15024) = "tangerine";
  *(v3 + 15032) = 9;
  *(v3 + 15040) = 2;
  *(v3 + 15048) = "tangerine yellow";
  *(v3 + 15056) = 16;
  *(v3 + 15064) = 2;
  *(v3 + 15072) = "taupe";
  *(v3 + 15080) = 5;
  *(v3 + 15088) = 2;
  *(v3 + 15096) = "taupe gray";
  *(v3 + 15104) = 10;
  *(v3 + 15112) = 2;
  *(v3 + 15120) = "tawny";
  *(v3 + 15128) = 5;
  *(v3 + 15136) = 2;
  *(v3 + 15144) = "tea green";
  *(v3 + 15152) = 9;
  *(v3 + 15160) = 2;
  *(v3 + 15168) = "tea rose";
  *(v3 + 15176) = 8;
  *(v3 + 15184) = 2;
  *(v3 + 15192) = "teal";
  *(v3 + 15200) = 4;
  *(v3 + 15208) = 2;
  *(v3 + 15216) = "teal blue";
  *(v3 + 15224) = 9;
  *(v3 + 15232) = 2;
  *(v3 + 15240) = "teal green";
  *(v3 + 15248) = 10;
  *(v3 + 15256) = 2;
  *(v3 + 15264) = "terra cotta";
  *(v3 + 15272) = 11;
  *(v3 + 15280) = 2;
  *(v3 + 15288) = "thistle";
  *(v3 + 15296) = 7;
  *(v3 + 15304) = 2;
  *(v3 + 15312) = "thulian pink";
  *(v3 + 15320) = 12;
  *(v3 + 15328) = 2;
  *(v3 + 15336) = "tiffany blue";
  *(v3 + 15344) = 12;
  *(v3 + 15352) = 2;
  *(v3 + 15360) = "tiger eye";
  *(v3 + 15368) = 9;
  *(v3 + 15376) = 2;
  *(v3 + 15384) = "timberwolf";
  *(v3 + 15392) = 10;
  *(v3 + 15400) = 2;
  *(v3 + 15408) = "titanium yellow";
  *(v3 + 15416) = 15;
  *(v3 + 15424) = 2;
  *(v3 + 15432) = "tomato";
  *(v3 + 15440) = 6;
  *(v3 + 15448) = 2;
  *(v3 + 15456) = "topaz";
  *(v3 + 15464) = 5;
  *(v3 + 15472) = 2;
  *(v3 + 15480) = "tractor red";
  *(v3 + 15488) = 11;
  *(v3 + 15496) = 2;
  *(v3 + 15504) = "trolley grey";
  *(v3 + 15512) = 12;
  *(v3 + 15520) = 2;
  *(v3 + 15528) = "tropical rain forest";
  *(v3 + 15536) = 20;
  *(v3 + 15544) = 2;
  *(v3 + 15552) = "true blue";
  *(v3 + 15560) = 9;
  *(v3 + 15568) = 2;
  *(v3 + 15576) = "tufts blue";
  *(v3 + 15584) = 10;
  *(v3 + 15592) = 2;
  *(v3 + 15600) = "tumbleweed";
  *(v3 + 15608) = 10;
  *(v3 + 15616) = 2;
  *(v3 + 15624) = "turkish rose";
  *(v3 + 15632) = 12;
  *(v3 + 15640) = 2;
  *(v3 + 15648) = "turquoise";
  *(v3 + 15656) = 9;
  *(v3 + 15664) = 2;
  *(v3 + 15672) = "turquoise blue";
  *(v3 + 15680) = 14;
  *(v3 + 15688) = 2;
  *(v3 + 15696) = "turquoise green";
  *(v3 + 15704) = 15;
  *(v3 + 15712) = 2;
  *(v3 + 15720) = "tuscan red";
  *(v3 + 15728) = 10;
  *(v3 + 15736) = 2;
  *(v3 + 15744) = "twilight lavender";
  *(v3 + 15752) = 17;
  *(v3 + 15760) = 2;
  *(v3 + 15768) = "tyrian purple";
  *(v3 + 15776) = 13;
  *(v3 + 15784) = 2;
  *(v3 + 15792) = "ua blue";
  *(v3 + 15800) = 7;
  *(v3 + 15808) = 2;
  *(v3 + 15816) = "ua red";
  *(v3 + 15824) = 6;
  *(v3 + 15832) = 2;
  *(v3 + 15840) = "ucla blue";
  *(v3 + 15848) = 9;
  *(v3 + 15856) = 2;
  *(v3 + 15864) = "ucla gold";
  *(v3 + 15872) = 9;
  *(v3 + 15880) = 2;
  *(v3 + 15888) = "ufo green";
  *(v3 + 15896) = 9;
  *(v3 + 15904) = 2;
  *(v3 + 15912) = "up forest green";
  *(v3 + 15920) = 15;
  *(v3 + 15928) = 2;
  *(v3 + 15936) = "up maroon";
  *(v3 + 15944) = 9;
  *(v3 + 15952) = 2;
  *(v3 + 15960) = "usc cardinal";
  *(v3 + 15968) = 12;
  *(v3 + 15976) = 2;
  *(v3 + 15984) = "usc gold";
  *(v3 + 15992) = 8;
  *(v3 + 16000) = 2;
  *(v3 + 16008) = "ube";
  *(v3 + 16016) = 3;
  *(v3 + 16024) = 2;
  *(v3 + 16032) = "ultra pink";
  *(v3 + 16040) = 10;
  *(v3 + 16048) = 2;
  *(v3 + 16056) = "ultramarine";
  *(v3 + 16064) = 11;
  *(v3 + 16072) = 2;
  *(v3 + 16080) = "ultramarine blue";
  *(v3 + 16088) = 16;
  *(v3 + 16096) = 2;
  *(v3 + 16104) = "umber";
  *(v3 + 16112) = 5;
  *(v3 + 16120) = 2;
  *(v3 + 16128) = "united nations blue";
  *(v3 + 16136) = 19;
  *(v3 + 16144) = 2;
  *(v3 + 16152) = "university of california gold";
  *(v3 + 16160) = 29;
  *(v3 + 16168) = 2;
  *(v3 + 16176) = "unmellow yellow";
  *(v3 + 16184) = 15;
  *(v3 + 16192) = 2;
  *(v3 + 16200) = "upsdell red";
  *(v3 + 16208) = 11;
  *(v3 + 16216) = 2;
  *(v3 + 16224) = "vanilla";
  *(v3 + 16232) = 7;
  *(v3 + 16240) = 2;
  *(v3 + 16248) = "vegas gold";
  *(v3 + 16256) = 10;
  *(v3 + 16264) = 2;
  *(v3 + 16272) = "venetian red";
  *(v3 + 16280) = 12;
  *(v3 + 16288) = 2;
  *(v3 + 16296) = "verdigris";
  *(v3 + 16304) = 9;
  *(v3 + 16312) = 2;
  *(v3 + 16320) = "vermilion";
  *(v3 + 16328) = 9;
  *(v3 + 16336) = 2;
  *(v3 + 16344) = "veronica";
  *(v3 + 16352) = 8;
  *(v3 + 16360) = 2;
  *(v3 + 16368) = "violet";
  *(v3 + 16376) = 6;
  *(v3 + 0x4000) = 2;
  *(v3 + 16392) = "violet blue";
  *(v3 + 16400) = 11;
  *(v3 + 7968) = "laurel green";
  *(v3 + 16408) = 2;
  *(v3 + 16416) = "violet red";
  *(v3 + 16424) = 10;
  *(v3 + 16432) = 2;
  *(v3 + 16440) = "viridian";
  *(v3 + 16448) = 8;
  *(v3 + 16456) = 2;
  *(v3 + 16464) = "vivid auburn";
  *(v3 + 16472) = 12;
  *(v3 + 16480) = 2;
  *(v3 + 16488) = "vivid burgundy";
  *(v3 + 16496) = 14;
  *(v3 + 16504) = 2;
  *(v3 + 16512) = "vivid cerise";
  *(v3 + 16520) = 12;
  *(v3 + 16528) = 2;
  *(v3 + 16536) = "vivid tangerine";
  *(v3 + 16544) = 15;
  *(v3 + 16552) = 2;
  *(v3 + 16560) = "vivid violet";
  *(v3 + 16568) = 12;
  *(v3 + 16576) = 2;
  *(v3 + 16584) = "warm black";
  *(v3 + 16592) = 10;
  *(v3 + 16600) = 2;
  *(v3 + 16608) = "waterspout";
  *(v3 + 16616) = 10;
  *(v3 + 16624) = 2;
  *(v3 + 16632) = "wenge";
  *(v3 + 16640) = 5;
  *(v3 + 16648) = 2;
  *(v3 + 16656) = "wheat";
  *(v3 + 16664) = 5;
  *(v3 + 16672) = 2;
  *(v3 + 16680) = "white";
  *(v3 + 16688) = 5;
  *(v3 + 16696) = 2;
  *(v3 + 16704) = "white smoke";
  *(v3 + 16712) = 11;
  *(v3 + 16720) = 2;
  *(v3 + 16728) = "wild strawberry";
  *(v3 + 16736) = 15;
  *(v3 + 16744) = 2;
  *(v3 + 16752) = "wild watermelon";
  *(v3 + 16760) = 15;
  *(v3 + 16768) = 2;
  *(v3 + 16776) = "wild blue yonder";
  *(v3 + 16784) = 16;
  *(v3 + 16792) = 2;
  *(v3 + 16800) = "wine";
  *(v3 + 16808) = 4;
  *(v3 + 16816) = 2;
  *(v3 + 16824) = "wisteria";
  *(v3 + 16832) = 8;
  *(v3 + 16840) = 2;
  *(v3 + 16848) = "xanadu";
  *(v3 + 16856) = 6;
  *(v3 + 16864) = 2;
  *(v3 + 16872) = "yale blue";
  *(v3 + 16880) = 9;
  *(v3 + 16888) = 2;
  *(v3 + 16896) = "yellow";
  *(v3 + 16904) = 6;
  *(v3 + 16912) = 2;
  *(v3 + 16920) = "yellow orange";
  *(v3 + 16928) = 13;
  *(v3 + 16936) = 2;
  *(v3 + 16944) = "yellow green";
  *(v3 + 16952) = 12;
  *(v3 + 16960) = 2;
  *(v3 + 16968) = "zaffre";
  *(v3 + 16976) = 6;
  *(v3 + 16984) = 2;
  *(v3 + 16992) = "zinnwaldite brown";
  *(v3 + 17000) = 17;
  *(v3 + 17008) = 2;
  *(v3 + 7976) = 12;
  v4._rawValue = nullsub_1(v9);
  v11._countAndFlagsBits = countAndFlagsBits;
  v11._object = object;
  v5 = sub_369F0(v4, v11);

  v6 = v5 - 128;
  if (v5 < 0x80)
  {
    return v5;
  }

  if (v6 < 0x40)
  {
    LOWORD(v5) = v6 | 0x80;
    return v5;
  }

  if (v5 - 192 < 0x40)
  {
    LOWORD(v5) = (v5 - 192) | 0xC0;
    return v5;
  }

  if (v5 - 256 < 0x40)
  {
    LOWORD(v5) = (v5 - 256) | 0x100;
    return v5;
  }

  if (v5 - 320 < 0x40)
  {
    LOWORD(v5) = (v5 - 320) | 0x140;
    return v5;
  }

  if (v5 - 384 < 0x40)
  {
    LOWORD(v5) = (v5 - 384) | 0x180;
    return v5;
  }

  if (v5 - 448 < 0x40)
  {
    LOWORD(v5) = (v5 - 448) | 0x1C0;
    return v5;
  }

  if (v5 - 512 < 0x40)
  {
    LOWORD(v5) = (v5 - 512) | 0x200;
    return v5;
  }

  v8 = v5 - 576;
  result.value = HomeAutomationSiriSuggestions_HueSemantic_sunset;
  LOWORD(v5) = 576;
  switch(v8)
  {
    case 0uLL:
      return v5;
    case 1uLL:
      LOWORD(v5) = 577;
      return v5;
    case 2uLL:
      LOWORD(v5) = 578;
      return v5;
    case 3uLL:
      LOWORD(v5) = 579;
      return v5;
    case 4uLL:
      LOWORD(v5) = 580;
      return v5;
    case 5uLL:
      LOWORD(v5) = 581;
      return v5;
    case 6uLL:
      LOWORD(v5) = 582;
      return v5;
    case 7uLL:
      LOWORD(v5) = 583;
      return v5;
    case 8uLL:
      LOWORD(v5) = 584;
      return v5;
    case 9uLL:
      LOWORD(v5) = 585;
      return v5;
    case 0xAuLL:
      LOWORD(v5) = 586;
      return v5;
    case 0xBuLL:
      LOWORD(v5) = 587;
      return v5;
    case 0xCuLL:
      LOWORD(v5) = 588;
      return v5;
    case 0xDuLL:
      LOWORD(v5) = 589;
      return v5;
    case 0xEuLL:
      LOWORD(v5) = 590;
      return v5;
    case 0xFuLL:
      LOWORD(v5) = 591;
      return v5;
    case 0x10uLL:
      LOWORD(v5) = 592;
      return v5;
    case 0x11uLL:
      LOWORD(v5) = 593;
      return v5;
    case 0x12uLL:
      LOWORD(v5) = 594;
      return v5;
    case 0x13uLL:
      LOWORD(v5) = 595;
      return v5;
    case 0x14uLL:
      LOWORD(v5) = 596;
      return v5;
    case 0x15uLL:
      LOWORD(v5) = 597;
      return v5;
    case 0x16uLL:
      LOWORD(v5) = 598;
      return v5;
    case 0x17uLL:
      LOWORD(v5) = 599;
      return v5;
    case 0x18uLL:
      LOWORD(v5) = 600;
      return v5;
    case 0x19uLL:
      LOWORD(v5) = 601;
      return v5;
    case 0x1AuLL:
      LOWORD(v5) = 602;
      return v5;
    case 0x1BuLL:
      LOWORD(v5) = 603;
      return v5;
    case 0x1CuLL:
      LOWORD(v5) = 604;
      return v5;
    case 0x1DuLL:
      LOWORD(v5) = 605;
      return v5;
    case 0x1EuLL:
      LOWORD(v5) = 606;
      return v5;
    case 0x1FuLL:
      LOWORD(v5) = 607;
      return v5;
    case 0x20uLL:
      LOWORD(v5) = 608;
      return v5;
    case 0x21uLL:
      LOWORD(v5) = 609;
      return v5;
    case 0x22uLL:
      LOWORD(v5) = 610;
      return v5;
    case 0x23uLL:
      LOWORD(v5) = 611;
      return v5;
    case 0x24uLL:
      LOWORD(v5) = 612;
      return v5;
    case 0x25uLL:
      LOWORD(v5) = 613;
      return v5;
    case 0x26uLL:
      LOWORD(v5) = 614;
      return v5;
    case 0x27uLL:
      LOWORD(v5) = 615;
      return v5;
    case 0x28uLL:
      LOWORD(v5) = 616;
      return v5;
    case 0x29uLL:
      LOWORD(v5) = 617;
      return v5;
    case 0x2AuLL:
      LOWORD(v5) = 618;
      return v5;
    case 0x2BuLL:
      LOWORD(v5) = 619;
      return v5;
    case 0x2CuLL:
      LOWORD(v5) = 620;
      return v5;
    case 0x2DuLL:
      LOWORD(v5) = 621;
      return v5;
    case 0x2EuLL:
      return result;
    case 0x2FuLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_sunset_orange;
      break;
    case 0x30uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tan;
      break;
    case 0x31uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tangelo;
      break;
    case 0x32uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tangerine;
      break;
    case 0x33uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tangerine_yellow;
      break;
    case 0x34uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_taupe;
      break;
    case 0x35uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_taupe_gray;
      break;
    case 0x36uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tawny;
      break;
    case 0x37uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tea_green;
      break;
    case 0x38uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tea_rose;
      break;
    case 0x39uLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_teal;
      break;
    case 0x3AuLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_teal_blue;
      break;
    case 0x3BuLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_teal_green;
      break;
    case 0x3CuLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_terra_cotta;
      break;
    case 0x3DuLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_thistle;
      break;
    case 0x3EuLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_thulian_pink;
      break;
    case 0x3FuLL:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_tiffany_blue;
      break;
    default:
      result.value = HomeAutomationSiriSuggestions_HueSemantic_unknownDefault;
      break;
  }

  return result;
}

HomeAutomationSiriSuggestions::HueSemantic_optional sub_FFA8@<W0>(Swift::String *a1@<X0>, HomeAutomationSiriSuggestions::HueSemantic_optional *a2@<X8>)
{
  result.value = HueSemantic.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_FFD8(void *a1@<X8>)
{
  HueSemantic.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_100F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10488();
  v5 = sub_104DC();
  v6 = sub_10530();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_1016C()
{
  result = qword_55348;
  if (!qword_55348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55348);
  }

  return result;
}

unint64_t sub_101C4()
{
  result = qword_55350;
  if (!qword_55350)
  {
    sub_4488(&qword_55358, &qword_37840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55350);
  }

  return result;
}

unint64_t sub_1022C()
{
  result = qword_55360;
  if (!qword_55360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55360);
  }

  return result;
}

unint64_t sub_10284()
{
  result = qword_55368;
  if (!qword_55368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HueSemantic(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD3C)
  {
    if (a2 + 708 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 708 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 709;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C5;
  v5 = v6 - 709;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HueSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 708 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 708 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD3C)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD3B)
  {
    v6 = ((a2 - 64828) >> 16) + 1;
    *result = a2 + 708;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10440);
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 708;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10488()
{
  result = qword_55370;
  if (!qword_55370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55370);
  }

  return result;
}

unint64_t sub_104DC()
{
  result = qword_55378;
  if (!qword_55378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55378);
  }

  return result;
}

unint64_t sub_10530()
{
  result = qword_55380;
  if (!qword_55380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55380);
  }

  return result;
}

uint64_t sub_1078C()
{
  sub_116D0();
  sub_11724(v1, v2, v3, v4);
  v5 = sub_1DC4(&qword_553E0, &qword_37990);
  sub_11734(v5);
  v7 = *(v6 + 64) + 15;
  *(v0 + 56) = swift_task_alloc();
  *(v0 + 64) = swift_task_alloc();
  sub_116DC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10828()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_1DC4(&qword_553E8, &qword_37998);
  v3 = swift_allocObject();
  v0[9] = v3;
  sub_1163C(v3, xmmword_37020);
  sub_11528(v2, v1, &qword_553E0, &qword_37990);
  v4 = sub_35D70();
  v5 = sub_11684();
  v6 = v0[8];
  if (v5 == 1)
  {
    sub_11590(v0[8], &qword_553E0, &qword_37990);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_3C30((v3 + 48));
    sub_1165C();
    v8 = *(v7 + 32);
    sub_116C4();
    v9();
  }

  v10 = sub_115F4();
  sub_11528(v10, v6, &qword_553E0, &qword_37990);
  v11 = sub_11684();
  v12 = v0[7];
  if (v11 == 1)
  {
    sub_11590(v0[7], &qword_553E0, &qword_37990);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    sub_3C30((v3 + 96));
    sub_1165C();
    v14 = *(v13 + 32);
    sub_116C4();
    v15();
  }

  v16 = sub_1161C();
  if (v4)
  {
    v16 = sub_36480();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  *(v3 + 144) = v4;
  *(v3 + 168) = v16;
  sub_116A0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = sub_11714(v17);
  *v18 = v19;
  sub_1166C(v18);
  sub_116F4();

  return v20();
}

uint64_t sub_10A3C()
{
  sub_116D0();
  v2 = *v1;
  sub_116E8();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_116E8();
  *v7 = v6;
  v2[11] = v0;

  if (v0)
  {
    sub_116DC();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = v2[8];
    v11 = v2[9];
    v13 = v2[7];

    sub_11704();

    return v14();
  }
}

uint64_t sub_10B78()
{
  sub_116D0();
  sub_11724(v1, v2, v3, v4);
  v5 = sub_1DC4(&qword_553E0, &qword_37990);
  sub_11734(v5);
  v7 = *(v6 + 64) + 15;
  *(v0 + 56) = swift_task_alloc();
  *(v0 + 64) = swift_task_alloc();
  sub_116DC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10C14()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_1DC4(&qword_553E8, &qword_37998);
  v3 = swift_allocObject();
  v0[9] = v3;
  sub_1163C(v3, xmmword_37020);
  sub_11528(v2, v1, &qword_553E0, &qword_37990);
  v4 = sub_35D70();
  v5 = sub_11684();
  v6 = v0[8];
  if (v5 == 1)
  {
    sub_11590(v0[8], &qword_553E0, &qword_37990);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_3C30((v3 + 48));
    sub_1165C();
    v8 = *(v7 + 32);
    sub_116C4();
    v9();
  }

  v10 = sub_115F4();
  sub_11528(v10, v6, &qword_553E0, &qword_37990);
  v11 = sub_11684();
  v12 = v0[7];
  if (v11 == 1)
  {
    sub_11590(v0[7], &qword_553E0, &qword_37990);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    sub_3C30((v3 + 96));
    sub_1165C();
    v14 = *(v13 + 32);
    sub_116C4();
    v15();
  }

  v16 = sub_1161C();
  if (v4)
  {
    v16 = sub_36480();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  *(v3 + 144) = v4;
  *(v3 + 168) = v16;
  sub_116A0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = sub_11714(v17);
  *v18 = v19;
  sub_1166C(v18);
  sub_116F4();

  return v20();
}

uint64_t sub_10E28()
{
  sub_116D0();
  v2 = *v1;
  sub_116E8();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_116E8();
  *v7 = v6;
  v2[11] = v0;

  if (v0)
  {
    sub_116DC();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = v2[8];
    v11 = v2[9];
    v13 = v2[7];

    sub_11704();

    return v14();
  }
}

uint64_t sub_10F64()
{
  sub_116D0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_10FD8()
{
  sub_116D0();
  sub_11724(v1, v2, v3, v4);
  v5 = sub_1DC4(&qword_553E0, &qword_37990);
  sub_11734(v5);
  v7 = *(v6 + 64) + 15;
  *(v0 + 56) = swift_task_alloc();
  *(v0 + 64) = swift_task_alloc();
  sub_116DC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_11074()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_1DC4(&qword_553E8, &qword_37998);
  v3 = swift_allocObject();
  v0[9] = v3;
  sub_1163C(v3, xmmword_37020);
  sub_11528(v2, v1, &qword_553E0, &qword_37990);
  v4 = sub_35D70();
  v5 = sub_11684();
  v6 = v0[8];
  if (v5 == 1)
  {
    sub_11590(v0[8], &qword_553E0, &qword_37990);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_3C30((v3 + 48));
    sub_1165C();
    v8 = *(v7 + 32);
    sub_116C4();
    v9();
  }

  v10 = sub_115F4();
  sub_11528(v10, v6, &qword_553E0, &qword_37990);
  v11 = sub_11684();
  v12 = v0[7];
  if (v11 == 1)
  {
    sub_11590(v0[7], &qword_553E0, &qword_37990);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    sub_3C30((v3 + 96));
    sub_1165C();
    v14 = *(v13 + 32);
    sub_116C4();
    v15();
  }

  v16 = sub_1161C();
  if (v4)
  {
    v16 = sub_36480();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  *(v3 + 144) = v4;
  *(v3 + 168) = v16;
  sub_116A0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = sub_11714(v17);
  *v18 = v19;
  sub_1166C(v18);
  sub_116F4();

  return v20();
}

uint64_t HomeSuggestionCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_116C4();
  return HomeSuggestionCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t HomeSuggestionCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_35D90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC4(&qword_55388, &unk_37950);
  v10 = sub_11734(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_11528(a1, &v16 - v13, &qword_55388, &unk_37950);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_35D40();
  (*(v5 + 8))(a2, v4);
  sub_11590(a1, &qword_55388, &unk_37950);
  return v14;
}

uint64_t HomeSuggestionCATs.__deallocating_deinit()
{
  v0 = _s29HomeAutomationSiriSuggestions0A14SuggestionCATsCfd_0();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t type metadata accessor for HomeSuggestionCATs()
{
  result = qword_55390;
  if (!qword_55390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11528(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1DC4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_11590(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1DC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_115F4()
{
  v2 = *(v0 + 56);
  result = *(v0 + 32);
  *(v1 + 80) = 0x7475626972747461;
  *(v1 + 88) = 0xE900000000000065;
  return result;
}

uint64_t sub_1161C()
{
  v2 = *(v0 + 40);
  *(v1 + 128) = 0x65756C6176;
  *(v1 + 136) = 0xE500000000000000;
  return 0;
}

__n128 *sub_1163C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E6D6F6F72;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_1166C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 16);
}

uint64_t sub_11684()
{

  return sub_3D74(v1, 1, v0);
}

uint64_t sub_116A0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t sub_11704()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_11724(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = result;
  return result;
}

uint64_t sub_11740()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59570);
  v1 = sub_1D8C(v0, qword_59570);
  *v1 = sub_285FC();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_117E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x726F6C6F43746573, 0xE800000000000000);
  v8[3] = v4;
  v8[4] = sub_12154(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_118E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v37 - v5;
  sub_1DC4(&qword_55068, &unk_373E0);
  v7 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v40 = *(*v7 + 72);
  v9 = v40;
  v10 = swift_allocObject();
  v42 = v10;
  *(v10 + 16) = xmmword_37020;
  v11 = v10 + v8;
  v12 = type metadata accessor for RoomNameResolver();
  v13 = swift_allocObject();
  *(v13 + 16) = 0x656D614E6D6F6F72;
  *(v13 + 24) = 0xE800000000000000;
  v50 = v12;
  v51 = sub_12154(&qword_551B8, type metadata accessor for RoomNameResolver);
  v49[0] = v13;
  sub_1DC4(&qword_55078, &unk_373F0);
  v39 = sub_352A0;
  sub_1219C();
  *v11 = 1;
  sub_3BCC(v49, v11 + 8);
  *(v11 + 48) = 257;
  v14 = v7[12];
  v46 = v3[2];
  v38 = v2;
  v46(v11 + v14, v6, v2);
  v15 = v7[13];
  v41 = sub_362C0();
  sub_1219C();
  v16 = v3[1];
  v45 = v3 + 1;
  v16(v6, v2);
  v17 = v16;
  sub_3D00(v49);
  v18 = v11 + v9;
  v19 = type metadata accessor for AttributeResolver();
  v20 = swift_allocObject();
  v28 = sub_2B290(v20, v21, v22, v23, v24, v25, v26, v27);
  v50 = v19;
  v51 = sub_12154(&qword_55468, type metadata accessor for AttributeResolver);
  v49[0] = v28;
  sub_1219C();
  *v18 = 8;
  sub_3BCC(v49, v18 + 8);
  *(v18 + 48) = 1;
  v29 = v38;
  v46(v18 + v7[12], v6, v38);
  v30 = v18 + v7[13];
  sub_35D10();
  v17(v6, v29);
  sub_3D00(v49);
  v31 = v11 + 2 * v40;
  v32 = type metadata accessor for ValueResolver();
  swift_allocObject();
  v33 = sub_273D4();
  v50 = v32;
  v51 = sub_12154(&qword_55470, type metadata accessor for ValueResolver);
  v49[0] = v33;
  sub_1219C();
  *v31 = 9;
  sub_3BCC(v49, v31 + 8);
  *(v31 + 48) = 1;
  v46(v31 + v7[12], v6, v29);
  v34 = v31 + v7[13];
  sub_35D10();
  v17(v6, v29);
  sub_3D00(v49);
  v35 = v43;
  sub_4E08(v44, v43);
  v48 = v35;
  sub_1F76C(sub_120D0, v47, v42);
  swift_setDeallocating();
  return sub_39C4();
}

double sub_11E1C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_362B0();
  if (v2)
  {
    if (v2[2])
    {
      v4 = v2[4];
      v3 = v2[5];

      *(a1 + 24) = &type metadata for String;
      *a1 = v4;
      *(a1 + 8) = v3;
      return result;
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_11E94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_553E0, &qword_37990);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = [a1 userTask];
  v9 = v8;
  if (v8)
  {
    [v8 attribute];
  }

  sub_364E0();
  v10 = sub_35D70();
  if (sub_3D74(v7, 1, v10) == 1)
  {
    result = sub_120EC(v7);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v12 = sub_35D60();
    *(a2 + 24) = &type metadata for String;
    *a2 = v12;
    *(a2 + 8) = v13;
    return (*(*(v10 - 8) + 8))(v7, v10);
  }

  return result;
}

BOOL sub_11FE0(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_34664(&off_4E630);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_120EC(uint64_t a1)
{
  v2 = sub_1DC4(&qword_553E0, &qword_37990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1219C()
{

  return sub_35D10();
}

unint64_t AccessoryTypeSemantic.rawValue.getter(char a1)
{
  result = 0x6C7562746867696CLL;
  switch(a1)
  {
    case 1:
      return 0x6B636F4C726F6F64;
    case 2:
      return 0x6172656D61437069;
    case 3:
      return 0x65526172656D6163;
    case 4:
      return 0xD000000000000011;
    case 5:
    case 15:
      return 0xD000000000000010;
    case 6:
      return 0x74656C74756FLL;
    case 7:
      return 0x686374697773;
    case 8:
      return 0x74736F6D72656874;
    case 9:
      return 0x616C6C69746E6576;
    case 10:
      return 0x73646E696C62;
    case 11:
      return 0x53636972656E6567;
    case 12:
      return 0x65536E6F69746F6DLL;
    case 13:
      return 0xD000000000000011;
    case 14:
      v4 = 0x6964696D7568;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
    case 16:
      return 0xD000000000000014;
    case 17:
      return 0xD000000000000013;
    case 18:
      v5 = 0x53656B6F6D73;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 19:
      return 0x53746361746E6F63;
    case 20:
    case 21:
      return 0x657A69726F746F6DLL;
    case 22:
      v5 = 0x53746867696CLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 23:
      return 0x636E61707563636FLL;
    case 24:
      return 0x736E65536B61656CLL;
    case 25:
      return 0x79726574746162;
    case 26:
      return 0x6C6C6542726F6F64;
    case 27:
      return 0x6669727550726961;
    case 28:
      return 0xD000000000000011;
    case 29:
      v3 = 1952540008;
      goto LABEL_51;
    case 30:
      v3 = 1819242339;
      goto LABEL_51;
    case 31:
      return 1952541811;
    case 32:
      v4 = 0x697275636573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
    case 33:
      return 0x69666964696D7568;
    case 34:
      return 0x6964696D75686564;
    case 35:
      return 0xD000000000000011;
    case 36:
      return 0x5F79616C70726961;
    case 37:
      return 0x76745F656C707061;
    case 38:
      return 0x5F74726F70726961;
    case 39:
      return 0x646F70656D6F68;
    case 40:
      return 0x5F646F70656D6F68;
    case 41:
      return 1684099177;
    case 42:
      return 0x656E6F685069;
    case 43:
      return 0x72656B61657073;
    case 44:
      return 0x69736976656C6574;
    case 45:
      return 0x6974616769727269;
    case 46:
      return 0x654A7265776F6873;
    case 47:
      v3 = 2003789939;
LABEL_51:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      break;
    case 48:
      result = 1802398067;
      break;
    case 49:
      result = 0x656C6B6E69727073;
      break;
    case 50:
      result = 0xD000000000000012;
      break;
    case 51:
      result = 0x706F4D746F626F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static AccessoryTypeSemantic.< infix(_:_:)(char a1, char a2)
{
  v3 = AccessoryTypeSemantic.rawValue.getter(a1);
  v5 = v4;
  if (v3 == AccessoryTypeSemantic.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_36A20();
  }

  return v8 & 1;
}

HomeAutomationSiriSuggestions::AccessoryTypeSemantic_optional __swiftcall AccessoryTypeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_36A30();

  if (v1 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v1;
  }
}

HomeAutomationSiriSuggestions::AccessoryTypeSemantic_optional sub_12914@<W0>(Swift::String *a1@<X0>, HomeAutomationSiriSuggestions::AccessoryTypeSemantic_optional *a2@<X8>)
{
  result.value = AccessoryTypeSemantic.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_12944@<X0>(unint64_t *a1@<X8>)
{
  result = AccessoryTypeSemantic.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_12A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_12DD0();
  v5 = sub_12E24();
  v6 = sub_12E78();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_12AD8()
{
  result = qword_55478;
  if (!qword_55478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55478);
  }

  return result;
}

unint64_t sub_12B30()
{
  result = qword_55480;
  if (!qword_55480)
  {
    sub_4488(&qword_55488, &qword_37AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55480);
  }

  return result;
}

unint64_t sub_12B98()
{
  result = qword_55490;
  if (!qword_55490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55490);
  }

  return result;
}

unint64_t sub_12BF0()
{
  result = qword_55498;
  if (!qword_55498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55498);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryTypeSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xCD)
  {
    if (a2 + 51 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 51) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 52;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v5 = v6 - 52;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AccessoryTypeSemantic(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xCD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xCC)
  {
    v6 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x12D98);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 51;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12DD0()
{
  result = qword_554A0;
  if (!qword_554A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_554A0);
  }

  return result;
}

unint64_t sub_12E24()
{
  result = qword_554A8;
  if (!qword_554A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_554A8);
  }

  return result;
}

unint64_t sub_12E78()
{
  result = qword_554B0;
  if (!qword_554B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_554B0);
  }

  return result;
}

uint64_t sub_12ED0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_12EF0, 0, 0);
}

uint64_t sub_12EF0()
{
  v1 = v0[2];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[4] = v3;
  v0[5] = v4;
  v0[6] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_12FA0, v8, v7);
}

uint64_t sub_12FA0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_291B0();
  v6 = v5;
  swift_unknownObjectRelease();
  v0[7] = v4;
  v0[8] = v6;

  return _swift_task_switch(sub_13028, 0, 0);
}

uint64_t sub_13028()
{
  v15 = v0;
  v1 = v0[8];
  if (v1)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v2 = v0[7];
    v3 = v0[3];
    v4 = sub_366C0();
    sub_1D8C(v4, static Log.suggestions);
    sub_36920(27);

    v14._countAndFlagsBits = 0xD000000000000013;
    v14._object = 0x8000000000039DF0;
    sub_36790(v3[1]);
    v17._countAndFlagsBits = 544175136;
    v17._object = 0xE400000000000000;
    sub_36790(v17);
    v18._countAndFlagsBits = v2;
    v18._object = v1;
    sub_36790(v18);
    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003C770;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    v7[1] = xmmword_36F10;
    *(v7 + 7) = &type metadata for String;
    *(v7 + 4) = v2;
    *(v7 + 5) = v1;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v8 = v0[3];
    v9 = sub_366C0();
    sub_1D8C(v9, static Log.suggestions);
    sub_36920(16);

    strcpy(&v14, "Couldn't find ");
    HIBYTE(v14._object) = -18;
    sub_36790(v8[1]);
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    v11._object = 0x800000000003C770;
    v10._object = 0x800000000003C7F0;
    v11._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.warning(output:test:file:function:line:)(v14, 0, v11, v10, 19);

    v7 = &_swiftEmptyArrayStorage;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_132C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_12ED0(v6, a2);
}

uint64_t sub_133C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContainerNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_13400()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59588);
  v1 = sub_1D8C(v0, qword_59588);
  *v1 = sub_28610();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_134A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  v5 = sub_4E88(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v21[-v10];
  sub_1DC4(&qword_55068, &unk_373E0);
  v12 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_36F10;
  v16 = v15 + v14;
  v17 = type metadata accessor for RoomNameResolver();
  v18 = swift_allocObject();
  *(v18 + 16) = 0x656D614E6D6F6F72;
  *(v18 + 24) = 0xE800000000000000;
  v23[3] = v17;
  v23[4] = sub_7694();
  v23[0] = v18;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v16 = 1;
  sub_3BCC(v23, v16 + 8);
  *(v16 + 48) = 1;
  (*(v7 + 16))(v16 + v12[12], v11, v4);
  v19 = v12[13];
  sub_362C0();
  sub_35D10();
  (*(v7 + 8))(v11, v4);
  sub_3D00(v23);
  sub_4E08(a1, a2);
  v22 = a2;
  sub_1F76C(sub_137F8, v21, v15);
  swift_setDeallocating();
  return sub_39C4();
}

unint64_t sub_13768(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_13814(uint64_t a1, uint64_t a2)
{
  v2 = sub_147F8(a1, a2);
  v4 = static UnitSemantic.< infix(_:_:)(v2, v3);
  return sub_147EC(v4);
}

BOOL sub_13834(uint64_t a1, uint64_t a2)
{
  v2 = sub_147F8(a1, a2);
  v4 = static StateSemantic.< infix(_:_:)(v2, v3);
  return sub_147EC(v4);
}

BOOL sub_13854(uint64_t a1, uint64_t a2)
{
  v2 = sub_147F8(a1, a2);
  v4 = static HueSemantic.< infix(_:_:)(v2, v3);
  return sub_147EC(v4);
}

BOOL sub_13874(uint64_t a1, uint64_t a2)
{
  v2 = sub_147F8(a1, a2);
  v4 = static AccessoryTypeSemantic.< infix(_:_:)(v2, v3);
  return sub_147EC(v4);
}

uint64_t AttributeSemantic.rawValue.getter(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 1:
      return 0x656E746867697262;
    case 2:
      return 0x6974617275746173;
    case 3:
      v7 = 1869377379;
      goto LABEL_33;
    case 4:
      v7 = 1702326128;
      goto LABEL_33;
    case 5:
    case 22:
    case 23:
    case 35:
    case 44:
      sub_14808();
      return v10 | 1;
    case 6:
      v3 = 1769172848;
      return v3 | 0x6E6F697400000000;
    case 7:
    case 50:
    case 53:
    case 64:
      sub_14808();
      return v8 | 2;
    case 8:
      v3 = 1635020658;
      return v3 | 0x6E6F697400000000;
    case 9:
      return 0x79746964696D7568;
    case 10:
      return 0x79726574746162;
    case 11:
      v5 = 1802464627;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 12:
      return 0x6D5F6E6F62726163;
    case 13:
      return 0x645F6E6F62726163;
    case 14:
      return 0x746361746E6F63;
    case 15:
      return 0x6E6F69746F6DLL;
    case 16:
      return 0x636E61707563636FLL;
    case 17:
      return 0x746867696CLL;
    case 18:
      return 1801545068;
    case 19:
      v5 = 1852138355;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 20:
      return 0x352E326D70;
    case 21:
      return 808545648;
    case 24:
    case 30:
      sub_14808();
      return v9 | 4;
    case 25:
    case 54:
      sub_14808();
      return v11 | 6;
    case 26:
      return 0x65645F656E6F7A6FLL;
    case 27:
      return 0xD000000000000010;
    case 28:
      return 0x5F727568706C7573;
    case 29:
      return 0x736E65645F636F76;
    case 31:
      return 0x64656C62616E65;
    case 32:
      v5 = 1934978665;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 33:
      return 0x4D6D6172676F7270;
    case 34:
      v3 = 1634891108;
      return v3 | 0x6E6F697400000000;
    case 36:
      return 6649192;
    case 37:
      return 0xD000000000000010;
    case 38:
      return 0xD000000000000010;
    case 39:
      return 1801678700;
    case 40:
      return 0x4C6C6F72746E6F63;
    case 41:
    case 51:
      sub_14808();
      return v13 | 3;
    case 42:
      v5 = 1936286066;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 43:
      return 0xD000000000000010;
    case 45:
      return 0x646F4D676E697773;
    case 46:
      v6 = 10;
      goto LABEL_60;
    case 47:
      return 0xD000000000000010;
    case 48:
      sub_14808();
      return v4 | 8;
    case 49:
      v6 = 5;
LABEL_60:
      result = v6 | 0xD000000000000010;
      break;
    case 52:
      sub_14808();
      result = v12 | 7;
      break;
    case 55:
      result = 0x676E696772616863;
      break;
    case 56:
      result = 0x6574746142776F6CLL;
      break;
    case 57:
      result = 0x68437265746C6966;
      break;
    case 58:
      result = 0x694C7265746C6966;
      break;
    case 59:
      result = 0x76654C7265746177;
      break;
    case 60:
      result = 0x6146737574617473;
      break;
    case 61:
      result = 1701080941;
      break;
    case 62:
      v7 = 1702125943;
LABEL_33:
      result = v7 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 63:
      result = 0x6E6964726F636572;
      break;
    case 65:
      result = 1701670760;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static AttributeSemantic.< infix(_:_:)(char a1, char a2)
{
  v3 = AttributeSemantic.rawValue.getter(a1);
  v5 = v4;
  if (v3 == AttributeSemantic.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_36A20();
  }

  return v8 & 1;
}

HomeAutomationSiriSuggestions::AttributeSemantic_optional __swiftcall AttributeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_36A30();

  if (v1 >= 0x42)
  {
    return 66;
  }

  else
  {
    return v1;
  }
}

HomeAutomationSiriSuggestions::AttributeSemantic_optional sub_14224@<W0>(Swift::String *a1@<X0>, HomeAutomationSiriSuggestions::AttributeSemantic_optional *a2@<X8>)
{
  result.value = AttributeSemantic.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_14254@<X0>(uint64_t *a1@<X8>)
{
  result = AttributeSemantic.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_146EC();
  v5 = sub_14740();
  v6 = sub_14794();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_143F4()
{
  result = qword_555E0;
  if (!qword_555E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_555E0);
  }

  return result;
}

unint64_t sub_1444C()
{
  result = qword_555E8;
  if (!qword_555E8)
  {
    sub_4488(&qword_555F0, &qword_37DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_555E8);
  }

  return result;
}

unint64_t sub_144B4()
{
  result = qword_555F8;
  if (!qword_555F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_555F8);
  }

  return result;
}

unint64_t sub_1450C()
{
  result = qword_55600;
  if (!qword_55600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xBF)
  {
    if (a2 + 65 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 65) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 66;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x42;
  v5 = v6 - 66;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AttributeSemantic(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 65) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xBF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xBE)
  {
    v6 = ((a2 - 191) >> 8) + 1;
    *result = a2 + 65;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x146B4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 65;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_146EC()
{
  result = qword_55608;
  if (!qword_55608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55608);
  }

  return result;
}

unint64_t sub_14740()
{
  result = qword_55610;
  if (!qword_55610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55610);
  }

  return result;
}

unint64_t sub_14794()
{
  result = qword_55618;
  if (!qword_55618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55618);
  }

  return result;
}

uint64_t sub_1481C()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_595A0);
  v1 = sub_1D8C(v0, qword_595A0);
  *v1 = &unk_37EF0;
  v1[1] = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_148B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14958;

  return sub_14A4C(a1, a2);
}

uint64_t sub_14958()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_14A4C(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = *(*(sub_1DC4(&qword_553E0, &qword_37990) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = *(*(sub_35D90() - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v5 = *(*(sub_1DC4(&qword_55388, &unk_37950) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = sub_35CF0();
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_14BB4, 0, 0);
}

uint64_t sub_14BB4()
{
  v1 = *(v0 + 200);
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35F70();
  sub_162C8(0x656D614E6D6F6F72, 0xE800000000000000, v3, (v0 + 16));

  if (*(v0 + 40))
  {
    v4 = sub_15C08();
    v5 = *(v0 + 160);
    if (v4)
    {
      v6 = *(v0 + 168);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 16, &qword_55078, &unk_373F0);
    v6 = 0;
  }

  v7 = sub_35F70();
  sub_162C8(0x7475626972747461, 0xE900000000000065, v7, (v0 + 48));

  if (*(v0 + 72))
  {
    v8 = sub_15C08();
    v9 = *(v0 + 144);
    if (v8)
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 48, &qword_55078, &unk_373F0);
    v11 = 0;
  }

  v12 = sub_35F70();
  sub_162C8(0x65756C6176, 0xE500000000000000, v12, (v0 + 80));

  if (!*(v0 + 104))
  {
    sub_11590(v0 + 80, &qword_55078, &unk_373F0);
LABEL_18:
    v13 = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    goto LABEL_19;
  }

  sub_36480();
  if ((sub_15C08() & 1) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(v0 + 184);
  v14 = v1[4];
  sub_1D48(*(v0 + 200), v1[3]);

  sub_35F80();
  sub_36430();

  if (!v13)
  {
    goto LABEL_18;
  }

  sub_36420();

  if (!*(v0 + 136))
  {
LABEL_19:
    sub_11590(v0 + 112, &qword_55078, &unk_373F0);
    goto LABEL_20;
  }

  sub_364B0();
  if (sub_15C08())
  {
    v15 = *(v0 + 176);
    v16 = v1[4];
    sub_1D48(*(v0 + 200), v1[3]);

    sub_35F80();
    sub_36490();

    goto LABEL_21;
  }

LABEL_20:
  v15 = 0;
LABEL_21:
  *(v0 + 264) = v13;
  *(v0 + 272) = v15;
  if (qword_54D40 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 200);
  sub_35CD0();
  v21 = v1[3];
  v20 = v1[4];
  sub_1D48(v19, v21);
  sub_35F80();
  sub_35D80();
  v22 = type metadata accessor for HomeSuggestionCATs();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v0 + 280) = HomeSuggestionCATs.init(templateDir:options:globals:)(v17, v18);
  if (v6)
  {
    v25 = *(v0 + 216);
    sub_36740();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v0 + 216);
  v28 = sub_35D70();
  v29 = 1;
  sub_3D4C(v27, v26, 1, v28);
  if (v11)
  {
    v30 = *(v0 + 208);
    sub_36740();

    v29 = 0;
  }

  sub_3D4C(*(v0 + 208), v29, 1, v28);
  v31 = swift_task_alloc();
  *(v0 + 288) = v31;
  *v31 = v0;
  v31[1] = sub_15050;
  v32 = *(v0 + 256);
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);

  return sub_1078C();
}

uint64_t sub_15050()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 296) = v0;

  sub_11590(v5, &qword_553E0, &qword_37990);
  sub_11590(v4, &qword_553E0, &qword_37990);
  if (v0)
  {
    v6 = sub_152D4;
  }

  else
  {
    v6 = sub_151E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_151E8()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[26];
  v10 = v0[24];
  v10[3] = v5;
  v11 = sub_3C30(v10);
  (*(v4 + 32))(v11, v3, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_152D4()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];

  v8 = v0[1];
  v9 = v0[37];

  return v8();
}

uint64_t sub_15384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x6867697242746573, 0xED00007373656E74);
  v8[3] = v4;
  v8[4] = sub_12154(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_15490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v37 - v5;
  sub_1DC4(&qword_55068, &unk_373E0);
  v7 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v40 = *(*v7 + 72);
  v9 = v40;
  v10 = swift_allocObject();
  v42 = v10;
  *(v10 + 16) = xmmword_37020;
  v11 = v10 + v8;
  v12 = type metadata accessor for RoomNameResolver();
  v13 = swift_allocObject();
  *(v13 + 16) = 0x656D614E6D6F6F72;
  *(v13 + 24) = 0xE800000000000000;
  v50 = v12;
  v51 = sub_12154(&qword_551B8, type metadata accessor for RoomNameResolver);
  v49[0] = v13;
  sub_1DC4(&qword_55078, &unk_373F0);
  v39 = sub_352A0;
  sub_1219C();
  *v11 = 1;
  sub_3BCC(v49, v11 + 8);
  *(v11 + 48) = 257;
  v14 = v7[12];
  v46 = v3[2];
  v38 = v2;
  v46(v11 + v14, v6, v2);
  v15 = v7[13];
  v41 = sub_362C0();
  sub_1219C();
  v16 = v3[1];
  v45 = v3 + 1;
  v16(v6, v2);
  v17 = v16;
  sub_3D00(v49);
  v18 = v11 + v9;
  v19 = type metadata accessor for AttributeResolver();
  v20 = swift_allocObject();
  v28 = sub_2B290(v20, v21, v22, v23, v24, v25, v26, v27);
  v50 = v19;
  v51 = sub_12154(&qword_55468, type metadata accessor for AttributeResolver);
  v49[0] = v28;
  sub_1219C();
  *v18 = 8;
  sub_3BCC(v49, v18 + 8);
  *(v18 + 48) = 1;
  v29 = v38;
  v46(v18 + v7[12], v6, v38);
  v30 = v18 + v7[13];
  sub_35D10();
  v17(v6, v29);
  sub_3D00(v49);
  v31 = v11 + 2 * v40;
  v32 = type metadata accessor for ValueResolver();
  swift_allocObject();
  v33 = sub_273D4();
  v50 = v32;
  v51 = sub_12154(&qword_55470, type metadata accessor for ValueResolver);
  v49[0] = v33;
  sub_1219C();
  *v31 = 9;
  sub_3BCC(v49, v31 + 8);
  *(v31 + 48) = 0;
  v46(v31 + v7[12], v6, v29);
  v34 = v31 + v7[13];
  sub_35D10();
  v17(v6, v29);
  sub_3D00(v49);
  v35 = v43;
  sub_4E08(v44, v43);
  v48 = v35;
  sub_1F76C(sub_15BEC, v47, v42);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_159C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_553E0, &qword_37990);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = [a1 userTask];
  v9 = v8;
  if (v8)
  {
    [v8 attribute];
  }

  sub_364E0();
  v10 = sub_35D70();
  if (sub_3D74(v7, 1, v10) == 1)
  {
    result = sub_11590(v7, &qword_553E0, &qword_37990);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v12 = sub_35D60();
    *(a2 + 24) = &type metadata for String;
    *a2 = v12;
    *(a2 + 8) = v13;
    return (*(*(v10 - 8) + 8))(v7, v10);
  }

  return result;
}

unint64_t sub_15B1C(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_15C08()
{

  return swift_dynamicCast();
}

BOOL sub_15C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v10 = a3(v9);
  }

  while (v10 != a3(a1));
  return v7 != 0;
}

uint64_t sub_15D0C(unsigned __int8 a1, char a2)
{
  v2 = 0x746E6563726570;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746E6563726570;
  switch(v4)
  {
    case 1:
      v5 = 0x4373656572676564;
      v6 = 0x737569736C65;
      goto LABEL_5;
    case 2:
      v5 = 0xD000000000000011;
      v3 = 0x80000000000390F0;
      break;
    case 3:
      v5 = 0x4773656572676564;
      v6 = 0x636972656E65;
LABEL_5:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4373656572676564;
      v8 = 0x737569736C65;
      goto LABEL_10;
    case 2:
      v2 = 0xD000000000000011;
      v7 = 0x80000000000390F0;
      break;
    case 3:
      v2 = 0x4773656572676564;
      v8 = 0x636972656E65;
LABEL_10:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_36A20();
  }

  return v10 & 1;
}

uint64_t sub_15EA0(__int16 a1, __int16 a2)
{
  HueSemantic.rawValue.getter(a1);
  v4 = v3;
  v6 = v5;
  HueSemantic.rawValue.getter(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1ABA8();
  }

  return v10 & 1;
}

uint64_t sub_15F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1ABA8();
  }

  return v10 & 1;
}

uint64_t sub_16004(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      sub_1ACD4();
      break;
    default:
      break;
  }

  sub_36760();
}

uint64_t sub_160D0(uint64_t a1, __int16 a2)
{
  HueSemantic.rawValue.getter(a2);
  sub_1ABCC();
}

uint64_t sub_16128(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1ABCC();
}

Swift::Int sub_16184(uint64_t a1, __int16 a2)
{
  sub_36A60();
  HueSemantic.rawValue.getter(a2);
  sub_1ABF0();

  return sub_36A80();
}

Swift::Int sub_161D0(uint64_t a1, char a2)
{
  sub_36A60();
  sub_16004(v4, a2);
  return sub_36A80();
}

Swift::Int sub_16274(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_36A60();
  a3(a2);
  sub_1ABF0();

  return sub_36A80();
}

double sub_162C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_19734(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1A750(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1632C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_197AC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1637C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1981C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

void *sub_163CC(uint64_t a1, uint64_t a2)
{
  sub_1DC4(&qword_55790, &qword_38068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_37F40;
  *(inited + 32) = 0;
  sub_1DC4(&qword_55798, &qword_38070);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_36F10;
  *(v6 + 32) = 1;
  *(v6 + 40) = &_swiftEmptyArrayStorage;
  sub_1DC4(&qword_557A0, &qword_38078);
  sub_1A7AC();
  *(inited + 40) = sub_1A958();
  *(inited + 48) = 4;
  *(inited + 56) = sub_1A958();
  *(inited + 64) = 3;
  *(inited + 72) = sub_1A958();
  *(inited + 80) = 2;
  *(inited + 88) = sub_1A958();
  *(inited + 96) = 6;
  *(inited + 104) = sub_1A958();
  *(inited + 112) = 7;
  *(inited + 120) = sub_1A958();
  *(inited + 128) = 8;
  *(inited + 136) = sub_1A958();
  *(inited + 144) = 9;
  *(inited + 152) = sub_1A958();
  *(inited + 160) = 5;
  *(inited + 168) = sub_1A958();
  sub_1DC4(&qword_557B0, &qword_38080);
  sub_1A800();
  v7 = sub_366F0();
  v2[3] = a2;
  v2[4] = v7;
  v2[2] = a1;
  return v2;
}

uint64_t sub_165B0()
{
  sub_116D0();
  v1[19] = v2;
  v1[20] = v0;
  v3 = *(*(sub_1DC4(&qword_55770, &unk_38050) - 8) + 64);
  v1[21] = sub_1AC78();
  v4 = sub_366A0();
  v1[22] = v4;
  sub_1AAA4(v4);
  v1[23] = v5;
  v7 = *(v6 + 64);
  v1[24] = sub_1AC78();
  v8 = sub_1A8D0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_16684()
{
  if (qword_54D30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  *(v0 + 200) = static Log.OSLogs.suggestions;
  sub_36630();
  sub_36640();
  *(v0 + 208) = *(v2 + 16);
  *(v0 + 216) = *(v2 + 24);

  sub_1AA40();
  v3 = sub_348E8();
  *(v0 + 378) = v3;
  if (v3 == 19)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 168);
    v57 = *(v0 + 176);
    v7 = sub_366C0();
    sub_1D8C(v7, static Log.suggestions);
    sub_36920(58);
    v58._countAndFlagsBits = 0xD000000000000038;
    v58._object = 0x800000000003CAE0;
    sub_36790(v58);
    v59._countAndFlagsBits = sub_1AA40();
    sub_36790(v59);
    sub_1A8AC();
    Logger.warning(output:test:file:function:line:)(v8, v9, v10, v11, 72);

    sub_36630();
    v12 = sub_36650();
    sub_3D4C(v6, 1, 1, v12);
    sub_36610();
    sub_11590(v6, &qword_55770, &unk_38050);
    (*(v5 + 8))(v4, v57);
LABEL_27:
    sub_1ACA8();

    sub_1AA4C();
    sub_1AD00();

    __asm { BRAA            X1, X16 }
  }

  v13 = v3;
  sub_3493C(v3);
  if (v15 == 0x656E656353746573 && v14 == 0xE800000000000000)
  {

    goto LABEL_23;
  }

  v17 = sub_36A20();

  if (v17)
  {
LABEL_23:
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v30 = *(v0 + 184);
    v29 = *(v0 + 192);
    v32 = *(v0 + 168);
    v31 = *(v0 + 176);
    v33 = sub_366C0();
    sub_1D8C(v33, static Log.suggestions);
    sub_1A8E0();
    Logger.debug(output:test:caller:)(v34, v35, v36);
    goto LABEL_26;
  }

  v18 = *(*(v0 + 160) + 32);
  v19 = sub_1637C(v13, v18);
  *(v0 + 224) = v19;
  if (!v19)
  {
LABEL_31:
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v30 = *(v0 + 184);
    v43 = *(v0 + 192);
    v32 = *(v0 + 168);
    v44 = *(v0 + 176);
    v45 = sub_366C0();
    sub_1D8C(v45, static Log.suggestions);
    sub_36920(53);
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    v60._countAndFlagsBits = 0xD000000000000033;
    v60._object = 0x800000000003CB40;
    sub_36790(v60);
    *(v0 + 376) = v13;
    sub_369A0();
    v46 = *(v0 + 112);
    v47 = *(v0 + 120);
    sub_1A8E0();
    Logger.warning(output:test:file:function:line:)(v48, v49, v50, v51, 82);

LABEL_26:
    sub_36630();
    v37 = sub_1AC5C();
    sub_1A9E8(v37);
    sub_36610();
    sub_11590(v32, &qword_55770, &unk_38050);
    v38 = *(v30 + 8);
    v39 = sub_1AA40();
    v40(v39);
    goto LABEL_27;
  }

  if (!*(v18 + 16))
  {

    goto LABEL_31;
  }

  sub_3493C(v13);
  if (v21 == 0xD000000000000010 && 0x8000000000039B10 == v20)
  {
  }

  else
  {
    v23 = sub_36A20();

    if ((v23 & 1) == 0)
    {
      type metadata accessor for SuggestionEntityRetrieval();
      *(v0 + 272) = swift_initStackObject();

      v24 = sub_1AA40();
      *(v0 + 280) = sub_2DDB0(v24, v25);
      v26 = swift_task_alloc();
      *(v0 + 288) = v26;
      *v26 = v0;
      v26[1] = sub_170D4;
      sub_1AD00();

      return sub_2E418();
    }
  }

  type metadata accessor for SuggestionEntityRetrieval();
  *(v0 + 232) = swift_initStackObject();

  v52 = sub_1AA40();
  *(v0 + 240) = sub_2DDB0(v52, v53);

  *(v0 + 248) = sub_1787C(v54);
  v55 = swift_task_alloc();
  *(v0 + 256) = v55;
  *v55 = v0;
  v55[1] = sub_16CAC;
  sub_1AD00();

  return sub_2E170();
}

uint64_t sub_16CAC()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  v4 = v3[32];
  v5 = v3[31];
  v6 = v3[30];
  v7 = *v0;
  sub_1A8F0();
  *v8 = v7;
  *(v10 + 264) = v9;

  v11 = sub_1A8D0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_16DC8()
{
  v6 = *(v2 + 264);
  *(v2 + 380) = 1;
  *(v2 + 312) = 0;
  *(v2 + 320) = v6;
  if (!v6)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v23 = sub_1AA14();
    sub_1D8C(v23, static Log.suggestions);
    sub_1A9B0();
    sub_36920(70);
    sub_1ACC0(v24, v25, v26, v27, v28, v29, v30, v31, v45, v46, v48, v49);
    v53._countAndFlagsBits = 0xD000000000000031;
    v53._object = 0x800000000003CB80;
    sub_36790(v53);
    *(v2 + 377) = v1;
    sub_369A0();
    v54._countAndFlagsBits = 0xD000000000000011;
    v54._object = 0x800000000003CBC0;
    sub_36790(v54);
    sub_1790C(v5);

    v32 = sub_36810();
    v34 = v33;

    v55._countAndFlagsBits = v32;
    v55._object = v34;
    sub_36790(v55);

    v35 = *v0;
    v36 = *(v2 + 136);
    sub_1A8AC();
    Logger.warning(output:test:file:function:line:)(v37, v38, v39, v40, 97);

    sub_36630();
    v41 = sub_1AD5C();
    sub_1A9E8(v41);
    sub_1AB04();
    sub_11590(v4, &qword_55770, &unk_38050);
    (*(v3 + 8))(0, v47);
    sub_1ACA8();

    sub_1AA4C();
    sub_1AB2C();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v2 + 224);

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v9 = *(v2 + 208);
  v8 = *(v2 + 216);
  v10 = *(v2 + 152);
  v11 = sub_366C0();
  *(v2 + 328) = sub_1D8C(v11, static Log.suggestions);
  sub_1A9B0();
  sub_36920(50);

  sub_3ED0();
  v50 = v12;
  v51._countAndFlagsBits = sub_365E0();
  sub_36790(v51);

  sub_1AD1C(" in Context for suggestion: ");
  v52._countAndFlagsBits = v9;
  v52._object = v8;
  sub_36790(v52);
  sub_1A8E0();
  Logger.debug(output:test:caller:)(v13, v14, v15);

  *(v2 + 352) = sub_1AC14();
  v16 = *(*(v50 + 8) + 8);
  v17 = sub_36830();
  sub_1A934(v17, v18);
  sub_1AB2C();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_170D4()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  v4 = *(v3 + 288);
  v5 = *(v3 + 280);
  v6 = *v0;
  sub_1A8F0();
  *v7 = v6;
  *(v10 + 296) = v8;
  *(v10 + 304) = v9;
  *(v10 + 379) = v11;

  v12 = sub_1A8D0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_171D8()
{
  v7 = *(v2 + 296);
  v6 = *(v2 + 304);
  *(v2 + 380) = *(v2 + 379) & 1;
  *(v2 + 312) = v6;
  *(v2 + 320) = v7;
  if (!v7)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v24 = sub_1AA14();
    sub_1D8C(v24, static Log.suggestions);
    sub_1A9B0();
    sub_36920(70);
    sub_1ACC0(v25, v26, v27, v28, v29, v30, v31, v32, v46, v47, v49, v50);
    v54._countAndFlagsBits = 0xD000000000000031;
    v54._object = 0x800000000003CB80;
    sub_36790(v54);
    *(v2 + 377) = v1;
    sub_369A0();
    v55._countAndFlagsBits = 0xD000000000000011;
    v55._object = 0x800000000003CBC0;
    sub_36790(v55);
    sub_1790C(v5);

    v33 = sub_36810();
    v35 = v34;

    v56._countAndFlagsBits = v33;
    v56._object = v35;
    sub_36790(v56);

    v36 = *v0;
    v37 = *(v2 + 136);
    sub_1A8AC();
    Logger.warning(output:test:file:function:line:)(v38, v39, v40, v41, 97);

    sub_36630();
    v42 = sub_1AD5C();
    sub_1A9E8(v42);
    sub_1AB04();
    sub_11590(v4, &qword_55770, &unk_38050);
    (*(v3 + 8))(0, v48);
    sub_1ACA8();

    sub_1AA4C();
    sub_1AB2C();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v2 + 224);

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v10 = *(v2 + 208);
  v9 = *(v2 + 216);
  v11 = *(v2 + 152);
  v12 = sub_366C0();
  *(v2 + 328) = sub_1D8C(v12, static Log.suggestions);
  sub_1A9B0();
  sub_36920(50);

  sub_3ED0();
  v51 = v13;
  v52._countAndFlagsBits = sub_365E0();
  sub_36790(v52);

  sub_1AD1C(" in Context for suggestion: ");
  v53._countAndFlagsBits = v10;
  v53._object = v9;
  sub_36790(v53);
  sub_1A8E0();
  Logger.debug(output:test:caller:)(v14, v15, v16);

  *(v2 + 352) = sub_1AC14();
  v17 = *(*(v51 + 8) + 8);
  v18 = sub_36830();
  sub_1A934(v18, v19);
  sub_1AB2C();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_174E8()
{
  sub_116D0();
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[40];
  sub_29334();
  v5 = sub_1A8D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1754C()
{
  if (*(v0 + 380) == 1)
  {
    v1 = *(v0 + 320);

    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);
    sub_36630();
    v7 = sub_1AC5C();
    sub_1AA58(v7);
    sub_11590(v6, &qword_55770, &unk_38050);
    (*(v5 + 8))(v2, v4);
    sub_1ACA8();

    sub_1AA4C();

    return v8();
  }

  else
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 312);
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    sub_36920(50);

    sub_3ED0();
    v19 = v14;
    *(v0 + 144) = sub_36380();
    sub_1A668();
    v21._countAndFlagsBits = sub_368C0();
    sub_36790(v21);

    v22._countAndFlagsBits = 0xD00000000000001CLL;
    v22._object = 0x800000000003CC00;
    sub_36790(v22);
    v23._countAndFlagsBits = v13;
    v23._object = v12;
    sub_36790(v23);
    v15._countAndFlagsBits = 0xD000000000000012;
    v16._countAndFlagsBits = 0xD00000000000008ALL;
    v16._object = 0x800000000003C930;
    v15._object = v19;
    Logger.debug(output:test:caller:)(v15, 0, v16);

    v17 = *(v0 + 360);
    v18 = *(v0 + 368);

    return _swift_task_switch(sub_17748, v17, v18);
  }
}

uint64_t sub_17748()
{
  sub_116D0();
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  sub_29568();
  v5 = sub_1A8D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_177AC()
{
  v1 = v0[40];

  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  sub_36630();
  v7 = sub_1AC5C();
  sub_1AA58(v7);
  sub_11590(v6, &qword_55770, &unk_38050);
  (*(v5 + 8))(v2, v4);
  sub_1ACA8();

  sub_1AA4C();

  return v8();
}

void *sub_1787C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_195E0(*(a1 + 16), 0);
  v4 = sub_1A574(&v6, v3 + 4, v2, a1);
  sub_1A65C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1790C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_19F6C(0, v1, 0);
  result = sub_1A6BC(a1);
  v6 = result;
  v7 = 0;
  v8 = a1 + 64;
  v25 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_24;
      }

      v26 = v5;
      v27 = v7;
      v28 = v4;
      v10 = *(*(a1 + 48) + 8 * v6);
      result = sub_36320();
      v11 = result;
      v13 = v12;
      v15 = *(&_swiftEmptyArrayStorage + 2);
      v14 = *(&_swiftEmptyArrayStorage + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_19F6C((v14 > 1), v15 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
      v16 = &_swiftEmptyArrayStorage + 16 * v15;
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v17 = 1 << *(a1 + 32);
      if (v6 >= v17)
      {
        goto LABEL_25;
      }

      v8 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v28)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 72 + 8 * v9);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1A6FC(v6, v28, v26 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_1A6FC(v6, v28, v26 & 1);
      }

LABEL_18:
      v7 = v27 + 1;
      if (v27 + 1 == v25)
      {
        return &_swiftEmptyArrayStorage;
      }

      v5 = 0;
      v4 = *(a1 + 36);
      v6 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_17B3C()
{
  sub_116D0();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_366C0();
  v1[11] = v3;
  sub_1AAA4(v3);
  v1[12] = v4;
  v6 = *(v5 + 64);
  v1[13] = sub_1AC78();
  v7 = sub_35F40();
  v1[14] = v7;
  sub_1AAA4(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = sub_1AC78();
  v11 = sub_1DC4(&qword_55740, &qword_38028);
  v1[17] = v11;
  v12 = *(*(v11 - 8) + 64);
  v1[18] = sub_1AC78();
  v13 = *(*(sub_1DC4(&qword_55748, &qword_38030) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v14 = sub_1A8D0();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_17CB0()
{
  v1 = v0[9];
  sub_36250();
  sub_36070();
  sub_361F0();
  sub_1AA40();
  LOBYTE(v1) = sub_36230();

  if ((v1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[9];
  sub_36080();
  (*(v7 + 104))(v3, enum case for DeliveryVehicle.assistantSuggestions(_:), v6);
  sub_3D4C(v3, 0, 1, v6);
  v9 = *(v5 + 48);
  sub_1A41C(v2, v4);
  sub_1A41C(v3, v4 + v9);
  if (sub_3D74(v4, 1, v6) == 1)
  {
    v10 = v0[21];
    v11 = v0[14];
    sub_11590(v0[20], &qword_55748, &qword_38030);
    sub_11590(v10, &qword_55748, &qword_38030);
    if (sub_3D74(v4 + v9, 1, v11) == 1)
    {
      sub_11590(v0[18], &qword_55748, &qword_38030);
LABEL_12:
      sub_1AD3C();

      v30 = v0[1];

      return v30(0);
    }

    goto LABEL_7;
  }

  v12 = v0[14];
  sub_1A41C(v0[18], v0[19]);
  v13 = sub_3D74(v4 + v9, 1, v12);
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[19];
  if (v13 == 1)
  {
    v17 = v0[14];
    v18 = v0[15];
    sub_11590(v0[20], &qword_55748, &qword_38030);
    sub_11590(v14, &qword_55748, &qword_38030);
    v19 = *(v18 + 8);
    v20 = sub_1AB48();
    v21(v20);
LABEL_7:
    sub_11590(v0[18], &qword_55740, &qword_38028);
    goto LABEL_8;
  }

  v31 = v0[18];
  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  (*(v25 + 32))(v24, v4 + v9, v26);
  sub_1A708(&qword_55758, 255, &type metadata accessor for DeliveryVehicle);
  v27 = sub_36700();
  v28 = *(v25 + 8);
  v28(v24, v26);
  sub_11590(v15, &qword_55748, &qword_38030);
  sub_11590(v14, &qword_55748, &qword_38030);
  v29 = sub_1AB48();
  (v28)(v29);
  sub_11590(v31, &qword_55748, &qword_38030);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_8:
  type metadata accessor for SuggestionEntityRetrieval();
  v0[22] = swift_initStackObject();
  v0[23] = sub_2DDB0(0xD000000000000017, 0x800000000003C8D0);
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_180B0;

  return sub_2DE5C();
}

uint64_t sub_180B0()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  v4 = *(v3 + 192);
  v5 = *(v3 + 184);
  v6 = *v0;
  sub_1A8F0();
  *v7 = v6;
  *(v9 + 200) = v8;

  v10 = sub_1A8D0();

  return _swift_task_switch(v10, v11, v12);
}

void sub_181B0()
{
  v118 = v0;
  v2 = v0[25];
  if (!v2)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v12 = v0[10];
    sub_1D8C(v0[11], static Log.suggestions);
    sub_1AAC4();
    sub_36920(57);
    v121._countAndFlagsBits = 0xD000000000000037;
    v121._object = 0x800000000003C8F0;
    sub_36790(v121);
    sub_36790(v12[1]);
    sub_1A9A0();
    Logger.warning(output:test:file:function:line:)(v13, v14, v15, v16, 119);
    goto LABEL_9;
  }

  sub_1AB54();
  v3 = v0[10];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  v6 = sub_348E8();
  if (v6 != 19)
  {
    v18 = v6;
    v19 = v0[10];
    v110 = sub_362E0();
    v20 = sub_1637C(v18, *(v19 + 32));
    if (v20)
    {
      v114 = sub_1787C(v20);
    }

    else
    {
      v114 = _swiftEmptyArrayStorage;
    }

    v109 = v2;
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];
    sub_1D8C(v23, static Log.suggestions);
    v25 = *(v22 + 16);
    v24 = (v22 + 16);
    v25(v21);
    sub_1AAC4();
    sub_36920(87);
    v122._countAndFlagsBits = 0x676E696B63656843;
    v122._object = 0xEC00000020666920;
    sub_36790(v122);
    v112 = v5;
    v113 = v4;
    v123._countAndFlagsBits = v4;
    v123._object = v5;
    sub_36790(v123);
    v124._countAndFlagsBits = v1 + 17;
    v124._object = 0x800000000003CA10;
    sub_36790(v124);
    v26 = sub_3E5C(v110);
    v111 = v0;
    if (v26)
    {
      v27 = v26;
      v115 = _swiftEmptyArrayStorage;
      v28 = &v115;
      sub_19F6C(0, v26 & ~(v26 >> 63), 0);
      if ((v27 & 0x8000000000000000) != 0)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v1 = 0;
      v29 = v115;
      v24 = (v110 & 0xC000000000000001);
      do
      {
        if (v24)
        {
          sub_36930();
        }

        else
        {
          v30 = *(v110 + 8 * v1 + 32);
        }

        v31 = sub_365E0();
        v33 = v32;

        v115 = v29;
        v35 = v29[2];
        v34 = v29[3];
        if (v35 >= v34 >> 1)
        {
          sub_1AC38(v34);
          v29 = v115;
        }

        ++v1;
        v29[2] = v35 + 1;
        v36 = &v29[2 * v35];
        v36[4] = v31;
        v36[5] = v33;
      }

      while (v27 != v1);

      sub_1AB54();
    }

    else
    {
    }

    v37 = sub_36810();
    v39 = v38;

    v125._countAndFlagsBits = v37;
    v125._object = v39;
    sub_36790(v125);

    v126._countAndFlagsBits = v1 + 20;
    v126._object = 0x800000000003CA40;
    sub_36790(v126);
    v40 = v114[2];
    v27 = _swiftEmptyArrayStorage;
    if (v40)
    {
      v115 = _swiftEmptyArrayStorage;
      sub_19F6C(0, v40, 0);
      v41 = v115;
      v24 = v114 + 4;
      do
      {
        v42 = *v24++;
        v43 = sub_36320();
        v45 = v44;
        v115 = v41;
        v47 = v41[2];
        v46 = v41[3];
        if (v47 >= v46 >> 1)
        {
          sub_1AC38(v46);
          v41 = v115;
        }

        v41[2] = v47 + 1;
        v48 = &v41[2 * v47];
        v48[4] = v43;
        v48[5] = v45;
        --v40;
      }

      while (v40);
    }

    v49 = v111[12];
    v23 = v111[13];
    v50 = v111[11];
    v51 = sub_36810();
    v1 = v52;

    v127._countAndFlagsBits = v51;
    v127._object = v1;
    sub_36790(v127);

    v53 = v117;
    sub_1AB54();
    sub_1ACE8();
    v54._object = v53;
    Logger.debug(output:test:caller:)(v54, 0, v55);

    (*(v49 + 8))(v23, v50);
    sub_1ACF4();
    v0 = v112;
    v28 = v113;
    v57 = v113 == v1 && v56 == v112;
    if (v57 || (sub_1A9C0() & 1) != 0)
    {
      if (sub_362F0())
      {
        v17 = 1;
        v0 = v111;
LABEL_166:
        v62._countAndFlagsBits = v113;
        v62._object = v112;
        goto LABEL_167;
      }

      sub_1ACE8();
      sub_1A9A0();
      Logger.warning(output:test:file:function:line:)(v58, v59, v60, v61, 149);
      v17 = 0;
      v0 = v111;
LABEL_39:
      v62._countAndFlagsBits = v113;
      v62._object = v112;
LABEL_167:
      v116 = 0x6767755320202020;
      v117 = 0xEF206E6F69747365;
      sub_36790(v62);
      v128._countAndFlagsBits = 0x64696C6156736920;
      v128._object = 0xEA0000000000203ALL;
      sub_36790(v128);
      if (v17)
      {
        v90._countAndFlagsBits = 1702195828;
      }

      else
      {
        v90._countAndFlagsBits = 0x65736C6166;
      }

      if (v17)
      {
        v91 = 0xE400000000000000;
      }

      else
      {
        v91 = 0xE500000000000000;
      }

      v90._object = v91;
      sub_36790(v90);

      v92 = v117;
      sub_1ACE8();
      v93._object = v92;
      Logger.debug(output:test:caller:)(v93, 0, v94);

      goto LABEL_174;
    }

    sub_1ACF4();
    v64 = v113 == v1 + 3 && v63 == v112;
    if (v64 || (sub_1A9C0() & 1) != 0)
    {
      v28 = v109;
      v1 = sub_362E0();
      v65 = sub_3E5C(v1);
      v27 = 0;
      v24 = (v1 & 0xC000000000000001);
      while (v65 != v27)
      {
        if (v24)
        {
          v28 = sub_36930();
        }

        else
        {
          sub_1A9DC();
          if (v66)
          {
            goto LABEL_98;
          }

          v28 = *(v1 + 8 * v27 + 32);
        }

        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        LOBYTE(v23) = sub_36670();

        ++v27;
        if (v23)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_162;
    }

    sub_1ACF4();
    v68 = v113 == v1 + 10 && v67 == v112;
    if (v68 || (sub_1A9C0() & 1) != 0)
    {
      v28 = v109;
      v69 = sub_362E0();
      sub_3E5C(v69);
      sub_1A888();
      while (v1 != v27)
      {
        if (v24)
        {
          v28 = sub_1AB90();
        }

        else
        {
          sub_1A9DC();
          if (v66)
          {
            goto LABEL_114;
          }

          sub_1A974();
        }

        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        sub_1AB78();
        v70 = sub_36680();
        sub_1A860(v70);
        sub_1AB60();

        ++v27;
        if (v23)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_162;
    }

    sub_1ACF4();
    v72 = v113 == v1 && v71 == v112;
    if (v72 || (sub_1A9C0() & 1) != 0)
    {
      v73 = sub_362E0();
      sub_3E5C(v73);
      sub_1A888();
      while (v1 != v27)
      {
        if (v24)
        {
          sub_1AB90();
        }

        else
        {
          sub_1A9DC();
          if (v66)
          {
            goto LABEL_131;
          }

          sub_1A974();
        }

        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        sub_1AB78();
        v74 = sub_36680();
        sub_1A860(v74);
        sub_1AB60();

        ++v27;
        if (v23)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_162;
    }

    v75 = v113 == 0x6867697242746573 && v112 == 0xED00007373656E74;
    if (v75 || (sub_1A9C0() & 1) != 0)
    {
      v76 = sub_362E0();
      sub_3E5C(v76);
      sub_1A888();
      while (v1 != v27)
      {
        if (v24)
        {
          sub_1AB90();
        }

        else
        {
          sub_1A9DC();
          if (v66)
          {
            goto LABEL_147;
          }

          sub_1A974();
        }

        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        sub_1AB78();
        v77 = sub_36680();
        sub_1A860(v77);
        sub_1AB60();

        ++v27;
        if (v23)
        {
LABEL_163:

          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_99:
    v78 = v28 == 0x616D696C43746573 && v112 == 0xEE0065646F4D6574;
    if (v78 || (sub_1A9C0() & 1) != 0)
    {
      v79 = sub_362E0();
      sub_3E5C(v79);
      sub_1A888();
      while (v1 != v27)
      {
        if (v24)
        {
          sub_1AB90();
        }

        else
        {
          sub_1A9DC();
          if (v66)
          {
            goto LABEL_178;
          }

          sub_1A974();
        }

        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        sub_1AB78();
        v80 = sub_36680();
        sub_1A860(v80);
        sub_1AB60();

        ++v27;
        if (v23)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_162;
    }

LABEL_116:
    v81 = v28 == 0x726F6C6F43746573 && v0 == 0xE800000000000000;
    if (v81 || (sub_1AD7C() & 1) != 0)
    {
      v82 = sub_362E0();
      sub_3E5C(v82);
      sub_1A888();
      while (v1 != v27)
      {
        if (v24)
        {
          sub_1AB90();
        }

        else
        {
          sub_1A9DC();
          if (v66)
          {
            goto LABEL_201;
          }

          sub_1A974();
        }

        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

        sub_1AB78();
        v83 = sub_36680();
        sub_1A860(v83);
        sub_1AB60();

        ++v27;
        if (v23)
        {
          goto LABEL_163;
        }
      }
    }

    else
    {
LABEL_132:
      v84 = v113 == 0x70536E6146746573 && v112 == 0xEB00000000646565;
      if (v84 || (sub_1AD7C() & 1) != 0)
      {
        v85 = sub_362E0();
        sub_3E5C(v85);
        sub_1A888();
        while (v1 != v27)
        {
          if (v24)
          {
            sub_1AB90();
          }

          else
          {
            sub_1A9DC();
            if (v66)
            {
              goto LABEL_204;
            }

            sub_1A974();
          }

          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_204:
            __break(1u);
            goto LABEL_205;
          }

          sub_1AB78();
          v86 = sub_36680();
          sub_1A860(v86);
          sub_1AB60();

          ++v27;
          if (v23)
          {
            goto LABEL_163;
          }
        }
      }

      else
      {
LABEL_148:
        v87 = v113 == 0x65706D6554746573 && v112 == 0xEE00657275746172;
        if (!v87 && (sub_1AD7C() & 1) == 0)
        {
LABEL_179:
          v96 = v113 == 0x656E656353746573 && v112 == 0xE800000000000000;
          if (!v96 && (sub_1AD7C() & 1) == 0)
          {
LABEL_202:
            v17 = 1;
            v0 = v111;
            goto LABEL_166;
          }

          v97 = sub_36300();
          v116 = v27;
          v98 = sub_3E5C(v97);
          for (i = 0; v98 != i; ++i)
          {
            if ((v97 & 0xC000000000000001) != 0)
            {
              v1 = sub_36930();
            }

            else
            {
              if (i >= *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_208;
              }

              v1 = *(v97 + 8 * i + 32);
            }

            if (__OFADD__(i, 1))
            {
              goto LABEL_207;
            }

            v100 = sub_365C0();
            if (v100 >> 62)
            {
              v101 = sub_369D0();
            }

            else
            {
              v101 = *(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8));
            }

            if (v101)
            {
              sub_36960();
              v102 = *(v116 + 16);
              sub_36980();
              sub_36990();
              sub_36970();
            }

            else
            {
            }
          }

          v103 = sub_3E5C(v116);

          if (!v103)
          {
            sub_3ED0();
            sub_1AB54();
            v116 = v1 + 27;
            v117 = v104;
            v0 = v111;
            v111[8] = v109;
            sub_36310();
            sub_1A708(&qword_55750, 255, &type metadata accessor for Home);
            v129._countAndFlagsBits = sub_36A10();
            sub_36790(v129);

            sub_1ACE8();
            sub_1A9A0();
            Logger.warning(output:test:file:function:line:)(v105, v106, v107, v108, 180);

            v17 = 0;
            goto LABEL_39;
          }

LABEL_164:
          v17 = 1;
LABEL_165:
          v0 = v111;
          sub_1AB54();
          goto LABEL_166;
        }

        v88 = sub_362E0();
        sub_3E5C(v88);
        sub_1A888();
        while (v1 != v27)
        {
          if (v24)
          {
            sub_1AB90();
          }

          else
          {
            sub_1A9DC();
            if (v66)
            {
              goto LABEL_206;
            }

            sub_1A974();
          }

          if (__OFADD__(v27, 1))
          {
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
            return;
          }

          sub_1AB78();
          v89 = sub_36680();
          sub_1A860(v89);
          sub_1AB60();

          ++v27;
          if (v23)
          {
            goto LABEL_163;
          }
        }
      }
    }

LABEL_162:

    v17 = 0;
    goto LABEL_165;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  sub_1D8C(v0[11], static Log.suggestions);
  sub_1AAC4();
  sub_36920(44);

  sub_3ED0();
  v116 = v1 + 26;
  v117 = v7;
  v120._countAndFlagsBits = v4;
  v120._object = v5;
  sub_36790(v120);
  sub_1A9A0();
  Logger.warning(output:test:file:function:line:)(v8, v9, v10, v11, 126);

LABEL_9:
  v17 = 0;
LABEL_174:

  sub_1AD3C();

  v95 = v0[1];

  v95(v17);
}