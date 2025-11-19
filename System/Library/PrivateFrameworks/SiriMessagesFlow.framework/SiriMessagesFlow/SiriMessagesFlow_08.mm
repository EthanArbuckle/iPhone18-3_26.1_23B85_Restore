void sub_267C38BC8(uint64_t a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (!v3)
  {
    if (qword_280228818 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    v23 = v3;
    v4 = [v3 appendingActionReadMessagesCount];
    if (!__OFADD__(v4, a1))
    {
      [v23 setAppendingActionReadMessagesCount:v4 + a1];
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_0();
LABEL_7:
  v5 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
  v24 = sub_267EF89F8();
  v6 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_6_6(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
  {
    v14 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_10(v14);
    OUTLINED_FUNCTION_2_18(&dword_267B93000, v15, v16, "#SMSReadMessageSelfLogger smsContext is not initialized!", v17, v18, v19, v20, v22, v23);
    OUTLINED_FUNCTION_4_4();
  }

LABEL_9:
}

unint64_t sub_267C38CFC()
{
  v1 = [*(v0 + 16) smsContext];
  if (!v1)
  {
    return 0xD000000000000042;
  }

  v2 = v1;
  sub_267EF9B68();
  MEMORY[0x26D608E60](0x6E6F73726570200ALL, 0xEF203A7365707954);
  sub_267C3C378(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229520, &qword_267EFD978);
  sub_267EF9C58();

  MEMORY[0x26D608E60](0, 0xE000000000000000);

  v3 = [v2 isReply];
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

  MEMORY[0x26D608E60](v5, v6);

  OUTLINED_FUNCTION_28_8();
  v7 = OUTLINED_FUNCTION_33();
  MEMORY[0x26D608E60](v7);

  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD000000000000012, 0x8000000267F12880);
  v8 = [v2 textContext];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 smsAttachmentMetadata];

    if (v10)
    {
      [v10 smsAttachmentType];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229528, &qword_267EFD980);
  sub_267EF9C58();
  OUTLINED_FUNCTION_28_8();
  v12 = OUTLINED_FUNCTION_33();
  MEMORY[0x26D608E60](v12);

  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD000000000000028, 0x8000000267F128A0);
  v13 = [v2 audioContext];
  v14 = v13;
  if (v13)
  {
    [v13 messageDurationMs];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229530, &qword_267EFD988);
  sub_267EF9C58();
  OUTLINED_FUNCTION_28_8();
  v15 = OUTLINED_FUNCTION_33();
  MEMORY[0x26D608E60](v15);

  return 0;
}

void sub_267C390B0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277D576E0]) init];
  [v1 setSmsContext_];

  v3 = *(v0 + 24);
  *(v0 + 24) = 0;

  *(v0 + 32) = 0;
}

void sub_267C3911C(void *a1, char a2)
{
  v5 = [*(v2 + 16) smsContext];
  if (v5)
  {
    v6 = v5;
    if ((a2 & 1) == 0)
    {
      [v5 clearPersonType];
    }

    sub_267C39388(a1);
    v7 = sub_267C7A4A0();
    v8 = *(v7 + 16);
    if (v8)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v9 = sub_267EF8A08();
      v10 = 0;
      v21 = v9;
      do
      {
        v11 = *(v7 + 4 * v10 + 32);
        OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
        v12 = sub_267EF89F8();
        v13 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = v10;
          *(v14 + 12) = 1024;
          *(v14 + 14) = v11;
          _os_log_impl(&dword_267B93000, v12, v13, "#SendMessageSelfContext personType[%ld]: %d", v14, 0x12u);
          v9 = v21;
          OUTLINED_FUNCTION_32_0();
        }

        ++v10;

        [v6 addPersonType_];
      }

      while (v8 != v10);
    }

    OUTLINED_FUNCTION_35_4();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    oslog = sub_267EF89F8();
    v17 = sub_267EF95E8();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v18);
      _os_log_impl(&dword_267B93000, oslog, v17, "#SendMessageSelfContext smsContext is not initialized!!!", v2, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_35_4();
  }
}

void sub_267C39388(void *a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (v3)
  {
    v35 = v3;
    v4 = [a1 speakableGroupName];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 spokenPhrases];
      v7 = sub_267EF92F8();

      v8 = *(v7 + 16);

      if (v8)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v9 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
        v10 = sub_267EF89F8();
        v11 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v11))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_20();
          _os_log_impl(v12, v13, v14, v15, v16, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        [v35 addPersonType:10];
      }
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v17 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
    v36 = sub_267EF89F8();
    v18 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v18, v19, v20, v21, v22, v23, v24, v25, v33, v36))
    {
      v26 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v26);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v27, v28, "#SendMessageSelfContext smsContext is not initialized!!!", v29, v30, v31, v32, v34, v35);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C3954C(char a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (v3)
  {
    v22 = v3;
    [v3 setIsReply:a1 & 1];
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
    v23 = sub_267EF89F8();
    v5 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v5, v6, v7, v8, v9, v10, v11, v12, v20, v23))
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v13);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v14, v15, "#SendMessageSelfContext smsContext is not initialized!", v16, v17, v18, v19, v21, v22);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C39660(SEL *a1, SEL *a2)
{
  v5 = [*(v2 + 16) smsContext];
  if (v5 && (v6 = v5, v25 = [v5 tapback], v6, v25))
  {
    [v25 *a1];
    [v25 *a2];
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
    v26 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v8, v9, v10, v11, v12, v13, v14, v15, v23, v26))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v16);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v17, v18, "#SendMessageSelfContext smsContext.tapback is not initialized!", v19, v20, v21, v22, v24, v25);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C39770(char a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (v3 && (v4 = v3, v23 = [v3 tapback], v4, v23))
  {
    [v23 setIsGUITapback:a1 & 1];
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v24 = sub_267EF89F8();
    v6 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v14);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v15, v16, "#SendMessageSelfContext smsContext.tapback is not initialized!", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C3986C()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v4 = sub_267EF2BA8();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77_0();
  v106 = v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  v17 = &v101 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_60();
  v107 = v22 - v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v105 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_34();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v101 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v101 - v31;
  v33 = [objc_allocWithZone(MEMORY[0x277D576C8]) init];
  if (v33)
  {
    v34 = v33;
    if (v0[32] == 1)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v35 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v35, qword_280240FB0);
      v36 = sub_267EF89F8();
      v37 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v37))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v38, v39, "#SMSSendMessageSelfLogger link is shared via text content for 3p SiriKit apps, returning .FLOWSMSATTACHMENTTYPE_LINK");
        OUTLINED_FUNCTION_32_0();
      }

      [v34 setSmsAttachmentType_];
      goto LABEL_30;
    }

    v104 = v30;
    v45 = sub_267E76140(v3);
    if (v45)
    {
      v46 = v45;
      v102 = v12;
      v103 = v7;
      v47 = sub_267BAF0DC(v45);
      if (v47)
      {
        v48 = v47;
        v108 = v4;
        v101 = v34;
        for (i = 0; ; ++i)
        {
          if (v48 == i)
          {

            goto LABEL_30;
          }

          if ((v46 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x26D609870](i, v46);
          }

          else
          {
            if (i >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v50 = *(v46 + 8 * i + 32);
          }

          v51 = v50;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if ([v50 sharedLink])
          {
            OUTLINED_FUNCTION_54_1();

            sub_267EF2B48();

            v57 = v103;
            v58 = v108;
            (*(v103 + 32))(v32, v17, v108);
            OUTLINED_FUNCTION_19_5();
            __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
            sub_267B9F98C(v32, &qword_280229E20, &unk_267EFDCC0);
            goto LABEL_34;
          }

          __swift_storeEnumTagSinglePayload(v32, 1, 1, v108);
          sub_267B9F98C(v32, &qword_280229E20, &unk_267EFDCC0);
          if ([v51 file])
          {
            break;
          }
        }

        OUTLINED_FUNCTION_54_1();

        v58 = v108;
        v57 = v103;
LABEL_34:
        v63 = v104;
        OUTLINED_FUNCTION_19_5();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
        v68 = [v51 sharedLink];
        v70 = v101;
        v69 = v102;
        if (v68)
        {
          v71 = v68;
          v72 = v106;
          sub_267EF2B48();

          sub_267EF2A88();
          (*(v57 + 8))(v72, v58);
          sub_267B9F98C(v63, &qword_280229E20, &unk_267EFDCC0);
          OUTLINED_FUNCTION_19_5();
          __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
          v77 = v1;
          v78 = v107;
        }

        else
        {
          v79 = [v51 file];
          v78 = v107;
          if (!v79)
          {
LABEL_42:
            sub_267B9A598(v63, v78, &qword_280229E20, &unk_267EFDCC0);
            if (__swift_getEnumTagSinglePayload(v78, 1, v58) == 1)
            {
              v88 = OUTLINED_FUNCTION_12_4();
              sub_267B9F98C(v88, v89, &unk_267EFDCC0);

              v90 = v78;
            }

            else
            {
              (*(v57 + 32))(v69, v78, v58);
              v91 = sub_267D50E80();
              switch(v91)
              {
                case 0:
                  [v70 setSmsAttachmentType_];
                  break;
                case 1:
                  [v70 setSmsAttachmentType_];
                  break;
                case 2:
                  [v70 setSmsAttachmentType_];
                  break;
                case 3:
                  [v70 setSmsAttachmentType_];
                  break;
                case 4:
                  [v70 setSmsAttachmentType_];
                  break;
                default:
                  if (qword_280228818 != -1)
                  {
                    OUTLINED_FUNCTION_0();
                  }

                  v92 = sub_267EF8A08();
                  OUTLINED_FUNCTION_30_1(v92, qword_280240FB0);
                  v93 = sub_267EF89F8();
                  v94 = sub_267EF95E8();
                  if (OUTLINED_FUNCTION_5_2(v94))
                  {
                    v95 = swift_slowAlloc();
                    *v95 = 67109120;
                    v95[1] = v91;
                    OUTLINED_FUNCTION_20();
                    _os_log_impl(v96, v97, v98, v99, v100, 8u);
                    OUTLINED_FUNCTION_32_0();
                  }

                  v58 = v108;
                  break;
              }

              (*(v57 + 8))(v69, v58);
              v90 = v104;
            }

            sub_267B9F98C(v90, &qword_280229E20, &unk_267EFDCC0);
            goto LABEL_30;
          }

          v80 = v79;
          v81 = [v79 fileURL];
          if (v81)
          {
            v82 = v81;
            v83 = v105;
            sub_267EF2B48();

            sub_267B9F98C(v104, &qword_280229E20, &unk_267EFDCC0);
          }

          else
          {
            sub_267B9F98C(v104, &qword_280229E20, &unk_267EFDCC0);

            v83 = v105;
          }

          OUTLINED_FUNCTION_19_5();
          __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
          v63 = v104;
          v77 = v83;
        }

        sub_267BBE134(v77, v63, &qword_280229E20, &unk_267EFDCC0);
        goto LABEL_42;
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v52 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v52, qword_280240FB0);
    v53 = sub_267EF89F8();
    v54 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v54))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v55, v56, "#SMSSendMessageSelfLogger logAttachmentType, not logging attachment type. No attachments.");
      OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
LABEL_59:
      OUTLINED_FUNCTION_0();
    }

    v40 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);
    v41 = sub_267EF89F8();
    v42 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v42))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v43, v44, "#SMSSendMessageSelfLogger logAttachmentType, not logging attachment type. Error creating context.");
      OUTLINED_FUNCTION_32_0();
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_47();
}

void sub_267C3A088()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = &v112 - v15;
  v123 = sub_267EF2BA8();
  v17 = OUTLINED_FUNCTION_58(v123);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_60();
  v117 = v22 - v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  v26 = &v112 - v25;
  v119 = v0;
  v27 = [*(v0 + 16) smsContext];
  if (v27)
  {
    v114 = v26;
    v115 = v16;
    v116 = v19;
    v118 = v27;
    v28 = [v5 outgoingMessageType];
    if (!v28)
    {
      OUTLINED_FUNCTION_110_2();
      if (!v46)
      {
        OUTLINED_FUNCTION_0();
      }

      v76 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v76, qword_280240FB0);
      v77 = v5;
      v78 = sub_267EF89F8();
      v79 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_36(v79))
      {
        v80 = OUTLINED_FUNCTION_48();
        *v80 = 134217984;
        *(v80 + 4) = [v77 outgoingMessageType];

        v81 = "#SendMessageSelfContext unknown outgoing message type %ld";
LABEL_57:
        _os_log_impl(&dword_267B93000, v78, OS_LOG_TYPE_DEFAULT, v81, v80, 0xCu);
        OUTLINED_FUNCTION_32_0();

        goto LABEL_78;
      }

LABEL_58:

      goto LABEL_78;
    }

    if (v28 != 2)
    {
      if (v28 == 1)
      {
        v29 = &off_279C2E000;
        v30 = [objc_allocWithZone(MEMORY[0x277D576F0]) init];
        if (!v30)
        {
          goto LABEL_78;
        }

        v31 = v30;
        v32 = sub_267ED9A2C(v5);
        if (!v33)
        {
          goto LABEL_70;
        }

        v34 = v32;
        v35 = v33;
        v36 = [objc_allocWithZone(MEMORY[0x277D576E8]) init];
        if (!v36)
        {

LABEL_70:
          sub_267C3986C();
          v99 = v98;
          if (v98 && [v98 smsAttachmentType])
          {
            sub_267C3ABD4();
            v101 = v100;
            [v99 setLinkId_];
          }

          sub_267D28AC8();
          if ((v102 & 1) != 0 && (v99 || (v99 = [objc_allocWithZone(MEMORY[0x277D576C8]) v29[413]]) != 0))
          {
            [v99 setSmsAttachmentType_];
          }

          [v31 setSmsAttachmentMetadata_];
          v103 = v118;
          [v118 setTextContext_];
          [v103 setMessageType_];

          goto LABEL_78;
        }

        v37 = v36;
        v38 = sub_267EF9138();
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(v38))
        {
          [v37 setMessageCharLength_];
          v39 = swift_allocObject();
          *(v39 + 16) = 0;
          if ((v35 & 0x2000000000000000) != 0)
          {
            v40 = HIBYTE(v35) & 0xF;
          }

          else
          {
            v40 = v34 & 0xFFFFFFFFFFFFLL;
          }

          v41 = 11;
          if (((v35 >> 60) & ((v34 & 0x800000000000000) == 0)) == 0)
          {
            v41 = 7;
          }

          v121 = v40;
          v124 = v34;
          v125 = v35;
          v128 = 15;
          v129 = v41 | (v40 << 16);

          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229510, &qword_267EFD970);
          v122 = sub_267BB5034();
          sub_267C3C4C4();
          sub_267EF9928();

          swift_beginAccess();
          v42 = *(v39 + 16);

          if ((v42 & 0x8000000000000000) == 0)
          {
            v29 = &off_279C2E000;
            if (!HIDWORD(v42))
            {
              [v37 setMessageWordLength_];
              v124 = v34;
              v125 = v35;
              v126 = 0;
              v127 = v121;
              do
              {
                sub_267EF91A8();
                v44 = v43;
                if (!v43)
                {
                  break;
                }

                v45 = sub_267EF8F98();
              }

              while ((v45 & 1) == 0);

              [v37 setIsPunctuationUsed_];
              [v37 setFlowKeyboardUsageMetadata_];
              [v31 setSmsTextContentMetadata_];

              goto LABEL_70;
            }

            goto LABEL_91;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_110_2();
      if (!v46)
      {
        OUTLINED_FUNCTION_0();
      }

      v82 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v82, qword_280240FB0);
      v77 = v5;
      v78 = sub_267EF89F8();
      v83 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_36(v83))
      {
        v80 = OUTLINED_FUNCTION_48();
        *v80 = 134217984;
        *(v80 + 4) = [v77 outgoingMessageType];

        v81 = "#SendMessageSelfContext unhandled outgoing message type %ld";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    [v118 setMessageType_];
    v52 = sub_267E76140(v5);
    if (v52)
    {
      v53 = v52;
      v54 = sub_267BAF0DC(v52);
      v55 = 0;
      v121 = v53 & 0xC000000000000001;
      v122 = v54;
      v120 = v53 & 0xFFFFFFFFFFFFFF8;
      v112 = (v116 + 32);
      v113 = MEMORY[0x277D84F90];
      v56 = &qword_280229E20;
      v57 = &unk_267EFDCC0;
      v58 = v123;
      while (1)
      {
        if (v122 == v55)
        {

          v84 = v115;
          sub_267C8F020(v113, v115);

          OUTLINED_FUNCTION_8_6(v84);
          if (v46)
          {
            goto LABEL_68;
          }

          v85 = *v112;
          v86 = v114;
          v87 = OUTLINED_FUNCTION_12_4();
          v88(v87);
          v89 = [objc_allocWithZone(MEMORY[0x277D576D8]) init];
          if (v89)
          {
            v90 = v89;
            v91 = COERCE_DOUBLE(sub_267E0BC80());
            v92 = v116;
            if ((v93 & 1) == 0 && ((v94 = round(v91 * 1000.0), v94 > -1.0) ? (v95 = v94 < 4294967300.0) : (v95 = 0), v95))
            {
              [v90 setMessageDurationMs_];
              [v118 setAudioContext_];

              (*(v92 + 8))(v86, v58);
            }

            else
            {
              (*(v116 + 8))(v86, v58);
            }
          }

          else
          {
            (*(v116 + 8))(v86, v58);
          }

          goto LABEL_78;
        }

        if (v121)
        {
          v59 = MEMORY[0x26D609870](v55, v53);
        }

        else
        {
          if (v55 >= *(v120 + 16))
          {
            goto LABEL_86;
          }

          v59 = *(v53 + 8 * v55 + 32);
        }

        v60 = v59;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v61 = [v59 audioMessageFile];
        if (!v61)
        {
          break;
        }

        v62 = v61;
        v63 = v57;
        v64 = v56;
        v65 = [v61 fileURL];

        if (v65)
        {
          sub_267EF2B48();

          v66 = 0;
        }

        else
        {
          v66 = 1;
        }

        v58 = v123;
        __swift_storeEnumTagSinglePayload(v12, v66, 1, v123);
        v56 = v64;
        v67 = v64;
        v57 = v63;
        sub_267BBE134(v12, v1, v67, v63);
        OUTLINED_FUNCTION_8_6(v1);
        if (v46)
        {
LABEL_42:
          sub_267B9F98C(v1, v56, v57);
          ++v55;
        }

        else
        {
          v68 = *v112;
          (*v112)(v117, v1, v58);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = *(v113 + 16);
            sub_267C70BD8();
            v113 = v74;
          }

          v70 = *(v113 + 16);
          if (v70 >= *(v113 + 24) >> 1)
          {
            sub_267C70BD8();
            v113 = v75;
          }

          v71 = v113;
          *(v113 + 16) = v70 + 1;
          v72 = v71 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v70;
          v58 = v123;
          v68(v72, v117, v123);
          ++v55;
        }
      }

      v58 = v123;
      __swift_storeEnumTagSinglePayload(v1, 1, 1, v123);
      goto LABEL_42;
    }

    v84 = v115;
    v96 = OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v96, v97, 1, v123);
LABEL_68:
    sub_267B9F98C(v84, &qword_280229E20, &unk_267EFDCC0);
LABEL_78:
    OUTLINED_FUNCTION_110_2();
    if (!v46)
    {
LABEL_87:
      OUTLINED_FUNCTION_0();
    }

    v104 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v104, qword_280240FB0);

    v105 = sub_267EF89F8();
    v106 = sub_267EF95D8();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = OUTLINED_FUNCTION_48();
      v108 = OUTLINED_FUNCTION_52();
      v124 = v108;
      *v107 = 136315138;
      v109 = sub_267C38CFC();
      v111 = sub_267BA33E8(v109, v110, &v124);

      *(v107 + 4) = v111;
      _os_log_impl(&dword_267B93000, v105, v106, "#SendMessageSelfContext smsContext = %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v108);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_47();
  }

  else
  {
    OUTLINED_FUNCTION_110_2();
    if (!v46)
    {
      OUTLINED_FUNCTION_0();
    }

    v47 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
    v123 = sub_267EF89F8();
    v48 = sub_267EF95E8();
    if (os_log_type_enabled(v123, v48))
    {
      v49 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v49);
      _os_log_impl(&dword_267B93000, v123, v48, "#SendMessageSelfContext smsContext is not initialized!!!", 0x280228000, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_47();
  }
}

