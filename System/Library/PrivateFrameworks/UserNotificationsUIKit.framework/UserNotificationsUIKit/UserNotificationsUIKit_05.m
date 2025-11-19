uint64_t sub_21E8F2A1C()
{

  sub_21E929C48();

  sub_21E929C28();
}

Swift::Void __swiftcall NCNotificationListHighlights.handleWake(_:)(Swift::Bool a1)
{
  if ([v1 count] >= 1)
  {
    v3.receiver = v1;
    v3.super_class = NCNotificationListHighlights;
    objc_msgSendSuper2(&v3, sel_handleWake_, a1);
    sub_21E8F2B50(a1);
  }
}

void sub_21E8F2B50(char a1)
{
  v3 = *&v1[OBJC_IVAR___NCNotificationListHighlights_wakeLightDismissalTimer];
  if (v3)
  {
    [v3 invalidate];
  }

  if (a1)
  {
    if (v1[OBJC_IVAR___NCNotificationListHighlights_lastKnownIsCoverSheetVisible] == 1)
    {
      v1[OBJC_IVAR___NCNotificationListHighlights_wakeLightEffectInProgress] = 1;
      v4 = v1;
      v1[OBJC_IVAR___NCNotificationListHighlights_hasPendingWakeLightEffect] = 0;
      if (qword_27CED6AD0 != -1)
      {
        swift_once();
      }

      v5 = sub_21E929A78();
      __swift_project_value_buffer(v5, qword_27CED9E90);
      v6 = sub_21E929A58();
      v7 = sub_21E92A648();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_21E77E000, v6, v7, "HighlightsList light effect changing to: 2, reason: wake", v8, 2u);
        MEMORY[0x223D65FB0](v8, -1, -1);
      }

      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      v20 = sub_21E8FA47C;
      v21 = v10;
      v16 = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_21E792C28;
      v19 = &block_descriptor_85;
      v11 = _Block_copy(&v16);
      v12 = v4;

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v20 = sub_21E8FA49C;
      v21 = v13;
      v16 = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_21E8BC90C;
      v19 = &block_descriptor_91;
      v14 = _Block_copy(&v16);
      v15 = v12;

      [v9 animateWithDuration:268500992 delay:v11 options:v14 animations:0.8 completion:0.0];
      _Block_release(v14);
      _Block_release(v11);
    }

    else
    {
      v1[OBJC_IVAR___NCNotificationListHighlights_wakeLightEffectInProgress] = 0;
      if ((v1[OBJC_IVAR___NCNotificationListHighlights_lastKnownIsCoverSheetVisible] & 1) == 0)
      {
        v1[OBJC_IVAR___NCNotificationListHighlights_hasPendingWakeLightEffect] = 1;
      }
    }
  }

  else
  {
    v1[OBJC_IVAR___NCNotificationListHighlights_wakeLightEffectInProgress] = 0;
  }
}

void sub_21E8F2EC0(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR___NCNotificationListHighlights_wakeLightDismissalTimer;
  v4 = *&a2[OBJC_IVAR___NCNotificationListHighlights_wakeLightDismissalTimer];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v14[4] = sub_21E8FA4A4;
  v14[5] = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21E8B3B50;
  v14[3] = &block_descriptor_97;
  v7 = _Block_copy(v14);
  v8 = a2;

  v9 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:2.25];
  _Block_release(v7);
  v10 = *&a2[v3];
  *&a2[v3] = v9;

  v11 = [objc_opt_self() mainRunLoop];
  v12 = *&a2[v3];
  if (v12)
  {
    v13 = v11;
    [v11 addTimer:v12 forMode:*MEMORY[0x277CBE738]];
  }

  else
  {
    __break(1u);
  }
}

void sub_21E8F3038(uint64_t a1, void *a2)
{
  if (qword_27CED6AD0 != -1)
  {
    swift_once();
  }

  v3 = sub_21E929A78();
  __swift_project_value_buffer(v3, qword_27CED9E90);
  v4 = sub_21E929A58();
  v5 = sub_21E92A648();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21E77E000, v4, v5, "HighlightsList light effect changing to: 1, reason: wake", v6, 2u);
    MEMORY[0x223D65FB0](v6, -1, -1);
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v18 = sub_21E8FA4AC;
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_21E792C28;
  v17 = &block_descriptor_103;
  v9 = _Block_copy(&v14);
  v10 = a2;

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v18 = sub_21E8FA4CC;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_21E8BC90C;
  v17 = &block_descriptor_109;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v7 animateWithDuration:268500992 delay:v9 options:v12 animations:0.8 completion:0.0];
  _Block_release(v12);
  _Block_release(v9);
}

uint64_t sub_21E8F3280()
{

  sub_21E929C48();

  sub_21E929C28();
}

Swift::Void __swiftcall NCNotificationListHighlights.handleCoverSheetVisibilityChange(_:)(Swift::Bool a1)
{
  v10.super_class = NCNotificationListHighlights;
  v3 = a1;
  objc_msgSendSuper2(&v10, sel_handleCoverSheetVisibilityChange_, v3);
  if (v1[OBJC_IVAR___NCNotificationListHighlights_lastKnownIsCoverSheetVisible] != v3)
  {
    v1[OBJC_IVAR___NCNotificationListHighlights_lastKnownIsCoverSheetVisible] = v3;
    if ([v1 count] >= 1 && objc_msgSend(v1, sel_backlightState) == 2)
    {
      if (!a1 || ([v1 expandedPercentage], v4 > 0.4))
      {
        v5 = 0;
LABEL_7:
        sub_21E8F344C(v5, 0, 1);
        return;
      }

      v6 = v1;
      v7 = sub_21E929C38();

      if ((v7 & 1) == 0)
      {

        v8 = v6;
        v9 = sub_21E929C18();

        if ((v9 & 1) == 0)
        {
          v5 = 1;
          if (v8[OBJC_IVAR___NCNotificationListHighlights_hasPendingWakeLightEffect] == 1)
          {
            sub_21E8F2B50(1);
            return;
          }

          goto LABEL_7;
        }
      }
    }
  }
}

uint64_t sub_21E8F344C(int a1, char a2, char a3)
{
  v4 = v3;

  v8 = sub_21E929C38();

  if (((v8 ^ a1) & 1) != 0 || (, v9 = sub_21E929C18() & 1, result = , v9 != (a2 & 1)))
  {
    v11 = *&v3[OBJC_IVAR___NCNotificationListHighlights_wakeLightDismissalTimer];
    if (v11)
    {
      [v11 invalidate];
    }

    v3[OBJC_IVAR___NCNotificationListHighlights_wakeLightEffectInProgress] = 0;
    if (qword_27CED6AD0 != -1)
    {
      swift_once();
    }

    v12 = sub_21E929A78();
    __swift_project_value_buffer(v12, qword_27CED9E90);
    v13 = sub_21E929A58();
    v14 = sub_21E92A648();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240704;
      *(v15 + 4) = a1 & 1;
      *(v15 + 8) = 1026;
      *(v15 + 10) = a2 & 1;
      *(v15 + 14) = 1026;
      *(v15 + 16) = a3 & 1;
      _os_log_impl(&dword_21E77E000, v13, v14, "HighlightsList light effect changing to: (fill: %{BOOL,public}d, edge: %{BOOL,public}d, shouldAnimate: %{BOOL,public}d, reason: stateChange", v15, 0x14u);
      MEMORY[0x223D65FB0](v15, -1, -1);
    }

    if (a3)
    {
      v16 = sub_21E796644(0, &qword_280D03C48);
      MEMORY[0x28223BE20](v16);
      return sub_21E92A758();
    }

    else
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      *(v18 + 24) = a1 & 1;
      *(v18 + 25) = a2 & 1;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_21E8FA458;
      *(v19 + 24) = v18;
      aBlock[4] = sub_21E8C073C;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21E799D8C;
      aBlock[3] = &block_descriptor_79;
      v20 = _Block_copy(aBlock);
      v21 = v4;

      [v17 performWithoutAnimation_];
      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_21E8F3818()
{

  sub_21E929C48();

  sub_21E929C28();
}

void sub_21E8F38A0(_BYTE *a1)
{
  v2 = sub_21E92A2F8();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E92A318();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E92A2E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_21E92A348();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  if (*a1 == 1)
  {
    v20 = v17;
    v30 = v17;
    v21 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
    sub_21E8DE51C();
    v32 = v4;
    v23 = v22;

    sub_21E796644(0, &qword_280D03E40);
    v31 = sub_21E92A6C8();
    sub_21E92A328();
    *v11 = 500;
    (*(v9 + 104))(v11, *MEMORY[0x277D85178], v8);
    MEMORY[0x223D64520](v15, v11);
    (*(v9 + 8))(v11, v8);
    v24 = *(v13 + 8);
    v24(v15, v20);
    aBlock[4] = sub_21E8FA4E0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E792C28;
    aBlock[3] = &block_descriptor_112;
    v25 = _Block_copy(aBlock);

    sub_21E92A308();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21E8FA4E8(&qword_280D03F00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0);
    sub_21E8C04E4();
    v26 = v32;
    v27 = v36;
    sub_21E92A7E8();
    v28 = v31;
    MEMORY[0x223D64810](v19, v7, v26, v25);
    _Block_release(v25);

    (*(v35 + 8))(v26, v27);
    (*(v33 + 8))(v7, v34);
    v24(v19, v30);
  }
}

uint64_t sub_21E8F3D40(uint64_t a1, uint64_t a2, int a3, char a4, char a5, _BYTE *a6, double a7)
{
  v8 = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7880);
  MEMORY[0x28223BE20](v16 - 8);
  v160 = v150 - v17;
  v161 = sub_21E929B18();
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v164 = v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_21E929AF8();
  v165 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v152 = v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v151 = v150 - v21;
  MEMORY[0x28223BE20](v22);
  v158 = v150 - v23;
  MEMORY[0x28223BE20](v24);
  v157 = v150 - v25;
  MEMORY[0x28223BE20](v26);
  v156 = v150 - v27;
  MEMORY[0x28223BE20](v28);
  v155 = v150 - v29;
  MEMORY[0x28223BE20](v30);
  v154 = v150 - v31;
  MEMORY[0x28223BE20](v32);
  v153 = v150 - v33;
  MEMORY[0x28223BE20](v34);
  v167 = v150 - v35;
  v36 = *&v7[OBJC_IVAR___NCNotificationListHighlights_dropletLayout];
  v163 = a3;
  v37 = a3 & 1;
  v38 = a2;
  v166 = v36;
  sub_21E8ADE68(a2, v37, v169);
  v39 = *&v169[2];
  v40 = *&v169[3];
  v41 = *&v169[4];
  v42 = *&v169[5];
  KeyPath = swift_getKeyPath();
  sub_21E8E7A60(v39, v40, v41, v42, KeyPath, a6);

  v44 = *v169;
  v45 = *&v169[1];
  v46 = swift_getKeyPath();
  v47 = a6;
  v168 = a1;
  sub_21E8E7CEC(v44, v45, v46, a6);

  if ((a4 & 1) == 0)
  {
    v180[0] = v171;
    v180[1] = v172;
    v180[2] = v173;
    v48 = swift_getKeyPath();
    sub_21E8E86B8(v48, v180, a6);
  }

  if ((a5 & 1) == 0)
  {
    v49 = *&v169[6];
    v50 = swift_getKeyPath();
    sub_21E8E7F44(v49, v50, a6);
  }

  *(v168 + 76) = v170;
  sub_21E8B4D48();
  if ([v8 isExpanded])
  {
    v51 = *(v168 + 32);
    v178 = 0;
    memset(v177, 0, sizeof(v177));
    v52 = v51;
    sub_21E92A718();

    goto LABEL_9;
  }

  v53 = *&v8[OBJC_IVAR___NCNotificationListHighlights_lightHandle];

  result = [v8 listView];
  if (result)
  {
    v55 = result;
    v56 = [result traitCollection];

    [v56 glassLuminanceValue];
    v58 = v57;

    v59 = v58;
    sub_21E8B4E68(v53, 13.5, v59);

LABEL_9:
    sub_21E929AE8();
    [v8 expandedPercentage];
    v61 = v60 * 23.5;
    if (v163)
    {
      if (v38)
      {
        v62 = &v174;
      }

      else
      {
        v62 = &v176;
        sub_21E8ADE68(0, 0, &v175);
      }

      v73 = v162;
      v74 = v164;
      v75 = (*v62 + -0.001) / 19.999;
      if (v75 <= 1.0)
      {
        v76 = (*v62 + -0.001) / 19.999;
      }

      else
      {
        v76 = 1.0;
      }

      v77 = v76 + 0.0;
      if (v75 >= 0.0)
      {
        v78 = v77;
      }

      else
      {
        v78 = 0.0;
      }

      v79 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
      LODWORD(v80) = 1057803469;
      LODWORD(v81) = 1055286886;
      LODWORD(v82) = 1.0;
      v83 = [v79 initWithControlPoints__:0.0 :{v80, v81, v82}];
      *&v84 = v78;
      [v83 _solveForInput_];

      if (!v38)
      {
        result = 0;
LABEL_82:
        sub_21E8F8E00(result);
        if (!v38)
        {
          v144 = *(v165 + 16);
          v145 = v167;
          v144(v153, v167, v73);
          v144(v154, v145, v73);
          sub_21E929AE8();
          sub_21E929AE8();
          v146 = *MEMORY[0x277CDA138];
          sub_21E929B08();
          v135 = v160;
          v134 = v161;
LABEL_86:
          v148 = swift_getKeyPath();
          v149 = v159;
          (*(v159 + 16))(v135, v74, v134);
          (*(v149 + 56))(v135, 0, 1, v134);
          sub_21E8E8174(v148, v135, v47);

          sub_21E8B4CAC(v135, &unk_27CED7880);
          (*(v149 + 8))(v74, v134);
          return (*(v165 + 8))(v167, v73);
        }

        sub_21E8AE0D8();
        v135 = v160;
        v134 = v161;
        sub_21E929AE8();
        sub_21E929AE8();
        sub_21E929AE8();
        sub_21E929AE8();
        v147 = *MEMORY[0x277CDA138];
LABEL_85:
        sub_21E929B08();
        goto LABEL_86;
      }

      sub_21E8F56CC(1);
      v86 = v85;
      [v8 availableHeight];
      if (v86 >= v87)
      {
        v94 = 0;
      }

      else
      {
        sub_21E8F56CC(2);
        v89 = v88;
        [v8 availableHeight];
        if (v89 >= v90)
        {
          v94 = 1;
        }

        else
        {
          sub_21E8F56CC(3);
          v92 = v91;
          [v8 availableHeight];
          if (v92 >= v93)
          {
            v94 = 2;
          }

          else
          {
            v94 = 3;
          }
        }
      }

      if (v94 <= 1)
      {
        v141 = 1;
      }

      else
      {
        v141 = v94;
      }

      v142 = [v8 count];
      if (v142 >= v141)
      {
        v143 = v141;
      }

      else
      {
        v143 = v142;
      }

      result = v143 - 1;
      if (!__OFSUB__(v143, 1))
      {
        goto LABEL_82;
      }

      goto LABEL_89;
    }

    sub_21E8F56CC(1);
    v64 = v63;
    [v8 availableHeight];
    if (v64 >= v65)
    {
      v72 = 0;
    }

    else
    {
      sub_21E8F56CC(2);
      v67 = v66;
      [v8 availableHeight];
      if (v67 >= v68)
      {
        v72 = 1;
      }

      else
      {
        sub_21E8F56CC(3);
        v70 = v69;
        [v8 availableHeight];
        if (v70 >= v71)
        {
          v72 = 2;
        }

        else
        {
          v72 = 3;
        }
      }
    }

    if (v72 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v72;
    }

    result = [v8 count];
    if (result >= v95)
    {
      v96 = v95;
    }

    else
    {
      v96 = result;
    }

    v97 = __OFSUB__(v96, 1);
    v98 = v96 - 1;
    if (v97)
    {
      __break(1u);
    }

    else
    {
      v99 = v174;
      *v150 = v61;
      *&v150[1] = a7;
      if (v98 == v38)
      {
        result = 1;
      }

      else
      {
        result = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }
      }

      sub_21E8ADE68(result, v98 == v38, v177);
      v100 = v179;
      v101 = (v99 + -0.001) / 19.999;
      if (v101 <= 1.0)
      {
        v102 = (v99 + -0.001) / 19.999;
      }

      else
      {
        v102 = 1.0;
      }

      v103 = v102 + 0.0;
      if (v101 >= 0.0)
      {
        v104 = v103;
      }

      else
      {
        v104 = 0.0;
      }

      v105 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
      LODWORD(v106) = 1.0;
      LODWORD(v107) = 1057803469;
      LODWORD(v108) = 1055286886;
      v109 = [v105 initWithControlPoints__:0.0 :{v107, v108, v106}];
      *&v110 = v104;
      [v109 _solveForInput_];

      v111 = (v100 + -0.001) / 19.999;
      if (v111 <= 1.0)
      {
        v112 = (v100 + -0.001) / 19.999;
      }

      else
      {
        v112 = 1.0;
      }

      v113 = v112 + 0.0;
      if (v111 >= 0.0)
      {
        v114 = v113;
      }

      else
      {
        v114 = 0.0;
      }

      v115 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
      LODWORD(v116) = 1.0;
      LODWORD(v117) = 1057803469;
      LODWORD(v118) = 1055286886;
      v119 = [v115 initWithControlPoints__:0.0 :{v117, v118, v116}];
      *&v120 = v114;
      [v119 _solveForInput_];

      result = v38 - 1;
      if (!__OFSUB__(v38, 1))
      {
        sub_21E8F8E00(result);
        sub_21E8F8E00(v38 + 1);
        v73 = v162;
        v74 = v164;
        v121 = v166;
        if (swift_unknownObjectWeakLoadStrong() && (v122 = *(v121 + 96), ObjectType = swift_getObjectType(), v124 = (*(v122 + 48))(v121, ObjectType, v122), swift_unknownObjectRelease(), v124 > 0) || (v125 = sub_21E8B09C0(v38, 0), (v126 & 0x100) != 0))
        {
          v127 = 0;
        }

        else
        {
          v127 = (v125 == 0) & v126;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v128 = *(v121 + 96);
          v129 = swift_getObjectType();
          v130 = (*(v128 + 48))(v121, v129, v128);
          swift_unknownObjectRelease();
        }

        else
        {
          v130 = 0;
        }

        if (*(v121 + 128) < v130 || (v131 = sub_21E8B10C0(v38, 0), (v132 & 0x100) != 0))
        {
          v133 = 0;
          if (!v127)
          {
LABEL_68:
            sub_21E929AE8();
            sub_21E929AE8();
            v135 = v160;
            v134 = v161;
            if (!v133)
            {
LABEL_69:
              sub_21E929AE8();
              sub_21E929AE8();
LABEL_73:
              v140 = *MEMORY[0x277CDA138];
              goto LABEL_85;
            }

LABEL_72:
            v138 = *(v165 + 16);
            v139 = v167;
            v138(v151, v167, v73);
            v138(v152, v139, v73);
            v74 = v164;
            v47 = a6;
            goto LABEL_73;
          }
        }

        else
        {
          v133 = (v131 == 1) & v132;
          if (!v127)
          {
            goto LABEL_68;
          }
        }

        v136 = *(v165 + 16);
        v137 = v167;
        v136(v157, v167, v73);
        v136(v158, v137, v73);
        v135 = v160;
        v134 = v161;
        if (!v133)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_21E8F4DE0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NCNotificationListHighlights_separators;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    result = sub_21E92A828();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result > a1)
  {
    goto LABEL_9;
  }

  v7 = *(v1 + v4);
  if (v7 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v9 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      break;
    }

    if (v9 < i)
    {
      goto LABEL_26;
    }

    if (i != v9)
    {
      if (i >= v9)
      {
        goto LABEL_27;
      }

      v13 = type metadata accessor for HighlightsSeparatorView();
      v14 = a1 - i + 1;
      do
      {
        v15 = [objc_allocWithZone(v13) initWithFrame_];
        v16 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
        v17 = *(&v16->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_accessoryView);

        [v17 addSubview_];
        swift_beginAccess();
        v18 = v15;
        MEMORY[0x223D646A0]();
        if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E92A548();
        }

        sub_21E92A568();
        swift_endAccess();

        --v14;
      }

      while (v14);
    }

LABEL_9:
    swift_beginAccess();
    v10 = *(v2 + v4);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D64A50](a1);
      goto LABEL_13;
    }

    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v11 = *(v10 + 8 * a1 + 32);
