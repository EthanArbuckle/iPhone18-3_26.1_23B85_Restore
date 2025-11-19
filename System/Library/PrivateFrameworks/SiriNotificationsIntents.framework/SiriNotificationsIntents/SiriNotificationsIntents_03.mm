uint64_t sub_26850497C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_9();
  v3 = *(v1 + 40);
  v4 = sub_2684DEAF0(v3);
  v5 = (a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v6 = (a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v7 = (a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_37;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](i, v3);
      v10 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v10 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8);
    v12 = v5[1];
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title) == *v5 && v11 == v12;
      if (!v13 && (sub_2685691C0() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v12)
    {
      goto LABEL_34;
    }

    v14 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8);
    v15 = v6[1];
    if (v14)
    {
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle) == *v6 && v14 == v15;
      if (!v16 && (sub_2685691C0() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v15)
    {
      goto LABEL_34;
    }

    v17 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8);
    v18 = v7[1];
    if (v17)
    {
      if (v18)
      {
        v19 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body) == *v7 && v17 == v18;
        if (v19 || (sub_2685691C0() & 1) != 0)
        {
LABEL_36:

LABEL_37:

          return v4 != i;
        }
      }
    }

    else if (!v18)
    {
      goto LABEL_36;
    }

LABEL_34:
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_268504B64()
{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
  }
}

uint64_t sub_268504B7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856B420;
  *(inited + 32) = a1;
  swift_beginAccess();

  sub_268509654(inited);
  return swift_endAccess();
}

unint64_t sub_268504C0C()
{
  result = sub_268503BF8();
  if (result)
  {
    *(result + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) = 0;
    *(result + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 0;
    *(result + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) = 1;
  }

  return result;
}

uint64_t sub_268504C5C()
{
  v0 = sub_2685689F0();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v9 = sub_268504C0C();
  if (v9)
  {
    *(v9 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) = 1;
    v10 = OUTLINED_FUNCTION_11_7();
    MEMORY[0x26D61BE40](v10);
    OUTLINED_FUNCTION_8_9();
    sub_268568D20();
    return swift_endAccess();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v0, qword_28028B348);
    v12 = OUTLINED_FUNCTION_6_10();
    v13(v12);
    v14 = sub_2685689E0();
    v15 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v15))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_4(&dword_2684CA000, v16, v17, "NotificationStateManager readFullNotification | no followup notification to read fully");
      OUTLINED_FUNCTION_2();
    }

    return (*(v3 + 8))(v8, v0);
  }
}

uint64_t sub_268504DEC()
{
  v0 = sub_2685689F0();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v9 = sub_268504C0C();
  if (v9)
  {
    v10 = v9;
    sub_2685199D0();
    if (v11)
    {
      v13 = v11;
      v14 = v12;
      sub_26851B738();
    }

    *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) = 1;
    v15 = OUTLINED_FUNCTION_11_7();
    MEMORY[0x26D61BE40](v15);
    OUTLINED_FUNCTION_8_9();
    sub_268568D20();
    return swift_endAccess();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v0, qword_28028B348);
    v17 = OUTLINED_FUNCTION_6_10();
    v18(v17);
    v19 = sub_2685689E0();
    v20 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_4(&dword_2684CA000, v21, v22, "NotificationStateManager repeatNotification | no followup notification to repeat");
      OUTLINED_FUNCTION_2();
    }

    return (*(v3 + 8))(v8, v0);
  }
}

uint64_t sub_268504FBC(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  v4 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_268504FEC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*(v0 + 4) + 32);
  v2 = swift_task_alloc();
  *(v0 + 5) = v2;
  *v2 = v0;
  v2[1] = sub_268505080;
  v3 = v0[3];

  return sub_268559770(v3);
}

uint64_t sub_268505080()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 40);
  v7 = *v0;
  *(*v0 + 48) = v2;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268505174()
{
  OUTLINED_FUNCTION_5();
  sub_2685406BC(v0[6], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2685051E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v44[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44[-v19];
  v21 = type metadata accessor for ReadingRecord();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_5();
  v25 = (v24 - v23);
  if (!a1)
  {
    return *(v3 + 24);
  }

  sub_2685056B4(a2, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_2684F8A9C(v20);
    return *(v3 + 24);
  }

  sub_2684E6D48(v20, v25);
  v27 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement);
  v51 = v9;
  if (v27 == 1)
  {
    if (*(a1 + 16) == *v25 && *(a1 + 24) == v25[1])
    {
      v50 = 1;
    }

    else
    {
      v50 = sub_2685691C0();
    }
  }

  else
  {
    v50 = 0;
  }

  v29 = *(v21 + 20);

  sub_268567560();
  v31 = v30;
  v46 = v3;
  v49 = *(v3 + 24);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v32 = __swift_project_value_buffer(v6, qword_28028B348);
  v33 = *(v51 + 16);
  v47 = v32;
  v48 = v33;
  v33(v16);
  v34 = sub_2685689E0();
  v35 = sub_268568DD0();
  if (OUTLINED_FUNCTION_13_0(v35))
  {
    v36 = v49 == 0;
    v45 = v31 <= 60.0;
    v37 = swift_slowAlloc();
    *v37 = 67109632;
    *(v37 + 4) = v50 & 1;
    *(v37 + 8) = 1024;
    *(v37 + 10) = v45;
    *(v37 + 14) = 1024;
    *(v37 + 16) = v36;
    _os_log_impl(&dword_2684CA000, v34, v35, "NotificationStateManager isExtendedBurst | is same type as last announcememnt: %{BOOL}d, is received within threshold: %{BOOL}d, is new session: %{BOOL}d", v37, 0x14u);
    OUTLINED_FUNCTION_2();
  }

  v38 = *(v51 + 8);
  v51 += 8;
  v38(v16, v6);
  if (v49)
  {
    v39 = 0;
  }

  else
  {
    v39 = v50 & (v31 <= 60.0);
  }

  v48(v14, v47, v6);
  v40 = sub_2685689E0();
  v41 = sub_268568DD0();
  if (OUTLINED_FUNCTION_13_0(v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109120;
    *(v42 + 4) = v39;
    _os_log_impl(&dword_2684CA000, v40, v41, "NotificationStateManager isExtendedBurst | is extended burst: %{BOOL}d", v42, 8u);
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v38(v14, v6);
  if (v39)
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v46 + 24);
  }

  sub_2684E69E4(v25);
  return v26;
}

uint64_t ANStateManager.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ANStateManager.__deallocating_deinit()
{
  ANStateManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2685056B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_9()
{
  v2 = *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_2685248B4(v2);
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return swift_beginAccess();
}

uint64_t static SirikitLocalizedAppName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_268568810();
  v66 = *(v3 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v65 = v8;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  v11 = &v59[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_27();
  v61 = v14;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  v63 = &v59[-v16];
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  v64 = &v59[-v18];
  OUTLINED_FUNCTION_17();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v59[-v26];
  v28 = sub_268568830();
  v67 = a2;
  v29 = sub_268568830();
  v30 = v29;
  if (!v28)
  {
    if (!v29)
    {
      goto LABEL_7;
    }

LABEL_28:
    v49 = 0;
    return v49 & 1;
  }

  if (!v29)
  {

    goto LABEL_28;
  }

  sub_2685686F0();
  v31 = sub_268568E70();

  if ((v31 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  sub_268568840();
  sub_268568840();
  v32 = *(v6 + 48);
  sub_2684D4298(v27, v11);
  sub_2684D4298(v25, &v11[v32]);
  OUTLINED_FUNCTION_2_1(v11);
  if (v35)
  {
    v33 = OUTLINED_FUNCTION_1_10();
    sub_2684D199C(v33, v34, &qword_26856A1E0);
    sub_2684D199C(v27, &qword_280282AF0, &qword_26856A1E0);
    OUTLINED_FUNCTION_2_1(&v11[v32]);
    if (v35)
    {
      sub_2684D199C(v11, &qword_280282AF0, &qword_26856A1E0);
      goto LABEL_18;
    }

LABEL_16:
    v38 = v11;
LABEL_27:
    sub_2684D199C(v38, &qword_280282F98, qword_26856C420);
    goto LABEL_28;
  }

  sub_2684D4298(v11, v22);
  OUTLINED_FUNCTION_2_1(&v11[v32]);
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_1_10();
    sub_2684D199C(v36, v37, &qword_26856A1E0);
    sub_2684D199C(v27, &qword_280282AF0, &qword_26856A1E0);
    (*(v66 + 8))(v22, v3);
    goto LABEL_16;
  }

  v39 = v66;
  v40 = &v11[v32];
  v41 = v62;
  (*(v66 + 32))(v62, v40, v3);
  sub_268500294();
  v60 = sub_268568B00();
  v42 = *(v39 + 8);
  v42(v41, v3);
  sub_2684D199C(v25, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v27, &qword_280282AF0, &qword_26856A1E0);
  v42(v22, v3);
  sub_2684D199C(v11, &qword_280282AF0, &qword_26856A1E0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  v43 = v64;
  sub_268568820();
  v44 = v63;
  sub_268568820();
  v45 = *(v6 + 48);
  v46 = v65;
  sub_2684D4298(v43, v65);
  sub_2684D4298(v44, v46 + v45);
  OUTLINED_FUNCTION_2_1(v46);
  if (!v35)
  {
    v50 = v61;
    sub_2684D4298(v46, v61);
    OUTLINED_FUNCTION_2_1(v46 + v45);
    if (!v51)
    {
      v55 = v44;
      v56 = v66;
      v57 = v62;
      (*(v66 + 32))(v62, v46 + v45, v3);
      sub_268500294();
      v49 = sub_268568B00();
      v58 = *(v56 + 8);
      v58(v57, v3);
      sub_2684D199C(v55, &qword_280282AF0, &qword_26856A1E0);
      sub_2684D199C(v43, &qword_280282AF0, &qword_26856A1E0);
      v58(v50, v3);
      sub_2684D199C(v46, &qword_280282AF0, &qword_26856A1E0);
      return v49 & 1;
    }

    v52 = OUTLINED_FUNCTION_1_10();
    sub_2684D199C(v52, v53, &qword_26856A1E0);
    sub_2684D199C(v43, &qword_280282AF0, &qword_26856A1E0);
    (*(v66 + 8))(v50, v3);
    goto LABEL_26;
  }

  v47 = OUTLINED_FUNCTION_1_10();
  sub_2684D199C(v47, v48, &qword_26856A1E0);
  sub_2684D199C(v43, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_2_1(v46 + v45);
  if (!v35)
  {
LABEL_26:
    v38 = v46;
    goto LABEL_27;
  }

  sub_2684D199C(v46, &qword_280282AF0, &qword_26856A1E0);
  v49 = 1;
  return v49 & 1;
}

uint64_t sub_268505E24()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831D0, &unk_26856C870);
  return sub_268568B70();
}

uint64_t sub_268505E88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents35RNReadLatestNotificationActionGroup_transition);
  v2 = *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents35RNReadLatestNotificationActionGroup_notificationManager);

  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents35RNReadLatestNotificationActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_268505ED8()
{
  sub_268505E88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNReadLatestNotificationActionGroup()
{
  result = qword_2802831B8;
  if (!qword_2802831B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268505F84()
{
  sub_2684DBD70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_268506074()
{
  result = qword_2802831C8;
  if (!qword_2802831C8)
  {
    type metadata accessor for RNReadLatestNotificationActionGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802831C8);
  }

  return result;
}

uint64_t sub_2685060CC()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F0, &qword_26856C9A0);
  return sub_268568B70();
}

uint64_t sub_268506130()
{
  v1[19] = v0;
  v2 = sub_2685679B0();
  v1[20] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[21] = v3;
  v5 = *(v4 + 64);
  v1[22] = OUTLINED_FUNCTION_39();
  v6 = sub_268567B60();
  v1[23] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[24] = v7;
  v9 = *(v8 + 64);
  v1[25] = OUTLINED_FUNCTION_39();
  v10 = sub_268567D90();
  v1[26] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[27] = v11;
  v13 = *(v12 + 64);
  v1[28] = OUTLINED_FUNCTION_39();
  v14 = sub_2685689F0();
  v1[29] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[30] = v15;
  v17 = *(v16 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v18 = sub_268568810();
  v1[35] = v18;
  OUTLINED_FUNCTION_2_4(v18);
  v1[36] = v19;
  v21 = *(v20 + 64);
  v1[37] = OUTLINED_FUNCTION_39();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[38] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685063CC, 0, 0);
}

uint64_t sub_268506C48()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v4 = v3;
  v5 = v2[52];
  *v4 = *v1;
  v3[53] = v0;

  v6 = v2[40];
  sub_2684D4378(v2[39]);
  sub_2684D4378(v6);
  if (v0)
  {
    v7 = sub_2685072CC;
  }

  else
  {
    v7 = sub_268506D94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268506D94()
{
  v1 = v0[19];
  v2 = sub_26851C004(v0[28], v1 + 25);
  v0[54] = v2;
  v3 = v1[23];
  v4 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[55] = v6;
  v7 = sub_2684E0120();
  *v6 = v0;
  v6[1] = sub_268506E84;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_268506E84(void *a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_9_8();
  *v6 = v5;
  v8 = *(v7 + 440);
  v9 = *v2;
  OUTLINED_FUNCTION_9_8();
  *v10 = v9;
  *(v11 + 448) = v1;

  if (v1)
  {
    v12 = sub_2685075B4;
  }

  else
  {

    v12 = sub_268506F98;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_268506F98()
{
  v1 = *(v0 + 400);
  (*(v0 + 392))(*(v0 + 264), *(v0 + 384), *(v0 + 232));
  v2 = sub_2685689E0();
  v3 = sub_268568DF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2684CA000, v2, v3, "RNReadLatestNotificationAction run | read latest notification", v4, 2u);
    OUTLINED_FUNCTION_2();
  }

  v26 = *(v0 + 432);
  v5 = *(v0 + 408);
  v23 = *(v0 + 376);
  v31 = *(v0 + 360);
  v32 = *(v0 + 368);
  v30 = *(v0 + 352);
  v33 = *(v0 + 344);
  v34 = *(v0 + 336);
  v35 = *(v0 + 328);
  v36 = *(v0 + 320);
  v37 = *(v0 + 312);
  v27 = *(v0 + 288);
  v28 = *(v0 + 280);
  v29 = *(v0 + 296);
  v38 = *(v0 + 272);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v39 = *(v0 + 256);
  v40 = *(v0 + 248);
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);
  v24 = *(v0 + 208);
  v25 = *(v0 + 224);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v20 = *(v0 + 184);
  v21 = *(v0 + 176);
  v12 = *(v0 + 168);
  v22 = *(v0 + 160);

  v5(v6, v8);
  sub_268567990();
  v13 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_268567A20();
  (*(v10 + 104))(v11, *MEMORY[0x277D5BC10], v20);
  (*(v12 + 104))(v21, *MEMORY[0x277D5B958], v22);

  v14 = OUTLINED_FUNCTION_1_11();
  sub_2684EBB74(v14, v15, v11, v21, 8, 0, 0, 0, v18, v19);
  sub_2685679A0();

  (*(v9 + 8))(v25, v24);
  (*(v27 + 8))(v29, v28);
  sub_2684D4378(v30);
  sub_2684D4378(v31);
  sub_2684D4378(v32);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v16 = *(v0 + 8);

  return v16();
}

void *sub_2685078C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_2684CC8D4((v0 + 4));
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  v2 = v0[30];

  v3 = v0[31];

  return v0;
}

uint64_t sub_26850790C()
{
  sub_2685078C4();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t sub_268507964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2685079F0;

  return sub_268506130();
}

uint64_t sub_2685079F0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_268507B6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadLatestNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268507BAC()
{
  result = qword_2802831E8;
  if (!qword_2802831E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802831E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_10()
{
  v4 = v0[32];
  v5 = v0[31];
  v6 = v0[28];
  v2 = v0[25];
  v7 = v0[22];
}

uint64_t OUTLINED_FUNCTION_4_11()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  result = v0[37];
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[29];
  v11 = *(v0[36] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_11()
{
  v2 = v0[45];
  result = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[39];
  v8 = v0[40];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, v10, v12, 8, v11, v13, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_7_13()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_10()
{
  v6 = v0[51];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_9()
{
  v2 = v0[47];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[21];

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_268567A20();
}

id OUTLINED_FUNCTION_16_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  *(v17 + 136) = a17;

  return a17;
}

id OUTLINED_FUNCTION_18_3(float a1)
{
  *v2 = a1;
  *(v1 + 144) = v3;

  return v3;
}

id sub_268507DBC(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v40 = sub_268568A70();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v40);
  v34 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v33 = &v29 - v16;
  result = sub_2684DEAF0(a1);
  v18 = result;
  v19 = 0;
  v38 = a1;
  v39 = a1 & 0xC000000000000001;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = (v4 + 16);
  v21 = (v4 + 8);
  v31 = v12;
  v32 = (v12 + 32);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v19)
    {
      return v35;
    }

    if (v39)
    {
      result = MEMORY[0x26D61C170](v19, v38);
    }

    else
    {
      if (v19 >= *(v37 + 16))
      {
        goto LABEL_17;
      }

      result = *(v38 + 8 * v19 + 32);
    }

    v22 = result;
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    (*v20)(v7, v36, v3);
    sub_26850893C(v22, v11);
    (*v21)(v7, v3);

    if (__swift_getEnumTagSinglePayload(v11, 1, v40) == 1)
    {
      result = sub_268508EB4(v11);
      ++v19;
    }

    else
    {
      v24 = *v32;
      (*v32)(v33, v11, v40);
      v30 = v24;
      v24(v34, v33, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_26854BDFC(0, *(v35 + 16) + 1, 1, v35);
      }

      v26 = *(v35 + 16);
      v25 = *(v35 + 24);
      if (v26 >= v25 >> 1)
      {
        v35 = sub_26854BDFC(v25 > 1, v26 + 1, 1, v35);
      }

      v27 = v34;
      v28 = v35;
      *(v35 + 16) = v26 + 1;
      result = (v30)(v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, v27, v40);
      v19 = v23;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_268508150(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = sub_268567CE0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  v45 = sub_268568A70();
  v11 = *(*(v45 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v45);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v38 = &v35 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = (v3 + 8);
  v42 = (v3 + 16);
  v36 = v14;
  v37 = (v14 + 32);
  v46 = a1;

  v22 = 0;
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v22;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = (*(v46 + 48) + ((v22 << 10) | (16 * v24)));
    v27 = *v25;
    v26 = v25[1];
    v28 = v43;
    (*v42)(v6, v44, v43);

    sub_268508F1C(v27, v10);
    (*v41)(v6, v28);

    if (__swift_getEnumTagSinglePayload(v10, 1, v45) == 1)
    {
      result = sub_268508EB4(v10);
    }

    else
    {
      v29 = *v37;
      v30 = v45;
      (*v37)(v38, v10, v45);
      v29(v39, v38, v30);
      v31 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_26854BDFC(0, *(v40 + 16) + 1, 1, v40);
      }

      v33 = *(v40 + 16);
      v32 = *(v40 + 24);
      if (v33 >= v32 >> 1)
      {
        v40 = sub_26854BDFC(v32 > 1, v33 + 1, 1, v40);
      }

      v34 = v40;
      *(v40 + 16) = v33 + 1;
      result = (v31)(v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33, v39, v45);
    }
  }

  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return v40;
    }

    v19 = *(v16 + 8 * v22);
    ++v23;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268508520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_268567CE0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = sub_268568A70();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v43 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v46 = v2;
  v47 = MEMORY[0x277D84F90];
  v45 = a1;
  sub_26850893C(a1, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_268508EB4(v18);
  }

  else
  {
    (*(v22 + 32))(v28, v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283200, &unk_26856FFB0);
    v29 = *(v22 + 72);
    v30 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26856A540;
    (*(v22 + 16))(v31 + v30, v28, v19);
    OUTLINED_FUNCTION_0_11();
    sub_2685097C8(v31, v32, MEMORY[0x277D5FEB0]);
    (*(v22 + 8))(v28, v19);
  }

  v33 = *(v7 + 16);
  v33(v11, v46, v4);
  result = sub_268565330(v45);
  if (v35)
  {
    sub_268508F1C(result, v16);

    (*(v7 + 8))(v11, v4);
    if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
    {
      sub_268508EB4(v16);
    }

    else
    {
      v36 = v43;
      (*(v22 + 32))(v43, v16, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283200, &unk_26856FFB0);
      v37 = *(v22 + 72);
      v38 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_26856A540;
      (*(v22 + 16))(v39 + v38, v36, v19);
      OUTLINED_FUNCTION_0_11();
      sub_2685097C8(v39, v40, MEMORY[0x277D5FEB0]);
      (*(v22 + 8))(v36, v19);
    }

    v41 = v46;
    sub_268567C60();
    return (v33)(v44, v41, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26850893C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2685689F0();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283208, &qword_26856C9B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v44 - v9;
  v10 = sub_268568A70();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2685682F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_268565324(a1);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  sub_268565330(a1);
  v21 = sub_268568500();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_2685684F0();

  v47 = v20;
  sub_2685682C0();
  sub_2685682A0();
  (*(v14 + 8))(v17, v13);
  if (MEMORY[0x26D61B540](v24))
  {
    v25 = objc_opt_self();
    v53[0] = 0;
    v26 = [v25 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v53];
    v27 = v53[0];
    if (v26)
    {
      sub_268567540();
    }

    else
    {
      v37 = v27;
      v38 = sub_2685674D0();

      swift_willThrow();
    }

    v28 = sub_268568A30();
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v28);
    v29 = v49;
    sub_268568A50();

    v39 = v51;
    v40 = v52;
    (*(v50 + 32))(v52, v29, v51);
    v41 = 0;
  }

  else
  {
    v30 = v45;
    v31 = v46;

    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v31, qword_28028B348);
    v33 = v30;
    (*(v30 + 16))(v6, v32, v31);
    v34 = sub_2685689E0();
    v35 = sub_268568DC0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2684CA000, v34, v35, "NotificationContext makeSRRDonationContext | unable to convert notification entity builder to entity", v36, 2u);
      MEMORY[0x26D61CB30](v36, -1, -1);
    }

    else
    {
    }

    v39 = v51;
    (*(v33 + 8))(v6, v31);
    v41 = 1;
    v40 = v52;
  }

  result = __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268508EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802831F8, &qword_26856C9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268508F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_2685689F0();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283208, &qword_26856C9B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v38 = sub_268567610();
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v38);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2685682F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_268568420();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_268568410();
  swift_bridgeObjectRetain_n();
  v39 = a1;
  sub_2685682C0();
  sub_2685682A0();
  (*(v15 + 8))(v18, v14);
  if (MEMORY[0x26D61B540](v22))
  {
    sub_268567600();
    sub_2685675F0();
    (*(v10 + 8))(v13, v38);
    v23 = sub_268568A30();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v23);

    v24 = v40;
    sub_268568A50();

    v25 = 0;
  }

  else
  {
    v27 = v35;
    v26 = v36;
    v28 = v37;
    v24 = v40;
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v28, qword_28028B348);
    (*(v26 + 16))(v27, v29, v28);
    v30 = sub_2685689E0();
    v31 = sub_268568DC0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2684CA000, v30, v31, "NotificationContext makeSRRDonationContext | unable to convert app entity builder to entity", v32, 2u);
      MEMORY[0x26D61CB30](v32, -1, -1);
    }

    else
    {
    }

    (*(v26 + 8))(v27, v28);
    v25 = 1;
  }

  v33 = sub_268568A70();
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v33);
}