void sub_267C3ABD4()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v117 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v115 = v8 - v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v107 - v12;
  v14 = sub_267EF2D28();
  v15 = OUTLINED_FUNCTION_58(v14);
  v119 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_60();
  v113 = v19 - v20;
  OUTLINED_FUNCTION_115();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v114 = v25;
  OUTLINED_FUNCTION_115();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v107 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  v32 = sub_267BA9F38(0, &qword_2802294F0, 0x277D5AC78);
  sub_267EF2D18();
  v111 = v32;
  v112 = v31;
  v116 = sub_267BBC890(v31);
  v118 = [objc_allocWithZone(MEMORY[0x277D57568]) init];
  v33 = sub_267EF6FF8();
  v34 = sub_267EF6FC8();
  if (v34)
  {

    v33 = v34;
    sub_267EF6F98();
    OUTLINED_FUNCTION_54_1();

    v35 = sub_267EF37B8();
    v37 = v36;

    if (v37)
    {
      sub_267EF2CD8();
      OUTLINED_FUNCTION_8_6(v13);
      if (v38)
      {

        sub_267B9F98C(v13, &qword_280229430, &qword_267EFD2C0);
      }

      else
      {
        (*(v119 + 32))(v29, v13, v14);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v39 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);

        v33 = sub_267EF89F8();
        v40 = sub_267EF95D8();

        v109 = v33;
        if (os_log_type_enabled(v33, v40))
        {
          v33 = OUTLINED_FUNCTION_48();
          v41 = OUTLINED_FUNCTION_52();
          v110 = v2;
          v42 = v41;
          v122[0] = v41;
          *v33 = 136315138;
          v43 = sub_267BA33E8(v35, v37, v122);

          *(v33 + 1) = v43;
          v44 = v109;
          _os_log_impl(&dword_267B93000, v109, v40, "#SendMessageSelfContext logForegroundApp with taskId: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v2 = v110;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_4_4();
        }

        else
        {
        }

        v45 = v118;
        v46 = v119;
        if (v118)
        {
          v47 = OUTLINED_FUNCTION_17_5();
          v48(v47);
          v49 = v45;
          v33 = sub_267BBC890(v33);
          [v49 setTaskId_];
        }

        (*(v46 + 8))(v29, v14);
      }
    }
  }

  sub_267C3BDE4();
  OUTLINED_FUNCTION_8_6(v1);
  if (v38)
  {
    sub_267B9F98C(v1, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    v50 = v119;
    v51 = v114;
    (*(v119 + 32))(v114, v1, v14);
    v52 = v118;
    if (v118)
    {
      v53 = OUTLINED_FUNCTION_17_5();
      v54(v53);
      v55 = v52;
      v56 = sub_267BBC890(v33);
      [v55 setFlowId_];
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v57 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v57, qword_280240FB0);
    (*(v50 + 16))(v24, v51, v14);

    v58 = sub_267EF89F8();
    v59 = sub_267EF95D8();

    if (!os_log_type_enabled(v58, v59))
    {

      v72 = *(v50 + 8);
      v72(v24, v14);
      v72(v51, v14);
      goto LABEL_28;
    }

    v60 = v59;
    v110 = v2;
    v61 = v50;
    v62 = swift_slowAlloc();
    v122[0] = swift_slowAlloc();
    *v62 = 136315394;
    v63 = sub_267EF2CE8();
    v65 = v64;
    v66 = *(v61 + 8);
    v109 = v14;
    v108 = v66;
    v66(v24, v14);
    v67 = sub_267BA33E8(v63, v65, v122);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    if (!v34 || (sub_267EF6F98(), v68 = sub_267EF37B8(), v70 = v69, , !v70))
    {

      v70 = 0xE300000000000000;
      v68 = 7104878;
    }

    v71 = sub_267BA33E8(v68, v70, v122);

    *(v62 + 14) = v71;
    _os_log_impl(&dword_267B93000, v58, v60, "#SendMessageSelfContext logForegroundApp with flowId: %s created for taskId: %s", v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v14 = v109;
    v108(v114, v109);
    v2 = v110;
  }

  v52 = v118;
  v50 = v119;
LABEL_28:
  v73 = v115;
  if (v34)
  {

    sub_267EF6FA8();
    OUTLINED_FUNCTION_54_1();

    sub_267EF86C8();
    v75 = v74;

    if (v75)
    {
      OUTLINED_FUNCTION_12_4();
      sub_267EF2CD8();
      OUTLINED_FUNCTION_8_6(v73);
      if (v38)
      {
        sub_267B9F98C(v73, &qword_280229430, &qword_267EFD2C0);
      }

      else
      {
        (*(v50 + 32))(v113, v73, v14);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v76 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v76, qword_280240FB0);

        v77 = sub_267EF89F8();
        v78 = sub_267EF95D8();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = OUTLINED_FUNCTION_48();
          v80 = OUTLINED_FUNCTION_52();
          v122[0] = v80;
          *v79 = 136315138;
          v81 = OUTLINED_FUNCTION_12_4();
          *(v79 + 4) = sub_267BA33E8(v81, v82, v83);
          OUTLINED_FUNCTION_37_0(&dword_267B93000, v84, v85, "#SendMessageSelfContext logForegroundApp with trpId: %s");
          __swift_destroy_boxed_opaque_existential_0(v80);
          OUTLINED_FUNCTION_32_0();
          v52 = v118;
          OUTLINED_FUNCTION_32_0();
        }

        v86 = v119;
        v87 = v113;
        if (v52)
        {
          v88 = v112;
          (*(v119 + 16))(v112, v113, v14);
          v89 = v52;
          v90 = sub_267BBC890(v88);
          [v89 setTrpId_];

          v86 = v119;
          v87 = v113;
        }

        (*(v86 + 8))(v87, v14);
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v91 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v91, qword_280240FB0);

      v92 = sub_267EF89F8();
      v93 = sub_267EF95D8();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = OUTLINED_FUNCTION_48();
        v95 = OUTLINED_FUNCTION_52();
        v122[0] = v95;
        *v94 = 136315138;
        v96 = OUTLINED_FUNCTION_12_4();
        *(v94 + 4) = sub_267BA33E8(v96, v97, v98);
        OUTLINED_FUNCTION_37_0(&dword_267B93000, v99, v100, "#SendMessageSelfContext logForegroundApp with resultCandidateId: %s");
        __swift_destroy_boxed_opaque_existential_0(v95);
        OUTLINED_FUNCTION_32_0();
        v52 = v118;
        OUTLINED_FUNCTION_32_0();
      }

      if (v52)
      {
        v101 = OUTLINED_FUNCTION_12_4();
        sub_267C3C3E8(v101, v102, v52);
      }

      else
      {
      }
    }
  }

  sub_267B9A598(v117, &v120, &qword_280229508, &unk_267EFD960);
  if (v121)
  {
    sub_267BE58F4(&v120, v122);
    __swift_project_boxed_opaque_existential_0(v122, v122[3]);
    v103 = swift_allocObject();
    v103[2] = v52;
    v103[3] = v2;
    v104 = v116;
    v103[4] = v116;
    v105 = v52;

    v106 = v104;
    sub_267C0BC60(sub_267C3C4B0, v103);

    __swift_destroy_boxed_opaque_existential_0(v122);
  }

  else
  {

    sub_267B9F98C(&v120, &qword_280229508, &unk_267EFD960);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C3B648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  v6 = sub_267E7D370(a1);
  if (!v6)
  {
LABEL_62:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_267BAF0DC(v6);
  v9 = 0;
  v60 = (v7 & 0xC000000000000001);
LABEL_4:
  if (v9 == v8)
  {

    return;
  }

  v10 = (v7 & 0xC000000000000001);
  sub_267BBD0EC(v9, v60 == 0, v7);
  if (v60)
  {
    v11 = MEMORY[0x26D609870](v9, v7);
  }

  else
  {
    v11 = *(v7 + 32 + 8 * v9);
  }

  v12 = v11;
  if (__OFADD__(v9++, 1))
  {
    __break(1u);
    goto LABEL_60;
  }

  if (qword_280228740 != -1)
  {
    swift_once();
  }

  v14 = qword_280240AA0;
  v15 = sub_267D24554(v12);
  if (!v16)
  {
    __break(1u);
    goto LABEL_62;
  }

  v17 = v16;
  if (*(v14 + 16))
  {
    v5 = v15;
    v18 = *(v14 + 40);
    sub_267EF9FC8();
    sub_267EF9128();
    v19 = sub_267EFA018();
    v20 = ~(-1 << *(v14 + 32));
    while (1)
    {
      v4 = v19 & v20;
      if (((*(v14 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
      {
        break;
      }

      v21 = (*(v14 + 48) + 16 * v4);
      if (*v21 != v5 || v17 != v21[1])
      {
        v23 = sub_267EF9EA8();
        v19 = v4 + 1;
        if ((v23 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_4;
    }
  }

  v24 = sub_267D244E8(v12);
  if (v25)
  {
    v4 = v24;
    v7 = v25;
    v60 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
    [v60 setEventMetadata_];
    v26 = *(a3 + 24);
    v5 = 0x280228000uLL;
    if (v26)
    {
      v59 = v26;
      v27 = sub_267C3C44C(v59);
      if (v28)
      {
        v29 = v27;
        v30 = v28;

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v31 = sub_267EF8A08();
        __swift_project_value_buffer(v31, qword_280240FB0);

        v32 = sub_267EF89F8();
        v33 = sub_267EF95D8();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v61[0] = v35;
          *v34 = 136315138;
          v36 = sub_267BA33E8(v29, v30, v61);

          *(v34 + 4) = v36;
          _os_log_impl(&dword_267B93000, v32, v33, "#SendMessageSelfContext have foregroundAppBundleId sampled in previous turn %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x26D60A7B0](v35, -1, -1);
          MEMORY[0x26D60A7B0](v34, -1, -1);
        }

        else
        {
        }

        [v59 setLinkId_];
        if (!v60)
        {
          v55 = v59;
LABEL_53:

          return;
        }

        v49 = v60;
        [v49 setSmsAttachmentMetadataTier1_];

        v48 = v60;
LABEL_43:
        v50 = [v48 smsAttachmentMetadataTier1];
        if (v50)
        {

          if (*(v5 + 2072) != -1)
          {
            swift_once();
          }

          v51 = sub_267EF8A08();
          __swift_project_value_buffer(v51, qword_280240FB0);
          v52 = sub_267EF89F8();
          v53 = sub_267EF95D8();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_267B93000, v52, v53, "#SendMessageSelfContext emitting SmsAttachmentMetadataTier1 SELF event", v54, 2u);
            MEMORY[0x26D60A7B0](v54, -1, -1);
          }

          [objc_msgSend(objc_opt_self() sharedStream)];

          swift_unknownObjectRelease();
          return;
        }

        v55 = v60;
        goto LABEL_53;
      }
    }

    if ((sub_267EF9218() & 1) == 0 && (sub_267C3C2EC(0xAuLL) + 1) % 10)
    {

      v7 = 0xED00007070417033;
      v4 = 0x6465746361646572;
    }

    v37 = [objc_allocWithZone(MEMORY[0x277D576D0]) init];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
      v40 = sub_267EF8FF8();
      [v39 setForegroundAppBundleId_];

      [v39 setLinkId_];
    }

    v41 = *(a3 + 24);
    *(a3 + 24) = v38;
    v10 = v38;

    [v60 setSmsAttachmentMetadataTier1_];
    if (qword_280228818 == -1)
    {
LABEL_35:
      v42 = sub_267EF8A08();
      __swift_project_value_buffer(v42, qword_280240FB0);

      v43 = sub_267EF89F8();
      v44 = sub_267EF95D8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v61[0] = v46;
        *v45 = 136315138;
        v47 = sub_267BA33E8(v4, v7, v61);

        *(v45 + 4) = v47;
        _os_log_impl(&dword_267B93000, v43, v44, "#SendMessageSelfContext sampling foregroundAppBundleId for the first time, result: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x26D60A7B0](v46, -1, -1);
        MEMORY[0x26D60A7B0](v45, -1, -1);
      }

      else
      {
      }

      v48 = v60;
      if (!v60)
      {
        return;
      }

      goto LABEL_43;
    }

LABEL_60:
    swift_once();
    goto LABEL_35;
  }
}

void sub_267C3BDE4()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = sub_267EF2D28();
  v12 = OUTLINED_FUNCTION_58(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  if (v2 && (sub_267EF6FA8(), sub_267EF8678(), v25 = v24, , v25))
  {
    sub_267EF2CD8();

    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_267B9F98C(v10, &qword_280229430, &qword_267EFD2C0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v26 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
      v27 = sub_267EF89F8();
      v28 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v28))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v29, v30, "#SendMessageSelfContext SELF Log, invalid executionRequestId string, cannot derive flowId form it");
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_13_7();
    }

    else
    {
      v61 = *(v14 + 32);
      v61(v23, v10, v11);
      v41 = objc_opt_self();
      v42 = sub_267EF2CF8();
      v43 = [v41 derivedIdentifierForComponent:3 fromSourceIdentifier:v42];

      sub_267EF2D08();
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v62 = v4;
      v44 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
      (*(v14 + 16))(v19, v0, v11);
      v45 = sub_267EF89F8();
      v46 = sub_267EF95D8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_48();
        v60 = v14 + 32;
        v48 = v47;
        v59 = OUTLINED_FUNCTION_52();
        v63 = v59;
        *v48 = 136315138;
        v58 = sub_267EF2CE8();
        v50 = v49;
        v51 = *(v14 + 8);
        v51(v19, v11);
        v52 = sub_267BA33E8(v58, v50, &v63);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_267B93000, v45, v46, "#SendMessageSelfContext SELF Log, created flowId: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();

        v51(v23, v11);
      }

      else
      {

        v53 = *(v14 + 8);
        v53(v19, v11);
        v53(v23, v11);
      }

      v61(v62, v0, v11);
    }

    OUTLINED_FUNCTION_19_5();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    OUTLINED_FUNCTION_47();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v33))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_38_1(&dword_267B93000, v34, v35, "#SendMessageSelfContext SELF Log, invalid executionRequestId, cannot derive flowId form it");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_47();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }
}

unint64_t sub_267C3C2EC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D60A7C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D60A7C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267C3C378(void *a1)
{
  v1 = [a1 personTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267C3C3E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setResultCandidateId_];
}

uint64_t sub_267C3C44C(void *a1)
{
  v1 = [a1 foregroundAppBundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267C3C4C4()
{
  result = qword_280229518;
  if (!qword_280229518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229510, &qword_267EFD970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229518);
  }

  return result;
}

unint64_t sub_267C3C528()
{
  result = qword_280229540;
  if (!qword_280229540)
  {
    sub_267BA9F38(255, &qword_28022BB60, 0x277CD3E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229540);
  }

  return result;
}

uint64_t sub_267C3C590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_267C3C5D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267C3C61C()
{
  v0 = sub_267EF9D38();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_267C3C668()
{
  sub_267C3D854();
  result = sub_267DCF850();
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  }

  qword_280229548 = result;
  return result;
}

uint64_t sub_267C3C6D0()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v0 = OUTLINED_FUNCTION_52();
    v39 = v0;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0x696C6F50746E6968, 0xEA00000000007963, &v39);
    _os_log_impl(&dword_267B93000, v2, v3, "#AnnounceHintExperimentController isExperimentEnabled for factorName: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v0);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_32_0();
  }

  v5 = [objc_opt_self() clientWithIdentifier_];
  v6 = sub_267EF8FF8();
  v7 = sub_267EF8FF8();
  v8 = [v5 levelForFactor:v6 withNamespaceName:v7];

  if (!v8)
  {
    v31 = sub_267EF89F8();
    v32 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_267B93000, v31, v32, "#AnnounceHintExperimentController trialClient.levelForFactor returned null, returning nil", v33, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    return 4;
  }

  v9 = v8;
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_48();
    v39 = OUTLINED_FUNCTION_5_4();
    *v0 = 136315138;
    v12 = [v9 debugDescription];
    v13 = sub_267EF9028();
    v14 = v5;
    v16 = v15;

    v17 = sub_267BA33E8(v13, v16, &v39);
    v5 = v14;

    *(v0 + 4) = v17;
    _os_log_impl(&dword_267B93000, v10, v11, "AnnounceHintExperimentController levelForFactor: %s", v0, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  v18 = sub_267BC31D0(v9);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xD000000000000017;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0x8000000267F12A00;
  }

  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_48();
    v25 = OUTLINED_FUNCTION_52();
    v39 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_267BA33E8(v20, v21, &v39);
    _os_log_impl(&dword_267B93000, v22, v23, "AnnounceHintExperimentController factorStringValue: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v26 = sub_267C3C61C();
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  v29 = OUTLINED_FUNCTION_5_2(v28);
  if (v26 == 4)
  {
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_267B93000, v27, v28, "#AnnounceHintExperimentController Failed to construct HintPolicy from factorStringValue. Returning nil.", v30, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    return 4;
  }

  if (v29)
  {
    OUTLINED_FUNCTION_48();
    v39 = OUTLINED_FUNCTION_5_4();
    *v22 = 136315138;
    v34 = 0xE700000000000000;
    v35 = 0x6C6F72746E6F63;
    switch(v26)
    {
      case 1:
        v36 = 1701998445;
        goto LABEL_29;
      case 2:
        v34 = 0x8000000267F0F8F0;
        v35 = 0xD000000000000011;
        break;
      case 3:
        v36 = 1936942444;
LABEL_29:
        v35 = v36 | 0x746E694800000000;
        v34 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v37 = sub_267BA33E8(v35, v34, &v39);

    *(v22 + 4) = v37;
    _os_log_impl(&dword_267B93000, v27, v28, "#AnnounceHintExperimentController HintPolicy found: %s", v22, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  return v26;
}

void sub_267C3CBF8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_267EF6FF8();
  if (!sub_267EF6FC8())
  {
    goto LABEL_9;
  }

  sub_267EF6FA8();

  v6 = sub_267EF8678();
  v8 = v7;

  if (!v8)
  {
    goto LABEL_9;
  }

  sub_267C3D854();

  v9 = sub_267DCF850();
  if (!v9)
  {

LABEL_9:
    v10 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    goto LABEL_12;
  }

  v10 = v9;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);

  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_48();
    v15 = OUTLINED_FUNCTION_52();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_267BA33E8(v6, v8, &v21);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_267B93000, v12, v13, "#AnnounceHintExperimentController trigger log for requestId: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

LABEL_12:
  v17 = v10;
  sub_267EF93D8();
  v18 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = v1;
  sub_267E8FA18();
}

uint64_t sub_267C3CED0()
{
  v17 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[7] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v16 = v5;
    *v4 = 136315138;
    if (qword_280228700 != -1)
    {
      OUTLINED_FUNCTION_1_19();
    }

    v6 = [qword_280229548 UUIDString];
    v7 = sub_267EF9028();
    v9 = v8;

    v10 = sub_267BA33E8(v7, v9, &v16);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_267B93000, v2, v3, "#AnnounceHintExperimentController async trigger log for codePath: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v0[8] = [objc_allocWithZone(sub_267EF8988()) init];
  if (qword_280228700 != -1)
  {
    OUTLINED_FUNCTION_1_19();
  }

  v11 = qword_280229548;
  v0[9] = qword_280229548;
  v12 = *(MEMORY[0x277CE4838] + 4);
  v15 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_267C3D104;

  return v15(v11, &unk_2878CA770);
}

uint64_t sub_267C3D104()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267C3D464, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v6 = *(MEMORY[0x277CE4830] + 4);
    v11 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
    v7 = swift_task_alloc();
    v3[12] = v7;
    *v7 = v3;
    v7[1] = sub_267C3D294;
    v8 = v3[8];
    v9 = v3[9];

    return v11(v9, v5);
  }
}

uint64_t sub_267C3D294()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v5 + 104) = v0;

  if (v0)
  {
    v6 = sub_267C3D588;
  }

  else
  {
    v6 = sub_267C3D3A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267C3D3A0()
{
  v1 = *(v0 + 56);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#AnnounceHintExperimentController trigger log async complete", v6, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267C3D464()
{
  v18 = v0;
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);

  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_11(4.8149e-34);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = sub_267EF9F68();
    v12 = sub_267BA33E8(v10, v11, &v17);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v13, v14, "#AnnounceHintExperimentController error during trigger logging: %s");
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267C3D588()
{
  v18 = v0;
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_11(4.8149e-34);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = sub_267EF9F68();
    v12 = sub_267BA33E8(v10, v11, &v17);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v13, v14, "#AnnounceHintExperimentController error during trigger logging: %s");
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267C3D6AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267C3D76C;

  return sub_267C3CEB0(a1, v4, v5, v7);
}

uint64_t sub_267C3D76C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

unint64_t sub_267C3D854()
{
  result = qword_280229550;
  if (!qword_280229550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229550);
  }

  return result;
}

uint64_t sub_267C3D898(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v6 = sub_267EF7D48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  (*(v7 + 104))(v10, *MEMORY[0x277D55428], v6);

  v11 = sub_267EF8F28();
  sub_267DCE6C4(v10, v11, a2, a3);

  return (*(v7 + 8))(v10, v6);
}

