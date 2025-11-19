uint64_t sub_267CE5F0C(void *a1)
{
  v3 = *(*(v1 + 56) + 136);
  sub_267B9AFEC(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService, v9);

  sub_267C3911C(a1, 1);
  sub_267C3A088();
  sub_267B9F98C(v9, &qword_280229508, &unk_267EFD960);
  sub_267EF3B18();
  v4 = [a1 typeName];
  sub_267EF9028();
  OUTLINED_FUNCTION_73_3();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;

  v6 = a1;
  v9[0] = 1;
  sub_267EF3B08();
  v7 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24));
  OUTLINED_FUNCTION_53_0();
  sub_267EF3848();
}

uint64_t sub_267CE6084(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  sub_267EF7C38();
  sub_267C7A584();
  sub_267EF7C08();
  sub_267EF3AD8();
  v5 = *(a3 + 16);
  return sub_267EF3AB8();
}

uint64_t sub_267CE60E4(void *a1, void *a2)
{
  v5 = [a1 outgoingMessageType];
  if (v5 != [a2 outgoingMessageType])
  {
    v6 = *(v2 + 56);
    v7 = sub_267BCEA0C(a1);
    v8 = sub_267EF4CF8();
    sub_267CE7418(7, v6, v7, v8, &off_2878D64C0);

    OUTLINED_FUNCTION_92_2();
    sub_267CE6314(v9, v10, v11);
  }

  v12 = sub_267ED9A2C(a1);
  v14 = v13;
  v15 = sub_267ED9A2C(a2);
  if (!v14)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v16)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v12 == v15 && v14 == v16)
  {

    goto LABEL_15;
  }

  v18 = sub_267EF9EA8();

  if ((v18 & 1) == 0)
  {
LABEL_13:
    v19 = *(v2 + 56);
    v20 = sub_267BCEA0C(a1);
    v21 = sub_267EF4CF8();
    sub_267CE7418(6, v19, v20, v21, &off_2878D64C0);

    OUTLINED_FUNCTION_92_2();
    sub_267CE6314(v22, v23, v24);
  }

LABEL_15:
  v25 = sub_267BCEA0C(a1);
  result = sub_267BCEA0C(a2);
  if (v25)
  {
    if (result)
    {
      v27 = sub_267DF0FF0(v25, result);

      if (v27)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  else if (!result)
  {
    return result;
  }

LABEL_22:
  v28 = *(v2 + 56);
  v29 = sub_267BCEA0C(a1);
  v30 = sub_267EF4CF8();
  sub_267CE7418(5, v28, v29, v30, &off_2878D64C0);

  OUTLINED_FUNCTION_92_2();

  return sub_267CE6314(v31, v32, v33);
}

uint64_t sub_267CE6314(int a1, uint64_t a2, void *a3)
{
  v24 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A968, &unk_267F02610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_267EF3D78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  v15 = *(a2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24);
  v23 = v14[4];
  __swift_project_boxed_opaque_existential_0(v14, v15);
  sub_267EF3B18();
  (*(v10 + 104))(v13, *MEMORY[0x277D5BB80], v9);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  sub_267EF9028();

  v18 = *MEMORY[0x277D5B948];
  v19 = sub_267EF3858();
  (*(*(v19 - 8) + 104))(v8, v18, v19);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = v24;
  v21 = a3;
  sub_267EF3AE8();
  sub_267EF3848();
}

uint64_t sub_267CE658C(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  sub_267EF7C38();
  sub_267C7A584();
  sub_267EF7C08();
  sub_267EF3AD8();
  sub_267C7C28C(a3);
  return sub_267EF3AC8();
}

uint64_t sub_267CE65E8()
{
  sub_267B9EF80(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName + 8);

  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor));
}

uint64_t sub_267CE66D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CE6778;

  return sub_267CDE89C();
}

uint64_t sub_267CE6778()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  OUTLINED_FUNCTION_4_3();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_267CE6864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_267CE6934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return (sub_267CB71B8)(a1, a2, a3);
}

uint64_t sub_267CE6A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_267CE6AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendMessageRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267CE6BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return sub_267CE00DC(a1, a2, a3, a4);
}

uint64_t sub_267CE6D4C(uint64_t a1)
{
  result = sub_267CE855C(&qword_28022A960, type metadata accessor for SendMessageRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267CE6DA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v45 = a5;
  sub_267EDB728(v44);
  v6 = v44[1];
  v7 = v44[3];
  v8 = v44[4];
  v40 = v44[5];
  v41 = v44[0];
  v9 = (v44[2] + 64) >> 6;

  v38 = v9;
  v39 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v41 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v41 + 56) + 8 * v12);
      v43[0] = *v13;
      v43[1] = v14;
      v43[2] = v15;

      v40(v42, v43);

      v17 = v42[0];
      v16 = v42[1];
      v18 = v42[2];
      v19 = *v45;
      v21 = sub_267BA9948();
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (*(v19 + 24) >= v22 + v23)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A978, &unk_267F0AC90);
          sub_267EF9C78();
        }
      }

      else
      {
        v25 = v45;
        sub_267CFA760();
        v26 = *v25;
        v27 = sub_267BA9948();
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_23;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v45;
      if (v24)
      {
        v30 = *(v29[7] + 8 * v21);

        v31 = v29[7];
        v32 = *(v31 + 8 * v21);
        *(v31 + 8 * v21) = v30;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v33 = (v29[6] + 16 * v21);
        *v33 = v17;
        v33[1] = v16;
        *(v29[7] + 8 * v21) = v18;
        v34 = v29[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_22;
        }

        v29[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v9 = v38;
      v6 = v39;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_267C095D8();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267CE7058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v46 = a5;
  sub_267EDB728(v45);
  v6 = v45[1];
  v7 = v45[3];
  v8 = v45[4];
  v41 = v45[5];
  v42 = v45[0];
  v9 = (v45[2] + 64) >> 6;

  v39 = v9;
  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v42 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v42 + 56) + 8 * v12);
      v44[0] = *v13;
      v44[1] = v14;
      v44[2] = v15;

      v41(v43, v44);

      v16 = v43[0];
      v17 = v43[1];
      v18 = v43[2];
      v19 = *v46;
      v21 = sub_267BA9948();
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (*(v19 + 24) >= v22 + v23)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A970, &unk_267F02620);
          sub_267EF9C78();
        }
      }

      else
      {
        v25 = v46;
        sub_267CFA774();
        v26 = *v25;
        v27 = sub_267BA9948();
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_23;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v46;
      if (v24)
      {
        v30 = *(v29[7] + 8 * v21);

        v31 = sub_267ECED10(v18, v30);

        v32 = v29[7];
        v33 = *(v32 + 8 * v21);
        *(v32 + 8 * v21) = v31;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v34 = (v29[6] + 16 * v21);
        *v34 = v16;
        v34[1] = v17;
        *(v29[7] + 8 * v21) = v18;
        v35 = v29[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_22;
        }

        v29[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_267C095D8();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267CE7314(uint64_t a1, void *a2)
{
  sub_267BA9F38(0, &qword_280229BA8, 0x277CEF4B0);
  v3 = sub_267EF92D8();
  v4 = [a2 formatSpeechTokensWithAutoPunctuation_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_267EF92F8();

  return v5;
}

uint64_t sub_267CE73B4(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267CE7418(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = sub_267EF8E58();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_267EF8EA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &type metadata for Features;
  v31 = sub_267BAFCAC();
  LOBYTE(aBlock[0]) = 0;
  v18 = sub_267EF5128();
  result = __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v18)
  {
    v20 = AFIsCustomerInstall();
    if (!v20 || (result = sub_267D6350C(v20, 0.0, 1.0), v21 < 0.01))
    {
      if (qword_280228800 != -1)
      {
        swift_once();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = a3;
      *(v22 + 24) = a2;
      *(v22 + 32) = a1;
      v23 = v26;
      *(v22 + 40) = a4;
      *(v22 + 48) = v23;
      v31 = sub_267CE7768;
      v32 = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_267C16DE4;
      v30 = &block_descriptor_9;
      v24 = _Block_copy(aBlock);

      sub_267EF8E78();
      v28 = MEMORY[0x277D84F90];
      sub_267CE855C(&qword_280229180, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229188, qword_267F0DFB0);
      sub_267CE7778();
      sub_267EF99C8();
      MEMORY[0x26D609320](0, v17, v12, v24);
      _Block_release(v24);
      (*(v27 + 8))(v12, v9);
      (*(v14 + 8))(v17, v13);
    }
  }

  return result;
}

unint64_t sub_267CE7778()
{
  result = qword_280229190;
  if (!qword_280229190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229188, qword_267F0DFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229190);
  }

  return result;
}

uint64_t sub_267CE785C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_267CE78A0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v110 = sub_267EF8A08();
  v106 = *(v110 - 8);
  v10 = v106[8];
  MEMORY[0x28223BE20](v110);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267EF2E38();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a4 dictationAutoPunctuationSupportedLocales];
  v18 = sub_267EF94B8();

  v109 = a3;
  v112[0] = sub_267EF2D48();
  v112[1] = v19;
  sub_267EF9AE8();
  LOBYTE(v17) = sub_267EE9388(v113, v18);

  sub_267C965CC(v113);
  if ((v17 & 1) == 0)
  {
    if (qword_280228818 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

  if (([a4 dictationAutoPunctuationEnabled] & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v110, qword_280240FB0);
    v48 = sub_267EF89F8();
    v49 = sub_267EF95C8();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_36;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "#AutoPunctuationUtils user preference for auto-punctuation is disabled, not applying auto-punctuation";
    goto LABEL_35;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v110, qword_280240FB0);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_267B93000, v21, v22, "#AutoPunctuationUtils getting messageContent AFSpeechTokens for auto-punctuation", v23, 2u);
    MEMORY[0x26D60A7B0](v23, -1, -1);
  }

  v12 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v12);
  v25 = v24[58](a1, v12, v24);
  if (!v25)
  {
    v48 = sub_267EF89F8();
    v49 = sub_267EF95D8();
    if (!os_log_type_enabled(v48, v49))
    {
LABEL_36:

      return 0;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "#AutoPunctuationUtils did not generate messageContentSpeechTokens, not applying auto-punctuation";
LABEL_35:
    _os_log_impl(&dword_267B93000, v48, v49, v51, v50, 2u);
    MEMORY[0x26D60A7B0](v50, -1, -1);
    goto LABEL_36;
  }

  v26 = v25;
  v27 = sub_267BAF0DC(v25);
  v28 = MEMORY[0x277D84F90];
  v105 = v20;
  v111 = v26;
  if (v27)
  {
    v16 = v27;
    v104 = a5;
    v113[0] = MEMORY[0x277D84F90];
    sub_267BC7934(0, v27 & ~(v27 >> 63), 0);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v29 = 0;
      v28 = v113[0];
      v30 = v26 & 0xC000000000000001;
      v108 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_71;
        }

        if (v30)
        {
          v32 = MEMORY[0x26D609870](v29, v26);
        }

        else
        {
          if (v29 >= *(v108 + 16))
          {
            goto LABEL_72;
          }

          v32 = *(v26 + 8 * v29 + 32);
        }

        v33 = v32;
        result = sub_267CE73B4(v32);
        if (!v35)
        {
          break;
        }

        v12 = result;
        v36 = v35;

        v113[0] = v28;
        v38 = *(v28 + 16);
        v37 = *(v28 + 24);
        v13 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          sub_267BC7934((v37 > 1), v38 + 1, 1);
          v28 = v113[0];
        }

        *(v28 + 16) = v13;
        v39 = v28 + 16 * v38;
        *(v39 + 32) = v12;
        *(v39 + 40) = v36;
        ++v29;
        v26 = v111;
        if (v31 == v16)
        {
          a5 = v104;
          v20 = v105;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_29:

  v52 = sub_267EF89F8();
  v16 = sub_267EF95D8();

  if (os_log_type_enabled(v52, v16))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v113[0] = v54;
    *v53 = 136642819;
    v55 = MEMORY[0x26D608FD0](v28, MEMORY[0x277D837D0]);
    v57 = sub_267BA33E8(v55, v56, v113);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_267B93000, v52, v16, "#AutoPunctuationUtils pre-ITN messageContent token.text list is %{sensitive}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x26D60A7B0](v54, -1, -1);
    v58 = v53;
    v20 = v105;
    MEMORY[0x26D60A7B0](v58, -1, -1);
  }

  sub_267BA9F38(0, &qword_28022A998, 0x277CDCE88);
  v59 = sub_267EF2D48();
  v24 = sub_267CDE0EC(v59, v60, 3);
  if (a5)
  {
    v12 = a5;
    goto LABEL_40;
  }

  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v62)
  {
    v63 = result;
    v16 = v62;
    sub_267EF3838();
    v64 = v107;
    (v106[2])(v107, v20, v110);
    sub_267B9AFEC(v113, v112);
    v65 = type metadata accessor for MessagesSELFPerformanceLogger();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();

    MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(102, v63, v16, v64, v112);
    v68 = [objc_allocWithZone(MEMORY[0x277CFE3D0]) initWithAssetConfig_];

    __swift_destroy_boxed_opaque_existential_0(v113);

    if (!v68)
    {

      v101 = sub_267EF89F8();
      v102 = sub_267EF95C8();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_267B93000, v101, v102, "#AutoPunctuationUtils could not create CESRFormatter, not applying auto-punctuation", v103, 2u);
        MEMORY[0x26D60A7B0](v103, -1, -1);
      }

      goto LABEL_67;
    }

    v12 = v68;
LABEL_40:
    v69 = a5;

    result = sub_267CE7314(v26, v12);
    if (!result)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v70 = result;
    v71 = sub_267BAF0DC(result);
    v107 = v12;
    v108 = v70;
    if (v71)
    {
      v72 = v71;
      v106 = v24;
      v113[0] = MEMORY[0x277D84F90];
      sub_267BC7934(0, v71 & ~(v71 >> 63), 0);
      if (v72 < 0)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v73 = 0;
      v13 = v113[0];
      v74 = v108;
      v109 = v108 & 0xFFFFFFFFFFFFFF8;
      v110 = v108 & 0xC000000000000001;
      v75 = v72;
      while (1)
      {
        v76 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v110)
        {
          v77 = MEMORY[0x26D609870](v73, v74);
        }

        else
        {
          if (v73 >= *(v109 + 16))
          {
            goto LABEL_73;
          }

          v77 = *(v74 + 8 * v73 + 32);
        }

        v78 = v77;
        result = sub_267CE73B4(v77);
        if (!v79)
        {
          goto LABEL_79;
        }

        v80 = result;
        v81 = v79;

        v113[0] = v13;
        v16 = *(v13 + 16);
        v82 = *(v13 + 24);
        v12 = (v16 + 1);
        if (v16 >= v82 >> 1)
        {
          sub_267BC7934((v82 > 1), v16 + 1, 1);
          v74 = v108;
          v13 = v113[0];
        }

        *(v13 + 16) = v12;
        v83 = v13 + 16 * v16;
        *(v83 + 32) = v80;
        *(v83 + 40) = v81;
        ++v73;
        if (v76 == v75)
        {

          v24 = v106;
          goto LABEL_55;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
LABEL_22:
      __swift_project_value_buffer(v110, qword_280240FB0);
      (*(v13 + 16))(v16, v109, v12);
      v40 = sub_267EF89F8();
      v41 = sub_267EF95D8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v113[0] = v43;
        *v42 = 136315138;
        sub_267CE855C(&qword_28022A990, MEMORY[0x277CC9788]);
        v44 = sub_267EF9E58();
        v46 = v45;
        (*(v13 + 8))(v16, v12);
        v47 = sub_267BA33E8(v44, v46, v113);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_267B93000, v40, v41, "#AutoPunctuationUtils unsupported for %s, not applying auto-punctuation", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x26D60A7B0](v43, -1, -1);
        MEMORY[0x26D60A7B0](v42, -1, -1);
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }

      return 0;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_55:

    v84 = sub_267EF89F8();
    v85 = sub_267EF95D8();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v113[0] = v87;
      *v86 = 136642819;
      v88 = MEMORY[0x26D608FD0](v13, MEMORY[0x277D837D0]);
      v90 = sub_267BA33E8(v88, v89, v113);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_267B93000, v84, v85, "#AutoPunctuationUtils auto punctuated messageContent punctuatedTextList list is %{sensitive}s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x26D60A7B0](v87, -1, -1);
      MEMORY[0x26D60A7B0](v86, -1, -1);
    }

    v91 = sub_267DF11D4(v13, v28);

    if ((v91 & 1) == 0)
    {
      sub_267CDE168(v108);
      v12 = v95;
      v97 = v96;

      v113[0] = v12;
      v113[1] = v97;
      if (qword_2802287D0 == -1)
      {
LABEL_62:
        v98 = sub_267EF2728();
        __swift_project_value_buffer(v98, qword_280240EC0);
        sub_267BB5034();
        sub_267EF9908();
        v100 = v99;

        if ((v100 & 1) == 0)
        {
          return v12;
        }

        return 0;
      }

LABEL_77:
      swift_once();
      goto LABEL_62;
    }

    v92 = sub_267EF89F8();
    v93 = sub_267EF95D8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_267B93000, v92, v93, "#AutoPunctuationUtils punctuatedTextList == textList, no auto-punctuation was applied, ignoring", v94, 2u);
      MEMORY[0x26D60A7B0](v94, -1, -1);
    }