uint64_t sub_268509368@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2685690A0())
  {
    v25 = a2;
    v26 = v3;
    sub_268507DBC(a1, v3);
    v7 = 0;
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    a2 = MEMORY[0x277D84F90];
    while (1)
    {
      if (i == v7)
      {
        v19 = sub_26855BB84(a2);
        v3 = v26;
        v20 = sub_268508150(v19, v26);

        OUTLINED_FUNCTION_0_11();
        sub_2685097C8(v20, v21, MEMORY[0x277D5FEB0]);
        sub_268567C60();
        a2 = v25;
        goto LABEL_17;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D61C170](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = sub_268565330(v8);
      v13 = v12;

      ++v7;
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = *(a2 + 16);
          sub_26854BB3C();
          a2 = v17;
        }

        v14 = *(a2 + 16);
        if (v14 >= *(a2 + 24) >> 1)
        {
          sub_26854BB3C();
          a2 = v18;
        }

        *(a2 + 16) = v14 + 1;
        v15 = a2 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
        v7 = v10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_17:
  v22 = sub_268567CE0();
  v23 = *(*(v22 - 8) + 16);

  return v23(a2, v3, v22);
}

uint64_t sub_268509594(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26854C6B4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2685096D4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2685097C8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2685098E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2685690A0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2684DEAF0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for AnnounceNotification();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268509BC8(&qword_280283218, &qword_280283210, &qword_26856C9B8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283210, &qword_26856C9B8);
          v9 = sub_2684DE984(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268509A54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2685690A0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2684DEAF0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2684DB414();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268509BC8(&qword_280283228, &qword_280283220, &unk_26856C9C0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283220, &unk_26856C9C0);
          v9 = sub_2684DE9E0(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268509BC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268509C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = HIBYTE(a5) & 1;
  memcpy((v6 + 56), __src, 0x80uLL);
  *(v6 + 184) = 0;
  return v6;
}

uint64_t sub_268509C78()
{
  OUTLINED_FUNCTION_5();
  v1[53] = v2;
  v1[54] = v0;
  v3 = sub_2685689F0();
  v1[55] = v3;
  v4 = *(v3 - 8);
  v1[56] = v4;
  v5 = *(v4 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268509D64, 0, 0);
}

uint64_t sub_268509D64()
{
  v96 = v0;
  v1 = v0[54];
  v2 = *(v1 + 16);
  v3 = sub_2684F44A0();
  v4 = v3;
  if (*(v1 + 184))
  {
    if (*(v1 + 184) == 1)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v6 = v0[56];
      v5 = v0[57];
      v7 = v0[55];
      v8 = __swift_project_value_buffer(v7, qword_28028B348);
      (*(v6 + 16))(v5, v8, v7);
      v9 = sub_2685689E0();
      v10 = sub_268568DE0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_16_0();
        *v11 = 0;
        _os_log_impl(&dword_2684CA000, v9, v10, "#RNPatternHighlightsFlow RNReadNotificationHighlightsFlow .readingHighlights, this should never be called", v11, 2u);
        OUTLINED_FUNCTION_2();
      }

      v13 = v0[56];
      v12 = v0[57];
      v14 = v0[55];
      v15 = v0[53];

      (*(v13 + 8))(v12, v14);
      goto LABEL_32;
    }
  }

  else
  {
    if (v3)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v16 = v0[61];
      v17 = v0[55];
      v18 = v0[56];
      v19 = __swift_project_value_buffer(v17, qword_28028B348);
      (*(v18 + 16))(v16, v19, v17);
      v20 = sub_2685689E0();
      v21 = sub_268568DC0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_16_0();
        *v22 = 0;
        _os_log_impl(&dword_2684CA000, v20, v21, "#RNPatternHighlightsFlow Running RNReadNotificationHighlightsFlow", v22, 2u);
        OUTLINED_FUNCTION_2();
      }

      v23 = v0[61];
      v24 = v0[55];
      v25 = v0[56];
      v26 = v0[54];
      *v93 = v0[53];

      (*(v25 + 8))(v23, v24);
      *(v1 + 184) = 1;
      v27 = sub_2684F4194();
      v28 = sub_2684F4564();
      v30 = *(v26 + 24);
      v29 = *(v26 + 32);
      v31 = *(v26 + 40);
      v32 = *(v26 + 48);
      v33 = *(v26 + 49);
      sub_2684CC878(v26 + 56, (v0 + 34));
      type metadata accessor for RNReadNotificationHighlightsFlow();
      swift_allocObject();
      if (v33)
      {
        v34 = 256;
      }

      else
      {
        v34 = 0;
      }

      v0[52] = sub_268542F0C(v27, v28 & 1, v30, v29, v31, v34 | v32, v0 + 34);
      sub_26850AC68(qword_280283240, type metadata accessor for RNReadNotificationHighlightsFlow);

      sub_268567C00();

      goto LABEL_29;
    }

    *(v1 + 184) = 2;
  }

  v35 = sub_2684F417C();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v36 = v0[60];
  v37 = v0[56];
  v38 = __swift_project_value_buffer(v0[55], qword_28028B348);
  v39 = *(v37 + 16);
  v90 = v38;
  v39(v36);

  v40 = sub_2685689E0();
  v41 = sub_268568DD0();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[55];
  v44 = v0[56];
  v91 = v43;
  v92 = v0[60];
  v94 = v35;
  if (v42)
  {
    v89 = v4;
    v45 = swift_slowAlloc();
    v88 = v39;
    v46 = swift_slowAlloc();
    v95 = v46;
    *v45 = 136315138;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    v48 = MEMORY[0x26D61BE70](v35, v47);
    v50 = sub_2684EABEC(v48, v49, &v95);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_2684CA000, v40, v41, "#RNPatternHighlightsFlow non highlight notifications: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v39 = v88;
    OUTLINED_FUNCTION_2();
    v4 = v89;
    OUTLINED_FUNCTION_2();
  }

  v51 = *(v44 + 8);
  v51(v92, v91);
  v52 = *(sub_2684F4094() + 16);

  if (v52)
  {
    (v39)(v0[58], v90, v0[55]);
    v53 = sub_2685689E0();
    v54 = sub_268568DC0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_16_0();
      *v55 = 0;
      _os_log_impl(&dword_2684CA000, v53, v54, "#RNPatternHighlightsFlow Running RNReadNotificationsPatternFlow", v55, 2u);
      OUTLINED_FUNCTION_2();
    }

    v56 = v0[58];
    v57 = v0[55];
    v58 = v0[56];
    v59 = v0[53];
    v60 = v0[54];

    v51(v56, v57);
    v61 = *(v60 + 24);
    v62 = *(v60 + 32);
    v63 = *(v60 + 40);
    v64 = *(v60 + 48);
    LODWORD(v57) = *(v60 + 49);
    sub_2684CC878(v60 + 56, (v0 + 2));
    type metadata accessor for RNReadNotificationsPatternFlow();
    swift_allocObject();
    if (v57)
    {
      v65 = 256;
    }

    else
    {
      v65 = 0;
    }

    v0[50] = sub_2684DC2A4(v94, v61, v62, v63, v65 | v64, v0 + 2, v4 & 1);
    sub_26850AC68(&qword_280283238, type metadata accessor for RNReadNotificationsPatternFlow);

    sub_268567C20();
LABEL_29:

    goto LABEL_33;
  }

  if ((v4 & 1) == 0)
  {
    (v39)(v0[59], v90, v0[55]);
    v74 = sub_2685689E0();
    v75 = sub_268568DC0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_16_0();
      *v76 = 0;
      _os_log_impl(&dword_2684CA000, v74, v75, "#RNPatternHighlightsFlow Running RNNoNewNotificationsPatternFlow", v76, 2u);
      OUTLINED_FUNCTION_2();
    }

    v77 = v0[59];
    v78 = v0[55];
    v79 = v0[56];
    v80 = v0[53];
    v81 = v0[54];

    v51(v77, v78);
    v83 = *(v81 + 24);
    v82 = *(v81 + 32);
    v84 = *(v81 + 40);
    v85 = *(v81 + 48);
    v86 = *(v81 + 49);
    sub_2684CC878(v81 + 56, (v0 + 18));
    type metadata accessor for RNNoNewNotificationsPatternFlow();
    v87 = swift_allocObject();
    *(v87 + 16) = v83;
    *(v87 + 24) = v82;
    *(v87 + 32) = v84;
    *(v87 + 40) = v85;
    *(v87 + 41) = v86;
    memcpy((v87 + 48), v0 + 18, 0x80uLL);
    v0[51] = v87;
    sub_26850AC68(&qword_280282CC8, type metadata accessor for RNNoNewNotificationsPatternFlow);

    sub_268567C20();
    goto LABEL_29;
  }

  v66 = v0[53];
LABEL_32:
  sub_268567C40();
LABEL_33:
  v68 = v0[60];
  v67 = v0[61];
  v70 = v0[58];
  v69 = v0[59];
  v71 = v0[57];

  OUTLINED_FUNCTION_9_1();

  return v72();
}

uint64_t sub_26850A570(uint64_t a1, uint64_t a2)
{
  v3 = sub_2685689F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2685689E0();
  v10 = sub_268568DC0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_268568B70();
    v15 = sub_2684EABEC(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2684CA000, v9, v10, "#RNPatternHighlightsFlow RNReadNotificationHighlightsFlow finished %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D61CB30](v12, -1, -1);
    MEMORY[0x26D61CB30](v11, -1, -1);
  }

  result = (*(v4 + 8))(v7, v3);
  *(a2 + 184) = 2;
  return result;
}

uint64_t sub_26850A77C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856CB10, v10);
}

uint64_t sub_26850A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_2684DAC24;

  return sub_268509C78();
}

uint64_t sub_26850A978()
{
  sub_2684DAE1C();

  return MEMORY[0x2821FE8D8](v0, 185, 7);
}

_BYTE *storeEnumTagSinglePayload for RNPatternHighlightsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x26850AA9CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26850AAD8()
{
  result = qword_280283230;
  if (!qword_280283230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283230);
  }

  return result;
}