void sub_267C3D9E8(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229558, &unk_267F02FE0);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = a1;
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_267B93000, v21, v22, "It's not INSendMessageIntent: %@", v23, 0xCu);
      sub_267B9F98C(v24, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v26 = sub_267EF8F28();
    v27 = *MEMORY[0x277D553B0];
    v28 = sub_267EF7CC8();
    OUTLINED_FUNCTION_22(v28);
    (*(v29 + 104))(v12, v27);
    swift_storeEnumTagMultiPayload();
    a3(v12, v26);

    goto LABEL_21;
  }

  v39 = a1;
  if ((sub_267EF9718() & 1) == 0 && (sub_267EF96E8() & 1) == 0)
  {
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
      _os_log_impl(&dword_267B93000, v31, v32, "#AttachmentsAppResolver: received an intent without attachment", v33, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v34 = sub_267EF8F28();
    v35 = *MEMORY[0x277D553B0];
    v36 = sub_267EF7CC8();
    OUTLINED_FUNCTION_22(v36);
    (*(v37 + 104))(v12, v35);
    swift_storeEnumTagMultiPayload();
    a3(v12, v34);

LABEL_21:
    sub_267B9F98C(v12, &qword_280229558, &unk_267F02FE0);
    return;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267B93000, v14, v15, "#AttachmentsAppResolver: received an intent with attachments, select 1st-party app", v16, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF7C38();
  v17 = sub_267EF7C08();
  sub_267C3D898(v17, a3, a4);

  v18 = v39;
}

uint64_t sub_267C3DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_267C314BC(a1, a2, a3, a4);
}

uint64_t sub_267C3DF88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_267EF2BA8();
  __swift_allocate_value_buffer(v4, qword_280229560);
  v5 = __swift_project_value_buffer(v4, qword_280229560);
  sub_267EF2B88();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_267C3E09C()
{
  OUTLINED_FUNCTION_12();
  v1[29] = v2;
  v1[30] = v0;
  v1[28] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[31] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF2BA8();
  v1[32] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[33] = v8;
  v10 = *(v9 + 64);
  v1[34] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[35] = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267C3E19C()
{
  if (qword_280228818 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v1 = sub_267EF8A08();
    __swift_project_value_buffer(v1, qword_280240FB0);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95D8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v4);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v2, v3, "#SendMessageHandleIntentFlowStrategy makeIntentHandledResponse");
      OUTLINED_FUNCTION_26();
    }

    v5 = *(v0 + 232);
    v6 = *(v0 + 240);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
    v8 = sub_267EF4648();
    *(v0 + 288) = v8;
    v9 = sub_267EF4668();
    *(v0 + 296) = v9;
    v10 = sub_267EF4638();
    *(v0 + 304) = v10;
    v11 = *(v6 + 56);
    *(v11 + 214) = 1;
    v12 = sub_267E76140(v9);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v86 = v11;
    v87 = v9;
    v88 = v8;
    v14 = sub_267BAF0DC(v12);
    v15 = 0;
    v7 = &off_279C2E000;
    while (1)
    {
      if (v14 == v15)
      {

        goto LABEL_19;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D609870](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = [v16 file];
      if (v18)
      {

        goto LABEL_18;
      }

      v19 = [v17 sharedLink];
      v20 = *(v0 + 280);
      if (v19)
      {
        v25 = v19;
        v26 = *(v0 + 264);
        v7 = *(v0 + 272);
        v27 = *(v0 + 256);

        sub_267EF2B48();

        (*(v26 + 32))(v20, v7, v27);
        __swift_storeEnumTagSinglePayload(v20, 0, 1, v27);
        sub_267B9F98C(v20, &qword_280229E20, &unk_267EFDCC0);
LABEL_18:
        sub_267E98208(0);
LABEL_19:
        v9 = v87;
        v8 = v88;
        v11 = v86;
        goto LABEL_20;
      }

      v21 = *(v0 + 256);

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      sub_267B9F98C(v20, &qword_280229E20, &unk_267EFDCC0);
      ++v15;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    OUTLINED_FUNCTION_0();
  }

LABEL_20:
  v28 = sub_267C472B4(v10);
  if (v28 && (sub_267BAF0DC(v28), OUTLINED_FUNCTION_58_1(), , v7))
  {
    v29 = sub_267EF89F8();
    v30 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v30))
    {
      v31 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v31);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_26();
    }

    v38 = *(v0 + 240);
    v37 = *(v0 + 248);

    v39 = *(v38 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_sharedContextProvider);

    v40 = v9;
    v41 = v10;

    sub_267EF2CB8();
    v42 = type metadata accessor for TimedSentMessageContext(0);
    *(v37 + v42[5]) = 0x403E000000000000;
    *(v37 + v42[6]) = v8;
    *(v37 + v42[7]) = v40;
    *(v37 + v42[8]) = v41;
    *(v37 + v42[9]) = v11;
    v43 = v37;
    v44 = 0;
  }

  else
  {
    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v46))
    {
      v47 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v47);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_26();
    }

    v54 = *(v0 + 240);
    v53 = *(v0 + 248);

    v55 = *(v54 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_sharedContextProvider);
    v42 = type metadata accessor for TimedSentMessageContext(0);
    v43 = v53;
    v44 = 1;
  }

  __swift_storeEnumTagSinglePayload(v43, v44, 1, v42);
  sub_267C4CF24(*(v0 + 248));
  swift_beginAccess();
  sub_267B9A598(v11 + 224, v0 + 56, &qword_2802295C8, &qword_267EFDD28);
  if (*(v0 + 80))
  {
    sub_267B9A5E8((v0 + 56), v0 + 16);
    sub_267EF7C18();
    if (v56)
    {
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v59);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_62_1((v0 + 16), *(v0 + 40));
      if (*(v11 + 88))
      {
        v65 = *(v11 + 88);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
        sub_267EF8F28();
      }

      v66 = *v57;

      sub_267EEA0E0();

      *(v0 + 168) = 0;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      swift_beginAccess();
      sub_267C26980(v0 + 136, v11 + 224, &qword_2802295C8, &qword_267EFDD28);
      swift_endAccess();
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_267B9F98C(v0 + 56, &qword_2802295C8, &qword_267EFDD28);
  }

  __swift_project_boxed_opaque_existential_0((*(v0 + 240) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(*(v0 + 240) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if ((sub_267CC8B28() & 1) == 0)
  {
    goto LABEL_43;
  }

  v67 = *(v0 + 240);
  v68 = v67[5];
  v69 = v67[6];
  OUTLINED_FUNCTION_129(v67 + 2);
  v70 = OUTLINED_FUNCTION_26_0();
  v71(v70);
  v73 = *(v0 + 120);
  v72 = *(v0 + 128);
  OUTLINED_FUNCTION_92_3((v0 + 96));
  OUTLINED_FUNCTION_66();
  LOBYTE(v73) = sub_267BF30D0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v73)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 312) = v74;
    *v74 = v75;
    v74[1] = sub_267C3E888;
    v76 = *(v0 + 232);
    v77 = *(v0 + 240);
    v78 = *(v0 + 224);
    OUTLINED_FUNCTION_15();

    return sub_267C42BEC();
  }

  else
  {
LABEL_43:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 328) = v81;
    *v81 = v82;
    v81[1] = sub_267C3EA0C;
    v83 = *(v0 + 240);
    v84 = *(v0 + 224);
    OUTLINED_FUNCTION_15();

    return sub_267C3EFD8();
  }
}

uint64_t sub_267C3E888()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C3E980()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_2();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_267C3EA0C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 336) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C3EB04()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v0 + 320);
  OUTLINED_FUNCTION_89_2();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C3EB8C()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v0 + 336);
  OUTLINED_FUNCTION_89_2();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C3EC14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C3EC40()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v0[5] = sub_267EF4648();
  v0[6] = sub_267EF4668();
  v2 = sub_267EF4638();
  v0[7] = v2;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_267B9F98C(v8, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v15;
  *v15 = v16;
  v15[1] = sub_267C3EE0C;
  v17 = v0[4];
  v18 = v0[2];
  OUTLINED_FUNCTION_36_0();

  return sub_267CA5F80();
}

uint64_t sub_267C3EE0C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C3EF04()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267C3EF6C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_17();
  v4 = *(v0 + 72);

  return v3();
}

uint64_t sub_267C3EFD8()
{
  OUTLINED_FUNCTION_12();
  v1[68] = v0;
  v1[67] = v2;
  v1[66] = v3;
  v1[65] = v4;
  v1[64] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[69] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[70] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF4CC8();
  v1[71] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[72] = v13;
  v15 = *(v14 + 64);
  v1[73] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF48A8();
  v1[74] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[75] = v17;
  v19 = *(v18 + 64);
  v1[76] = OUTLINED_FUNCTION_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90);
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64);
  v1[77] = OUTLINED_FUNCTION_2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v23);
  v25 = *(v24 + 64);
  v1[78] = OUTLINED_FUNCTION_50();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v26 = sub_267EF2BA8();
  v1[81] = v26;
  OUTLINED_FUNCTION_30_0(v26);
  v1[82] = v27;
  v29 = *(v28 + 64);
  v1[83] = OUTLINED_FUNCTION_50();
  v1[84] = swift_task_alloc();
  v30 = sub_267EF81B8();
  v1[85] = v30;
  OUTLINED_FUNCTION_30_0(v30);
  v1[86] = v31;
  v33 = *(v32 + 64);
  v1[87] = OUTLINED_FUNCTION_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v34);
  v36 = *(v35 + 64);
  v1[88] = OUTLINED_FUNCTION_2();
  v37 = sub_267EF79B8();
  v1[89] = v37;
  OUTLINED_FUNCTION_30_0(v37);
  v1[90] = v38;
  v40 = *(v39 + 64);
  v1[91] = OUTLINED_FUNCTION_50();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_267C3F2D4()
{
  v252 = v0;
  if (qword_280228818 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v1 = sub_267EF8A08();
    v2 = __swift_project_value_buffer(v1, qword_280240FB0);
    *(v0 + 752) = v2;
    v237 = v2;
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = *(v0 + 544);
    v12 = *(v0 + 528);

    v13 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider), *(v11 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider + 24));
    LODWORD(v233) = sub_267BD1028();
    v241 = v0 + 728;
    *(v0 + 976) = v233 & 1;
    v14 = v11[5];
    v15 = v11[6];
    __swift_project_boxed_opaque_existential_0(v11 + 2, v14);
    OUTLINED_FUNCTION_77_1();
    v16(v14, v15);
    v17 = v11[7];
    v18 = v11[14];
    v19 = [v12 speakableGroupName];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 spokenPhrase];
      sub_267EF9028();
    }

    else
    {
      v22 = *(v0 + 528);
      v23 = *(v0 + 48);
      OUTLINED_FUNCTION_62_1((v0 + 16), *(v0 + 40));
      v24 = sub_267EF3C48();
      v25 = sub_267BCEA0C(v22);
      if (v24)
      {
        sub_267DA2578(v25);
      }

      else
      {
        sub_267DA2180();
      }
    }

    v26 = *(v0 + 744);
    v27 = *(v0 + 736);
    v28 = *(v0 + 528);
    v29 = *(v0 + 520);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_267EF90F8();

    v30 = sub_267EF7C18();
    v32 = v31 ? v30 : 0;
    v33 = v31 ? v31 : 0xE000000000000000;
    v34 = sub_267DA133C(v28, v32, v33);
    *(v0 + 760) = v34;

    *(v0 + 496) = v34;
    sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
    sub_267EF8348();
    v35 = *(v0 + 728);
    v36 = *(v0 + 536);
    v37 = *(v0 + 528);
    sub_267BA9F38(0, &qword_280229320, 0x277CD3D58);
    v38 = v36;
    v39 = sub_267E9299C(v37, v36);
    *(v0 + 768) = v39;
    [v39 setIntentHandlingStatus_];
    *(v0 + 504) = v39;
    sub_267EF8348();
    sub_267EF6FF8();
    v230 = v39;
    v223 = v34;
    if (sub_267EF6FC8())
    {
      v50 = *(v0 + 704);
      sub_267EF6FA8();

      sub_267EF8698();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = *(v0 + 704);
    v53 = *(v0 + 696);
    v54 = *(v0 + 544);
    v55 = *(v0 + 536);
    v56 = *(v0 + 528);
    v57 = *(v0 + 520);
    v58 = sub_267EF70D8();
    __swift_storeEnumTagSinglePayload(v52, v51, 1, v58);
    LODWORD(v226) = *(v17 + 210);
    *(v0 + 977) = v226;
    v250 = xmmword_267EFD5B0;
    v251 = 4;
    sub_267C5DD80(&v250, v59, v60, v61, v62, v63, v64, v65, v208, v212, v216);
    HIDWORD(v220) = sub_267C4507C();
    *(v0 + 978) = BYTE4(v220) & 1;
    *(v0 + 979) = sub_267C4689C() & 1;
    sub_267EF7C18();
    sub_267EF9778();

    LOBYTE(v53) = sub_267EF96E8();
    v66 = sub_267E76140(v56);
    v67 = v66;
    *(v0 + 776) = v66;
    if ((v53 & 1) == 0)
    {
      break;
    }

    if (!v66)
    {
      v137 = *(v0 + 648);
      v138 = *(v0 + 640);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      goto LABEL_57;
    }

    v68 = *(v0 + 656);
    v69 = 0;
    v246 = v66 & 0xC000000000000001;
    v248.i64[0] = sub_267BAF0DC(v66);
    v245 = v67 & 0xFFFFFFFFFFFFFF8;
    v208 = v68;
    v212 = (v68 + 32);
    v216 = MEMORY[0x277D84F90];
    v70 = &unk_267EFDCC0;
    while (1)
    {
      if (v248.i64[0] == v69)
      {
        v110 = *(v0 + 648);
        v111 = *(v0 + 640);

        sub_267C8F020(v216, v111);

        if (__swift_getEnumTagSinglePayload(v111, 1, v110) != 1)
        {
          (*v212)(*(v0 + 672), *(v0 + 640), *(v0 + 648));
          v112 = sub_267EF89F8();
          v113 = sub_267EF95D8();
          v114 = OUTLINED_FUNCTION_10_2(v113);
          if (v114)
          {
            v122 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v122);
            OUTLINED_FUNCTION_21();
            _os_log_impl(v123, v124, v125, v126, v127, 2u);
            OUTLINED_FUNCTION_26();
          }

          v128 = *(v0 + 744);
          v129 = *(v0 + 672);
          v130 = *(v0 + 544);
          v131 = *(v0 + 520);
          OUTLINED_FUNCTION_63_3(v114, v115, v116, v117, v118, v119, v120, v121, v208, v212, v216, v220, v223, v226, v230, v233, v237, v241);

          OUTLINED_FUNCTION_62_1((v130 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v130 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
          v132 = swift_task_alloc();
          *(v0 + 784) = v132;
          *(v132 + 16) = v131;
          *(v132 + 24) = v128;
          *(v132 + 32) = v129;
          *(v132 + 40) = vextq_s8(v248, v248, 8uLL);
          v133 = *v112;
          v134 = swift_task_alloc();
          *(v0 + 792) = v134;
          *v134 = v0;
          v134[1] = sub_267C40094;
          OUTLINED_FUNCTION_78_1();
          OUTLINED_FUNCTION_54_3();

          return sub_267CC6154();
        }

LABEL_57:
        sub_267B9F98C(*(v0 + 640), &qword_280229E20, &unk_267EFDCC0);
        v143 = sub_267EF89F8();
        sub_267EF95E8();
        OUTLINED_FUNCTION_56_2();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = OUTLINED_FUNCTION_32();
          *v145 = 0;
          _os_log_impl(&dword_267B93000, v143, v237, "#SendMessageHandleIntentFlowStrategy URL is missing for an audio message", v145, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        v146 = *(v0 + 736);
        v147 = *(v0 + 728);
        v148 = *(v0 + 720);
        v149 = *(v0 + 712);
        v150 = *(v0 + 704);
        v151 = *(v0 + 696);
        v152 = *(v0 + 688);
        v153 = *(v0 + 680);

        sub_267C266B0();
        swift_allocError();
        *v154 = 0xD000000000000024;
        v154[1] = 0x8000000267F12380;
        swift_willThrow();

        sub_267B9F98C(v150, &qword_2802295B0, &unk_267EFDCA0);
        (*(v152 + 8))(v151, v153);
        v155 = *(v148 + 8);
        v155(v147, v149);
        v155(v146, v149);
        v156 = v155;
        v40 = *(v0 + 736);
        v41 = *(v0 + 728);
        v42 = *(v0 + 704);
        v43 = *(v0 + 696);
        v44 = *(v0 + 672);
        v45 = *(v0 + 664);
        v46 = *(v0 + 640);
        v229 = *(v0 + 632);
        v234 = *(v0 + 624);
        v238 = *(v0 + 616);
        v242 = *(v0 + 608);
        v47 = *(v0 + 584);
        v247 = *(v0 + 560);
        v249 = *(v0 + 552);
        v156(*(v0 + 744), *(v0 + 712));

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_54_3();

        __asm { BRAA            X1, X16 }
      }

      if (v246)
      {
        v71 = MEMORY[0x26D609870](v69, v67);
      }

      else
      {
        if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v71 = *(v67 + 8 * v69 + 32);
      }

      v72 = v71;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v73 = v70;
      v74 = [v71 audioMessageFile];
      if (!v74)
      {
        v79 = *(v0 + 648);
        v80 = *(v0 + 632);

        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v81, v82, v83, v79);
        v70 = v73;
        goto LABEL_37;
      }

      v75 = v74;
      v76 = [v74 fileURL];

      if (v76)
      {
        v77 = *(v0 + 624);
        sub_267EF2B48();

        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v84 = *(v0 + 648);
      v85 = *(v0 + 632);
      v86 = *(v0 + 624);

      __swift_storeEnumTagSinglePayload(v86, v78, 1, v84);
      v70 = v73;
      sub_267BBE134(v86, v85, &qword_280229E20, v73);
      if (__swift_getEnumTagSinglePayload(v85, 1, v84) == 1)
      {
LABEL_37:
        sub_267B9F98C(*(v0 + 632), &qword_280229E20, v70);
        ++v69;
      }

      else
      {
        v87 = *v212;
        (*v212)(*(v0 + 664), *(v0 + 632), *(v0 + 648));
        v88 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = *(v216 + 16);
          sub_267C70BD8();
          v88 = v93;
        }

        v89 = *(v88 + 16);
        if (v89 >= *(v88 + 24) >> 1)
        {
          sub_267C70BD8();
          v88 = v94;
        }

        v90 = *(v0 + 664);
        v91 = *(v0 + 648);
        *(v88 + 16) = v89 + 1;
        v216 = v88;
        v87(v88 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v89, v90, v91);
        ++v69;
        v70 = v73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    OUTLINED_FUNCTION_0();
  }

  if (v66)
  {
    v95 = sub_267EF89F8();
    v96 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v96))
    {
      v97 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v97);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v98, v99, v100, v101, v102, 2u);
      OUTLINED_FUNCTION_26();
    }

    v103 = v11[5];
    v104 = v11[6];
    OUTLINED_FUNCTION_129(v11 + 2);
    v105 = OUTLINED_FUNCTION_26_0();
    v106(v105);
    *(v0 + 816) = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v107 = swift_task_alloc();
    *(v0 + 824) = v107;
    *v107 = v0;
    v107[1] = sub_267C403FC;
    OUTLINED_FUNCTION_54_3();

    __asm { BR              X0 }
  }

  v157 = *(v0 + 528);
  if (sub_267D28BAC())
  {
    v164 = *(v0 + 744);
    v165 = *(v0 + 696);
    v166 = *(v0 + 528);
    v167 = *(v0 + 520);
    OUTLINED_FUNCTION_63_3(*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns, *(*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24), v158, v159, v160, v161, v162, v163, v209, v213, v217, v220, v223, v226, v230, v233, v237, v241);
    OUTLINED_FUNCTION_62_1(v168, v169);
    v170 = swift_task_alloc();
    *(v0 + 872) = v170;
    v170[1].i64[0] = v167;
    v170[1].i64[1] = v164;
    v170[2].i64[0] = v166;
    v170[2].i64[1] = v165;
    OUTLINED_FUNCTION_79_1(v170, v171, v172, v173, v174, v175, v176, v177, v210, v214, v218, v221, v224, v227, v231, v235, v239, v243, v245, v246, v178);
    v179 = swift_task_alloc();
    *(v0 + 880) = v179;
    *v179 = v0;
    v179[1] = sub_267C40AA4;
    OUTLINED_FUNCTION_54_3();

    return sub_267CC66E0();
  }

  else
  {
    v181 = sub_267EF89F8();
    v182 = sub_267EF95D8();
    v183 = OUTLINED_FUNCTION_10_2(v182);
    if (v183)
    {
      v191 = OUTLINED_FUNCTION_32();
      *v191 = 0;
      _os_log_impl(&dword_267B93000, v181, v56, "#SendMessageHandleIntentFlowStrategy executing pattern to inform sent text message", v191, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v192 = *(v0 + 744);
    v193 = *(v0 + 696);
    v194 = *(v0 + 544);
    v195 = *(v0 + 528);
    v196 = *(v0 + 520);
    OUTLINED_FUNCTION_63_3(v183, v184, v185, v186, v187, v188, v189, v190, v209, v213, v217, v220, v223, v226, v230, v233, v237, v241);

    OUTLINED_FUNCTION_62_1((v194 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v194 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
    v197 = swift_task_alloc();
    *(v0 + 904) = v197;
    v197[1].i64[0] = v196;
    v197[1].i64[1] = v192;
    v197[2].i64[0] = v195;
    v197[2].i64[1] = v193;
    OUTLINED_FUNCTION_79_1(v197, v198, v199, v200, v201, v202, v203, v204, v211, v215, v219, v222, v225, v228, v232, v236, v240, v244, v245, v246, v205);
    v206 = swift_task_alloc();
    *(v0 + 912) = v206;
    *v206 = v0;
    v206[1] = sub_267C40DA0;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_54_3();

    return sub_267CC6C48();
  }
}

uint64_t sub_267C40094()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[99];
  *v4 = *v2;
  v3[100] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 784);
  if (!v0)
  {
    v3[101] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C401B8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 672);
  v2 = *(v0 + 648);
  v3 = *(*(v0 + 656) + 8);
  v4 = *(v0 + 808);
  v5 = OUTLINED_FUNCTION_66();
  v3(v5);
  OUTLINED_FUNCTION_61_5(*(v0 + 808));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_85_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_2_19(v7);

  return sub_267C469FC(v9);
}

uint64_t sub_267C40258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[96];
  v25 = v22[95];
  v47 = v22[91];
  v48 = v22[92];
  OUTLINED_FUNCTION_24_3();
  v46 = v22[87];
  v26 = v22[86];
  v27 = v22[85];
  v28 = v22[84];
  v29 = v22[82];
  v30 = v22[81];

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  (*(v29 + 8))(v28, v30);
  (*(v26 + 8))(v46, v27);
  v32 = *(v20 + 8);
  v32(v47, v21);
  v32(v48, v21);
  v33 = v22[100];
  OUTLINED_FUNCTION_3_12();
  v34 = v22[84];
  v35 = v22[83];
  v36 = OUTLINED_FUNCTION_1_20();
  (v32)(v36);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, v46, v47, v48, a18, a19, a20);
}