LABEL_67:
    return 0;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_267CE855C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267CE85E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CE8668()
{
  OUTLINED_FUNCTION_60_5();
  v16 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_37_7(v2);
  *(v3 + 16) = xmmword_267EFC020;
  v4 = OUTLINED_FUNCTION_55_7(v3, 0x65707954706974);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v6);
  if (v7)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_3_25(v12);
  OUTLINED_FUNCTION_16_14();

  return v14();
}

uint64_t sub_267CE87B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_267CE8904()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CE8988()
{
  OUTLINED_FUNCTION_60_5();
  v16 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_37_7(v2);
  v4 = OUTLINED_FUNCTION_4_8(v3, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v6);
  if (v7)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_3_25(v12);
  OUTLINED_FUNCTION_16_14();

  return v14();
}

uint64_t sub_267CE8AC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CE8B48()
{
  OUTLINED_FUNCTION_60_5();
  v16 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_37_7(v2);
  v4 = OUTLINED_FUNCTION_4_8(v3, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v6);
  if (v7)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_3_25(v12);
  OUTLINED_FUNCTION_16_14();

  return v14();
}

uint64_t sub_267CE8C84()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CE8D08()
{
  OUTLINED_FUNCTION_60_5();
  v16 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_37_7(v2);
  v4 = OUTLINED_FUNCTION_4_8(v3, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v6);
  if (v7)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_3_25(v12);
  OUTLINED_FUNCTION_16_14();

  return v14();
}

uint64_t sub_267CE8E44()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_267CE8F68()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_17();
  v4 = v0[8];

  return v3();
}

uint64_t sub_267CE8FF0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v0[5] = v2;
  OUTLINED_FUNCTION_4_8(v2, xmmword_267EFC020);
  v3 = 0;
  if (v1)
  {
    v3 = sub_267EF77C8();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v4 = *MEMORY[0x277D55BF0];
  v5 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_22_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267CE90F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267CE920C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_267CE9268()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9318()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE93C8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE94A0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9550()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9600()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE96B0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9760()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9810()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CE9894()
{
  OUTLINED_FUNCTION_60_5();
  v16 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_37_7(v2);
  *(v3 + 16) = xmmword_267EFC020;
  v4 = OUTLINED_FUNCTION_55_7(v3, 0x73736572646461);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v6);
  if (v7)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_3_25(v12);
  OUTLINED_FUNCTION_16_14();

  return v14();
}

uint64_t sub_267CE99E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_32_11(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_58_4(v12, v13, v14);
}

uint64_t sub_267CE9A5C()
{
  OUTLINED_FUNCTION_113();
  v31 = v4;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_53_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = swift_allocObject();
  *(v2 + 72) = v5;
  *(v5 + 32) = 0x747865547369;
  *(v5 + 40) = 0xE600000000000000;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v3;
  *(v5 + 16) = xmmword_267F02660;
  OUTLINED_FUNCTION_12_1();
  v7[9] = v6;
  v7[10] = 17;
  v7[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A580, &unk_267F00E90);
  *(v5 + 96) = v1;
  *(v5 + 120) = v9;
  *(v5 + 128) = 0x746E756F63;
  *(v5 + 136) = 0xE500000000000000;
  if (v0)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  else
  {
    v11 = *(v2 + 32);
    v10 = MEMORY[0x277D839F8];
  }

  OUTLINED_FUNCTION_25_13(v10);
  *(v5 + 240) = v12;
  OUTLINED_FUNCTION_12_1();
  *(v5 + 264) = v6;
  *(v5 + 272) = 19;
  *(v5 + 280) = v13;
  if (v14)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v16 = *(v2 + 40);
    v15 = MEMORY[0x277D839F8];
  }

  v17 = OUTLINED_FUNCTION_38_11(v15);
  sub_267BB16A4(v17, v1, &unk_28022AE30, &qword_267EFC0B0);
  v18 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v18);
  v19 = *(v2 + 64);
  OUTLINED_FUNCTION_56_7();
  if (v20)
  {

    sub_267B9FF34(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v5 + 336) = 0u;
    *(v5 + 352) = 0u;
  }

  else
  {
    *(v5 + 360) = v0;
    __swift_allocate_boxed_opaque_existential_0((v5 + 336));
    OUTLINED_FUNCTION_18_0();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_26_3();
    v23();
  }

  v24 = *(v2 + 101);
  *(v5 + 368) = 27;
  *(v5 + 376) = 0x8000000267F16170;
  *(v5 + 408) = v6;
  *(v5 + 384) = v24;
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 80) = v25;
  *v25 = v26;
  v25[1] = sub_267CE9CC4;
  v27 = *(v2 + 56);
  v28 = *(v2 + 16);
  OUTLINED_FUNCTION_21_10();

  return v29();
}

uint64_t sub_267CE9CC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_267CE9DE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_32_11(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_58_4(v12, v13, v14);
}

uint64_t sub_267CE9E60()
{
  OUTLINED_FUNCTION_113();
  v34 = v4;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_53_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = swift_allocObject();
  *(v2 + 72) = v5;
  v6 = OUTLINED_FUNCTION_55_7(v5, 0x696A6F6D457369);
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 16) = v8;
  OUTLINED_FUNCTION_12_1();
  v9[9] = v7;
  v9[10] = 19;
  v9[11] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A580, &unk_267F00E90);
  *(v5 + 96) = v1;
  OUTLINED_FUNCTION_12_1();
  *(v5 + 120) = v11;
  *(v5 + 128) = 28;
  *(v5 + 136) = v12;
  if (v0)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  else
  {
    v14 = *(v2 + 32);
    v13 = MEMORY[0x277D839F8];
  }

  OUTLINED_FUNCTION_25_13(v13);
  *(v5 + 240) = v15;
  OUTLINED_FUNCTION_12_1();
  *(v5 + 264) = v7;
  *(v5 + 272) = 19;
  *(v5 + 280) = v16;
  if (v17)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v19 = *(v2 + 40);
    v18 = MEMORY[0x277D839F8];
  }

  v20 = OUTLINED_FUNCTION_38_11(v18);
  sub_267BB16A4(v20, v1, &unk_28022AE30, &qword_267EFC0B0);
  v21 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v21);
  v22 = *(v2 + 64);
  OUTLINED_FUNCTION_56_7();
  if (v23)
  {

    sub_267B9FF34(v22, &unk_28022AE30, &qword_267EFC0B0);
    *(v5 + 336) = 0u;
    *(v5 + 352) = 0u;
  }

  else
  {
    *(v5 + 360) = v0;
    __swift_allocate_boxed_opaque_existential_0((v5 + 336));
    OUTLINED_FUNCTION_18_0();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_26_3();
    v26();
  }

  v27 = *(v2 + 101);
  *(v5 + 368) = 20;
  *(v5 + 376) = 0x8000000267F16100;
  *(v5 + 408) = v7;
  *(v5 + 384) = v27;
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 80) = v28;
  *v28 = v29;
  v28[1] = sub_267CEA0C4;
  v30 = *(v2 + 56);
  v31 = *(v2 + 16);
  OUTLINED_FUNCTION_21_10();

  return v32();
}

uint64_t sub_267CEA0C4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_267CEA1E8()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_17();
  v4 = v0[11];

  return v3();
}

uint64_t sub_267CEA24C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 128) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CEA30C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 104) = v3;
  *(v3 + 16) = xmmword_267EFCDC0;
  *(v3 + 32) = 1701869940;
  *(v3 + 40) = 0xE400000000000000;
  OUTLINED_FUNCTION_48_11(v3, v4, &unk_28022AE30, &qword_267EFC0B0);
  v5 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v5) == 1)
  {
    sub_267B9FF34(*(v0 + 96), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_26_3();
    v8();
  }

  v9 = *(v0 + 128);
  *(v3 + 80) = 0x746E756F63;
  *(v3 + 88) = 0xE500000000000000;
  if (v9)
  {
    OUTLINED_FUNCTION_44_11();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v10 = MEMORY[0x277D839F8];
  }

  v12 = *(v0 + 88);
  v13 = *(v0 + 40);
  *(v3 + 96) = v11;
  *(v3 + 120) = v10;
  *(v3 + 128) = 0xD000000000000012;
  *(v3 + 136) = 0x8000000267F16020;
  sub_267BB16A4(v13, v12, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 88), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_18_0();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_26_3();
    v16();
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 48);
  OUTLINED_FUNCTION_12_1();
  *(v3 + 176) = 0xD000000000000011;
  *(v3 + 184) = v19;
  sub_267BB16A4(v20, v17, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 80), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 192));
    OUTLINED_FUNCTION_18_0();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_26_3();
    v23();
  }

  v24 = *(v0 + 72);
  v25 = *(v0 + 56);
  OUTLINED_FUNCTION_12_1();
  *(v3 + 224) = 0xD000000000000015;
  *(v3 + 232) = v26;
  sub_267BB16A4(v27, v24, &unk_28022AE30, &qword_267EFC0B0);
  v28 = OUTLINED_FUNCTION_23_11();
  v29 = *(v0 + 72);
  if (v28 == 1)
  {
    sub_267B9FF34(*(v0 + 72), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
  }

  else
  {
    *(v3 + 264) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 240));
    OUTLINED_FUNCTION_18_0();
    v31 = *(v30 + 32);
    OUTLINED_FUNCTION_26_3();
    v32();
  }

  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 112) = v33;
  *v33 = v34;
  v33[1] = sub_267CEA690;
  v35 = *(v0 + 64);
  v36 = *(v0 + 16);
  OUTLINED_FUNCTION_30_2();

  return v41(v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_267CEA690()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[12];
    v12 = v3[13];
    v15 = v3[10];
    v14 = v3[11];
    v16 = v3[9];

    OUTLINED_FUNCTION_1();

    return v17();
  }
}

uint64_t sub_267CEA7E0()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  OUTLINED_FUNCTION_17();
  v7 = v0[15];

  return v6();
}

uint64_t sub_267CEA86C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CEA8F0()
{
  OUTLINED_FUNCTION_60_5();
  v16 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_37_7(v2);
  v4 = OUTLINED_FUNCTION_51_7(v3, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v6);
  if (v7)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_3_25(v12);
  OUTLINED_FUNCTION_16_14();

  return v14();
}

uint64_t sub_267CEAA50()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v0[5] = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 0x6D754E656E6F6870;
  *(v2 + 40) = 0xEB00000000726562;
  v3 = 0;
  if (v1)
  {
    v3 = sub_267EF74E8();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *MEMORY[0x277D55BF0];
  v5 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_22_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267CEAB70()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267CEAC8C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEAD3C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 0x7265646E6573;
  *(v2 + 40) = 0xE600000000000000;
  if (a1)
  {
    v3 = sub_267EF77C8();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v3;

  sub_267EF78C8();
}

uint64_t sub_267CEAE1C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEAE34()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_55_7(v2, 0x657369636E6F63);
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55BF0];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_1_5(v4);
  *(v0 + 32) = v2;
  *(v2 + 16) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_34_1(v6);

  return v10(v8, 0xD00000000000002BLL);
}