uint64_t sub_26850AB50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26850AB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB128;

  return sub_26850A87C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26850AC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26850ACB0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for RNFollowupPromptFlow.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_26850AD74(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = *v1;
  v3 = sub_2685689F0();
  v4 = OUTLINED_FUNCTION_1(v3);
  v75 = v5;
  v76 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v78 = v9 - v8;
  v10 = sub_2685679B0();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 - v16;
  v19 = sub_268567B60();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_5();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_3_10();
  v77 = *(v28 + 80);
  v29 = type metadata accessor for RNFollowupPromptFlow.State();
  v30 = OUTLINED_FUNCTION_1(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v30);
  v74 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v67 - v37;
  sub_26850B6FC(&v67 - v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802830E0, &unk_26856C5A0);
    OUTLINED_FUNCTION_17_2(v39);
    (*(v40 + 32))(v79, v38);
    sub_268567990();
    v79 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    sub_268567A20();
    (*(v22 + 104))(v27, *MEMORY[0x277D5BC10], v19);
    (*(v13 + 104))(v18, *MEMORY[0x277D5B950], v10);
    v41 = *(v1 + 65);
    *(v1 + 66);
    v42 = OUTLINED_FUNCTION_3_12();
    sub_2684EBB74(v42, v43, v44, v18, 8, 0, 0, 0, v67, v68);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  else
  {
    v69 = v19;
    v70 = v22;
    v71 = v13;
    v72 = v10;
    v73 = v18;
    (*(v32 + 8))(v38, v29);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v45 = v76;
    v46 = __swift_project_value_buffer(v76, qword_28028B348);
    v47 = v75;
    v48 = v78;
    (*(v75 + 16))(v78, v46, v45);

    v49 = sub_2685689E0();
    v50 = sub_268568DE0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v68 = v27;
      v52 = v51;
      v53 = swift_slowAlloc();
      v80[0] = v53;
      *v52 = 136315138;
      sub_26850B6FC(v74);
      swift_getWitnessTable();
      v54 = sub_268568B80();
      v56 = sub_2684EABEC(v54, v55, v80);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_2684CA000, v49, v50, "RNFollowupPromptFlow#exitValue is in an invalid state: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v47 + 8))(v78, v45);
      v27 = v68;
    }

    else
    {

      (*(v47 + 8))(v48, v45);
    }

    v57 = v71;
    v58 = v69;
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v80, v81);
    sub_268567A20();
    (*(v70 + 104))(v27, *MEMORY[0x277D5BC00], v58);
    v59 = *(v57 + 104);
    v60 = v73;
    v59(v73, *MEMORY[0x277D5B8D0], v72);
    v61 = *(v1 + 65);
    *(v1 + 66);
    v62 = OUTLINED_FUNCTION_3_12();
    sub_2684EBB74(v62, v63, v64, v60, 6, 0, 0, 0, v67, v68);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v80);
    type metadata accessor for RNFollowupPromptFlow.RNFollowupPromptFlowError();
    swift_getWitnessTable();
    v65 = swift_allocError();
    sub_26850B6FC(v66);
    sub_268567D30();
  }
}

uint64_t sub_26850B3CC()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for RNFollowupPromptFlow.State();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = sub_2685689F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_28028B348);
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2685689E0();
  v15 = sub_268568DC0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v16;
    v31 = swift_slowAlloc();
    v32 = v31;
    *v16 = 136315138;
    v17 = *v1;
    v30 = v15;
    v18 = *(v17 + 136);
    swift_beginAccess();
    (*(v4 + 16))(v7, &v1[v18], v3);
    v19 = sub_26850C330(v3);
    v20 = v3;
    v22 = v21;

    (*(v4 + 8))(v7, v20);
    v23 = sub_2684EABEC(v19, v22, &v32);

    v24 = v29;
    *(v29 + 1) = v23;
    v25 = v24;
    _os_log_impl(&dword_2684CA000, v14, v30, "RNFollowupPromptFlow#state transitioned to state %s", v24, 0xCu);
    v26 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D61CB30](v26, -1, -1);
    MEMORY[0x26D61CB30](v25, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26850B6FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_10();
  v5 = *(v4 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for RNFollowupPromptFlow.State();
  OUTLINED_FUNCTION_17_2(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_26850B798(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_10();
  v5 = *(v4 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for RNFollowupPromptFlow.State();
  v9 = *(v8 - 8);
  (*(v9 + 24))(&v1[v5], a1, v8);
  swift_endAccess();
  sub_26850B3CC();
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_26850B880()
{
  v1 = *(*v0 + 80);
  type metadata accessor for RNFollowupPromptFlow();
  swift_getWitnessTable();
  return sub_268567900();
}

uint64_t sub_26850B90C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *v1;
  v4 = sub_2685689F0();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = *(v3 + 80);
  v7 = type metadata accessor for RNFollowupPromptFlow.State();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26850BA44, 0, 0);
}

uint64_t sub_26850BA44()
{
  v1 = v0[13];
  v2 = v0[8];
  sub_26850B6FC(v0[15]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[7];
    sub_268567C40();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v4;
    sub_2684D8314((v4 + 1), (v0 + 2));
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = __swift_project_value_buffer(v11, qword_28028B348);
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2685689E0();
    v14 = sub_268568DC0();
    if (OUTLINED_FUNCTION_12_1(v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2684CA000, v13, v11, "RNFollowupPromptFlow# Prompting the user if they want to listen to notifications", v15, 2u);
      OUTLINED_FUNCTION_2();
    }

    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    v19 = v0[10];
    v21 = v0[7];
    v20 = v0[8];

    (*(v19 + 8))(v17, v18);
    v22 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getWitnessTable();
    sub_268567870();
    sub_26850BC8C();
    sub_268567C10();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v23 = v0[15];
  v24 = v0[11];

  v25 = v0[1];

  return v25();
}

uint64_t sub_26850BCCC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for RNFollowupPromptFlow.State();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v70 - v9;
  v11 = sub_2685689F0();
  v12 = OUTLINED_FUNCTION_1(v11);
  v76 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v75 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280283350, &qword_26856CD38);
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v70 - v29;
  (*(v26 + 16))(&v70 - v29, a1, v23);
  if ((*(v26 + 88))(v30, v23) == *MEMORY[0x277D5BC38])
  {
    v73 = v5;
    (*(v26 + 96))(v30, v23);
    v31 = *v30;
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v74 = v2;
    v32 = __swift_project_value_buffer(v11, qword_28028B348);
    v33 = v76;
    v71 = *(v76 + 16);
    v71(v22, v32, v11);
    v34 = sub_2685689E0();
    v35 = sub_268568DD0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v72 = v31;
      v31 = v36;
      v37 = swift_slowAlloc();
      v70 = v32;
      v38 = v37;
      v78 = v37;
      *v31 = 136315138;
      v77 = v72;
      v39 = sub_268568B70();
      v41 = v10;
      v42 = sub_2684EABEC(v39, v40, &v78);

      *(v31 + 4) = v42;
      v10 = v41;
      _os_log_impl(&dword_2684CA000, v34, v35, "RNFollowupPromptFlow#onResponse response=%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v32 = v70;
      v33 = v76;
      OUTLINED_FUNCTION_2();
      LODWORD(v31) = v72;
      OUTLINED_FUNCTION_2();
    }

    v43 = *(v33 + 8);
    v44 = v43(v22, v11);
    switch(v31)
    {
      case 0:
        v45 = v74;
        if ((*(v74 + 64) & 1) == 0)
        {
          goto LABEL_17;
        }

        v46 = *(v74 + 56);
        (*(v74 + 48))(v44);
        v47 = *(v45 + 40);
        (*(v45 + 32))(0);
        v48 = *(v45 + 24);
        (*(v45 + 16))(0);
        goto LABEL_23;
      case 1:
        sub_268567D50();
        break;
      case 2:
        v55 = v74;
        v56 = *(v74 + 64);
        v57 = *(v74 + 56);
        (*(v74 + 48))(v44);
        if (v56)
        {
          v58 = *(v55 + 40);
          (*(v55 + 32))(0);
          v59 = *(v55 + 24);
          (*(v55 + 16))(1);
        }

        else
        {
          v67 = *(v55 + 24);
          (*(v55 + 16))(1);
          v68 = *(v55 + 40);
          (*(v55 + 32))(0);
        }

        goto LABEL_23;
      case 3:
        v45 = v74;
LABEL_17:
        v60 = *(v45 + 40);
        (*(v45 + 32))(1);
        sub_268567D10();
        break;
      default:
        v71(v75, v32, v11);
        v61 = sub_2685689E0();
        v62 = sub_268568DC0();
        if (OUTLINED_FUNCTION_12_1(v62))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_8_11(&dword_2684CA000, v63, v64, "RNFollowupPromptFlow#onResponse Unhandled response, proceed to the next window");
          OUTLINED_FUNCTION_2();
        }

        v65 = v43(v75, v11);
        v66 = *(v74 + 56);
        (*(v74 + 48))(v65);
LABEL_23:
        sub_268567D20();
        break;
    }
  }

  else
  {
    (*(v26 + 8))(v30, v23);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v49 = __swift_project_value_buffer(v11, qword_28028B348);
    v50 = v76;
    (*(v76 + 16))(v18, v49, v11);
    v51 = sub_2685689E0();
    v52 = sub_268568DC0();
    if (OUTLINED_FUNCTION_12_1(v52))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_11(&dword_2684CA000, v53, v54, "RNFollowupPromptFlow# onResponse Received a response from the prompt flow but it did not contain a successful confirmation response. Will indicate to stop windowing.");
      OUTLINED_FUNCTION_2();
    }

    (*(v50 + 8))(v18, v11);
    v79 = 1;
    sub_268567D40();
  }

  swift_storeEnumTagMultiPayload();
  return sub_26850B798(v10);
}

uint64_t sub_26850C330(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 8))(v5, a1);
    return 0x6574656C706D6F63;
  }

  else
  {
    v7 = *v5;

    __swift_destroy_boxed_opaque_existential_0(v5 + 1);
    return 0x6E6974706D6F7270;
  }
}

char *sub_26850C458()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 7);

  sub_2684CC8D4((v0 + 72));
  v5 = *(*v0 + 136);
  v6 = *(v1 + 80);
  v7 = type metadata accessor for RNFollowupPromptFlow.State();
  OUTLINED_FUNCTION_17_2(v7);
  (*(v8 + 8))(&v0[v5]);
  return v0;
}

uint64_t sub_26850C4FC()
{
  sub_26850C458();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for RNYesNoPromptType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x26850C650);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26850C68C()
{
  result = qword_280283348;
  if (!qword_280283348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283348);
  }

  return result;
}

uint64_t sub_26850C704(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684CEB80;

  return sub_26850B90C(a1);
}

uint64_t sub_26850C7E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for RNFollowupPromptFlow.State();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

uint64_t sub_26850C894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for RNFollowupPromptFlow.State();

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_26850C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = type metadata accessor for RNFollowupPromptFlow.State();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v8);
}

void OUTLINED_FUNCTION_8_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_26850C994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2685689F0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = sub_268568120();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_5();
  v23 = v22 - v21;
  sub_2685680A0();
  v24 = sub_268568110();
  (*(v18 + 8))(v23, v15);
  sub_2684D6590(v24, v14);

  v25 = sub_268568190();
  if (__swift_getEnumTagSinglePayload(v14, 1, v25) == 1)
  {
    sub_26850CC94(v14);
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v2, qword_28028B348);
    (*(v5 + 16))(v10, v26, v2);
    v27 = sub_2685689E0();
    v28 = sub_268568DE0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2684CA000, v27, v28, "UsoTask getUserDialogAct | unable to create userDialogAct", v29, 2u);
      MEMORY[0x26D61CB30](v29, -1, -1);
    }

    (*(v5 + 8))(v10, v2);
    v30 = 1;
  }

  else
  {
    (*(*(v25 - 8) + 32))(a1, v14, v25);
    v30 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v30, 1, v25);
}

uint64_t sub_26850CC94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26850CCFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_268568190();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v12 = v11 - v10;
  sub_268568550();
  sub_26850C994(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26850CC94(v3);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v3, v4);
    v14 = sub_268568220();
    if (sub_2684DEAF0(v14))
    {
      sub_2684DEAFC(0, (v14 & 0xC000000000000001) == 0, v14);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D61C170](0, v14);
      }

      else
      {
        v13 = *(v14 + 32);
      }
    }

    else
    {

      v13 = 0;
    }

    (*(v7 + 8))(v12, v4);
  }

  return v13;
}

uint64_t sub_26850CED4()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283400, &qword_26856CEC8);
  return sub_268568B70();
}

uint64_t sub_26850CF38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = a1;
  sub_2684CC878(a2, v4 + 40);
  *(v4 + 168) = a3;
  if (*(a1 + 40))
  {
    sub_2684CC878(a2, v16);
    type metadata accessor for RNReadNotificationAction();
    swift_allocObject();

    v9 = sub_26851C2B8(v8, v16);
    sub_2684CC8D4(a2);
    v10 = &qword_280282F68;
    v11 = type metadata accessor for RNReadNotificationAction;
  }

  else
  {
    sub_2684CC878(a2, v16);
    type metadata accessor for RNReadAppDescriptionAction();
    swift_allocObject();

    v9 = sub_2684FCDCC(v12, v16);
    sub_2684CC8D4(a2);
    v10 = &unk_280282F60;
    v11 = type metadata accessor for RNReadAppDescriptionAction;
  }

  v13 = sub_26850D618(v10, 255, v11);
  v14 = *(v4 + 16);
  *(v4 + 16) = v9;
  *(v4 + 24) = v13;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26850D098@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2685679B0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v45[0] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268567B60();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 32);
  v20 = *(v19 + 40);
  v21 = *(sub_2684F4060() + 16);

  if (v20 < v21 - 1)
  {
    sub_2684CC878(v2 + 40, v46);
    v22 = *(v2 + 168);
    type metadata accessor for RNPromptReturnGroup();
    swift_allocObject();
    v23 = sub_26853DEAC(v19, v46, v22);
    sub_2684CC878(v2 + 40, v46);
    type metadata accessor for RNPromptFlow();
    swift_allocObject();
    v24 = sub_26854A0A8(v19, v46);
    v45[1] = v23;
    v46[0] = v24;
    v25 = sub_2685677B0();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_26850D618(&qword_2802833F0, 255, type metadata accessor for RNPromptFlow);
    sub_26850D618(&qword_2802833F8, 255, type metadata accessor for RNPromptReturnGroup);
    swift_retain_n();
    *a1 = sub_2685677A0();
    v28 = *MEMORY[0x277D5B898];
    v29 = sub_268567960();
    (*(*(v29 - 8) + 104))(a1, v28, v29);
    v30 = MEMORY[0x277D5BF50];
LABEL_5:
    v37 = *v30;
    v38 = sub_268567E80();
    (*(*(v38 - 8) + 104))(a1, v37, v38);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v38);
  }

  v31 = *(sub_2684F4060() + 16);

  if (v31 >= 2)
  {
    sub_2684CC878(v2 + 40, v46);
    v32 = type metadata accessor for RNReadConclusionActionGroup();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_2684DBAF0(v46);
    v36 = sub_26850D618(&qword_2802833E8, 255, type metadata accessor for RNReadConclusionActionGroup);
    *a1 = v35;
    a1[1] = v36;
    v30 = MEMORY[0x277D5BF58];
    goto LABEL_5;
  }

  v40 = *(sub_2684F4060() + 16);

  if (v40 == 1)
  {
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_268567A20();
    (*(v14 + 104))(v18, *MEMORY[0x277D5BC10], v11);
    (*(v45[0] + 104))(v10, *MEMORY[0x277D5B958], v4);
    sub_2684EBB74(1, 2, v18, v10, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v46);
    sub_268567E80();
    v41 = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    sub_268567E80();
    v41 = OUTLINED_FUNCTION_0_3();
  }

  return __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
}

uint64_t sub_26850D618(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for ReadNotificationsCATs()
{
  result = qword_280283408;
  if (!qword_280283408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26850D6EC()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB128;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850D7A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850D7B8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = OUTLINED_FUNCTION_42_0();
  v0[5] = v2;
  v3 = OUTLINED_FUNCTION_6_12(v2, xmmword_26856A540);
  v5 = OUTLINED_FUNCTION_36_0(v3, v4);
  if (v1)
  {
    v5 = sub_2685687A0();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v5;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_16_6(v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_69();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26850D8B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_9_1();

    return v13();
  }
}

uint64_t sub_26850D9D4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_26850DA30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850DA4C()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v4 = OUTLINED_FUNCTION_6_12(v3, xmmword_26856CED0);
  OUTLINED_FUNCTION_28_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283420, &qword_26856D028);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_25_2();
  v3[4].n128_u64[1] = v6;
  v3[5].n128_u64[0] = 0xD000000000000018;
  v3[5].n128_u64[1] = v7;
  if (v1)
  {
    v8 = 0;
    v9 = 0;
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v9 = MEMORY[0x277D839F8];
  }

  v3[6].n128_u64[0] = v8;
  v3[7].n128_u64[1] = v9;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = sub_26850DBB0;
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  OUTLINED_FUNCTION_35_0();

  return v14();
}

uint64_t sub_26850DBB0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_9_1();

    return v13();
  }
}

uint64_t sub_26850DCCC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_26850DD28()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 98) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 97) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 96) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26850DDC8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = xmmword_26856CEE0;
  OUTLINED_FUNCTION_25_2();
  *(v3 + 32) = 0xD000000000000018;
  *(v3 + 40) = v4;
  if (v1)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 97);
  *(v2 + 48) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x8000000268572910;
  if (v7)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v8 = *(v0 + 32);
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  *(v2 + 96) = v8;
  OUTLINED_FUNCTION_38_0();
  *(v2 + 120) = v11;
  *(v2 + 128) = v12;
  *(v2 + 136) = 0xE700000000000000;
  sub_2684E6DF4(v13, v9, &qword_280282AF0, &qword_26856A1E0);
  v14 = sub_268568810();
  v15 = OUTLINED_FUNCTION_8_12();
  v16 = *(v0 + 64);
  if (v15 == 1)
  {
    sub_2684D199C(*(v0 + 64), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 144));
    OUTLINED_FUNCTION_4_1();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_12_10();
    v19();
  }

  v20 = *(v0 + 98);
  OUTLINED_FUNCTION_25_2();
  *(v2 + 176) = 0xD000000000000017;
  *(v2 + 184) = v21;
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  else
  {
    v23 = *(v0 + 48);
    v24 = MEMORY[0x277D839F8];
  }

  *(v2 + 192) = v23;
  *(v2 + 216) = v24;
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 80) = v25;
  *v25 = v26;
  v25[1] = sub_26850E00C;
  v27 = *(v0 + 56);
  v28 = *(v0 + 16);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_69();

  return v33(v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_26850E00C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    OUTLINED_FUNCTION_9_10();

    return v14();
  }
}

uint64_t sub_26850E130()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_9_1();
  v4 = v0[11];

  return v3();
}

