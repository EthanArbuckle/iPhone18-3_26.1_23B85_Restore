Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.applyDestOverFilter(_:)(Swift::Bool a1)
{
  v3 = [v1 resultView];
  if (v3)
  {
    v4 = v3;
    v5 = *&v3[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
    type metadata accessor for SiriSharedUIStandardViewDropletMaterial();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 layer];
      if (a1)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      }

      else
      {
        v10 = 0;
      }

      [v9 setCompositingFilter_];

      v4 = v10;
    }
  }

  v11 = [v1 previousResultView];
  if (v11)
  {
    v19 = v11;
    v12 = *&v11[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
    type metadata accessor for SiriSharedUIStandardViewDropletMaterial();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 layer];
      if (a1)
      {
        v17 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      }

      else
      {
        v17 = 0;
      }

      [v16 setCompositingFilter_];

      v18 = v17;
    }

    else
    {
      v18 = v19;
    }
  }
}

uint64_t sub_21E4CBB34()
{
  v2 = v0;
  if ([v0 resultViewFromLoading])
  {
    v3 = [v0 previousResultView];
    if (v3)
    {
      v4 = *&v3[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      v5 = v3;
      v6 = v4;

      if (!v4)
      {
        return 0;
      }
    }
  }

  if (([v0 resultViewFromLoading] & 1) == 0)
  {
    v7 = [v0 resultView];
    if (v7)
    {
      v8 = *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      v9 = v7;
      v10 = v8;

      if (!v8)
      {
        return 0;
      }
    }
  }

  v11 = [v2 snippetsDropletView];
  v12 = [v11 layer];

  v13 = [v12 superlayer];
  if (!v13)
  {
    goto LABEL_64;
  }

  v14 = &selRef_shouldSuppress;
  v15 = [v13 sublayers];
  if (!v15)
  {
LABEL_63:

LABEL_64:
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v47 = sub_21E4DBCC8();
    __swift_project_value_buffer(v47, qword_280C14558);
    v48 = sub_21E4DD218();
    v121 = 0xD000000000000017;
    v122 = 0x800000021E4F3060;
    v49 = sub_21E45C20C(0);
    if (v50)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v49);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("attemptToApplySDFMask()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000004DLL, 0x800000021E4F3080);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v52 = v121;
    v51 = v122;
    v53 = sub_21E4DBCB8();
    if (!os_log_type_enabled(v53, v48))
    {
      goto LABEL_104;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v119 = v55;
    *v54 = 136315138;
    v56 = sub_21E426648(v52, v51, &v119);

    *(v54 + 4) = v56;
    _os_log_impl(&dword_21E3EB000, v53, v48, "%s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x223D5BF10](v55, -1, -1);
    MEMORY[0x223D5BF10](v54, -1, -1);
    goto LABEL_105;
  }

  v16 = v15;
  sub_21E43F008(0, &qword_27CEC59E0);
  v17 = sub_21E4DD088();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  v18 = sub_21E4DD488();
  if (!v18)
  {
LABEL_62:

    goto LABEL_63;
  }

LABEL_13:
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
LABEL_75:
    __break(1u);
  }

  else if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v17 + 8 * v20 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_79;
  }

  v21 = MEMORY[0x223D5B080]();
LABEL_18:
  v1 = v21;

  v22 = [v1 *(v14 + 456)];
  if (!v22)
  {
LABEL_81:
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v57 = sub_21E4DBCC8();
    __swift_project_value_buffer(v57, qword_280C14558);
    v58 = sub_21E4DD218();
    v121 = 0xD000000000000017;
    v122 = 0x800000021E4F3060;
    v59 = sub_21E45C20C(0);
    if (v60)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v59);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("Material layer for portaling." & 0x2F00000000000000) != 0x2000000000000000)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000058, 0x800000021E4F30D0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v62 = v121;
    v61 = v122;
    v53 = sub_21E4DBCB8();
    if (!os_log_type_enabled(v53, v58))
    {

LABEL_103:
LABEL_104:

      goto LABEL_105;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v119 = v64;
    *v63 = 136315138;
    v65 = sub_21E426648(v62, v61, &v119);

    *(v63 + 4) = v65;
    _os_log_impl(&dword_21E3EB000, v53, v58, "%s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x223D5BF10](v64, -1, -1);
    MEMORY[0x223D5BF10](v63, -1, -1);

LABEL_105:
    return 0;
  }

  v23 = v22;
  v17 = sub_21E4DD088();

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_80;
  }

LABEL_79:
  if (!sub_21E4DD488())
  {
LABEL_80:

    goto LABEL_81;
  }

LABEL_21:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x223D5B080](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_92:
      v14 = sub_21E4DD488();
      if (v14)
      {
        goto LABEL_27;
      }

      goto LABEL_93;
    }

    v24 = *(v17 + 32);
  }

  v25 = v24;

  v26 = [v25 *(v14 + 456)];
  if (!v26)
  {
LABEL_94:
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v66 = sub_21E4DBCC8();
    __swift_project_value_buffer(v66, qword_280C14558);
    v67 = sub_21E4DD218();
    v121 = 0xD000000000000017;
    v122 = 0x800000021E4F3060;
    v68 = sub_21E45C20C(0);
    if (v69)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v68);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("iew layer for portaling." & 0x2F00000000000000) != 0x2000000000000000)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000055, 0x800000021E4F3130);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v71 = v121;
    v70 = v122;
    v53 = sub_21E4DBCB8();
    if (os_log_type_enabled(v53, v67))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v119 = v73;
      *v72 = 136315138;
      v74 = sub_21E426648(v71, v70, &v119);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_21E3EB000, v53, v67, "%s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x223D5BF10](v73, -1, -1);
      MEMORY[0x223D5BF10](v72, -1, -1);

      goto LABEL_105;
    }

    goto LABEL_103;
  }

  v27 = v26;
  v16 = sub_21E4DD088();

  v116 = v1;
  v117 = v13;
  v114 = v25;
  if (v16 >> 62)
  {
    goto LABEL_92;
  }

  v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_93:

    v1 = v116;
    v13 = v117;
    v25 = v114;
    goto LABEL_94;
  }

LABEL_27:
  v1 = 0;
  v17 = 0xD000000000000010;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x223D5B080](v1, v16);
    }

    else
    {
      if (v1 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v28 = *(v16 + 8 * v1 + 32);
    }

    v29 = v28;
    v13 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v30 = [v28 name];
    if (!v30)
    {
      goto LABEL_28;
    }

    v31 = v30;
    v118 = v29;
    v32 = sub_21E4DCF78();
    v34 = v33;

    if (v32 == 0xD000000000000010 && 0x800000021E4F3190 == v34)
    {
      break;
    }

    v36 = sub_21E4DD518();

    v29 = v118;
    if (v36)
    {
      goto LABEL_42;
    }

LABEL_28:

    ++v1;
    if (v13 == v14)
    {
      goto LABEL_93;
    }
  }

  v29 = v118;
LABEL_42:

  v37 = [v29 sublayers];
  v39 = v116;
  v38 = v117;
  v40 = v114;
  if (!v37)
  {
    goto LABEL_132;
  }

  v41 = v37;
  v42 = sub_21E4DD088();

  v121 = MEMORY[0x277D84F90];
  if (v42 >> 62)
  {
    v13 = sub_21E4DD488();
    if (v13)
    {
      goto LABEL_45;
    }

    goto LABEL_108;
  }

  v13 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_108:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_109;
  }

LABEL_45:
  v43 = 0;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v44 = v43;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x223D5B080](v44, v42);
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v45 = *(v42 + 8 * v44 + 32);
      }

      v16 = v45;
      v43 = (v44 + 1);
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        break;
      }

      ++v44;
      if (v43 == v13)
      {
        goto LABEL_109;
      }
    }

    v16 = v46;
    MEMORY[0x223D5AD10]();
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E4DD0A8();
    }

    sub_21E4DD0D8();
    v14 = v121;
  }

  while (v43 != v13);