uint64_t sub_267CEAF34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267CEB050(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 56) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEB070()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_267EFCE30;
  *(v4 + 32) = 0x796C706572;
  *(v4 + 40) = 0xE500000000000000;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 1735290732;
  *(v4 + 88) = 0xE400000000000000;
  *(v4 + 96) = v2;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0x657369636E6F63;
  *(v4 + 136) = 0xE700000000000000;
  *(v4 + 168) = v5;
  *(v4 + 144) = v1;
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_34_1(v6);
  OUTLINED_FUNCTION_30_2();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267CEB1B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267CEB2D4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEB384()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEB434()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEB4E4(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEB500()
{
  OUTLINED_FUNCTION_60_5();
  v12 = v1;
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_52_5();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_267EFCC90;
  *(v4 + 32) = 0x7461657065527369;
  *(v4 + 40) = 0xE800000000000000;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x7369636E6F437369;
  *(v4 + 88) = 0xE900000000000065;
  *(v4 + 120) = v5;
  *(v4 + 96) = v2;
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_34_1(v7);

  return v11(v9, 0xD00000000000002CLL);
}

uint64_t sub_267CEB630()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CEB6B4()
{
  OUTLINED_FUNCTION_60_5();
  v16 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = OUTLINED_FUNCTION_37_7(v2);
  v4 = OUTLINED_FUNCTION_51_7(v3, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v6);
  if (v7)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_3_25(v12);
  OUTLINED_FUNCTION_16_14();

  return v14();
}

uint64_t sub_267CEB7F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEB80C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_52_5();
  v4 = OUTLINED_FUNCTION_37_7(v3);
  *(v4 + 16) = xmmword_267EFCC90;
  strcpy((v4 + 32), "messageCount");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  if (v2)
  {
    OUTLINED_FUNCTION_44_11();
    v1[7] = 0;
    v1[8] = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 32);
  v1[6] = v6;
  v1[9] = v5;
  v1[10] = 7368801;
  v1[11] = 0xE300000000000000;
  v8 = 0;
  if (v7)
  {
    v8 = sub_267EF7958();
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v7;
  v1[15] = v8;
  v9 = *MEMORY[0x277D55BF0];
  v10 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_22_12();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_27_2(v12);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_267CEB95C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267CEBAA0()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CEBB28()
{
  OUTLINED_FUNCTION_113();
  v18 = v3;
  OUTLINED_FUNCTION_29();
  v4 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = OUTLINED_FUNCTION_52_5();
  v2[7] = v5;
  OUTLINED_FUNCTION_16(v5, xmmword_267EFCC90);
  if (v4)
  {
    type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_50_10(v6);
  sub_267BB16A4(v7, v1, &unk_28022AE30, &qword_267EFC0B0);
  v8 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v8);
  v9 = v2[6];
  OUTLINED_FUNCTION_56_7();
  if (v10)
  {

    sub_267B9FF34(v9, &unk_28022AE30, &qword_267EFC0B0);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_0((v5 + 96));
    OUTLINED_FUNCTION_18_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_26_3();
    v13();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v2[8] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_27_2(v14);
  OUTLINED_FUNCTION_21_10();

  return v16();
}

uint64_t sub_267CEBCC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_267CEBDE4()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_17();
  v4 = v0[9];

  return v3();
}

uint64_t sub_267CEBE6C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  v0[5] = v2;
  OUTLINED_FUNCTION_16(v2, xmmword_267EFC020);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v4 = *MEMORY[0x277D55BF0];
  v5 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_22_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267CEBF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEBF84()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_52_5();
  v0[6] = v2;
  OUTLINED_FUNCTION_16(v2, xmmword_267EFCC90);
  if (v1)
  {
    v3 = type metadata accessor for MessagesApp(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[4];
  v6 = OUTLINED_FUNCTION_42_10(v3, v4);
  if (v5)
  {
    v6 = sub_267EF77C8();
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v2[6].n128_u64[0] = v5;
  v2[7].n128_u64[1] = v6;
  v7 = *MEMORY[0x277D55BF0];
  v8 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_22_12();

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_14_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_27_2(v10);
  OUTLINED_FUNCTION_49_10();

  return v12();
}

uint64_t sub_267CEC0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEC0D8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_52_5();
  v0[6] = v2;
  OUTLINED_FUNCTION_16(v2, xmmword_267EFCC90);
  if (v1)
  {
    v3 = type metadata accessor for MessagesApp(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[4];
  v6 = OUTLINED_FUNCTION_42_10(v3, v4);
  if (v5)
  {
    v6 = sub_267EF77C8();
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v2[6].n128_u64[0] = v5;
  v2[7].n128_u64[1] = v6;
  v7 = *MEMORY[0x277D55BF0];
  v8 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_22_12();

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_14_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_27_2(v10);
  OUTLINED_FUNCTION_49_10();

  return v12();
}

uint64_t sub_267CEC214()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267CEC330()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_267CEC38C()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CEC414()
{
  OUTLINED_FUNCTION_113();
  v18 = v3;
  OUTLINED_FUNCTION_29();
  v4 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = OUTLINED_FUNCTION_52_5();
  v2[7] = v5;
  OUTLINED_FUNCTION_16(v5, xmmword_267EFCC90);
  if (v4)
  {
    type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_50_10(v6);
  sub_267BB16A4(v7, v1, &unk_28022AE30, &qword_267EFC0B0);
  v8 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v8);
  v9 = v2[6];
  OUTLINED_FUNCTION_56_7();
  if (v10)
  {

    sub_267B9FF34(v9, &unk_28022AE30, &qword_267EFC0B0);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_0((v5 + 96));
    OUTLINED_FUNCTION_18_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_26_3();
    v13();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v2[8] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_27_2(v14);
  OUTLINED_FUNCTION_21_10();

  return v16();
}

uint64_t sub_267CEC5AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

void sub_267CEC714()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for EditMessageFlow.State(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v46 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = v19 - v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  (*(v14 + 16))(v20, v3, v12);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v45 = v1;
    v43 = v26;
    v48 = v26;
    *v25 = 136315138;
    sub_267CEFF68(&qword_28022AF50, MEMORY[0x277D5C118]);
    v27 = sub_267EF9E58();
    v29 = v28;
    (*(v14 + 8))(v20, v12);
    v30 = sub_267BA33E8(v27, v29, &v48);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_267B93000, v22, v23, "#EditMessageFlow received input %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v1 = v45;
    OUTLINED_FUNCTION_32_0();
    v11 = v44;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v14 + 8))(v20, v12);
  }

  v31 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  sub_267CEFA40(v1 + v31, v11, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_28();
  sub_267CEFD8C();
  if (EnumCaseMultiPayload != 4)
  {

    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136315138;
      OUTLINED_FUNCTION_3_26();
      sub_267CEFA40(v38 + v31, v46, v39);
      v40 = sub_267EF9098();
      v42 = sub_267BA33E8(v40, v41, &v47);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_267B93000, v34, v35, "#EditMessageFlow input received in state %s, ignoring", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267CECB04()
{
  OUTLINED_FUNCTION_12();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA40, &qword_267F028D8);
  v1[16] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[17] = v4;
  v6 = *(v5 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_30_0(v7);
  v1[21] = v8;
  v1[22] = *(v9 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v10 = type metadata accessor for EditMessageFlow.State(0);
  v1[26] = v10;
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CECC84, 0, 0);
}

uint64_t sub_267CECC84()
{
  v91 = v1;
  v2 = v1[28];
  v3 = v1[26];
  v4 = v1[15];
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  sub_267CEFA40(v4 + v5, v2, v6);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_267C1B4DC(v1[28], v1[23]);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v54 = sub_267EF8A08();
      v55 = OUTLINED_FUNCTION_13_8(v54, qword_280240FB0);
      v56 = sub_267EF95C8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v57);
        _os_log_impl(&dword_267B93000, v55, v56, "#EditMessageFlow ready to start", v0, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v58 = v1[23];
      v60 = v1[14];
      v59 = v1[15];

      sub_267CEE4B0();
      goto LABEL_21;
    case 2u:
      v11 = v1[15];
      sub_267C1B4DC(v1[28], v1[24]);
      v12 = v11[5];
      v13 = v11[6];
      __swift_project_boxed_opaque_existential_0(v11 + 2, v12);
      (*(v13 + 8))(v12, v13);
      v14 = v1[6];
      __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
      LOBYTE(v11) = sub_267EF3C58();
      __swift_destroy_boxed_opaque_existential_0(v1 + 2);
      if (v11)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v15 = sub_267EF8A08();
        v16 = OUTLINED_FUNCTION_13_8(v15, qword_280240FB0);
        v17 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v17))
        {
          v18 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v18);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v19, v20, "#EditMessageFlow pushing PostPersonalDomainActivityNotificationFlow");
          OUTLINED_FUNCTION_32_0();
        }

        v21 = v1[24];
        v22 = v1[25];
        v24 = v1[21];
        v23 = v1[22];
        v25 = v1[14];
        v26 = v1[15];

        v27 = sub_267EF33A8();
        OUTLINED_FUNCTION_97(v27);
        v1[13] = sub_267EF3388();
        OUTLINED_FUNCTION_0_22();
        sub_267CEFA40(v21, v22, v28);
        v29 = (*(v24 + 80) + 24) & ~*(v24 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = v26;
        sub_267C1B4DC(v22, v30 + v29);
        v31 = swift_allocObject();
        *(v31 + 16) = sub_267CEFEE0;
        *(v31 + 24) = v30;

        sub_267EF3FC8();

        OUTLINED_FUNCTION_9_24();
        sub_267CEFD8C();

LABEL_37:
        OUTLINED_FUNCTION_19_11();

        OUTLINED_FUNCTION_17();

        return v87();
      }

      else
      {
        v72 = v1[26];
        v73 = v1[27];
        v74 = v1[24];
        OUTLINED_FUNCTION_0_22();
        sub_267CEFA40(v75, v73, v76);
        OUTLINED_FUNCTION_66();
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_267CEF8DC(v73, v4 + v5);
        swift_endAccess();
        v77 = swift_task_alloc();
        v1[29] = v77;
        *v77 = v1;
        v77[1] = sub_267CED434;
        v78 = v1[14];
        v79 = v1[15];

        return sub_267CECB04(v78);
      }

    case 3u:
      (*(v1[17] + 32))(v1[20], v1[28], v1[16]);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v32 = sub_267EF8A08();
      v33 = OUTLINED_FUNCTION_13_8(v32, qword_280240FB0);
      v34 = sub_267EF95C8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_32();
        *v35 = 0;
        _os_log_impl(&dword_267B93000, v33, v34, "#EditMessageFlow RCH completed", v35, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v37 = v1[19];
      v36 = v1[20];
      v38 = v1[16];
      v39 = v1[17];

      v40 = *(v39 + 16);
      v40(v37, v36, v38);
      v41 = sub_267EF89F8();
      v42 = sub_267EF95D8();
      v43 = OUTLINED_FUNCTION_10_2(v42);
      v44 = v1[19];
      if (v43)
      {
        v89 = v33;
        v45 = v1[17];
        v46 = v1[18];
        v47 = v1[16];
        v48 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v90 = v88;
        *v48 = 136315138;
        v40(v46, v44, v47);
        v49 = sub_267EF9098();
        v51 = v50;
        v52 = *(v45 + 8);
        v52(v44, v47);
        v53 = sub_267BA33E8(v49, v51, &v90);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_267B93000, v41, v89, "#EditMessageFlow RCH completed with result: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
        v81 = v1[16];
        v82 = v1[17];

        v52 = *(v82 + 8);
        v52(v44, v81);
      }

      v83 = v1[20];
      v84 = v1[16];
      v85 = v1[14];
      sub_267EF4018();
      v86 = OUTLINED_FUNCTION_66();
      (v52)(v86);
      goto LABEL_37;
    case 4u:
      v9 = v1[14];
      v10 = v1[15];
      sub_267CEDFF8();
      goto LABEL_37;
    case 5u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v61 = sub_267EF8A08();
      v62 = OUTLINED_FUNCTION_13_8(v61, qword_280240FB0);
      v63 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v63))
      {
        goto LABEL_31;
      }

      v64 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v64);
      v67 = "#EditMessageFlow no context fetched";
      goto LABEL_30;
    case 6u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v68 = sub_267EF8A08();
      v62 = OUTLINED_FUNCTION_13_8(v68, qword_280240FB0);
      v69 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v69))
      {
        goto LABEL_31;
      }

      v70 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v70);
      v67 = "#EditMessageFlow guard flow failed";
LABEL_30:
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v65, v66, v67);
      OUTLINED_FUNCTION_32_0();
LABEL_31:
      v71 = v1[14];

      sub_267EF4018();
      goto LABEL_37;
    default:
      v8 = v1[14];
      v7 = v1[15];
      sub_267C1B4DC(v1[28], v1[25]);
      sub_267CED990();
LABEL_21:
      sub_267CEFD8C();
      goto LABEL_37;
  }
}

uint64_t sub_267CED434()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_267CED520, 0, 0);
}

uint64_t sub_267CED520()
{
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_9_24();
  sub_267CEFD8C();
  OUTLINED_FUNCTION_19_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CED5F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v1[2] = 0xD000000000000011;
  v1[3] = 0x8000000267F11F50;
  v1[4] = 0xD000000000000022;
  v1[5] = 0x8000000267F11F70;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_267CED6F4;

  return sub_267C9BCE8(sub_267C1BEF4, v1);
}

uint64_t sub_267CED6F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v7 = v6;
  v8 = *(v6 + 24);
  v9 = *v3;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v7 + 32) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_267C18EF4, 0, 0);
  }

  else
  {
    v11 = *(v7 + 16);

    v12 = *(v9 + 8);

    return v12(a1, a2);
  }
}

uint64_t sub_267CED854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267CEFA40(a2, v7, type metadata accessor for TimedSentMessageContext);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v7, a1 + v8);
  return swift_endAccess();
}

void sub_267CED990()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v31 = v3;
  v4 = type metadata accessor for TimedSentMessageContext(0);
  v5 = OUTLINED_FUNCTION_30_0(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_267EF3488();
  OUTLINED_FUNCTION_23();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3468();
  v14 = sub_267EF3448();
  v15 = *(v10 + 8);
  v16 = OUTLINED_FUNCTION_66();
  v17(v16);
  sub_267B9AFEC(v0 + 56, v33);
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v2, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  sub_267B9AFEC(v0 + 16, v32);
  *&v33[0] = sub_267CEFB14(v33, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  type metadata accessor for EditMessageRequestSupportCheckFlow();
  sub_267CEFF68(&qword_28022AA50, type metadata accessor for EditMessageRequestSupportCheckFlow);
  v19 = sub_267EF36F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_267F027B0;
  *(v20 + 32) = v14;
  *(v20 + 40) = v19;
  *&v32[0] = v20;
  sub_267B9AFEC(v0 + 56, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  OUTLINED_FUNCTION_28_16();
  type metadata accessor for SmsNLv4Intent();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_267B9AFEC(v0 + 16, v33);
  type metadata accessor for NetworkStatusProvider();
  v21 = OUTLINED_FUNCTION_49();
  *&v33[0] = sub_267CEFC48(v33, v21);
  type metadata accessor for NetworkConnectivityCheckFlow();
  sub_267CEFF68(&qword_28022AA58, type metadata accessor for NetworkConnectivityCheckFlow);
  sub_267EF36F8();

  sub_267C74A48(0, v20);
  if (sub_267BAF0DC(v20) < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = sub_267BAF0DC(v20);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      sub_267CA5F78(v24, 1);
      sub_267C735E0();
LABEL_5:
      v25 = sub_267EF3428();
      OUTLINED_FUNCTION_97(v25);
      *&v33[0] = sub_267EF3418();
      OUTLINED_FUNCTION_0_22();
      sub_267CEFA40(v2, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
      v27 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v0;
      sub_267C1B4DC(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);

      sub_267EF3FC8();

      OUTLINED_FUNCTION_47();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_267CEDD90(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditMessageFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267B93000, v11, v12, "#EditMessageFlow guard flow failed", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v15, v16, "#EditMessageFlow guard flow passed", v17, 2u);
      MEMORY[0x26D60A7B0](v17, -1, -1);
    }

    sub_267CEFA40(a3, v9, type metadata accessor for TimedSentMessageContext);
  }

  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v9, a2 + v18);
  return swift_endAccess();
}

uint64_t sub_267CEDFF8()
{
  v1 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  v3 = OUTLINED_FUNCTION_13_8(v2, qword_280240FB0);
  v4 = sub_267EF95C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    *v5 = 0;
    _os_log_impl(&dword_267B93000, v3, v4, "#EditMessageFlow pushing FetchMessageContextFlow", v5, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267B9AFEC(v1 + 56, v10);
  sub_267B9AFEC(v1 + 16, v9);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  swift_unknownObjectRetain();
  *&v10[0] = sub_267CEF940(v10, v9, v6, v7);
  type metadata accessor for FetchMessageContextFlow(0);
  sub_267CEFF68(&qword_28022AA48, type metadata accessor for FetchMessageContextFlow);

  sub_267EF3FC8();
}

uint64_t sub_267CEE188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimedSentMessageContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessageContextFlowResult = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(0);
  v13 = *(*(MessageContextFlowResult - 8) + 64);
  MEMORY[0x28223BE20](MessageContextFlowResult - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267CEFA40(a1, v15, type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult);
  if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_267B93000, v17, v18, "#EditMessageFlow no context fetched", v19, 2u);
      MEMORY[0x26D60A7B0](v19, -1, -1);
    }
  }

  else
  {
    sub_267C1B4DC(v15, v11);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_267B93000, v21, v22, "#EditMessageFlow context fetched", v23, 2u);
      MEMORY[0x26D60A7B0](v23, -1, -1);
    }

    sub_267C1B4DC(v11, v7);
  }

  swift_storeEnumTagMultiPayload();
  v24 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v7, a2 + v24);
  return swift_endAccess();
}