uint64_t sub_26850E194()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850E248()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850E2FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850E314()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = OUTLINED_FUNCTION_42_0();
  v0[5] = v2;
  v3 = OUTLINED_FUNCTION_6_12(v2, xmmword_26856A540);
  v5 = OUTLINED_FUNCTION_36_0(v3, v4);
  if (v1)
  {
    v5 = sub_2685687A0();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v5;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_16_6(v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_69();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26850E414()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_9_1();

    return v13();
  }
}

uint64_t sub_26850E530()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850E5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  OUTLINED_FUNCTION_5();
  *(v12 + 139) = a11;
  *(v12 + 64) = a10;
  *(v12 + 72) = v11;
  *(v12 + 48) = v13;
  *(v12 + 56) = a9;
  *(v12 + 32) = v14;
  *(v12 + 40) = v15;
  *(v12 + 138) = v16;
  *(v12 + 137) = v17;
  *(v12 + 136) = v18;
  *(v12 + 16) = v19;
  *(v12 + 24) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  *(v12 + 80) = OUTLINED_FUNCTION_50();
  *(v12 + 88) = swift_task_alloc();
  *(v12 + 96) = swift_task_alloc();
  *(v12 + 104) = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_40_0(v24, v25, v26);
}

uint64_t sub_26850E6A4()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v0 + 112) = v2;
  v3 = OUTLINED_FUNCTION_31_3(v2, xmmword_26856CEF0);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xEA00000000007865;
  if (v1)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 32);
  v8 = *(v0 + 138);
  v9 = *(v0 + 137);
  *(v2 + 48) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = 0x776F6C6C6F467369;
  *(v2 + 88) = 0xEA00000000007075;
  v10 = MEMORY[0x277D839B0];
  *(v2 + 96) = v9;
  *(v2 + 120) = v10;
  *(v2 + 128) = 0x7041656D61537369;
  *(v2 + 136) = 0xE900000000000070;
  *(v2 + 144) = v8;
  OUTLINED_FUNCTION_10_5();
  *(v2 + 168) = v10;
  *(v2 + 176) = v11;
  *(v2 + 184) = 0xE700000000000000;
  v12 = 0;
  if (v7)
  {
    v12 = sub_2685687A0();
  }

  else
  {
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 40);
  *(v2 + 192) = v7;
  *(v2 + 216) = v12;
  *(v2 + 224) = 0x656C746974;
  *(v2 + 232) = 0xE500000000000000;
  sub_2684E6DF4(v14, v13, &qword_280282AF0, &qword_26856A1E0);
  v15 = sub_268568810();
  v16 = OUTLINED_FUNCTION_8_12();
  v17 = *(v0 + 104);
  v18 = *(v0 + 32);
  if (v16 == 1)
  {
    v19 = *(v0 + 32);

    sub_2684D199C(v17, &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
  }

  else
  {
    *(v2 + 264) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 240));
    OUTLINED_FUNCTION_4_1();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_12_10();
    v22();
  }

  v23 = *(v0 + 96);
  v24 = *(v0 + 48);
  OUTLINED_FUNCTION_7_14();
  *(v2 + 272) = v25;
  *(v2 + 280) = v26;
  sub_2684E6DF4(v27, v23, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 96), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 288) = 0u;
    *(v2 + 304) = 0u;
  }

  else
  {
    *(v2 + 312) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 288));
    OUTLINED_FUNCTION_4_1();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_12_10();
    v30();
  }

  v31 = *(v0 + 88);
  v32 = *(v0 + 56);
  OUTLINED_FUNCTION_27_2();
  *(v2 + 320) = v33;
  *(v2 + 328) = v34;
  sub_2684E6DF4(v35, v31, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 88), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 336) = 0u;
    *(v2 + 352) = 0u;
  }

  else
  {
    *(v2 + 360) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 336));
    OUTLINED_FUNCTION_4_1();
    v37 = *(v36 + 32);
    OUTLINED_FUNCTION_12_10();
    v38();
  }

  v39 = *(v0 + 80);
  v40 = OUTLINED_FUNCTION_22_1();
  *(v2 + 368) = v41;
  *(v2 + 376) = v42;
  sub_2684E6DF4(v40, v39, &qword_280282AF0, &qword_26856A1E0);
  v43 = OUTLINED_FUNCTION_8_12();
  v44 = *(v0 + 80);
  if (v43 == 1)
  {
    sub_2684D199C(*(v0 + 80), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 384) = 0u;
    *(v2 + 400) = 0u;
  }

  else
  {
    *(v2 + 408) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 384));
    OUTLINED_FUNCTION_4_1();
    v46 = *(v45 + 32);
    OUTLINED_FUNCTION_12_10();
    v47();
  }

  v48 = *(v0 + 139);
  *(v2 + 416) = 0x64656B636F4C7369;
  *(v2 + 424) = 0xEB00000000707041;
  *(v2 + 456) = v10;
  *(v2 + 432) = v48;
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 120) = v49;
  *v49 = v50;
  v49[1] = sub_26850EACC;
  v51 = *(v0 + 72);
  v52 = *(v0 + 16);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_69();

  return v57(v53, v54, v55, v56, v57, v58, v59, v60);
}

uint64_t sub_26850EACC()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[16] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[13];
    v12 = v3[14];
    v15 = v3[11];
    v14 = v3[12];
    v16 = v3[10];

    OUTLINED_FUNCTION_9_10();

    return v17();
  }
}

uint64_t sub_26850EC1C()
{
  OUTLINED_FUNCTION_20_2();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  OUTLINED_FUNCTION_9_1();
  v7 = v0[16];

  return v6();
}

uint64_t sub_26850ECA8()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850ED5C()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_50();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26850EE1C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = v0[13];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = xmmword_26856CF00;
  OUTLINED_FUNCTION_21_2();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_2684E6DF4(v2, v1, &qword_280282AF0, &qword_26856A1E0);
  v7 = sub_268568810();
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[13], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_4_1();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_12_10();
    v10();
  }

  v11 = v0[12];
  v12 = v0[4];
  OUTLINED_FUNCTION_7_14();
  *(v3 + 80) = v13;
  *(v3 + 88) = v14;
  sub_2684E6DF4(v15, v11, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[12], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_4_1();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_12_10();
    v18();
  }

  v19 = v0[11];
  v20 = v0[5];
  OUTLINED_FUNCTION_27_2();
  *(v3 + 128) = v21;
  *(v3 + 136) = v22;
  sub_2684E6DF4(v23, v19, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[11], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_4_1();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_12_10();
    v26();
  }

  v27 = v0[10];
  v28 = v0[6];
  *(v3 + 176) = 0x6449707061;
  *(v3 + 184) = 0xE500000000000000;
  sub_2684E6DF4(v28, v27, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[10], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 192));
    OUTLINED_FUNCTION_4_1();
    v30 = *(v29 + 32);
    OUTLINED_FUNCTION_12_10();
    v31();
  }

  v32 = v0[9];
  v33 = v0[7];
  OUTLINED_FUNCTION_10_5();
  *(v3 + 224) = v34;
  *(v3 + 232) = 0xE700000000000000;
  sub_2684E6DF4(v35, v32, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[9], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
  }

  else
  {
    *(v3 + 264) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 240));
    OUTLINED_FUNCTION_4_1();
    v37 = *(v36 + 32);
    OUTLINED_FUNCTION_12_10();
    v38();
  }

  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BF0]);
  v45 = v39;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[15] = v40;
  *v40 = v41;
  v40[1] = sub_26850F1EC;
  v42 = v0[8];
  v43 = v0[2];
  OUTLINED_FUNCTION_24_3();

  return v45();
}

uint64_t sub_26850F1EC()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[16] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v14 = v3[13];
    v13 = v3[14];
    v16 = v3[11];
    v15 = v3[12];
    v19 = v3 + 9;
    v17 = v3[9];
    v18 = v19[1];

    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_69();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_26850F344()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  OUTLINED_FUNCTION_9_1();
  v7 = v0[16];
  OUTLINED_FUNCTION_69();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26850F3D8()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 120) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_50();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26850F48C()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 96) = v3;
  *(v3 + 16) = xmmword_26856CF00;
  OUTLINED_FUNCTION_21_2();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_2684E6DF4(v2, v1, &qword_280282AF0, &qword_26856A1E0);
  v7 = sub_268568810();
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 88), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_4_1();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_12_10();
    v10();
  }

  v11 = *(v0 + 80);
  v12 = *(v0 + 32);
  OUTLINED_FUNCTION_7_14();
  *(v3 + 80) = v13;
  *(v3 + 88) = v14;
  sub_2684E6DF4(v15, v11, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 80), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_4_1();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_12_10();
    v18();
  }

  v19 = *(v0 + 72);
  v20 = *(v0 + 40);
  OUTLINED_FUNCTION_27_2();
  *(v3 + 128) = v21;
  *(v3 + 136) = v22;
  sub_2684E6DF4(v23, v19, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 72), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_4_1();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_12_10();
    v26();
  }

  v27 = *(v0 + 64);
  v28 = *(v0 + 48);
  v29 = *(v0 + 120);
  *(v3 + 176) = 0xD000000000000010;
  *(v3 + 184) = 0x8000000268572770;
  v30 = MEMORY[0x277D839B0];
  *(v3 + 192) = v29;
  *(v3 + 216) = v30;
  *(v3 + 224) = 0x6449707061;
  *(v3 + 232) = 0xE500000000000000;
  sub_2684E6DF4(v28, v27, &qword_280282AF0, &qword_26856A1E0);
  v31 = OUTLINED_FUNCTION_8_12();
  v32 = *(v0 + 64);
  if (v31 == 1)
  {
    sub_2684D199C(*(v0 + 64), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
  }

  else
  {
    *(v3 + 264) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 240));
    OUTLINED_FUNCTION_4_1();
    v34 = *(v33 + 32);
    OUTLINED_FUNCTION_12_10();
    v35();
  }

  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 104) = v36;
  *v36 = v37;
  v36[1] = sub_26850F7F0;
  v38 = *(v0 + 56);
  v39 = *(v0 + 16);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_69();

  return v44(v40, v41, v42, v43, v44, v45, v46, v47);
}

uint64_t sub_26850F7F0()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[11];
    v12 = v3[12];
    v15 = v3[9];
    v14 = v3[10];
    v16 = v3[8];

    OUTLINED_FUNCTION_9_10();

    return v17();
  }
}

uint64_t sub_26850F940()
{
  OUTLINED_FUNCTION_20_2();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  OUTLINED_FUNCTION_9_1();
  v7 = v0[14];

  return v6();
}

uint64_t sub_26850F9CC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850F9E4()
{
  OUTLINED_FUNCTION_20_2();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = OUTLINED_FUNCTION_42_0();
  *(v2 + 32) = 0x7369636E6F437369;
  *(v2 + 40) = 0xE900000000000065;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BF0];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_1_12(v3);
  *(v0 + 32) = v2;
  *(v2 + 16) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 40) = v5;
  *v5 = v6;
  v5[1] = sub_26850FAF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return v10(v7, 0xD000000000000026, 0x8000000268572740, v2);
}

uint64_t sub_26850FAF8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_9_1();

    return v13();
  }
}

uint64_t sub_26850FC14(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 56) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850FC34()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_26856CF10;
  *(v4 + 32) = 0x6565636572507369;
  *(v4 + 40) = 0xEB00000000646564;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000010;
  *(v4 + 88) = 0x8000000268572600;
  *(v4 + 96) = v2;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0x6565636375537369;
  *(v4 + 136) = 0xEB00000000646564;
  *(v4 + 168) = v5;
  *(v4 + 144) = v1;
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = sub_26850FD98;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  OUTLINED_FUNCTION_69();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_26850FD98()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_9_1();

    return v13();
  }
}

uint64_t sub_26850FEB4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_26850FF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_5();
  *(v12 + 88) = a11;
  *(v12 + 96) = v11;
  *(v12 + 80) = a10;
  *(v12 + 64) = a9;
  *(v12 + 48) = v13;
  *(v12 + 56) = v14;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  *(v12 + 185) = v17;
  *(v12 + 184) = v18;
  *(v12 + 16) = v19;
  *(v12 + 24) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  *(v12 + 104) = OUTLINED_FUNCTION_50();
  *(v12 + 112) = swift_task_alloc();
  *(v12 + 120) = swift_task_alloc();
  *(v12 + 128) = swift_task_alloc();
  *(v12 + 136) = swift_task_alloc();
  *(v12 + 144) = swift_task_alloc();
  *(v12 + 152) = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_40_0(v24, v25, v26);
}

uint64_t sub_26850FFF4()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v0 + 160) = v2;
  v3 = OUTLINED_FUNCTION_31_3(v2, xmmword_26856CF20);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xEA00000000007865;
  if (v1)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 32);
  v8 = *(v0 + 185);
  *(v2 + 48) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = 0x8000000268572690;
  *(v2 + 96) = v8;
  OUTLINED_FUNCTION_38_0();
  *(v2 + 120) = v9;
  *(v2 + 128) = v10;
  *(v2 + 136) = 0xE700000000000000;
  v11 = 0;
  if (v7)
  {
    v11 = sub_2685687A0();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  v12 = *(v0 + 152);
  v13 = *(v0 + 40);
  *(v2 + 144) = v7;
  *(v2 + 168) = v11;
  *(v2 + 176) = 0x614E7265646E6573;
  *(v2 + 184) = 0xEA0000000000656DLL;
  sub_2684E6DF4(v13, v12, &qword_280282AF0, &qword_26856A1E0);
  v14 = sub_268568810();
  v15 = OUTLINED_FUNCTION_8_12();
  v16 = *(v0 + 152);
  v17 = *(v0 + 32);
  if (v15 == 1)
  {
    v18 = *(v0 + 32);

    sub_2684D199C(v16, &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
  }

  else
  {
    *(v2 + 216) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 192));
    OUTLINED_FUNCTION_4_1();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_12_10();
    v21();
  }

  v22 = *(v0 + 144);
  v23 = *(v0 + 48);
  OUTLINED_FUNCTION_25_2();
  *(v2 + 224) = 0xD000000000000012;
  *(v2 + 232) = v24;
  sub_2684E6DF4(v25, v22, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 144), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
  }

  else
  {
    *(v2 + 264) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 240));
    OUTLINED_FUNCTION_4_1();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_12_10();
    v28();
  }

  v29 = *(v0 + 136);
  v30 = *(v0 + 56);
  OUTLINED_FUNCTION_25_2();
  *(v2 + 272) = 0xD000000000000013;
  *(v2 + 280) = v31;
  sub_2684E6DF4(v32, v29, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 136), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 288) = 0u;
    *(v2 + 304) = 0u;
  }

  else
  {
    *(v2 + 312) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 288));
    OUTLINED_FUNCTION_4_1();
    v34 = *(v33 + 32);
    OUTLINED_FUNCTION_12_10();
    v35();
  }

  v36 = *(v0 + 128);
  v37 = OUTLINED_FUNCTION_22_1();
  *(v2 + 320) = v38;
  *(v2 + 328) = v39;
  sub_2684E6DF4(v37, v36, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 128), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 336) = 0u;
    *(v2 + 352) = 0u;
  }

  else
  {
    *(v2 + 360) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 336));
    OUTLINED_FUNCTION_4_1();
    v41 = *(v40 + 32);
    OUTLINED_FUNCTION_12_10();
    v42();
  }

  v43 = *(v0 + 120);
  v44 = *(v0 + 72);
  OUTLINED_FUNCTION_21_2();
  *(v2 + 368) = v45;
  *(v2 + 376) = v46;
  sub_2684E6DF4(v47, v43, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 120), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 384) = 0u;
    *(v2 + 400) = 0u;
  }

  else
  {
    *(v2 + 408) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 384));
    OUTLINED_FUNCTION_4_1();
    v49 = *(v48 + 32);
    OUTLINED_FUNCTION_12_10();
    v50();
  }

  v51 = *(v0 + 112);
  v52 = *(v0 + 80);
  OUTLINED_FUNCTION_7_14();
  *(v2 + 416) = v53;
  *(v2 + 424) = v54;
  sub_2684E6DF4(v55, v51, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 112), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 432) = 0u;
    *(v2 + 448) = 0u;
  }

  else
  {
    *(v2 + 456) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 432));
    OUTLINED_FUNCTION_4_1();
    v57 = *(v56 + 32);
    OUTLINED_FUNCTION_12_10();
    v58();
  }

  v59 = *(v0 + 104);
  v60 = *(v0 + 88);
  *(v2 + 464) = 0x7972616D6D7573;
  *(v2 + 472) = 0xE700000000000000;
  sub_2684E6DF4(v60, v59, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 104), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 480) = 0u;
    *(v2 + 496) = 0u;
  }

  else
  {
    *(v2 + 504) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 480));
    OUTLINED_FUNCTION_4_1();
    v62 = *(v61 + 32);
    OUTLINED_FUNCTION_12_10();
    v63();
  }

  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BF0]);
  v70 = v64;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 168) = v65;
  *v65 = v66;
  v65[1] = sub_2685105AC;
  v67 = *(v0 + 96);
  v68 = *(v0 + 16);
  OUTLINED_FUNCTION_24_3();

  return v70();
}

uint64_t sub_2685105AC()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[19];
    v12 = v3[20];
    v15 = v3[17];
    v14 = v3[18];
    v17 = v3[15];
    v16 = v3[16];
    v20 = v3 + 13;
    v18 = v3[13];
    v19 = v20[1];

    OUTLINED_FUNCTION_9_10();

    return v21();
  }
}