uint64_t sub_267C403FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 824);
  *v2 = *v0;
  *(v1 + 832) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C404E4()
{
  v1 = (v0 + 296);
  v2 = *(v0 + 832);
  v3 = *(v0 + 776);
  sub_267EF8458();

  if (*(v0 + 440))
  {
    v4 = *(v0 + 832);
    v5 = *(v0 + 616);
    sub_267B9A5E8((v0 + 416), v0 + 376);
    sub_267B9AFEC(v0 + 376, v0 + 456);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  }

  else
  {
    v6 = *(v0 + 616);

    sub_267B9F98C(v0 + 416, &qword_28022BB10, &qword_267EFDCF0);
    sub_267EF8338();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  v11 = *(v0 + 616);
  v12 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v14 = *(v0 + 816);
  if (EnumTagSinglePayload == 1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));

    sub_267B9F98C(v11, &unk_28022BB00, &unk_267EFCF90);
    *v1 = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  else
  {
    sub_267EF8318();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
    v15 = *(*(v12 - 8) + 8);
    v16 = OUTLINED_FUNCTION_108();
    v17(v16);
  }

  v18 = *(v0 + 744);
  v19 = *(v0 + 736);
  v20 = *(v0 + 728);
  v21 = *(v0 + 696);
  v22 = *(v0 + 528);
  v23 = *(v0 + 520);
  OUTLINED_FUNCTION_62_1((*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
  v24 = swift_task_alloc();
  *(v0 + 840) = v24;
  v24[2] = v23;
  v24[3] = v18;
  v24[4] = v1;
  v24[5] = v22;
  v24[6] = v21;
  v24[7] = v19;
  v24[8] = v20;
  v25 = *v11;
  v26 = swift_task_alloc();
  *(v0 + 848) = v26;
  *v26 = v0;
  v26[1] = sub_267C4075C;
  v27 = *(v0 + 979);
  v28 = *(v0 + 978);
  v29 = *(v0 + 977);
  v30 = *(v0 + 976);

  return sub_267CC5BA8();
}

uint64_t sub_267C4075C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[106];
  *v4 = *v2;
  v3[107] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 840);
  if (!v0)
  {
    v3[108] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C40880()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 978) & ~*(v0 + 979);
  v2 = *(v0 + 864);
  sub_267B9F98C(v0 + 296, &qword_28022BB10, &qword_267EFDCF0);
  *(v0 + 936) = *(v0 + 864);
  *(v0 + 980) = v1 & 1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_85_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_19(v4);

  return sub_267C469FC(v6);
}

uint64_t sub_267C40924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[96];
  v25 = v22[95];
  v44 = v22[92];
  v26 = v22[91];
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_70_3(v27);

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  sub_267B9F98C((v22 + 37), &qword_28022BB10, &qword_267EFDCF0);
  v28 = OUTLINED_FUNCTION_25_8();
  v29(v28);
  v30 = *(v20 + 8);
  v30(v26, v21);
  v30(v44, v21);
  v31 = v22[107];
  OUTLINED_FUNCTION_3_12();
  v32 = v22[84];
  v33 = v22[83];
  v34 = OUTLINED_FUNCTION_1_20();
  (v30)(v34);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, v44, a18, a19, a20);
}

uint64_t sub_267C40AA4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[110];
  *v4 = *v2;
  v3[111] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 872);
  if (!v0)
  {
    v3[112] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C40BC8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_5(*(v0 + 896));
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_85_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_19(v4);

  return sub_267C469FC(v6);
}

uint64_t sub_267C40C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[96];
  v25 = v22[95];
  v26 = v22[92];
  v27 = v22[91];
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_70_3(v28);

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  v29 = OUTLINED_FUNCTION_25_8();
  v30(v29);
  v31 = *(v20 + 8);
  v32 = OUTLINED_FUNCTION_26_0();
  v31(v32);
  (v31)(v26, v21);
  v33 = v22[111];
  OUTLINED_FUNCTION_3_12();
  v34 = v22[84];
  v35 = v22[83];
  v36 = OUTLINED_FUNCTION_1_20();
  v31(v36);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C40DA0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[114];
  *v4 = *v2;
  v3[115] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 904);
  if (!v0)
  {
    v3[116] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C40EC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_5(*(v0 + 928));
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_85_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_19(v4);

  return sub_267C469FC(v6);
}

uint64_t sub_267C40F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[96];
  v25 = v22[95];
  v26 = v22[92];
  v27 = v22[91];
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_70_3(v28);

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  v29 = OUTLINED_FUNCTION_25_8();
  v30(v29);
  v31 = *(v20 + 8);
  v32 = OUTLINED_FUNCTION_26_0();
  v31(v32);
  (v31)(v26, v21);
  v33 = v22[115];
  OUTLINED_FUNCTION_3_12();
  v34 = v22[84];
  v35 = v22[83];
  v36 = OUTLINED_FUNCTION_1_20();
  v31(v36);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C4109C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 944);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C41180()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 752);
  v2 = *(v0 + 936);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 936);
    v6 = OUTLINED_FUNCTION_48();
    v35 = swift_slowAlloc();
    *v6 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_81_2();

    v8 = OUTLINED_FUNCTION_68_0();
    v11 = sub_267BA33E8(v8, v9, v10);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v17 = *(v0 + 608);
  v18 = *(v0 + 544);
  sub_267C462E4();
  v19 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v19);
  *(v0 + 952) = sub_267EF4188();
  v20 = v18[5];
  v21 = v18[6];
  __swift_project_boxed_opaque_existential_0(v18 + 2, v20);
  (*(v21 + 8))(v20, v21);
  v22 = *(v0 + 128);
  OUTLINED_FUNCTION_62_1((v0 + 96), *(v0 + 120));
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 960) = v23;
  *v23 = v24;
  v23[1] = sub_267C41380;
  v25 = *(v0 + 936);
  v26 = *(v0 + 608);
  v27 = *(v0 + 520);
  OUTLINED_FUNCTION_36_0();

  return sub_267BCF3A4(v28, v29, v30, v31, v32);
}

uint64_t sub_267C41380()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 960);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 968) = v0;

  if (v0)
  {
    v9 = *(v3 + 952);
  }

  else
  {
    v10 = *(v3 + 952);

    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C414AC()
{
  v1 = *(v0 + 544);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_129(v1 + 2);
  v4 = OUTLINED_FUNCTION_26_0();
  v5(v4);
  v6 = *(v0 + 168);
  OUTLINED_FUNCTION_62_1((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_26_0();
  v7 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  if (v7)
  {
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    sub_267B9AFEC(v0 + 56, v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 584);
      v11 = *(v0 + 576);
      v12 = *(v0 + 568);
      OUTLINED_FUNCTION_14_11(*(v0 + 560));
      v13 = *(v11 + 32);
      v14 = OUTLINED_FUNCTION_108();
      v15(v14);
      v16 = sub_267EF4CB8();
      if (sub_267BAF0DC(v16))
      {
        v17 = (v16 & 0xC000000000000001);
        sub_267BBD0EC(0, (v16 & 0xC000000000000001) == 0, v16);
        if ((v16 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D609870](0, v16);
        }

        else
        {
          v18 = *(v16 + 32);
        }

        OUTLINED_FUNCTION_58_1();

        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          result = sub_267D99704(v19);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v21 = sub_267BAF0DC(result);

          if (v21)
          {
            v22 = OUTLINED_FUNCTION_75_0();
            v23(v22);
          }

          else
          {
            v38 = *(v0 + 752);
            v39 = sub_267EF89F8();
            sub_267EF95D8();
            OUTLINED_FUNCTION_56_2();
            if (os_log_type_enabled(v39, v40))
            {
              v41 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v41);
              OUTLINED_FUNCTION_48_3(&dword_267B93000, v39, v38, "#SendMessageHandleIntentFlowStrategy output is empty, adding AddViews");
              OUTLINED_FUNCTION_26();
            }

            v42 = *(v0 + 936);
            v43 = *(v0 + 608);
            v44 = *(v0 + 584);
            v45 = *(v0 + 576);
            v46 = *(v0 + 568);
            v47 = *(v0 + 552);

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
            OUTLINED_FUNCTION_94();
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_267EFCA40;
            v49 = OUTLINED_FUNCTION_68_0();
            sub_267C463F4(v49);
            *(v48 + 32) = v50;
            v51 = MEMORY[0x277D5C1D8];
            *(v0 + 280) = v46;
            *(v0 + 288) = v51;
            __swift_allocate_boxed_opaque_existential_0((v0 + 256));
            sub_267EF4C78();
            sub_267EF4C88();
            sub_267EF4C98();

            v52 = *(v45 + 8);
            v53 = OUTLINED_FUNCTION_108();
            v54(v53);
            __swift_destroy_boxed_opaque_existential_0((v0 + 56));
            sub_267B9A5E8((v0 + 256), v0 + 56);
          }
        }

        else
        {
          v32 = *(v0 + 584);
          v33 = *(v0 + 576);
          v34 = *(v0 + 568);

          v35 = *(v33 + 8);
          v36 = OUTLINED_FUNCTION_108();
          v37(v36);
        }
      }

      else
      {
        v30 = OUTLINED_FUNCTION_75_0();
        v31(v30);
      }
    }

    else
    {
      v24 = *(v0 + 568);
      v25 = *(v0 + 560);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      sub_267B9F98C(v25, &qword_28022BB70, &unk_267F0BA10);
    }
  }

  v55 = *(v0 + 980);
  v56 = *(v0 + 544);
  v57 = *(v0 + 520);
  sub_267C452EC();
  if (v55 == 1)
  {
    v58 = *(v0 + 544);
    sub_267C45D6C(v0 + 56, (v0 + 176));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_267B9A5E8((v0 + 176), v0 + 56);
  }

  v59 = *(v0 + 752);
  v60 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_56_2();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_32();
    *v62 = 0;
    _os_log_impl(&dword_267B93000, v60, v59, "#SendMessageHandleIntentFlowStrategy returning output", v62, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v63 = *(v0 + 760);
  v78 = *(v0 + 736);
  v79 = *(v0 + 744);
  v64 = *(v0 + 720);
  v65 = *(v0 + 712);
  v73 = *(v0 + 936);
  v74 = *(v0 + 704);
  v76 = *(v0 + 696);
  v77 = *(v0 + 728);
  v66 = *(v0 + 688);
  v75 = *(v0 + 680);
  v80 = *(v0 + 672);
  v81 = *(v0 + 664);
  v82 = *(v0 + 640);
  v83 = *(v0 + 632);
  v84 = *(v0 + 624);
  v85 = *(v0 + 616);
  v67 = *(v0 + 608);
  v68 = *(v0 + 600);
  v69 = *(v0 + 592);
  v86 = *(v0 + 584);
  v87 = *(v0 + 560);
  v88 = *(v0 + 552);
  v70 = *(v0 + 512);

  (*(v68 + 8))(v67, v69);
  sub_267B9F98C(v74, &qword_2802295B0, &unk_267EFDCA0);
  sub_267B9A5E8((v0 + 56), v70);
  (*(v66 + 8))(v76, v75);
  v71 = *(v64 + 8);
  v71(v77, v65);
  v71(v78, v65);
  v71(v79, v65);

  OUTLINED_FUNCTION_1();

  return v72();
}

uint64_t sub_267C41A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[117];
  v25 = v22[96];
  v26 = v22[95];
  v48 = v22[91];
  v49 = v22[92];
  OUTLINED_FUNCTION_24_3();
  v27 = v22[86];
  v46 = v22[85];
  v47 = v22[87];
  v28 = v22[76];
  v29 = v22[75];
  v30 = v22[74];

  (*(v29 + 8))(v28, v30);
  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  __swift_destroy_boxed_opaque_existential_0(v22 + 12);
  (*(v27 + 8))(v47, v46);
  v32 = *(v20 + 8);
  v32(v48, v21);
  v32(v49, v21);
  v33 = v22[121];
  OUTLINED_FUNCTION_3_12();
  v34 = v22[84];
  v35 = v22[83];
  v36 = OUTLINED_FUNCTION_1_20();
  (v32)(v36);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, v46, v47, v48, v49, a18, a19, a20);
}

uint64_t sub_267C41BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_267EF2BA8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_267EF83D8();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C41D54, 0, 0);
}

uint64_t sub_267C41D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[13];
  v20 = v18[11];
  v21 = v18[12];
  v22 = v18[9];
  v23 = v18[10];
  v52 = v18[8];
  v53 = v18[14];
  v24 = v18[4];
  v51 = v18[5];
  v26 = v18[2];
  v25 = v18[3];
  sub_267EF7958();
  OUTLINED_FUNCTION_58_1();

  v28 = sub_267E80518(v27);
  v29 = *v26;

  *v26 = v28;
  v50 = type metadata accessor for SendMessageSentAudioMessageParameters(0);
  v30 = v50[10];
  sub_267B9F98C(v26 + v30, &unk_28022AE30, &qword_267EFC0B0);
  v31 = sub_267EF79B8();
  OUTLINED_FUNCTION_22(v31);
  v48 = v32 + 16;
  v49 = *(v32 + 16);
  v49(v26 + v30, v24, v31);
  OUTLINED_FUNCTION_14_11(v26 + v30);
  (*(v22 + 16))(v23, v51, v52);
  sub_267EF83C8();
  OUTLINED_FUNCTION_72_2();
  (*(v21 + 8))(v19, v20);
  v33 = v18[13];
  v34 = v18[10];
  if (v24)
  {
    v35 = v18[14];

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v52 = v18[6];
    v53 = v18[7];
    v36 = v18[2];
    OUTLINED_FUNCTION_14_11(v18[14]);
    OUTLINED_FUNCTION_50_4(v50[8]);
    v37 = v50[14];
    OUTLINED_FUNCTION_71_2();
    v49((v36 + v37), v52, v31);
    OUTLINED_FUNCTION_14_11(v36 + v37);
    v38 = v50[12];
    sub_267B9F98C(v36 + v38, &unk_28022AE30, &qword_267EFC0B0);
    v49((v36 + v38), v53, v31);
    OUTLINED_FUNCTION_14_11(v36 + v38);

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_89();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, v50, v51, v52, v53, a15, a16, a17, a18);
}

uint64_t sub_267C41F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v9 = sub_267EF81B8();
  v8[20] = v9;
  v10 = *(v9 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v12 = sub_267EF81D8();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v14 = *(v13 + 64) + 15;
  v8[25] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C42108, 0, 0);
}

uint64_t sub_267C42108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = *(v18 + 112);
  v19 = *(v18 + 120);
  v22 = *(v18 + 96);
  v21 = *(v18 + 104);
  sub_267EF7958();
  OUTLINED_FUNCTION_58_1();

  v24 = sub_267E80518(v23);
  v25 = *v22;

  *v22 = v24;
  v26 = type metadata accessor for SendMessageSentAttachmentMessageParameters(0);
  v27 = v26[10];
  sub_267B9F98C(v22 + v27, &unk_28022AE30, &qword_267EFC0B0);
  v28 = sub_267EF79B8();
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 16);
  v31 = v29 + 16;
  v30(v22 + v27, v20, v28);
  OUTLINED_FUNCTION_14_11(v22 + v27);
  sub_267B9A598(v19, v18 + 56, &qword_28022BB10, &qword_267EFDCF0);
  if (*(v18 + 80))
  {
    v32 = *(v18 + 216);
    v33 = *(v18 + 224);
    v34 = *(v18 + 96);
    sub_267B9A5E8((v18 + 56), v18 + 16);
    __swift_project_boxed_opaque_existential_0((v18 + 16), *(v18 + 40));
    swift_getDynamicType();
    v35 = *(*(v18 + 48) + 8);
    sub_267EF83B8();
    sub_267EF90F8();

    OUTLINED_FUNCTION_14_11(v33);
    sub_267C26980(v33, v34 + v26[7], &unk_28022AE30, &qword_267EFC0B0);
    v36 = *(v18 + 40);
    v37 = *(v18 + 48);
    OUTLINED_FUNCTION_92_3((v18 + 16));
    v38 = *(*(v37 + 8) + 8);
    sub_267EF8348();
    v67 = v31;
    v39 = *(v18 + 216);
    v40 = *(v18 + 96);
    OUTLINED_FUNCTION_14_11(v39);
    sub_267C26980(v39, v40 + v26[6], &unk_28022AE30, &qword_267EFC0B0);
    __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  }

  else
  {
    v67 = v31;
    sub_267B9F98C(v18 + 56, &qword_28022BB10, &qword_267EFDCF0);
  }

  sub_267ED9A2C(*(v18 + 128));
  if (v41)
  {
    v43 = *(v18 + 200);
    v42 = *(v18 + 208);
    v44 = *(v18 + 184);
    (*(*(v18 + 168) + 16))(*(v18 + 176), *(v18 + 136), *(v18 + 160));
    OUTLINED_FUNCTION_108();
    sub_267EF81C8();
    sub_267EF8348();
    v45 = *(v18 + 208);
    v46 = *(v18 + 96);
    (*(*(v18 + 192) + 8))(*(v18 + 200), *(v18 + 184));
    OUTLINED_FUNCTION_14_11(v45);
    sub_267C26980(v45, v46 + v26[17], &unk_28022AE30, &qword_267EFC0B0);
  }

  v62 = *(v18 + 224);
  v63 = *(v18 + 216);
  v64 = *(v18 + 208);
  v65 = *(v18 + 200);
  v66 = *(v18 + 176);
  v47 = v30;
  v49 = *(v18 + 144);
  v48 = *(v18 + 152);
  v50 = *(v18 + 96);
  v51 = v26[14];
  sub_267B9F98C(v50 + v51, &unk_28022AE30, &qword_267EFC0B0);
  v47(v50 + v51, v49, v28);
  OUTLINED_FUNCTION_14_11(v50 + v51);
  v52 = v26[12];
  sub_267B9F98C(v50 + v52, &unk_28022AE30, &qword_267EFC0B0);
  v47(v50 + v52, v48, v28);
  OUTLINED_FUNCTION_14_11(v50 + v52);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, v62, v63, v64, v65, v66, v67, a15, a16, a17, a18);
}

uint64_t sub_267C424F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_267EF81B8();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = sub_267EF81D8();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C42654, 0, 0);
}

uint64_t sub_267C42654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_58_1();

  v26 = sub_267E80518(v25);
  v27 = *v20;

  *v20 = v26;
  v47 = type metadata accessor for SendMessageSentSpecialEmergencyMessageParameters(0);
  v28 = *(v47 + 36);
  sub_267B9F98C(v20 + v28, &unk_28022AE30, &qword_267EFC0B0);
  v29 = sub_267EF79B8();
  OUTLINED_FUNCTION_22(v29);
  v45 = v30 + 16;
  v46 = *(v30 + 16);
  v46(v20 + v28, v24, v29);
  OUTLINED_FUNCTION_14_11(v20 + v28);
  sub_267ED9A2C(a13);
  (*(v22 + 16))(v23, a14, a15);
  OUTLINED_FUNCTION_108();
  sub_267EF81C8();
  OUTLINED_FUNCTION_72_2();
  v31 = OUTLINED_FUNCTION_25_8();
  v32(v31);
  v34 = v21[14];
  v33 = v21[15];
  v35 = v21[11];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C42870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_267EF81B8();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = sub_267EF81D8();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C429D0, 0, 0);
}