void sub_267CEE4B0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267EF7B88();
  v12 = OUTLINED_FUNCTION_18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = type metadata accessor for TimedSentMessageContext(0);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  type metadata accessor for EditMessageState();
  swift_allocObject();
  v22 = sub_267DA7284();
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v3, v21, v23);
  sub_267B9AFEC((v0 + 2), v52);
  v24 = qword_2802286F0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  type metadata accessor for EditMessageCATs();
  sub_267EF7B68();
  v25 = sub_267EF78E8();
  v26 = type metadata accessor for CommonTemplateProvider();
  v51[3] = v26;
  v51[4] = &off_2878D2530;
  v51[0] = OUTLINED_FUNCTION_49();
  v27 = type metadata accessor for EditMessageRCHFlowStrategy();
  v28 = OUTLINED_FUNCTION_97(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v26);
  OUTLINED_FUNCTION_23();
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v34 = (v33 - v32);
  (*(v35 + 16))(v33 - v32);
  v36 = *v34;
  v37 = (v28 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_commonTemplateProvider);
  v37[3] = v26;
  v37[4] = &off_2878D2530;
  *v37 = v36;
  sub_267C1B4DC(v21, v28 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext);
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs) = v25;
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState) = v22;
  sub_267B9A5E8(v52, v28 + 16);
  __swift_destroy_boxed_opaque_existential_0(v51);
  sub_267CEEA7C();
  v38 = *__swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  sub_267E2F218();
  v39 = v1[10];
  v40 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v39);
  (*(v40 + 8))(v39, v40);
  LOBYTE(v39) = sub_267EF3528();
  (*(v49 + 8))(v10, v50);
  if (v39)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v41 = sub_267EF8A08();
    v42 = OUTLINED_FUNCTION_13_8(v41, qword_280240FB0);
    v43 = sub_267EF95C8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_32();
      *v44 = 0;
      _os_log_impl(&dword_267B93000, v42, v43, "#EditMessageFlow pushing RCHFlow", v44, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF3FD8();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = sub_267EF8A08();
    v46 = OUTLINED_FUNCTION_13_8(v45, qword_280240FB0);
    v47 = sub_267EF95E8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_32();
      *v48 = 0;
      _os_log_impl(&dword_267B93000, v46, v47, "#EditMessageFlow RCHFlow.on() returned false", v48, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267CEE974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA40, &qword_267F028D8);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v7, a2 + v9);
  return swift_endAccess();
}

void sub_267CEEA7C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v47 = v2;
  v4 = v3;
  v5 = type metadata accessor for TimedSentMessageContext(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA10, &qword_267F028C0);
  OUTLINED_FUNCTION_23();
  v49 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v48 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
  sub_267BA9F38(0, &qword_28022A9F8, 0x277CD3BC8);
  sub_267EF36C8();
  v20 = *(v4 + *(v6 + 32));
  sub_267EF3568();
  OUTLINED_FUNCTION_17_13();
  sub_267EF3648();
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v4, v10, v21);
  *&v50 = v1;
  sub_267B9AFEC(v1 + 16, v62);
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  sub_267B9AFEC(qword_2802405A0, v60);
  sub_267EF8668();
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v58 = &type metadata for CATProvider;
  v59 = &off_2878CE7A0;
  v55 = &type metadata for MessagesFeatureFlagsImpl;
  v56 = off_2878D1228;
  v22 = type metadata accessor for EditMessageNeedsValueFlowStrategy();
  v23 = OUTLINED_FUNCTION_97(v22);
  __swift_mutable_project_boxed_opaque_existential_1(v57, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v54, &type metadata for MessagesFeatureFlagsImpl);
  v24 = v23 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider;
  *(v24 + 24) = &type metadata for CATProvider;
  *(v24 + 32) = &off_2878CE7A0;
  v25 = v23 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags;
  *(v25 + 24) = &type metadata for MessagesFeatureFlagsImpl;
  *(v25 + 32) = off_2878D1228;
  sub_267C1B4DC(v10, v23 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sentMessageContext);
  v26 = v47;
  *(v23 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_editMessageState) = v47;
  OUTLINED_FUNCTION_24_8(OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sharedContextService);
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v60);
  v62[0] = v23;
  sub_267CEFF68(&qword_28022AA18, type metadata accessor for EditMessageNeedsValueFlowStrategy);
  OUTLINED_FUNCTION_14_20();
  sub_267EF3548();

  OUTLINED_FUNCTION_17_13();
  sub_267EF3628();
  v27 = v50;
  sub_267CEF124(v26, v4);
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_17_13();
  sub_267EF3658();
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v4, v10, v28);
  sub_267B9AFEC(v27 + 16, v62);
  v50 = *(v27 + 136);
  sub_267B9AFEC(qword_2802405A0, v60);
  v29 = type metadata accessor for CommonTemplateProvider();
  v30 = OUTLINED_FUNCTION_49();
  swift_unknownObjectRetain();
  sub_267EF8668();
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v58 = &type metadata for CATProvider;
  v59 = &off_2878CE7A0;
  v56 = &off_2878D2530;
  v55 = v29;
  v54[0] = v30;
  v52 = &type metadata for MessagesFeatureFlagsImpl;
  v53 = off_2878D1228;
  v31 = type metadata accessor for EditMessageHandleIntentFlowStrategy();
  v32 = OUTLINED_FUNCTION_97(v31);
  __swift_mutable_project_boxed_opaque_existential_1(v57, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v54, v29);
  OUTLINED_FUNCTION_23();
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_0();
  v38 = (v37 - v36);
  (*(v39 + 16))(v37 - v36);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v40 = *v38;
  v41 = v32 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider;
  *(v41 + 24) = &type metadata for CATProvider;
  *(v41 + 32) = &off_2878CE7A0;
  v42 = (v32 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_commonTemplateProvider);
  v42[3] = v29;
  v42[4] = &off_2878D2530;
  *v42 = v40;
  v43 = v32 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags;
  *(v43 + 24) = &type metadata for MessagesFeatureFlagsImpl;
  *(v43 + 32) = off_2878D1228;
  sub_267C1B4DC(v10, v32 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext);
  *(v32 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_editMessageState) = v26;
  *(v32 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextProvider) = v50;
  OUTLINED_FUNCTION_24_8(OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextService);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v60);
  v62[0] = v32;
  sub_267CEFF68(&qword_28022AA20, type metadata accessor for EditMessageHandleIntentFlowStrategy);
  OUTLINED_FUNCTION_14_20();
  sub_267EF3558();

  OUTLINED_FUNCTION_17_13();
  sub_267EF3638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA28, &qword_267F028C8);
  v62[0] = OUTLINED_FUNCTION_49();
  sub_267CEF870();
  OUTLINED_FUNCTION_14_20();
  sub_267EF3598();

  OUTLINED_FUNCTION_17_13();
  sub_267EF3668();
  v44 = v49;
  (*(v49 + 16))(v48, v19, v11);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA38, &qword_267F028D0);
  OUTLINED_FUNCTION_97(v45);
  sub_267EF36D8();
  (*(v44 + 8))(v19, v11);
  OUTLINED_FUNCTION_47();
}

uint64_t (*sub_267CEF124(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_28_16();
  v6 = type metadata accessor for TimedSentMessageContext(v5);
  v7 = OUTLINED_FUNCTION_30_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(a2, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  sub_267C1B4DC(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  return OUTLINED_FUNCTION_8_23();
}

uint64_t sub_267CEF22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TimedSentMessageContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v13 = sub_267EF4648();
  v14 = sub_267EF4668();
  v15 = sub_267EF4638();
  sub_267CEFA40(a4, v12, type metadata accessor for TimedSentMessageContext);
  sub_267B9AFEC(a5 + 16, v22);
  v16 = type metadata accessor for EditMessageConfirmIntentFlow(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v22[0] = sub_267D73C7C(a1, v13, v14, v15, a3, v12, v22);
  sub_267CEFF68(&qword_28022AA08, type metadata accessor for EditMessageConfirmIntentFlow);

  v19 = sub_267EF36F8();

  return v19;
}

uint64_t sub_267CEF3DC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_28();
  return sub_267CEFD8C();
}

uint64_t *sub_267CEF41C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_28();
  sub_267CEFD8C();
  return v0;
}

uint64_t sub_267CEF468()
{
  sub_267CEF41C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267CEF4E8()
{
  result = type metadata accessor for EditMessageFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_267CEF5B8()
{
  type metadata accessor for TimedSentMessageContext(319);
  if (v0 <= 0x3F)
  {
    sub_267CEF630();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267CEF630()
{
  if (!qword_28022A9E8)
  {
    sub_267BA9F38(255, &qword_28022A9F0, 0x277CD3BC0);
    sub_267BA9F38(255, &qword_28022A9F8, 0x277CD3BC8);
    v0 = sub_267EF3E08();
    if (!v1)
    {
      atomic_store(v0, &qword_28022A9E8);
    }
  }
}

uint64_t sub_267CEF6B8()
{
  v1 = *v0;
  sub_267CEC714();
  return v2 & 1;
}

uint64_t sub_267CEF6F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267CECB04();
}

uint64_t sub_267CEF78C()
{
  type metadata accessor for EditMessageFlow(0);

  return sub_267EF3748();
}

uint64_t sub_267CEF7C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_30_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *(v2 + 16);

  return sub_267CEF22C(a1, a2, v12, v2 + v10, v11);
}

unint64_t sub_267CEF870()
{
  result = qword_28022AA30;
  if (!qword_28022AA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AA28, &qword_267F028C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA30);
  }

  return result;
}

uint64_t sub_267CEF8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CEF940(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = &type metadata for CATProvider;
  v17[4] = &off_2878CE7A0;
  MessageContextFlow = type metadata accessor for FetchMessageContextFlow(0);
  v9 = *(MessageContextFlow + 48);
  v10 = *(MessageContextFlow + 52);
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v17, &type metadata for CATProvider);
  v12 = v11 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider;
  *(v12 + 24) = &type metadata for CATProvider;
  *(v12 + 32) = &off_2878CE7A0;
  v13 = OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue;
  v14 = type metadata accessor for TimedSentMessageContext(0);
  __swift_storeEnumTagSinglePayload(v11 + v13, 1, 1, v14);
  sub_267B9A5E8(a1, v11 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent);
  v15 = (v11 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_sharedContextProvider);
  *v15 = a3;
  v15[1] = a4;
  sub_267B9A5E8(a2, v11 + 16);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v11;
}

uint64_t sub_267CEFA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267CEFAA0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = type metadata accessor for NetworkStatusProvider();
  *(a3 + 96) = &off_2878D2ED0;
  *(a3 + 64) = a2;
  *(a3 + 128) = &type metadata for CATProvider;
  *(a3 + 136) = &off_2878CE7A0;
  *(a3 + 56) = 1;
  sub_267B9A5E8(a1, a3 + 16);
  return a3;
}

uint64_t sub_267CEFB14(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v12[3] = &type metadata for CATProvider;
  v12[4] = &off_2878CE7A0;
  v6 = type metadata accessor for EditMessageRequestSupportCheckFlow();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for CATProvider);
  v10 = v9 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_catProvider;
  *(v10 + 24) = &type metadata for CATProvider;
  *(v10 + 32) = &off_2878CE7A0;
  *(v9 + 56) = 1;
  sub_267B9A5E8(a1, v9 + 64);
  sub_267C1B4DC(a2, v9 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_sentMessageContext);
  sub_267B9A5E8(a3, v9 + 16);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t sub_267CEFBDC()
{
  v2 = OUTLINED_FUNCTION_28_16();
  v3 = type metadata accessor for TimedSentMessageContext(v2);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_267CEDD90(v0, v5, v6);
}

uint64_t sub_267CEFC48(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkStatusProvider();
  v16[3] = v4;
  v16[4] = &off_2878D2ED0;
  v16[0] = a2;
  v14 = &type metadata for CATProvider;
  v15 = &off_2878CE7A0;
  type metadata accessor for NetworkConnectivityCheckFlow();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v16, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v11 = sub_267CEFAA0(a1, *v9, v5);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v11;
}

uint64_t sub_267CEFD8C()
{
  v1 = OUTLINED_FUNCTION_28_16();
  v3 = v2(v1);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t objectdestroy_10Tm()
{
  v2 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_27_10(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = sub_267EF2CC8();
  OUTLINED_FUNCTION_22(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = *(v1 + v5 + v0[8]);

  v12 = *(v1 + v5 + v0[11]);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_267CEFEE0()
{
  v1 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_267CED854(v3, v4);
}

uint64_t sub_267CEFF40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_267CEFF68(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_267CEFFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF8428();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  sub_267BA9F38(0, &unk_28022BC90, 0x277D5C220);
  (*(v7 + 104))(v12, *MEMORY[0x277D5D700], v4);
  sub_267EF8418();
  (*(v7 + 8))(v12, v4);
  v13 = sub_267BEA93C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA78, &unk_267F08660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v15 = MEMORY[0x277D837D0];
  sub_267EF9AE8();
  *(inited + 96) = v15;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v16 = sub_267EF8F28();
  sub_267BEA9B0(v16, v13);
  return v13;
}

uint64_t sub_267CF0184(void *a1, char a2)
{
  v4 = sub_267EF4B68();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_0_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_267B93000, v7, v8, "We're doing handle disambiguation, making handle disambiguation header item", v9, 2u);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  sub_267EF3A58();
  v10 = [a1 displayName];
  sub_267EF9028();

  sub_267EF39D8();

  v11 = sub_267EF3A38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267EFCA40;
  *(v12 + 32) = v11;

  INPerson.displayImage(isDeviceLocked:)(a2 & 1);
  v13 = sub_267EF3928();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_267EF38B8();

  return v16;
}

uint64_t sub_267CF0394(void *a1, void *a2)
{
  v4 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  if ((sub_267EE9580(2u, a2) & 1) == 0)
  {
    sub_267EF3A58();
    v5 = [a1 displayName];
    sub_267EF9028();

    sub_267EF39D8();

    sub_267EF3A38();

    v7 = MEMORY[0x26D608F90](v6);
    OUTLINED_FUNCTION_5_28(v7, v8, v9, v10, v11, v12, v13, v14, v36, v37);
    if (v16)
    {
      OUTLINED_FUNCTION_8_2(v15);
      sub_267EF9328();
    }

    sub_267EF9368();
    v4 = v37;
  }

  v17 = [a1 personHandle];
  if (v17)
  {
    v18 = v17;
    sub_267BC2AF0(v17);
    if (v19)
    {
      v20 = [v18 type];
      sub_267EE9580(4u, a2);
      sub_267CF05F0(v20);

      v22 = MEMORY[0x26D608F90](v21);
      OUTLINED_FUNCTION_5_28(v22, v23, v24, v25, v26, v27, v28, v29, v36, v37);
      if (v16)
      {
        OUTLINED_FUNCTION_8_2(v30);
        sub_267EF9328();
      }

      sub_267EF9368();
      v4 = v37;
    }

    if ((sub_267EE9580(2u, a2) & 1) != 0 && (v31 = [v18 label]) != 0)
    {
      v32 = v31;
      v33 = sub_267EE9580(1u, a2);
      sub_267CF09C0(v18, v32, v33 & 1);
      MEMORY[0x26D608F90]();
      v34 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v34 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v34);
        sub_267EF9328();
      }

      sub_267EF9368();
      v4 = v37;
    }

    else
    {
      v32 = v18;
    }
  }

  return v4;
}

uint64_t sub_267CF05F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_267EF79B8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  if (a1 == 2)
  {
    v17 = v14;
    sub_267EF90F8();
    (*(v17 + 16))(v10, v13, v6);
    v18 = sub_267EF74B8();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_267EF7488();
    v21 = sub_267EF74E8();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_267EF74C8();
    sub_267EF7468();
    sub_267EF74D8();

    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      (*(v17 + 32))(v16, v13, v6);
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
      {
        sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
      }
    }

    else
    {
      (*(v17 + 8))(v13, v6);
      (*(v17 + 32))(v16, v5, v6);
    }

    sub_267EF3A58();
    sub_267EF7998();
    sub_267EF39D8();

    sub_267EF79A8();
    sub_267EF3A48();

    sub_267EF79A8();
    sub_267EF3A18();

    sub_267EF3A28();

    sub_267EF39F8();

    v24 = sub_267EF3A38();

    (*(v17 + 8))(v16, v6);
  }

  else
  {
    sub_267EF3A58();
    sub_267EF39D8();
    sub_267EF3A28();

    sub_267EF39F8();

    v24 = sub_267EF3A38();
  }

  return v24;
}