uint64_t sub_268510730()
{
  OUTLINED_FUNCTION_32_1();
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  OUTLINED_FUNCTION_9_1();
  v10 = v0[22];

  return v9();
}

uint64_t sub_2685107E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268510800()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = OUTLINED_FUNCTION_42_0();
  v0[5] = v2;
  v3 = OUTLINED_FUNCTION_6_12(v2, xmmword_26856A540);
  OUTLINED_FUNCTION_28_1(v3, v4);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283420, &qword_26856D028);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_16_6(v5);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_69();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_268510904(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268510920()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v4 = OUTLINED_FUNCTION_6_12(v3, xmmword_26856CED0);
  OUTLINED_FUNCTION_28_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283420, &qword_26856D028);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_25_2();
  v3[4].n128_u64[1] = v6;
  v3[5].n128_u64[0] = 0xD000000000000012;
  v3[5].n128_u64[1] = v7;
  if (v1)
  {
    v8 = 0;
    v9 = 0;
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v9 = MEMORY[0x277D839F8];
  }

  v3[6].n128_u64[0] = v8;
  v3[7].n128_u64[1] = v9;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = sub_268510A84;
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  OUTLINED_FUNCTION_35_0();

  return v14();
}

uint64_t sub_268510A84()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_9_1();

    return v13();
  }
}

uint64_t sub_268510BA0()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 74) = v3;
  *(v1 + 73) = v4;
  *(v1 + 72) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268510C3C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_26856CEE0;
  *(v3 + 32) = 0x6E69616D6F64;
  *(v3 + 40) = 0xE600000000000000;
  sub_2684E6DF4(v2, v1, &qword_280282AF0, &qword_26856A1E0);
  v4 = sub_268568810();
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 40), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_4_1();
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_12_10();
    v7();
  }

  v8 = *(v0 + 74);
  v9 = *(v0 + 73);
  v10 = *(v0 + 72);
  *(v3 + 80) = 0x6565636572507369;
  *(v3 + 88) = 0xEB00000000646564;
  v11 = MEMORY[0x277D839B0];
  *(v3 + 96) = v10;
  *(v3 + 120) = v11;
  *(v3 + 128) = 0xD000000000000010;
  *(v3 + 136) = 0x8000000268572600;
  *(v3 + 144) = v9;
  *(v3 + 168) = v11;
  *(v3 + 176) = 0x6565636375537369;
  *(v3 + 184) = 0xEB00000000646564;
  *(v3 + 216) = v11;
  *(v3 + 192) = v8;
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BF0]);
  v18 = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 56) = v13;
  *v13 = v14;
  v13[1] = sub_268510E54;
  v15 = *(v0 + 32);
  v16 = *(v0 + 16);
  OUTLINED_FUNCTION_24_3();

  return v18();
}

uint64_t sub_268510E54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_9_10();

    return v14();
  }
}

uint64_t sub_268510F78()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_9_1();
  v4 = v0[8];

  return v3();
}

uint64_t sub_268510FDC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_12_10();
  return sub_26851102C(v3, v4);
}

uint64_t sub_26851102C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2685688F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_2684E6DF4(a1, &v16 - v13, &qword_280282EC8, &unk_26856D010);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_268568700();
  (*(v5 + 8))(a2, v4);
  sub_2684D199C(a1, &qword_280282EC8, &unk_26856D010);
  return v14;
}

uint64_t OUTLINED_FUNCTION_1_12@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_12@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_9_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_28_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(result + 40) = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  *(a1 + 40) = 0xE700000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_allocObject();
}

uint64_t sub_26851140C@<X0>(uint64_t a1@<X8>)
{
  v27[2] = a1;
  v1 = sub_2685679B0();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268567B60();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268567990();
  v27[1] = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_268567A20();
  (*(v12 + 104))(v16, *MEMORY[0x277D5BC10], v9);
  (*(v4 + 104))(v8, *MEMORY[0x277D5B950], v1);
  sub_2685123B8();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v17, v18, v19, v20, v21, v22, v23, v24, 0, v26);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v28);
  return sub_268567D20();
}

uint64_t sub_268511604(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 160) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  memcpy((v9 + 32), __src, 0x80uLL);
  *(v9 + 168) = a7;
  *(v9 + 176) = a8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 200) = a9;
  return v9;
}

uint64_t sub_268511670()
{
  type metadata accessor for RNNoPromptFlow();
  sub_268512AF0();
  return sub_268567900();
}

uint64_t sub_2685116CC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_2685679B0();
  v2[20] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v2[21] = v4;
  v6 = *(v5 + 64);
  v2[22] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v2[23] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v2[24] = v8;
  v10 = *(v9 + 64);
  v2[25] = OUTLINED_FUNCTION_39();
  v11 = *(*(sub_268567B10() - 8) + 64);
  v2[26] = OUTLINED_FUNCTION_39();
  v12 = sub_268567F20();
  v2[27] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v2[28] = v13;
  v15 = *(v14 + 64);
  v2[29] = OUTLINED_FUNCTION_39();
  v16 = sub_2685689F0();
  v2[30] = v16;
  OUTLINED_FUNCTION_2_4(v16);
  v2[31] = v17;
  v19 = *(v18 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685118A4, 0, 0);
}

uint64_t sub_2685118A4()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[35] = v4;
  v5 = *(v3 + 16);
  v0[36] = v5;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "RNNoPromptFlow: In makePromptForValue", v8, 2u);
    MEMORY[0x26D61CB30](v8, -1, -1);
  }

  v9 = v0[34];
  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[19];

  v13 = *(v11 + 8);
  v0[38] = v13;
  v13(v9, v10);
  v14 = *(v12 + 160);
  if (sub_2684DEAF0(v14))
  {
    sub_2684DEAFC(0, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D61C170](0, v14);
    }

    else
    {
      v15 = *(v14 + 32);
    }

    v16 = v15;
    v0[39] = v15;
    v17 = v0[29];
    v18 = v0[26];
    v19 = v0[19];
    sub_268567AE0();
    *(swift_task_alloc() + 16) = v16;
    sub_268567ED0();

    v20 = *(v19 + 24);
    v34 = (*(v19 + 16) + **(v19 + 16));
    v21 = *(*(v19 + 16) + 4);
    v22 = swift_task_alloc();
    v0[40] = v22;
    *v22 = v0;
    v22[1] = sub_268511C64;

    return v34();
  }

  else
  {
    v5(v0[33], v4, v0[30]);
    v24 = sub_2685689E0();
    v25 = sub_268568DE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      OUTLINED_FUNCTION_9_11(&dword_2684CA000, v27, v28, "RNNoPromptFlow: Not finding a valid SANotificationOnDeviceObject");
      MEMORY[0x26D61CB30](v26, -1, -1);
    }

    v29 = v0[33];
    v30 = v0[30];
    v31 = v0[31];
    v32 = v0[18];

    v13(v29, v30);
    sub_268567C40();
    OUTLINED_FUNCTION_1_13();

    OUTLINED_FUNCTION_9_1();

    return v33();
  }
}

uint64_t sub_268511C64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v4 + 328) = v1;

  if (v1)
  {
    v8 = sub_268512008;
  }

  else
  {
    *(v4 + 336) = a1;
    v8 = sub_268511D84;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268511D84()
{
  v29 = v0[29];
  v30 = v0[42];
  v32 = v0[39];
  v33 = v0[28];
  v34 = v0[27];
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v31 = v0[18];
  sub_268567990();
  v28 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v1 + 104))(v2, *MEMORY[0x277D5BB40], v3);
  (*(v5 + 104))(v4, *MEMORY[0x277D5B950], v6);
  sub_2685123B8();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v8, v9, v10, v11, v12, v13, v14, v15, 0, v27);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_2684D57FC(v7 + 112, (v0 + 12));
  v16 = sub_268567D00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_268567CF0();
  v19 = sub_268567840();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[17] = sub_268567830();
  sub_268567890();

  v23 = *(v7 + 176);
  (*(v7 + 168))(v22);
  v24 = *(v7 + 192);
  (*(v7 + 184))(0);
  sub_268567C30();

  (*(v33 + 8))(v29, v34);
  OUTLINED_FUNCTION_1_13();

  OUTLINED_FUNCTION_9_1();

  return v25();
}

uint64_t sub_268512008()
{
  v1 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 280), *(v0 + 240));
  v2 = sub_2685689E0();
  v3 = sub_268568DE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v5, v6, "RNNoPromptFlow: Error while getting pattern result");
    MEMORY[0x26D61CB30](v4, -1, -1);
  }

  v7 = *(v0 + 304);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  v34 = *(v0 + 232);
  v35 = *(v0 + 328);
  v31 = *(v0 + 312);
  v32 = *(v0 + 224);
  v33 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  v14 = *(v0 + 168);
  v27 = *(v0 + 184);
  v28 = *(v0 + 160);
  v29 = *(v0 + 152);
  v30 = *(v0 + 144);

  v7(v9, v10);
  sub_268567990();
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_268567A20();
  (*(v11 + 104))(v12, *MEMORY[0x277D5BC00], v27);
  (*(v14 + 104))(v13, *MEMORY[0x277D5B8D0], v28);
  sub_2685123B8();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v16, v17, v18, v19, v20, v21, v22, v23, 0, v26);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_268567C40();

  (*(v32 + 8))(v34, v33);
  OUTLINED_FUNCTION_1_13();

  OUTLINED_FUNCTION_9_1();

  return v24();
}

uint64_t sub_268512264(uint64_t a1, void *a2)
{
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_268567CD0();
  sub_268508520(a2, v11);
  (*(v4 + 8))(v7, v3);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v3);
  sub_268567EF0();
  return sub_268567EE0();
}

void sub_2685123B8()
{
  v1 = *(v0 + 160);
  v2 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v3 = sub_2684DEAF0(v1);
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v6 = MEMORY[0x26D61C170](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
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
      return;
    }

    sub_268527624(v6);
    if (v8)
    {

      sub_268569020();
      v9 = *(v28 + 16);
      OUTLINED_FUNCTION_7_15();
      sub_268569050();
      OUTLINED_FUNCTION_7_15();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v4;
  }

  v10 = sub_2684DEAF0(v28);

  if (v10 <= 0)
  {
    v11 = sub_2684DEAF0(v1);
    for (i = 0; v11 != i; ++i)
    {
      if (v5)
      {
        v13 = MEMORY[0x26D61C170](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v13 = *(v1 + 8 * i + 32);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        goto LABEL_44;
      }

      sub_268527630(v13);
      if (v15)
      {

        sub_268569020();
        v16 = *(v2 + 16);
        OUTLINED_FUNCTION_7_15();
        sub_268569050();
        OUTLINED_FUNCTION_7_15();
        sub_268569060();
        sub_268569030();
      }

      else
      {
      }
    }

    v17 = sub_2684DEAF0(v2);

    if (v17 <= 0)
    {
      v27 = *(v0 + 200);
    }
  }

  v18 = sub_2684DEAF0(v1);
  for (j = 0; v18 != j; ++j)
  {
    if (v5)
    {
      v20 = MEMORY[0x26D61C170](j, v1);
    }

    else
    {
      if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v20 = *(v1 + 8 * j + 32);
    }

    v21 = v20;
    if (__OFADD__(j, 1))
    {
      goto LABEL_42;
    }

    v22 = [v20 isHighlight];
    if (!v22)
    {
      goto LABEL_36;
    }

    v23 = [v21 isHighlight];
    if (!v23)
    {
      goto LABEL_46;
    }

    v24 = v23;
    v25 = [v23 integerValue];

    if (v25 > 0)
    {
      sub_268569020();
      v26 = *(v2 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
LABEL_36:
    }
  }

  sub_2684DEAF0(v2);
}

void *sub_2685126E0()
{
  v1 = v0[3];

  sub_2684CC8D4((v0 + 4));
  v2 = v0[20];

  v3 = v0[22];

  v4 = v0[24];

  return v0;
}

uint64_t sub_268512720()
{
  sub_2685126E0();

  return MEMORY[0x2821FE8D8](v0, 201, 7);
}

uint64_t sub_268512778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268512828;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268512828(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_268512940(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2685129DC;

  return sub_2685116CC(a1);
}

uint64_t sub_2685129DC()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;

  OUTLINED_FUNCTION_9_1();

  return v4();
}

unint64_t sub_268512AF0()
{
  result = qword_280283428;
  if (!qword_280283428)
  {
    type metadata accessor for RNNoPromptFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283428);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];
}

void OUTLINED_FUNCTION_9_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

unint64_t sub_268512BCC()
{
  v1 = [*(v0 + 16) notificationContext];
  if (!v1)
  {
    return 0xD00000000000004CLL;
  }

  v2 = v1;
  sub_268568FD0();
  MEMORY[0x26D61BDA0](0xD00000000000002ELL, 0x8000000268572B10);
  v3 = [v2 isLongNotification];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x26D61BDA0](v5, v6);

  MEMORY[0x26D61BDA0](0x686769487369202CLL, 0xEF203A746867696CLL);
  v7 = [v2 isHighlight];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x26D61BDA0](v9, v10);

  MEMORY[0x26D61BDA0](0xD000000000000010, 0x8000000268572B40);
  v11 = [v2 isSummarized];
  v12 = v11 == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x26D61BDA0](v13, v14);

  return 0;
}

id sub_268512D7C()
{
  result = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (result)
  {
    v2 = result;
    *(v0 + 16) = result;
    v3 = objc_allocWithZone(MEMORY[0x277D57668]);
    v4 = v2;
    v5 = [v3 init];
    [v4 setNotificationContext_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268512E10()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_268512E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2685689F0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_268568580();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268512FB0, 0, 0);
}

uint64_t sub_268512FB0()
{
  v44 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 104))(v1, *MEMORY[0x277CEBE20], v3);
  v4 = sub_268568570();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = v0[3];
  v6 = v0[4];
  v7 = objc_opt_self();
  v8 = sub_268568B10();
  v9 = [v7 applicationWithBundleIdentifier_];

  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  v13 = __swift_project_value_buffer(v12, qword_28028B348);
  (*(v11 + 16))(v10, v13, v12);

  v14 = v9;
  v15 = sub_2685689E0();
  v16 = sub_268568DC0();

  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[6];
  v18 = v0[7];
  v20 = v0[5];
  if (v17)
  {
    v22 = v0[3];
    v21 = v0[4];
    v42 = v0[5];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41 = v18;
    v25 = swift_slowAlloc();
    v43 = v25;
    *v23 = 136315394;
    *(v23 + 4) = sub_2684EABEC(v22, v21, &v43);
    *(v23 + 12) = 2112;
    *(v23 + 14) = v14;
    *v24 = v14;
    v26 = v14;
    _os_log_impl(&dword_2684CA000, v15, v16, "ProtectedAppCheck#status for %s: %@", v23, 0x16u);
    sub_2684CECB8(v24);
    MEMORY[0x26D61CB30](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D61CB30](v25, -1, -1);
    MEMORY[0x26D61CB30](v23, -1, -1);

    (*(v19 + 8))(v41, v42);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  if ([v14 isHidden])
  {
    v27 = v0[2];
    v28 = *MEMORY[0x277D5BDF8];
    v29 = sub_268567DF0();
    OUTLINED_FUNCTION_0_14(v29);
    (*(v30 + 104))(v27, v28);

    goto LABEL_13;
  }

  v31 = [v14 isLocked];

  if (v31)
  {
    v32 = v0[2];
    v33 = MEMORY[0x277D5BE00];
  }

  else
  {
LABEL_11:
    v32 = v0[2];
    v33 = MEMORY[0x277D5BE08];
  }

  v34 = *v33;
  v35 = sub_268567DF0();
  OUTLINED_FUNCTION_0_14(v35);
  (*(v36 + 104))(v32, v34);
LABEL_13:
  v37 = v0[10];
  v38 = v0[7];

  v39 = v0[1];

  return v39();
}

void *sub_268513374()
{
  type metadata accessor for UserDefaultsProvider();
  v0 = swift_allocObject();
  result = sub_2685133B0();
  qword_28028B398 = v0;
  return result;
}

void *sub_2685133B0()
{
  v0[3] = 0xD00000000000001BLL;
  v0[4] = 0x8000000268571320;
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v0[2] = sub_26851BB5C(0xD00000000000001BLL, 0x8000000268571320);
  return v0;
}