uint64_t sub_267C429D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_58_1();

  v26 = sub_267E80518(v25);
  v27 = *v20;

  *v20 = v26;
  v47 = type metadata accessor for SendMessageSentTextMessageParameters(0);
  v28 = *(v47 + 40);
  sub_267B9F98C(v20 + v28, &unk_28022AE30, &qword_267EFC0B0);
  v29 = sub_267EF79B8();
  OUTLINED_FUNCTION_22(v29);
  v45 = v30 + 16;
  v46 = *(v30 + 16);
  v46(v20 + v28, v24, v29);
  OUTLINED_FUNCTION_14_11(v20 + v28);
  sub_267ED9A2C(a13);
  (*(v22 + 16))(v23, a14, a15);
  OUTLINED_FUNCTION_108();
  sub_267EF81C8();
  OUTLINED_FUNCTION_72_2();
  v31 = OUTLINED_FUNCTION_25_8();
  v32(v31);
  v34 = v21[14];
  v33 = v21[15];
  v35 = v21[11];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C42BEC()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_267EF8178();
  v1[30] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[31] = v5;
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_50();
  v1[33] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[34] = v8;
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v1[35] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF83E8();
  v1[36] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[37] = v12;
  v14 = *(v13 + 64);
  v1[38] = OUTLINED_FUNCTION_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295C0, &qword_267EFDCB8);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v1[39] = OUTLINED_FUNCTION_50();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v18 = sub_267EF48A8();
  v1[42] = v18;
  OUTLINED_FUNCTION_30_0(v18);
  v1[43] = v19;
  v21 = *(v20 + 64);
  v1[44] = OUTLINED_FUNCTION_2();
  v22 = sub_267EF79B8();
  v1[45] = v22;
  OUTLINED_FUNCTION_30_0(v22);
  v1[46] = v23;
  v25 = *(v24 + 64);
  v1[47] = OUTLINED_FUNCTION_2();
  v26 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_267C42DF8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[48] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v2, v3, "#SendMessageHandleIntentFlowStrategy generating SMART output for handled response");
    OUTLINED_FUNCTION_26();
  }

  v5 = v0[28];

  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v6 = sub_267EF4668();
  v0[50] = v6;
  v7 = swift_task_alloc();
  v0[51] = v7;
  *v7 = v0;
  v7[1] = sub_267C42F40;
  v8 = v0[29];

  return sub_267C469FC(v6);
}

uint64_t sub_267C42F40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 408);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C4303C()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 392);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = sub_267EF4668();
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v5);
  OUTLINED_FUNCTION_77_1();
  v7(v5, v6);
  v8 = v3[7];
  *(v0 + 416) = v3[14];
  v9 = [v4 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    sub_267EF9028();

    v4 = v10;
  }

  else
  {
    v12 = *(v0 + 48);
    OUTLINED_FUNCTION_62_1((v0 + 16), *(v0 + 40));
    v13 = sub_267EF3C48();
    v14 = sub_267BCEA0C(v4);
    if (v13)
    {
      sub_267DA2578(v14);
    }

    else
    {
      sub_267DA2180();
    }
  }

  v15 = *(v0 + 376);
  v16 = *(v0 + 232);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267EF90F8();

  *(v0 + 520) = sub_267C4507C() & 1;
  v17 = swift_task_alloc();
  *(v0 + 424) = v17;
  *v17 = v0;
  v17[1] = sub_267C43218;
  v18 = *(v0 + 224);
  v19 = *(v0 + 232);

  return sub_267C442D0();
}

uint64_t sub_267C43218()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 424);
  *v3 = *v1;
  *(v2 + 432) = v6;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267C43318()
{
  v1 = *(v0 + 520);
  if (v1 == 1)
  {
    v2 = *(v0 + 232);
    sub_267C97B50();
  }

  v3 = *(v0 + 432);
  v4 = *(v0 + 352);
  v5 = *(v0 + 232);
  sub_267C462E4();
  v6 = [v3 catId];
  sub_267EF9028();

  sub_267EF47D8();
  v7 = v5[5];
  v8 = v5[6];
  OUTLINED_FUNCTION_129(v5 + 2);
  v9 = OUTLINED_FUNCTION_26_0();
  v10(v9);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  OUTLINED_FUNCTION_92_3((v0 + 56));
  OUTLINED_FUNCTION_66();
  LOBYTE(v12) = OUTLINED_FUNCTION_28_3();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (v12)
  {
    v13 = *(v0 + 432);
    v14 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v14);
    *(v0 + 448) = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v15 = swift_allocObject();
    *(v0 + 456) = v15;
    *(v15 + 16) = xmmword_267EFCA40;
    *(v15 + 32) = v13;
    OUTLINED_FUNCTION_35_5(MEMORY[0x277D5BD50]);
    v16 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 464) = v17;
    *v17 = v18;
    v17[1] = sub_267C43A70;
    v19 = *(v0 + 352);
    v20 = *(v0 + 216);
    OUTLINED_FUNCTION_15();

    __asm { BR              X3 }
  }

  v23 = *(v0 + 328);
  v24 = *(v0 + 240);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  if (v1)
  {
    v29 = *(v0 + 384);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v32);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_26();
    }

    if (qword_280228708 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 416);
    v39 = *(v0 + 320);
    v40 = *(v0 + 296);
    v41 = *(v0 + 304);
    v43 = *(v0 + 280);
    v42 = *(v0 + 288);
    v44 = *(v0 + 272);
    v45 = *(v0 + 248);
    v92 = *(v0 + 328);
    v94 = *(v0 + 240);
    v46 = sub_267EF2BA8();
    v47 = __swift_project_value_buffer(v46, qword_280229560);
    (*(*(v46 - 8) + 16))(v41, v47, v46);
    (*(v40 + 104))(v41, *MEMORY[0x277D5D6E0], v42);
    sub_267C7FE68();
    sub_267EFA028();
    sub_267B9F98C(v43, &qword_2802295B8, &qword_267EFDCB0);
    sub_267EF83F8();
    sub_267B9F98C(v92, &qword_2802295C0, &qword_267EFDCB8);
    (*(v45 + 104))(v39, *MEMORY[0x277D5D358], v94);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v94);
    sub_267BBE134(v39, v92, &qword_2802295C0, &qword_267EFDCB8);
  }

  v48 = *(v0 + 392);
  v49 = *(v0 + 376);
  v93 = *(v0 + 312);
  v95 = *(v0 + 328);
  v50 = *(v0 + 264);
  v51 = *(v0 + 248);
  v91 = *(v0 + 240);
  v53 = *(v0 + 224);
  v52 = *(v0 + 232);
  sub_267EF4668();
  sub_267EF4638();
  sub_267EF7998();
  v54 = sub_267EF4668();
  sub_267CA85BC(v54);

  sub_267EF8468();
  (*(v51 + 104))(v50, *MEMORY[0x277D5D360], v91);
  sub_267B9A598(v95, v93, &qword_2802295C0, &qword_267EFDCB8);
  if (__swift_getEnumTagSinglePayload(v93, 1, v91) == 1)
  {
    v55 = *(v0 + 432);
    v56 = *(v0 + 264);
    v57 = *(v0 + 240);
    v58 = *(v0 + 248);
    sub_267B9F98C(*(v0 + 312), &qword_2802295C0, &qword_267EFDCB8);
    v59 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v59);
    *(v0 + 496) = sub_267EF4188();
    *(v0 + 120) = v57;
    OUTLINED_FUNCTION_28_9();
    *(v0 + 128) = sub_267C473D0(v60, v61);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    (*(v58 + 16))(boxed_opaque_existential_0, v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v63 = swift_allocObject();
    *(v0 + 504) = v63;
    *(v63 + 16) = xmmword_267EFCA40;
    *(v63 + 32) = v55;
    OUTLINED_FUNCTION_35_5(MEMORY[0x277D5BD38]);
    v64 = v55;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 512) = v65;
    *v65 = v66;
    v65[1] = sub_267C43F5C;
    v67 = *(v0 + 352);
    v68 = *(v0 + 216);
    OUTLINED_FUNCTION_15();

    __asm { BR              X4 }
  }

  v71 = *(v0 + 432);
  v72 = *(v0 + 256);
  v73 = *(v0 + 264);
  v74 = *(v0 + 240);
  v75 = *(v0 + 248);
  (*(v75 + 32))(v72, *(v0 + 312), v74);
  v76 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v76);
  *(v0 + 472) = sub_267EF4188();
  *(v0 + 160) = v74;
  OUTLINED_FUNCTION_28_9();
  v79 = sub_267C473D0(v77, v78);
  *(v0 + 168) = v79;
  v80 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  v81 = *(v75 + 16);
  v81(v80, v73, v74);
  *(v0 + 200) = v74;
  *(v0 + 208) = v79;
  v82 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  v81(v82, v72, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v83 = swift_allocObject();
  *(v0 + 480) = v83;
  *(v83 + 16) = xmmword_267EFCA40;
  *(v83 + 32) = v71;
  OUTLINED_FUNCTION_35_5(MEMORY[0x277D5BD30]);
  v84 = v71;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 488) = v85;
  *v85 = v86;
  v85[1] = sub_267C43CB8;
  v87 = *(v0 + 352);
  v88 = *(v0 + 216);
  OUTLINED_FUNCTION_15();

  __asm { BR              X5 }
}

uint64_t sub_267C43A70()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[58];
  v3 = v1[57];
  v4 = v1[56];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C43B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v22 = v18[48];
  v21 = v18[49];
  v23 = v18[28];
  v24 = v18[29];
  sub_267EF4648();
  sub_267C452EC();

  sub_267EF89F8();
  v25 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v25))
  {
    v26 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v26);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v27, v28, v29, v30, v31, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_10_12();

  v32 = OUTLINED_FUNCTION_62_2();
  v33(v32);
  v34 = *(v19 + 8);
  v35 = OUTLINED_FUNCTION_26_0();
  v36(v35);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267C43CB8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[61];
  v6 = v4[60];
  v7 = v4[59];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C43DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v21 = v18[41];
  v22 = v18[33];
  v23 = *(v18[31] + 8);
  (v23)(v18[32], v18[30]);
  v24 = OUTLINED_FUNCTION_26_0();
  v23(v24);
  sub_267B9F98C(v21, &qword_2802295C0, &qword_267EFDCB8);
  v26 = v18[48];
  v25 = v18[49];
  v27 = v18[28];
  v28 = v18[29];
  sub_267EF4648();
  sub_267C452EC();

  sub_267EF89F8();
  v29 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v29))
  {
    v30 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v30);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_10_12();

  v36 = OUTLINED_FUNCTION_62_2();
  v37(v36);
  v38 = *(v19 + 8);
  v39 = OUTLINED_FUNCTION_26_0();
  v40(v39);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267C43F5C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[64];
  v6 = v4[63];
  v7 = v4[62];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C44084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v21 = v18[41];
  (*(v18[31] + 8))(v18[33], v18[30]);
  sub_267B9F98C(v21, &qword_2802295C0, &qword_267EFDCB8);
  v23 = v18[48];
  v22 = v18[49];
  v24 = v18[28];
  v25 = v18[29];
  sub_267EF4648();
  sub_267C452EC();

  sub_267EF89F8();
  v26 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v26))
  {
    v27 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v27);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_10_12();

  v33 = OUTLINED_FUNCTION_62_2();
  v34(v33);
  v35 = *(v19 + 8);
  v36 = OUTLINED_FUNCTION_26_0();
  v37(v36);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267C441E4()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  (*(v0[46] + 8))(v0[47], v0[45]);

  OUTLINED_FUNCTION_17();
  v10 = v0[55];

  return v9();
}

uint64_t sub_267C442D0()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C4434C()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[16];
  v2 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v3 = sub_267EF4668();
  v0[18] = v3;
  v4 = *__swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider + 24));
  sub_267BD1028();
  sub_267EF7958();
  v5 = sub_267EF4648();
  v0[19] = sub_267E80518(v5);
  v6 = sub_267C4689C();
  v7 = *(*(v1 + 56) + 210);
  if (sub_267EF96E8())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v10))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_64_4();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v16 = v0[17];
    v17 = v0[15];

    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    v0[20] = sub_267EF79E8();
    v18 = *v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[21] = v19;
    *v19 = v20;
    v19[1] = sub_267C448A4;
    OUTLINED_FUNCTION_122();

    return sub_267E9E270(v21, v22, v23, v24);
  }

  else
  {
    v27 = sub_267E76140(v3);
    if (v27 && (v28 = sub_267BAF0DC(v27), , v28))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v29 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
      v30 = sub_267EF89F8();
      v31 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v31))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_86_0(&dword_267B93000, v32, v33, "#SendMessageHandleIntentFlowStrategy executing CAT to inform sent message with attachment");
        OUTLINED_FUNCTION_32_0();
      }

      v34 = v0[17];
      v35 = v0[15];

      *v35 &= ~v6 & 1;
      type metadata accessor for SendMessageCATsSimple();
      sub_267EF7B68();
      v0[23] = sub_267EF79E8();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[24] = v36;
      *v36 = v37;
      OUTLINED_FUNCTION_59_4(v36);
      OUTLINED_FUNCTION_122();

      return sub_267E9E000(v38, v39, v40, v41, v42);
    }

    else if (sub_267D28BAC())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v44 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
      v45 = sub_267EF89F8();
      v46 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v46))
      {
        v47 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v47);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v48, v49, v50, v51, v52, 2u);
        OUTLINED_FUNCTION_26();
      }

      v53 = v0[17];

      type metadata accessor for SendMessageCATsSimple();
      sub_267EF7B68();
      v0[26] = sub_267EF79E8();
      v54 = swift_task_alloc();
      v0[27] = v54;
      *v54 = v0;
      v54[1] = sub_267C44BB4;
      OUTLINED_FUNCTION_122();

      return sub_267E9E400();
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v58))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_86_0(&dword_267B93000, v59, v60, "#SendMessageHandleIntentFlowStrategy executing CAT to inform sent text message");
        OUTLINED_FUNCTION_32_0();
      }

      v61 = v0[17];
      v62 = v0[15];

      type metadata accessor for SendMessageCATsSimple();
      sub_267EF7B68();
      v0[29] = sub_267EF79E8();
      v63 = *v62;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[30] = v64;
      *v64 = v65;
      OUTLINED_FUNCTION_59_4(v64);
      OUTLINED_FUNCTION_122();

      return sub_267E9E4A8(v66, v67, v68, v69, v70);
    }
  }
}

uint64_t sub_267C448A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 168);
  v8 = *(v7 + 160);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 176) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C449BC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_65_1();

  v2 = OUTLINED_FUNCTION_18_7();

  return v3(v2);
}

uint64_t sub_267C44A2C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 192);
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C44B44()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_65_1();

  v2 = OUTLINED_FUNCTION_18_7();

  return v3(v2);
}

uint64_t sub_267C44BB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  OUTLINED_FUNCTION_84();
  v7 = *(v6 + 216);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  v3[28] = v0;

  if (!v0)
  {
    v10 = v3[26];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C44CBC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_65_1();

  v2 = OUTLINED_FUNCTION_18_7();

  return v3(v2);
}

uint64_t sub_267C44D2C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 240);
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 248) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C44E44()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_65_1();

  v2 = OUTLINED_FUNCTION_18_7();

  return v3(v2);
}

uint64_t sub_267C44EB4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C44F24()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C44F94()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 208);

  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C4500C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 248);
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C4507C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  OUTLINED_FUNCTION_82_1();
  if (!v15)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_56_2();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_15;
    }

    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v22);
    v23 = "#SendMessageHandleIntentFlowStrategy auto send wasn't triggered, not providing auto send hint";
LABEL_14:
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v20, v0, v23);
    OUTLINED_FUNCTION_26();
LABEL_15:

    v27 = 0;
    return v27 & 1;
  }

  LOBYTE(v33) = 4;
  LOBYTE(v0) = v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore;
  sub_267C5DD80(&v32, v8, v9, v10, v11, v12, v13, v14, 4, 0, v33);
  if (!v16)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
    v20 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_56_2();
    if (!os_log_type_enabled(v20, v25))
    {
      goto LABEL_15;
    }

    v26 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v26);
    v23 = "#SendMessageHandleIntentFlowStrategy auto send enablement didn't occur, not providing auto send hint";
    goto LABEL_14;
  }

  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    v17 = sub_267EF70D8();
    v18 = 0;
  }

  else
  {
    v17 = sub_267EF70D8();
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v18, 1, v17);
  v28 = v1[5];
  v29 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v28);
  OUTLINED_FUNCTION_77_1();
  v30(&v32, v28, v29);
  v27 = sub_267C97C34(v7, &v32);
  __swift_destroy_boxed_opaque_existential_0(&v32);
  sub_267B9F98C(v7, &qword_2802295B0, &unk_267EFDCA0);
  return v27 & 1;
}

void sub_267C452EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  v4 = sub_267EF70D8();
  OUTLINED_FUNCTION_23();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  OUTLINED_FUNCTION_82_1();
  if (v18)
  {
    v19 = sub_267EF6FF8();
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();

      sub_267EF8698();

      (*(v6 + 32))(v17, v15, v4);
      sub_267EF7088();
      sub_267C473D0(&qword_28022BB90, MEMORY[0x277D61CC8]);
      v19 = sub_267EF8FE8();
      v20 = *(v6 + 8);
      v20(v12, v4);
      if ((v19 & 1) == 0)
      {
        sub_267BE84FC();
        v30 = sub_267EF8398();
        if (v30)
        {
          v31 = v30;
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v32 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);
          v33 = sub_267EF89F8();
          v34 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v34))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_64_4();
            _os_log_impl(v35, v36, v37, v38, v39, 2u);
            OUTLINED_FUNCTION_32_0();
          }

          sub_267EF93F8();
          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
          OUTLINED_FUNCTION_94();
          v44 = swift_allocObject();
          v44[2] = 0;
          v44[3] = 0;
          v44[4] = v31;
          v45 = v31;
          sub_267E8FA18();
        }

        else
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v46 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v46, qword_280240FB0);
          v47 = sub_267EF89F8();
          v48 = sub_267EF95E8();
          if (OUTLINED_FUNCTION_5_2(v48))
          {
            v49 = OUTLINED_FUNCTION_32();
            *v49 = 0;
            _os_log_impl(&dword_267B93000, v47, v48, "#SendMessageHandleIntentFlowStrategy UI tone not available", v49, 2u);
            OUTLINED_FUNCTION_32_0();
          }
        }

        v20(v17, v4);
        goto LABEL_30;
      }

      v20(v17, v4);
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v21 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_56_2();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v24);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v22, v19, "#SendMessageHandleIntentFlowStrategy display only mode, not playing UI tone");
      OUTLINED_FUNCTION_26();
    }

LABEL_30:
    OUTLINED_FUNCTION_47();
    return;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v51 = sub_267EF89F8();
  v26 = sub_267EF95D8();
  if (os_log_type_enabled(v51, v26))
  {
    v27 = OUTLINED_FUNCTION_32();
    *v27 = 0;
    _os_log_impl(&dword_267B93000, v51, v26, "#SendMessageHandleIntentFlowStrategy not sent by auto send, not playing UI tone", v27, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C45810()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_267C45928;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295A8, &unk_267EFDC90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_267C45CE8;
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 playWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_267C45928()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C45A24()
{
  OUTLINED_FUNCTION_29();
  v13 = v0;
  v1 = *(v0 + 144);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v0 + 80) = v1;
    type metadata accessor for TLAlertPlaybackCompletionType(0);
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_267B93000, v3, v4, "#SendMessageHandleIntentFlowStrategy played UI tone: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267C45B78()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 160);
  swift_willThrow();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = *(v0 + 160);
  v3 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_48();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_267B93000, v5, v6, "#SendMessageHandleIntentFlowStrategy error playing UI tone: %@", v9, 0xCu);
    sub_267B9F98C(v10, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_267C45CE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_267E98204(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_267C095F8(v9, a2);
  }
}

void sub_267C45D6C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = sub_267EF4CC8();
  OUTLINED_FUNCTION_23();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  sub_267B9AFEC(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v18);
    sub_267B9F98C(v17, &qword_28022BB70, &unk_267F0BA10);
    v38 = OUTLINED_FUNCTION_66();
    sub_267B9AFEC(v38, v39);
LABEL_15:
    OUTLINED_FUNCTION_47();
    return;
  }

  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  (*(v20 + 32))(v26, v17, v18);
  sub_267C97B50();
  v27 = sub_267EF4CB8();
  v28 = sub_267BAF0DC(v27);
  if (!v28)
  {

LABEL_14:
    sub_267EF4C78();
    sub_267EF4C88();
    v40 = MEMORY[0x277D5C1D8];
    a2[3] = v18;
    a2[4] = v40;
    __swift_allocate_boxed_opaque_existential_0(a2);
    sub_267EF4C98();
    (*(v20 + 8))(v26, v18);
    goto LABEL_15;
  }

  v29 = v28;
  v49[0] = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v41 = v26;
    v42 = v20;
    v43 = v18;
    v44 = v11;
    v30 = 0;
    v45 = a2;
    v46 = v27 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x26D609870](v30, v27);
      }

      else
      {
        if (v30 >= *(v46 + 16))
        {
          goto LABEL_17;
        }

        v32 = *(v27 + 8 * v30 + 32);
      }

      v33 = v32;
      v47 = v32;
      sub_267C460D0(&v47, v3, &v48);

      sub_267EF9BD8();
      v34 = *(v49[0] + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      ++v30;
      if (v31 == v29)
      {

        a2 = v45;
        v20 = v42;
        v18 = v43;
        v26 = v41;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);

  __break(1u);
}