LABEL_13:
      v12 = v11;
      swift_endAccess();
      return v12;
    }

    __break(1u);
LABEL_24:
    result = sub_21E92A828();
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21E8F5040(uint64_t *a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = *a1;
  v7 = *a1 + 64;
  v8 = 1 << *(*a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(*a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(v6 + 48) + ((v13 << 10) | (16 * v15));
    if ((*(v16 + 8) & 1) == 0)
    {
      v34 = *v16;
      v35.receiver = v3;
      v35.super_class = NCNotificationListHighlights;
      v17 = objc_msgSendSuper2(&v35, sel_allNotificationGroups);
      sub_21E796644(0, &qword_280D03DF0);
      v18 = sub_21E92A528();

      v19 = v18 >> 62 ? sub_21E92A828() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v34 >= v19)
      {
        v20 = v33;
        result = swift_isUniquelyReferenced_nonNull_native();
        v36 = v33;
        if ((result & 1) == 0)
        {
          result = sub_21E8D5378(0, *(v33 + 16) + 1, 1);
          v20 = v36;
        }

        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          result = sub_21E8D5378((v21 > 1), v22 + 1, 1);
          v23 = v22 + 1;
          v20 = v36;
        }

        *(v20 + 16) = v23;
        v33 = v20;
        v24 = v20 + 16 * v22;
        *(v24 + 32) = v34;
        *(v24 + 40) = 0;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = (v33 + 40);
    do
    {
      v27 = sub_21E8F6848(*(v26 - 1), *v26);
      if (v28)
      {
        v29 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *a1;
        v36 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          a3();
          v31 = v36;
        }

        a2(v29, v31);
        *a1 = v31;
      }

      v26 += 16;
      --v25;
    }

    while (v25);
  }
}

Swift::Void __swiftcall NCNotificationListHighlights.prepareForUIAppear()()
{
  v0 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
  sub_21E8DDBD8();
}