uint64_t UserDefaultsProvider.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t UserDefaultsProvider.__deallocating_deinit()
{
  UserDefaultsProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t type metadata accessor for ReadNotificationsCATPatternsExecutor()
{
  result = qword_280283430;
  if (!qword_280283430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268513524(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26856CED0;
  *(v2 + 32) = 0x656D614E707061;
  *(v2 + 40) = 0xE700000000000000;
  if (a1)
  {
    sub_2685687A0();
    v3 = a1;
  }

  else
  {
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v3;
  OUTLINED_FUNCTION_25_2();
  *(v2 + 72) = v4;
  *(v2 + 80) = 0xD000000000000017;
  *(v2 + 88) = v5;
  *(v2 + 120) = MEMORY[0x277D839B0];
  *(v2 + 96) = 0;

  return v2;
}

uint64_t sub_2685135E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26856D240;
  OUTLINED_FUNCTION_25_2();
  *(v2 + 32) = 0xD000000000000020;
  *(v2 + 40) = v3;
  v4 = MEMORY[0x277D839B0];
  *(v2 + 48) = *v0;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x8000000268571A90;
  *(v2 + 96) = *(v0 + 1);
  *(v2 + 120) = v4;
  *(v2 + 128) = 0xD000000000000017;
  *(v2 + 136) = 0x8000000268572C30;
  *(v2 + 144) = 0;
  *(v2 + 168) = v4;
  *(v2 + 176) = 0x6E69577473726966;
  *(v2 + 184) = 0xEF657A6953776F64;
  if (*(v0 + 16))
  {
    v5 = 0;
    v6 = 0;
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = MEMORY[0x277D839F8];
  }

  *(v1 + 192) = v5;
  *(v1 + 216) = v6;
  strcpy((v1 + 224), "isConclusion");
  *(v1 + 237) = 0;
  *(v1 + 238) = -5120;
  *(v1 + 240) = *(v0 + 17);
  *(v1 + 264) = v4;
  strcpy((v1 + 272), "isFirstWindow");
  *(v1 + 286) = -4864;
  *(v1 + 288) = *(v0 + 18);
  *(v1 + 312) = v4;
  strcpy((v1 + 320), "isLastWindow");
  *(v1 + 333) = 0;
  *(v1 + 334) = -5120;
  *(v1 + 336) = *(v0 + 19);
  *(v1 + 360) = v4;
  *(v1 + 368) = 0xD000000000000016;
  *(v1 + 376) = 0x8000000268572CE0;
  *(v1 + 384) = *(v0 + 20);
  *(v1 + 408) = v4;
  *(v1 + 416) = 0x736D657469;
  *(v1 + 424) = 0xE500000000000000;
  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
  *(v1 + 432) = v7;
  OUTLINED_FUNCTION_25_2();
  *(v1 + 456) = v8;
  *(v1 + 464) = 0xD000000000000013;
  *(v1 + 472) = v9;
  if (*(v0 + 40))
  {
    v10 = 0;
    v11 = 0;
    *(v1 + 488) = 0;
    *(v1 + 496) = 0;
  }

  else
  {
    v10 = *(v0 + 32);
    v11 = MEMORY[0x277D839F8];
  }

  *(v1 + 480) = v10;
  *(v1 + 504) = v11;
  *(v1 + 512) = 0x6574496C61746F74;
  *(v1 + 520) = 0xEA0000000000736DLL;
  if (*(v0 + 56))
  {
    v12 = 0;
    v13 = 0;
    *(v1 + 536) = 0u;
  }

  else
  {
    v12 = *(v0 + 48);
    v13 = MEMORY[0x277D839F8];
  }

  *(v1 + 528) = v12;
  *(v1 + 552) = v13;
  *(v1 + 560) = 0x6953776F646E6977;
  *(v1 + 568) = 0xEA0000000000657ALL;
  if (*(v0 + 72))
  {
    v14 = 0;
    v15 = 0;
    *(v1 + 584) = 0u;
  }

  else
  {
    v14 = *(v0 + 64);
    v15 = MEMORY[0x277D839F8];
  }

  *(v1 + 576) = v14;
  *(v1 + 600) = v15;
  sub_268514970(v0, &v17);
  return v1;
}

uint64_t sub_2685138D4(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26856CF10;
  OUTLINED_FUNCTION_25_2();
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = v6;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 48) = 0;
  *(v5 + 72) = v7;
  strcpy((v5 + 80), "isReadLatest");
  *(v5 + 93) = 0;
  *(v5 + 94) = -5120;
  *(v5 + 96) = a1;
  *(v5 + 120) = v7;
  strcpy((v5 + 128), "notification");
  *(v5 + 141) = 0;
  *(v5 + 142) = -5120;
  if (a2)
  {
    v8 = type metadata accessor for NotificationsNotification(0);
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v9;
  *(v4 + 168) = v8;

  return v4;
}

uint64_t sub_2685139D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_2685139E8()
{
  OUTLINED_FUNCTION_20_2();
  v0[4] = *(v0[3] + 32);

  v0[5] = sub_268513524(v1);
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_11_8(v2);
  v3 = OUTLINED_FUNCTION_8_13(36);

  return v4(v3);
}

uint64_t sub_268513AAC()
{
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *(v6 + 40);
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268513BD8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_10_6();

  return v4(v3);
}

uint64_t sub_268513C38()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_268513CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_25_2();
  v2[4] = 0xD000000000000017;
  v2[5] = v3;
  v2[9] = MEMORY[0x277D839B0];
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v9 = v4;
  v0[3] = v1;
  *(v1 + 16) = v5;
  *(v1 + 48) = 0;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_268513DD4;
  v7 = v0[2];

  return v9(0xD000000000000027, 0x8000000268572D20, v1);
}

uint64_t sub_268513DD4()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_14();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 24);

    v14 = *(v8 + 8);

    return v14(v1);
  }
}

uint64_t sub_268513F08()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_268513F68(char a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 272) = v11;
  *(v9 + 280) = v8;
  *(v9 + 256) = a7;
  *(v9 + 264) = a8;
  *(v9 + 94) = a6;
  *(v9 + 93) = a5;
  *(v9 + 92) = a4;
  *(v9 + 91) = a3;
  *(v9 + 90) = a2;
  *(v9 + 89) = a1;
  return MEMORY[0x2822009F8](sub_268513FAC, 0, 0);
}

uint64_t sub_268513FAC()
{
  OUTLINED_FUNCTION_20_2();
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 94);
  v4 = *(v0 + 93);
  v5 = *(v0 + 92);
  v6 = *(v0 + 91);
  v7 = *(v0 + 90);
  v8 = *(v0 + 89);
  *(v0 + 336) = 1;
  *(v0 + 344) = 1;
  *(v0 + 352) = 1;
  *(v0 + 360) = 1;
  *(v0 + 96) = v8;
  *(v0 + 97) = v7;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 113) = v6;
  *(v0 + 114) = v5;
  *(v0 + 115) = v4;
  *(v0 + 116) = v3;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;

  v13 = (v2 + *v2);
  v9 = v2[1];
  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = sub_268514108;
  v11 = *(v0 + 272);

  return v13(v0 + 96);
}

uint64_t sub_268514108()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_12();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v2[37] = v0;

  if (v0)
  {
    memcpy(v2 + 22, v2 + 12, 0x49uLL);
    sub_268514940((v2 + 22));
    v8 = sub_268514424;
  }

  else
  {
    v8 = sub_268514220;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268514220()
{
  OUTLINED_FUNCTION_20_2();
  memcpy(v0 + 2, v0 + 12, 0x49uLL);
  v0[38] = sub_2685135E8();
  sub_268514940((v0 + 2));
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_2685142FC;
  v2 = v0[35];
  v3 = OUTLINED_FUNCTION_8_13(45);

  return v4(v3);
}

uint64_t sub_2685142FC()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v7 = *(v6 + 312);
  v8 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;
  v4[40] = v0;

  if (!v0)
  {
    v10 = v4[38];

    v4[41] = v1;
  }

  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26851443C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[38];

  v2 = v0[40];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26851449C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_2685144B4()
{
  OUTLINED_FUNCTION_20_2();
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 24) + 16);
  v3 = sub_268555B38();
  *(v0 + 32) = v3;
  *(v0 + 40) = sub_2685138D4(v1, v3);
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_11_8(v4);
  v5 = OUTLINED_FUNCTION_8_13(40);

  return v6(v5);
}

uint64_t sub_268514584()
{
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *(v6 + 40);
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2685146B0()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_10_6();

  return v4(v3);
}

uint64_t sub_268514710()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_268514778(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2685147CC(a1, a2);
}

uint64_t sub_2685147CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2685688F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2684F3D80(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_268568700();
  (*(v5 + 8))(a2, v4);
  sub_2684F3DF0(a1);
  return v12;
}

uint64_t sub_2685149B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2685149F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

uint64_t sub_268514AAC()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283458, &qword_26856D4C0);
  return sub_268568B70();
}

uint64_t sub_268514B10()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v0;
  v2 = sub_2685689F0();
  v1[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[5] = v3;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_268514BFC;

  return sub_2685153B4();
}

uint64_t sub_268514BFC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268514CFC()
{
  v1 = v0[3];
  v3 = v1[7];
  v2 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v4 = *(MEMORY[0x277D5BFB8] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = sub_2684E0120();
  *v5 = v0;
  v5[1] = sub_268514DCC;
  v7 = v0[9];

  return MEMORY[0x2821BB6A0](v7, v3, v6, v2);
}

uint64_t sub_268514DCC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;
  *(v10 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268514ECC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadIntroductionAction run | read notifications summary", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);

  (*(v11 + 8))(v8, v10);

  OUTLINED_FUNCTION_9_1();

  return v12();
}

uint64_t sub_26851502C()
{
  v28 = v0;
  v2 = v0[10];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = v0[5];
  v3 = v0[6];
  __swift_project_value_buffer(v0[4], qword_28028B348);
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  v7 = v2;
  v8 = sub_2685689E0();
  sub_268568DE0();

  v9 = OUTLINED_FUNCTION_24_4();
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_6_8();
    *v11 = 136315138;
    v0[2] = v2;
    v13 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v14 = sub_268568B70();
    sub_2684EABEC(v14, v15, &v27);
    OUTLINED_FUNCTION_23_3();
    *(v11 + 4) = v1;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    (*(v10 + 8))(v11, v12);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_20_3();
    v22(v21, v12);
  }

  v24 = v0[6];
  v23 = v0[7];
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v25();
}

uint64_t sub_2685151EC()
{
  v28 = v0;

  v2 = *(v0 + 96);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_value_buffer(*(v0 + 32), qword_28028B348);
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  v7 = v2;
  v8 = sub_2685689E0();
  sub_268568DE0();

  v9 = OUTLINED_FUNCTION_24_4();
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  if (v9)
  {
    swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_6_8();
    *v11 = 136315138;
    *(v0 + 16) = v2;
    v13 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v14 = sub_268568B70();
    sub_2684EABEC(v14, v15, &v27);
    OUTLINED_FUNCTION_23_3();
    *(v11 + 4) = v1;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    (*(v10 + 8))(v11, v12);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_20_3();
    v22(v21, v12);
  }

  v24 = *(v0 + 48);
  v23 = *(v0 + 56);
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v25();
}

uint64_t sub_2685153B4()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268568810();
  v1[3] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = sub_268567D90();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v10 = sub_2685689F0();
  v1[11] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[12] = v11;
  v13 = *(v12 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_268515530()
{
  v89 = v0;
  v2 = *(v0[2] + 120);
  v3 = *(sub_2684F4060() + 16);

  sub_2684F42A8();
  v5 = v4;
  if (v3 >= 6)
  {
    v6 = sub_2685382A0(0, 4, v4);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if (v12)
    {
      sub_2685691E0();
      swift_unknownObjectRetain_n();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
        v32 = MEMORY[0x277D84F90];
      }

      v33 = *(v32 + 16);

      if (__OFSUB__(v12 >> 1, v10))
      {
        __break(1u);
      }

      else if (v33 == (v12 >> 1) - v10)
      {
        v14 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v14)
        {
LABEL_15:
          v34 = *(sub_2684F4060() + 16);

          v35 = v34 - 4;
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v36 = v35;
          v37 = v0[14];
          v38 = v0[12];
          __swift_project_value_buffer(v0[11], qword_28028B348);
          v39 = OUTLINED_FUNCTION_10_1();
          v40(v39);

          v41 = sub_2685689E0();
          sub_268568DC0();
          OUTLINED_FUNCTION_19_4();

          v42 = OUTLINED_FUNCTION_24_4();
          v43 = v0[14];
          v45 = v0[11];
          v44 = v0[12];
          if (v42)
          {
            swift_slowAlloc();
            v88 = OUTLINED_FUNCTION_6_8();
            *v43 = 136315394;
            v46 = MEMORY[0x26D61BE70](v14, MEMORY[0x277D837D0]);
            sub_2684EABEC(v46, v47, &v88);
            OUTLINED_FUNCTION_23_3();
            *(v43 + 4) = v1;
            *(v43 + 12) = 2048;
            *(v43 + 14) = v36;
            OUTLINED_FUNCTION_21_0();
            _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
            OUTLINED_FUNCTION_1_7();
            OUTLINED_FUNCTION_3_2();

            v53 = v44[1];
            ++v44;
            v53(v43, v45);
          }

          else
          {

            v68 = OUTLINED_FUNCTION_20_3();
            v69(v68, v45);
          }

          v70 = v0[2];
          v71 = *(v70 + 112);
          v72 = *(v14 + 16);
          if (v72)
          {
            v87 = *(v70 + 112);
            v73 = v0[4];
            OUTLINED_FUNCTION_17_7();
            OUTLINED_FUNCTION_13_9();
            do
            {
              v74 = v0[6];
              v75 = *(v44 - 1);
              v76 = *v44;

              sub_268568BB0();

              OUTLINED_FUNCTION_18_4();
              if (v64)
              {
                OUTLINED_FUNCTION_16_7(v77);
                v14 = v88;
              }

              v78 = v0[6];
              v79 = OUTLINED_FUNCTION_6_13();
              v80(v79);
              v44 += 2;
              --v72;
            }

            while (v72);
          }

          else
          {

            v14 = MEMORY[0x277D84F90];
          }

          v0[15] = v14;
          v84 = swift_task_alloc();
          v0[16] = v84;
          *v84 = v0;
          v84[1] = sub_268515B0C;
          v85 = v0[10];

          return sub_268510904(v85, v14, *&v36, 0);
        }

        v14 = MEMORY[0x277D84F90];
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease_n();
    }

    sub_26853D830(v6, v8, v10, v12);
    v14 = v13;
    goto LABEL_14;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v16 = v0[12];
  v15 = v0[13];
  __swift_project_value_buffer(v0[11], qword_28028B348);
  v17 = OUTLINED_FUNCTION_10_1();
  v18(v17);

  v19 = sub_2685689E0();
  sub_268568DC0();
  OUTLINED_FUNCTION_19_4();

  v20 = OUTLINED_FUNCTION_24_4();
  v21 = v0[12];
  v22 = v0[13];
  v23 = v0[11];
  if (v20)
  {
    swift_slowAlloc();
    v88 = OUTLINED_FUNCTION_6_8();
    *v22 = 136315138;
    v24 = MEMORY[0x26D61BE70](v5, MEMORY[0x277D837D0]);
    sub_2684EABEC(v24, v25, &v88);
    OUTLINED_FUNCTION_23_3();
    *(v22 + 4) = v1;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    v31 = v21[1];
    ++v21;
    v31(v22, v23);
  }

  else
  {

    v54 = OUTLINED_FUNCTION_20_3();
    v55(v54, v23);
  }

  v56 = v0[2];
  v57 = *(v56 + 112);
  v58 = *(v5 + 16);
  if (v58)
  {
    v86 = *(v56 + 112);
    v59 = v0[4];
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_13_9();
    do
    {
      v60 = v0[5];
      v61 = *(v21 - 1);
      v62 = *v21;

      sub_268568BB0();

      OUTLINED_FUNCTION_18_4();
      if (v64)
      {
        OUTLINED_FUNCTION_16_7(v63);
        v5 = v88;
      }

      v65 = v0[5];
      v66 = OUTLINED_FUNCTION_6_13();
      v67(v66);
      v21 += 2;
      --v58;
    }

    while (v58);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v0[18] = v5;
  v81 = swift_task_alloc();
  v0[19] = v81;
  *v81 = v0;
  v81[1] = sub_268515CE0;
  v82 = v0[9];

  return sub_2685107E8(v82, v5);
}

uint64_t sub_268515B0C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *(v4 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 136) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268515C20()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  OUTLINED_FUNCTION_12_11();
  v5 = OUTLINED_FUNCTION_22_2();
  v6(v5);

  v7 = OUTLINED_FUNCTION_21_3();

  return v8(v7);
}

uint64_t sub_268515CE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 160) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268515DF4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_12_11();
  v5 = OUTLINED_FUNCTION_22_2();
  v6(v5);

  v7 = OUTLINED_FUNCTION_21_3();

  return v8(v7);
}

uint64_t sub_268515EB4()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  OUTLINED_FUNCTION_9_1();

  return v8();
}

uint64_t sub_268515F54()
{
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  OUTLINED_FUNCTION_9_1();

  return v8();
}

void *sub_268515FF4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  v3 = v0[15];

  return v0;
}

uint64_t sub_268516034()
{
  sub_268515FF4();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_26851608C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_268514B10();
}

uint64_t sub_2685161A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadIntroductionAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_6_13()
{
  v5 = *(v1 + 24);
  *(v0 + 16) = v2;
  result = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
  v7 = *(v4 + 32);
  return result;
}

id OUTLINED_FUNCTION_12_11()
{
  v3 = v1[7];
  v4 = v1[8];
  v6 = v1[5];
  v5 = v1[6];
  v7 = (v1[2] + 72);

  return sub_26851C004(v0, v7);
}

size_t OUTLINED_FUNCTION_16_7@<X0>(unint64_t a1@<X8>)
{

  return sub_2684DD000(a1 > 1, v1, 1);
}