void sub_267C460D0(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    *a3 = v5;
    v20 = v5;
    return;
  }

  v7 = v6;
  v8 = qword_280228818;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_267B93000, v11, v12, "#SendMessageHandleIntentFlowStrategy adding auto send settings button", v13, 2u);
    MEMORY[0x26D60A7B0](v13, -1, -1);
  }

  v14 = *(a2 + 112);
  sub_267DA2FC4();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCA40;
  *(inited + 32) = v16;
  v18 = v16;
  if (sub_267D99704(v7))
  {
    sub_267C9B4F0(inited);
    sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
    v19 = sub_267EF92D8();

    [v7 setViews_];

LABEL_10:
    *a3 = v7;
    return;
  }

  __break(1u);
}

uint64_t sub_267C462E4()
{
  v1 = sub_267EF3CF8();
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3CE8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  OUTLINED_FUNCTION_77_1();
  v7(v9, v5, v6);
  OUTLINED_FUNCTION_92_3(v9);
  OUTLINED_FUNCTION_108();
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_267C463F4(void *a1)
{
  v49 = sub_267EF3CF8();
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v51 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  sub_267EF2D18();
  v18 = sub_267EF2CE8();
  v20 = v19;
  v21 = *(v10 + 8);
  v21(v16, v51);
  sub_267E7F030(v18, v20, v17);

  sub_267EF4798();
  v22 = sub_267EF3CC8();
  v24 = v23;
  (*(v2 + 8))(v8, v49);
  sub_267EB7464(v22, v24, v17);
  v25 = [a1 patternId];
  sub_267EF9028();
  OUTLINED_FUNCTION_81_2();

  v26 = OUTLINED_FUNCTION_68_0();
  sub_267C47248(v26, v27, v17, v28);
  v29 = [objc_opt_self() patternNameFromType_];
  sub_267EF9028();
  OUTLINED_FUNCTION_81_2();

  v30 = OUTLINED_FUNCTION_68_0();
  sub_267C47248(v30, v31, v17, v32);
  v33 = [a1 responseMode];
  sub_267EF9028();
  OUTLINED_FUNCTION_81_2();

  v34 = OUTLINED_FUNCTION_68_0();
  sub_267C47248(v34, v35, v17, v36);
  v37 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
  sub_267EF2D18();
  v38 = sub_267EF2CE8();
  v40 = v39;
  v21(v16, v51);
  sub_267C47248(v38, v40, v37, &selRef_setAceId_);
  v41 = [a1 dialog];
  sub_267BA9F38(0, &qword_2802295A0, 0x277D052C8);
  v42 = sub_267EF92F8();

  if (!sub_267BAF0DC(v42))
  {
    v45 = 0;
    goto LABEL_7;
  }

  sub_267BBD0EC(0, (v42 & 0xC000000000000001) == 0, v42);
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x26D609870](0, v42);
  }

  else
  {
    v43 = *(v42 + 32);
  }

  v44 = v43;

  v45 = [v44 dialogId];

  if (!v45)
  {
    sub_267EF9028();
    v45 = sub_267EF8FF8();
LABEL_7:
  }

  [v37 setDialogIdentifier_];

  v46 = v37;
  sub_267EF4848();
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v47 = sub_267EF97F8();
  [v46 setListenAfterSpeaking_];

  [v46 setCanUseServerTTS_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_267EFCA40;
  *(v48 + 32) = v46;
  sub_267E7F03C(v48, v17);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C4689C()
{
  if (*(*(v0 + 56) + 144) != 1)
  {
    return 0;
  }

  v1 = v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults;
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults + 24);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults + 32);
  v4 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_62_1(v4, v5);
  if ((*(v3 + 8))(0xD000000000000017, 0x8000000267F12AB0, v2, v3))
  {
    return 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v9))
  {
    v10 = OUTLINED_FUNCTION_32();
    *v10 = 0;
    _os_log_impl(&dword_267B93000, v8, v9, "#SendMessageHandleIntentFlowStrategy offering tip on sending screenshot", v10, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_62_1(v13, v14);
  v6 = 1;
  (*(v12 + 48))(1, 0xD000000000000017, 0x8000000267F12AB0, v11, v12);
  return v6;
}

uint64_t sub_267C469FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C46A24()
{
  OUTLINED_FUNCTION_56();
  v1 = *(*(v0 + 24) + 56);
  if ((*(*(v1 + 216) + 24) & 1) == 0)
  {
    sub_267C97DB0();
  }

  sub_267ED9A2C(*(v0 + 16));
  if (v2)
  {

    v3 = *(v1 + 216);
    v4 = *(v3 + 16);
    if (*(v3 + 24) == 1)
    {
      *(v4 + 34) = 1;
      *(v3 + 24) = 0;
    }

    else
    {
      *(v4 + 34) = 0;
    }

    sub_267D0F73C();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267C46B58()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_sharedContextProvider);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_preferences));
}

uint64_t sub_267C46BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_267C46CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_267C46D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_267C46E50()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267C3E09C();
}

uint64_t sub_267C46EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_267C46FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_267C4708C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BAEBEC;

  return sub_267C3EC14(a1, a2);
}

uint64_t sub_267C47138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5C0D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

void sub_267C47248(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_267EF8FF8();

  [a3 *a4];
}

uint64_t sub_267C472B4(void *a1)
{
  v1 = [a1 sentMessages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267C47324()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_267BAEBEC;

  return sub_267C457F0(v3, v4, v5, v6);
}

uint64_t sub_267C473D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C4747C()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_60_1(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_11(v4);
  OUTLINED_FUNCTION_36_0();

  return sub_267C42870(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C47514()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_60_1(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_11(v4);
  OUTLINED_FUNCTION_36_0();

  return sub_267C424F4(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C475AC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_60_1(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_11(v5);
  OUTLINED_FUNCTION_122();

  return sub_267C41F90(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_267C47654()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_31_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_60_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_11(v3);

  return sub_267C41BF8(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_267C476F4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_0_9(v4);
  (*(v5 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver));
  v6 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t *sub_267C4779C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_0_9(v4);
  (*(v5 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver));
  return v0;
}

uint64_t sub_267C47844()
{
  sub_267C4779C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMessagesBaseFlowStrategy()
{
  result = qword_2802295D8;
  if (!qword_2802295D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267C478F0()
{
  sub_267C479A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_267C479A8()
{
  if (!qword_2802295E8)
  {
    sub_267EF4C08();
    sub_267BC1E68();
    v0 = sub_267EF7078();
    if (!v1)
    {
      atomic_store(v0, &qword_2802295E8);
    }
  }
}

unint64_t sub_267C47A10(char a1)
{
  result = 0x746165706572;
  switch(a1)
  {
    case 1:
      result = 0x796C706572;
      break;
    case 2:
      result = 0x6E6F43796C706572;
      break;
    case 3:
      result = 0x6F43746165706572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x707845796C706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C47B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v112 = a7;
  v105 = a4;
  v106 = a6;
  v107 = a3;
  v11 = sub_267EF2E98();
  v12 = OUTLINED_FUNCTION_58(v11);
  v110 = v13;
  v111 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  v19 = sub_267EF2778();
  v20 = OUTLINED_FUNCTION_58(v19);
  v108 = v21;
  v109 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = OUTLINED_FUNCTION_16_4();
  v30 = OUTLINED_FUNCTION_58(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_60();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v103 - v39;
  if (a1 > 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v41 = sub_267EF8A08();
    v42 = OUTLINED_FUNCTION_13_8(v41, qword_280240FB0);
    v43 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v43))
    {
      v44 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v44);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v45, v46, "#AnnounceHintUtils has given all short message hints");
      OUTLINED_FUNCTION_26();
    }

    return 7;
  }

  sub_267BB16A4(a2, v7, &qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_8_7(v7);
  if (v87)
  {
    sub_267B9FF34(v7, &qword_28022BD90, &unk_267EFCDD0);
  }

  else
  {
    v104 = a5;
    (*(v32 + 32))(v40, v7, v29);
    sub_267EF2E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
    v48 = sub_267EF2E88();
    OUTLINED_FUNCTION_58(v48);
    v50 = v49;
    v52 = *(v51 + 72);
    v53 = v29;
    v54 = v32;
    v55 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_267EFC020;
    (*(v50 + 104))(v56 + v55, *MEMORY[0x277CC9968], v48);
    sub_267E6EAA0();
    sub_267EF2CB8();
    sub_267EF2E48();

    v57 = *(v54 + 8);
    v57(v37, v53);
    (*(v110 + 8))(v18, v111);
    v58 = sub_267EF2758();
    v60 = v59;
    (*(v108 + 8))(v26, v109);
    if ((v60 & 1) == 0)
    {
      if (v107 < 3 || v58 < 7)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v78 = sub_267EF8A08();
        v79 = OUTLINED_FUNCTION_13_8(v78, qword_280240FB0);
        v80 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_7_2(v80))
        {
          v81 = OUTLINED_FUNCTION_32();
          *v81 = 0;
          OUTLINED_FUNCTION_14_5();
          _os_log_impl(v82, v83, v84, v85, v81, 2u);
          OUTLINED_FUNCTION_32_0();
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_7(v106);
        if (v87 && (v112 & 1) == 0)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v88 = sub_267EF8A08();
          v89 = OUTLINED_FUNCTION_13_8(v88, qword_280240FB0);
          v90 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_7_2(v90))
          {
            v91 = OUTLINED_FUNCTION_32();
            *v91 = 0;
            OUTLINED_FUNCTION_14_5();
            _os_log_impl(v92, v93, v94, v95, v91, 2u);
            OUTLINED_FUNCTION_32_0();
          }

          v96 = OUTLINED_FUNCTION_9_7();
          (v57)(v96);
          return 3;
        }

        OUTLINED_FUNCTION_8_7(v105);
        if (v87 && (v104 & 1) == 0)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v97 = sub_267EF8A08();
          v98 = OUTLINED_FUNCTION_13_8(v97, qword_280240FB0);
          v99 = sub_267EF95D8();
          if (os_log_type_enabled(v98, v99))
          {
            v47 = 2;
            v100 = OUTLINED_FUNCTION_32();
            *v100 = 0;
            _os_log_impl(&dword_267B93000, v98, v99, "#AnnounceHintUtils no reply hint usage date, and repeat not disabled", v100, 2u);
            OUTLINED_FUNCTION_32_0();

            v101 = OUTLINED_FUNCTION_9_7();
            (v57)(v101);
          }

          else
          {

            v102 = OUTLINED_FUNCTION_9_7();
            (v57)(v102);
            return 2;
          }

          return v47;
        }
      }

      v86 = OUTLINED_FUNCTION_9_7();
      (v57)(v86);
      return 7;
    }

    v61 = OUTLINED_FUNCTION_9_7();
    (v57)(v61);
    LOBYTE(a5) = v104;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v62 = sub_267EF8A08();
  v63 = OUTLINED_FUNCTION_13_8(v62, qword_280240FB0);
  v64 = sub_267EF95E8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = OUTLINED_FUNCTION_32();
    *v65 = 0;
    _os_log_impl(&dword_267B93000, v63, v64, "#AnnounceHintUtils error generating daySinceLastHint", v65, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  if (v112)
  {
    if ((a5 & 1) == 0)
    {
      v66 = sub_267EF89F8();
      v67 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v67))
      {
        v68 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v68);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v69, v70, "#AnnounceHintUtils no last hint usage date, and reply not disabled");
        OUTLINED_FUNCTION_26();
      }

      return 1;
    }

    return 7;
  }

  v71 = sub_267EF89F8();
  v72 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v72))
  {
    v73 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v73);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v74, v75, "#AnnounceHintUtils no last hint usage date, and repeat not disabled");
    OUTLINED_FUNCTION_26();
  }

  return 0;
}

void sub_267C48258(uint64_t a1, uint64_t a2)
{
  sub_267BB16A4(a1, &v13, &unk_28022BBF0, &unk_267F01C60);
  if (v14)
  {
    sub_267BE58F4(&v13, v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    if ((*(v4 + 144))(v3, v4) & 1) != 0 || (v11 = v16, v12 = v17, __swift_project_boxed_opaque_existential_0(v15, v16), ((*(v12 + 136))(v11, v12)))
    {
      sub_267BEB520(a2 + 152, &v13);
      ConversationEventStore.setDisabled(event:)();
      sub_267B9EF14(&v13);
    }

    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_267B9FF34(&v13, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_267EF8A08();
    v6 = OUTLINED_FUNCTION_13_8(v5, qword_280240FB0);
    v7 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v9, v10, "AnnounceHintUtils smsIntent nil");
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_267C483F0(uint64_t a1)
{
  v79 = sub_267EF2E98();
  v3 = OUTLINED_FUNCTION_58(v79);
  v77 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = sub_267EF2778();
  v11 = OUTLINED_FUNCTION_58(v10);
  v76 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v78 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = OUTLINED_FUNCTION_16_4();
  v20 = OUTLINED_FUNCTION_58(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_60();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  sub_267BB16A4(a1, v1, &qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_8_7(v1);
  if (v31)
  {
    sub_267B9FF34(v1, &qword_28022BD90, &unk_267EFCDD0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v32 = sub_267EF8A08();
    v33 = OUTLINED_FUNCTION_13_8(v32, qword_280240FB0);
    v34 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v34))
    {
      v35 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v35);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v36, v37, "#AnnounceHintUtils no hint date to check time from");
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  else
  {
    v75 = v10;
    (*(v22 + 32))(v30, v1, v19);
    sub_267E579A0(v80);
    HIDWORD(v73) = sub_267E57BAC(1);
    sub_267C48D80(v80);
    sub_267EF2E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
    v38 = sub_267EF2E88();
    OUTLINED_FUNCTION_58(v38);
    v74 = v19;
    v40 = v39;
    v42 = *(v41 + 72);
    v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_267EFC020;
    v45 = *(v40 + 104);
    v46 = (v22 + 8);
    v47 = (v77 + 8);
    v77 = v76 + 8;
    if ((v73 & 0x100000000) != 0)
    {
      v45(v44 + v43, *MEMORY[0x277CC99A8], v38);
      sub_267E6EAA0();
      sub_267EF2CB8();
      v48 = v78;
      v49 = v30;
      sub_267EF2E48();

      v50 = *v46;
      v51 = v74;
      (*v46)(v27, v74);
      (*v47)(v9, v79);
      sub_267EF2768();
      OUTLINED_FUNCTION_15_6();
      v52(v48, v75);
      if (v48)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v53 = sub_267EF8A08();
        v54 = OUTLINED_FUNCTION_13_8(v53, qword_280240FB0);
        v55 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v55))
        {
          v56 = OUTLINED_FUNCTION_32();
          *v56 = 0;
          OUTLINED_FUNCTION_14_5();
          _os_log_impl(v57, v58, v59, v60, v56, 2u);
          OUTLINED_FUNCTION_32_0();
        }
      }

      else
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v65 = sub_267EF8A08();
        v54 = OUTLINED_FUNCTION_13_8(v65, qword_280240FB0);
        v66 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 134217984;
          *(v67 + 4) = v9;
          OUTLINED_FUNCTION_14_5();
          _os_log_impl(v68, v69, v70, v71, v67, 0xCu);
          OUTLINED_FUNCTION_32_0();
        }
      }

      v50(v49, v51);
    }

    else
    {
      v45(v44 + v43, *MEMORY[0x277CC9968], v38);
      sub_267E6EAA0();
      sub_267EF2CB8();
      v61 = v78;
      sub_267EF2E48();

      v62 = *v46;
      v63 = v74;
      (*v46)(v27, v74);
      (*v47)(v9, v79);
      sub_267EF2758();
      OUTLINED_FUNCTION_15_6();
      v64(v61, v75);
      v62(v30, v63);
    }
  }

  return v9;
}

uint64_t sub_267C48A28(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v6) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_60();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v39 = sub_267C483F0(a1);
  v17 = v16;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = sub_267EF8A08();
  __swift_project_value_buffer(v18, qword_280240FB0);
  sub_267BB16A4(a1, v15, &qword_28022BD90, &unk_267EFCDD0);
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  if (os_log_type_enabled(v19, v20))
  {
    HIDWORD(v36) = v17;
    v37 = v6;
    v6 = a3;
    v38 = a4;
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v21 = 136315650;
    v22 = OUTLINED_FUNCTION_9_7();
    sub_267BB16A4(v22, v23, v24, v25);
    v26 = sub_267EF2CC8();
    if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
    {
      sub_267B9FF34(v12, &qword_28022BD90, &unk_267EFCDD0);
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      v28 = sub_267EF2C08();
      v27 = v29;
      (*(*(v26 - 8) + 8))(v12, v26);
    }

    a3 = v6;
    sub_267B9FF34(v15, &qword_28022BD90, &unk_267EFCDD0);
    v30 = sub_267BA33E8(v28, v27, &v40);

    *(v21 + 4) = v30;
    *(v21 + 12) = 1024;
    LOBYTE(v6) = v37;
    a4 = v38;
    *(v21 + 14) = v37 & 1;
    *(v21 + 18) = 2080;
    if (a4)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v32 = sub_267EF9498();
      v31 = v33;
    }

    v34 = sub_267BA33E8(v32, v31, &v40);

    *(v21 + 20) = v34;
    _os_log_impl(&dword_267B93000, v19, v20, "#AnnounceHintUtils lastHeadGestureToMuteHint %s announcementIsSummarized %{BOOL}d announcementDuration %s", v21, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();

    v17 = HIDWORD(v36);
  }

  else
  {

    sub_267B9FF34(v15, &qword_28022BD90, &unk_267EFCDD0);
  }

  result = 0;
  if (((v39 < 7) & ~v17) == 0 && (v6 & 1) == 0)
  {
    return (*&a3 > 5.0) & ~a4;
  }

  return result;
}