LABEL_109:

  if (v14 >> 62)
  {
    result = sub_21E4DD488();
    v39 = v116;
    v38 = v117;
    v40 = v114;
    if (!result)
    {
      goto LABEL_131;
    }

LABEL_111:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v78 = MEMORY[0x223D5B080](0, v14);
      v76 = v118;
      v77 = &selRef_displayLinkWithTarget_selector_;
    }

    else
    {
      v76 = v118;
      v77 = &selRef_displayLinkWithTarget_selector_;
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v78 = *(v14 + 32);
    }

    v79 = [objc_allocWithZone(MEMORY[0x277CD9F30]) init];
    v80 = v78;
    [v79 setSourceLayer_];
    [v79 setHidesSourceLayer_];
    [v79 setMatchesPosition_];
    [v79 setMatchesTransform_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E4E57E0;
    *(inited + 32) = 0xD00000000000002ALL;
    v82 = inited + 32;
    *(inited + 72) = MEMORY[0x277D839F8];
    *(inited + 40) = 0x800000021E4F3200;
    *(inited + 48) = 0;
    sub_21E43CE08(inited);
    swift_setDeallocating();
    sub_21E424BC0(v82, &qword_27CEC52D0);
    v83 = sub_21E4DCE88();

    [v79 setOverrides_];

    v84 = [v2 resultView];
    if (v84)
    {
      v85 = *&v84[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      v86 = v84;
      v87 = v85;

      if (v85)
      {
        v88 = [v87 v77[152]];

        [v88 setMask_];
      }
    }

    v89 = [v2 previousResultView];
    if (v89)
    {
      v90 = *&v89[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      v91 = v89;
      v92 = v90;

      if (v90)
      {
        v93 = [v92 v77[152]];

        [v93 setMask_];
      }
    }

    [v80 setAllowsHitTesting_];
    [v80 setHitTestsAsOpaque_];

    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v94 = sub_21E4DBCC8();
    __swift_project_value_buffer(v94, qword_280C14558);
    v95 = sub_21E4DD218();
    v121 = 0xD000000000000017;
    v122 = 0x800000021E4F3060;
    v96 = sub_21E45C20C(0);
    if (v97)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v96);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("kground.inputShadowOpacity" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000004ALL, 0x800000021E4F3230);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v99 = v121;
    v98 = v122;
    v100 = sub_21E4DBCB8();
    if (os_log_type_enabled(v100, v95))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v119 = v102;
      *v101 = 136315138;
      v103 = sub_21E426648(v99, v98, &v119);

      *(v101 + 4) = v103;
      _os_log_impl(&dword_21E3EB000, v100, v95, "%s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      MEMORY[0x223D5BF10](v102, -1, -1);
      MEMORY[0x223D5BF10](v101, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  else
  {
    v39 = v116;
    v38 = v117;
    v40 = v114;
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_111;
    }

LABEL_131:

LABEL_132:
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v104 = sub_21E4DBCC8();
    __swift_project_value_buffer(v104, qword_280C14558);
    v105 = sub_21E4DD218();
    v121 = 0xD000000000000017;
    v122 = 0x800000021E4F3060;
    v106 = sub_21E45C20C(0);
    if (v107)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v106);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("MaterialProvider" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v119 = 32;
      v120 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000004ELL, 0x800000021E4F31B0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v109 = v121;
    v108 = v122;
    v110 = sub_21E4DBCB8();
    if (os_log_type_enabled(v110, v105))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v119 = v112;
      *v111 = 136315138;
      v113 = sub_21E426648(v109, v108, &v119);

      *(v111 + 4) = v113;
      _os_log_impl(&dword_21E3EB000, v110, v105, "%s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      MEMORY[0x223D5BF10](v112, -1, -1);
      MEMORY[0x223D5BF10](v111, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.mitose(withDuration:mitosingIntoSnippet:)(Swift::Float withDuration, Swift::Bool mitosingIntoSnippet)
{
  v3 = v2;
  v90 = sub_21E4DBD48();
  v6 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 resultView];
  if (!v8)
  {
LABEL_8:
    if (mitosingIntoSnippet)
    {
      goto LABEL_37;
    }

LABEL_12:
    v21 = [v3 resultView];
    v22 = MEMORY[0x277D74E20];
    if (v21)
    {
      v23 = v21;
      if (qword_280C140A8 != -1)
      {
        swift_once();
      }

      v24 = v90;
      v25 = __swift_project_value_buffer(v90, qword_280C168B0);
      (*(v6 + 16))(v89, v25, v24);
      v92 = sub_21E4DBD58();
      v93 = v22;
      __swift_allocate_boxed_opaque_existential_1(v91);
      sub_21E4DBD68();
      sub_21E4DD298();
    }

    v26 = [v3 previousResultView];
    if (v26)
    {
      v27 = v26;
      if (qword_280C140A8 != -1)
      {
        swift_once();
      }

      v28 = v90;
      v29 = __swift_project_value_buffer(v90, qword_280C168B0);
      (*(v6 + 16))(v89, v29, v28);
      v92 = sub_21E4DBD58();
      v93 = v22;
      __swift_allocate_boxed_opaque_existential_1(v91);
      sub_21E4DBD68();
      sub_21E4DD298();
    }

    v30 = [v3 snippetSuggestionPageantView];
    if (!v30)
    {
      goto LABEL_59;
    }

    v31 = *&v30[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers];
    if (v31 >> 62)
    {
      v69 = v30;
      v32 = sub_21E4DD488();
      v30 = v69;
      if (v32)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_23:
        v87 = v30;
        v88 = v3;
        if (v32 < 1)
        {
          __break(1u);
          goto LABEL_73;
        }

        v33 = 0;
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x223D5B080](v33, v31);
          }

          else
          {
            v34 = *(v31 + 8 * v33 + 32);
          }

          v35 = v34;
          if (qword_280C140A8 != -1)
          {
            swift_once();
          }

          ++v33;
          v36 = v90;
          v37 = __swift_project_value_buffer(v90, qword_280C168B0);
          (*(v6 + 16))(v89, v37, v36);
          v92 = sub_21E4DBD58();
          v93 = v22;
          __swift_allocate_boxed_opaque_existential_1(v91);
          sub_21E4DBD68();
          sub_21E4DD298();
        }

        while (v32 != v33);

        v3 = v88;
LABEL_59:
        v70 = [v3 attemptToApplySDFMask];
        v71 = v70;
        if (v70)
        {
          v72 = [v3 resultView];
          if (v72)
          {
            v73 = v72;
            v74 = swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_21E4D877C(0, sub_21E4D2A84, v74, withDuration);
          }
        }

        sub_21E43F008(0, &qword_280C140A0);
        v75 = MEMORY[0x223D5A7F0]((withDuration + withDuration), 1.0, 0.0);
        MEMORY[0x28223BE20](v75);
        *(&v86 - 2) = v3;
        *(&v86 - 8) = v71;
        sub_21E4DD2A8();
        goto LABEL_71;
      }
    }

    goto LABEL_59;
  }

  v9 = v8;
  sub_21E4D5C44();
  v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView;
  v11 = *&v9[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v6;
  v13 = v11;
  v14 = [v13 layer];
  v15 = [v14 presentationLayer];

  if (!v15)
  {
    v17 = 1.0;
    v6 = v12;
    if (mitosingIntoSnippet)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  [v15 opacity];
  v17 = v16;

  v6 = v12;
  if (!mitosingIntoSnippet)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  v18 = [v3 continuerPill];
  if (v18)
  {
    v19 = v13;
    v20 = v9;
    v13 = v18;
  }

  else
  {
    v38 = v3;
    v39 = sub_21E4DCF68();
    v40 = [objc_opt_self() animationWithKeyPath_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_21E4E6FA0;
    v42 = MEMORY[0x277D83A90];
    *(v41 + 56) = MEMORY[0x277D83A90];
    *(v41 + 32) = v17;
    *(v41 + 64) = v17;
    *(v41 + 120) = MEMORY[0x277D839F8];
    *(v41 + 88) = v42;
    *(v41 + 96) = 0;
    v43 = sub_21E4DD078();

    [v40 setValues_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_21E4E95E0;
    sub_21E43F008(0, &qword_280C14070);
    *(v44 + 32) = sub_21E4DD2C8();
    *(v44 + 40) = sub_21E4DD2C8();
    *(v44 + 48) = sub_21E4DD2C8();
    v45 = sub_21E4DD078();

    [v40 setKeyTimes_];

    v20 = v40;
    [v20 setDuration_];
    v46 = [objc_opt_self() functionWithName_];
    [v20 setTimingFunction_];

    v47 = *&v9[v10];
    if (v47)
    {
      v48 = [v47 layer];
      v49 = sub_21E4DCF68();
      [v48 addAnimation:v20 forKey:v49];

      v50 = *&v9[v10];
      if (v50)
      {
        v51 = [v50 layer];
        [v51 setOpacity_];
      }
    }

    v19 = v9;
    v3 = v38;
    v6 = v12;
  }

LABEL_37:
  v52 = [v3 resultView];
  if (v52)
  {
    v53 = v52;
    if (qword_280C140A8 != -1)
    {
      swift_once();
    }

    v54 = v90;
    v55 = __swift_project_value_buffer(v90, qword_280C168B0);
    (*(v6 + 16))(v89, v55, v54);
    v92 = sub_21E4DBD58();
    v93 = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v91);
    sub_21E4DBD68();
    sub_21E4DD298();
  }

  v56 = [v3 previousResultView];
  if (v56)
  {
    v57 = v56;
    if (qword_280C140A8 != -1)
    {
      swift_once();
    }

    v58 = v90;
    v59 = __swift_project_value_buffer(v90, qword_280C168B0);
    (*(v6 + 16))(v89, v59, v58);
    v92 = sub_21E4DBD58();
    v93 = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v91);
    sub_21E4DBD68();
    sub_21E4DD298();
  }

  v60 = [v3 snippetSuggestionPageantView];
  if (!v60)
  {
    goto LABEL_65;
  }

  v61 = *&v60[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers];
  if (!(v61 >> 62))
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_48;
    }

LABEL_64:

LABEL_65:
    v77 = [v3 attemptToApplySDFMask];
    v78 = v77;
    if (v77)
    {
      v79 = [v3 resultViewFromLoading];
      v80 = &selRef_previousResultView;
      if (!v79)
      {
        v80 = &selRef_resultView;
      }

      v81 = [v3 *v80];
      if (v81)
      {
        v82 = v81;
        v83 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_21E4D877C(1, sub_21E4D213C, v83, withDuration);
      }
    }

    sub_21E43F008(0, &qword_280C140A0);
    v84 = MEMORY[0x223D5A7F0]((withDuration * 3.0), 1.0, 0.0);
    MEMORY[0x28223BE20](v84);
    *(&v86 - 2) = v3;
    *(&v86 - 8) = v78;
    *(swift_allocObject() + 16) = v3;
    v85 = v3;
    sub_21E4DD2A8();

LABEL_71:

    return;
  }

  v76 = v60;
  v62 = sub_21E4DD488();
  v60 = v76;
  if (!v62)
  {
    goto LABEL_64;
  }

LABEL_48:
  v87 = v60;
  v88 = v3;
  if (v62 >= 1)
  {

    v63 = 0;
    v64 = MEMORY[0x277D74E20];
    do
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x223D5B080](v63, v61);
      }

      else
      {
        v65 = *(v61 + 8 * v63 + 32);
      }

      v66 = v65;
      if (qword_280C140A8 != -1)
      {
        swift_once();
      }

      ++v63;
      v67 = v90;
      v68 = __swift_project_value_buffer(v90, qword_280C168B0);
      (*(v6 + 16))(v89, v68, v67);
      v92 = sub_21E4DBD58();
      v93 = v64;
      __swift_allocate_boxed_opaque_existential_1(v91);
      sub_21E4DBD68();
      sub_21E4DD298();
    }

    while (v62 != v63);

    v3 = v88;
    goto LABEL_65;
  }

LABEL_73:
  __break(1u);
}

void sub_21E4CDA48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong resultView];
    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      v4 = v2;
      v5 = v3;

      if (v3)
      {
        v6 = [v5 layer];

        [v6 setMask_];
      }
    }

    v7 = [v1 previousResultView];
    if (v7)
    {
      v8 = *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      v9 = v7;
      v10 = v8;

      if (v8)
      {
        v11 = [v10 layer];

        [v11 setMask_];
      }
    }
  }
}

void sub_21E4CDB8C(void *a1, int a2)
{
  v4 = sub_21E4DBD48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 resultView];
  v9 = MEMORY[0x277D74E20];
  if (v8)
  {
    v10 = v8;
    if (qword_280C140A8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_280C168B0);
    (*(v5 + 16))(v7, v11, v4);
    v28 = sub_21E4DBD58();
    v29 = v9;
    __swift_allocate_boxed_opaque_existential_1(v27);
    sub_21E4DBD68();
    sub_21E4DD298();
  }

  v12 = [a1 previousResultView];
  if (v12)
  {
    v13 = v12;
    if (qword_280C140A8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_280C168B0);
    (*(v5 + 16))(v7, v14, v4);
    v28 = sub_21E4DBD58();
    v29 = v9;
    __swift_allocate_boxed_opaque_existential_1(v27);
    sub_21E4DBD68();
    sub_21E4DD298();
  }

  v15 = [a1 snippetSuggestionPageantView];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *&v15[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers];
  if (v16 >> 62)
  {
    v23 = v15;
    v17 = sub_21E4DD488();
    v15 = v23;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_12:
      if (v17 < 1)
      {
        __break(1u);
        return;
      }

      v24 = v15;
      v25 = a2;
      v26 = a1;
      v18 = (v5 + 16);

      v19 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x223D5B080](v19, v16);
        }

        else
        {
          v20 = *(v16 + 8 * v19 + 32);
        }

        v21 = v20;
        if (qword_280C140A8 != -1)
        {
          swift_once();
        }

        ++v19;
        v22 = __swift_project_value_buffer(v4, qword_280C168B0);
        (*v18)(v7, v22, v4);
        v28 = sub_21E4DBD58();
        v29 = v9;
        __swift_allocate_boxed_opaque_existential_1(v27);
        sub_21E4DBD68();
        sub_21E4DD298();
      }

      while (v17 != v19);

      a1 = v26;
      LOBYTE(a2) = v25;