size_t OUTLINED_FUNCTION_17_7()
{

  return sub_2684DD000(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_23_3()
{
}

BOOL OUTLINED_FUNCTION_24_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_268516318(uint64_t a1, uint64_t a2)
{
  v4 = sub_268567690();
  v5 = OUTLINED_FUNCTION_1(v4);
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_5_5();
  v11 = v10 - v9;
  v12 = sub_2685689F0();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_5();
  v20 = v19 - v18;
  v21 = sub_268568610();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_5();
  v29 = v28 - v27;
  sub_2685686F0();
  sub_2684D57FC(a1, v43);
  sub_2685686A0();
  sub_2685166B0(v43);
  sub_268568600();
  sub_2685686D0();

  (*(v24 + 8))(v29, v21);
  if (a2)
  {
    sub_2685685B0();
    v30 = sub_268568940();
    v32 = v31;

    if (v32)
    {
      if (qword_280282960 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v12, qword_28028B348);
      (*(v15 + 16))(v20, v33, v12);

      v34 = sub_2685689E0();
      v35 = sub_268568DC0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v40 = v30;
        v37 = swift_slowAlloc();
        v43[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2684EABEC(v40, v32, v43);
        _os_log_impl(&dword_2684CA000, v34, v35, "#CATGlobals: localeOverride available and is set to: %s, setting this as the siriLocale", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x26D61CB30](v37, -1, -1);
        MEMORY[0x26D61CB30](v36, -1, -1);
      }

      (*(v15 + 8))(v20, v12);
      sub_268567620();
      sub_2685686C0();

      (*(v41 + 8))(v11, v42);
    }
  }

  v38 = sub_2685686E0();

  return v38;
}

uint64_t sub_2685166B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283460, &qword_26856D4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268516718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v98 = a2;
  v3 = sub_268567610();
  v4 = OUTLINED_FUNCTION_1(v3);
  v95 = v5;
  v96 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_14();
  v93 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283468, &qword_26856D4D0);
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v94 = &v79 - v13;
  OUTLINED_FUNCTION_19_1();
  v90 = sub_2685680F0();
  v14 = OUTLINED_FUNCTION_1(v90);
  v80 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_14();
  v91 = v18;
  OUTLINED_FUNCTION_19_1();
  v97 = sub_2685681D0();
  v19 = OUTLINED_FUNCTION_1(v97);
  v92 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_14();
  v89 = v23;
  OUTLINED_FUNCTION_19_1();
  v88 = sub_268568150();
  v24 = OUTLINED_FUNCTION_1(v88);
  v86 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_5();
  v84 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_16();
  v31 = sub_268568190();
  v32 = OUTLINED_FUNCTION_1(v31);
  v99 = v33;
  v100 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_5();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v79 - v40;
  v42 = sub_268568100();
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_5();
  v46 = sub_268568200();
  v47 = OUTLINED_FUNCTION_1(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_5();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v79 - v56;
  v87 = sub_268567CE0();
  v58 = OUTLINED_FUNCTION_1(v87);
  v85 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5_5();
  v64 = v63 - v62;
  sub_268567CD0();
  OUTLINED_FUNCTION_4_15();
  sub_268567CA0();
  sub_268567CB0();
  sub_268567CC0();
  sub_268567C90();
  sub_2685681F0();
  result = sub_268565330(v101);
  if (v66)
  {
    sub_26851775C();

    sub_2685681E0();
    sub_268568180();
    v81 = v49;
    v82 = v46;
    (*(v49 + 16))(v54, v57, v46);
    sub_268568160();
    sub_268568140();
    (*(v99 + 16))(v38, v41, v100);
    sub_268568130();
    v67 = v89;
    sub_2685681C0();
    v68 = v86;
    v69 = v88;
    (*(v86 + 16))(v84, v2, v88);
    sub_2685681B0();
    v70 = v93;
    sub_268567600();
    v71 = v94;
    sub_268568210();
    (*(v95 + 8))(v70, v96);
    v72 = v90;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v90);
    v83 = v41;
    if (EnumTagSinglePayload == 1)
    {
      sub_2684D199C(v71, &qword_280283468, &qword_26856D4D0);
      sub_2685680E0();
    }

    else
    {
      (*(v80 + 32))(v91, v71, v72);
    }

    sub_2685681A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283470, &qword_26856D4D8);
    v74 = v92;
    v75 = *(v92 + 72);
    v76 = *(v92 + 80);
    v77 = OUTLINED_FUNCTION_9_12();
    *(v77 + 16) = xmmword_26856A540;
    v78 = v97;
    (*(v74 + 16))(v77 + v67, v67, v97);
    sub_268567C80();
    sub_268508520(v101, v98);
    (*(v74 + 8))(v67, v78);
    (*(v68 + 8))(v2, v69);
    (*(v99 + 8))(v83, v100);
    (*(v81 + 8))(v57, v82);
    return (*(v85 + 8))(v64, v87);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268516DA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a1;
  v103 = a4;
  v110 = sub_268567610();
  v7 = OUTLINED_FUNCTION_1(v110);
  v108 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_14();
  v106 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283468, &qword_26856D4D0);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v107 = &v91 - v16;
  OUTLINED_FUNCTION_19_1();
  v104 = sub_2685680F0();
  v17 = OUTLINED_FUNCTION_1(v104);
  v93 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_14();
  v105 = v21;
  OUTLINED_FUNCTION_19_1();
  v101 = sub_2685681D0();
  v22 = OUTLINED_FUNCTION_1(v101);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_14();
  v111 = v27;
  OUTLINED_FUNCTION_19_1();
  v112 = sub_268568150();
  v28 = OUTLINED_FUNCTION_1(v112);
  v109 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v32);
  v117 = &v91 - v33;
  OUTLINED_FUNCTION_19_1();
  v118 = sub_268568190();
  v34 = OUTLINED_FUNCTION_1(v118);
  v116 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v38);
  v115 = &v91 - v39;
  OUTLINED_FUNCTION_19_1();
  v40 = sub_268568100();
  v41 = OUTLINED_FUNCTION_10(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_14();
  v95 = v44;
  OUTLINED_FUNCTION_19_1();
  v45 = sub_2685689F0();
  v46 = OUTLINED_FUNCTION_1(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_5();
  v53 = v52 - v51;
  v100 = sub_268568200();
  v54 = OUTLINED_FUNCTION_1(v100);
  v114 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_16();
  v99 = sub_268567CE0();
  v59 = OUTLINED_FUNCTION_1(v99);
  v98 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_5_5();
  v65 = v64 - v63;
  sub_268567CD0();
  OUTLINED_FUNCTION_4_15();
  sub_268567CA0();
  sub_268567CB0();
  sub_268567CC0();
  sub_268567C90();
  v113 = v4;
  sub_2685681F0();
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v45, qword_28028B348);
  (*(v48 + 16))(v53, v66, v45);

  v67 = sub_2685689E0();
  v68 = a2;
  v69 = sub_268568DC0();

  if (os_log_type_enabled(v67, v69))
  {
    v70 = swift_slowAlloc();
    v92 = a3;
    v71 = v70;
    v72 = swift_slowAlloc();
    v91 = v24;
    v73 = v72;
    v119 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_2684EABEC(v102, v68, &v119);
    _os_log_impl(&dword_2684CA000, v67, v69, "NotificationContext makeReadNotificationPromptContext | setting reference for appName: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    v74 = v73;
    v24 = v91;
    MEMORY[0x26D61CB30](v74, -1, -1);
    v75 = v71;
    a3 = v92;
    MEMORY[0x26D61CB30](v75, -1, -1);
  }

  (*(v48 + 8))(v53, v45);
  sub_26851775C();
  v76 = v113;
  sub_2685681E0();
  v77 = v115;
  sub_268568180();
  v78 = v100;
  (*(v114 + 16))(v94, v76, v100);
  sub_268568160();
  v79 = v117;
  sub_268568140();
  (*(v116 + 16))(v96, v77, v118);
  sub_268568130();
  v80 = v111;
  sub_2685681C0();
  v81 = v109;
  v82 = v112;
  (*(v109 + 16))(v97, v79, v112);
  sub_2685681B0();
  v83 = v106;
  sub_268567600();
  v84 = v107;
  sub_268568210();
  (*(v108 + 8))(v83, v110);
  v85 = v104;
  if (__swift_getEnumTagSinglePayload(v84, 1, v104) == 1)
  {
    sub_2684D199C(v84, &qword_280283468, &qword_26856D4D0);
    sub_2685680E0();
  }

  else
  {
    (*(v93 + 32))(v105, v84, v85);
  }

  sub_2685681A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283470, &qword_26856D4D8);
  v86 = *(v24 + 72);
  v87 = *(v24 + 80);
  v88 = OUTLINED_FUNCTION_9_12();
  *(v88 + 16) = xmmword_26856A540;
  v89 = v101;
  (*(v24 + 16))(v88 + v80, v80, v101);
  sub_268567C80();
  sub_268509368(a3, v103);
  (*(v24 + 8))(v80, v89);
  (*(v81 + 8))(v117, v82);
  (*(v116 + 8))(v115, v118);
  (*(v114 + 8))(v113, v78);
  return (*(v98 + 8))(v65, v99);
}

uint64_t sub_268517644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268567CE0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v12 = v11 - v10;
  sub_268567CD0();
  OUTLINED_FUNCTION_4_15();
  sub_268567CA0();
  sub_268567C70();
  sub_268567CB0();
  sub_268567CC0();
  sub_268567C90();
  sub_268508520(a1, a2);
  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_26851775C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283478, &unk_26856D4E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_268568530();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_268568520();
  v8 = sub_268568500();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2685684F0();
  v11 = sub_268568420();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_268568410();
  sub_268568400();

  sub_2685683E0();

  sub_2685684C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26856B420;
  *(v14 + 32) = v7;
  v15 = sub_268568370();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);

  MEMORY[0x26D61B4B0](v14, v3);

  sub_2684D199C(v3, &qword_280283478, &unk_26856D4E0);
  sub_268568230();
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return swift_allocObject();
}

uint64_t RNFlow.__allocating_init(notificationManager:request:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, const void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5 & 1;
  *(v12 + 49) = HIBYTE(a5) & 1;
  memcpy((v12 + 56), a6, 0x80uLL);
  return v12;
}

uint64_t RNFlow.init(notificationManager:request:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = HIBYTE(a5) & 1;
  memcpy((v6 + 56), __src, 0x80uLL);
  return v6;
}

uint64_t RNFlow.execute()(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_2685689F0();
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268517C04, 0, 0);
}

uint64_t sub_268517C04()
{
  v1 = v0[37];
  v2 = *(v1 + 176);
  if (sub_2684D4BC4())
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v4 = v0[39];
    v3 = v0[40];
    v5 = v0[38];
    v6 = __swift_project_value_buffer(v5, qword_28028B348);
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_2685689E0();
    v8 = sub_268568DC0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2684CA000, v7, v8, "#RNFlow Running Highlights flow", v9, 2u);
      MEMORY[0x26D61CB30](v9, -1, -1);
    }

    v11 = v0[39];
    v10 = v0[40];
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[36];

    (*(v11 + 8))(v10, v12);
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    v18 = *(v13 + 32);
    v17 = *(v13 + 40);
    v19 = *(v13 + 48);
    LODWORD(v13) = *(v13 + 49);
    sub_2684CC878(v1 + 56, (v0 + 18));
    type metadata accessor for RNPatternHighlightsFlow();
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_0_15();
    v0[35] = sub_268509C34(v20, v21, v22, v23, v24, v25);
    sub_268518124(&qword_280283488, 255, type metadata accessor for RNPatternHighlightsFlow);
  }

  else
  {
    v27 = v0[36];
    v26 = v0[37];
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    v31 = *(v26 + 32);
    v30 = *(v26 + 40);
    v32 = *(v26 + 48);
    v33 = *(v26 + 49);
    sub_2684CC878(v1 + 56, (v0 + 2));
    type metadata accessor for RNPatternFlow();
    swift_allocObject();
    v34 = OUTLINED_FUNCTION_0_15();
    v0[34] = sub_2684D9C4C(v34, v35, v36, v37, v38, v39);
    sub_268518124(&qword_280283480, 255, type metadata accessor for RNPatternFlow);
  }

  sub_268567C20();

  v40 = v0[40];

  v41 = v0[1];

  return v41();
}

uint64_t RNFlow.execute(completion:)()
{
  type metadata accessor for RNFlow();
  sub_268518124(&qword_280282E20, v0, type metadata accessor for RNFlow);
  return sub_268567900();
}

void *RNFlow.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];

  sub_2684CC8D4((v0 + 7));
  return v0;
}

uint64_t RNFlow.__deallocating_deinit()
{
  RNFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_26851802C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684CEB80;

  return RNFlow.execute()(a1);
}

uint64_t sub_2685180C8()
{
  type metadata accessor for RNFlow();

  return sub_268567950();
}

uint64_t sub_268518124(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_268518184()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  v2 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_canUseSenderName) = 0;
  return v0;
}

uint64_t sub_268518208(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_26851824C()
{
  v1 = *(v0 + 16);

  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName);
  return v0;
}

uint64_t sub_2685182C0(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v3 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  swift_beginAccess();
  sub_2684D4298(a1 + v3, v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId);
  v4 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName;
  swift_beginAccess();
  sub_2684D4298(a1 + v4, v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName);
  LOBYTE(v4) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_canUseSenderName);

  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName) = v4;
  return v1;
}

uint64_t sub_268518388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = a1 == 0x6163696669746F6ELL && a2 == 0xED0000736E6F6974;
  if (!v14 && (OUTLINED_FUNCTION_8_0() & 1) == 0)
  {
    v17 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
    if (v17 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
    {
      sub_2684D4298(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId, v13);
      v18 = sub_268568810();
      if (__swift_getEnumTagSinglePayload(v13, 1, v18) != 1)
      {
        *(a3 + 24) = v18;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(*(v18 - 8) + 32))(boxed_opaque_existential_0, v13, v18);
      }

      v19 = v13;
    }

    else
    {
      if (a1 != 0x656D614E707061 || a2 != 0xE700000000000000)
      {
        result = OUTLINED_FUNCTION_8_0();
        if ((result & 1) == 0)
        {
          v24 = a1 == 0xD000000000000010 && 0x8000000268571230 == a2;
          if (v24 || (result = OUTLINED_FUNCTION_8_0(), (result & 1) != 0))
          {
            v25 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName);
            *(a3 + 24) = MEMORY[0x277D839B0];
            *a3 = v25;
            return result;
          }

LABEL_17:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          return result;
        }
      }

      sub_2684D4298(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v11);
      v22 = sub_268568810();
      if (__swift_getEnumTagSinglePayload(v11, 1, v22) != 1)
      {
        *(a3 + 24) = v22;
        v23 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(*(v22 - 8) + 32))(v23, v11, v22);
      }

      v19 = v11;
    }

    result = sub_2684D4378(v19);
    goto LABEL_17;
  }

  v15 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
  *a3 = v15;
}

uint64_t sub_268518668()
{
  v0 = sub_2685690D0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2685186BC(char a1)
{
  result = 0x6163696669746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6449707061;
      break;
    case 2:
      result = 0x656D614E707061;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26851875C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2684E7FB4();
}

uint64_t sub_268518780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268518668();
  *a2 = result;
  return result;
}

unint64_t sub_2685187B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2685186BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2685187E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268518668();
  *a1 = result;
  return result;
}

uint64_t sub_268518818(uint64_t a1)
{
  v2 = sub_2685192F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268518854(uint64_t a1)
{
  v2 = sub_2685192F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268518890()
{
  v1 = *(v0 + 24);

  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName);
  return v0;
}

uint64_t sub_2685188F0(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_268518974()
{
  sub_2684D3618();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_268518A28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802834D8, &qword_26856D6F8);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2685192F4();
  sub_2685692A0();
  v19 = *(v3 + 24);
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
  sub_268519348(&qword_2802834E0, &qword_280282AE8);
  sub_268569170();
  if (!v2)
  {
    v18[6] = 1;
    sub_268568810();
    OUTLINED_FUNCTION_1_15();
    sub_2685192AC(v14, v15);
    OUTLINED_FUNCTION_4_16();
    v18[5] = 2;
    OUTLINED_FUNCTION_4_16();
    v16 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName);
    v18[4] = 3;
    sub_268569160();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_268518C68(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_268518D8C(a1);
  return v5;
}

void sub_268518CE0()
{
  sub_2684D3618();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_268518D8C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802834C0, &unk_26856D6E8);
  v12 = OUTLINED_FUNCTION_1(v27);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  *(v3 + 16) = 0;
  v16 = a1[3];
  v15 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2685192F4();
  sub_268569290();
  if (v2)
  {

    type metadata accessor for NotificationsApp(0);
    v17 = *(*v3 + 48);
    v18 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
    v32 = 0;
    sub_268519348(&qword_2802834D0, &qword_280282AE0);
    sub_268569120();
    *(v3 + 24) = v33;
    sub_268568810();
    v31 = 1;
    OUTLINED_FUNCTION_1_15();
    sub_2685192AC(v20, v21);
    OUTLINED_FUNCTION_3_13();
    sub_2685690F0();
    sub_2684D4308(v11, v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId);
    v30 = 2;
    v22 = v26;
    OUTLINED_FUNCTION_3_13();
    sub_2685690F0();
    sub_2684D4308(v22, v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName);
    v29 = 3;
    v23 = sub_268569110();
    v24 = OUTLINED_FUNCTION_0_16();
    v25(v24);
    *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName) = v23 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  return v3;
}

uint64_t sub_2685191CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268518C68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2685192AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2685192F4()
{
  result = qword_2802834C8;
  if (!qword_2802834C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834C8);
  }

  return result;
}

uint64_t sub_268519348(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280283440, &qword_26856D320);
    sub_2685192AC(a2, type metadata accessor for NotificationsNotification);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationsApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2685194B0);
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

unint64_t sub_2685194EC()
{
  result = qword_2802834E8;
  if (!qword_2802834E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834E8);
  }

  return result;
}

unint64_t sub_268519544()
{
  result = qword_2802834F0;
  if (!qword_2802834F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834F0);
  }

  return result;
}