char *sub_267C48DD4(char *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229600, &qword_267EFDE30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v175 - v7);
  v186 = sub_267EF6A08();
  v218 = *(v186 - 8);
  v9 = v218[8];
  v10 = MEMORY[0x28223BE20](v186);
  v187 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v175 - v12);
  v198 = sub_267EF6A88();
  v196 = *(v198 - 8);
  v14 = *(v196 + 64);
  MEMORY[0x28223BE20](v198);
  v197 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_267EF6B88();
  v193 = *(v194 - 8);
  v16 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v195 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_267EF6B38();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v192 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_267EF2E38();
  v177 = *(v215 - 8);
  v21 = *(v177 + 64);
  v22 = MEMORY[0x28223BE20](v215);
  v214 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v207 = &v175 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v206 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v212 = (&v175 - v29);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v30 = *(*(v184 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v184);
  v191 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  *&v183 = &v175 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v190 = &v175 - v36;
  MEMORY[0x28223BE20](v35);
  v211 = (&v175 - v37);
  v189 = sub_267EF6B18();
  v188 = *(v189 - 8);
  v38 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v210 = &v175 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_267EF6718();
  v40 = *(v213 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v213);
  v204 = &v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v175 - v44;
  v46 = sub_267EF89E8();
  v201 = *(v46 - 1);
  v47 = *(v201 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v175 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228820 != -1)
  {
LABEL_104:
    swift_once();
  }

  v216 = v1;
  v217 = v13;
  v202 = v46;
  v209 = v3;
  v50 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  v199 = v50;
  v200 = v49;
  sub_267EF89A8();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v51 = sub_267EF8A08();
  v52 = __swift_project_value_buffer(v51, qword_280240FB0);
  v53 = *(v40 + 16);
  v205 = a1;
  v54 = v213;
  v203 = v53;
  v53(v45, a1, v213);
  v208 = v52;
  v55 = sub_267EF89F8();
  v56 = sub_267EF95D8();
  v57 = os_log_type_enabled(v55, v56);
  v185 = v8;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v219[0] = v59;
    *v58 = 136315138;
    sub_267C4AED4();
    v60 = sub_267EF9E58();
    v62 = v61;
    (*(v40 + 8))(v45, v213);
    v63 = sub_267BA33E8(v60, v62, v219);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_267B93000, v55, v56, "#SearchForMessagesNLIntentTransformer transforming from: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x26D60A7B0](v59, -1, -1);
    v64 = v58;
    v54 = v213;
    MEMORY[0x26D60A7B0](v64, -1, -1);
  }

  else
  {

    (*(v40 + 8))(v45, v54);
  }

  v65 = v216;
  v66 = v204;
  v203(v204, v205, v54);
  v67 = type metadata accessor for SmsNLv3Intent();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v70 = sub_267EC41AC(v66);
  if (!v70)
  {
    v98 = sub_267EF89F8();
    v99 = sub_267EF95D8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_267B93000, v98, v99, "#SearchForMessagesNLIntentTransformer NL intent not in sms domain, returning an empty SiriKit intent", v100, 2u);
      MEMORY[0x26D60A7B0](v100, -1, -1);
    }

    v101 = [objc_allocWithZone(MEMORY[0x277CD4048]) init];
    goto LABEL_97;
  }

  v71 = v70;
  sub_267EC4E04();
  v203 = v72;
  sub_267EC4E04();
  v178 = v73;
  v74 = v65[6];
  __swift_project_boxed_opaque_existential_0(v65 + 2, v65[5]);
  sub_267EC4468();
  v76 = v75;
  v78 = v77;
  v179 = sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  v79 = sub_267EF2D28();
  v80 = v211;
  v205 = v79;
  __swift_storeEnumTagSinglePayload(v211, 1, 1, v79);
  v81 = sub_267EF6C28();
  __swift_storeEnumTagSinglePayload(v212, 1, 1, v81);
  v181 = OUTLINED_FUNCTION_28_3();
  v82 = sub_267EF6FF8();
  v83 = sub_267EF6FC8();
  v84 = v190;
  sub_267BC9B04(v80, v190, &qword_280229430, &qword_267EFD2C0);

  v85 = sub_267EF89F8();
  v86 = sub_267EF95D8();

  v87 = os_log_type_enabled(v85, v86);
  v213 = v78;
  v182 = v82;
  v204 = v83;
  v180 = v76;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v221 = v176;
    *v88 = 136315394;
    v219[0] = v76;
    v219[1] = v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v89 = sub_267EF9098();
    v91 = sub_267BA33E8(v89, v90, &v221);

    *(v88 + 4) = v91;
    *(v88 + 12) = 2080;
    sub_267BC9B04(v84, v183, &qword_280229430, &qword_267EFD2C0);
    v92 = sub_267EF9098();
    v94 = v93;
    sub_267B9FED8(v84, &qword_280229430, &qword_267EFD2C0);
    v95 = sub_267BA33E8(v92, v94, &v221);

    *(v88 + 14) = v95;
    _os_log_impl(&dword_267B93000, v85, v86, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v88, 0x16u);
    v96 = v176;
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v96, -1, -1);
    v97 = v88;
    v83 = v204;
    MEMORY[0x26D60A7B0](v97, -1, -1);
  }

  else
  {

    sub_267B9FED8(v84, &qword_280229430, &qword_267EFD2C0);
  }

  v102 = v197;
  v103 = v196;
  v104 = v195;
  v105 = v205;
  if (v83 && (sub_267EF6F98(), v106 = sub_267EF37B8(), v108 = v107, , v108))
  {
    v196 = v108;
    v197 = v106;
  }

  else
  {

    v197 = 0;
    v196 = 0xE000000000000000;
  }

  v219[0] = v179;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  v195 = sub_267EF9098();
  v190 = v109;
  v110 = v216[16];
  __swift_project_boxed_opaque_existential_0(v216 + 12, v216[15]);
  sub_267EF3B68();
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v111 = swift_allocObject();
  v183 = xmmword_267EFC020;
  *(v111 + 16) = xmmword_267EFC020;
  v112 = 0x8000000267F10280;
  v113 = 0xD000000000000013;
  if (v213)
  {
    v113 = v180;
    v112 = v213;
  }

  *(v111 + 32) = v113;
  *(v111 + 40) = v112;
  sub_267BC9B04(v212, v206, &qword_280229428, &unk_267F00E50);
  v114 = v191;
  sub_267BC9B04(v211, v191, &qword_280229430, &qword_267EFD2C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v114, 1, v105);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9FED8(v114, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v105 - 8) + 8))(v114, v105);
  }

  v13 = v210;
  v116 = v198;
  v205 = v71;
  sub_267EF6B28();
  (*(v193 + 104))(v104, *MEMORY[0x277D56148], v194);
  (*(v103 + 104))(v102, *MEMORY[0x277D560D0], v116);
  sub_267EF6AF8();

  sub_267B9FED8(v212, &qword_280229428, &unk_267F00E50);
  sub_267B9FED8(v211, &qword_280229430, &qword_267EFD2C0);
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    v3 = sub_267EF8678();
    v13 = v210;
  }

  else
  {
    v3 = 0;
  }

  v117 = v209;
  v8 = v216;
  v118 = v203;
  v1 = v13;
  sub_267EF6B08();
  if (!*(v118 + 16))
  {

LABEL_44:
    v46 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v45 = sub_267DA509C((v8 + 7), v118);

  v46 = *(v45 + 16);
  if (!v46)
  {

    v127 = sub_267EF89F8();
    v128 = sub_267EF95D8();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_267B93000, v127, v128, "#SearchForMessagesNLIntentTransformer Recipient nodes do not have a fresh query value, skipping contact resolution", v129, 2u);
      MEMORY[0x26D60A7B0](v129, -1, -1);
    }

    goto LABEL_44;
  }

  sub_267B9B050((v8 + 2), v219);
  v119 = __swift_project_boxed_opaque_existential_0(v219, v220);
  v40 = 0;
  v8 = v218 + 2;
  v211 = v119;
  v212 = (v218 + 4);
  a1 = (v218 + 1);
  v213 = MEMORY[0x277D84F90];
  v49 = v186;
  while (v46 != v40)
  {
    if (v40 >= *(v45 + 16))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v1 = v217;
    v13 = ((*(v218 + 80) + 32) & ~*(v218 + 80));
    v3 = v218[9];
    (v218[2])(v217, v13 + v45 + v3 * v40, v49);
    if (sub_267EF6988())
    {
      (*a1)(v1, v49);
      ++v40;
    }

    else
    {
      v207 = *v212;
      (v207)(v187, v1, v49);
      v1 = v213;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v121 = v1[2];
        sub_267C72284();
        v49 = v186;
        v1 = v221;
      }

      v122 = v1[2];
      v123 = v122 + 1;
      if (v122 >= v1[3] >> 1)
      {
        v124 = v122 + 1;
        v213 = v1[2];
        sub_267C72284();
        v123 = v124;
        v122 = v213;
        v49 = v186;
        v1 = v221;
      }

      ++v40;
      v1[2] = v123;
      v213 = v1;
      (v207)(v13 + v1 + v122 * v3, v187, v49);
    }
  }

  v3 = v210;
  v1 = v211;
  v125 = v209;
  v126 = sub_267EF6888();
  if (v125)
  {
    (*(v188 + 8))(v3, v189);

    __swift_destroy_boxed_opaque_existential_0(v219);
    goto LABEL_56;
  }

  v40 = v126;
  v209 = 0;

  v46 = MEMORY[0x277D84F90];
  v221 = MEMORY[0x277D84F90];
  v49 = sub_267BAF0DC(v40);
  v45 = 0;
  v217 = v40 & 0xFFFFFFFFFFFFFF8;
  v218 = (v40 & 0xC000000000000001);
  v13 = (v177 + 8);
  a1 = v214;
  while (v49 != v45)
  {
    if (v218)
    {
      v147 = MEMORY[0x26D609870](v45, v40);
    }

    else
    {
      if (v45 >= *(v217 + 16))
      {
        goto LABEL_101;
      }

      v147 = *(v40 + 8 * v45 + 32);
    }

    v46 = v147;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_100;
    }

    v8 = v216[16];
    __swift_project_boxed_opaque_existential_0(v216 + 12, v216[15]);
    sub_267EF3B68();
    v3 = sub_267DEA1E8();

    v148 = (*v13)(a1, v215);
    v1 = &v221;
    MEMORY[0x26D608F90](v148);
    if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
    v46 = v221;
    ++v45;
  }

  __swift_destroy_boxed_opaque_existential_0(v219);
  v117 = v209;
  v8 = v216;
LABEL_45:
  if (!*(v178 + 16))
  {

LABEL_53:
    v218 = MEMORY[0x277D84F90];
LABEL_54:
    v136 = v185;
    sub_267EC5E7C();
    v137 = sub_267C4A858(v136);
    if (v117)
    {

      sub_267B9FED8(v136, &qword_280229600, &qword_267EFDE30);
      (*(v188 + 8))(v210, v189);
      goto LABEL_56;
    }

    v140 = v137;
    sub_267B9FED8(v136, &qword_280229600, &qword_267EFDE30);
    v141 = v140;
    v142 = sub_267EC4D94();
    if (v143)
    {
      v144 = v142;
      v145 = v143;
      v146 = swift_allocObject();
      *(v146 + 16) = v183;
      *(v146 + 32) = v144;
      *(v146 + 40) = v145;
    }

    else
    {
      v146 = 0;
    }

    v151 = sub_267EC4360() - 1;
    v217 = v141;
    if (v151 > 9u)
    {
      v152 = 0;
    }

    else
    {
      v152 = qword_267EFDE38[v151];
    }

    v153 = v46;
    v154 = sub_267EC5F4C();
    if (v154)
    {
      v155 = v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_267EFCA40;
      *(v156 + 32) = v155;
    }

    else
    {
      v156 = 0;
    }

    v157 = sub_267EC4CFC();
    if (v158)
    {
      v159 = v157;
      v160 = v158;
      v161 = swift_allocObject();
      *(v161 + 16) = v183;
      *(v161 + 32) = v159;
      *(v161 + 40) = v160;
    }

    else
    {
      v161 = 0;
    }

    v162 = objc_allocWithZone(MEMORY[0x277CD4048]);
    v163 = sub_267BC7400(v153, v218, v146, v152, v140, 0, 0, v156, v161);
    v164 = v216[21];
    __swift_project_boxed_opaque_existential_0(v216 + 17, v216[20]);
    v101 = v163;
    sub_267EF4278();
    __swift_project_boxed_opaque_existential_0(v219, v220);
    sub_267EF42B8();
    if (v165)
    {
      v166 = sub_267EF8FF8();
    }

    else
    {
      v166 = 0;
    }

    v167 = v217;
    __swift_destroy_boxed_opaque_existential_0(v219);
    [v101 _setOriginatingDeviceIdsIdentifier_];

    v168 = sub_267EF89F8();
    v169 = sub_267EF95D8();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *v170 = 138412290;
      *(v170 + 4) = v101;
      *v171 = v101;
      v172 = v101;
      _os_log_impl(&dword_267B93000, v168, v169, "#SearchForMessagesNLIntentTransformer transformed to: %@", v170, 0xCu);
      sub_267B9FED8(v171, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v171, -1, -1);
      MEMORY[0x26D60A7B0](v170, -1, -1);
    }

    (*(v188 + 8))(v210, v189);
LABEL_97:
    sub_267EF9688();
    v173 = v200;
    sub_267EF89B8();
    (*(v201 + 8))(v173, v202);
    return v101;
  }

  v130 = sub_267DA509C((v8 + 7), v178);

  if (!*(v130 + 16))
  {

    v133 = sub_267EF89F8();
    v134 = sub_267EF95D8();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_267B93000, v133, v134, "#SearchForMessagesNLIntentTransformer Sender nodes do not have a fresh query value, skipping contact resolution", v135, 2u);
      MEMORY[0x26D60A7B0](v135, -1, -1);
    }

    goto LABEL_53;
  }

  v1 = __swift_project_boxed_opaque_existential_0(v8 + 2, v8[5]);
  v131 = v210;
  v132 = sub_267EF6888();
  if (!v117)
  {
    v40 = v132;
    v213 = v46;
    v209 = 0;

    v3 = MEMORY[0x277D84F90];
    v219[0] = MEMORY[0x277D84F90];
    v49 = sub_267BAF0DC(v40);
    v45 = 0;
    v217 = v40 & 0xFFFFFFFFFFFFFF8;
    v218 = (v40 & 0xC000000000000001);
    v13 = (v177 + 8);
    a1 = v214;
    while (v49 != v45)
    {
      if (v218)
      {
        v149 = MEMORY[0x26D609870](v45, v40);
      }

      else
      {
        if (v45 >= *(v217 + 16))
        {
          goto LABEL_103;
        }

        v149 = *(v40 + 8 * v45 + 32);
      }

      v46 = v149;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_102;
      }

      v8 = v216[16];
      __swift_project_boxed_opaque_existential_0(v216 + 12, v216[15]);
      sub_267EF3B68();
      sub_267DEA1E8();

      v150 = (*v13)(a1, v215);
      v1 = v219;
      MEMORY[0x26D608F90](v150);
      v46 = *((v219[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46 >= *((v219[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v3 = v219[0];
      ++v45;
    }

    v218 = v3;

    v117 = v209;
    v46 = v213;
    goto LABEL_54;
  }

  (*(v188 + 8))(v131, v189);

LABEL_56:
  v138 = v202;
  v139 = v201;
  sub_267EF9688();
  v101 = v200;
  sub_267EF89B8();
  (*(v139 + 8))(v101, v138);
  return v101;
}

uint64_t sub_267C4A858(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F8, &qword_267EFDE28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229600, &qword_267EFDE30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  sub_267BC9B04(a1, &v19 - v12, &qword_280229600, &qword_267EFDE30);
  v14 = sub_267EF58C8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_267B9FED8(v13, &qword_280229600, &qword_267EFDE30);
    return 0;
  }

  else
  {
    v16 = sub_267EF58B8();
    (*(*(v14 - 8) + 8))(v13, v14);
    sub_267B9B050(v3 + 96, v20);
    v17 = swift_allocObject();
    sub_267B9A5E8(v20, v17 + 16);
    sub_267EF6C78();
    sub_267BA9F38(0, &qword_280229608, 0x277CD3B68);
    sub_267EF7058();
    v18 = sub_267EF7068();
    (*(v6 + 8))(v9, v5);
    *&v20[0] = v16;
    v18(&v21, v20);
    if (v2)
    {

      return 0;
    }

    else
    {

      return v21;
    }
  }
}

uint64_t *sub_267C4AB10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  return v0;
}

uint64_t sub_267C4AB48()
{
  sub_267C4AB10();

  return swift_deallocClassInstance();
}

uint64_t sub_267C4AB9C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char **a5@<X8>)
{
  v33 = a5;
  sub_267B9B050(a2, v40);
  sub_267B9B050(a3, v39);
  v8 = a4[3];
  v9 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v8);
  (*(v9 + 8))(v38, v8, v9);
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v10);
  (*(v11 + 16))(v37, v10, v11);
  v12 = v41;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_267EF68A8();
  v35 = v17;
  v36 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(v34);
  OUTLINED_FUNCTION_5_0(v17);
  v19 = *(v18 + 32);
  v19();
  type metadata accessor for SearchForMessagesNLIntentTransformer();
  inited = swift_initStackObject();
  v21 = v35;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  inited[5] = v17;
  inited[6] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  (v19)(boxed_opaque_existential_0, v25, v17);
  sub_267B9A5E8(v39, (inited + 7));
  sub_267B9A5E8(v38, (inited + 12));
  sub_267B9A5E8(v37, (inited + 17));
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v40);
  v28 = v42;
  v29 = sub_267C48DD4(a1);
  if (v28)
  {
    swift_setDeallocating();
    sub_267C4AB10();
    return swift_deallocClassInstance();
  }

  else
  {
    v31 = v29;
    swift_setDeallocating();
    sub_267C4AB10();
    result = swift_deallocClassInstance();
    *v33 = v31;
  }

  return result;
}

unint64_t sub_267C4AED4()
{
  result = qword_2802293D8;
  if (!qword_2802293D8)
  {
    sub_267EF6718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802293D8);
  }

  return result;
}

uint64_t sub_267C4AF2C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  *v19 = sub_267EF4668();
  swift_storeEnumTagMultiPayload();
  sub_267C4BDA0(v19, v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state);
  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_childFlowFactory) = a1;

  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_app) = sub_267EF4648();
  v21 = sub_267EF4638();

  (*(*(v20 - 8) + 8))(a2, v20);
  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_confirmIntentResponse) = v21;
  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_searchForMessagesState) = a4;
  v22 = (v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_handleIntentFlowProducer);
  *v22 = a5;
  v22[1] = a6;
  sub_267BE58F4(a3, v7 + 16);
  return v7;
}

uint64_t sub_267C4B0B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C4B198()
{
  OUTLINED_FUNCTION_8_8();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C4B220()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C4B304()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  (*(v5 + 8))(v3, v4);
  OUTLINED_FUNCTION_8_8();

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267C4B3C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = &unk_267EFDF98;
  v10[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267C4B4D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BDA00C();
}

uint64_t sub_267C4B56C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 104) = v3;
  *(v1 + 40) = v4;
  v5 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  *(v1 + 64) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  *(v1 + 80) = v7;
  v8 = *(v7 - 8);
  *(v1 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C4B664()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_app);
  v5 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_confirmIntentResponse);
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267BA9F38(0, &qword_280229680, 0x277CD4050);

  v6 = v2;
  v7 = v5;
  sub_267EF4658();
  v8 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_handleIntentFlowProducer + 8);
  (*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_handleIntentFlowProducer))(*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_childFlowFactory), v1);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "#SearchForMessagesHandleIntentFlow pushing handle intent flow", v12, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  v19 = *(v0 + 104);
  v20 = *(v0 + 40);

  *v15 = v19;
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDABD0(v15, v18 + v21);
  swift_endAccess();
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;

  sub_267EF3FD8();

  (*(v14 + 8))(v13, v16);

  OUTLINED_FUNCTION_17();

  return v23();
}

uint64_t sub_267C4B908()
{
  sub_267C4BE04(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_childFlowFactory);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_app);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_searchForMessagesState);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_handleIntentFlowProducer + 8);
}

uint64_t sub_267C4B98C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C4BE04(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_childFlowFactory);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_app);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_searchForMessagesState);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_handleIntentFlowProducer + 8);

  return v0;
}

uint64_t sub_267C4BA10()
{
  sub_267C4B98C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267C4BA90()
{
  result = type metadata accessor for SearchForMessagesHandleIntentFlow.State(319);
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

void sub_267C4BB4C()
{
  sub_267BA9F38(319, &qword_280229118, 0x277CD4048);
  if (v0 <= 0x3F)
  {
    sub_267C4BBF8();
    if (v1 <= 0x3F)
    {
      sub_267C4BC20();
      if (v2 <= 0x3F)
      {
        sub_267C4BC98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_267C4BBF8()
{
  result = qword_280229660;
  if (!qword_280229660)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_280229660);
  }

  return result;
}

void sub_267C4BC20()
{
  if (!qword_280229668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229670, qword_267EFDED0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280229668);
    }
  }
}

void sub_267C4BC98()
{
  if (!qword_280229678)
  {
    sub_267BA9F38(255, &qword_280229118, 0x277CD4048);
    sub_267BA9F38(255, &qword_280229680, 0x277CD4050);
    v0 = sub_267EF2F98();
    if (!v1)
    {
      atomic_store(v0, &qword_280229678);
    }
  }
}

unint64_t sub_267C4BD48()
{
  result = qword_280229688;
  if (!qword_280229688)
  {
    type metadata accessor for SearchForMessagesHandleIntentFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229688);
  }

  return result;
}

uint64_t sub_267C4BDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C4BE04(uint64_t a1)
{
  v2 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267C4BE60()
{
  result = qword_28022BBB0;
  if (!qword_28022BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BBB0);
  }

  return result;
}

uint64_t sub_267C4BEB4()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267C4B4D0();
}

uint64_t sub_267C4BF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_267EF7B88();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  v10 = sub_267EF78E8();
  type metadata accessor for ReadSenderInfoAction();
  swift_allocObject();
  v11 = sub_267C138B4(a1, a2, v10);
  v12 = sub_267C4C3C8(&qword_2802296C0, type metadata accessor for ReadSenderInfoAction);
  v13 = *(v4 + 16);
  *(v4 + 16) = v11;
  *(v4 + 24) = v12;
  swift_unknownObjectRelease();
  v14 = OBJC_IVAR____TtC16SiriMessagesFlow25ReadSenderInfoActionGroup_transition;
  v15 = sub_267EF4548();
  (*(*(v15 - 8) + 32))(v4 + v14, a3, v15);
  __swift_storeEnumTagSinglePayload(v4 + v14, 0, 1, v15);
  return v4;
}