uint64_t sub_267CF09C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  sub_267EF2D48();
  v8 = sub_267EF41A8();
  v10 = v9;

  v18[0] = 11043298;
  v18[1] = 0xA300000000000000;
  MEMORY[0x26D608E60](v8, v10);

  MEMORY[0x26D608E60](11108834, 0xA300000000000000);
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_267BBD44C();
  sub_267EF78A8();
  sub_267EF2D48();
  sub_267EF7858();
  sub_267EF74F8();
  sub_267EF7508();
  v11 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {

    sub_267B9F98C(v7, &unk_28022AE30, &qword_267EFC0B0);
LABEL_9:
    sub_267EF3A58();
    sub_267EF39D8();

    v16 = sub_267EF3A38();
    goto LABEL_10;
  }

  v12 = sub_267EF7998();
  v14 = v13;
  (*(*(v11 - 8) + 8))(v7, v11);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_9;
  }

  sub_267EF3A58();
  sub_267EF39D8();

  sub_267EF3A08();

  sub_267EF3A48();

  sub_267EF3A18();

  v16 = sub_267EF3A38();

LABEL_10:

  return v16;
}

uint64_t sub_267CF0C8C(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v64 = a7;
  v65 = a5;
  v66 = a6;
  v62 = a4;
  v70 = a2;
  v71 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - v10;
  v12 = sub_267EF4CC8();
  v13 = OUTLINED_FUNCTION_58(v12);
  v68 = v14;
  v69 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v67 = v18 - v17;
  v19 = sub_267EF4578();
  v20 = OUTLINED_FUNCTION_58(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v27 = v26 - v25;
  v28 = sub_267EF4228();
  v29 = OUTLINED_FUNCTION_58(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v29);
  v63 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v60 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = (&v60 - v42);
  sub_267C6D464(a1, &v60 - v42);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v72 = *v43;
    v44 = v72;
    v75 = 1;
    v45 = v72;
    v70(&v72);
  }

  else
  {
    v46 = *(v31 + 32);
    v61 = v28;
    v46(v37, v43, v28);
    sub_267EF41E8();
    v47 = sub_267EF4218();
    v48 = sub_267EF4218();
    *&v72 = v47;
    sub_267C9B75C(v48);
    (*(v22 + 104))(v27, *MEMORY[0x277D5BF70], v19);
    v49 = v63;
    sub_267EF41D8();
    v50 = v65[4];
    __swift_project_boxed_opaque_existential_0(v65, v65[3]);
    sub_267EF3BC8();
    v51 = sub_267EF4158();
    OUTLINED_FUNCTION_22(v51);
    (*(v52 + 16))(v11, v64, v51);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v51);
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v53 = v67;
    sub_267EF3F68();
    sub_267B9F98C(&v72, &unk_28022CF80, &unk_267EFED50);
    sub_267B9F98C(v11, &unk_28022AE40, &unk_267EFCB60);
    v54 = v69;
    *(&v73 + 1) = v69;
    v74 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v72);
    v56 = v68;
    (*(v68 + 16))(boxed_opaque_existential_0, v53, v54);
    v75 = 0;
    v70(&v72);
    (*(v56 + 8))(v53, v54);
    v57 = *(v31 + 8);
    v58 = v61;
    v57(v49, v61);
    v57(v37, v58);
  }

  return sub_267B9F98C(&v72, &unk_28022A480, &unk_267F029F0);
}

uint64_t sub_267CF1150(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = sub_267EF79B8();
  v10 = OUTLINED_FUNCTION_58(v34);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  v18 = sub_267EF3988();
  v19 = v18;
  v33 = a5;
  if (*(v18 + 16) && (sub_267BA2E04(v18 + 32, v37), sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90), (swift_dynamicCast() & 1) != 0))
  {
    v20 = *(v19 + 16);

    if (v20 == 1 && (sub_267DEAE28() & 1) != 0)
    {
      v21 = sub_267E2E380(a4 & 1);

      a5 = v33;
      goto LABEL_11;
    }

    a5 = v33;
  }

  else
  {
  }

  if (sub_267E2E664())
  {
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v23 = sub_267DBF878();
    sub_267E2E6C0(v23 & 1);
    v21 = sub_267E2E380(a4 & 1);
  }

  else
  {
    v21 = sub_267EF3938();
  }

LABEL_11:
  v24 = *(v21 + 16);
  if (v24)
  {
    v32 = a6;
    v36 = MEMORY[0x277D84F90];
    sub_267C7220C();
    v25 = v36;
    v26 = (v21 + 40);
    do
    {
      v27 = *v26;
      v37[0] = *(v26 - 1);
      v37[1] = v27;
      swift_bridgeObjectRetain_n();
      MEMORY[0x26D608E60](0xD000000000000013, 0x8000000267F16640);
      sub_267EF7988();

      v29 = *(v36 + 16);
      v28 = *(v36 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v28);
        sub_267C7220C();
      }

      *(v36 + 16) = v29 + 1;
      (*(v12 + 32))(v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v17, v34);
      v26 += 2;
      --v24;
    }

    while (v24);

    a6 = v32;
    a5 = v33;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v30 = swift_allocObject();
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;

  sub_267CB3370(v25);
}

uint64_t sub_267CF14A8(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_267EF4228();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v17 - v14);
  sub_267C6D464(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v15 = *v13;
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    sub_267CF168C(v15);
    (*(v5 + 8))(v8, v4);
  }

  swift_storeEnumTagMultiPayload();
  a2(v15);
  return sub_267B9F98C(v15, &qword_2802295B8, &qword_267EFDCB0);
}

uint64_t sub_267CF168C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA80, &qword_267F029E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = v40 - v4;
  v57 = sub_267EF3F28();
  v61 = *(v57 - 8);
  v5 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v57);
  v55 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = v40 - v8;
  v9 = sub_267EF4378();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v40 - v14;
  v16 = sub_267EF4578();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_267EF41E8();
  v23 = v22;
  v24 = sub_267EF4218();
  v25 = *(v24 + 16);
  if (v25)
  {
    v40[2] = v23;
    v40[3] = v21;
    v41 = v20;
    v42 = v17;
    v43 = v16;
    v44 = a1;
    v62 = v25;
    v63 = MEMORY[0x277D84F90];
    v26 = v24;
    sub_267C7254C();
    v27 = v63;
    v29 = *(v10 + 16);
    v28 = v10 + 16;
    v52 = v29;
    v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v40[1] = v26;
    v51 = v30;
    v31 = v26 + v30;
    v32 = *(v28 + 56);
    v49 = (v61 + 8);
    v50 = v32;
    v47 = (v28 - 8);
    v48 = (v61 + 16);
    v45 = v15;
    v46 = (v28 + 16);
    v53 = v28;
    v33 = v54;
    v34 = v57;
    do
    {
      v60 = v31;
      v61 = v27;
      v52(v33, v31, v9);
      v35 = v55;
      sub_267EF4368();
      sub_267EF3EF8();
      v59 = *v49;
      v59(v35, v34);
      v36 = v56;
      sub_267EF3F08();
      sub_267EF4358();
      (*v48)(v35, v36, v34);
      __swift_storeEnumTagSinglePayload(v58, 1, 1, v34);
      v27 = v61;
      sub_267EF4348();
      v59(v36, v34);
      (*v47)(v33, v9);
      v63 = v27;
      v37 = *(v27 + 16);
      if (v37 >= *(v27 + 24) >> 1)
      {
        sub_267C7254C();
        v27 = v63;
      }

      *(v27 + 16) = v37 + 1;
      v38 = v50;
      (*v46)(v27 + v51 + v37 * v50, v45, v9);
      v31 = v60 + v38;
      --v62;
    }

    while (v62);

    v16 = v43;
    v17 = v42;
    v20 = v41;
  }

  else
  {
  }

  (*(v17 + 104))(v20, *MEMORY[0x277D5BF60], v16);
  return sub_267EF41D8();
}

uint64_t sub_267CF1BD0(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a1;
  sub_267BE58F4(a2, v4 + 32);
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow25DisambiguationListAdapter_authenticationPolicy;
  v8 = sub_267EF43F8();
  OUTLINED_FUNCTION_22(v8);
  (*(v9 + 32))(v4 + v7, a3);
  *(v4 + 16) = a4;
  return v4;
}

uint64_t sub_267CF1C54()
{
  v34 = sub_267EF39C8();
  v1 = OUTLINED_FUNCTION_58(v34);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v9 = *(v0 + 24);
  v10 = sub_267EF3988();
  v11 = 0;
  v12 = *(v10 + 16);
  v32 = v10 + 32;
  v33 = v10;
  for (i = MEMORY[0x277D84F90]; ; (*(v3 + 32))(i + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v8, v34))
  {
    if (v11 == v12)
    {
      v14 = 0;
      v15 = 0uLL;
      v11 = v12;
      v16 = 0uLL;
    }

    else
    {
      if (v11 >= *(v33 + 16))
      {
        goto LABEL_24;
      }

      *&v37[0] = v11;
      sub_267BA2E04(v32 + 32 * v11, v37 + 8);
      v15 = v37[0];
      v16 = v37[1];
      ++v11;
      v14 = v38;
    }

    v39[0] = v15;
    v39[1] = v16;
    v40 = v14;
    if (!v14)
    {

      return i;
    }

    v35 = v15;
    sub_267BA7F4C((v39 + 8), v37);
    v17 = sub_267EF3948();
    if (v17 >> 62)
    {
      v18 = sub_267EF9A68();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 >= v18)
    {
      goto LABEL_25;
    }

    sub_267BA2E04(v37, v36);
    v19 = sub_267EF3948();
    if ((v19 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](v35, v19);
      goto LABEL_14;
    }

    if (v35 < 0)
    {
      break;
    }

    if (v35 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v20 = *(v19 + 8 * v35 + 32);

LABEL_14:

    sub_267EF39A8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = *(i + 16);
      sub_267C71AE0();
      i = v24;
    }

    v22 = *(i + 16);
    v21 = *(i + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v21);
      sub_267C71AE0();
      i = v25;
    }

    __swift_destroy_boxed_opaque_existential_0(v37);
    *(i + 16) = v22 + 1;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v27 = sub_267EF8A08();
  __swift_project_value_buffer(v27, qword_280240FB0);
  v28 = sub_267EF89F8();
  v29 = sub_267EF95E8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_267BA33E8(0xD00000000000004DLL, 0x8000000267F165C0, v36);
    _os_log_impl(&dword_267B93000, v28, v29, "Fatal error: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D60A7B0](v31, -1, -1);
    MEMORY[0x26D60A7B0](v30, -1, -1);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267CF2044()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow25DisambiguationListAdapter_authenticationPolicy;
  v3 = sub_267EF43F8();
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_267CF20AC()
{
  sub_267CF2044();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DisambiguationListAdapter()
{
  result = qword_28022AA68;
  if (!qword_28022AA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267CF2158()
{
  result = sub_267EF43F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationListUtils.ViewOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisambiguationListUtils.ViewOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267CF23D8()
{
  result = qword_28022AA88;
  if (!qword_28022AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA88);
  }

  return result;
}

void sub_267CF242C(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_267EF2BA8();
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267CF2638(v12);
  if (!v2)
  {
    v13 = [a1 filename];
    sub_267EF9028();

    sub_267EF2B08();

    v22 = *(v8 + 8);
    v22(v12, v5);
    v14 = [objc_opt_self() defaultManager];
    sub_267EF2B68();
    v15 = sub_267EF8FF8();

    v16 = [a1 data];
    v17 = sub_267EF2BE8();
    v19 = v18;

    LOBYTE(v16) = sub_267CF2C74(v15, v17, v19, 0, v14);
    if ((v16 & 1) == 0)
    {
      sub_267CF2CF8();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
      v22(a2, v5);
    }
  }
}

id sub_267CF2638@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v27[2] = *MEMORY[0x277D85DE8];
  v1 = sub_267EF2AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267EF2BA8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v26 = objc_opt_self();
  v14 = [v26 defaultManager];
  v15 = [v14 temporaryDirectory];

  sub_267EF2B48();
  strcpy(v27, "SiriMessages");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
  sub_267BB5034();
  sub_267EF2B98();
  (*(v2 + 8))(v5, v1);
  v24 = v7[1];
  v24(v13, v6);
  v16 = v7[4];
  v16(v13, v11, v6);
  v17 = [v26 defaultManager];
  v18 = sub_267EF2AF8();
  v27[0] = 0;
  LOBYTE(v5) = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v27];

  v19 = v27[0];
  if (v5)
  {
    v16(v25, v13, v6);
    result = v19;
  }

  else
  {
    v21 = v27[0];
    sub_267EF2A78();

    swift_willThrow();
    result = (v24)(v13, v6);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_267CF2988@<X0>(uint64_t a1@<X8>)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = sub_267EF2BA8();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  result = sub_267CF2638(v11);
  if (!v1)
  {
    v31 = a1;
    sub_267EF2AE8();
    sub_267EF2B08();

    v30 = v6;
    v32 = *(v6 + 8);
    v33 = v6 + 8;
    v32(v11, v3);
    v15 = objc_opt_self();
    v16 = [v15 defaultManager];
    sub_267EF2B68();
    v17 = sub_267EF8FF8();

    v18 = [v16 fileExistsAtPath_];

    if (v18)
    {
      v19 = [v15 defaultManager];
      v20 = sub_267EF2AF8();
      v34[0] = 0;
      v21 = [v19 removeItemAtURL:v20 error:v34];

      v22 = v34[0];
      if (!v21)
      {
        goto LABEL_7;
      }

      v23 = v34[0];
    }

    v24 = [v15 defaultManager];
    v25 = sub_267EF2AF8();
    v26 = sub_267EF2AF8();
    v34[0] = 0;
    v27 = [v24 copyItemAtURL:v25 toURL:v26 error:v34];

    v22 = v34[0];
    if (v27)
    {
      (*(v30 + 32))(v31, v13, v3);
      result = v22;
      goto LABEL_8;
    }

LABEL_7:
    v28 = v22;
    sub_267EF2A78();

    swift_willThrow();
    result = (v32)(v13, v3);
  }

LABEL_8:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_267CF2C74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_267EF2BB8();
  sub_267BBE0DC(a2, a3);
  v11 = [a5 createFileAtPath:a1 contents:v10 attributes:a4];

  return v11;
}

unint64_t sub_267CF2CF8()
{
  result = qword_28022AA90;
  if (!qword_28022AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemporaryFileManager.TemporaryFileManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_267CF2E2C()
{
  result = qword_28022AA98;
  if (!qword_28022AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA98);
  }

  return result;
}

void sub_267CF2E80(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v21 = MEMORY[0x277D84F90];
  v7 = sub_267BAF0DC(a3);
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v18 = v4;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return;
    }

    if (v9)
    {
      v10 = MEMORY[0x26D609870](v8, v4);
    }

    else
    {
      if (v8 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v20 = v10;
    v12 = a1(&v20);
    if (v3)
    {

      return;
    }

    if (v12)
    {
      sub_267EF9BD8();
      v13 = v7;
      v14 = v9;
      v15 = a1;
      v16 = a2;
      v17 = *(v21 + 16);
      sub_267EF9C08();
      a2 = v16;
      a1 = v15;
      v9 = v14;
      v7 = v13;
      v4 = v18;
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_267CF2FFC()
{
  v0 = sub_267BFB6B4();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = sub_267BFB6B4();
  v5 = *(v3 + 88);
  v4 = *(v3 + 96);

  if (v2 == v5 && v1 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_267EF9EA8();
  }

  return v7 & 1;
}

uint64_t sub_267CF30B8()
{
  OUTLINED_FUNCTION_12();
  v1[25] = v2;
  v1[26] = v0;
  MessageContextFlowResult = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(0);
  OUTLINED_FUNCTION_18(MessageContextFlowResult);
  v5 = *(v4 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v9 = type metadata accessor for TimedSentMessageContext(0);
  v1[29] = v9;
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CF3184()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[28];
  v1 = v0[29];
  v3 = *(v0[26] + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_sharedContextProvider);
  sub_267C4C9C0(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_267B9F98C(v0[28], &qword_280229228, &qword_267EFDD20);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    v0[36] = __swift_project_value_buffer(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#EditMessageFlow no sentMessageContext found");
      OUTLINED_FUNCTION_26();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v9;
    *v9 = v10;
    v9[1] = sub_267CF38B0;
    v11 = v0[26];

    return sub_267CF40EC();
  }

  else
  {
    v13 = v0[29];
    v14 = v0[30];
    sub_267C1B4DC(v0[28], v14);
    v15 = *(v14 + *(v13 + 28));
    if (sub_267EF96C8() & 1) != 0 && (sub_267EF9708())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v16 = sub_267EF8A08();
      __swift_project_value_buffer(v16, qword_280240FB0);
      v17 = sub_267EF89F8();
      v18 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v18))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v19, v20, "#EditMessageFlow fetched sent messages context");
        OUTLINED_FUNCTION_26();
      }

      v22 = v0[29];
      v21 = v0[30];
      v24 = v0[26];
      v23 = v0[27];
      v25 = v0[25];

      sub_267CF5060(v21, v23, type metadata accessor for TimedSentMessageContext);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
      v26 = OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue;
      swift_beginAccess();
      sub_267CF50C0(v23, v24 + v26);
      swift_endAccess();
      sub_267EF4018();
      sub_267CF5008(v21, type metadata accessor for TimedSentMessageContext);
      OUTLINED_FUNCTION_22_13();

      OUTLINED_FUNCTION_17();

      return v27();
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v28 = sub_267EF8A08();
      v0[31] = __swift_project_value_buffer(v28, qword_280240FB0);
      v29 = sub_267EF89F8();
      v30 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v30))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v31, v32, "#EditMessageFlow asked to edit a message with no text content");
        OUTLINED_FUNCTION_26();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[32] = v33;
      *v33 = v34;
      v33[1] = sub_267CF3558;
      v35 = v0[26];

      return sub_267CF47E0();
    }
  }
}

uint64_t sub_267CF3558()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CF3654()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[26];
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_27_11(v1 + 2);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_38_0();
  v7(v6);
  v8 = v0[20];
  v9 = v0[21];
  __swift_project_boxed_opaque_existential_0(v0 + 17, v8);
  v10 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[34] = v11;
  *v11 = v12;
  v11[1] = sub_267CF3730;

  return MEMORY[0x2821BB5D0](v0 + 12, v8, v9);
}

uint64_t sub_267CF3730()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CF382C()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[30];
  v2 = v0[25];
  sub_267EF4018();
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267CF38B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CF39AC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[26];
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_27_11(v1 + 2);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_38_0();
  v7(v6);
  v8 = v0[10];
  v9 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v8);
  v10 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v11;
  *v11 = v12;
  v11[1] = sub_267CF3A88;

  return MEMORY[0x2821BB5D0](v0 + 2, v8, v9);
}