double sub_21E8F53E8()
{
  v4.super_class = NCNotificationListHighlights;
  v0 = objc_msgSendSuper2(&v4, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v1 = sub_21E92A528();

  if (v1 >> 62)
  {
    v2 = sub_21E92A828();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 1)
  {
    return 0.0;
  }

  result = sub_21E8B9930();
  if (result <= 48.0)
  {
    return 48.0;
  }

  return result;
}

uint64_t sub_21E8F54CC()
{
  v4.super_class = NCNotificationListHighlights;
  v0 = objc_msgSendSuper2(&v4, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v1 = sub_21E92A528();

  if (v1 >> 62)
  {
    v2 = sub_21E92A828();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_21E8F5578()
{
  v1 = [v0 listView];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

id sub_21E8F5668()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1048168144;
  LODWORD(v2) = 1053104274;
  LODWORD(v3) = 1057634019;
  LODWORD(v4) = 1064730781;
  result = [v0 initWithControlPoints__:v1 :{v2, v3, v4}];
  qword_280D05F30 = result;
  return result;
}

id sub_21E8F56CC(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 count];
  if (v4 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 < 0)
  {
    goto LABEL_40;
  }

  if (!v5)
  {
    return [v2 count];
  }

  v6 = 0;
  v7 = *&v2[OBJC_IVAR___NCNotificationListHighlights_dropletLayout];
  v8 = 48.0;
  while (1)
  {
    swift_beginAccess();
    v10 = v7[25];
    if (*(v10 + 16))
    {
      v11 = sub_21E8F6848(v6, 0);
      if (v12)
      {
        v13 = (*(v10 + 56) + 168 * v11);
        v14 = v13[2];
        v15 = v13[3];
        v16 = v13[4];
        v17 = v13[5];
        goto LABEL_9;
      }
    }

    swift_endAccess();
    v18 = v7[16];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = v7[12];
      ObjectType = swift_getObjectType();
      v21 = (*(v19 + 48))(v7, ObjectType, v19);
      swift_unknownObjectRelease();
      if (v21 < v18)
      {
        v18 = v21;
      }
    }

    else if (v18 > 0)
    {
      goto LABEL_19;
    }

    if (v6 < v18)
    {
      v22 = v54;
      sub_21E8AED70(v6, v54);
      v23 = &v55;
      goto LABEL_27;
    }

LABEL_19:
    v24 = v7[16];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v7[12];
      v26 = swift_getObjectType();
      v27 = (*(v25 + 48))(v7, v26, v25);
      swift_unknownObjectRelease();
      if (v27 < v24)
      {
        v24 = v27;
      }

LABEL_22:
      if (v6 == v24)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    if (v24 <= 0)
    {
      goto LABEL_22;
    }

    if (!v6)
    {
LABEL_23:
      v22 = v56;
      sub_21E8AF348(v6, v56);
      v23 = &v57;
      goto LABEL_27;
    }

LABEL_26:
    v22 = v58;
    sub_21E8AF964(v6, v58);
    v23 = &v59;
LABEL_27:
    v53 = *v22;
    v14 = v22[2];
    v15 = v22[3];
    v16 = v22[4];
    v17 = v22[5];
    v49 = *(v23 + 4);
    v50 = *(v23 + 5);
    v51 = *(v23 + 6);
    v52 = v23[14];
    v45 = *v23;
    v46 = *(v23 + 1);
    v47 = *(v23 + 2);
    v48 = *(v23 + 3);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v7[25];
    v7[25] = 0x8000000000000000;
    v30 = sub_21E8F6848(v6, 0);
    v32 = v29[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      break;
    }

    v36 = v31;
    if (v29[3] < v35)
    {
      sub_21E908B1C(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_21E8F6848(v6, 0);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_41;
      }

LABEL_32:
      v38 = v29;
      if ((v36 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_7;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    v43 = v30;
    sub_21E90AF44();
    v30 = v43;
    v38 = v29;
    if ((v36 & 1) == 0)
    {
LABEL_33:
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v39 = v38[6] + 16 * v30;
      *v39 = v6;
      *(v39 + 8) = 0;
      v40 = v38[7] + 168 * v30;
      *v40 = v53;
      *(v40 + 16) = v14;
      *(v40 + 24) = v15;
      *(v40 + 32) = v16;
      *(v40 + 40) = v17;
      *(v40 + 48) = v45;
      *(v40 + 64) = v46;
      *(v40 + 80) = v47;
      *(v40 + 96) = v48;
      *(v40 + 160) = v52;
      *(v40 + 144) = v51;
      *(v40 + 128) = v50;
      *(v40 + 112) = v49;
      v41 = v38[2];
      v34 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v34)
      {
        goto LABEL_39;
      }

      v38[2] = v42;
      goto LABEL_8;
    }

LABEL_7:
    v9 = v38[7] + 168 * v30;
    *v9 = v53;
    *(v9 + 16) = v14;
    *(v9 + 24) = v15;
    *(v9 + 32) = v16;
    *(v9 + 40) = v17;
    *(v9 + 112) = v49;
    *(v9 + 128) = v50;
    *(v9 + 144) = v51;
    *(v9 + 160) = v52;
    *(v9 + 48) = v45;
    *(v9 + 64) = v46;
    *(v9 + 80) = v47;
    *(v9 + 96) = v48;
LABEL_8:
    v7[25] = v38;
LABEL_9:
    swift_endAccess();
    ++v6;
    v60.origin.x = v14;
    v60.origin.y = v15;
    v60.size.width = v16;
    v60.size.height = v17;
    v8 = v8 + CGRectGetHeight(v60);
    if (v5 == v6)
    {
      return [v2 count];
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_21E92AA98();
  __break(1u);
  return result;
}

id NCNotificationListHighlights.notificationGroupList(_:requestsAuxiliaryOptionsContentProviderFor:isLongLook:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!os_variant_has_internal_content() || [v3 count] > 1)
  {
    return 0;
  }

  v8.receiver = v3;
  v8.super_class = NCNotificationListHighlights;
  return objc_msgSendSuper2(&v8, sel_notificationGroupList_requestsAuxiliaryOptionsContentProviderForNotificationRequest_isLongLook_, a1, a2, a3 & 1);
}

Swift::Void __swiftcall NCNotificationListHighlights.groupListDidLayout(_:)(NCNotificationGroupList *a1)
{
  v2 = [v1 listView];
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void NCNotificationListHighlights.notificationListPresentableGroup(_:requestsScrollToTopOfCollectionWithCompletion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v22.receiver = v3;
  v22.super_class = NCNotificationListHighlights;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v22, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v11 = sub_21E92A528();

  v12 = sub_21E8E927C(v8, v11);
  LOBYTE(v10) = v13;

  if (v10)
  {

LABEL_4:
    a2();
    return;
  }

  v14 = [v3 listView];
  if (v14)
  {
    v15 = v14;
    [v14 layoutOffsetForViewAtIndex_];
    v17 = v16;

    v18 = [v3 delegate];
    if (v18)
    {
      v19 = v18;
      if ([v18 respondsToSelector_])
      {
        v21[4] = a2;
        v21[5] = a3;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 1107296256;
        v21[2] = sub_21E792C28;
        v21[3] = &block_descriptor_27_1;
        v20 = _Block_copy(v21);

        [v19 notificationListBaseComponent:v3 requestsScrollingToContentOffset:v20 withCompletion:v17];
        swift_unknownObjectRelease();

        _Block_release(v20);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21E8F60DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {

    sub_21E8EA388();
  }

  else
  {
    v4 = OBJC_IVAR___NCNotificationListHighlights_listCellsToDroplets;
    swift_beginAccess();
    v31 = v4;
    v5 = *(v3 + v4);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = sub_21E92A938() | 0x8000000000000000;
    }

    else
    {
      v10 = -1 << *(v5 + 32);
      v7 = ~v10;
      v6 = v5 + 64;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v8 = v12 & *(v5 + 64);
      v9 = v5;
    }

    v13 = 0;
    v14 = (v7 + 64) >> 6;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v15 = v13;
      v16 = v8;
      v17 = v13;
      if (!v8)
      {
        break;
      }

LABEL_16:
      v18 = (v16 - 1) & v16;
      v19 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
      v20 = *(*(v9 + 56) + v19);
      v21 = *(*(v9 + 48) + v19);

      if (!v21)
      {
LABEL_22:
        sub_21E8FA42C();
        v22 = OBJC_IVAR___NCNotificationListHighlights_headerLabelDropletBacking;
        if (*(v3 + OBJC_IVAR___NCNotificationListHighlights_headerLabelDropletBacking))
        {

          sub_21E8B5C34(v23);

          *(v3 + v22) = 0;
        }

        v24 = OBJC_IVAR___NCNotificationListHighlights_showMoreDropletBacking;
        if (*(v3 + OBJC_IVAR___NCNotificationListHighlights_showMoreDropletBacking))
        {

          sub_21E8B5C34(v25);

          *(v3 + v24) = 0;
        }

        v26 = MEMORY[0x277D84F90];
        *(v3 + v31) = sub_21E90E91C(MEMORY[0x277D84F90]);

        v27 = sub_21E90EA14(v26);
        v28 = OBJC_IVAR___NCNotificationListHighlights_listCellsToSwipeOffsets;
        swift_beginAccess();
        *(v3 + v28) = v27;

        v29 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
        swift_beginAccess();
        sub_21E8F5040((v3 + v29), sub_21E8F7320, sub_21E90B5AC);
        swift_endAccess();
        v30 = OBJC_IVAR___NCNotificationListHighlights_cellTransforms;
        swift_beginAccess();
        sub_21E8F5040((v3 + v30), sub_21E8F714C, sub_21E90B434);
        swift_endAccess();
        return;
      }

      while (1)
      {

        sub_21E8B5C34(v20);

        v13 = v17;
        v8 = v18;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_21E92A968())
        {
          sub_21E796644(0, &unk_280D03E08);
          swift_dynamicCast();
          v21 = v32;
          type metadata accessor for HighlightsDroplet();
          swift_dynamicCast();
          v20 = v32;
          v17 = v13;
          v18 = v8;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_22;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void *sub_21E8F649C(void *result)
{
  if ((result[4] & 1) == 0)
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      result = [result invalidate];
    }

    v2 = v1[3];
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      do
      {
        v4 = 0;
        while ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x223D64A50](v4, v2);
          v6 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }

LABEL_10:
          [v5 _invalidate];
          result = swift_unknownObjectRelease();
          ++v4;
          if (v6 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = (v4 + 1);
        if (!__OFADD__(v4, 1))
        {
          goto LABEL_10;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        result = sub_21E92A828();
        v3 = result;
      }

      while (result);
    }

LABEL_17:
    *(v1 + 32) = 1;
  }

  return result;
}

uint64_t sub_21E8F65B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21E8F66B0;

  return v6(a1);
}

uint64_t sub_21E8F66B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_21E8F67A8(uint64_t a1, unsigned int a2)
{
  sub_21E92AB28();
  if (a2)
  {
    v4 = a1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
    v4 = a1;
  }

  MEMORY[0x223D64CD0](v4);
  MEMORY[0x223D64CD0]((a2 >> 8) & 1);
  v5 = sub_21E92AB48();

  return sub_21E8F6A0C(a1, a2 & 0x101, v5);
}

unint64_t sub_21E8F6848(uint64_t a1, char a2)
{
  sub_21E92AB28();
  if (a2)
  {
    v4 = a1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
    v4 = a1;
  }

  MEMORY[0x223D64CD0](v4);
  v5 = sub_21E92AB48();

  return sub_21E8F6AD8(a1, a2 & 1, v5);
}

unint64_t sub_21E8F68D8(uint64_t a1)
{
  v2 = sub_21E92A778();

  return sub_21E8F6B80(a1, v2);
}

unint64_t sub_21E8F691C(uint64_t a1)
{
  sub_21E929878();
  sub_21E8FA4E8(&qword_27CED7868, MEMORY[0x277D08668]);
  v2 = sub_21E92A3F8();

  return sub_21E8F6C54(a1, v2);
}

unint64_t sub_21E8F69B4(uint64_t a1)
{
  v2 = sub_21E92AB18();

  return sub_21E8F6E14(a1, v2);
}

unint64_t sub_21E8F6A0C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 9);
      if (v10 == 1)
      {
        v12 = v11 ^ ((a2 & 0x100) >> 8);
        if (v9)
        {
          if (!((a2 ^ 1) & 1 | (a1 == 0) | v12 & 1))
          {
            return result;
          }
        }

        else if (!((a2 ^ 1) & 1 | (a1 != 0) | v12 & 1))
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1 && ((v11 ^ ((a2 & 0x100) >> 8)) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21E8F6AD8(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v9)
        {
          if ((a2 & (a1 != 0)) != 0)
          {
            return result;
          }
        }

        else if ((a2 & (a1 == 0)) != 0)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21E8F6B80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21E796644(0, &unk_280D03E08);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21E92A788();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21E8F6C54(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_21E929878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_21E8FA4E8(&unk_27CED7870, MEMORY[0x277D08668]);
      v15 = sub_21E92A418();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_21E8F6E14(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_21E8F6E80(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_21E92A828();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_21E8F6F18(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = sub_21E8F7FA4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21E8F6F18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78B0);
    v2 = sub_21E92A9D8();
    v19 = v2;
    sub_21E92A938();
    v3 = sub_21E92A968();
    if (v3)
    {
      v4 = v3;
      sub_21E796644(0, &unk_280D03E08);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for HighlightsDroplet();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21E909BF8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21E92A778();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21E92A968();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21E8F714C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E92A7F8() + 1) & ~v5;
    do
    {
      v11 = 16 * v6;
      v12 = *(a2 + 48) + 16 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      sub_21E92AB28();
      if (v14 == 1)
      {
        v13 = v13 != 0;
      }

      else
      {
        MEMORY[0x223D64CD0](2);
      }

      MEMORY[0x223D64CD0](v13);
      result = sub_21E92AB48();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + v11);
        if (16 * v3 != v11 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 48 * v3);
        v21 = (v19 + 48 * v6);
        if (v3 != v6 || v20 >= v21 + 3)
        {
          v9 = *v21;
          v10 = v21[2];
          v20[1] = v21[1];
          v20[2] = v10;
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21E8F7320(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E92A7F8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_21E92AB28();
      if (v12 == 1)
      {
        v11 = v11 != 0;
      }

      else
      {
        MEMORY[0x223D64CD0](2);
      }

      MEMORY[0x223D64CD0](v11);
      result = sub_21E92AB48();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v13)
      {
LABEL_13:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + v9);
        if (16 * v3 != v9 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21E8F74E4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E92A7F8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_21E92A778();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_21E8F7670(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E92A7F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_21E92AB18();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21E8F77E0(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E8F67A8(a2, a3 & 0x101);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E90AC64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E908568(v16, a4 & 1);
    v11 = sub_21E8F67A8(a2, a3 & 0x101);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return sub_21E90A8DC(v11, a2, a3 & 0x101, a1, v21);
  }
}

unint64_t sub_21E8F793C(uint64_t a1, __int16 a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21E8F67A8(a1, a2 & 0x101);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_21E90ADDC();
      result = v19;
      goto LABEL_8;
    }

    sub_21E90884C(v16, a3 & 1);
    result = sub_21E8F67A8(a1, a2 & 0x101);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {

    return sub_21E90A934(result, a1, a2 & 0x101, v21, a4);
  }

  return result;
}

unint64_t sub_21E8F7A88(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21E8F6848(a2, a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21E90AF44();
      result = v19;
      goto LABEL_8;
    }

    sub_21E908B1C(v16, a4 & 1);
    result = sub_21E8F6848(a2, a3 & 1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 168 * result;
    v23 = *(a1 + 144);
    *(v22 + 128) = *(a1 + 128);
    *(v22 + 144) = v23;
    *(v22 + 160) = *(a1 + 160);
    v24 = *(a1 + 80);
    *(v22 + 64) = *(a1 + 64);
    *(v22 + 80) = v24;
    v25 = *(a1 + 112);
    *(v22 + 96) = *(a1 + 96);
    *(v22 + 112) = v25;
    v26 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v26;
    v27 = *(a1 + 48);
    *(v22 + 32) = *(a1 + 32);
    *(v22 + 48) = v27;
  }

  else
  {

    return sub_21E90A98C(result, a2, a3 & 1, a1, v21);
  }

  return result;
}

unint64_t sub_21E8F7BE4(_OWORD *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21E8F6848(a2, a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21E90B114();
      result = v19;
      goto LABEL_8;
    }

    sub_21E908E3C(v16, a4 & 1);
    result = sub_21E8F6848(a2, a3 & 1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 96 * result);
    v23 = a1[3];
    v22[2] = a1[2];
    v22[3] = v23;
    v22[4] = a1[4];
    *(v22 + 73) = *(a1 + 73);
    v24 = a1[1];
    *v22 = *a1;
    v22[1] = v24;
  }

  else
  {

    return sub_21E90AA10(result, a2, a3 & 1, a1, v21);
  }

  return result;
}

uint64_t sub_21E8F7D30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E795DB0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E90B2C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E909140(v16, a4 & 1);
    v11 = sub_21E795DB0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_21E90AA84(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_21E8F7E78(void *a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_21E8F68D8(a1);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 >= v13 && (a2 & 1) == 0)
    {
      v16 = result;
      sub_21E90B71C();
      result = v16;
      goto LABEL_8;
    }

    sub_21E909990(v13, a2 & 1);
    result = sub_21E8F68D8(a1);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_21E796644(0, &unk_280D03E08);
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a3;
  }

  else
  {
    sub_21E90AACC(result, a1, v18, a3);

    return a1;
  }

  return result;
}

id sub_21E8F7FA4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21E8F68D8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21E90B878();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21E909BF8(v13, a3 & 1);
    v8 = sub_21E8F68D8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_21E796644(0, &unk_280D03E08);
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_21E90AB10(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_21E8F80EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E795DB0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E90B9DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E909E68(v16, a4 & 1);
    v11 = sub_21E795DB0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      v11 = sub_21E92AA98();
      __break(1u);
      return MEMORY[0x2821F96F8](v11);
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11);
  }

  sub_21E90AA84(v11, a2, a3, a1, v21);
}

unint64_t sub_21E8F8230(_OWORD *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21E8F6848(a2, a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21E90B434();
      result = v19;
      goto LABEL_8;
    }

    sub_21E9093E8(v16, a4 & 1);
    result = sub_21E8F6848(a2, a3 & 1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * result);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  else
  {

    return sub_21E90AB54(result, a2, a3 & 1, a1, v21);
  }

  return result;
}

unint64_t sub_21E8F836C(uint64_t a1, uint64_t a2, char a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_21E8F6848(a2, a3 & 1);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = result;
      sub_21E90B5AC();
      result = v21;
      goto LABEL_8;
    }

    sub_21E9096BC(v18, a4 & 1);
    result = sub_21E8F6848(a2, a3 & 1);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a5;
  }

  else
  {

    return sub_21E90ABB8(result, a2, a3 & 1, a1, v23, a5);
  }

  return result;
}

unint64_t sub_21E8F84C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_21E8F69B4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_21E90BB48();
      v9 = v17;
      goto LABEL_8;
    }

    sub_21E90A10C(v14, a3 & 1);
    v9 = sub_21E8F69B4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_21E90AB10(v9, a2, a1, v19);
  }
}

uint64_t sub_21E8F85E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21E795DB0(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_21E90BCA4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_21E90A61C(v18, a5 & 1);
    v13 = sub_21E795DB0(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_21E92AA98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_21E90AC14(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_21E8F8734(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21E92A828();
LABEL_9:
  result = sub_21E92A8C8();
  *v1 = result;
  return result;
}

unint64_t sub_21E8F87D4(unint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_21E8E8D7C(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_21E92A828();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = a1;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v35 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_21E92A828())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    v13 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x223D64A50](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    v14 = *(v5 + 8 * v9 + 32);
LABEL_16:
    v15 = v14;
    v16 = *v3;
    if ((*v3 & 0xC000000000000001) != 0)
    {

      v17 = v15;
      v18 = sub_21E92A858();

      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!*(v16 + 16))
      {

        if (v8 != v9)
        {
          goto LABEL_26;
        }

        goto LABEL_8;
      }

      v34 = v8;
      sub_21E796644(0, &qword_280D03E18);

      v19 = sub_21E92A778();
      v20 = -1 << *(v16 + 32);
      v21 = v19 & ~v20;
      if (((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
LABEL_24:

        v8 = v34;
        v3 = v35;
        v13 = v5 & 0xC000000000000001;
LABEL_25:
        if (v8 != v9)
        {
LABEL_26:
          if (v13)
          {
            v25 = MEMORY[0x223D64A50](v8, v5);
            v26 = MEMORY[0x223D64A50](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_56;
            }

            v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v27)
            {
              goto LABEL_57;
            }

            if (v9 >= v27)
            {
              goto LABEL_58;
            }

            v28 = *(v5 + 32 + 8 * v9);
            v25 = *(v5 + 32 + 8 * v8);
            v26 = v28;
          }

          v29 = v26;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_21E925434(v5);
            v30 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v31 = v5 & 0xFFFFFFFFFFFFFF8;
          v32 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v29;

          if ((v5 & 0x8000000000000000) != 0 || v30)
          {
            v5 = sub_21E925434(v5);
            v31 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_49:
              __break(1u);
              return v8;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          if (v9 >= *(v31 + 16))
          {
            goto LABEL_55;
          }

          v10 = v31 + 8 * v9;
          v11 = *(v10 + 32);
          *(v10 + 32) = v25;

          *v33 = v5;
          v3 = v35;
        }

LABEL_8:
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_54;
        }

        goto LABEL_9;
      }

      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v16 + 48) + 8 * v21);
        v24 = sub_21E92A788();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v8 = v34;
      v3 = v35;
    }

LABEL_9:
    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return sub_21E92A828();
}

void sub_21E8F8B5C()
{
  v7.super_class = NCNotificationListHighlights;
  v1 = objc_msgSendSuper2(&v7, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v2 = sub_21E92A528();

  if (v2 >> 62)
  {
    v3 = sub_21E92A828();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 1)
  {
    v4 = *(v0 + OBJC_IVAR___NCNotificationListHighlights_showMoreLabel);
    v5 = [*&v4[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button] titleLabel];
    if (v5)
    {
      v6 = v5;
      [v4 bounds];
      [v6 sizeThatFits_];
    }
  }
}

void sub_21E8F8CA4(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  [v1 expandedPercentage];
  [v1 expandedPercentage];
  v3 = __OFSUB__(a1, 1);
  v4 = a1 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9.receiver = v1;
  v9.super_class = NCNotificationListHighlights;
  v5 = objc_msgSendSuper2(&v9, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v1 = sub_21E92A528();

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v6 = MEMORY[0x223D64A50](v4, v1);
    goto LABEL_7;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v1 + 8 * v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = [v7 listView];

    [v8 stackedItemSizes];
    return;
  }

  __break(1u);
}

void sub_21E8F8E00(uint64_t a1)
{
  v16.super_class = NCNotificationListHighlights;
  v3 = objc_msgSendSuper2(&v16, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v4 = sub_21E92A528();

  if (v4 >> 62)
  {
    v5 = sub_21E92A828();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0 && v5 > a1)
  {
    v15.receiver = v1;
    v15.super_class = NCNotificationListHighlights;
    v6 = objc_msgSendSuper2(&v15, sel_allNotificationGroups);
    v7 = sub_21E92A528();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D64A50](a1, v7);
    }

    else
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
      {
        __break(1u);
        return;
      }

      v8 = *(v7 + 8 * a1 + 32);
    }

    v9 = v8;

    v10 = [v9 listView];

    v11 = [v10 visibleViewAtIndex_];
    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = OBJC_IVAR___NCNotificationListHighlights_listCellsToSwipeOffsets;
        swift_beginAccess();
        if (*(*&v1[v14] + 16))
        {
          sub_21E8F68D8(v13);
        }

        swift_endAccess();
      }
    }
  }
}

uint64_t sub_21E8F9008()
{
  v1 = v0;
  v2 = OBJC_IVAR___NCNotificationListHighlights_headerLabelDropletBacking;
  if (!*(v0 + OBJC_IVAR___NCNotificationListHighlights_headerLabelDropletBacking))
  {
    v4 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
    v5 = [(__CFString *)v4 window];

    if (v5)
    {

      v6 = *(v1 + OBJC_IVAR___NCNotificationListHighlights_headerLabel);
      v7 = [v6 window];
      if (v7)
      {

        v8 = *(v1 + OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView);
        v9 = sub_21E8B58FC(v6, 0xD000000000000022, 0x800000021E958DC0);

        *(v1 + v2) = v9;
      }
    }
  }

  return *(v1 + v2);
}

id sub_21E8F90F4()
{
  v1 = v0;
  v2 = OBJC_IVAR___NCNotificationListHighlights_showMoreDropletBacking;
  if (*&v0[OBJC_IVAR___NCNotificationListHighlights_showMoreDropletBacking])
  {
    return *&v1[v2];
  }

  v3 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
  v4 = [(__CFString *)v3 window];

  if (!v4)
  {
    return *&v1[v2];
  }

  result = [v1 listView];
  if (result)
  {
    v6 = result;
    v7 = *&v1[OBJC_IVAR___NCNotificationListHighlights_showMoreLabel];
    [result addSubview_];

    v8 = *&v1[OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView];
    v9 = sub_21E8B58FC(v7, 0xD000000000000024, 0x800000021E958D90);

    *&v1[v2] = v9;

    return *&v1[v2];
  }

  __break(1u);
  return result;
}

void sub_21E8F91F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223D64A50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21E8DEEB4(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_21E8F92CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_21E796644(0, &qword_280D03E18);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21E92A828();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_21E92A828();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21E8F93DC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21E92A828();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_21E92A828();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_21E8F8734(result);

  return sub_21E8F92CC(v4, v2, 0);
}

void sub_21E8F94B4(char a1)
{
  v3 = sub_21E92A2F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E92A318();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E8E9548();
  sub_21E8EA388();
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v24 = sub_21E8FA554;
    v25 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21E792C28;
    v23 = &block_descriptor_131;
    v13 = _Block_copy(&aBlock);
    v14 = v1;

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v24 = sub_21E8FA55C;
    v25 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21E8BC90C;
    v23 = &block_descriptor_137;
    v16 = _Block_copy(&aBlock);
    v17 = v14;

    [v11 animateWithDuration:v13 animations:v16 completion:0.0];
    _Block_release(v16);
    _Block_release(v13);
  }

  else
  {
    sub_21E796644(0, &qword_280D03E40);
    v18 = sub_21E92A6C8();
    v24 = sub_21E8FA628;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21E792C28;
    v23 = &block_descriptor_125;
    v19 = _Block_copy(&aBlock);
    sub_21E92A308();
    aBlock = MEMORY[0x277D84F90];
    sub_21E8FA4E8(&qword_280D03F00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0);
    sub_21E8C04E4();
    sub_21E92A7E8();
    MEMORY[0x223D64870](0, v10, v6, v19);
    _Block_release(v19);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

void sub_21E8F98B0(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    --a1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_13;
    }
  }

  sub_21E8ADE68(a1, v2 == 0, v11);
  sub_21E8ADE68(v2, 0, v14);
  v17.size.width = v15;
  v17.size.height = v16;
  v17.origin.x = v14[2] + v14[0] - v15 * 0.5;
  v17.origin.y = v14[3] + v14[1] - v16 * 0.5;
  CGRectGetMinY(v17);
  v18.size.width = v12;
  v18.size.height = v13;
  v18.origin.x = v11[2] + v11[0] - v12 * 0.5;
  v18.origin.y = v11[3] + v11[1] - v13 * 0.5;
  CGRectGetMaxY(v18);
  v10.receiver = v1;
  v10.super_class = NCNotificationListHighlights;
  v3 = objc_msgSendSuper2(&v10, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v4 = sub_21E92A528();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223D64A50](v2, v4);
    goto LABEL_7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v5 = *(v4 + 8 * v2 + 32);
LABEL_7:
  v6 = v5;

  v7 = [v6 listView];

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  UIRoundToViewScale();
  v9 = v8;

  if (v9 <= 0.0)
  {
    v9 = 0.0;
  }

  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
}