unint64_t sub_26851959C()
{
  result = qword_2802834F8;
  if (!qword_2802834F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return sub_268569140();
}

uint64_t sub_268519660()
{
  v1 = sub_268567450();
  v2 = OUTLINED_FUNCTION_0_17(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - v14;
  __swift_allocate_value_buffer(v13, qword_28028B3E0);
  __swift_project_value_buffer(v0, qword_28028B3E0);
  sub_2685673F0();
  sub_268567400();
  sub_268567410();
  v16 = *(v4 + 8);
  v16(v9, v0);
  v16(v12, v0);
  sub_268567420();
  sub_268567410();
  v16(v12, v0);
  return (v16)(v15, v0);
}

uint64_t sub_2685197EC()
{
  v1 = sub_268567450();
  v2 = OUTLINED_FUNCTION_0_17(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v7, qword_28028B3F8);
  __swift_project_value_buffer(v0, qword_28028B3F8);
  if (qword_280282978 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_28028B3E0);
  (*(v4 + 16))(v9, v10, v0);
  sub_268567440();
  return (*(v4 + 8))(v9, v0);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_268519940(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268519980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2685199D0()
{
  OUTLINED_FUNCTION_41();
  v0 = sub_2685689F0();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  objc_allocWithZone(MEMORY[0x277CBEBD0]);
  if (!sub_26851BB5C(0xD00000000000001BLL, 0x8000000268571320))
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_38(v0, qword_28028B348);
    (*(v3 + 16))(v8);
    v9 = sub_2685689E0();
    v10 = sub_268568DE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_4();
      v12 = OUTLINED_FUNCTION_51();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2684EABEC(0xD00000000000001BLL, 0x8000000268571320, &v15);
      OUTLINED_FUNCTION_11_1(&dword_2684CA000, v13, v14, "AnnouncementEventStore init |Unable to get an instance of UserDefaults with suite %s");
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_3_2();
    }

    (*(v3 + 8))(v8, v0);
  }

  OUTLINED_FUNCTION_40();
}

void sub_268519BA8()
{
  OUTLINED_FUNCTION_41();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v49 = sub_2685675E0();
  v9 = OUTLINED_FUNCTION_1(v49);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_5();
  v48 = v15 - v14;
  v16 = sub_2685689F0();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_13();
  sub_26851A5F8();
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v50 = v0;
  v51 = v19;
  v47 = v16;
  v24 = sub_26851BA54(v8);
  v2 = v25;

  OUTLINED_FUNCTION_3_14();

  v26 = OUTLINED_FUNCTION_23_4();

  v46 = v23;
  [v4 setInteger:v23 forKey:v26];

  v27 = sub_268567570();
  v45 = v24;
  v52[0] = v24;
  v52[1] = v2;

  v28 = OUTLINED_FUNCTION_6_15();
  MEMORY[0x26D61BDA0](v28);

  v29 = OUTLINED_FUNCTION_23_4();

  [v4 setObject:v27 forKey:v29];

  if (v8 < 0)
  {
    v19 = v0;
    v0 = v51;
    v1 = v11;
    if (v8)
    {
      goto LABEL_8;
    }

    sub_26851A5F8();
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    v34 = sub_268568B10();
    [v4 setInteger:v33 forKey:v34];

    v35 = sub_268567570();
    v36 = sub_268568B10();
    OUTLINED_FUNCTION_25_3(v36);
  }

  else
  {
    v30 = sub_268567570();
    OUTLINED_FUNCTION_5_15();
    v31 = sub_268568B10();
    OUTLINED_FUNCTION_25_3(v31);

    sub_26851ADB4();
  }

  v19 = v50;
  v0 = v51;
  v1 = v11;
LABEL_8:
  if (qword_280282960 != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v47, qword_28028B348);
  (*(v0 + 16))(v19);
  (*(v1 + 16))(v48, v6, v49);
  v37 = sub_2685689E0();
  v38 = sub_268568DC0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_51();
    v52[0] = swift_slowAlloc();
    *v39 = 136315650;
    v40 = sub_2684EABEC(v45, v2, v52);

    *(v39 + 4) = v40;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v46;
    *(v39 + 22) = 2080;
    sub_2685036B0();
    v41 = sub_2685691A0();
    v43 = v42;
    (*(v1 + 8))(v48, v49);
    v44 = sub_2684EABEC(v41, v43, v52);

    *(v39 + 24) = v44;
    _os_log_impl(&dword_2684CA000, v37, v38, "AnnouncementEventStore storeUsage | Storing Event '%s' in the store with usageCount '%ld', lastUsageDate: %s", v39, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3_2();

    (*(v51 + 8))(v50, v47);
  }

  else
  {

    (*(v1 + 8))(v48, v49);
    (*(v0 + 8))(v19, v47);
  }

  OUTLINED_FUNCTION_40();
}

void sub_26851A040()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v71 = v2;
  v3 = sub_2685689F0();
  v4 = OUTLINED_FUNCTION_1(v3);
  v70 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_5();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v64 - v16;
  v18 = sub_2685675E0();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_5();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v69 = v28;
  v29 = sub_268568B10();
  v30 = [v1 objectForKey_];

  if (v30)
  {
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  OUTLINED_FUNCTION_21_4();
  if (v31)
  {
    v32 = v13;
    v33 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v17, v33 ^ 1u, 1, v18);
    v34 = v3;
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      v35 = v69;
      v68 = *(v21 + 32);
      v68(v69, v17, v18);
      v36 = v70;
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_38(v34, qword_28028B348);
      (*(v36 + 16))(v32);
      (*(v21 + 16))(v26, v35, v18);
      v37 = sub_2685689E0();
      v38 = sub_268568DC0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_36_1();
        v67 = v21 + 32;
        v40 = v39;
        v66 = swift_slowAlloc();
        v74[0] = v66;
        *v40 = 136315394;
        v41 = OUTLINED_FUNCTION_5_15();
        *(v40 + 4) = sub_2684EABEC(v41, v42, v43);
        *(v40 + 12) = 2080;
        sub_2685036B0();
        v44 = sub_2685691A0();
        v65 = v32;
        v46 = v45;
        (*(v21 + 8))(v26, v18);
        v47 = sub_2684EABEC(v44, v46, v74);

        *(v40 + 14) = v47;
        _os_log_impl(&dword_2684CA000, v37, v38, "AnnouncementEventStore getDateOfLastHint | Read lastUsageTimestamp for %s: %s", v40, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();

        (*(v36 + 8))(v65, v34);
      }

      else
      {

        (*(v21 + 8))(v26, v18);
        (*(v36 + 8))(v32, v34);
      }

      v62 = (v68)(v71, v69, v18);
      v63 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684D199C(v74, &qword_280282BE0, &unk_26856D8C0);
    OUTLINED_FUNCTION_31_4();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v18);
    v34 = v3;
  }

  sub_2684D199C(v17, &qword_280282D40, &qword_26856B330);
  v51 = v70;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v34, qword_28028B348);
  (*(v51 + 16))(v10);
  v52 = sub_2685689E0();
  v53 = sub_268568DC0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_4();
    v55 = OUTLINED_FUNCTION_51();
    v74[0] = v55;
    *v54 = 136315138;
    v56 = OUTLINED_FUNCTION_5_15();
    *(v54 + 4) = sub_2684EABEC(v56, v57, v58);
    _os_log_impl(&dword_2684CA000, v52, v53, "AnnouncementEventStore getDateOfLastHint | No lastUsageTimestamp for event %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();
  }

  v59 = *(v51 + 8);
  v60 = OUTLINED_FUNCTION_34_1();
  v62 = v61(v60);
  v63 = 1;
LABEL_18:
  OUTLINED_FUNCTION_24_5(v62, v63);
  OUTLINED_FUNCTION_40();
}

void sub_26851A5F8()
{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_27_3();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v0 integerForKey_];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v2, qword_28028B348);
  v6 = OUTLINED_FUNCTION_7_17();
  v7(v6);
  v8 = sub_2685689E0();
  v9 = sub_268568DC0();
  if (OUTLINED_FUNCTION_26_3(v9))
  {
    OUTLINED_FUNCTION_36_1();
    v10 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v10);
    OUTLINED_FUNCTION_17_8(4.8151e-34);

    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_11_9();
  }

  v16 = OUTLINED_FUNCTION_19_5();
  v17(v16);
  OUTLINED_FUNCTION_40();
}

void sub_26851A778()
{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_27_3();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  v6 = [v0 BOOLForKey_];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v2, qword_28028B348);
  v7 = OUTLINED_FUNCTION_7_17();
  v8(v7);
  v9 = sub_2685689E0();
  v10 = sub_268568DC0();
  if (OUTLINED_FUNCTION_26_3(v10))
  {
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v12);
    v13 = OUTLINED_FUNCTION_17_8(4.8151e-34);

    *(v11 + 4) = v13;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6;
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v14, v15, v16, v17, v18, 0x12u);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_11_9();
  }

  v19 = OUTLINED_FUNCTION_19_5();
  v20(v19);
  OUTLINED_FUNCTION_40();
}

void sub_26851A90C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v4 = sub_2685689F0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35[-v15];
  v17 = v1;
  if (v1 || (v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]), (v17 = sub_26851BB5C(0xD00000000000001CLL, 0x80000002685730C0)) != 0))
  {
    v19 = v1;
    v20 = sub_268568B10();
    v21 = [v17 objectForKey_];

    if (v21)
    {
      sub_268568F30();

      swift_unknownObjectRelease();
    }

    else
    {

      memset(v35, 0, sizeof(v35));
    }

    OUTLINED_FUNCTION_21_4();
    if (v22)
    {
      v23 = sub_2685675E0();
      v24 = swift_dynamicCast() ^ 1;
      v25 = v16;
      v26 = 1;
      v27 = v23;
    }

    else
    {
      sub_2684D199C(&v36, &qword_280282BE0, &unk_26856D8C0);
      sub_2685675E0();
      OUTLINED_FUNCTION_31_4();
    }

    __swift_storeEnumTagSinglePayload(v25, v24, v26, v27);
    sub_26851BBC0(v16, v3);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_38(v4, qword_28028B348);
    (*(v7 + 16))(v12);
    v28 = sub_2685689E0();
    v29 = sub_268568DD0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2684CA000, v28, v29, "Couldn't open suite com.apple.assistant.backedup", v30, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v7 + 8))(v12, v4);
    sub_2685675E0();
    OUTLINED_FUNCTION_31_4();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_26851AC18(void *a1)
{
  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    v4 = sub_268568B10();
    v5 = [a1 BOOLForKey_];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_2684D199C(v10, &qword_280282BE0, &unk_26856D8C0);
  return v6;
}

uint64_t sub_26851AD20(void *a1)
{
  v2 = sub_268568B10();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    sub_268568B20();
  }

  return OUTLINED_FUNCTION_34_1();
}

void sub_26851ADB4()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v5 = v4;
  v6 = sub_2685689F0();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_13();
  v12 = sub_26851BA54(v5);
  v14 = v13;
  v24 = v13;

  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v3 setInteger:0 forKey:{v1, v12, v24}];

  v15 = OUTLINED_FUNCTION_6_15();
  MEMORY[0x26D61BDA0](v15);

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v3 setURL:0 forKey:{v1, v12, v14}];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v6, qword_28028B348);
  (*(v9 + 16))(v0);
  v16 = sub_2685689E0();
  v17 = sub_268568DC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_4();
    v19 = OUTLINED_FUNCTION_51();
    v23 = v19;
    *v18 = 136315138;
    v20 = sub_2684EABEC(v12, v14, &v23);

    *(v18 + 4) = v20;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v21, v22, "AnnouncementEventStore resetUsage | Reset Event '%s' in the store setting date of occurence to nil and the usage count to 0");
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v9 + 8))(v0, v6);
  OUTLINED_FUNCTION_40();
}

void sub_26851AFCC()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v65 = v4;
  v66 = sub_2685689F0();
  v5 = OUTLINED_FUNCTION_1(v66);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v63 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v60 - v17;
  v19 = sub_2685675E0();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_5();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v62 = v29;
  v30 = sub_26851BA54(v3);
  v32 = v31;
  v64 = v30;
  *&v67 = v30;
  *(&v67 + 1) = v31;

  v33 = OUTLINED_FUNCTION_6_15();
  MEMORY[0x26D61BDA0](v33);

  v34 = sub_268568B10();

  v35 = [v1 objectForKey_];

  if (v35)
  {
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  OUTLINED_FUNCTION_21_4();
  if (v36)
  {
    v37 = swift_dynamicCast();
    OUTLINED_FUNCTION_24_5(v37, v37 ^ 1);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      v38 = v62;
      v61 = *(v22 + 32);
      v61(v62, v18, v19);
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_38(v66, qword_28028B348);
      v39 = v63;
      (*(v7 + 16))(v63);
      (*(v22 + 16))(v27, v38, v19);
      v40 = sub_2685689E0();
      v41 = sub_268568DC0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_36_1();
        v60[1] = v22 + 32;
        v43 = v42;
        v60[0] = swift_slowAlloc();
        v69[0] = v60[0];
        *v43 = 136315394;
        v44 = sub_2684EABEC(v64, v32, v69);

        *(v43 + 4) = v44;
        *(v43 + 12) = 2080;
        sub_2685036B0();
        v45 = sub_2685691A0();
        v47 = v46;
        (*(v22 + 8))(v27, v19);
        v48 = sub_2684EABEC(v45, v47, v69);

        *(v43 + 14) = v48;
        _os_log_impl(&dword_2684CA000, v40, v41, "AnnouncementEventStore getLastUsageDate | Read lastUsageTimestamp for event %s: %s", v43, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2();
        v38 = v62;
        OUTLINED_FUNCTION_2();

        (*(v7 + 8))(v63, v66);
      }

      else
      {

        (*(v22 + 8))(v27, v19);
        (*(v7 + 8))(v39, v66);
      }

      v58 = (v61)(v65, v38, v19);
      v59 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684D199C(v69, &qword_280282BE0, &unk_26856D8C0);
    OUTLINED_FUNCTION_31_4();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v19);
  }

  sub_2684D199C(v18, &qword_280282D40, &qword_26856B330);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v52 = v66;
  OUTLINED_FUNCTION_38(v66, qword_28028B348);
  (*(v7 + 16))(v12);
  v53 = sub_2685689E0();
  v54 = sub_268568DC0();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = OUTLINED_FUNCTION_4();
    v56 = OUTLINED_FUNCTION_51();
    v69[0] = v56;
    *v55 = 136315138;
    v57 = sub_2684EABEC(v64, v32, v69);

    *(v55 + 4) = v57;
    _os_log_impl(&dword_2684CA000, v53, v54, "AnnouncementEventStore getLastUsageDate | No lastUsageTimestamp for event %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();
  }

  v58 = (*(v7 + 8))(v12, v52);
  v59 = 1;
LABEL_18:
  OUTLINED_FUNCTION_24_5(v58, v59);
  OUTLINED_FUNCTION_40();
}

void sub_26851B5B4()
{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_27_3();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v0 integerForKey_];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v2, qword_28028B348);
  v6 = OUTLINED_FUNCTION_7_17();
  v7(v6);
  v8 = sub_2685689E0();
  v9 = sub_268568DC0();
  if (OUTLINED_FUNCTION_26_3(v9))
  {
    OUTLINED_FUNCTION_36_1();
    v10 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v10);
    OUTLINED_FUNCTION_17_8(4.8151e-34);

    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_11_9();
  }

  v16 = OUTLINED_FUNCTION_19_5();
  v17(v16);
  OUTLINED_FUNCTION_40();
}

void sub_26851B738()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v4 = sub_2685689F0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v12 = v11 - v10;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v4, qword_28028B348);
  (*(v7 + 16))(v12);
  v13 = sub_2685689E0();
  v14 = sub_268568DC0();
  if (os_log_type_enabled(v13, v14))
  {
    v29 = v1;
    v15 = OUTLINED_FUNCTION_4();
    v16 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v16);
    *v15 = 136315138;
    v17 = sub_26851BA54(v3);
    v19 = v18;
    v20 = sub_2684EABEC(v17, v18, v30);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2684CA000, v13, v14, "AnnouncementEventStore setDisabled | Disabling event '%s'", v15, 0xCu);
    OUTLINED_FUNCTION_9_13();
    v1 = v29;
    OUTLINED_FUNCTION_2();

    v21 = *(v7 + 8);
    v22 = OUTLINED_FUNCTION_34_1();
    v23(v22);
  }

  else
  {

    v24 = *(v7 + 8);
    v25 = OUTLINED_FUNCTION_34_1();
    v26(v25);
    v17 = sub_26851BA54(v3);
    v19 = v27;
  }

  v30[0] = v17;
  v30[1] = v19;

  OUTLINED_FUNCTION_16_8();

  v28 = OUTLINED_FUNCTION_23_4();

  [v1 setBool:1 forKey:v28];

  OUTLINED_FUNCTION_40();
}

unint64_t sub_26851B948(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000002DLL;
      break;
    case 6:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26851BA1C(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

unint64_t sub_26851BA54(char a1)
{
  result = 0xD00000000000001ALL;
  if (a1 < 0)
  {
    if (a1)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = 0xD000000000000029;
        break;
      case 2:
        result = 0xD000000000000023;
        break;
      case 3:
        result = 0xD000000000000022;
        break;
      case 4:
        result = 0xD000000000000025;
        break;
      case 5:
        result = 0xD00000000000002DLL;
        break;
      case 6:
        result = 0xD00000000000002CLL;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_26851BB5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_268568B10();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}