LABEL_21:
      if ((a2 & 1) == 0)
      {
        return;
      }

      goto LABEL_22;
    }
  }

  if (a2)
  {
LABEL_22:
    [a1 attemptToApplySDFMask];
  }
}

void sub_21E4CDF48(void *a1)
{
  v2 = sub_21E4DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 resultView];
  v7 = MEMORY[0x277D74E20];
  if (v6)
  {
    v8 = v6;
    if (qword_280C140A8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_280C168B0);
    (*(v3 + 16))(v5, v9, v2);
    v24 = sub_21E4DBD58();
    v25 = v7;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_21E4DBD68();
    sub_21E4DD298();
  }

  v10 = [a1 previousResultView];
  if (v10)
  {
    v11 = v10;
    if (qword_280C140A8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_280C168B0);
    (*(v3 + 16))(v5, v12, v2);
    v24 = sub_21E4DBD58();
    v25 = v7;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_21E4DBD68();
    sub_21E4DD298();
  }

  v13 = [a1 snippetSuggestionPageantView];
  if (v13)
  {
    v14 = *&v13[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers];
    if (v14 >> 62)
    {
      v21 = v13;
      v15 = sub_21E4DD488();
      v13 = v21;
      if (v15)
      {
LABEL_12:
        if (v15 < 1)
        {
          __break(1u);
        }

        else
        {
          v22 = v13;
          v16 = (v3 + 16);

          v17 = 0;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x223D5B080](v17, v14);
            }

            else
            {
              v18 = *(v14 + 8 * v17 + 32);
            }

            v19 = v18;
            if (qword_280C140A8 != -1)
            {
              swift_once();
            }

            ++v17;
            v20 = __swift_project_value_buffer(v2, qword_280C168B0);
            (*v16)(v5, v20, v2);
            v24 = sub_21E4DBD58();
            v25 = v7;
            __swift_allocate_boxed_opaque_existential_1(v23);
            sub_21E4DBD68();
            sub_21E4DD298();
          }

          while (v15 != v17);
        }

        return;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_12;
      }
    }
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.postPillMergeBounce()()
{
  v1 = v0;
  if (!SiriSharedUIReducedMotionEnabled())
  {
    v20 = MEMORY[0x277D84F90];
    v2 = [v0 layer];
    [v2 position];

    v3 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
    v4 = sub_21E4DCF68();
    [v3 setKeyPath_];

    v5 = v3;
    v6 = sub_21E4DB768();
    [v5 setFromValue_];

    v7 = sub_21E4DB768();
    [v5 setToValue_];

    [v5 setMass_];
    [v5 setStiffness_];
    [v5 setDamping_];
    v8 = v5;
    MEMORY[0x223D5AD10]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E4DD0A8();
    }

    sub_21E4DD0D8();
    v9 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
    [v9 setBeginTime_];
    v10 = v9;
    v11 = sub_21E4DCF68();
    [v10 setKeyPath_];

    v12 = v10;
    v13 = sub_21E4DB768();
    [v12 setFromValue_];

    v14 = sub_21E4DB768();
    [v12 setToValue_];

    [v12 setMass_];
    [v12 setStiffness_];
    [v12 setDamping_];
    [v12 setInitialVelocity_];
    v15 = v12;
    MEMORY[0x223D5AD10]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E4DD0A8();
    }

    sub_21E4DD0D8();
    v16 = [objc_allocWithZone(MEMORY[0x277CD9E00]) init];
    [v16 setBeginTime_];
    [v16 setDuration_];
    if (v20 >> 62)
    {
      sub_21E43F008(0, &qword_27CEC6998);

      sub_21E4DD478();
    }

    else
    {

      sub_21E4DD528();
      sub_21E43F008(0, &qword_27CEC6998);
    }

    sub_21E43F008(0, &qword_27CEC6998);
    v17 = sub_21E4DD078();

    [v16 setAnimations_];

    v18 = [*&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView] layer];
    v19 = [v8 keyPath];

    [v18 addAnimation:v16 forKey:v19];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.preFollowupPulse(withDuration:)(Swift::Float withDuration)
{
  v2 = v1;
  v4 = [v1 resultView];
  if (v4)
  {
    v5 = v4;
    sub_21E4D69CC(withDuration);
  }

  v6 = [v2 previousResultView];
  if (v6)
  {
    v7 = v6;
    sub_21E4D69CC(withDuration);
  }
}

void SiriSharedUISystemAssistantExperienceContainerView.performAnimatedBlur(_:withDuration:)(uint64_t a1, double a2)
{
  v5 = sub_21E4DCF68();
  v6 = [objc_opt_self() animationWithKeyPath_];

  [v6 setAdditive_];
  v7 = v6;
  [v7 setDuration_];
  v8 = [objc_opt_self() functionWithName_];
  [v7 setTimingFunction_];

  v9 = MEMORY[0x277D83B88];
  if (a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 15;
  }

  v17 = MEMORY[0x277D83B88];
  v16[0] = v10;
  if (a1)
  {
    v11 = 15;
  }

  else
  {
    v11 = 0;
  }

  __swift_project_boxed_opaque_existential_0Tm(v16, MEMORY[0x277D83B88]);
  v12 = sub_21E4DD508();
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  [v7 setFromValue_];
  swift_unknownObjectRelease();
  v17 = v9;
  v16[0] = v11;
  __swift_project_boxed_opaque_existential_0Tm(v16, v9);
  v13 = sub_21E4DD508();
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  [v7 setToValue_];
  swift_unknownObjectRelease();
  v14 = [*(v2 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView) layer];
  v15 = sub_21E4DCF68();

  [v14 addAnimation:v7 forKey:v15];
}

void SiriSharedUISystemAssistantExperienceContainerView.performAnimatedBlur(_:usingSpringWithMass:stiffness:damping:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) initWithPerceptualDuration:1.0 bounce:0.0];
  v10 = sub_21E4DCF68();
  [v9 setKeyPath_];

  [v9 setMass_];
  [v9 setStiffness_];
  [v9 setDamping_];
  [v9 setAdditive_];

  v11 = MEMORY[0x277D83B88];
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 15;
  }

  v20 = MEMORY[0x277D83B88];
  v19[0] = v12;
  if (a1)
  {
    v13 = 15;
  }

  else
  {
    v13 = 0;
  }

  __swift_project_boxed_opaque_existential_0Tm(v19, MEMORY[0x277D83B88]);
  v14 = v9;
  v15 = sub_21E4DD508();
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  [v14 setFromValue_];
  swift_unknownObjectRelease();
  v20 = v11;
  v19[0] = v13;
  __swift_project_boxed_opaque_existential_0Tm(v19, v11);
  v16 = sub_21E4DD508();
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  [v14 setToValue_];

  swift_unknownObjectRelease();
  v17 = [*(v4 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView) layer];
  v18 = sub_21E4DCF68();

  [v17 addAnimation:v14 forKey:v18];
}

void sub_21E4CF000()
{
  v1 = v0;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000024, 0x800000021E4F32D0);
  v2 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState;
  LOBYTE(v26) = *(v0 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState);
  sub_21E4DD458();
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v3 = sub_21E4DBCC8();
  __swift_project_value_buffer(v3, qword_280C14558);
  v4 = sub_21E4DD1F8();
  v28 = 0xD000000000000017;
  v29 = 0x800000021E4F24E0;
  v5 = sub_21E45C20C(0);
  if (v6)
  {
    v26 = 32;
    v27 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v5);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = v28;
  v7 = v29;
  v9 = sub_21E4DBCB8();
  if (os_log_type_enabled(v9, v4))
  {
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v11 = v26;
    *v10 = 136315138;
    v12 = sub_21E426648(v8, v7, &v26);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_21E3EB000, v9, v4, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223D5BF10](v11, -1, -1);
    MEMORY[0x223D5BF10](v10, -1, -1);
  }

  else
  {
  }

  if (*(v1 + v2) == 3)
  {
    v13 = [v1 resultView];
    if (v13)
    {
      v14 = v13;
      v15 = *&v13[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      if (v15)
      {
        v16 = v15;
        v17 = sub_21E4DD1F8();
        v28 = 0xD000000000000017;
        v29 = 0x800000021E4F24E0;
        v18 = sub_21E45C20C(0);
        if (v19)
        {
          v26 = 32;
          v27 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v18);

          MEMORY[0x223D5ACB0](v26, v27);
        }

        if (("kgroundState set to " & 0x2F00000000000000) != 0x2000000000000000)
        {
          v26 = 32;
          v27 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](0xD000000000000020, 0x800000021E4F3300);
          MEMORY[0x223D5ACB0](v26, v27);
        }

        v21 = v28;
        v20 = v29;
        v22 = sub_21E4DBCB8();
        if (os_log_type_enabled(v22, v17))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v26 = v24;
          *v23 = 136315138;
          v25 = sub_21E426648(v21, v20, &v26);

          *(v23 + 4) = v25;
          _os_log_impl(&dword_21E3EB000, v22, v17, "%s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v24);
          MEMORY[0x223D5BF10](v24, -1, -1);
          MEMORY[0x223D5BF10](v23, -1, -1);
        }

        else
        {
        }

        [*&v14[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setAlpha_];
        [v16 setAlpha_];
      }

      else
      {
        v16 = v13;
      }
    }

    *(v1 + v2) = 4;
  }
}