void sub_21E8F9AA4(uint64_t a1)
{
  v2 = v1;
  sub_21E8ADE68(a1, 0, v25);
  CGRectGetHeight(v26);
  v24.receiver = v1;
  v24.super_class = NCNotificationListHighlights;
  v4 = objc_msgSendSuper2(&v24, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v5 = sub_21E92A528();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223D64A50](a1, v5);
    goto LABEL_5;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * a1 + 32);
LABEL_5:
  v7 = v6;

  v8 = [v7 listView];

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  UIRoundToViewScale();
  v10 = v9;

  sub_21E8F56CC(1);
  v12 = v11;
  [v2 availableHeight];
  v13 = 0;
  if (v12 < v14)
  {
    sub_21E8F56CC(2);
    v16 = v15;
    [v2 availableHeight];
    if (v16 >= v17)
    {
      v13 = 1;
    }

    else
    {
      sub_21E8F56CC(3);
      v19 = v18;
      [v2 availableHeight];
      if (v19 >= v20)
      {
        v13 = 2;
      }

      else
      {
        v13 = 3;
      }
    }
  }

  if (v13 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v13;
  }

  v22 = [v2 count];
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= a1)
  {
    [v2 expandedPercentage];
    if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      [v2 expandedPercentage];
      if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        [v2 expandedPercentage];
      }
    }
  }
}

void sub_21E8F9D6C(void *a1, double a2)
{
  v5 = OBJC_IVAR___NCNotificationListHighlights_listCellsToSwipeOffsets;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *&v2[v5];
  *&v2[v5] = 0x8000000000000000;
  sub_21E8F7E78(a1, isUniquelyReferenced_nonNull_native, a2);
  *&v2[v5] = v9;
  swift_endAccess();
  v7 = [v2 listView];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_21E8F9E38(void *a1, void *a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  _Block_copy(a3);
  if (!v7)
  {
    goto LABEL_4;
  }

  v21.receiver = a2;
  v21.super_class = NCNotificationListHighlights;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v21, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v10 = sub_21E92A528();

  v11 = sub_21E8E927C(v7, v10);
  LOBYTE(v9) = v12;

  if (v9)
  {

LABEL_4:
    a3[2](a3);
LABEL_5:

    return;
  }

  v13 = [a2 listView];
  if (v13)
  {
    v14 = v13;
    [v13 layoutOffsetForViewAtIndex_];
    v16 = v15;

    v17 = [a2 delegate];
    if (v17)
    {
      v18 = v17;
      if ([v17 respondsToSelector_])
      {
        v20[4] = sub_21E792C6C;
        v20[5] = v6;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 1107296256;
        v20[2] = sub_21E792C28;
        v20[3] = &block_descriptor_35;
        v19 = _Block_copy(v20);

        [v18 notificationListBaseComponent:a2 requestsScrollingToContentOffset:v19 withCompletion:v16];
        swift_unknownObjectRelease();

        _Block_release(v19);

        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    _Block_release(a3);
    __break(1u);
  }
}

uint64_t sub_21E8FA0B8(char a1)
{
  v2 = v1;
  *(*&v1[OBJC_IVAR___NCNotificationListHighlights_dropletLayout] + 41) = 0;
  result = sub_21E8AD340();
  if (a1)
  {
    v5 = [v1 animator];
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v9[4] = sub_21E8FA434;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21E792C28;
    v9[3] = &block_descriptor_70_0;
    v7 = _Block_copy(v9);
    v8 = v2;

    [v5 animateByRetargetingType:0 animations:v7 completion:0];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21E8FA208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E8B8A0C;

  return sub_21E8EF4BC(a1, v4, v5, v6);
}

uint64_t sub_21E8FA2BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E8B90C0;

  return sub_21E8F65B8(a1, v4);
}

uint64_t sub_21E8FA374(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E8B8A0C;

  return sub_21E8F65B8(a1, v4);
}

uint64_t sub_21E8FA4E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21E8FA584()
{
  v1 = *(v0 + 16) + OBJC_IVAR___NCNotificationListHighlights_recentlyInsertedIndex;
  *v1 = 0;
  *(v1 + 8) = 256;
  sub_21E8EA388();
}

void __swiftcall NCGlassGroupView.init(frame:)(NCGlassGroupView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id NCGlassGroupView.init(frame:)()
{
  v4.super_class = NCGlassGroupView;
  v0 = objc_msgSendSuper2(&v4, sel_initWithFrame_);
  v3[3] = sub_21E929A98();
  v3[4] = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(v3);
  v1 = v0;
  sub_21E929A88();
  sub_21E92A718();

  return v1;
}

unint64_t type metadata accessor for NCGlassGroupView()
{
  result = qword_27CED7980;
  if (!qword_27CED7980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CED7980);
  }

  return result;
}

char *sub_21E8FA96C(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsSeparatorView_separator;
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsSeparatorView_separator] = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *&v4[v10];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 separatorColor];
  [v13 setBackgroundColor_];

  v38.receiver = v4;
  v38.super_class = type metadata accessor for HighlightsSeparatorView();
  v15 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 traitCollection];
  [v16 displayScale];
  v18 = v17;

  [v15 frame];
  [v15 setFrame_];
  v19 = OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsSeparatorView_separator;
  [v15 addSubview_];
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21E948940;
  v22 = [*&v15[v19] leadingAnchor];
  v23 = [v15 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:78.0];

  *(v21 + 32) = v24;
  v25 = [*&v15[v19] trailingAnchor];
  v26 = [v15 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-0.0];

  *(v21 + 40) = v27;
  v28 = [*&v15[v19] topAnchor];
  v29 = [v15 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v21 + 48) = v30;
  v31 = [*&v15[v19] bottomAnchor];
  v32 = [v15 bottomAnchor];

  v33 = [v31 constraintEqualToAnchor_];
  *(v21 + 56) = v33;
  v34 = [*&v15[v19] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v21 + 64) = v35;
  sub_21E8BA1B8();
  v36 = sub_21E92A518();

  [v20 activateConstraints_];

  return v15;
}

id sub_21E8FADC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsSeparatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E8FAE54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v61 = sub_21E929F78();
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21E929E28();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B98);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BA0);
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  MEMORY[0x28223BE20](v6);
  v65 = &v56 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BA8);
  MEMORY[0x28223BE20](v72);
  v10 = &v56 - v9;
  v71 = (&v56 - v9);
  *&v58 = sub_21E92A138();
  v11 = sub_21E929F28();
  v12 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BB0) + 36)];
  *v12 = v11;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BB8);
  sub_21E8FB7B0(v2, &v12[*(v13 + 44)]);
  v14 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BC0) + 36)];
  sub_21E92A298();
  v15 = sub_21E929FC8();
  v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BC8) + 36)] = v15;
  v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BD0) + 36)];
  v17 = *(sub_21E929EC8() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_21E929F18();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #8.0 }

  *v16 = _Q0;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BD8) + 36)] = 256;
  v25 = *(v2 + 8);
  *&v74 = *v2;
  v26 = v74;
  *(&v74 + 1) = v25;
  v57 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BE0);
  sub_21E92A1B8();
  v27 = *&v77[0];
  swift_getKeyPath();
  *&v74 = v27;
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *&v74 = v26;
  *(&v74 + 1) = v25;
  sub_21E92A1B8();
  v28 = *&v77[0];
  swift_getKeyPath();
  *&v74 = v28;
  sub_21E9297A8();

  sub_21E92A2C8();
  sub_21E929E58();
  v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BE8) + 36)];
  v30 = v75;
  *v29 = v74;
  *(v29 + 1) = v30;
  *(v29 + 2) = v76;
  v31 = sub_21E92A2C8();
  v33 = v32;
  v34 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BF0) + 36)];
  *v34 = v31;
  v34[1] = v33;
  v35 = v71;
  *v71 = v58;
  *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BF8) + 36)) = 0;
  v36 = v57;
  *&v77[0] = v57;
  *(&v77[0] + 1) = v25;
  sub_21E92A1B8();
  v37 = v73[0];
  swift_getKeyPath();
  *&v77[0] = v37;
  sub_21E9297A8();

  v58 = *&v37[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter];

  *(v35 + *(v72 + 36)) = v58;
  sub_21E929F88();
  v38 = v59;
  sub_21E929E08();
  v78 = v25;
  v39 = *(v2 + 32);
  v77[0] = *(v2 + 16);
  v77[1] = v39;
  v40 = swift_allocObject();
  v41 = *(v2 + 16);
  v40[1] = *v2;
  v40[2] = v41;
  v40[3] = *(v2 + 32);
  v42 = v36;
  sub_21E8B4BF0(&v78, v73, &qword_27CED7148);
  sub_21E8B4BF0(v77, v73, &qword_27CED7150);
  sub_21E795D68(&qword_27CED7C00, MEMORY[0x277CDD730]);
  v43 = v62;
  v44 = v63;
  sub_21E92A258();

  (*(v64 + 8))(v38, v44);
  v45 = swift_allocObject();
  v46 = *(v2 + 16);
  v45[1] = *v2;
  v45[2] = v46;
  v45[3] = *(v2 + 32);
  v47 = v42;
  sub_21E8B4BF0(&v78, v73, &qword_27CED7148);
  sub_21E8B4BF0(v77, v73, &qword_27CED7150);
  sub_21E8D919C(&qword_27CED7C08, &qword_27CED7B98);
  sub_21E795D68(&qword_27CED7C10, MEMORY[0x277CDD708]);
  v48 = v65;
  v49 = v66;
  sub_21E92A268();

  (*(v67 + 8))(v43, v49);
  sub_21E929E48();
  sub_21E910500();
  sub_21E8D919C(&qword_27CED7C48, &qword_27CED7BA0);
  v50 = v70;
  v51 = v68;
  v52 = v71;
  sub_21E92A0D8();
  (*(v69 + 8))(v48, v51);
  sub_21E8B4CAC(v52, &qword_27CED7BA8);
  v53 = sub_21E929E78();
  LOBYTE(v52) = sub_21E929FC8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7C50);
  v55 = v50 + *(result + 36);
  *v55 = v53;
  *(v55 + 8) = v52;
  return result;
}

uint64_t sub_21E8FB7B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7C60) - 8;
  MEMORY[0x28223BE20](v61);
  v62 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v57 = sub_21E929E98();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v58 = sub_21E929EB8();
  *&v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7C68);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7C70);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v50 - v18;
  v67 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BE0);
  sub_21E92A1D8();
  v19 = v69;
  v20 = v70;
  swift_getKeyPath();
  v69 = v19;
  *&v70 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7C78);
  sub_21E92A218();

  v50 = v67;
  v21 = v68;

  v65 = v50;
  v66 = v21;
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7C80);
  sub_21E8D919C(&qword_27CED7C88, &qword_27CED7C80);
  sub_21E92A288();
  sub_21E929E88();
  v22 = v56;
  v23 = v57;
  (*(v56 + 16))(v54, v10, v57);
  v24 = v52;
  sub_21E929EA8();
  (*(v22 + 8))(v10, v23);
  sub_21E8D919C(&qword_27CED7C90, &qword_27CED7C68);
  v25 = v51;
  v26 = v53;
  v27 = v58;
  sub_21E92A078();
  (*(v59 + 8))(v24, v27);
  (*(v55 + 8))(v13, v26);
  v28 = sub_21E929FC8();
  v29 = v25 + *(v15 + 44);
  *v29 = v28;
  __asm { FMOV            V0.2D, #16.0 }

  *(v29 + 8) = _Q0;
  v59 = xmmword_21E948990;
  *(v29 + 24) = xmmword_21E948990;
  *(v29 + 40) = 0;
  v35 = *(sub_21E929EC8() + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_21E929F18();
  (*(*(v37 - 8) + 104))(&v6[v35], v36, v37);
  __asm { FMOV            V0.2D, #10.0 }

  *v6 = _Q0;
  v39 = sub_21E92A158();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7C98);
  *&v6[*(v40 + 52)] = v39;
  *&v6[*(v40 + 56)] = 256;
  sub_21E92A2C8();
  sub_21E929E58();
  v41 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CA0) + 36)];
  v42 = v70;
  *v41 = v69;
  *(v41 + 1) = v42;
  *(v41 + 2) = v71;
  v43 = sub_21E929FC8();
  v44 = v60;
  v45 = &v6[*(v61 + 44)];
  *v45 = v43;
  *(v45 + 8) = v59;
  *(v45 + 24) = xmmword_21E9489A0;
  v45[40] = 0;
  sub_21E8B4BF0(v25, v44, &qword_27CED7C70);
  v46 = v62;
  sub_21E8B4BF0(v6, v62, &qword_27CED7C60);
  v47 = v63;
  sub_21E8B4BF0(v44, v63, &qword_27CED7C70);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CA8);
  sub_21E8B4BF0(v46, v47 + *(v48 + 48), &qword_27CED7C60);
  sub_21E8B4CAC(v6, &qword_27CED7C60);
  sub_21E8B4CAC(v25, &qword_27CED7C70);
  sub_21E8B4CAC(v46, &qword_27CED7C60);
  return sub_21E8B4CAC(v44, &qword_27CED7C70);
}

uint64_t sub_21E8FBEFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *a2 = *(v3 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudPage);
  return result;
}

uint64_t sub_21E8FBFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CB0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CB8);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CC0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CC8);
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v39 = 0;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CD0);
  v13 = type metadata accessor for ListDebugHUDModel(255);
  v14 = sub_21E910750();
  v15 = sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  v35 = &type metadata for ListDebugHUD.ScrollState;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  swift_getOpaqueTypeConformance2();
  sub_21E929FA8();
  v39 = 1;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CE0);
  v16 = sub_21E9107AC();
  v35 = &type metadata for ListDebugHUD.ListDebugGuidesState;
  v36 = v13;
  v37 = v16;
  v38 = v15;
  swift_getOpaqueTypeConformance2();
  sub_21E929FA8();
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  if (qword_280D05F70)
  {
    v35 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CF0);
    sub_21E8D919C(&qword_27CED7CF8, &qword_27CED7CF0);
    v17 = v24;
    sub_21E929FA8();

    v19 = v30;
    v18 = v31;
    v20 = v25;
    (*(v30 + 32))(v25, v17, v31);
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v19 = v30;
    v18 = v31;
    v20 = v25;
  }

  (*(v19 + 56))(v20, v21, 1, v18);
  sub_21E8FC7F4(v9, v20, v32);
  sub_21E8B4CAC(v20, &qword_27CED7CB8);
  (*(v28 + 8))(v9, v29);
  return (*(v26 + 8))(v12, v27);
}

void sub_21E8FC4B8()
{
  type metadata accessor for ListDebugHUDModel(0);
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  v3 = sub_21E929E38();
  v1 = v0 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BE0);
  sub_21E92A1B8();
  sub_21E910750();
  sub_21E92A0A8();

  sub_21E910B78(v3, v1);
}

uint64_t sub_21E8FC5C4(_OWORD *a1)
{
  sub_21E90F8D0(v4);
  v6[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BE0);
  sub_21E92A1B8();
  type metadata accessor for ListDebugHUDModel(0);
  sub_21E9107AC();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E92A0A8();

  v6[4] = v4[4];
  v6[5] = v4[5];
  v6[6] = v4[6];
  v7 = v5;
  v6[0] = v4[0];
  v6[1] = v4[1];
  v6[2] = v4[2];
  v6[3] = v4[3];
  return sub_21E910B48(v6);
}

uint64_t sub_21E8FC6E0@<X0>(uint64_t a1@<X8>)
{
  sub_21E92A1A8();
  *a1 = v3;
  *(a1 + 8) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CF0);
  type metadata accessor for NotificationListLayoutValidator(0);
  sub_21E795D68(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E929E38();
  sub_21E910808();
  sub_21E92A0A8();
}

uint64_t sub_21E8FC7F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v31 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7D08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7D10);
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v26 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7D18);
  v15 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v17 = &v26 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CC8);
  sub_21E91085C();
  sub_21E929DF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7CC0);
  sub_21E910970();
  sub_21E929DF8();
  sub_21E8B4BF0(v29, v8, &qword_27CED7CB8);
  v18 = 1;
  if ((*(v4 + 48))(v8, 1, v3) != 1)
  {
    v19 = v26;
    (*(v4 + 32))(v26, v8, v3);
    sub_21E910A84();
    sub_21E929DF8();
    (*(v4 + 8))(v19, v3);
    v18 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7D30);
  (*(*(v20 - 8) + 56))(v11, v18, 1, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7D38);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  v24 = v31;
  (*(v15 + 32))(v31, v17, v27);
  (*(v12 + 32))(v24 + v22, v14, v30);
  return sub_21E7A31C4(v11, v24 + v23);
}

void sub_21E8FCC08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7150);
  sub_21E92A1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BE0);
  sub_21E92A1B8();
  if (*OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }

  else
  {
    *OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD = 0;
    sub_21E8FD1B0(0);
  }
}