uint64_t sub_267CF3A88()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CF3B84()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[25];
  sub_267EF4018();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CF3C00()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[38];
  v2 = v0[36];
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v9 = v0[25];
  sub_267EF4018();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267CF3D18()
{
  OUTLINED_FUNCTION_62();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[40];
  v2 = v0[36];
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v9 = v0[25];
  sub_267EF4018();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267CF3E40()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[33];
  v2 = v0[31];
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v9 = v0[30];
  v10 = v0[25];
  sub_267EF4018();
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267CF3F60()
{
  OUTLINED_FUNCTION_62();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[35];
  v2 = v0[31];
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v9 = v0[30];
  v10 = v0[25];
  sub_267EF4018();
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267CF40EC()
{
  OUTLINED_FUNCTION_12();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[34] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[35] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4228();
  v1[36] = v9;
  v10 = *(v9 - 8);
  v1[37] = v10;
  v11 = *(v10 + 64);
  v1[38] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CF41E8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[35];
  type metadata accessor for EditMessageCATs();
  sub_267EF7B68();
  v0[39] = sub_267EF78E8();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[40] = v2;
  *v2 = v3;
  v2[1] = sub_267CF42A4;
  v4 = v0[38];

  return sub_267D251A8();
}

uint64_t sub_267CF42A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 328) = v0;

  if (!v0)
  {
    v9 = *(v3 + 312);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CF43A8()
{
  v1 = *(v0 + 264);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_27_11(v1 + 2);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_38_0();
  v7(v6);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  if (sub_267EF3C18())
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v9 = v1[5];
    v10 = v1[6];
    OUTLINED_FUNCTION_27_11(v1 + 2);
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_38_0();
    v14(v13);
    v15 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_38_0();
    v16 = sub_267EF3BF8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v17 = *(v0 + 328);
  v18 = *(v0 + 264);
  sub_267B9AFEC(v18 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider, v0 + 216);
  v19 = *(v18 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent + 24);
  v20 = *(v18 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent + 32);
  __swift_project_boxed_opaque_existential_0((v18 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent), v19);
  v21 = (*(v20 + 368))(v19, v20);
  v23 = 0xD000000000000013;
  if (v22)
  {
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v24 = 0x8000000267F10280;
  }

  v25 = sub_267DA0F10((v0 + 216), v23, v24);
  if (v17)
  {
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v28 = *(v0 + 288);

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    (*(v27 + 8))(v26, v28);
    v29 = *(v0 + 304);
    v30 = *(v0 + 272);
    v31 = *(v0 + 280);

    OUTLINED_FUNCTION_17();
    goto LABEL_11;
  }

  v33 = v25;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_267EFCA40;
  *(v34 + 32) = v33;
LABEL_10:
  v35 = *(v0 + 296);
  v36 = *(v0 + 304);
  v52 = *(v0 + 288);
  v53 = *(v0 + 280);
  v37 = *(v0 + 272);
  v38 = *(v0 + 256);
  v39 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v40 = *(v39 + 8);
  v41 = OUTLINED_FUNCTION_31();
  v42(v41);
  v43 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v44 = *(v43 + 8);
  v45 = OUTLINED_FUNCTION_31();
  v46(v45);
  v47 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_31();
  sub_267EF3BC8();
  v48 = sub_267EF4158();
  v49 = OUTLINED_FUNCTION_32_1(v48);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v50 = MEMORY[0x277D5C1D8];
  v38[3] = v49;
  v38[4] = v50;
  __swift_allocate_boxed_opaque_existential_0(v38);
  sub_267EF3F98();

  sub_267B9F98C(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v37, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v35 + 8))(v36, v52);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();
LABEL_11:

  return v32();
}

uint64_t sub_267CF4760()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[39];

  v2 = v0[41];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267CF47E0()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4228();
  v1[21] = v9;
  v10 = *(v9 - 8);
  v1[22] = v10;
  v11 = *(v10 + 64);
  v1[23] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CF48DC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[20];
  type metadata accessor for EditMessageCATs();
  sub_267EF7B68();
  v0[24] = sub_267EF78E8();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[25] = v2;
  *v2 = v3;
  v2[1] = sub_267CF4998;
  v4 = v0[23];

  return sub_267D24EE8();
}

uint64_t sub_267CF4998()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 208) = v0;

  if (!v0)
  {
    v9 = *(v3 + 192);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CF4A9C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v21 = *(v0 + 160);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_10_0();
  v10(v9);
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_10_0();
  v14(v13);
  v15 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v16 = sub_267EF4158();
  v17 = OUTLINED_FUNCTION_32_1(v16);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v18 = MEMORY[0x277D5C1D8];
  v6[3] = v17;
  v6[4] = v18;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F98();
  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267CF4C70()
{
  OUTLINED_FUNCTION_8_24(OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent));
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_sharedContextProvider);
  swift_unknownObjectRelease();
  v2 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider);

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_267CF4CCC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_8_24(OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent));
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_sharedContextProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider));
  return v0;
}

uint64_t sub_267CF4D28()
{
  sub_267CF4CCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267CF4DA8()
{
  result = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_267CF4E94()
{
  v0 = type metadata accessor for TimedSentMessageContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_267CF4EFC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267CF30B8();
}

uint64_t sub_267CF4F98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue;
  swift_beginAccess();
  return sub_267CF5060(v3 + v4, a1, type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult);
}

uint64_t sub_267CF5008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267CF5060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267CF50C0(uint64_t a1, uint64_t a2)
{
  MessageContextFlowResult = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(0);
  (*(*(MessageContextFlowResult - 8) + 40))(a2, a1, MessageContextFlowResult);
  return a2;
}

id sub_267CF5124(uint64_t a1)
{
  result = sub_267BAF0DC(a1);
  v3 = result;
  v4 = 0;
  v11 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v11)
    {
      result = MEMORY[0x26D609870](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v5 = result;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = [result identifier];
    v7 = sub_267EF9028();
    v9 = v8;

    sub_267D302A8(&v10, v7, v9);

    ++v4;
  }

  return result;
}

uint64_t sub_267CF5230(uint64_t a1, uint64_t a2, unsigned int a3)
{

  v5 = sub_267D2F69C(v4);
  v6 = sub_267C73B04(v5);

  v19 = MEMORY[0x277D84F90];
  v7 = sub_267BAF0DC(v6);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v19 = sub_267BE512C(v15);
      sub_267CF6010(&v19);

      v16 = sub_267BDE080(v19, a2, a3);

      return v16;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D609870](i, v6);
    }

    else
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 sender];
    if (v11 && (v12 = v11, v13 = [v11 isMe], v12, (v13 & 1) != 0))
    {
    }

    else
    {
      sub_267EF9BD8();
      v14 = *(v19 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_267CF53E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v13 = sub_267E51BAC(a1);
  if (v13)
  {
    v14 = v13;
    if (sub_267BAF0DC(v13))
    {
      v28 = sub_267BAF0DC(v14);

      goto LABEL_8;
    }
  }

  v15 = [a1 numberOfAttachments];
  if (v15)
  {
    v16 = v15;
    v28 = [v15 integerValue];
  }

  else
  {
    v28 = 1;
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCA40;
  *(inited + 32) = a1;
  v18 = a1;
  v19 = sub_267BE2268(inited);
  v21 = v20;
  v22 = [v18 sender];
  v23 = [v18 messageEffectType];
  sub_267EF2D18();
  v24 = sub_267EF2CE8();
  v26 = v25;
  (*(v6 + 8))(v12, v4);
  a2[3] = &type metadata for GenericCountableComponent;
  a2[4] = sub_267C82888();
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = 8;
  *(result + 17) = *v29;
  *(result + 20) = *&v29[3];
  *(result + 24) = v28;
  *(result + 32) = v19;
  *(result + 40) = v21;
  *(result + 48) = v24;
  *(result + 56) = v26;
  *(result + 64) = v22;
  *(result + 72) = v23;
  *(result + 80) = 0;
  return result;
}

void sub_267CF5620(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = [a1 linkMetadata];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  sub_267E77D14(v10);
  if (!v12)
  {

    goto LABEL_6;
  }

  sub_267EF2B88();

  v13 = sub_267EF2BA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {

    sub_267B9FF34(v9, &qword_280229E20, &unk_267EFDCC0);
LABEL_6:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v15, v9, "#ConversationStateBuilder URL missing", v17, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    goto LABEL_11;
  }

  sub_267B9FF34(v9, &qword_280229E20, &unk_267EFDCC0);
  sub_267B9AFEC(a2, v35);
  v18 = type metadata accessor for AppleMapsLinkParser();
  swift_allocObject();
  v19 = v11;
  v20 = sub_267C77354(v19, v35);
  if (v20)
  {
    v21 = v20;
    if (sub_267BF7B18())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v22 = sub_267EF8A08();
      __swift_project_value_buffer(v22, qword_280240FB0);
      v23 = sub_267EF89F8();
      v24 = sub_267EF95D8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_267B93000, v23, v24, "#ConversationStateBuilder valid apple maps location link", v25, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      *(a3 + 24) = v18;
      *(a3 + 32) = &off_2878CFD98;

      *a3 = v21;
      return;
    }
  }

  sub_267B9AFEC(a2, v35);
  v26 = type metadata accessor for GoogleMapsLinkParser();
  swift_allocObject();
  v27 = sub_267E76A44(v19, v35);
  if (!v27)
  {
LABEL_11:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v28 = v27;
  v29 = v19;
  if ((sub_267E76A70() & 1) == 0)
  {

    goto LABEL_11;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);
  v31 = sub_267EF89F8();
  v32 = sub_267EF95D8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_267B93000, v31, v32, "#ConversationStateBuilder valid google maps location link", v33, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  *(a3 + 24) = v26;
  *(a3 + 32) = &off_2878D84A0;

  *a3 = v28;
}

id sub_267CF5A04(void *a1)
{
  v1 = [a1 reaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 reactionType];

  return v3;
}

uint64_t sub_267CF5A70(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v3 = 0;
  v33 = a1 & 0xC000000000000001;
  v34 = sub_267BAF0DC(a1);
  v32 = xmmword_267EFCA40;
  while (1)
  {
    if (v34 == v3)
    {

      return v2;
    }

    if (v33)
    {
      v4 = MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = [v4 reaction];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 reactionType];
    }

    else
    {
      v8 = 0;
    }

    v16 = sub_267C94D00(v8, v7 == 0);
    v17 = v2[2];
    v18 = (v9 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_25;
    }

    v20 = v9;
    if (v2[3] < v19)
    {
      sub_267CFA788(v19, 1, v10, v11, v12, v13, v14, v15, v30, v31, v32, SBYTE4(v32));
      v2 = v35;
      v21 = sub_267C94D00(v8, v7 == 0);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_27;
      }

      v16 = v21;
    }

    if (v20)
    {
      v23 = (v2[7] + 8 * v16);
      MEMORY[0x26D608F90]();
      if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v24 = swift_allocObject();
      *(v24 + 16) = v32;
      *(v24 + 32) = v5;
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v25 = v2[6] + 16 * v16;
      *v25 = v8;
      *(v25 + 8) = v7 == 0;
      *(v2[7] + 8 * v16) = v24;
      v26 = v2[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_26;
      }

      v2[2] = v28;
    }

    ++v3;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB00, &qword_267F02C78);
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

void sub_267CF5CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*v3 + 16);
  if (v4 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_267CA1DE8(v4 + v8, 1);

  sub_267C72FA0();
}