id sub_21E4CF6A0(uint64_t a1, uint64_t a2)
{
  result = [v2 delegate];
  if (result)
  {
    [result containerView:v2 requestsDismissalWithReason:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21E4CF720()
{
  [v0 setNeedsLayout];

  return [v0 layoutIfNeeded];
}

uint64_t sub_21E4CF760(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21E424FF4;

  return v6();
}

uint64_t sub_21E4CF848(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21E4240F0;

  return v7();
}

uint64_t sub_21E4CF930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21E462CF8(a3, v23 - v10);
  v12 = sub_21E4DD158();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21E424BC0(v11, &qword_27CEC4968);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21E4DD148();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21E4DD0F8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21E4DCFC8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21E424BC0(a3, &qword_27CEC4968);

    return v21;
  }

LABEL_8:
  sub_21E424BC0(a3, &qword_27CEC4968);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_21E4CFC1C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21E4B16A0(a1);
  if ((v4 & 1) == 0)
  {
    return 2;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21E4D0AD0();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + v5);
  sub_21E4D0084(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_21E4CFCB0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21E4B16E4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21E4D0C2C();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 16 * v5);
  sub_21E4D0210(v5, v7);
  *v2 = v7;
  return v8;
}

unint64_t sub_21E4CFD64(int64_t a1, uint64_t a2)
{
  v40 = sub_21E4DB698();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_21E4DD368();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_21E4D156C(&qword_280C15B50, MEMORY[0x277CC95F0]);
      v23 = sub_21E4DCEB8();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_21E4D0084(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E4DD368() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_21E4DD2E8();

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
          v18 = (v17 + v3);
          v19 = (v17 + v6);
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

void sub_21E4D0210(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E4DD368() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_21E4DD2E8();

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
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
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

void *sub_21E4D039C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5E50);
  v2 = *v0;
  v3 = sub_21E4DD4A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21E4D052C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52C8);
  v2 = *v0;
  v3 = sub_21E4DD4A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21E423FB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21E43EAE8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21E4D06F8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_21E4DD4A8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

id sub_21E4D0974()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E20);
  v2 = *v0;
  v3 = sub_21E4DD4A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_21E4D0AD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E28);
  v2 = *v0;
  v3 = sub_21E4DD4A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_21E4D0C2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5E30);
  v2 = *v0;
  v3 = sub_21E4DD4A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21E4D0D8C(uint64_t a1)
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

  sub_21E4DD488();
LABEL_9:
  result = sub_21E4DD3E8();
  *v1 = result;
  return result;
}

uint64_t sub_21E4D0E2C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_21E4DB698();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_21E4B28F4(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v9;
    v42 = v12;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_21E4AAA04(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E4D11D0(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_21E4B29E0(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_21E4DD488();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_21E4DD488())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223D5B080](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x223D5B080](v4, v6);
    v15 = MEMORY[0x223D5B080](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_21E4AAA2C(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_21E4AAA2C(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
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
LABEL_47:
  __break(1u);
  return sub_21E4DD488();
}

uint64_t sub_21E4D1450(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for SiriSharedUIDropletContainerView();
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
  result = sub_21E4DD488();
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
    result = sub_21E4DD488();
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

uint64_t sub_21E4D156C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_21E4D1674()
{
  result = qword_280C14098;
  if (!qword_280C14098)
  {
    sub_21E43F008(255, &qword_280C140A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14098);
  }

  return result;
}

unint64_t sub_21E4D1730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_21E4D187C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21E4E6FB0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v3 CGColor];

  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v1 + 56) = v5;
  *(v1 + 32) = v4;
  v7 = [v2 whiteColor];
  v8 = [v7 CGColor];

  *(v1 + 88) = v6;
  *(v1 + 64) = v8;
  v9 = [v2 whiteColor];
  v10 = [v9 CGColor];

  *(v1 + 120) = v6;
  *(v1 + 96) = v10;
  v11 = [v2 clearColor];
  v12 = [v11 CGColor];

  *(v1 + 152) = v6;
  *(v1 + 128) = v12;
  v13 = sub_21E4DD078();

  [v0 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21E4E8900;
  sub_21E43F008(0, &qword_280C14070);
  *(v14 + 32) = sub_21E4DD2C8();
  *(v14 + 40) = sub_21E4DD2C8();
  *(v14 + 48) = sub_21E4DD2C8();
  *(v14 + 56) = sub_21E4DD2C8();
  v15 = sub_21E4DD078();

  [v0 setLocations_];

  [v0 setStartPoint_];
  [v0 setEndPoint_];
  return v0;
}

void _sSo50SiriSharedUISystemAssistantExperienceContainerViewC0aB2UIE22pillMergeContinuerWith5indexySi_tF_0()
{
  v1 = [v0 continuerPill];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 resultView];
    if (v3)
    {
      v13 = v3;
      [v0 postPillMergeBounce];
      [v0 frame];
      v4 = CGRectGetWidth(v15) * 0.5;
      [v2 frame];
      v5 = v4 - CGRectGetWidth(v16) * 0.5;
      [v13 frame];
      MaxY = CGRectGetMaxY(v17);
      [v2 frame];
      v7 = MaxY - CGRectGetHeight(v18) + -5.0;
      [v2 frame];
      Width = CGRectGetWidth(v19);
      [v2 frame];
      Height = CGRectGetHeight(v20);
      [v2 setFrame_];
      [*&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setFrame_];
      v10 = *&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
      if (v10)
      {
        v11 = v10;
        [v11 setAlpha_];
      }

      v12 = v13;
    }

    else
    {
      v12 = v2;
    }
  }
}

uint64_t sub_21E4D1D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E424FF4;

  return sub_21E4C8448(a1, v4, v5, v6);
}

uint64_t sub_21E4D1DEC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21E424FF4;

  return sub_21E4C8B28(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t objectdestroy_85Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_21E4D1F1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E424FF4;

  return sub_21E4C8640(a1, v4, v5, v6);
}

uint64_t sub_21E4D1FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21E424FF4;

  return sub_21E4C8248(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_21E4D2264(char *a1, double a2, double a3, double a4)
{
  v6 = sub_21E4DCF68();
  v7 = [objc_opt_self() animationWithKeyPath_];

  v8 = sub_21E4DB768();
  [v7 setFromValue_];

  v9 = sub_21E4DB768();
  [v7 setToValue_];

  v10 = v7;
  [v10 setDuration_];
  [v10 setFillMode_];
  [v10 setRemovedOnCompletion_];

  v11 = [*&a1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] layer];
  v12 = sub_21E4DCF68();
  [v11 addAnimation:v10 forKey:v12];

  v13 = [a1 layer];
  v14 = sub_21E4DCF68();
  [v13 addAnimation:v10 forKey:v14];
}

uint64_t sub_21E4D2468()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21E424FF4;

  return sub_21E4B52C4(v4, v5, v2, v3);
}

uint64_t sub_21E4D2528()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21E424FF4;

  return sub_21E4CF760(v2, v3, v4);
}

uint64_t objectdestroy_214Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E4D2628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E4240F0;

  return sub_21E4CF848(a1, v4, v5, v6);
}

uint64_t sub_21E4D26F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E424FF4;

  return sub_21E462708(a1, v4);
}

uint64_t sub_21E4D27AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E4240F0;

  return sub_21E462708(a1, v4);
}

uint64_t _s33SearchUIBackgroundTransitionStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s33SearchUIBackgroundTransitionStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21E4D29DC()
{
  result = qword_27CEC69A8;
  if (!qword_27CEC69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC69A8);
  }

  return result;
}

uint64_t sub_21E4D2AE0(unsigned __int8 a1)
{
  v2 = a1;
  sub_21E4DD5C8();
  if (v2 == 1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = dbl_21E4E9A38[a1];
  }

  MEMORY[0x223D5B2A0](*&v3);
  return sub_21E4DD608();
}

uint64_t sub_21E4D2B40(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  sub_21E4DD5C8();
  if (v3 == 1)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = dbl_21E4E9A38[a2];
  }

  MEMORY[0x223D5B2A0](*&v4);
  return sub_21E4DD608();
}

void DropletContainerPosition.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 100.0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a2 == 0.0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == -100.0)
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t sub_21E4D2C18()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = dbl_21E4E9A38[v1];
  }

  return MEMORY[0x223D5B2A0](*&v2);
}

double sub_21E4D2C68@<D0>(double *a1@<X8>)
{
  result = dbl_21E4E9A38[*v1];
  *a1 = result;
  return result;
}