void sub_21E8FCD90(uint64_t a1, __int128 *a2)
{
  v22 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7BE0);
  sub_21E92A1B8();
  v3 = v20;
  if (*(v20 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD) == 1)
  {
    *(v20 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD) = 1;
    sub_21E8FD1B0(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v22 = v20;
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }

  v5 = a2[2];
  v22 = a2[1];
  v23 = v5;
  v24 = *(&v5 + 1);
  v6 = a2[2];
  v20 = a2[1];
  v21 = v6;
  sub_21E8B4BF0(&v24, &v17, &qword_27CED7C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7150);
  sub_21E92A1B8();
  if (v19)
  {
    v20 = *a2;
    sub_21E92A1B8();
    v7 = v17;
    swift_getKeyPath();
    *&v20 = v7;
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E9297A8();

    v9 = *(*&v7 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter);
    v8 = *(*&v7 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter + 8);

    v20 = v22;
    v21 = v23;
    v17 = v9;
    v18 = v8;
    v19 = 0;
    sub_21E92A1C8();
  }

  else
  {
    v9 = v17;
    v8 = v18;
  }

  sub_21E8B4CAC(&v22, &qword_27CED7150);
  v20 = *a2;
  sub_21E92A1B8();
  v10 = v17;
  sub_21E929E18();
  v12 = v9 + v11;
  sub_21E929E18();
  v14 = v8 + v13;
  v15 = (*&v10 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter);
  if (*(*&v10 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter) == v12 && v15[1] == v14)
  {
    *v15 = v12;
    v15[1] = v14;
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    *&v20 = v10;
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }
}

void sub_21E8FD1B0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v3 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD;
  if (*(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD) != v2)
  {
    swift_getKeyPath();
    sub_21E9297A8();

    if ((*(v1 + v3) & 1) == 0)
    {
      v4 = [objc_opt_self() standardDefaults];
      [v4 setListDebugHUDFrame_];
    }
  }
}

uint64_t sub_21E8FD2EC()
{
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  return *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD);
}

uint64_t sub_21E8FD394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *a2 = *(v3 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD);
  return result;
}

void sub_21E8FD444(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD) = v2;

    sub_21E8FD1B0(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }
}

void sub_21E8FD580(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudPage;
  v3 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudPage);
  *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudPage) = a1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  if (v3 != *(v1 + v2))
  {
    v4 = [objc_opt_self() standardDefaults];
    swift_getKeyPath();
    sub_21E9297A8();

    [v4 setListDebugHUDPage_];
  }
}

uint64_t sub_21E8FD6B8()
{
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  return *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudPage);
}

void sub_21E8FD760(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudPage) == a1)
  {

    sub_21E8FD580(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }
}

uint64_t sub_21E8FD898(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListDebugHUDModel.ChartItem(0);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v23 = MEMORY[0x277D84F90];
  sub_21E8D52B8(0, v9, 0);
  v10 = v23;
  v11 = *(a2 + 16);
  if (!v11)
  {

    return v10;
  }

  v12 = 0;
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21[1] = a2;
  v14 = a2 + v13;
  v15 = *(v5 + 72);
  do
  {
    result = sub_21E91028C(v14, v8, type metadata accessor for ListDebugHUDModel.ChartItem);
    v17 = *(v10 + 16);
    if (v17 < a1)
    {
      v23 = v10;
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21E8D52B8(v16 > 1, v17 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v17 + 1;
      sub_21E910224(v8, v10 + v13 + v17 * v15, type metadata accessor for ListDebugHUDModel.ChartItem);
    }

    else
    {
      if (v12 >= v17)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_21E9102F4(v8, v10 + v13 + v15 * v12);
      if ((v12 + 1) < a1)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }
    }

    v14 += v15;
    --v11;
  }

  while (v11);

  if (!v12)
  {
    return v10;
  }

  v18 = *(v10 + 16);
  v22 = MEMORY[0x277D84F90];
  result = sub_21E8D52B8(0, v18, 0);
  if (v18 >= v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v19 = *(v10 + 16);
    if (v19 >= v12 && v19 >= v18)
    {

      sub_21E90C650(v20, v10 + v13, v12, (2 * v18) | 1);
      sub_21E90C650(v10, v10 + v13, 0, (2 * v12) | 1);
      return v22;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

double sub_21E8FDB94(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  return *(v2 + *a2);
}

__n128 sub_21E8FDC38@<Q0>(uint64_t *a1@<X0>, void *a2@<X4>, __n128 *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_21E8FDD14(void *result, double a2, double a3)
{
  v4 = (v3 + *result);
  if (*v4 == a2 && v4[1] == a3)
  {
    *v4 = a2;
    v4[1] = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }

  return result;
}

void sub_21E8FDEF0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_getKeyPath();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    strcpy((v4 + 24), "contentOffset");
    *(v4 + 38) = -4864;
    v5 = sub_21E929758();

    swift_getKeyPath();
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    v6 = v5;
    sub_21E9297A8();

    swift_getKeyPath();
    sub_21E9297C8();

    v7 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__scrollViewObservers;
    v8 = swift_beginAccess();
    MEMORY[0x223D646A0](v8);
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_getKeyPath();
    sub_21E9297B8();

    swift_getKeyPath();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = 0x53746E65746E6F63;
    v10[4] = 0xEB00000000657A69;
    v11 = sub_21E929758();

    swift_getKeyPath();
    v12 = v11;
    sub_21E9297A8();

    swift_getKeyPath();
    sub_21E9297C8();

    v13 = swift_beginAccess();
    MEMORY[0x223D646A0](v13);
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_getKeyPath();
    sub_21E9297B8();

    swift_getKeyPath();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = 0x73646E756F62;
    v15[4] = 0xE600000000000000;
    v16 = sub_21E929758();

    swift_getKeyPath();
    v17 = v16;
    sub_21E9297A8();

    swift_getKeyPath();
    sub_21E9297C8();

    v18 = swift_beginAccess();
    MEMORY[0x223D646A0](v18);
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_getKeyPath();
    sub_21E9297B8();

    swift_getKeyPath();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = 0x656D617266;
    v20[4] = 0xE500000000000000;
    v21 = sub_21E929758();

    swift_getKeyPath();
    v22 = v21;
    sub_21E9297A8();

    swift_getKeyPath();
    sub_21E9297C8();

    v23 = swift_beginAccess();
    MEMORY[0x223D646A0](v23);
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_getKeyPath();
    sub_21E9297B8();

    swift_getKeyPath();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = 0x52656C6269736976;
    v25[4] = 0xEB00000000746365;
    v26 = sub_21E929758();

    swift_getKeyPath();
    v27 = v26;
    sub_21E9297A8();

    swift_getKeyPath();
    sub_21E9297C8();

    v28 = swift_beginAccess();
    MEMORY[0x223D646A0](v28);
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_getKeyPath();
    sub_21E9297B8();

    swift_getKeyPath();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    strcpy((v30 + 24), "contentInset");
    *(v30 + 37) = 0;
    *(v30 + 38) = -5120;
    v31 = sub_21E929758();

    swift_getKeyPath();
    v32 = v31;
    sub_21E9297A8();

    swift_getKeyPath();
    sub_21E9297C8();

    v33 = swift_beginAccess();
    MEMORY[0x223D646A0](v33);
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_getKeyPath();
    sub_21E9297B8();
  }
}

uint64_t sub_21E8FE9F0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_21E8FEA28()
{
  sub_21E90EC08();
  swift_unknownObjectWeakAssign();
  sub_21E8FDEF0();
}

uint64_t sub_21E8FEA68()
{
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  return *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount);
}

uint64_t sub_21E8FEB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v5 = *(v3 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21E8FEC08(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount;
  if ((*(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E929798();
}

uint64_t sub_21E8FED48(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_21E8FED78()
{
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E929798();
}

uint64_t sub_21E8FEE78()
{
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();
}

uint64_t sub_21E8FEF24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *a2 = *(v3 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItemIndexByLabel);
}

uint64_t sub_21E8FEFD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItemIndexByLabel;

  v5 = sub_21E90E3D4(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }
}

uint64_t sub_21E8FF134@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E929778();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_21E8FF19C()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = qword_27CED9ED8;
    result = qword_27CED9ED8;
  }

  else
  {
    v1 = 0;
  }

  qword_280D04800 = v1;
  return result;
}

uint64_t sub_21E8FF1F8()
{
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  swift_beginAccess();
}

uint64_t sub_21E8FF2B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_21E8FF37C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__scrollViewObservers;
  swift_beginAccess();

  v5 = sub_21E8E647C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    sub_21E929798();
  }
}

uint64_t sub_21E8FF4CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

id sub_21E8FF538()
{
  v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__contentOffset];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__contentInset];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  v3 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__contentSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__visibleRect];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__bounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__frame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__translation];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__startPosition];
  *v9 = 0;
  v9[8] = 1;
  v10 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__chartItems] = sub_21E90EB04(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems] = v10;
  *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItemIndexByLabel] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__scrollViewObservers] = v10;
  sub_21E9297D8();
  v11 = objc_opt_self();
  v12 = [v11 standardDefaults];
  [v12 listDebugHUDFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = 0.0;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = 0.0;
  v36.size.height = 0.0;
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  if (CGRectEqualToRect(v33, v36) || (v22 = [v11 standardDefaults], v23 = objc_msgSend(v22, sel_showListDebugHUD), v22, (v23 & 1) == 0))
  {
    v20 = 200.0;
    v18 = 300.0;
    v16 = 100.0;
  }

  else
  {
    v21 = v14;
  }

  v24 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudSize];
  *v24 = v18;
  v24[1] = v20;
  v34.origin.x = v21;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  MidX = CGRectGetMidX(v34);
  v35.origin.x = v21;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  MidY = CGRectGetMidY(v35);
  v27 = &v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter];
  *v27 = MidX;
  v27[1] = MidY;
  v28 = [v11 standardDefaults];
  v29 = [v28 listDebugHUDPage];

  *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudPage] = v29;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for ListDebugHUDModel(0);
  v30 = objc_msgSendSuper2(&v32, sel_init);
  sub_21E8FF85C();

  return v30;
}

void sub_21E8FF85C()
{
  sub_21E90EE4C();
  v0 = sub_21E92A6C8();
  v1 = sub_21E92A428();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_21E90EE98;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21E8FFF94;
  v5[3] = &block_descriptor_7;
  v3 = _Block_copy(v5);

  v4 = BSLogAddStateCaptureBlockWithTitle();
  _Block_release(v3);
  swift_unknownObjectRelease();
}

uint64_t sub_21E8FF984@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v69 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    a1[3] = MEMORY[0x277D84F78] + 8;
    return result;
  }

  v6 = result;
  v63 = a1;
  swift_getKeyPath();
  *&v70 = v6;
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v7 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v8 = *&v6[v7];
  v68 = *(v8 + 16);
  if (!v68)
  {
    v12 = MEMORY[0x277D84F98];
LABEL_21:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      v35 = [Strong purposeHashed_];
      v36 = sub_21E92A458();
      v37 = v6;
      v39 = v38;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v12;
      sub_21E8F85E4(v36, v39, 0x65736F70727570, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v41 = v70;
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      v42 = [v34 isRevealed];
      v43 = v42 == 0;
      if (v42)
      {
        v44 = 1702195828;
      }

      else
      {
        v44 = 0x65736C6166;
      }

      if (v43)
      {
        v45 = 0xE500000000000000;
      }

      else
      {
        v45 = 0xE400000000000000;
      }

      MEMORY[0x223D64660](v44, v45);

      v46 = v70;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v41;
      sub_21E8F85E4(v46, *(&v46 + 1), 0x6C61657665527369, 0xEA00000000006465, v47);
      v48 = v70;
      [v34 revealPercentage];
      v49 = sub_21E92A5E8();
      v51 = v50;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v48;
      sub_21E8F85E4(v49, v51, 0xD000000000000010, 0x800000021E9590E0, v52);
      v53 = v70;
      v71 = 0;
      v72 = 0xE000000000000000;
      [v34 transform];
      type metadata accessor for CGAffineTransform(0);
      sub_21E92A918();
      v54 = v71;
      v55 = v72;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v53;
      sub_21E8F85E4(v54, v55, 0x726F66736E617274, 0xE90000000000006DLL, v56);

      v57 = v70;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AD8);
      v59 = v63;
      v63[3] = v58;

      *v59 = v57;
    }

    else
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AD8);
      v61 = v63;
      v63[3] = v60;

      *v61 = v12;
    }
  }

  v62 = v6;
  v9 = *(v2 + 24);
  v67 = &v4[*(v2 + 20)];
  v66 = &v4[v9];
  v65 = v8 + ((*(v69 + 80) + 32) & ~*(v69 + 80));

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v64 = v10;
  while (v11 < *(v10 + 16))
  {
    v14 = v4;
    sub_21E91028C(v65 + *(v69 + 72) * v11, v4, type metadata accessor for ListDebugHUDModel.PlotItem);
    v16 = *v67;
    v15 = v67[1];
    v17 = *v66;
    v18 = *(v66 + 1);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    *&v70 = v12;
    v21 = sub_21E795DB0(v16, v15);
    v22 = v12[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_32;
    }

    v25 = v20;
    if (v12[3] >= v24)
    {
      if (v19)
      {
        v12 = v70;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_21E90BCA4();
        v12 = v70;
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_21E90A61C(v24, v19);
      v26 = sub_21E795DB0(v16, v15);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_34;
      }

      v21 = v26;
      v12 = v70;
      if (v25)
      {
LABEL_4:
        v13 = (v12[7] + 16 * v21);
        *v13 = v17;
        v13[1] = v18;

        goto LABEL_5;
      }
    }

    v12[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v12[6] + 16 * v21);
    *v28 = v16;
    v28[1] = v15;
    v29 = (v12[7] + 16 * v21);
    *v29 = v17;
    v29[1] = v18;
    v30 = v12[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_33;
    }

    v12[2] = v32;

LABEL_5:
    ++v11;
    v4 = v14;
    sub_21E910358(v14, type metadata accessor for ListDebugHUDModel.PlotItem);
    v10 = v64;
    if (v68 == v11)
    {

      v6 = v62;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_21E92AA98();
  __break(1u);
  return result;
}

id sub_21E8FFF94(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v11, v2);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_21E92AA38();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_21E9000DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListDebugHUDModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E9001D0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_21E900260()
{
  sub_21E9001D0();

  return swift_deallocClassInstance();
}

uint64_t sub_21E9002B8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E947B30;
  v4 = MEMORY[0x277D85048];
  *(v3 + 56) = MEMORY[0x277D85048];
  v5 = sub_21E79668C();
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v2;

  return sub_21E92A468();
}