uint64_t sub_267C4C0FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_267BA064C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow25ReadSenderInfoActionGroup_transition);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReadSenderInfoActionGroup()
{
  result = qword_2802296A0;
  if (!qword_2802296A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267C4C1BC()
{
  sub_267C4C258();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_267C4C258()
{
  if (!qword_2802296B0)
  {
    sub_267EF4548();
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_2802296B0);
    }
  }
}

uint64_t sub_267C4C2C4(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return ActionGrouping.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_267C4C358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C4C3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C4C410()
{
  v0 = type metadata accessor for MessagesContextProvider(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  type metadata accessor for TimedSpokenContext(0);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_78();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  qword_280240640 = v3;
  return result;
}

uint64_t sub_267C4C48C@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for TimedSpokenContext(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229440, &qword_267EFD2E0);
  v8 = OUTLINED_FUNCTION_22(v61);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6_7();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = sub_267EF2CC8();
  v18 = OUTLINED_FUNCTION_58(v17);
  v60 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_60();
  v24 = v22 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v59 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - v29;
  v31 = OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__spokenContext;
  swift_beginAccess();
  sub_267B9A598(v1 + v31, v16, &qword_280229440, &qword_267EFD2E0);
  v63 = v2;
  if (__swift_getEnumTagSinglePayload(v16, 1, v2))
  {
    sub_267B9F98C(v16, &qword_280229440, &qword_267EFD2E0);
    v32 = v1;
  }

  else
  {
    v59 = v24;
    v33 = v60;
    (*(v60 + 16))(v28, v16, v17);
    sub_267B9F98C(v16, &qword_280229440, &qword_267EFD2E0);
    (*(v33 + 32))(v30, v28, v17);
    v34 = v31;
    OUTLINED_FUNCTION_5_12();
    sub_267B9A598(v35, v36, v37, v38);
    v32 = v1;
    if (__swift_getEnumTagSinglePayload(v14, 1, v63) == 1)
    {
      (*(v33 + 8))(v30, v17);
      sub_267B9F98C(v14, &qword_280229440, &qword_267EFD2E0);
    }

    else
    {
      v39 = v7;
      sub_267C4D768(v14, v7, type metadata accessor for TimedSpokenContext);
      v40 = v59;
      sub_267EF2CB8();
      sub_267EF2C38();
      v42 = v41;
      v43 = *(v33 + 8);
      v43(v40, v17);
      v43(v30, v17);
      v44 = *(v39 + *(v63 + 20));
      sub_267C4D7C8(v39, type metadata accessor for TimedSpokenContext);
      v31 = v34;
      if (v44 < v42)
      {
        v45 = v62;
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
        swift_beginAccess();
        sub_267C26980(v45, v1 + v34, &qword_280229440, &qword_267EFD2E0);
        swift_endAccess();
      }
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v50 = sub_267EF8A08();
  __swift_project_value_buffer(v50, qword_280240FB0);

  v51 = sub_267EF89F8();
  v52 = sub_267EF95D8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v65 = v54;
    *v53 = 136315138;
    sub_267B9A598(v32 + v31, v62, &qword_280229440, &qword_267EFD2E0);
    v55 = sub_267EF9098();
    v57 = sub_267BA33E8(v55, v56, &v65);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_267B93000, v51, v52, "#MessagesContextProvider Returning TimedSpokenContext: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267B9A598(v32 + v31, v64, &qword_280229440, &qword_267EFD2E0);
}

uint64_t sub_267C4C9C0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for TimedSentMessageContext(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  v12 = OUTLINED_FUNCTION_22(v63);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6_7();
  v16 = MEMORY[0x28223BE20](v15);
  v61 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = sub_267EF2CC8();
  v21 = OUTLINED_FUNCTION_58(v20);
  v65 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_60();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v59 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v59 - v32;
  v34 = OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__sentMessageContext;
  swift_beginAccess();
  sub_267B9A598(v1 + v34, v19, &qword_280229228, &qword_267EFDD20);
  v62 = v2;
  if (__swift_getEnumTagSinglePayload(v19, 1, v2))
  {
    sub_267B9F98C(v19, &qword_280229228, &qword_267EFDD20);
    v35 = v1;
  }

  else
  {
    v60 = v27;
    sub_267C4D704(v19, v11);
    sub_267B9F98C(v19, &qword_280229228, &qword_267EFDD20);
    v36 = v65;
    (*(v65 + 16))(v31, v11, v20);
    sub_267C4D7C8(v11, type metadata accessor for TimedSentMessageContext);
    (*(v36 + 32))(v33, v31, v20);
    v37 = v1;
    v38 = v1 + v34;
    v39 = v61;
    sub_267B9A598(v38, v61, &qword_280229228, &qword_267EFDD20);
    v40 = v62;
    if (__swift_getEnumTagSinglePayload(v39, 1, v62) == 1)
    {
      (*(v65 + 8))(v33, v20);
      sub_267B9F98C(v39, &qword_280229228, &qword_267EFDD20);
      v35 = v37;
    }

    else
    {
      sub_267C4D768(v39, v8, type metadata accessor for TimedSentMessageContext);
      v41 = v60;
      sub_267EF2CB8();
      sub_267EF2C38();
      v43 = v42;
      v44 = *(v65 + 8);
      v44(v41, v20);
      v44(v33, v20);
      v45 = *(v8 + *(v40 + 20));
      sub_267C4D7C8(v8, type metadata accessor for TimedSentMessageContext);
      v35 = v37;
      if (v45 < v43)
      {
        v46 = v64;
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v40);
        swift_beginAccess();
        sub_267C26980(v46, v37 + v34, &qword_280229228, &qword_267EFDD20);
        swift_endAccess();
      }
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v50 = sub_267EF8A08();
  __swift_project_value_buffer(v50, qword_280240FB0);

  v51 = sub_267EF89F8();
  v52 = sub_267EF95D8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v67 = v54;
    *v53 = 136315138;
    sub_267B9A598(v35 + v34, v64, &qword_280229228, &qword_267EFDD20);
    v55 = sub_267EF9098();
    v57 = sub_267BA33E8(v55, v56, &v67);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_267B93000, v51, v52, "#MessagesContextProvider Returning TimedSentMessageContext: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267B9A598(v35 + v34, v66, &qword_280229228, &qword_267EFDD20);
}

uint64_t sub_267C4CF48(uint64_t a1, uint64_t *a2, uint64_t *a3, const char *a4, uint64_t *a5)
{
  v42 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_60();
  MEMORY[0x28223BE20](v13);
  v15 = v41 - v14;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);
  OUTLINED_FUNCTION_5_12();
  sub_267B9A598(v17, v18, v19, v20);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v41[0] = a5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41[1] = a1;
    v26 = v25;
    v43[0] = v25;
    *v24 = 136315138;
    OUTLINED_FUNCTION_5_12();
    sub_267B9A598(v27, v28, v29, v30);
    v31 = sub_267EF9098();
    v33 = v32;
    sub_267B9F98C(v15, a2, a3);
    v34 = sub_267BA33E8(v31, v33, v43);

    *(v24 + 4) = v34;
    _os_log_impl(&dword_267B93000, v21, v22, v42, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_32_0();
    a5 = v41[0];
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267B9F98C(v15, a2, a3);
  }

  v35 = *a5;
  swift_beginAccess();
  OUTLINED_FUNCTION_5_12();
  sub_267C26980(v36, v37, v38, v39);
  return swift_endAccess();
}

uint64_t sub_267C4D184()
{
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__spokenContext, &qword_280229440, &qword_267EFD2E0);
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__sentMessageContext, &qword_280229228, &qword_267EFDD20);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_267C4D240()
{
  sub_267C4D364(319, &qword_2802296E8, type metadata accessor for TimedSpokenContext);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_267C4D364(319, &qword_2802296F0, type metadata accessor for TimedSentMessageContext);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_267C4D364(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_267EF9888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267C4D400()
{
  result = sub_267EF2CC8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Conversation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF2CC8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267EF2CC8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267C4D610()
{
  result = sub_267EF2CC8();
  if (v1 <= 0x3F)
  {
    result = sub_267EF7C38();
    if (v2 <= 0x3F)
    {
      result = sub_267BA9F38(319, &qword_28022AE60, 0x277CD4078);
      if (v3 <= 0x3F)
      {
        result = sub_267BA9F38(319, &qword_280229718, 0x277CD4080);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SendMessageState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_267C4D704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedSentMessageContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C4D768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267C4D7C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267C4D820@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v113 = sub_267EF5168();
  v1 = OUTLINED_FUNCTION_58(v113);
  v126 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1(&v89 - v6);
  v110 = sub_267EF5188();
  v7 = OUTLINED_FUNCTION_58(v110);
  v120 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v12 - v11);
  v108 = sub_267EF51F8();
  v13 = OUTLINED_FUNCTION_58(v108);
  v123 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v18 - v17);
  v115 = sub_267EF4C68();
  v19 = OUTLINED_FUNCTION_58(v115);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229720, &qword_267EFE108);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v114 = &v89 - v29;
  v30 = sub_267EF4C08();
  v31 = OUTLINED_FUNCTION_58(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_0();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v89 - v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v41);
  v127 = &v89 - v42;
  result = sub_267EF4B78();
  v44 = result;
  v45 = 0;
  v122 = *(result + 16);
  v124 = v33 + 16;
  v118 = v33 + 88;
  v125 = *MEMORY[0x277D5C160];
  v46 = (v33 + 8);
  v106 = v33 + 96;
  v105 = v21 + 32;
  v104 = v123 + 8;
  v103 = v120 + 8;
  v102 = *MEMORY[0x277D5DAB0];
  v101 = v126 + 104;
  v100 = (v126 + 8);
  v99 = v21 + 8;
  v96 = v21 + 16;
  v95 = v33 + 104;
  v120 = v33;
  v92 = (v33 + 32);
  v94 = MEMORY[0x277D84F90];
  v119 = v40;
  v121 = result;
  v98 = v26;
LABEL_2:
  v47 = v114;
  while (1)
  {
    if (v122 == v45)
    {

      sub_267C8F050(v94, v91);
    }

    if (v45 >= *(v44 + 16))
    {
      break;
    }

    v48 = v120;
    v117 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v49 = *(v120 + 72);
    v126 = v45;
    v116 = v49;
    v50 = v44 + v117 + v49 * v45;
    v51 = *(v120 + 16);
    v52 = v127;
    v53 = v46;
    v51(v127, v50, v30);
    v123 = v51;
    v51(v40, v52, v30);
    v54 = (*(v48 + 88))(v40, v30);
    if (v54 == v125)
    {
      OUTLINED_FUNCTION_1_6(&v134);
      v55(v40, v30);
      OUTLINED_FUNCTION_1_6(&v133);
      v56 = v115;
      v57(v26, v40, v115);
      v58 = v107;
      sub_267EF4C48();
      v59 = v109;
      sub_267EF51D8();
      OUTLINED_FUNCTION_1_6(&v132);
      v60(v58, v108);
      v61 = v111;
      sub_267EF5178();
      OUTLINED_FUNCTION_1_6(&v131);
      v62(v59, v110);
      OUTLINED_FUNCTION_1_6(&v130);
      v63 = v56;
      v64 = v112;
      v65 = v113;
      v66(v112, v102, v113);
      sub_267C4E1B8();
      sub_267EF9298();
      sub_267EF9298();
      v67 = *v100;
      (*v100)(v64, v65);
      v67(v61, v65);
      if (v128 == v130)
      {
        OUTLINED_FUNCTION_1_6(&v128);
        v68 = v97;
        v69 = v98;
        v70(v97, v98, v63);
        OUTLINED_FUNCTION_1_6(&v127);
        v71(v68, v125, v30);
        v72 = sub_267E57DFC(v68, &v128);
        v46 = v53;
        v73 = *v53;
        (*v53)(v68, v30, v72);
        v74 = v129[0];
        v26 = v69;
        if (v129[0])
        {
          v75 = v129[1];
          __swift_project_boxed_opaque_existential_0(&v128, v129[0]);
          LOBYTE(v75) = (*(v75 + 208))(v74, v75);
          OUTLINED_FUNCTION_1_6(v129);
          v76(v69, v115);
          __swift_destroy_boxed_opaque_existential_0(&v128);
          v47 = v114;
          if (v75)
          {
            (v123)(v114, v127, v30);
            __swift_storeEnumTagSinglePayload(v47, 0, 1, v30);
            goto LABEL_14;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_6(v129);
          v79(v69, v115);
          sub_267B9FF34(&v128, &unk_28022BBF0, &unk_267F01C60);
          v47 = v114;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_6(v129);
        v77 = v98;
        v78(v98, v63);
        v26 = v77;
        v47 = v114;
        v46 = v53;
      }
    }

    else
    {
      (*v46)(v40, v30);
    }

    __swift_storeEnumTagSinglePayload(v47, 1, 1, v30);
    v73 = *v46;
LABEL_14:
    v44 = v121;
    v73(v127, v30);
    if (__swift_getEnumTagSinglePayload(v47, 1, v30) != 1)
    {
      v80 = *v92;
      v81 = v90;
      (*v92)(v90, v47, v30);
      v80(v93, v81, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = *(v94 + 16);
        sub_267C712C4();
        v94 = v87;
      }

      v84 = *(v94 + 16);
      if (v84 >= *(v94 + 24) >> 1)
      {
        sub_267C712C4();
        v94 = v88;
      }

      v45 = v83 + 1;
      v85 = v94;
      *(v94 + 16) = v84 + 1;
      result = (v80)(v85 + v117 + v84 * v116, v93, v30);
      v40 = v119;
      goto LABEL_2;
    }

    result = sub_267B9FF34(v47, &qword_280229720, &qword_267EFE108);
    v45 = v126 + 1;
    v40 = v119;
  }

  __break(1u);
  return result;
}

unint64_t sub_267C4E1B8()
{
  result = qword_280229728;
  if (!qword_280229728)
  {
    sub_267EF5168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229728);
  }

  return result;
}

uint64_t sub_267C4E210(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4E228()
{
  OUTLINED_FUNCTION_56();
  v1 = *MEMORY[0x277CE4228];
  v2 = *(v0[3] + 8);
  v11 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_267C4E34C;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v8.n128_u64[0] = 5.0;
  v9.n128_u64[0] = v1;

  return v11(v7, v5, v9, v8);
}

uint64_t sub_267C4E34C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267C4E474, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_4_3();

    return v9(v3);
  }
}

uint64_t sub_267C4E474()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#AFLocationService AFLocationServiceError %@", v8, 0xCu);
    sub_267C142D4(v9);
    MEMORY[0x26D60A7B0](v9, -1, -1);
    MEMORY[0x26D60A7B0](v8, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_3();

  return v12(0);
}

uint64_t sub_267C4E608(double a1, double a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4E624()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_28_0(&dword_267F0DF40);
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_267C4E6B4;
  v2 = v0[4];
  v3 = v0[2];
  v4 = v0[3];
  v5 = OUTLINED_FUNCTION_9_9();

  return v6(v5);
}

uint64_t sub_267C4E6B4()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 40);
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

uint64_t sub_267C4E7C4()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_28_0(&unk_267EFE198);
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_267C4E850;
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_9_9();

  return v4(v3);
}

uint64_t sub_267C4E850()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 24);
  v6 = *v3;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}

uint64_t sub_267C4E94C()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_267C4EA68;
  v2 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229730, &unk_267EFE1A0);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_267C4EBA4;
  v1[13] = &block_descriptor_3;
  v1[14] = v2;
  [v0 currentAuthorizationStyle_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_267C4EA68()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    v3 = *(*v0 + 48);
    swift_willThrow();
    v4 = *(v2 + 8);

    return v4();
  }

  else
  {
    v6 = *(v1 + 144);
    v7 = *(v1 + 152);
    v8 = *(v2 + 8);
    v9 = *v0;

    return v8(v6, v7);
  }
}

uint64_t sub_267C4EBA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    v9 = a4;

    return sub_267E98204(v8, v9);
  }

  else
  {
    v11 = *v7;

    return sub_267E92A64(v11, a2, a3);
  }
}

uint64_t sub_267C4EC30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BF1F28;

  return sub_267C4E210(a1, a2);
}

uint64_t sub_267C4ECD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4ECE8()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_relationshipLabel;
  v4 = sub_267EF42F8();
  OUTLINED_FUNCTION_22(v4);
  (*(v5 + 16))(v2, v1 + v3);
  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_267C4ED80()
{
  OUTLINED_FUNCTION_12();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_267EF44C8();
  v0[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C4EE28()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v20 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v19 = sub_267EF4918();
  sub_267EF4938();
  v6 = sub_267EF44A8();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297A8, &unk_267EFEFA0);
  v10 = OUTLINED_FUNCTION_47_3();
  *(v10 + 16) = xmmword_267EFC020;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v11 = OUTLINED_FUNCTION_47_3();
  *(v11 + 16) = xmmword_267EFCA40;
  *(v11 + 32) = sub_267E59EF0();
  *(v10 + 32) = v11;
  v12 = sub_267EF4918();
  v13 = sub_267EB7470(v12);
  v14 = sub_267E71558(v9, v10, v13);

  sub_267D28C4C(v19, v14);
  sub_267BA9F38(0, &qword_280229788, 0x277D47630);
  v15 = v5;
  sub_267EF4388();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v16);

  OUTLINED_FUNCTION_1();

  return v17();
}

void sub_267C4F040()
{
  OUTLINED_FUNCTION_48_0();
  v0 = sub_267EF4BA8();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = *(v3 + 16);
  v11 = OUTLINED_FUNCTION_50_1();
  v12(v11);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_48();
    v22 = OUTLINED_FUNCTION_52();
    *v15 = 136315138;
    OUTLINED_FUNCTION_5_13();
    sub_267C58938(v16, v17);
    sub_267EF9E58();
    (*(v3 + 8))(v8, v0);
    v18 = OUTLINED_FUNCTION_66();
    v21 = sub_267BA33E8(v18, v19, v20);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_267B93000, v13, v14, "actionForPromptForNameInput# Received input %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v3 + 8))(v8, v0);
  }

  sub_267C4F270();
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C4F270()
{
  v0 = sub_267EF4C08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4B88();
  v5 = sub_267E57DFC(v4, &v15);
  (*(v1 + 8))(v4, v0, v5);
  if (v16)
  {
    sub_267B9A5E8(&v15, v17);
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_0(v17, v18);
    if ((*(v7 + 96))(v6, v7) & 1) != 0 || (v8 = v18, v9 = v19, __swift_project_boxed_opaque_existential_0(v17, v18), ((*(v9 + 104))(v8, v9)))
    {
      sub_267EF3E48();
    }

    else
    {
      sub_267EF3E58();
    }

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_267B9F98C(&v15, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267B93000, v11, v12, "UnsetRelationship# Not an SMS intent -> ignore", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    return sub_267EF3E68();
  }
}

uint64_t sub_267C4F4C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4F4D8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[3];
  v2 = v0[4];
  sub_267C4F550(v0[2]);
  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C4F550@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_267EF4C68();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - v5;
  v7 = sub_267EF6718();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = sub_267EF4C08();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4B88();
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D5C128])
  {
    (*(v16 + 96))(v19, v15);
    (*(v8 + 32))(v14, v19, v7);
    (*(v8 + 16))(v12, v14, v7);
    v21 = type metadata accessor for SmsNLv3Intent();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_267EC41AC(v12);
    sub_267C56E98(v24, v38);

    return (*(v8 + 8))(v14, v7);
  }

  else
  {
    v26 = v38;
    if (v20 == *MEMORY[0x277D5C160])
    {
      (*(v16 + 96))(v19, v15);
      v28 = v36;
      v27 = v37;
      (*(v36 + 32))(v6, v19, v37);
      (*(v28 + 16))(v35, v6, v27);
      v29 = type metadata accessor for SmsNLv4Intent();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      sub_267DD5530();
      sub_267C57590(v32, v26);

      return (*(v28 + 8))(v6, v27);
    }

    else
    {
      sub_267C266B0();
      swift_allocError();
      *v33 = 0xD00000000000003DLL;
      v33[1] = 0x8000000267F13080;
      swift_willThrow();
      return (*(v16 + 8))(v19, v15);
    }
  }
}

uint64_t sub_267C4F960()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  v6 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding;
  OUTLINED_FUNCTION_10(&unk_267EFE4C8);
  v11 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_267BBD07C;

  return v11(v5, v3, v0 + v6);
}

uint64_t sub_267C4FA1C(uint64_t a1, uint64_t a2)
{
  v3[17] = a1;
  v3[18] = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = sub_267EF4228();
  v3[20] = v6;
  v7 = *(v6 - 8);
  v3[21] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[22] = v9;
  v10 = *(MEMORY[0x277D5BFF8] + 4);
  v11 = swift_task_alloc();
  v3[23] = v11;
  *v11 = v3;
  v11[1] = sub_267C4FB58;

  return MEMORY[0x2821BB9A0](v9, a2);
}

uint64_t sub_267C4FB58()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 184);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C4FC58()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = v6[5];
  v8 = v6[6];
  OUTLINED_FUNCTION_21_4(v6 + 2);
  v9 = OUTLINED_FUNCTION_10_0();
  v10(v9);
  v11 = v6[5];
  v12 = v6[6];
  OUTLINED_FUNCTION_21_4(v6 + 2);
  v13 = OUTLINED_FUNCTION_10_0();
  v14(v13);
  v15 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  sub_267C578DC(v3);
  v16 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v16);
  v17 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v18 = MEMORY[0x277D5C1D8];
  v5[3] = v17;
  v5[4] = v18;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_267EF3F68();
  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v3, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v19 = *(v2 + 8);
  v20 = OUTLINED_FUNCTION_37_1();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_1();

  return v22();
}

uint64_t sub_267C4FE20()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[22];
  v2 = v0[19];

  OUTLINED_FUNCTION_17();
  v4 = v0[24];

  return v3();
}