uint64_t sub_267CF5D98(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_267CA1E00(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_267C71F84((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_267CF5E78(uint64_t a1, uint64_t a2, char *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_267C705A8(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_267BAF0DC(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_267CA5F78(v12, 1);

  sub_267C73744(a1, a2, 1, a3);
}

uint64_t sub_267CF5F28()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_267BA9948();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
  sub_267EF9C68();
  v8 = *(*(v11 + 48) + 16 * v5 + 8);

  v9 = *(*(v11 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
  sub_267EF9C88();
  *v1 = v11;
  return v9;
}

uint64_t sub_267CF6010(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_267BE6A4C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_267CF608C(v6);
  return sub_267EF9BE8();
}

void sub_267CF608C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_267EF9E48();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_267D2FE1C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_267CF6254(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_267CF616C(0, v3, 1, a1);
  }
}

void sub_267CF616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_267CF6EB4();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v18 = v7;
      do
      {
        v11 = *v7;
        v12 = v9;
        v13 = v11;
        v14 = sub_267EA1418(v12, v13);

        if (!v14)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 = v18 + 8;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_267CF6254(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v89 = v8 + 16;
      v88 = *(v8 + 2);
      while (v88 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v90 = v8;
        v8 += 16 * v88;
        v91 = *v8;
        v92 = &v89[2 * v88];
        v93 = *(v92 + 1);
        sub_267CF6898((*a3 + 8 * *v8), (*a3 + 8 * *v92), (*a3 + 8 * v93), v105);
        if (v5)
        {
          break;
        }

        if (v93 < v91)
        {
          goto LABEL_118;
        }

        if (v88 - 2 >= *v89)
        {
          goto LABEL_119;
        }

        *v8 = v91;
        *(v8 + 1) = v93;
        v94 = *v89 - v88;
        if (*v89 < v88)
        {
          goto LABEL_120;
        }

        v88 = *v89 - 1;
        sub_267EAAFF4(v92 + 16, v94, v92);
        *v89 = v88;
        v8 = v90;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_267EAAFE0(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v96 = v8;
    v105 = v5;
    v11 = v7 + 1;
    v12 = *(*a3 + 8 * v10);
    v13 = (*a3 + 8 * v7);
    v14 = 8 * v7;
    v16 = *v13;
    v15 = v13 + 2;
    v101 = v6;
    sub_267CF6EB4();
    v8 = v9;
    v17 = v12;
    v5 = v16;
    v18 = sub_267EA1418(v17, v5);

    v19 = v101;
    v20 = v9 + 2;
    do
    {
      v21 = v20;
      if (v11 + 1 >= v19)
      {
        v11 = v19;
        if (v18)
        {
          goto LABEL_8;
        }

LABEL_20:
        v5 = v105;
        v8 = v96;
        v10 = v11;
        goto LABEL_22;
      }

      ++v11;
      v22 = *(v15 - 1);
      v23 = *v15;
      v5 = v22;
      v8 = sub_267EA1418(v23, v5);

      ++v15;
      v20 = v21 + 1;
      v19 = v101;
    }

    while (v18 == v8);
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_8:
    if (v11 < v9)
    {
      goto LABEL_124;
    }

    v10 = v11;
    if (v9 >= v11)
    {
      v5 = v105;
      v8 = v96;
    }

    else
    {
      v24 = v19 >= v21 ? v21 : v19;
      v25 = 8 * v24 - 8;
      v26 = v11;
      v27 = v9;
      v5 = v105;
      v8 = v96;
      do
      {
        if (v27 != --v26)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_131;
          }

          v29 = *(v28 + v14);
          *(v28 + v14) = *(v28 + v25);
          *(v28 + v25) = v29;
        }

        ++v27;
        v25 -= 8;
        v14 += 8;
      }

      while (v27 < v26);
    }

LABEL_22:
    v30 = a3[1];
    if (v10 < v30)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    v103 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = *(v8 + 2);
      sub_267C70730();
      v8 = v86;
    }

    v44 = *(v8 + 2);
    v45 = v44 + 1;
    v105 = v5;
    if (v44 >= *(v8 + 3) >> 1)
    {
      sub_267C70730();
      v8 = v87;
    }

    *(v8 + 2) = v45;
    v5 = (v8 + 32);
    v46 = &v8[16 * v44 + 32];
    *v46 = v9;
    *(v46 + 1) = v10;
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v44)
    {
      while (1)
      {
        v47 = v45 - 1;
        v48 = &v5[2 * v45 - 2];
        v49 = &v8[16 * v45];
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_109;
          }

          v65 = *v49;
          v64 = *(v49 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_112;
          }

          v69 = v48[1];
          v70 = v69 - *v48;
          if (__OFSUB__(v69, *v48))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v67, v70))
          {
            goto LABEL_117;
          }

          if (v67 + v70 >= v52)
          {
            if (v52 < v70)
            {
              v47 = v45 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v45 < 2)
        {
          goto LABEL_111;
        }

        v72 = *v49;
        v71 = *(v49 + 1);
        v60 = __OFSUB__(v71, v72);
        v67 = v71 - v72;
        v68 = v60;
LABEL_74:
        if (v68)
        {
          goto LABEL_114;
        }

        v74 = *v48;
        v73 = v48[1];
        v60 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v60)
        {
          goto LABEL_116;
        }

        if (v75 < v67)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v47 - 1 >= v45)
        {
          __break(1u);
LABEL_104:
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v79 = &v5[2 * v47 - 2];
        v80 = *v79;
        v81 = &v5[2 * v47];
        v82 = v81[1];
        sub_267CF6898((*a3 + 8 * *v79), (*a3 + 8 * *v81), (*a3 + 8 * v82), v100);
        if (v105)
        {
          goto LABEL_102;
        }

        if (v82 < v80)
        {
          goto LABEL_104;
        }

        v83 = v8;
        v8 = *(v8 + 2);
        if (v47 > v8)
        {
          goto LABEL_105;
        }

        *v79 = v80;
        v79[1] = v82;
        if (v47 >= v8)
        {
          goto LABEL_106;
        }

        v45 = (v8 - 1);
        sub_267EAAFF4(v81 + 16, &v8[-v47 - 1], &v5[2 * v47]);
        *(v83 + 2) = v8 - 1;
        v84 = v8 > 2;
        v8 = v83;
        if (!v84)
        {
          goto LABEL_88;
        }
      }

      v54 = &v5[2 * v45];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_107;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_108;
      }

      v61 = *(v49 + 1);
      v62 = v61 - *v49;
      if (__OFSUB__(v61, *v49))
      {
        goto LABEL_110;
      }

      v60 = __OFADD__(v52, v62);
      v63 = v52 + v62;
      if (v60)
      {
        goto LABEL_113;
      }

      if (v63 >= v57)
      {
        v77 = *v48;
        v76 = v48[1];
        v60 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v78)
        {
          v47 = v45 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v103;
    v6 = a3[1];
    v5 = v105;
    if (v103 >= v6)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (&v9[a4] >= v30)
  {
    v31 = a3[1];
  }

  else
  {
    v31 = &v9[a4];
  }

  if (v31 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v31)
  {
    goto LABEL_39;
  }

  v97 = v8;
  v105 = v5;
  v32 = *a3;
  sub_267CF6EB4();
  v33 = v32 + 8 * v10 - 8;
  v34 = &v9[-v10];
  v99 = v31;
LABEL_32:
  v102 = v10;
  v35 = *(v32 + 8 * v10);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = v35;
    v40 = v38;
    v41 = sub_267EA1418(v39, v40);

    if (!v41)
    {
LABEL_37:
      v10 = v102 + 1;
      v33 += 8;
      --v34;
      if ((v102 + 1) == v99)
      {
        v10 = v99;
        v5 = v105;
        v8 = v97;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v37;
    v35 = *(v37 + 8);
    *v37 = v35;
    *(v37 + 8) = v42;
    v37 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_267CF6898(void **a1, void **a2, void **a3, void **a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_267C74A34(a1, a2 - a1);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *a4;
      sub_267CF6EB4();
      v15 = v13;
      v16 = v14;
      v17 = sub_267EA1418(v15, v16);

      if (!v17)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v18 = a4;
    v19 = v7 == a4++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v18;
    goto LABEL_13;
  }

  sub_267C74A34(a2, a3 - a2);
  v10 = &a4[v9];
  v37 = a4;
LABEL_15:
  v20 = v6 - 1;
  v21 = v5 - 1;
  while (v10 > a4 && v6 > v7)
  {
    v23 = v6;
    v24 = v21;
    v25 = v7;
    v26 = *(v10 - 1);
    v27 = v20;
    v28 = *v20;
    sub_267CF6EB4();
    v29 = v26;
    v30 = v28;
    v31 = sub_267EA1418(v29, v30);

    v5 = v24;
    v32 = v24 + 1;
    if (v31)
    {
      v33 = v27;
      v6 = v27;
      v7 = v25;
      a4 = v37;
      if (v32 != v23)
      {
        *v5 = *v33;
        v6 = v33;
      }

      goto LABEL_15;
    }

    if (v10 != v32)
    {
      *v24 = *(v10 - 1);
    }

    v21 = v24 - 1;
    --v10;
    v20 = v27;
    v7 = v25;
    a4 = v37;
  }

LABEL_28:
  v34 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v34])
  {
    memmove(v6, a4, 8 * v34);
  }

  return 1;
}

uint64_t sub_267CF6ABC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_267EF9FC8();
  sub_267EF9128();
  v7 = sub_267EFA018();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_267EF9EA8() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_267D31ABC();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_267CF6BE4(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_267CF6BE4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_267EF99E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_267EF9FC8();

        sub_267EF9128();
        v15 = sub_267EFA018();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_267CF6D9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_267CF6E60()
{
  result = qword_28022AAF0;
  if (!qword_28022AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AAF0);
  }

  return result;
}

unint64_t sub_267CF6EB4()
{
  result = qword_28022A350;
  if (!qword_28022A350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022A350);
  }

  return result;
}

unint64_t sub_267CF6EF8()
{
  result = qword_28022A360;
  if (!qword_28022A360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229968, &unk_267EFEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A360);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_267CF6FC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_267CF7004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267CF7068@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v147 = a3;
  v158 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v150 = (&v144 - v8);
  v9 = type metadata accessor for DirectInvocationUseCases();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6();
  v148 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v144 - v13;
  v15 = sub_267EF4C08();
  v16 = OUTLINED_FUNCTION_58(v15);
  v155 = v17;
  v156 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v153 = v20;
  MEMORY[0x28223BE20](v21);
  v154 = &v144 - v22;
  v23 = sub_267EF4BE8();
  v24 = OUTLINED_FUNCTION_58(v23);
  v151 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v152 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_267EF4BA8();
  v30 = OUTLINED_FUNCTION_58(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v37 = sub_267EF8A08();
  v38 = __swift_project_value_buffer(v37, qword_280240FB0);
  v39 = *(v32 + 16);
  v157 = a1;
  v39(v36, a1, v29);
  v159 = v38;
  v40 = sub_267EF89F8();
  v41 = sub_267EF95C8();
  v42 = os_log_type_enabled(v40, v41);
  v149 = v9;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_48();
    v145 = OUTLINED_FUNCTION_52();
    v163[0] = v145;
    *v43 = 136315138;
    sub_267CFB3F4(&qword_28022AF50, MEMORY[0x277D5C118]);
    v44 = sub_267EF9E58();
    v146 = v23;
    v45 = a2;
    v46 = v14;
    v48 = v47;
    (*(v32 + 8))(v36, v29);
    sub_267BA33E8(v44, v48, v163);
    OUTLINED_FUNCTION_43();
    v14 = v46;
    a2 = v45;
    v23 = v146;

    *(v43 + 4) = v44;
    _os_log_impl(&dword_267B93000, v40, v41, "GroupDisambiguation# received input: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v145);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v32 + 8))(v36, v29);
  }

  v49 = *(v160 + *a2);
  v50 = v156;
  v51 = v155;
  if (!v49)
  {
    v57 = sub_267EF89F8();
    v58 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v58))
    {
LABEL_19:
      v74 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v74);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v75, v76, v77, v78, v79, 2u);
      OUTLINED_FUNCTION_26();
    }

LABEL_20:

    return sub_267EF3E68();
  }

  v52 = *(v160 + *a2);

  v53 = v154;
  sub_267EF4B88();
  if ((*(v51 + 88))(v53, v50) != *MEMORY[0x277D5C150])
  {
    (*(v51 + 8))(v53, v50);
    goto LABEL_13;
  }

  (*(v51 + 96))(v53, v50);
  v55 = v151;
  v54 = v152;
  (*(v151 + 32))(v152, v53, v23);
  v56 = v150;
  sub_267B9CC04(v54, v150);
  if (__swift_getEnumTagSinglePayload(v56, 1, v149) == 1)
  {
    (*(v55 + 8))(v54, v23);
    sub_267B9FF34(v56, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_13;
  }

  sub_267CFB038(v56, v14);
  v92 = v148;
  sub_267CFB09C(v14, v148);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_267CCEDF4(v14);
    (*(v55 + 8))(v152, v23);
    sub_267CCEDF4(v92);
LABEL_13:
    v59 = v153;
    sub_267EF4B88();
    v60 = sub_267E57DFC(v59, &v161);
    (*(v51 + 8))(v59, v50, v60);
    if (v162)
    {
      sub_267BE58F4(&v161, v163);
      v61 = v165;
      __swift_project_boxed_opaque_existential_0(v163, v164);
      v62 = *(v61 + 96);
      v63 = OUTLINED_FUNCTION_43();
      if (v64(v63, v61))
      {

        v65 = sub_267EF89F8();
        v66 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v66))
        {
          v67 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v67);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v68, v69, v70, v71, v72, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E48();
        return __swift_destroy_boxed_opaque_existential_0(v163);
      }

      v81 = v164;
      v82 = v165;
      __swift_project_boxed_opaque_existential_0(v163, v164);
      v83 = sub_267E58398(v81, v82);
      if (v83 && (v84 = v83, sub_267EC4D48(), v86 = v85, , v86))
      {
        v87 = OUTLINED_FUNCTION_3();
        sub_267C8ECF8(v87, v88, v49);
        OUTLINED_FUNCTION_54_1();

        v89 = *v147;
        v90 = v160;
        v91 = *(v160 + *v147);
        *(v160 + *v147) = v84;

        if (*(v90 + v89))
        {

          sub_267EF3E58();
          return __swift_destroy_boxed_opaque_existential_0(v163);
        }

        v137 = sub_267EF89F8();
        v138 = sub_267EF95D8();

        if (OUTLINED_FUNCTION_54_8())
        {
          OUTLINED_FUNCTION_48();
          *&v161 = OUTLINED_FUNCTION_55_0();
          *v90 = 136315138;
          v139 = OUTLINED_FUNCTION_3();
          v142 = sub_267BA33E8(v139, v140, v141);

          *(v90 + 4) = v142;
          OUTLINED_FUNCTION_6_20(&dword_267B93000, v143, v138, "GroupDisambiguation# Selected group %s not found in dictionary");
          OUTLINED_FUNCTION_26_4();
          OUTLINED_FUNCTION_29_1();
        }

        else
        {
        }
      }

      else
      {

        v122 = sub_267EF89F8();
        v123 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v123))
        {
          v124 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v124);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v125, v126, v127, v128, v129, 2u);
          OUTLINED_FUNCTION_26();
        }
      }

      sub_267EF3E68();
      return __swift_destroy_boxed_opaque_existential_0(v163);
    }

    sub_267B9FF34(&v161, &unk_28022BBF0, &unk_267F01C60);
    v57 = sub_267EF89F8();
    v73 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v73))
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v93 = v23;
  v157 = v14;
  v95 = *v92;
  v94 = v92[1];

  v96 = sub_267EF89F8();
  v97 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_54_8())
  {
    v98 = OUTLINED_FUNCTION_48();
    v99 = OUTLINED_FUNCTION_52();
    v163[0] = v99;
    *v98 = 136315138;
    v100 = OUTLINED_FUNCTION_3();
    *(v98 + 4) = sub_267BA33E8(v100, v101, v102);
    _os_log_impl(&dword_267B93000, v96, v97, "GroupDisambiguation# Item selection direct action with itemIdentifier=%s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v103 = OUTLINED_FUNCTION_3();
  sub_267C8ECF8(v103, v104, v49);
  OUTLINED_FUNCTION_54_1();

  v105 = *v147;
  v106 = v160;
  v107 = *(v160 + *v147);
  *(v160 + *v147) = v96;

  if (*(v106 + v105))
  {

    v108 = sub_267EF89F8();
    v109 = sub_267EF95D8();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = OUTLINED_FUNCTION_48();
      v111 = OUTLINED_FUNCTION_52();
      v163[0] = v111;
      *v110 = 136315138;
      *&v161 = *(v160 + v105);
      v112 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8B0, &unk_267F01FD0);
      v113 = sub_267EF9098();
      v115 = sub_267BA33E8(v113, v114, v163);

      *(v110 + 4) = v115;
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v111);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v121 = v152;
    sub_267EF3E58();
    sub_267CCEDF4(v157);
    return (*(v151 + 8))(v121, v93);
  }

  else
  {

    v130 = sub_267EF89F8();
    v131 = sub_267EF95E8();

    if (OUTLINED_FUNCTION_54_8())
    {
      OUTLINED_FUNCTION_48();
      v163[0] = OUTLINED_FUNCTION_55_0();
      *v105 = 136315138;
      v132 = OUTLINED_FUNCTION_3();
      v135 = sub_267BA33E8(v132, v133, v134);

      *(v105 + 4) = v135;
      OUTLINED_FUNCTION_6_20(&dword_267B93000, v136, v131, "GroupDisambiguation# Item %s not found");
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
    }

    sub_267EF3E68();
    sub_267CCEDF4(v157);
    return (*(v151 + 8))(v152, v93);
  }
}