uint64_t sub_21E900368(uint64_t a1)
{
  result = sub_21E795D68(&qword_280D03C78, type metadata accessor for CGRect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E9003C0(uint64_t a1)
{
  result = sub_21E795D68(&qword_280D03C30, type metadata accessor for CGPoint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E900418()
{
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E947520;
  *(v2 + 56) = MEMORY[0x277D85048];
  *(v2 + 64) = sub_21E79668C();
  *(v2 + 32) = v1;

  return sub_21E92A468();
}

uint64_t sub_21E9004AC(uint64_t a1)
{
  result = sub_21E795D68(&qword_280D03C58, type metadata accessor for CGSize);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E900504()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E947520;
  *(v2 + 56) = MEMORY[0x277D85048];
  *(v2 + 64) = sub_21E79668C();
  *(v2 + 32) = v1;

  return sub_21E92A468();
}

uint64_t sub_21E900598(uint64_t a1)
{
  result = sub_21E795D68(&qword_280D03EB0, type metadata accessor for UIEdgeInsets);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21E9005F0(uint64_t a1)
{
  result = sub_21E900618();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21E900618()
{
  result = qword_280D04A78;
  if (!qword_280D04A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D04A78);
  }

  return result;
}

uint64_t sub_21E9006D0()
{
  result = sub_21E9297E8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21E9007CC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E9008A8()
{
  result = sub_21E929778();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E929778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E929778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E900AE8()
{
  result = sub_21E929778();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21E900B68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 - 8);
  v52 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  sub_21E929F68();
  v42 = sub_21E92A198();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v35 - v9;
  v45 = sub_21E929E68();
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v51 = &v35 - v10;
  v11 = sub_21E929E68();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v43 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v35 - v14;
  v15 = *(a1 + 24);
  v53 = v8;
  v54 = v15;
  v39 = v8;
  v41 = v2;
  v55 = v2;
  v61 = MEMORY[0x277CE0BC8];
  v62 = v15;
  WitnessTable = swift_getWitnessTable();
  sub_21E92A188();
  v40 = *(v4 + 16);
  v36 = v6;
  v40(v6, v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v15;
  v38 = *(v4 + 32);
  v38(v18 + v17, v6, a1);
  v60 = WitnessTable;
  v19 = v42;
  v20 = swift_getWitnessTable();
  v21 = v37;
  sub_21E92A0E8();

  (*(v44 + 8))(v21, v19);
  v22 = v36;
  v40(v36, v41, a1);
  v23 = swift_allocObject();
  *(v23 + 16) = v39;
  *(v23 + 24) = v15;
  v38(v23 + v17, v22, a1);
  v24 = MEMORY[0x277CE0790];
  v58 = v20;
  v59 = MEMORY[0x277CE0790];
  v25 = v45;
  v26 = swift_getWitnessTable();
  v27 = v43;
  v28 = v51;
  sub_21E92A0B8();

  (*(v49 + 8))(v28, v25);
  v56 = v26;
  v57 = v24;
  v29 = v48;
  swift_getWitnessTable();
  v31 = v46;
  v30 = v47;
  v32 = *(v47 + 16);
  v32(v46, v27, v29);
  v33 = *(v30 + 8);
  v33(v27, v29);
  v32(v50, v31, v29);
  return (v33)(v31, v29);
}

uint64_t sub_21E901104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = sub_21E929F68();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *(a1 + 8);
  LOBYTE(v30) = *a1;
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F88);
  sub_21E92A1B8();
  v18 = MEMORY[0x277CE0BC8];
  if (v36 == 1)
  {
    v30 = 0xD000000000000011;
    v31 = 0x800000021E9591D0;
    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    v19 = v29;
    sub_21E901420(&v30, MEMORY[0x277CE0BD8]);
  }

  else
  {
    v27 = v14;
    v20 = v13;
    v21 = a1;
    v19 = v29;
    v22 = *(type metadata accessor for ListDebugHUD.TabContainer() + 36);
    v28 = a4;
    v23 = *(v7 + 16);
    v24 = v21 + v22;
    v13 = v20;
    v14 = v27;
    v23(v12, v24, a2);
    v23(v9, v12, a2);
    v18 = MEMORY[0x277CE0BC8];
    sub_21E901518(v9, MEMORY[0x277CE0BD8], a2);
    v25 = *(v7 + 8);
    v25(v9, a2);
    v25(v12, a2);
    a4 = v28;
  }

  v34 = v18;
  v35 = v19;
  swift_getWitnessTable();
  (*(v14 + 16))(a4, v16, v13);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_21E901420(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E929F48();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_21E929F58();
}

uint64_t sub_21E901518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21E929F48();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_21E929F58();
}

uint64_t sub_21E901670@<X0>(void *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7DF0);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v47 - v8;
  v9 = sub_21E929EE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7DF8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v47 - v15;
  LODWORD(v59) = a2;
  v49 = v9;
  v48 = v10;
  v47 = v12;
  if (a2)
  {
    v16 = a1;
  }

  else
  {

    sub_21E92A638();
    v17 = sub_21E929F98();
    sub_21E929A48();

    sub_21E929ED8();
    swift_getAtKeyPath();
    sub_21E910B78(a1, 0);
    (*(v10 + 8))(v12, v9);
    v16 = v61;
  }

  swift_getKeyPath();
  v61 = v16;
  v55 = sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v18 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v19 = *&v16[v18];

  v61 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = v59;
  *(v20 + 24) = v59 & 1;
  sub_21E911410(a1, v21 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E00);
  sub_21E929778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E08);
  sub_21E8D919C(&qword_27CED7E10, &qword_27CED7E00);
  sub_21E8D919C(&qword_27CED7E18, &qword_27CED7E08);
  sub_21E795D68(&qword_27CED7E20, type metadata accessor for ListDebugHUDModel.PlotItem);
  sub_21E92A248();
  if (v21)
  {
    v22 = a1;
  }

  else
  {

    sub_21E92A638();
    v23 = sub_21E929F98();
    sub_21E929A48();

    v24 = v47;
    sub_21E929ED8();
    swift_getAtKeyPath();
    sub_21E910B78(a1, 0);
    (*(v48 + 8))(v24, v49);
    v22 = v61;
  }

  swift_getKeyPath();
  v61 = v22;
  sub_21E9297A8();

  v25 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__chartItems;
  swift_beginAccess();
  v26 = *&v22[v25];
  v27 = *(v26 + 16);
  if (!v27)
  {

    v28 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v55 = a1;
  v28 = sub_21E91CA24(v27, 0);
  v29 = sub_21E90E27C(&v61, v28 + 4, v27, v26);

  result = sub_21E8FA42C();
  if (v29 == v27)
  {

    a1 = v55;
LABEL_11:
    v61 = v28;
    swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    v32 = v59 & 1;
    *(v31 + 24) = v59 & 1;
    sub_21E911410(a1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E28);
    sub_21E8D919C(&qword_27CED7E30, &unk_27CED7468);
    sub_21E8D919C(&qword_27CED7E38, &qword_27CED7E28);
    v33 = v57;
    sub_21E92A238();
    v34 = v50;
    v59 = *(v50 + 16);
    v35 = v56;
    v36 = v51;
    v59(v56, v60, v51);
    v37 = v53;
    v38 = *(v53 + 16);
    v39 = v33;
    v40 = v54;
    v38(v58, v39, v54);
    v41 = v52;
    *v52 = xmmword_21E9489B0;
    *(v41 + 16) = 0;
    *(v41 + 3) = MEMORY[0x277D84F90];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E40);
    v59(v41 + *(v42 + 48), v35, v36);
    v43 = v41 + *(v42 + 64);
    v44 = v58;
    v38(v43, v58, v40);
    sub_21E911464(0x53206C6C6F726353, 0xEC00000065746174, 0);
    v45 = *(v37 + 8);

    v45(v57, v40);
    v46 = *(v34 + 8);
    v46(v60, v36);
    v45(v44, v40);
    v46(v56, v36);
    sub_21E911474(0x53206C6C6F726353, 0xEC00000065746174, 0);
  }

  __break(1u);
  return result;
}

double sub_21E901F58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v5 = *(v4 + 24);
  v6 = (a1 + *(v4 + 20));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(a1 + v5);
  v10 = *(a1 + v5 + 8);
  v11 = sub_21E929EF8();
  v23 = 1;
  sub_21E908200(v7, v8, v9, v10, &v17);
  v26 = v19;
  v27 = v20;
  v24 = v17;
  v25 = v18;
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v29[1] = v18;
  v28 = v21;
  v29[0] = v17;
  sub_21E8B4BF0(&v24, &v16, &qword_27CED7EC0);
  sub_21E8B4CAC(v29, &qword_27CED7EC0);
  *&v22[7] = v24;
  *&v22[71] = v28;
  *&v22[55] = v27;
  *&v22[39] = v26;
  *&v22[23] = v25;
  v12 = *&v22[48];
  *(a2 + 49) = *&v22[32];
  *(a2 + 65) = v12;
  *(a2 + 81) = *&v22[64];
  result = *v22;
  v14 = *&v22[16];
  *(a2 + 17) = *v22;
  v15 = v23;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = v15;
  *(a2 + 96) = *&v22[79];
  *(a2 + 33) = v14;
  return result;
}

uint64_t sub_21E902090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v36 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E50);
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E58);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = *a1;
  v20 = a1[1];
  v34 = v19;
  v37 = a2;
  v38 = a3 & 1;
  v39 = v19;
  v40 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E60);
  sub_21E911494();
  sub_21E929D08();
  *&v41 = &unk_282FE3858;
  v21 = sub_21E929D68();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E70);
  sub_21E8D919C(&qword_27CED7E78, &qword_27CED7E50);
  sub_21E911B0C(&qword_27CED7E80, &qword_27CED7E70);
  v22 = v33;
  sub_21E92A038();
  sub_21E8B4CAC(v9, &qword_27CED7E48);
  (*(v10 + 8))(v12, v22);
  sub_21E92A2C8();
  sub_21E929E58();
  v23 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E88) + 36)];
  v24 = v42;
  *v23 = v41;
  *(v23 + 1) = v24;
  *(v23 + 2) = v43;
  v25 = sub_21E929FC8();
  v26 = &v18[*(v14 + 44)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  v27 = v35;
  sub_21E8B4BF0(v18, v35, &qword_27CED7E58);
  v28 = v36;
  v29 = v34;
  *v36 = v34;
  v28[1] = v20;
  *(v28 + 16) = 0;
  v28[3] = MEMORY[0x277D84F90];
  v30 = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E90);
  sub_21E8B4BF0(v27, v30 + *(v31 + 48), &qword_27CED7E58);
  sub_21E911464(v29, v20, 0);

  sub_21E8B4CAC(v18, &qword_27CED7E58);
  sub_21E8B4CAC(v27, &qword_27CED7E58);
  sub_21E911474(v29, v20, 0);
}

void sub_21E9024D4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21E929EE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a1;
  }

  else
  {

    sub_21E92A638();
    v13 = sub_21E929F98();
    sub_21E929A48();

    sub_21E929ED8();
    swift_getAtKeyPath();
    sub_21E910B78(a1, 0);
    (*(v9 + 8))(v11, v8);
    v12 = v19[0];
  }

  swift_getKeyPath();
  v19[0] = v12;
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v14 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__chartItems;
  swift_beginAccess();
  v15 = *&v12[v14];

  if (*(v15 + 16))
  {
    v16 = sub_21E795DB0(a3, a4);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      v19[4] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E98);
      sub_21E929778();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EA0);
      sub_21E8D919C(&qword_27CED7EA8, &qword_27CED7E98);
      v19[0] = sub_21E929D58();
      v19[1] = MEMORY[0x277CE0F78];
      v19[2] = MEMORY[0x277CBB438];
      v19[3] = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      sub_21E795D68(&qword_27CED7EB0, type metadata accessor for ListDebugHUDModel.ChartItem);
      sub_21E92A228();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21E902840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v17[1] = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v6 = sub_21E929D58();
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E929F08();
  v10 = type metadata accessor for ListDebugHUDModel.ChartItem(0);
  v11 = *(a1 + v10[6]);
  v22 = v11 - CACurrentMediaTime();
  sub_21E929CB8();

  v12 = (a1 + v10[5]);
  v14 = *v12;
  v13 = *(v12 + 1);
  v22 = v14;
  v23 = v13;
  v21 = *(a1 + v10[7]);
  sub_21E91155C();
  sub_21E929CC8();
  sub_21E929D48();
  v22 = COERCE_DOUBLE(sub_21E92A118());
  v15 = v18;
  sub_21E929CA8();

  return (*(v19 + 8))(v9, v15);
}

uint64_t sub_21E902AF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  *a5 = sub_21E929F28();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  return a4(a1, a2 & 1);
}

uint64_t sub_21E902B6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v85 = a2;
  v95 = a1;
  v93 = a3;
  v4 = a2 & 1;
  v74 = a2 & 1;
  v71 = sub_21E929EE8();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FA8);
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v69 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FB0);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v102 = &v69 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FB8);
  v84 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FC0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v99 = &v69 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FC8);
  MEMORY[0x28223BE20](v90);
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E48);
  MEMORY[0x28223BE20](v13 - 8);
  v94 = &v69 - v14;
  v103 = sub_21E929CF8();
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FD0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FD8);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v22 = &v69 - v21;
  v86 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FE0) - 8);
  MEMORY[0x28223BE20](v86);
  v87 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  v107 = a1;
  v108 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7FE8);
  sub_21E911958(&qword_27CED7FF0, &qword_27CED7FE8, &unk_21E949930, sub_21E91187C);
  sub_21E929D08();
  sub_21E929CD8();
  sub_21E92A2A8();
  v75 = MEMORY[0x277CBB3F8];
  v27 = sub_21E8D919C(&qword_27CED8008, &qword_27CED7FD0);
  sub_21E92A028();
  v28 = *(v104 + 8);
  v104 += 8;
  v96 = v28;
  v28(v16, v103);
  (*(v18 + 8))(v20, v17);
  v110 = &unk_282FE3888;
  v97 = sub_21E929D68();
  v29 = *(v97 - 8);
  v101 = *(v29 + 56);
  v100 = v29 + 56;
  v30 = v94;
  v101(v94, 1, 1, v97);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7E70);
  *&v114 = v17;
  *(&v114 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v98 = sub_21E911B0C(&qword_27CED7E80, &qword_27CED7E70);
  v31 = v72;
  sub_21E92A038();
  sub_21E8B4CAC(v30, &qword_27CED7E48);
  (*(v73 + 8))(v22, v31);
  sub_21E92A2C8();
  sub_21E929E58();
  v32 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8010) + 36)];
  v33 = v112;
  *v32 = v111;
  *(v32 + 1) = v33;
  *(v32 + 2) = v113;
  v34 = sub_21E929FC8();
  v35 = *(v86 + 11);
  v86 = v26;
  v36 = &v26[v35];
  *v36 = v34;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  v105 = v95;
  v106 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8018);
  sub_21E911958(&qword_27CED8020, &qword_27CED8018, &unk_21E949948, sub_21E9119D4);
  v37 = v77;
  sub_21E929D08();
  sub_21E929F08();
  sub_21E92A2B8();
  sub_21E929CE8();
  v38 = sub_21E8D919C(&qword_27CED8048, &qword_27CED7FA8);
  v39 = v78;
  sub_21E92A058();

  v96(v16, v103);
  (*(v80 + 8))(v37, v39);
  sub_21E929F08();
  sub_21E92A2D8();
  sub_21E929CE8();
  *&v114 = v39;
  *(&v114 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v82;
  v41 = v79;
  v42 = v95;
  v43 = v81;
  v44 = v102;
  sub_21E92A068();

  v96(v16, v103);
  (*(v83 + 8))(v44, v40);
  v109 = &unk_282FE38B8;
  v45 = v94;
  v101(v94, 1, 1, v97);
  v114 = __PAIR128__(OpaqueTypeConformance2, v40);
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v76;
  sub_21E92A038();
  v48 = v45;
  sub_21E8B4CAC(v45, &qword_27CED7E48);
  (*(v84 + 8))(v41, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8050);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_21E947B30;
  *(v49 + 32) = 0;

  if ((v85 & 1) == 0)
  {
    sub_21E92A638();
    v50 = sub_21E929F98();
    sub_21E929A48();

    v51 = v69;
    sub_21E929ED8();
    swift_getAtKeyPath();

    (*(v70 + 8))(v51, v71);
    v42 = v114;
  }

  swift_getKeyPath();
  *&v114 = v42;
  sub_21E795D68(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  v52 = *(v42 + 40);

  *(v49 + 40) = v52;
  v109 = v49;
  v101(v48, 1, 1, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8058);
  *&v114 = v43;
  *(&v114 + 1) = v47;
  *&v115 = v46;
  *(&v115 + 1) = v98;
  swift_getOpaqueTypeConformance2();
  sub_21E911B0C(&qword_27CED8060, &qword_27CED8058);
  v53 = v91;
  v54 = v89;
  v55 = v99;
  sub_21E92A048();
  sub_21E8B4CAC(v48, &qword_27CED7E48);

  (*(v88 + 8))(v55, v54);
  sub_21E92A2C8();
  sub_21E929E58();
  v56 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8068) + 36));
  v57 = v115;
  *v56 = v114;
  v56[1] = v57;
  v56[2] = v116;
  v58 = sub_21E929FC8();
  v59 = v53 + *(v90 + 36);
  *v59 = v58;
  *(v59 + 8) = 0u;
  *(v59 + 24) = 0u;
  *(v59 + 40) = 1;
  v60 = v86;
  v61 = v87;
  sub_21E8B4BF0(v86, v87, &qword_27CED7FE0);
  v62 = v92;
  sub_21E8B4BF0(v53, v92, &qword_27CED7FC8);
  v63 = v93;
  *v93 = xmmword_21E9489C0;
  *(v63 + 16) = 0;
  v64 = MEMORY[0x277D84F90];
  *(v63 + 3) = MEMORY[0x277D84F90];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8070);
  sub_21E8B4BF0(v61, v63 + v65[12], &qword_27CED7FE0);
  v66 = v63 + v65[16];
  *v66 = xmmword_21E9489D0;
  v66[16] = 0;
  *(v66 + 3) = v64;
  sub_21E8B4BF0(v62, v63 + v65[20], &qword_27CED7FC8);
  sub_21E911464(0x74657366664FLL, 0xE600000000000000, 0);

  sub_21E911464(0x7365676150, 0xE500000000000000, 0);

  sub_21E8B4CAC(v53, &qword_27CED7FC8);
  sub_21E8B4CAC(v60, &qword_27CED7FE0);
  sub_21E8B4CAC(v62, &qword_27CED7FC8);
  sub_21E911474(0x7365676150, 0xE500000000000000, 0);

  sub_21E8B4CAC(v61, &qword_27CED7FE0);
  sub_21E911474(0x74657366664FLL, 0xE600000000000000, 0);
}