double sub_21E4D2C80()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21E4D2CC4(double a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriSharedUIDropletContainerView.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id;
  v4 = sub_21E4DB698();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21E4D2DEC()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21E4D2E30(char a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21E4D2F28@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_21E4D2F7C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21E4D302C()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21E4D3070(char a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21E4D3120()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21E4D3164(char a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21E4D3214()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21E4D3258(char a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21E4D3308()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21E4D334C(char a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_21E4D33FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_21E4D345C()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21E4D34B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_21E4D3568(id a1, void *a2, int a3, int a4, char a5, double a6)
{
  v7 = v6;
  v121 = a3;
  v122 = a4;
  v119 = sub_21E4DBD48();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v120 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset] = 0x3FD0000000000000;
  sub_21E4DB688();
  v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction] = 0;
  v13 = SiriSharedUIReducedMotionEnabled();
  v14 = 8.0;
  v15 = 0.0;
  if (v13)
  {
    v14 = 0.0;
  }

  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_gaussianBlurAmount] = v14;
  v16 = SiriSharedUIReducedMotionEnabled();
  v17 = 0.5;
  if (!v16)
  {
    v17 = 0.7;
  }

  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_gaussianBlurDuration] = v17;
  v18 = SiriSharedUIReducedMotionEnabled();
  v19 = 1.1;
  if (v18)
  {
    v19 = 0.0;
  }

  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_mitosisScaleAmount] = v19;
  v20 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_mitosisIntoSnippetKeytimes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v21 = swift_allocObject();
  v124 = xmmword_21E4E95E0;
  *(v21 + 16) = xmmword_21E4E95E0;
  sub_21E43F008(0, &qword_280C14070);
  *(v21 + 32) = sub_21E4DD2D8();
  *(v21 + 40) = sub_21E4DD2C8();
  *(v21 + 48) = sub_21E4DD2D8();
  *&v6[v20] = v21;
  v22 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_mitosisOutOfSnippetKeytimes;
  v23 = swift_allocObject();
  *(v23 + 16) = v124;
  *(v23 + 32) = sub_21E4DD2D8();
  *(v23 + 40) = sub_21E4DD2C8();
  v24 = sub_21E4DD2D8();
  *&v6[v22] = v23;
  *(v23 + 48) = v24;
  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removalAnimationDuration] = 0x3FC0000000000000;
  v25 = SiriSharedUIReducedMotionEnabled();
  v26 = 5.0;
  if (v25)
  {
    v26 = 0.0;
  }

  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_suggestionBlurAnimationValue] = v26;
  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeBleedDurationMultiplier] = 0x3FF8000000000000;
  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_innerGlowRadius] = 0x4000000000000000;
  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_solariumSnippetInnerGlowRadius] = 0x4014000000000000;
  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_solariumLatencyInnerGlowRadius] = 0x4004000000000000;
  *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_outerGlowRadius] = 0x4020000000000000;
  v27 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_isMacTextField;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_isMacTextField] = 0;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didScheduleIntelligentLightAnimation] = 0;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightIsOn] = 0;
  v28 = &v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_pillMaskFrame];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition] = 2;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition] = 1;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn] = 0;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut] = 0;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass] = 0;
  v29 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  *&v7[v29] = [objc_allocWithZone(SiriSharedUIStandardView) init];
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_glassContainerView] = 0;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionDuration] = 0x4002AA9930BE0DEDLL;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionScale] = 0x3FA999999999999ALL;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionToEndDuration] = 0x3FE8000000000000;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillOpacityMinLight] = 0x3FECCCCCCCCCCCCDLL;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillOpacityMinDark] = 0x3FE6666666666666;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopAnimator] = 0;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopTimer] = 0;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionTimer] = 0;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimAlphaMin] = 0x3FB999999999999ALL;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimAlphaMax] = 0x3FF0000000000000;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerAlphaMin] = 0x3FB999999999999ALL;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerAlphaMax] = 0x3FC999999999999ALL;
  v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInMaxState] = 0;
  v30 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView] = 0;
  v31 = &v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_previousSnippetHeight];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_nextSnippetHeight];
  *v32 = 0;
  v32[8] = 1;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] = 0;
  *&v7[v30] = a1;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] = a2;
  v125 = a2;
  v33 = a2;
  if (a1)
  {
    [a1 bounds];
    v15 = v34;
    v36 = v35;
    v38 = v37;
    v40 = v39;
  }

  else
  {
    v36 = 0.0;
    v38 = 0.0;
    v40 = 0.0;
  }

  v41 = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame_];
  *&v124 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] = v41;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  if (a1)
  {
    [a1 bounds];
    v43 = v47;
    v44 = v48;
    v45 = v49;
    v46 = v50;
  }

  v51 = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame_];
  v52 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] = v51;
  v53 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  if (a1)
  {
    [a1 bounds];
    v42 = v56;
    v53 = v57;
    v54 = v58;
    v55 = v59;
  }

  v60 = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame_];
  v123 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] = v60;
  v61 = 0.0;
  v62 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  if (a1)
  {
    [a1 bounds];
    v62 = v66;
    v63 = v67;
    v64 = v68;
    v65 = v69;
  }

  v70 = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame_];
  v71 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView;
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] = v70;
  v7[v27] = a5 & 1;
  v72 = [*&v7[v52] layer];
  v73 = *MEMORY[0x277CDA620];
  v74 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v72 setCompositingFilter_];

  v75 = [*&v7[v124] layer];
  v76 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v75 setCompositingFilter_];

  [*&v7[v123] setAlpha_];
  [*&v7[v71] setAlpha_];
  v77 = objc_opt_self();
  v78 = [v77 sharedLight];
  v79 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];

  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect] = v79;
  v80 = [v77 sharedShimmeringLight];
  v81 = [objc_allocWithZone(MEMORY[0x277D76030]) initWithLightSource:v80 radius:0 region:5.0];

  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightInsideEffect] = v81;
  v82 = [v77 sharedShimmeringLight];
  v83 = [objc_allocWithZone(MEMORY[0x277D76030]) initWithLightSource:v82 radius:0 region:2.5];

  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightSolariumInsideEffect] = v83;
  v84 = [v77 sharedShimmeringLight];
  v85 = [objc_allocWithZone(MEMORY[0x277D76030]) initWithLightSource:v84 radius:1 region:8.0];

  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightOutsideEffect] = v85;
  v86 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.5];
  v87 = [objc_allocWithZone(MEMORY[0x277D76048]) initWithThickness:v86 color:0 softRadius:2 region:1.5 activationDirection:1.5];
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_rimHighlightEffect] = v87;
  v88 = [objc_allocWithZone(MEMORY[0x277D76038]) initWithMode_];
  *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyEffect] = v88;
  v89 = 0.0;
  v90 = 0.0;
  v91 = 0.0;
  if (a1)
  {
    [a1 bounds];
    v61 = v92;
    v89 = v93;
    v90 = v94;
    v91 = v95;
  }

  v96 = type metadata accessor for SiriSharedUIDropletContainerView();
  v127.receiver = v7;
  v127.super_class = v96;
  v97 = objc_msgSendSuper2(&v127, sel_initWithFrame_, v61, v89, v90, v91);
  v98 = v97;
  if (a1)
  {
    [v97 setClipsToBounds_];
    v99 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
    swift_beginAccess();
    [*&v98[v99] setClipsToBounds_];
    v100 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v101 = sub_21E4DCF68();
    [v100 setName_];

    v102 = sub_21E4DD1D8();
    [v100 setValue:v102 forKey:*MEMORY[0x277CDA4F0]];

    if (v122)
    {
      if (qword_280C140A8 != -1)
      {
        swift_once();
      }

      v103 = v119;
      v104 = __swift_project_value_buffer(v119, qword_280C168B0);
      (*(v118 + 16))(v120, v104, v103);
      v126[3] = sub_21E4DBD58();
      v126[4] = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v126);
      sub_21E4DBD68();
      sub_21E4DD298();
    }

    v105 = [*&v98[v99] layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_21E4E57E0;
    *(v106 + 56) = sub_21E43F008(0, &qword_280C14078);
    *(v106 + 32) = v100;
    v107 = v100;
    v108 = sub_21E4DD078();

    [v105 setFilters_];

    [v98 _setContinuousCornerRadius_];
    [*&v98[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] _setContinuousCornerRadius_];
    [*&v98[v99] _setContinuousCornerRadius_];
    v109 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView;
    [*&v98[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] _setContinuousCornerRadius_];
    v110 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView;
    [*&v98[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] _setContinuousCornerRadius_];
    v111 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView;
    [*&v98[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] _setContinuousCornerRadius_];
    v112 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
    [*&v98[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] _setContinuousCornerRadius_];
    [*&v98[v109] setUserInteractionEnabled_];
    [*&v98[v112] setUserInteractionEnabled_];
    [*&v98[v110] setUserInteractionEnabled_];
    [*&v98[v111] setUserInteractionEnabled_];
    [v98 _setSafeAreaInsetsFrozen_];
    [v98 addSubview_];
    [a1 setHidden_];
    v113 = [a1 superview];
    if (!v113 || (v114 = v113, v113, v114 != v98))
    {
      v115 = *&v98[v99];
      [v115 addSubview_];
    }

    v86 = v107;
  }

  else
  {
    a1 = v125;
  }

  return v98;
}

id SiriSharedUIDropletContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_21E4D42F4(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView] = a1;
  v3 = a1;
  sub_21E4D442C(v2);

  v4 = [v3 superview];
  if (!v4 || (v5 = v4, v4, v5 != v1))
  {
    v6 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
    swift_beginAccess();
    [*&v1[v6] addSubview_];
  }
}

void sub_21E4D442C(void *a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView;
  v4 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (v4)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    v5 = v1;
    sub_21E43F008(0, &qword_280C140A0);
    v6 = v4;
    v2 = v2;
    v7 = sub_21E4DD2F8();

    if (v7)
    {
      return;
    }

    v1 = v5;
    v4 = *&v5[v3];
    if (v4)
    {
LABEL_5:
      v12 = v4;
      v8 = [v12 superview];
      if (v8 && (v9 = v8, v8, v9 == v1))
      {
      }

      else
      {
        v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
        swift_beginAccess();
        v11 = *&v1[v10];
        [v11 addSubview_];
      }

      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [v2 removeFromSuperview];
}

uint64_t sub_21E4D45AC()
{
  [v0 setAlpha_];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView] setAlpha_];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setAlpha_];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] setAlpha_];
  v1 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];
  [v1 setAlpha_];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] setAlpha_];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] setAlpha_];
  [v1 setAlpha_];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] setAlpha_];
  return sub_21E4DD298();
}

void sub_21E4D46CC(double a1, double a2, double a3, double a4, float a5)
{
  [v5 setFrame_];
  v7 = *&v5[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (v7)
  {
    v9 = [v7 layer];
    *&v8 = a5;
    [v9 setOpacity_];
  }
}

void sub_21E4D4760(char a1)
{
  v2 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didScheduleIntelligentLightAnimation;
  if ((v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didScheduleIntelligentLightAnimation] & 1) == 0 && !SiriSharedUIReducedMotionEnabled())
  {
    v4 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];
    [v1 bringSubviewToFront_];
    v5 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];
    v6 = [v5 superview];
    [v6 sendSubviewToBack_];

    [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect] setActivationTransitionDirection_];
    [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightInsideEffect] setActivationTransitionDirection_];
    [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightOutsideEffect] setActivationTransitionDirection_];
    [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_rimHighlightEffect] setActivationTransitionDirection_];
    [v4 setAlpha_];
    v7 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView];
    [v7 setAlpha_];
    sub_21E43F008(0, &unk_280C14178);
    v8 = sub_21E4DD078();
    [v7 setBackgroundEffects_];

    v9 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView];
    [v9 setAlpha_];
    v10 = sub_21E4DD078();
    [v9 setBackgroundEffects_];

    [v5 setAlpha_];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v25 = sub_21E4D9C0C;
    v26 = v12;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_21E46C644;
    v24 = &block_descriptor_15;
    v13 = _Block_copy(&v21);
    v14 = v1;

    [v11 animateWithDuration:v13 animations:1.5];
    _Block_release(v13);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1 & 1;
    v25 = sub_21E4D9C2C;
    v26 = v15;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_21E46C644;
    v24 = &block_descriptor_10;
    v16 = _Block_copy(&v21);
    v17 = v14;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v25 = sub_21E4D9C38;
    v26 = v18;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_21E4A4148;
    v24 = &block_descriptor_16;
    v19 = _Block_copy(&v21);
    v20 = v17;

    [v11 animateWithDuration:0 delay:v16 options:v19 animations:1.0 completion:0.5];
    _Block_release(v19);
    _Block_release(v16);
    if ((a1 & 1) == 0)
    {
      v1[v2] = 1;
    }
  }
}

void sub_21E4D4B58(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E4E7410;
  v4 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightInsideEffect);
  v5 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightOutsideEffect);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_21E43F008(0, &unk_280C14178);
  v6 = v4;
  v7 = v5;
  v8 = sub_21E4DD078();

  [v2 setBackgroundEffects_];
}

void sub_21E4D4C4C(uint64_t a1, char a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView);
  [v4 setAlpha_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v5 = swift_allocObject();
  if (a2)
  {
    *(v5 + 16) = xmmword_21E4E6AF0;
    v6 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect);
    *(v5 + 32) = v6;
  }

  else
  {
    *(v5 + 16) = xmmword_21E4E7410;
    v7 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect);
    v6 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_rimHighlightEffect);
    *(v5 + 32) = v7;
    *(v5 + 40) = v6;
    v8 = v7;
  }

  v9 = v6;
  sub_21E43F008(0, &unk_280C14178);
  v10 = sub_21E4DD078();

  [v4 setBackgroundEffects_];
}

void sub_21E4D4D88(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_21E4DA9FC;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_21E46C644;
  v7[3] = &block_descriptor_143;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 animateWithDuration:v5 animations:1.5];
  _Block_release(v5);
}