uint64_t sub_267CF7BA4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_267EF2D28();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CF7C64, 0, 0);
}

char *sub_267CF7C64()
{
  v43 = v0;
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  v4 = sub_267EF4928();
  v5 = [v4 disambiguationItems];

  v6 = sub_267EF92F8();
  v42 = MEMORY[0x277D84F90];
  v7 = v6[2];
  if (v7)
  {
    v41 = v6;
    v1 = (v6 + 4);
    v8 = MEMORY[0x277D84F90];
    v2 = &qword_280229ED0;
    do
    {
      sub_267BA2E04(v1, (v0 + 2));
      OUTLINED_FUNCTION_57_7();
      if ((OUTLINED_FUNCTION_42_11() & 1) != 0 && v0[10])
      {
        v9 = MEMORY[0x26D608F90]();
        OUTLINED_FUNCTION_48_12(v9, v10, v11, v12, v13, v14, v15, v16, v40, v41, v42);
        if (v17)
        {
          OUTLINED_FUNCTION_41_9();
        }

        v6 = &v42;
        sub_267EF9368();
        v8 = v42;
      }

      v1 += 4;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v18 = sub_267BAF0DC(v8);
  if (v18)
  {
    result = OUTLINED_FUNCTION_35_12(v18);
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_27_12();
    do
    {
      if (v40)
      {
        MEMORY[0x26D609870](v2, v41);
      }

      else
      {
        v20 = *(v41 + 8 * v2 + 32);
      }

      OUTLINED_FUNCTION_53_7();
      sub_267EF2CE8();

      (*v1)(v6, 0);
      OUTLINED_FUNCTION_45_10();
      if (v17)
      {
        v6 = &v42;
        sub_267BC7934((v21 > 1), v8, 1);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v22);
    v8 = v41;
  }

  v23 = v0[13];

  v25 = sub_267CF83FC(v24, v8);
  v26 = OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict;
  v27 = *(v23 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
  *(v23 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict) = v25;

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = v0[13];
  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  OUTLINED_FUNCTION_54_1();

  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();

  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_48();
    v42 = OUTLINED_FUNCTION_55_0();
    *v28 = 136315138;
    v0[11] = *(v23 + v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB38, &qword_267F02E68);
    v32 = sub_267EF9098();
    v34 = sub_267BA33E8(v32, v33, &v42);

    *(v28 + 4) = v34;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v35, v31, "GroupDisambiguation# Disambiguatuon dictionary: %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v36 = v0[16];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB28, qword_267F02D58);
  OUTLINED_FUNCTION_97(v37);
  OUTLINED_FUNCTION_43();
  sub_267EF4AF8();

  v38 = OUTLINED_FUNCTION_18_7();

  return v39(v38);
}

uint64_t sub_267CF7FDC()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_267EF2D28();
  v1[14] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

char *sub_267CF8080()
{
  v43 = v0;
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v4 = sub_267EF4928();
  v5 = [v4 disambiguationItems];

  v6 = sub_267EF92F8();
  v42 = MEMORY[0x277D84F90];
  v7 = v6[2];
  if (v7)
  {
    v41 = v6;
    v1 = (v6 + 4);
    v8 = MEMORY[0x277D84F90];
    v2 = &qword_280229ED0;
    do
    {
      sub_267BA2E04(v1, (v0 + 2));
      OUTLINED_FUNCTION_57_7();
      if ((OUTLINED_FUNCTION_42_11() & 1) != 0 && v0[10])
      {
        v9 = MEMORY[0x26D608F90]();
        OUTLINED_FUNCTION_48_12(v9, v10, v11, v12, v13, v14, v15, v16, v40, v41, v42);
        if (v17)
        {
          OUTLINED_FUNCTION_41_9();
        }

        v6 = &v42;
        sub_267EF9368();
        v8 = v42;
      }

      v1 += 4;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v18 = sub_267BAF0DC(v8);
  if (v18)
  {
    result = OUTLINED_FUNCTION_35_12(v18);
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_27_12();
    do
    {
      if (v40)
      {
        MEMORY[0x26D609870](v2, v41);
      }

      else
      {
        v20 = *(v41 + 8 * v2 + 32);
      }

      OUTLINED_FUNCTION_53_7();
      sub_267EF2CE8();

      (*v1)(v6, 0);
      OUTLINED_FUNCTION_45_10();
      if (v17)
      {
        v6 = &v42;
        sub_267BC7934((v21 > 1), v8, 1);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v22);
    v8 = v41;
  }

  v23 = v0[13];

  v25 = sub_267CF83FC(v24, v8);
  v26 = OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict;
  v27 = *(v23 + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
  *(v23 + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict) = v25;

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = v0[13];
  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  OUTLINED_FUNCTION_54_1();

  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();

  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_48();
    v42 = OUTLINED_FUNCTION_55_0();
    *v28 = 136315138;
    v0[11] = *(v23 + v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB38, &qword_267F02E68);
    v32 = sub_267EF9098();
    v34 = sub_267BA33E8(v32, v33, &v42);

    *(v28 + 4) = v34;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v35, v31, "GroupDisambiguation# Disambiguatuon dictionary: %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v36 = v0[16];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB28, qword_267F02D58);
  OUTLINED_FUNCTION_97(v37);
  OUTLINED_FUNCTION_43();
  sub_267EF4AF8();

  v38 = OUTLINED_FUNCTION_18_7();

  return v39(v38);
}

uint64_t sub_267CF83FC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = sub_267BAF0DC(a2);
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB40, &qword_267F02E70);
    v6 = sub_267EF9CF8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_267CFACAC(a1, a2, 1, &v8);

  return v8;
}

uint64_t sub_267CF8504()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A858, &unk_267F06BC0);
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CF85B8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_selectedGroupName);
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
    sub_267EF4918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_267EFCA40;
    *(v8 + 32) = v7;
    v9 = v7;
    sub_267DE8E14();
    v11 = v10;
    sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v12 = v9;
    v13 = v11;
    sub_267EF4388();
    sub_267EF4508();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v15 = v0[7];
    sub_267C266B0();
    swift_allocError();
    *v16 = 0xD000000000000016;
    v16[1] = 0x8000000267F167C0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267CF87B8()
{
  OUTLINED_FUNCTION_12();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[36] = *v0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[38] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[39] = v7;
  v9 = *(v8 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF53D8();
  v1[41] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[42] = v11;
  v13 = *(v12 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v14 = sub_267EF4158();
  v1[46] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[47] = v15;
  v17 = *(v16 + 64);
  v1[48] = OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267CF8970()
{
  v57 = v0;
  v1 = v0[48];
  v54 = v0[45];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  sub_267EB946C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB88, &qword_267F02ED0);
  v5 = sub_267EF4698();
  sub_267DA874C(v5);

  v6 = sub_267EF3998();
  OUTLINED_FUNCTION_97(v6);
  sub_267EF3978();
  v8 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v8);
  (*(v7 + 8))(v8, v7);
  v9 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v10 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider + 8);
  sub_267DA149C();
  v0[49] = v11;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_43();
  v15(v14, v12);
  sub_267EB99B8((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v16 = sub_267EF4698();
  sub_267CF929C(v16);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = v0[44];
  v18 = v0[45];
  v19 = v0[41];
  v20 = v0[42];
  v21 = sub_267EF8A08();
  v22 = __swift_project_value_buffer(v21, qword_280240FB0);
  v23 = *(v20 + 16);
  v23(v17, v18, v19);
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();
  v26 = OUTLINED_FUNCTION_36(v25);
  v27 = v0[44];
  if (v26)
  {
    v28 = v0[42];
    v29 = v0[43];
    v30 = v0[41];
    buf = OUTLINED_FUNCTION_48();
    v53 = OUTLINED_FUNCTION_52();
    v56 = v53;
    *buf = 136315138;
    v23(v29, v27, v30);
    sub_267EF5458();
    v51 = v22;
    v0[30] = v30;
    v0[31] = sub_267CFB3F4(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 27);
    v23(boxed_opaque_existential_0, v29, v30);
    v32 = sub_267EF5448();
    v55 = v23;
    v34 = v33;
    v35 = *(v28 + 8);
    v35(v29, v30);
    v35(v27, v30);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    v36 = sub_267BA33E8(v32, v34, &v56);
    v23 = v55;

    *(buf + 4) = v36;
    _os_log_impl(&dword_267B93000, v24, v51, "#SearchForMessagesGroupNeedsDisambiguationFlowStrategy submitting NLv4 dialog act: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v37 = v0[41];
    v38 = v0[42];

    v35 = *(v38 + 8);
    v35(v27, v37);
  }

  v0[50] = v35;
  v39 = v0[48];
  v40 = v0[45];
  v41 = v0[41];
  v42 = v0[42];
  v43 = v0[35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v44 = *(v42 + 72);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_267EFC020;
  v23(v46 + v45, v40, v41);
  sub_267EF4088();
  v47 = *(v43 + 56);
  v48 = swift_task_alloc();
  v0[51] = v48;
  *v48 = v0;
  v48[1] = sub_267CF8E10;
  v49 = v0[40];

  return sub_267CE9268();
}

uint64_t sub_267CF8E10()
{
  OUTLINED_FUNCTION_12();
  v3 = *(*v1 + 408);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v2;
  *(v2 + 416) = v0;

  if (v0)
  {
    v5 = *(v2 + 392);

    v6 = sub_267CF91B4;
  }

  else
  {
    v6 = sub_267CF8F20;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267CF8F20()
{
  v1 = *(v0 + 376);
  v20 = *(v0 + 384);
  v2 = *(v0 + 368);
  v26 = *(v0 + 360);
  v27 = *(v0 + 400);
  v28 = *(v0 + 352);
  v29 = *(v0 + 344);
  v24 = *(v0 + 336);
  v25 = *(v0 + 328);
  v3 = *(v0 + 312);
  v21 = *(v0 + 320);
  v22 = *(v0 + 392);
  v4 = *(v0 + 296);
  v23 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_54_1();
  v10(v9, v7);
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_54_1();
  v14(v13, v11);
  v15 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_54_1();
  sub_267EF3BC8();
  (*(v1 + 16))(v4, v20, v2);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
  v16 = sub_267EF4CC8();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v17 = MEMORY[0x277D5C1D8];
  v6[3] = v16;
  v6[4] = v17;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F68();

  sub_267B9FF34(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v3 + 8))(v21, v23);
  v27(v26, v25);
  (*(v1 + 8))(v20, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_267CF91B4()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = *(v0 + 336) + 8;
  (*(v0 + 400))(*(v0 + 360), *(v0 + 328));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_17();
  v10 = *(v0 + 416);

  return v9();
}

uint64_t sub_267CF929C(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);

  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_54_8())
  {
    OUTLINED_FUNCTION_48();
    v19 = OUTLINED_FUNCTION_55_0();
    *v1 = 136315138;
    v6 = MEMORY[0x26D609000](a1, MEMORY[0x277D837D0]);
    v8 = sub_267BA33E8(v6, v7, &v19);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v9, v5, "#SearchForMessagesGroupNeedsDisambiguationFlowStrategy creating SDAs for groups %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v19 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  for (i = (a1 + 40); v10; --v10)
  {
    v13 = *(i - 1);
    v12 = *i;
    v14 = sub_267EF6268();
    OUTLINED_FUNCTION_97(v14);

    sub_267EF6258();
    v15 = sub_267EF6058();
    OUTLINED_FUNCTION_97(v15);
    sub_267EF6048();
    sub_267EF6038();

    sub_267EF6218();

    v16 = sub_267EF6428();
    OUTLINED_FUNCTION_97(v16);
    sub_267EF6418();
    sub_267EF63E8();

    MEMORY[0x26D608F90](v17);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
    i += 2;
  }

  sub_267BC8938();
}

uint64_t sub_267CF94F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
}

uint64_t *sub_267CF9534()
{
  v0 = sub_267C4779C();

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);

  return v0;
}

uint64_t sub_267CF957C()
{
  v0 = *sub_267CF9534();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy()
{
  result = qword_28022AB08;
  if (!qword_28022AB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CF9668()
{
  type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();

  JUMPOUT(0x26D602E30);
}

uint64_t sub_267CF96F4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_267CF97A8;

  return sub_267CF7BA4(a2);
}

uint64_t sub_267CF97A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_267CF98B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CFB43C;

  return sub_267CF8504();
}

uint64_t sub_267CF995C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CFB43C;

  return sub_267CF87B8();
}

uint64_t sub_267CF9A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_267CF9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_267CF9BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BF1CB4;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_267CF9C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_267CF9D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_267CF9D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267CF9E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();
  *v15 = v7;
  v15[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_267CF9FA4()
{
  result = qword_28022AB20;
  if (!qword_28022AB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AB28, qword_267F02D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AB20);
  }

  return result;
}

uint64_t sub_267CFA008(uint64_t a1)
{
  result = sub_267CFB3F4(&qword_28022AB30, type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

void sub_267CFA060(uint64_t a1)
{
  OUTLINED_FUNCTION_4_29(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB80, &unk_267F02EC0);
  v4 = OUTLINED_FUNCTION_10_23();
  if (!*(v2 + 16))
  {
LABEL_30:

    *v1 = v4;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_14_21();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v7;
      if (*(v2 + 8 * v5))
      {
        OUTLINED_FUNCTION_12_5();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v29)
    {
      v25 = *(v2 + 32);
      OUTLINED_FUNCTION_18_14();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_17_14(v26);
      }

      else
      {
        OUTLINED_FUNCTION_11_24(v26);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_21();
LABEL_9:
    OUTLINED_FUNCTION_31_11(v6);
    v11 = *v10;
    v12 = v10[1];
    v15 = (v14 + 32 * v13);
    if (v29)
    {
      sub_267BA7F4C(v15, v30);
    }

    else
    {
      sub_267BA2E04(v15, v30);
    }

    OUTLINED_FUNCTION_55_8();
    sub_267EF9128();
    v16 = sub_267EFA018();
    OUTLINED_FUNCTION_3_28(v16);
    OUTLINED_FUNCTION_28_17(v17);
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_22:
    OUTLINED_FUNCTION_2_30(v19);
    *v23 = v11;
    v23[1] = v12;
    sub_267BA7F4C(v30, (*(v4 + 56) + 32 * v24));
    OUTLINED_FUNCTION_19_12();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v18)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_34_10(v20);
    if (!v18)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_267CFA20C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB40, &qword_267F02E70);
  v39 = a2;
  result = sub_267EF9CE8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_267D2FEFC(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_267EF9FC8();
    sub_267EF9128();
    result = sub_267EFA018();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}