uint64_t sub_21E903CEC(uint64_t a1, char a2)
{
  v4 = sub_21E929EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a1;
  }

  else
  {

    sub_21E92A638();
    v8 = sub_21E929F98();
    sub_21E929A48();

    sub_21E929ED8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v12;
  }

  swift_getKeyPath();
  v11[2] = a1;
  sub_21E795D68(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  swift_beginAccess();
  v9 = *(a1 + 32);

  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8078);
  sub_21E929778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8000);
  sub_21E8D919C(&qword_27CED8080, &qword_27CED8078);
  sub_21E91187C();
  sub_21E795D68(&qword_27CED8088, type metadata accessor for NotificationListLayoutValidator.LayoutState);
  return sub_21E92A228();
}

uint64_t sub_21E903FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED80C0) - 8;
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED80A8);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EB8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = sub_21E929D58();
  v52 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EA0);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v38 - v14;
  MEMORY[0x28223BE20](v15);
  v50 = &v38 - v16;
  MEMORY[0x28223BE20](v17);
  v49 = &v38 - v18;
  sub_21E929F08();
  v19 = type metadata accessor for NotificationListLayoutValidator.LayoutState(0);
  v20 = *(a1 + *(v19 + 20));
  v53 = v20 - CACurrentMediaTime();
  sub_21E929CB8();

  sub_21E929F08();
  v40 = a1 + *(v19 + 24);
  v53 = *(v40 + 8);
  v21 = v53;
  sub_21E929CB8();

  sub_21E929F08();
  *&v53 = 0x74657366666FLL;
  v54 = 0xE600000000000000;
  sub_21E929CB8();

  sub_21E929D38();
  v53 = COERCE_DOUBLE(sub_21E92A118());
  v22 = v42;
  sub_21E929CA8();

  v23 = *(v52 + 8);
  v52 += 8;
  v39 = v23;
  v23(v10, v22);
  sub_21E929F08();
  v53 = v20 - CACurrentMediaTime();
  sub_21E929CB8();

  sub_21E929F08();
  v53 = v21 + *(v40 + 16);
  sub_21E929CB8();

  sub_21E929F08();
  v53 = 4.82338309e228;
  v54 = 0xE90000000000006ELL;
  sub_21E929CB8();

  sub_21E929D38();
  v53 = COERCE_DOUBLE(sub_21E92A178());
  v24 = v50;
  sub_21E929CA8();

  v39(v10, v22);
  v25 = v44;
  v26 = v45;
  v27 = *(v44 + 16);
  v28 = v51;
  v29 = v49;
  v27(v51, v49, v45);
  v30 = v43;
  v27(v43, v24, v26);
  v31 = v46;
  v27(v46, v28, v26);
  v32 = v47;
  v33 = *(v47 + 56);
  v27(&v31[v33], v30, v26);
  v34 = *(v25 + 32);
  v35 = v48;
  v34(v48, v31, v26);
  v34(v35 + *(v32 + 56), &v31[v33], v26);
  v36 = *(v25 + 8);
  v36(v50, v26);
  v36(v29, v26);
  v36(v30, v26);
  return (v36)(v51, v26);
}

uint64_t sub_21E904754(uint64_t a1, char a2)
{
  v4 = sub_21E929EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21E92A638();
    v9 = sub_21E929F98();
    sub_21E929A48();

    sub_21E929ED8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v14;
  }

  swift_getKeyPath();
  v14 = v8;
  sub_21E795D68(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  swift_beginAccess();
  v10 = *(v8 + 32);

  v13 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8078);
  sub_21E929778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8030);
  sub_21E8D919C(&qword_27CED8080, &qword_27CED8078);
  sub_21E9119D4();
  sub_21E795D68(&qword_27CED8088, type metadata accessor for NotificationListLayoutValidator.LayoutState);
  return sub_21E92A228();
}

uint64_t sub_21E904A50(uint64_t a1)
{
  v2 = type metadata accessor for NotificationListLayoutValidator.LayoutState(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[1] = *(a1 + *(v5 + 32));
  sub_21E91028C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationListLayoutValidator.LayoutState);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21E910224(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NotificationListLayoutValidator.LayoutState);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8040);
  sub_21E8D919C(&qword_27CED8098, &qword_27CED8090);
  sub_21E911A04();
  sub_21E911C00();
  return sub_21E92A228();
}

uint64_t sub_21E904C24@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v63 = a3;
  v4 = sub_21E929D58();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EA0);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED80A8);
  MEMORY[0x28223BE20](v8 - 8);
  v49[3] = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49[4] = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EB8);
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v49[2] = v49 - v15;
  MEMORY[0x28223BE20](v16);
  v62 = v49 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v49 - v19;
  v21 = sub_21E929D28();
  v54 = *(v21 - 8);
  v55 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED80B0);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = v49 - v24;
  v25 = *a1;
  v26 = a1[1];
  v27 = a1[2];
  v28 = BSFloatApproximatelyEqualToFloat();
  sub_21E929F08();
  v29 = *(v61 + *(type metadata accessor for NotificationListLayoutValidator.LayoutState(0) + 20));
  v30 = v29 - CACurrentMediaTime();
  if (v28)
  {
    v64 = v30;
    sub_21E929CB8();

    sub_21E929F08();
    v64 = v26;
    sub_21E929CB8();

    sub_21E929F08();
    v31 = v25;
    v32 = dbl_21E949A18[v25];
    v33 = BSFloatApproximatelyEqualToFloat();
    if (v33)
    {
      v34 = 0x65736C6166;
    }

    else
    {
      v34 = 1702195828;
    }

    if (v33)
    {
      v35 = 0xE500000000000000;
    }

    else
    {
      v35 = 0xE400000000000000;
    }

    v64 = v32;
    v65 = 0xE100000000000000;

    MEMORY[0x223D64660](v34, v35);

    sub_21E929CB8();

    v36 = v52;
    sub_21E929D38();
    if (v31 <= 1u)
    {
      if (v31)
      {
        *&v37 = COERCE_DOUBLE(sub_21E92A148());
      }

      else
      {
        *&v37 = COERCE_DOUBLE(sub_21E92A108());
      }
    }

    else if (v31 == 2)
    {
      *&v37 = COERCE_DOUBLE(sub_21E92A118());
    }

    else if (v31 == 3)
    {
      *&v37 = COERCE_DOUBLE(sub_21E92A128());
    }

    else if (v26 == v27)
    {
      *&v37 = COERCE_DOUBLE(sub_21E92A178());
    }

    else
    {
      *&v37 = COERCE_DOUBLE(sub_21E92A168());
    }

    v64 = *&v37;
    v44 = v56;
    v45 = v60;
    sub_21E929CA8();

    (*(v59 + 8))(v36, v45);
    (*(v57 + 32))(v63, v44, v58);
  }

  else
  {
    LODWORD(v61) = v25;
    v64 = v30;
    v49[1] = v20;
    sub_21E929CB8();

    sub_21E929F08();
    v64 = v26;
    sub_21E929CB8();

    sub_21E929F08();
    v64 = v27;
    sub_21E929CB8();

    sub_21E929F08();
    v38 = dbl_21E949A18[v25];
    v39 = BSFloatApproximatelyEqualToFloat();
    if (v39)
    {
      v40 = 0x65736C6166;
    }

    else
    {
      v40 = 1702195828;
    }

    if (v39)
    {
      v41 = 0xE500000000000000;
    }

    else
    {
      v41 = 0xE400000000000000;
    }

    v64 = v38;
    v65 = 0xE100000000000000;

    MEMORY[0x223D64660](v40, v41);

    sub_21E929CB8();

    sub_21E929D18();
    v42 = v23;
    if (v61 <= 1)
    {
      if (v61)
      {
        *&v43 = COERCE_DOUBLE(sub_21E92A148());
      }

      else
      {
        *&v43 = COERCE_DOUBLE(sub_21E92A108());
      }
    }

    else if (v61 == 2)
    {
      *&v43 = COERCE_DOUBLE(sub_21E92A118());
    }

    else if (v61 == 3)
    {
      *&v43 = COERCE_DOUBLE(sub_21E92A128());
    }

    else if (v26 == v27)
    {
      *&v43 = COERCE_DOUBLE(sub_21E92A178());
    }

    else
    {
      *&v43 = COERCE_DOUBLE(sub_21E92A168());
    }

    v64 = *&v43;
    v46 = v50;
    v47 = v55;
    sub_21E929CA8();

    (*(v54 + 8))(v42, v47);
    (*(v51 + 32))(v63, v46, v53);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED80B8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21E905620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  sub_21E929FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_21E8D919C(a5, a3);
  return sub_21E929DE8();
}

uint64_t sub_21E9056DC@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7ED0);
  v92 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v3 = &v92 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7ED8);
  v5 = *(v4 - 8);
  v93 = v4;
  v94 = v5;
  MEMORY[0x28223BE20](v4);
  v105 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EE0);
  v8 = *(v7 - 8);
  v95 = v7;
  v96 = v8;
  MEMORY[0x28223BE20](v7);
  v107 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EE8);
  v11 = *(v10 - 8);
  v97 = v10;
  v98 = v11;
  MEMORY[0x28223BE20](v10);
  v108 = &v92 - v12;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EF0);
  v99 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EF8);
  v15 = *(v14 - 8);
  v100 = v14;
  v101 = v15;
  MEMORY[0x28223BE20](v14);
  v110 = &v92 - v16;
  v124 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F00);
  sub_21E8D919C(&qword_27CED7F08, &qword_27CED7F00);
  sub_21E929FF8();
  v17 = v1[5];
  v18 = v1[3];
  v152 = v1[4];
  v153 = v17;
  v19 = v1[5];
  v154 = v1[6];
  v20 = v1[1];
  v148 = *v1;
  v149 = v20;
  v21 = v1[3];
  v23 = *v1;
  v22 = v1[1];
  v150 = v1[2];
  v151 = v21;
  v144 = v152;
  v145 = v19;
  v146 = v1[6];
  v140 = v23;
  v141 = v22;
  v155 = *(v1 + 14);
  v147 = *(v1 + 14);
  v142 = v150;
  v143 = v18;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F10);
  sub_21E92A1B8();
  v25 = v157;
  v26 = v158;
  v27 = MEMORY[0x277D839B0];
  v122 = MEMORY[0x277D839B0];
  v123 = MEMORY[0x277D839C8];
  swift_getKeyPath();
  v28 = MEMORY[0x277D85000];
  *&v140 = v25;
  v29 = sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v30 = *((*v28 & *v25) + 0x70);
  swift_beginAccess();
  v31 = *(v25 + v30);
  sub_21E8E6208(v156);
  if (v31 == 2)
  {
    v32 = v26;
  }

  else
  {
    v32 = v31;
  }

  LOBYTE(v140) = v32 & 1;
  v33 = sub_21E8D919C(&qword_27CED7F18, &qword_27CED7ED0);
  v34 = v106;
  v35 = v27;
  v36 = MEMORY[0x277D839C8];
  sub_21E92A0F8();
  (*(v92 + 8))(v3, v34);
  v144 = v152;
  v145 = v153;
  v146 = v154;
  v147 = v155;
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v143 = v151;
  v104 = v24;
  sub_21E92A1B8();
  v37 = v138[4];
  v38 = v139;
  v120 = v35;
  v121 = v36;
  swift_getKeyPath();
  v39 = MEMORY[0x277D85000];
  *&v140 = v37;
  v103 = v29;
  sub_21E9297A8();

  v40 = *((*v39 & *v37) + 0x70);
  swift_beginAccess();
  v41 = *(v37 + v40);
  sub_21E8E6208(v138);
  if (v41 == 2)
  {
    v42 = v38;
  }

  else
  {
    v42 = v41;
  }

  v135[0] = v42 & 1;
  *&v140 = v106;
  v43 = MEMORY[0x277D839B0];
  *(&v140 + 1) = MEMORY[0x277D839B0];
  *&v141 = v33;
  v44 = MEMORY[0x277D839C8];
  *(&v141 + 1) = MEMORY[0x277D839C8];
  v106 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v93;
  v47 = v44;
  v48 = v105;
  sub_21E92A0F8();
  (*(v94 + 8))(v48, v46);
  v144 = v152;
  v145 = v153;
  v146 = v154;
  v147 = v155;
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v143 = v151;
  sub_21E92A1B8();
  v49 = v136;
  v50 = v137;
  v118 = v43;
  v119 = v47;
  swift_getKeyPath();
  *&v140 = v49;
  sub_21E9297A8();

  v51 = *((*v39 & *v49) + 0x70);
  swift_beginAccess();
  v52 = *(v49 + v51);
  sub_21E8E6208(v135);
  if (v52 == 2)
  {
    v53 = v50;
  }

  else
  {
    v53 = v52;
  }

  v132[0] = v53 & 1;
  *&v140 = v46;
  *(&v140 + 1) = v43;
  *&v141 = OpaqueTypeConformance2;
  v54 = MEMORY[0x277D839C8];
  *(&v141 + 1) = MEMORY[0x277D839C8];
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v107;
  v57 = v95;
  v58 = v43;
  sub_21E92A0F8();
  v59 = v57;
  (*(v96 + 8))(v56, v57);
  v144 = v152;
  v145 = v153;
  v146 = v154;
  v147 = v155;
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v143 = v151;
  sub_21E92A1B8();
  v60 = v133;
  v61 = v134;
  v116 = v58;
  v117 = v54;
  swift_getKeyPath();
  v62 = MEMORY[0x277D85000];
  *&v140 = v60;
  sub_21E9297A8();

  v63 = *((*v62 & *v60) + 0x70);
  swift_beginAccess();
  v64 = *(v60 + v63);
  sub_21E8E6208(v132);
  if (v64 == 2)
  {
    v65 = v61;
  }

  else
  {
    v65 = v64;
  }

  v129[0] = v65 & 1;
  *&v140 = v59;
  v66 = MEMORY[0x277D839B0];
  *(&v140 + 1) = MEMORY[0x277D839B0];
  *&v141 = v55;
  v67 = MEMORY[0x277D839C8];
  *(&v141 + 1) = MEMORY[0x277D839C8];
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v97;
  v70 = v66;
  v71 = v108;
  sub_21E92A0F8();
  v72 = v69;
  (*(v98 + 8))(v71, v69);
  v144 = v152;
  v145 = v153;
  v146 = v154;
  v147 = v155;
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v143 = v151;
  sub_21E92A1B8();
  v73 = v130;
  v74 = v131;
  v114 = v70;
  v115 = v67;
  swift_getKeyPath();
  *&v140 = v73;
  sub_21E9297A8();

  v75 = *((*v62 & *v73) + 0x70);
  swift_beginAccess();
  v76 = *(v73 + v75);
  sub_21E8E6208(v129);
  if (v76 == 2)
  {
    v77 = v74;
  }

  else
  {
    v77 = v76;
  }

  v126[0] = v77 & 1;
  *&v140 = v72;
  v78 = v70;
  *(&v140 + 1) = v70;
  *&v141 = v68;
  v79 = MEMORY[0x277D839C8];
  *(&v141 + 1) = MEMORY[0x277D839C8];
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v111;
  v82 = v109;
  sub_21E92A0F8();
  (*(v99 + 8))(v82, v81);
  v144 = v152;
  v145 = v153;
  v146 = v154;
  v147 = v155;
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v143 = v151;
  sub_21E92A1B8();
  v83 = v127;
  v84 = v128;
  v112 = v78;
  v113 = v79;
  swift_getKeyPath();
  v85 = MEMORY[0x277D85000];
  *&v140 = v83;
  sub_21E9297A8();

  v86 = *((*v85 & *v83) + 0x70);
  swift_beginAccess();
  v87 = *(v83 + v86);
  sub_21E8E6208(v126);
  if (v87 == 2)
  {
    v88 = v84;
  }

  else
  {
    v88 = v87;
  }

  v125 = v88 & 1;
  *&v140 = v111;
  *(&v140 + 1) = v78;
  *&v141 = v80;
  *(&v141 + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v89 = v100;
  v90 = v110;
  sub_21E92A0F8();
  return (*(v101 + 8))(v90, v89);
}