void sub_21E4D4E74(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView);
  sub_21E43F008(0, &unk_280C14178);
  v3 = sub_21E4DD078();
  [v2 setBackgroundEffects_];

  v4 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView);
  v5 = sub_21E4DD078();
  [v4 setBackgroundEffects_];
}

id sub_21E4D4F44(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopAnimator;
  v14 = *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopAnimator];
  if (v14)
  {
    [v14 stopAnimation_];
    v15 = *&v6[v13];
    if (v15)
    {
      [v15 finishAnimationAtPosition_];
    }
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4 & 1;
  *(v16 + 48) = v6;
  v17 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v30 = sub_21E4DA938;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21E46C644;
  v29 = &block_descriptor_127;
  v18 = _Block_copy(&v26);
  v19 = v6;

  v20 = [v17 initWithDuration:0 curve:v18 animations:2.3333];
  _Block_release(v18);
  v21 = *&v6[v13];
  *&v6[v13] = v20;
  v22 = v20;

  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;
    v30 = sub_21E4DA9C4;
    v31 = v23;
    v26 = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_21E4D5190;
    v29 = &block_descriptor_133_0;
    v24 = _Block_copy(&v26);
    sub_21E43EB5C(a5);

    [v22 addCompletion_];
    _Block_release(v24);
  }

  return [*&v6[v13] startAnimation];
}

uint64_t sub_21E4D5190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_21E4D51E4()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopTimer;
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopTimer] invalidate];
  v2 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView];
  [v0 sendSubviewToBack_];
  v3 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView];
  [v0 bringSubviewToFront_];
  v4 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect];
  [v4 setActivationTransitionDirection_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21E4E6AF0;
  *(v5 + 32) = v4;
  sub_21E43F008(0, &unk_280C14178);
  v6 = v4;
  v7 = sub_21E4DD078();

  [v2 setBackgroundEffects_];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21E4E6AF0;
  v9 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeLightSolariumInsideEffect];
  *(v8 + 32) = v9;
  v10 = v9;
  v11 = sub_21E4DD078();

  [v3 setBackgroundEffects_];

  sub_21E4D4F44(*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerAlphaMax], 0, *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimAlphaMax], 0, 0, 0);
  v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInMaxState] = 1;
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21E4DA9F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E4263C4;
  aBlock[3] = &block_descriptor_137;
  v14 = _Block_copy(aBlock);

  v15 = [v12 scheduledTimerWithTimeInterval:1 repeats:v14 block:2.3333];
  _Block_release(v14);
  v16 = *&v0[v1];
  *&v0[v1] = v15;
}

void sub_21E4D549C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInMaxState);
    v3 = &OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimAlphaMin;
    if (!v2)
    {
      v3 = &OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimAlphaMax;
    }

    v4 = *(Strong + *v3);
    v5 = &OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerAlphaMin;
    if (!*(Strong + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInMaxState))
    {
      v5 = &OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerAlphaMax;
    }

    v6 = *(Strong + *v5);
    v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInMaxState] = v2 ^ 1;
    sub_21E4D4F44(v6, 0, v4, 0, 0, 0);
  }
}

void sub_21E4D5550()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 finishAnimationAtPosition_];
    }
  }

  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopTimer;
  [*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopTimer) invalidate];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  v6 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionTimer;
  [*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionTimer) invalidate];
  v7 = *(v0 + v6);
  *(v0 + v6) = 0;
}

void sub_21E4D55FC()
{
  v1 = sub_21E4DCF68();
  v2 = objc_opt_self();
  v3 = [v2 animationWithKeyPath_];

  v4 = v3;
  [v4 setDuration_];
  LODWORD(v5) = 2139095040;
  [v4 setRepeatCount_];
  [v4 setAutoreverses_];
  v6 = sub_21E4DB768();
  [v4 setFromValue_];

  v7 = [v0 traitCollection];
  [v7 userInterfaceStyle];

  v8 = sub_21E4DB768();
  [v4 setToValue_];

  v9 = *MEMORY[0x277CDA7B8];
  v10 = objc_opt_self();
  v11 = [v10 functionWithName_];
  [v4 setTimingFunction_];

  v12 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (v12)
  {
    v13 = [v12 layer];
    v14 = sub_21E4DCF68();
    [v13 addAnimation:v4 forKey:v14];
  }

  v15 = sub_21E4DCF68();
  v16 = [v2 animationWithKeyPath_];

  v17 = sub_21E4DB768();
  [v16 setFromValue_];

  v18 = sub_21E4DB768();
  [v16 setToValue_];

  v19 = v16;
  [v19 setDuration_];
  [v19 setAutoreverses_];
  LODWORD(v20) = 2139095040;
  [v19 setRepeatCount_];
  [v19 setAdditive_];
  v21 = [v10 functionWithName_];
  [v19 setTimingFunction_];

  v22 = [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] layer];
  v23 = sub_21E4DCF68();
  [v22 addAnimation:v19 forKey:v23];

  v24 = [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] layer];
  v25 = sub_21E4DCF68();
  [v24 addAnimation:v19 forKey:v25];

  v26 = [v0 layer];
  v27 = sub_21E4DCF68();
  [v26 addAnimation:v19 forKey:v27];
}

void sub_21E4D5A7C()
{
  [v0 addSubview_];
  [v0 addSubview_];
  if (!SiriSharedUIReducedMotionEnabled() && (v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightIsOn] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightIsOn] = 1;
    sub_21E4D4760(1);
    sub_21E4D51E4();
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_21E4D9C40;
    v6[5] = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_21E4263C4;
    v6[3] = &block_descriptor_22;
    v3 = _Block_copy(v6);

    v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:2.3333];
    _Block_release(v3);
    v5 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionTimer];
    *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionTimer] = v4;
  }
}

void sub_21E4D5BF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21E4D55FC();
  }
}

void sub_21E4D5C44()
{
  if (!SiriSharedUIReducedMotionEnabled() && v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightIsOn] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    if (v1)
    {
      v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightIsOn] = 0;
      v2 = objc_opt_self();
      v3 = swift_allocObject();
      *(v3 + 16) = v0;
      *&aBlock.m21 = sub_21E4D9C48;
      *&aBlock.m22 = v3;
      *&aBlock.m11 = MEMORY[0x277D85DD0];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_21E46C644;
      *&aBlock.m14 = &block_descriptor_28;
      v4 = _Block_copy(&aBlock);
      v5 = v0;
      v6 = v1;

      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *&aBlock.m21 = sub_21E4D9C50;
      *&aBlock.m22 = v7;
      *&aBlock.m11 = MEMORY[0x277D85DD0];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_21E4A4148;
      *&aBlock.m14 = &block_descriptor_34;
      v8 = _Block_copy(&aBlock);
      v9 = v5;

      [v2 animateWithDuration:v4 animations:v8 completion:0.75];
      _Block_release(v8);
      _Block_release(v4);
      v10 = [*&v9[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] layer];
      v11 = [v10 presentationLayer];

      if (v11)
      {
        v12 = [v6 layer];
        v13 = [v12 presentationLayer];

        if (v13)
        {
          v14 = [v9 layer];
          v15 = [v14 presentationLayer];

          if (v15)
          {
            [v15 transform];
            v16 = [v9 layer];
            v48 = aBlock;
            [v16 setTransform_];

            v47 = v15;
            [v13 opacity];
            v18 = v17;
            v19 = [v6 layer];
            LODWORD(v20) = v18;
            [v19 setOpacity_];

            v21 = [v6 layer];
            [v21 removeAllAnimations];

            sub_21E4D5550();
            v22 = sub_21E4DCF68();
            v23 = objc_opt_self();
            v46 = v13;
            v24 = [v23 animationWithKeyPath_];

            v25 = v24;
            [v25 setDuration_];
            v26 = [v6 layer];
            [v26 opacity];

            v27 = sub_21E4DD1C8();
            [v25 setFromValue_];

            v28 = *MEMORY[0x277CDA7B8];
            v29 = objc_opt_self();
            v30 = [v29 functionWithName_];
            [v25 setTimingFunction_];

            v31 = sub_21E4DB768();
            [v25 setToValue_];

            v32 = [v6 layer];
            v33 = sub_21E4DCF68();
            [v32 addAnimation:v25 forKey:v33];

            v34 = [v6 layer];
            LODWORD(v35) = 1.0;
            [v34 setOpacity_];

            v36 = sub_21E4DCF68();
            v37 = [v23 animationWithKeyPath_];

            v38 = v37;
            [v38 setDuration_];
            v39 = [v9 layer];
            [v39 transform];

            v40 = sub_21E4DB768();
            [v38 setFromValue_];

            v41 = [v29 functionWithName_];
            [v38 setTimingFunction_];

            v42 = sub_21E4DB768();
            [v38 setToValue_];

            v43 = [v9 layer];
            v44 = sub_21E4DCF68();
            [v43 addAnimation:v38 forKey:v44];

            v45 = [v9 layer];
            CATransform3DMakeScale(&v48, 1.0, 1.0, 1.0);
            [v45 setTransform_];
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_21E4D6348(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView);
  [v2 setAlpha_];
  v3 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView);
  [v3 setAlpha_];
  sub_21E43F008(0, &unk_280C14178);
  v4 = sub_21E4DD078();
  [v2 setBackgroundEffects_];

  v5 = sub_21E4DD078();
  [v3 setBackgroundEffects_];

  v6 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView);
  [v6 setAlpha_];
  v7 = sub_21E4DD078();
  [v6 setBackgroundEffects_];

  v8 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView);
  [v8 setAlpha_];
  v9 = sub_21E4DD078();
  [v8 setBackgroundEffects_];
}

id sub_21E4D64C4()
{
  [*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView) removeFromSuperview];
  [*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView) removeFromSuperview];
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView);

  return [v1 removeFromSuperview];
}

void sub_21E4D652C()
{
  if (!SiriSharedUIReducedMotionEnabled())
  {
    v1 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];
    [v0 sendSubviewToBack_];
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v4 = 0.35;
    if (v3 == 1)
    {
      v4 = 0.25;
    }

    [v1 setAlpha_];
    [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect] setActivationTransitionDirection_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v9[4] = sub_21E4D1CF4;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21E46C644;
    v9[3] = &block_descriptor_40;
    v7 = _Block_copy(v9);
    v8 = v0;

    [v5 animateWithDuration:v7 animations:1.0 * 0.5];
    _Block_release(v7);
  }
}

void sub_21E4D66CC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E4E6AF0;
  v4 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect);
  *(v3 + 32) = v4;
  sub_21E43F008(0, &unk_280C14178);
  v5 = v4;
  v6 = sub_21E4DD078();

  [v2 setBackgroundEffects_];
}

void sub_21E4D67A8()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_21E4D1D18;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21E46C644;
  v5[3] = &block_descriptor_46;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:1.0 * 0.125];
  _Block_release(v3);
}

void sub_21E4D68AC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView);
  sub_21E43F008(0, &unk_280C14178);
  v2 = sub_21E4DD078();
  [v1 setBackgroundEffects_];
}

uint64_t sub_21E4D6930()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t sub_21E4D6980()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView);
  type metadata accessor for SiriSharedUIStandardViewDropletMaterial();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_21E4D69CC(float a1)
{
  v2 = v1;
  if (!SiriSharedUIReducedMotionEnabled())
  {
    v4 = sub_21E4DCF68();
    v5 = [objc_opt_self() animationWithKeyPath_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21E4E6FA0;
    v7 = MEMORY[0x277D839F8];
    *(v6 + 32) = 0x3FF0000000000000;
    *(v6 + 56) = v7;
    *(v6 + 64) = 0x3FEE666666666666;
    *(v6 + 120) = v7;
    *(v6 + 88) = v7;
    *(v6 + 96) = 0x3FF0000000000000;
    v8 = sub_21E4DD078();

    [v5 setValues_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21E4E95E0;
    sub_21E43F008(0, &qword_280C14070);
    *(v9 + 32) = sub_21E4DD2C8();
    *(v9 + 40) = sub_21E4DD2C8();
    *(v9 + 48) = sub_21E4DD2C8();
    v10 = sub_21E4DD078();

    [v5 setKeyTimes_];

    v11 = v5;
    [v11 setDuration_];
    v12 = [objc_opt_self() functionWithName_];
    [v11 setTimingFunction_];

    v13 = [v2 layer];
    v14 = sub_21E4DCF68();
    [v13 addAnimation:v11 forKey:v14];
  }
}

void sub_21E4D6C78()
{
  v1 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

void sub_21E4D6DC4(double a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  objc_msgSendSuper2(&v6, sel_setAlpha_, a1);
  v3 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
  if (v3)
  {
    v4 = v3;
    [v1 alpha];
    [v4 setAlpha_];
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
    [v1 alpha];
    [v5 setAlpha_];
  }
}

id sub_21E4D6F28(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
  swift_beginAccess();
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  v15 = CGRectInset(v14, *&v4[v9], *&v4[v9]);
  v10 = *&v4[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  [v4 bounds];
  [v10 setFrame_];
  v11 = *&v4[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
  if (v11)
  {
    v12 = v11;
    [v4 bounds];
    [v12 setFrame_];
  }

  [*&v4[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] setFrame_];
  return [*&v4[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] setFrame_];
}

id sub_21E4D7060(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_21E4D7130()
{
  v1 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
  swift_beginAccess();
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  v16 = CGRectInset(v15, *&v0[v10], *&v0[v10]);
  [v1 setBounds_];
  v11 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
  if (v11)
  {
    v12 = v11;
    [v0 bounds];
    [v12 setBounds_];
  }

  v13 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_glassContainerView];
  if (v13)
  {
    v14 = v13;
    [v0 bounds];
    [v14 setBounds_];
  }
}

void sub_21E4D72EC(double a1, double a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  objc_msgSendSuper2(&v9, sel_setCenter_, a1, a2);
  v5 = *&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  [v2 center];
  [v5 setCenter_];
  v6 = *&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];
  [v2 center];
  [v6 setCenter_];
  v7 = *&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
  if (v7)
  {
    v8 = v7;
    [v2 center];
    [v8 setCenter_];
  }
}

void sub_21E4D7488(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v11 = v3;
  v12 = v4;
  objc_msgSendSuper2(&v13, sel_setTransform_, v10);
  v6 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  [v1 transform];
  [v6 setTransform_];
  v7 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];
  [v1 transform];
  [v7 setTransform_];
  v8 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
  if (v8)
  {
    v9 = v8;
    [v1 transform];
    [v9 setTransform_];
  }
}

id sub_21E4D75B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  objc_msgSendSuper2(&v2, sel_removeFromSuperview);
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] removeFromSuperview];
  return [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] removeFromSuperview];
}

void sub_21E4D76B8()
{
  v72.receiver = v0;
  v72.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  objc_msgSendSuper2(&v72, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_pillMaskFrame];
  if (v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_pillMaskFrame + 32])
  {
    v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
    swift_beginAccess();
    [*&v0[v10] setFrame_];
  }

  else
  {
    v12 = v9[2];
    v11 = v9[3];
    v14 = *v9;
    v13 = v9[1];
    v15 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
    swift_beginAccess();
    [*&v0[v15] setFrame_];
  }

  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] setFrame_];
  [*&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] setFrame_];
  v16 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = 0.0;
  v19 = SiriSharedUIReducedMotionEnabled();
  v20 = 0.0;
  if (!v19)
  {
    v21 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
    swift_beginAccess();
    if (!v0[v21])
    {
      [v17 frame];
      v20 = -CGRectGetHeight(v73);
      if (v9[4])
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v20 = 0.0;
    if (v0[v21] != 1)
    {
      [v17 frame];
      v23 = &v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_previousSnippetHeight];
      if (v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_previousSnippetHeight + 8] == 1)
      {
        v23 = &dbl_21E4E9A38[v0[v21]];
      }

      v20 = v22 + *v23;
    }
  }

  if ((v9[4] & 1) == 0)
  {
LABEL_12:
    v18 = -*v9;
  }

LABEL_13:
  [v17 setFrame_];
  [v17 setNeedsLayout];
  v24 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
  swift_beginAccess();
  if (v0[v24] != 1)
  {
    goto LABEL_29;
  }

  v25 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
  swift_beginAccess();
  if (v0[v25])
  {
    if (v0[v25] != 1)
    {
      v56 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn;
      swift_beginAccess();
      v0[v56] = 0;
      v57 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut;
      swift_beginAccess();
      v0[v57] = 0;
      v58 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
      swift_beginAccess();
      v59 = [*&v0[v58] layer];
      v60 = sub_21E4DB768();
      v61 = sub_21E4DCF68();
      [v59 setValue:v60 forKeyPath:v61];

      v62 = [v17 layer];
      [v62 setOpacity_];

      v63 = [*&v0[v58] layer];
      [v63 setOpacity_];
LABEL_28:

      goto LABEL_29;
    }

    v26 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
    swift_beginAccess();
    v27 = [*&v0[v26] layer];
    v28 = sub_21E4DD1D8();
    v29 = sub_21E4DCF68();
    [v27 setValue:v28 forKeyPath:v29];

    v30 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn;
    swift_beginAccess();
    if ((v0[v30] & 1) == 0)
    {
      if (SiriSharedUIReducedMotionEnabled())
      {
        v31 = sub_21E4DCF68();
        v32 = [objc_opt_self() animationWithKeyPath_];

        v33 = sub_21E4DD1D8();
        [v32 setFromValue_];

        v34 = sub_21E4DD1D8();
        [v32 setToValue_];

        [v32 setDuration_];
        v35 = [*&v0[v26] layer];
        v36 = [v32 keyPath];
      }

      else
      {
        v64 = sub_21E4DCF68();
        v65 = [objc_opt_self() animationWithKeyPath_];

        v32 = v65;
        [v32 setAdditive_];
        v66 = sub_21E4DB768();
        [v32 setFromValue_];

        v67 = sub_21E4DD1D8();
        [v32 setToValue_];

        [v32 setDuration_];
        v35 = [*&v0[v26] layer];
        v36 = [v32 keyPath];
      }

      [v35 addAnimation:v32 forKey:v36];

      v0[v30] = 1;
      v68 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut;
      swift_beginAccess();
      v0[v68] = 0;
      v69 = [*&v0[v26] layer];
      LODWORD(v70) = 1.0;
      [v69 setOpacity_];

      v63 = [v17 layer];
      LODWORD(v71) = 1.0;
      [v63 setOpacity_];
      goto LABEL_28;
    }

LABEL_29:

    return;
  }

  v37 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut;
  swift_beginAccess();
  if (v0[v37])
  {
    goto LABEL_29;
  }

  if (!SiriSharedUIReducedMotionEnabled())
  {
    v38 = sub_21E4DCF68();
    v39 = objc_opt_self();
    v40 = [v39 animationWithKeyPath_];

    v41 = sub_21E4DD1D8();
    [v40 setFromValue_];

    v42 = sub_21E4DB768();
    [v40 setToValue_];

    v43 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_gaussianBlurDuration];
    [v40 setDuration_];
    v44 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
    swift_beginAccess();
    v45 = [*&v0[v44] layer];
    v46 = [v40 keyPath];
    [v45 addAnimation:v40 forKey:v46];

    v47 = sub_21E4DCF68();
    v48 = [v39 animationWithKeyPath_];

    v49 = sub_21E4DD1D8();
    [v48 setFromValue_];

    v50 = sub_21E4DD1D8();
    [v48 setToValue_];

    [v48 setDuration_];
    v51 = [*&v0[v44] layer];
    v52 = [v48 keyPath];
    [v51 addAnimation:v48 forKey:v52];
  }

  v53 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  swift_beginAccess();
  v54 = [*&v0[v53] layer];
  [v54 setOpacity_];

  v0[v37] = 1;
  v55 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn;
  swift_beginAccess();
  v0[v55] = 0;
}

uint64_t sub_21E4D80E4()
{
  v1 = sub_21E4DCF68();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v3 = v2;
  v4 = sub_21E4DD1D8();
  [v3 setFromValue_];

  v5 = sub_21E4DB768();
  [v3 setToValue_];

  [v3 setDuration_];
  [v3 setMass_];
  [v3 setStiffness_];
  [v3 setDamping_];
  v6 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  swift_beginAccess();
  v7 = [*(v0 + v6) layer];
  v8 = [v3 keyPath];
  [v7 addAnimation:v3 forKey:v8];

  v9 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut;
  swift_beginAccess();
  *(v0 + v9) = 1;
  v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn;
  result = swift_beginAccess();
  *(v0 + v10) = 0;
  return result;
}

uint64_t sub_21E4D82D4()
{
  v1 = sub_21E4DCF68();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v3 = v2;
  [v3 setAdditive_];
  v4 = v3;
  v5 = sub_21E4DB768();
  [v4 setFromValue_];

  v6 = sub_21E4DD1D8();
  [v4 setToValue_];

  [v4 setMass_];
  [v4 setStiffness_];
  [v4 setDamping_];
  v7 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  swift_beginAccess();
  v8 = [*(v0 + v7) layer];
  v9 = [v4 keyPath];

  [v8 addAnimation:v4 forKey:v9];
  v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn;
  swift_beginAccess();
  *(v0 + v10) = 1;
  v11 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut;
  result = swift_beginAccess();
  *(v0 + v11) = 0;
  return result;
}