uint64_t sub_21E9064B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F20);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F28);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F30);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F38);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F40);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v76 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  *&v84 = 0xD000000000000011;
  *(&v84 + 1) = 0x800000021E9591B0;
  LOBYTE(v85) = 0;
  *(&v85 + 1) = MEMORY[0x277D84F90];
  v83 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F48);
  sub_21E8D919C(&qword_27CED7F50, &qword_27CED7F48);
  v64 = v23;
  sub_21E92A278();
  v24 = sub_21E92A138();
  v25 = sub_21E929FC8();
  v26 = *(v18 + 44);
  v74 = v22;
  v27 = &v22[v26];
  *v27 = v24;
  v27[8] = v25;
  v28 = *(a1 + 80);
  v88 = *(a1 + 64);
  v89 = v28;
  v90 = *(a1 + 96);
  v91 = *(a1 + 112);
  v29 = *(a1 + 16);
  v84 = *a1;
  v85 = v29;
  v30 = *(a1 + 48);
  v86 = *(a1 + 32);
  v87 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F10);
  sub_21E92A1B8();
  v31 = v93;
  v32 = v94;
  v81 = MEMORY[0x277D839B0];
  v82 = MEMORY[0x277D839C8];
  swift_getKeyPath();
  v33 = MEMORY[0x277D85000];
  *&v84 = v31;
  sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v34 = *((*v33 & *v31) + 0x70);
  swift_beginAccess();
  v35 = *(v31 + v34);
  v36 = sub_21E8E6208(v92);
  if (v35 == 2)
  {
    v37 = v32;
  }

  else
  {
    v37 = v35;
  }

  if (v37)
  {
    v84 = xmmword_21E9489E0;
    LOBYTE(v85) = 0;
    v38 = MEMORY[0x277D84F90];
    *(&v85 + 1) = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](v36);
    *(&v63 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F60);
    sub_21E8D919C(&qword_27CED7F68, &qword_27CED7F60);
    v39 = v70;
    v40 = sub_21E92A278();
    v84 = xmmword_21E9489F0;
    LOBYTE(v85) = 0;
    *(&v85 + 1) = v38;
    MEMORY[0x28223BE20](v40);
    *(&v63 - 2) = a1;
    v41 = v73;
    sub_21E92A278();
    v43 = v65;
    v42 = v66;
    v44 = *(v65 + 16);
    v45 = v71;
    v44(v71, v39, v66);
    v46 = v67;
    v64 = *(v67 + 16);
    v47 = v41;
    v48 = v68;
    v64(v75, v47, v68);
    v49 = v69;
    v44(v69, v45, v42);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F70);
    v51 = v75;
    v64(&v49[*(v50 + 48)], v75, v48);
    v52 = *(v46 + 8);
    v52(v73, v48);
    v53 = *(v43 + 8);
    v53(v70, v42);
    v52(v51, v48);
    v53(v71, v42);
    v54 = v49;
    v55 = v72;
    sub_21E911630(v54, v72);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v72;
  }

  (*(v78 + 56))(v55, v56, 1, v79);
  v57 = v74;
  v58 = v76;
  sub_21E8B4BF0(v74, v76, &qword_27CED7F40);
  v59 = v77;
  sub_21E8B4BF0(v55, v77, &qword_27CED7F38);
  v60 = v80;
  sub_21E8B4BF0(v58, v80, &qword_27CED7F40);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F58);
  sub_21E8B4BF0(v59, v60 + *(v61 + 48), &qword_27CED7F38);
  sub_21E8B4CAC(v55, &qword_27CED7F38);
  sub_21E8B4CAC(v57, &qword_27CED7F40);
  sub_21E8B4CAC(v59, &qword_27CED7F38);
  return sub_21E8B4CAC(v58, &qword_27CED7F40);
}

uint64_t sub_21E906D38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v6 = *((*v5 & *v3) + 0x70);
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  if (v8 == 2)
  {
    LOBYTE(v8) = v4;
  }

  *a2 = v8 & 1;
  return result;
}

void sub_21E906E58(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) + *((*MEMORY[0x277D85000] & **(a2 + 16)) + 0x60));
  v3 = sub_21E92AA78();
  v4 = sub_21E92A428();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

double sub_21E906F1C@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x656C62616E45;
  *a1 = xmmword_21E948A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21E906F3C@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F48);
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = v43 - v6;
  MEMORY[0x28223BE20](v7);
  v44 = v43 - v8;
  MEMORY[0x28223BE20](v9);
  v52 = v43 - v10;
  MEMORY[0x28223BE20](v11);
  v51 = v43 - v12;
  MEMORY[0x28223BE20](v13);
  v49 = v43 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = v43 - v16;
  MEMORY[0x28223BE20](v17);
  v50 = v43 - v18;
  v19 = a1[5];
  v71 = a1[4];
  v72 = v19;
  *v73 = a1[6];
  *&v73[16] = *(a1 + 14);
  v20 = a1[1];
  v67 = *a1;
  v68 = v20;
  v21 = a1[3];
  v69 = a1[2];
  v70 = v21;
  v43[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F10);
  sub_21E92A1D8();
  swift_getKeyPath();
  v71 = v61[4];
  v72 = v61[5];
  *v73 = v62[0];
  *&v73[9] = *(v62 + 9);
  v67 = v61[0];
  v68 = v61[1];
  v69 = v61[2];
  v70 = v61[3];
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F78);
  sub_21E92A218();

  sub_21E8B4CAC(v61, &qword_27CED7F78);
  sub_21E92A1F8();
  v22 = a1[5];
  v71 = a1[4];
  v72 = v22;
  *v73 = a1[6];
  *&v73[16] = *(a1 + 14);
  v23 = a1[1];
  v67 = *a1;
  v68 = v23;
  v24 = a1[3];
  v69 = a1[2];
  v70 = v24;
  sub_21E92A1D8();
  swift_getKeyPath();
  v71 = v63[4];
  v72 = v63[5];
  *v73 = v64[0];
  *&v73[9] = *(v64 + 9);
  v67 = v63[0];
  v68 = v63[1];
  v69 = v63[2];
  v70 = v63[3];
  sub_21E92A218();

  sub_21E8B4CAC(v63, &qword_27CED7F78);
  sub_21E92A1F8();
  v25 = a1[5];
  v71 = a1[4];
  v72 = v25;
  *v73 = a1[6];
  *&v73[16] = *(a1 + 14);
  v26 = a1[1];
  v67 = *a1;
  v68 = v26;
  v27 = a1[3];
  v69 = a1[2];
  v70 = v27;
  sub_21E92A1D8();
  swift_getKeyPath();
  v71 = v65[4];
  v72 = v65[5];
  *v73 = v66[0];
  *&v73[9] = *(v66 + 9);
  v67 = v65[0];
  v68 = v65[1];
  v69 = v65[2];
  v70 = v65[3];
  sub_21E92A218();

  sub_21E8B4CAC(v65, &qword_27CED7F78);
  v28 = v49;
  sub_21E92A1F8();
  v29 = a1[5];
  v58 = a1[4];
  v59 = v29;
  v60[0] = a1[6];
  *&v60[1] = *(a1 + 14);
  v30 = a1[1];
  v54 = *a1;
  v55 = v30;
  v31 = a1[3];
  v56 = a1[2];
  v57 = v31;
  sub_21E92A1D8();
  swift_getKeyPath();
  v58 = v71;
  v59 = v72;
  v60[0] = *v73;
  *(v60 + 9) = *&v73[9];
  v54 = v67;
  v55 = v68;
  v56 = v69;
  v57 = v70;
  sub_21E92A218();

  sub_21E8B4CAC(&v67, &qword_27CED7F78);
  v32 = v51;
  sub_21E92A1F8();
  v33 = v52;
  v34 = *(v53 + 16);
  v34(v52, v50, v3);
  v35 = v44;
  v36 = v48;
  v34(v44, v48, v3);
  v37 = v45;
  v34(v45, v28, v3);
  v38 = v46;
  v34(v46, v32, v3);
  v39 = v47;
  v34(v47, v33, v3);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F80);
  v34(&v39[v40[12]], v35, v3);
  v34(&v39[v40[16]], v37, v3);
  v34(&v39[v40[20]], v38, v3);
  v41 = *(v53 + 8);
  v41(v51, v3);
  v41(v49, v3);
  v41(v36, v3);
  v41(v50, v3);
  v41(v38, v3);
  v41(v37, v3);
  v41(v35, v3);
  return (v41)(v52, v3);
}

uint64_t sub_21E907660@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v6 = *((*v5 & *v3) + 0x70);
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  if (v8 == 2)
  {
    LOBYTE(v8) = v4;
  }

  *a2 = v8 & 1;
  return result;
}

void sub_21E907780(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) + *((*MEMORY[0x277D85000] & **(a2 + 32)) + 0x60));
  v3 = sub_21E92AA78();
  v4 = sub_21E92A428();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

double sub_21E907844@<D0>(uint64_t a1@<X8>)
{
  *&result = 1953460050;
  *a1 = xmmword_21E948A10;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21E907864@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v6 = *((*v5 & *v3) + 0x70);
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  if (v8 == 2)
  {
    LOBYTE(v8) = v4;
  }

  *a2 = v8 & 1;
  return result;
}

void sub_21E907984(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 48) + *((*MEMORY[0x277D85000] & **(a2 + 48)) + 0x60));
  v3 = sub_21E92AA78();
  v4 = sub_21E92A428();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

double sub_21E907A48@<D0>(uint64_t a1@<X8>)
{
  result = 1.35441149e-306;
  *a1 = xmmword_21E948A20;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21E907A68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v6 = *((*v5 & *v3) + 0x70);
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  if (v8 == 2)
  {
    LOBYTE(v8) = v4;
  }

  *a2 = v8 & 1;
  return result;
}

void sub_21E907B88(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 64) + *((*MEMORY[0x277D85000] & **(a2 + 64)) + 0x60));
  v3 = sub_21E92AA78();
  v4 = sub_21E92A428();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

double sub_21E907C4C@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x70756F7247;
  *a1 = xmmword_21E948A30;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21E907C6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v6 = *((*v5 & *v3) + 0x70);
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  if (v8 == 2)
  {
    LOBYTE(v8) = v4;
  }

  *a2 = v8 & 1;
  return result;
}

void sub_21E907D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 80) + *((*MEMORY[0x277D85000] & **(a2 + 80)) + 0x60));
  v3 = sub_21E92AA78();
  v4 = sub_21E92A428();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

double sub_21E907E50@<D0>(uint64_t a1@<X8>)
{
  result = 1.81844033e-306;
  *a1 = xmmword_21E948A40;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21E907E70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F10);
  sub_21E92A1D8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F78);
  sub_21E92A218();

  sub_21E8B4CAC(v1, &qword_27CED7F78);
  return sub_21E92A1F8();
}

uint64_t sub_21E907FA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  sub_21E8D919C(qword_280D049E0, &qword_27CED7440);
  sub_21E9297A8();

  v6 = *((*v5 & *v3) + 0x70);
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  if (v8 == 2)
  {
    LOBYTE(v8) = v4;
  }

  *a2 = v8 & 1;
  return result;
}

void sub_21E9080C8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 96) + *((*MEMORY[0x277D85000] & **(a2 + 96)) + 0x60));
  v3 = sub_21E92AA78();
  v4 = sub_21E92A428();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

double sub_21E90818C@<D0>(uint64_t a1@<X8>)
{
  result = 2.2502939e223;
  *a1 = xmmword_21E948A50;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21E908200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7EC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v53 = a1;
  v54 = a2;
  v44 = sub_21E91155C();

  v11 = sub_21E92A018();
  v13 = v12;
  v15 = v14;
  v42 = *MEMORY[0x277CE0980];
  v16 = v42;
  v17 = sub_21E929FD8();
  v18 = *(v17 - 8);
  v41 = *(v18 + 104);
  v41(v10, v16, v17);
  v40 = *(v18 + 56);
  v40(v10, 0, 1, v17);
  sub_21E929FE8();
  sub_21E8B4CAC(v10, &qword_27CED7EC8);
  v19 = sub_21E92A008();
  v45 = v20;
  v46 = v19;
  v43 = v21;
  v47 = v22;

  sub_21E911474(v11, v13, v15 & 1);

  v53 = v48;
  v54 = v49;

  v23 = sub_21E92A018();
  v25 = v24;
  v27 = v26;
  v41(v10, v42, v17);
  v40(v10, 0, 1, v17);
  sub_21E929FE8();
  sub_21E8B4CAC(v10, &qword_27CED7EC8);
  v28 = sub_21E92A008();
  v30 = v29;
  LOBYTE(v10) = v31;
  v33 = v32;

  sub_21E911474(v23, v25, v27 & 1);

  v34 = v43 & 1;
  LOBYTE(v53) = v43 & 1;
  v52 = v43 & 1;
  v51 = 1;
  LOBYTE(v23) = v10 & 1;
  v50 = v10 & 1;
  v35 = v10 & 1;
  v37 = v45;
  v36 = v46;
  *a5 = v46;
  *(a5 + 8) = v37;
  *(a5 + 16) = v34;
  *(a5 + 24) = v47;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v28;
  *(a5 + 56) = v30;
  *(a5 + 64) = v35;
  *(a5 + 72) = v33;
  v38 = v36;
  sub_21E911464(v36, v37, v34);

  sub_21E911464(v28, v30, v23);

  sub_21E911474(v28, v30, v23);

  sub_21E911474(v38, v37, v53);
}

uint64_t sub_21E908568(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B60);
  v39 = a2;
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 9);
      v26 = *(v21 + 8 * v20);
      if ((v39 & 1) == 0)
      {
      }

      sub_21E92AB28();
      v40 = v24;
      if (v24)
      {
        v27 = v26;
        v28 = v23 != 0;
      }

      else
      {
        v27 = v26;
        MEMORY[0x223D64CD0](2);
        v28 = v23;
      }

      MEMORY[0x223D64CD0](v28);
      MEMORY[0x223D64CD0](v25);
      result = sub_21E92AB48();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v40;
      *(v16 + 9) = v25;
      *(*(v7 + 56) + 8 * v15) = v27;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_21E90884C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B58);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *(v22 + 8);
      v24 = *v22;
      v25 = *(v22 + 9);
      v26 = *(v21 + 8 * v20);
      sub_21E92AB28();
      if (v23 == 1)
      {
        v27 = v24 != 0;
      }

      else
      {
        MEMORY[0x223D64CD0](2);
        v27 = v24;
      }

      MEMORY[0x223D64CD0](v27);
      MEMORY[0x223D64CD0](v25);
      result = sub_21E92AB48();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 9) = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21E908B1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B70);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = (v22 + 168 * v21);
      v46 = v26[8];
      v47 = v26[9];
      v48 = *(v26 + 20);
      v42 = v26[4];
      v43 = v26[5];
      v44 = v26[6];
      v45 = v26[7];
      v38 = *v26;
      v39 = v26[1];
      v40 = v26[2];
      v41 = v26[3];
      sub_21E92AB28();
      if (v25 == 1)
      {
        v27 = v24 != 0;
      }

      else
      {
        MEMORY[0x223D64CD0](2);
        v27 = v24;
      }

      MEMORY[0x223D64CD0](v27);
      result = sub_21E92AB48();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      v17 = *(v7 + 56) + 168 * v15;
      *(v17 + 128) = v46;
      *(v17 + 144) = v47;
      *(v17 + 160) = v48;
      *(v17 + 64) = v42;
      *(v17 + 80) = v43;
      *(v17 + 96) = v44;
      *(v17 + 112) = v45;
      *v17 = v38;
      *(v17 + 16) = v39;
      *(v17 + 32) = v40;
      *(v17 + 48) = v41;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21E908E3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B78);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = (*(v5 + 56) + 96 * v21);
      v38 = v25[2];
      v39 = v25[3];
      *v40 = v25[4];
      *&v40[9] = *(v25 + 73);
      v36 = *v25;
      v37 = v25[1];
      sub_21E92AB28();
      if (v24 == 1)
      {
        v26 = v23 != 0;
      }

      else
      {
        MEMORY[0x223D64CD0](2);
        v26 = v23;
      }

      MEMORY[0x223D64CD0](v26);
      result = sub_21E92AB48();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      v17 = (*(v7 + 56) + 96 * v15);
      v17[2] = v38;
      v17[3] = v39;
      v17[4] = *v40;
      *(v17 + 73) = *&v40[9];
      *v17 = v36;
      v17[1] = v37;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21E909140(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AE8);
  v34 = a2;
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21E92AB28();
      sub_21E92A4A8();
      result = sub_21E92AB48();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21E9093E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B38);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *(v22 + 8);
      v24 = *v22;
      v25 = *(v5 + 56) + 48 * v21;
      v27 = *(v25 + 32);
      v26 = *(v25 + 40);
      v38 = *(v25 + 16);
      v39 = *v25;
      sub_21E92AB28();
      if (v23 == 1)
      {
        v28 = v24 != 0;
      }

      else
      {
        MEMORY[0x223D64CD0](2);
        v28 = v24;
      }

      MEMORY[0x223D64CD0](v28);
      result = sub_21E92AB48();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v39;
      *(v17 + 16) = v38;
      *(v17 + 32) = v27;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21E9096BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B48);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *(v23 + 8);
      v25 = *v23;
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      sub_21E92AB28();
      if (v24 == 1)
      {
        v28 = v25 != 0;
      }

      else
      {
        MEMORY[0x223D64CD0](2);
        v28 = v25;
      }

      MEMORY[0x223D64CD0](v28);
      result = sub_21E92AB48();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21E909990(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B50);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_21E92A778();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21E909BF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78B0);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_21E92A778();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21E909E68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B18);
  v35 = a2;
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21E92AB28();
      sub_21E92A4A8();
      result = sub_21E92AB48();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21E90A10C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B68);
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_21E92AB18();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}