void sub_21E4D84DC()
{
  v1 = *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21E4E8900;
    v6 = [v3 topAnchor];
    v7 = [v2 topAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v3 bottomAnchor];
    v10 = [v2 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    v12 = [v3 leftAnchor];
    v13 = [v2 leftAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v5 + 48) = v14;
    v15 = [v3 rightAnchor];
    v16 = [v2 rightAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v5 + 56) = v17;
    sub_21E43F008(0, &qword_280C14148);
    v18 = sub_21E4DD078();

    [v4 activateConstraints_];
  }
}

void sub_21E4D877C(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView);
  if (v5)
  {
    v10 = objc_opt_self();
    v11 = v5;
    [v10 begin];
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    aBlock[4] = sub_21E4DAA04;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E46C644;
    aBlock[3] = &block_descriptor_149_0;
    v13 = _Block_copy(aBlock);
    v14 = v11;

    [v10 setCompletionBlock_];
    _Block_release(v13);
    v15 = sub_21E4DCF68();
    v16 = objc_opt_self();
    v17 = [v16 animationWithKeyPath_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21E4E6FA0;
    v19 = MEMORY[0x277D83B88];
    *(v18 + 56) = MEMORY[0x277D83B88];
    *(v18 + 32) = 0;
    v20 = MEMORY[0x277D839F8];
    *(v18 + 64) = *(v4 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_gaussianBlurAmount);
    *(v18 + 120) = v19;
    *(v18 + 88) = v20;
    *(v18 + 96) = 0;
    v21 = sub_21E4DD078();

    [v17 setValues_];

    if (a1)
    {
      a4 = a4 * 1.5;
    }

    sub_21E43F008(0, &qword_280C14070);
    v22 = sub_21E4DD078();

    [v17 setKeyTimes_];

    v23 = v17;
    [v23 setDuration_];
    v24 = *MEMORY[0x277CDA7B8];
    v25 = objc_opt_self();
    v26 = [v25 functionWithName_];
    [v23 setTimingFunction_];

    v27 = [v14 layer];
    v28 = [v23 keyPath];
    [v27 addAnimation:v23 forKey:v28];

    v29 = sub_21E4DCF68();
    v30 = [v16 animationWithKeyPath_];

    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21E4E6FA0;
    v32 = MEMORY[0x277D839F8];
    *(v31 + 56) = MEMORY[0x277D839F8];
    *(v31 + 32) = 0x3FF0000000000000;
    *(v31 + 64) = *(v4 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_mitosisScaleAmount);
    *(v31 + 120) = v32;
    *(v31 + 88) = v32;
    *(v31 + 96) = 0x3FF0000000000000;
    v33 = sub_21E4DD078();

    [v30 setValues_];

    v34 = sub_21E4DD078();

    [v30 setKeyTimes_];

    v35 = v30;
    [v35 setDuration_];
    v36 = [v25 functionWithName_];
    [v35 setTimingFunction_];

    v37 = [v14 layer];
    v38 = [v35 keyPath];
    [v37 addAnimation:v35 forKey:v38];

    [v14 setClipsToBounds_];
    [v10 commit];
  }
}

void sub_21E4D8CE4(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  v4 = [v3 superview];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
    if (v5)
    {
      v29 = v4;
      if (a1)
      {
        v6 = v1;
        v7 = qword_280C14550;
        v8 = v5;
        v9 = a1;
        if (v7 != -1)
        {
          swift_once();
        }

        v10 = sub_21E4DBCC8();
        __swift_project_value_buffer(v10, qword_280C14558);
        v11 = sub_21E4DD1F8();
        v33 = 0xD000000000000015;
        v34 = 0x800000021E4EECE0;
        v12 = sub_21E45C20C(0);
        if (v13)
        {
          v31 = 32;
          v32 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v12);

          MEMORY[0x223D5ACB0](32, 0xE100000000000000);
        }

        if (("Use init(contentView:) instead" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v31 = 32;
          v32 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](0xD00000000000004DLL, 0x800000021E4F3B80);
          MEMORY[0x223D5ACB0](32, 0xE100000000000000);
        }

        v15 = v33;
        v14 = v34;
        v16 = sub_21E4DBCB8();
        if (os_log_type_enabled(v16, v11))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v31 = v18;
          *v17 = 136315138;
          v19 = sub_21E426648(v15, v14, &v31);

          *(v17 + 4) = v19;
          _os_log_impl(&dword_21E3EB000, v16, v11, "%s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
          MEMORY[0x223D5BF10](v18, -1, -1);
          MEMORY[0x223D5BF10](v17, -1, -1);
        }

        else
        {
        }

        v1 = v6;
        [v9 removeFromSuperview];
      }

      else
      {
        v20 = v5;
      }

      [v1 _setContinuousCornerRadius_];
      [v3 _setContinuousCornerRadius_];
      v21 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
      swift_beginAccess();
      [*&v1[v21] _setContinuousCornerRadius_];
      [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] _setContinuousCornerRadius_];
      [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] _setContinuousCornerRadius_];
      [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] _setContinuousCornerRadius_];
      [*&v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] _setContinuousCornerRadius_];
      v22 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v23 = sub_21E4DCF68();
      [v22 setName_];

      v24 = sub_21E4DD1D8();
      [v22 setValue:v24 forKey:*MEMORY[0x277CDA4F0]];

      v25 = [v5 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_21E4E57E0;
      *(v26 + 56) = sub_21E43F008(0, &qword_280C14078);
      *(v26 + 32) = v22;
      v27 = v22;
      v28 = sub_21E4DD078();

      [v25 setFilters_];

      [v1 insertSubview:v5 belowSubview:v3];
      [v3 setAlpha_];
      [v5 setAlpha_];
      [v3 frame];
      [v5 setFrame_];
    }

    else
    {
    }
  }
}

void sub_21E4D9210(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
  if (v2 && (type metadata accessor for SiriSharedUIAssistantSuggestionView(), swift_dynamicCastClass()))
  {
    log = v2;
    sub_21E488E08(a1 & 1);
  }

  else
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v4 = sub_21E4DBCC8();
    __swift_project_value_buffer(v4, qword_280C14558);
    v5 = sub_21E4DD218();
    v16 = 0xD000000000000018;
    v17 = 0x800000021E4EB4D0;
    v6 = sub_21E45C20C(0x200000000);
    if (v7)
    {
      v14 = 32;
      v15 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v6);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("rom suggestion id=" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v14 = 32;
      v15 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000007FLL, 0x800000021E4EF990);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v9 = v16;
    v8 = v17;
    log = sub_21E4DBCB8();
    if (os_log_type_enabled(log, v5))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      v12 = sub_21E426648(v9, v8, &v14);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_21E3EB000, log, v5, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223D5BF10](v11, -1, -1);
      MEMORY[0x223D5BF10](v10, -1, -1);
    }

    else
    {
    }
  }
}

id SiriSharedUIDropletContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SiriSharedUIDropletContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E4D9764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id;
  v5 = sub_21E4DB698();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void _s12SiriSharedUI0aB22UIDropletContainerViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset) = 0x3FD0000000000000;
  sub_21E4DB688();
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction) = 0;
  v2 = SiriSharedUIReducedMotionEnabled();
  v3 = 8.0;
  if (v2)
  {
    v3 = 0.0;
  }

  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_gaussianBlurAmount) = v3;
  v4 = SiriSharedUIReducedMotionEnabled();
  v5 = 0.5;
  if (!v4)
  {
    v5 = 0.7;
  }

  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_gaussianBlurDuration) = v5;
  v6 = SiriSharedUIReducedMotionEnabled();
  v7 = 1.1;
  if (v6)
  {
    v7 = 0.0;
  }

  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_mitosisScaleAmount) = v7;
  v8 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_mitosisIntoSnippetKeytimes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21E4E95E0;
  sub_21E43F008(0, &qword_280C14070);
  *(v9 + 32) = sub_21E4DD2D8();
  *(v9 + 40) = sub_21E4DD2C8();
  *(v9 + 48) = sub_21E4DD2D8();
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_mitosisOutOfSnippetKeytimes;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E4E95E0;
  *(v11 + 32) = sub_21E4DD2D8();
  *(v11 + 40) = sub_21E4DD2C8();
  v12 = sub_21E4DD2D8();
  *(v0 + v10) = v11;
  *(v11 + 48) = v12;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removalAnimationDuration) = 0x3FC0000000000000;
  v13 = SiriSharedUIReducedMotionEnabled();
  v14 = 5.0;
  if (v13)
  {
    v14 = 0.0;
  }

  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_suggestionBlurAnimationValue) = v14;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_edgeBleedDurationMultiplier) = 0x3FF8000000000000;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_innerGlowRadius) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_solariumSnippetInnerGlowRadius) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_solariumLatencyInnerGlowRadius) = 0x4004000000000000;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_outerGlowRadius) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_isMacTextField) = 0;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didScheduleIntelligentLightAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightIsOn) = 0;
  v15 = v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_pillMaskFrame;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition) = 2;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition) = 1;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurIn) = 0;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_didAnimateBlurOut) = 0;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass) = 0;
  v16 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  *(v1 + v16) = [objc_allocWithZone(SiriSharedUIStandardView) init];
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_glassContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionDuration) = 0x4002AA9930BE0DEDLL;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionScale) = 0x3FA999999999999ALL;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionToEndDuration) = 0x3FE8000000000000;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillOpacityMinLight) = 0x3FECCCCCCCCCCCCDLL;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillOpacityMinDark) = 0x3FE6666666666666;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopAnimator) = 0;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillLoopTimer) = 0;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyPillTransitionTimer) = 0;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimAlphaMin) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimAlphaMax) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerAlphaMin) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerAlphaMax) = 0x3FC999999999999ALL;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInMaxState) = 0;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView) = 0;
  v17 = v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_previousSnippetHeight;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_nextSnippetHeight;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView) = 0;
  sub_21E4DD468();
  __break(1u);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21E4D9C50()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView);

  return [v2 removeFromSuperview];
}

uint64_t type metadata accessor for SiriSharedUIDropletContainerView()
{
  result = qword_280C158E0;
  if (!qword_280C158E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21E4D9CF8()
{
  result = qword_27CEC69B8;
  if (!qword_27CEC69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC69B8);
  }

  return result;
}

unint64_t sub_21E4D9D50()
{
  result = qword_280C15B50;
  if (!qword_280C15B50)
  {
    sub_21E4DB698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C15B50);
  }

  return result;
}

uint64_t sub_21E4D9DC0()
{
  result = sub_21E4DB698();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_21E4DA938()
{
  if ((*(v0 + 24) & 1) == 0 && (*(v0 + 40) & 1) == 0)
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 16);
    [*(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView) setAlpha_];
    v3 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView);

    [v3 setAlpha_];
  }
}

uint64_t sub_21E4DA9C4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t soft_SBUIGetUserAgent_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [SiriSharedUIViewStack addContentView:v0];
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}