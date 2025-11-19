uint64_t storeEnumTagSinglePayload for FeatureOnboardingOverlayExperience(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21E0859DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E085A24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E085A8C()
{
  result = qword_27CEAC208;
  if (!qword_27CEAC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC1F0);
    sub_21E085B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC208);
  }

  return result;
}

unint64_t sub_21E085B18()
{
  result = qword_27CEAC210;
  if (!qword_27CEAC210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC1D0);
    sub_21E085BA4();
    sub_21DF8AF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC210);
  }

  return result;
}

unint64_t sub_21E085BA4()
{
  result = qword_27CEAC218;
  if (!qword_27CEAC218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC1C8);
    sub_21E085C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC218);
  }

  return result;
}

unint64_t sub_21E085C30()
{
  result = qword_27CEAC220;
  if (!qword_27CEAC220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC1C0);
    sub_21E085CE8();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC220);
  }

  return result;
}

unint64_t sub_21E085CE8()
{
  result = qword_27CEAC228;
  if (!qword_27CEAC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC1B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC1A8);
    sub_21DF23E5C(&qword_27CEAC1E8, &qword_27CEAC1A8);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC228);
  }

  return result;
}

unint64_t sub_21E085E10()
{
  result = qword_27CEAC318;
  if (!qword_27CEAC318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD1C0);
    sub_21DF4232C();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC318);
  }

  return result;
}

unint64_t sub_21E085EC8()
{
  result = qword_27CEAC320;
  if (!qword_27CEAC320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC2E8);
    sub_21E085F80();
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC320);
  }

  return result;
}

unint64_t sub_21E085F80()
{
  result = qword_27CEAC328;
  if (!qword_27CEAC328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD1C0);
    sub_21E085E10();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DD8, &qword_27CEA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC328);
  }

  return result;
}

unint64_t sub_21E086074()
{
  result = qword_27CEAC338;
  if (!qword_27CEAC338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC298);
    sub_21E08612C();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC338);
  }

  return result;
}

unint64_t sub_21E08612C()
{
  result = qword_27CEAC340;
  if (!qword_27CEAC340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC330);
    sub_21DF4232C();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC340);
  }

  return result;
}

unint64_t sub_21E0861E4()
{
  result = qword_27CEAC360;
  if (!qword_27CEAC360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC280);
    sub_21E086270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC360);
  }

  return result;
}

unint64_t sub_21E086270()
{
  result = qword_27CEAC368;
  if (!qword_27CEAC368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC358);
    sub_21E086328();
    sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC368);
  }

  return result;
}

unint64_t sub_21E086328()
{
  result = qword_27CEAC370;
  if (!qword_27CEAC370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC2A0);
    sub_21E0863B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC370);
  }

  return result;
}

unint64_t sub_21E0863B4()
{
  result = qword_27CEAC378;
  if (!qword_27CEAC378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC350);
    sub_21E08646C();
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC378);
  }

  return result;
}

unint64_t sub_21E08646C()
{
  result = qword_27CEAC380;
  if (!qword_27CEAC380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC298);
    sub_21E086074();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DD8, &qword_27CEA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC380);
  }

  return result;
}

unint64_t sub_21E0865DC()
{
  result = qword_27CEAC3A0;
  if (!qword_27CEAC3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC2D0);
    sub_21E086694();
    sub_21DF23E5C(&qword_27CEAC3B0, &qword_27CEAC290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC3A0);
  }

  return result;
}

unint64_t sub_21E086694()
{
  result = qword_27CEAC3A8;
  if (!qword_27CEAC3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC2F0);
    sub_21E085EC8();
    sub_21E086750(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC3A8);
  }

  return result;
}

uint64_t sub_21E086750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_22()
{
  sub_21DF446B8();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_21E0867FC()
{
  result = qword_27CEAC418;
  if (!qword_27CEAC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC418);
  }

  return result;
}

unint64_t sub_21E086850()
{
  result = qword_27CEAC420;
  if (!qword_27CEAC420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC3F8);
    sub_21DF23E5C(&qword_27CEAC410, &qword_27CEAC3F8);
    sub_21E0867FC();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC420);
  }

  return result;
}

uint64_t sub_21E08698C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E086A04()
{
  result = qword_27CEAC438;
  if (!qword_27CEAC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC430);
    sub_21E086ABC();
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC438);
  }

  return result;
}

unint64_t sub_21E086ABC()
{
  result = qword_27CEAC440;
  if (!qword_27CEAC440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC448);
    sub_21DFB8B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC440);
  }

  return result;
}

unint64_t sub_21E086B48()
{
  result = qword_27CEAC450;
  if (!qword_27CEAC450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC3E0);
    sub_21DF23E5C(&qword_27CEAC458, &unk_27CEAC460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC450);
  }

  return result;
}

void sub_21E086C58()
{
  if (*(v0 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView))
  {
    swift_getKeyPath();
    sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);

    sub_21E13D3C4();

    swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21E086D94()
{
  if (*(v0 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);

    sub_21E13D3B4();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VisualIntelligenceViewCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *VisualIntelligenceViewCoordinator.init()()
{
  v1 = v0;
  v2 = type metadata accessor for Omnibar();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = &v68[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21E13F444();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v81 = &v68[-v7];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);
  MEMORY[0x28223BE20](v92);
  v89 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v68[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC478);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v68[-v13];
  v14 = sub_21E13DF44();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView;
  *&v0[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView] = 0;
  *&v0[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOmniBar] = 0;
  v18 = OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_saliencyModel;
  type metadata accessor for NewSaliencyModel();
  swift_allocObject();
  *&v0[v18] = NewSaliencyModel.init()();
  v19 = OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_configStorage;
  sub_21E13D7A4();
  v20 = sub_21E13D784();
  v85 = v19;
  *&v0[v19] = v20;
  v0[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_arePartnerActionsEnabled] = 0;
  *&v0[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult] = 0;
  sub_21E13DEE4();
  sub_21E13DF14();
  sub_21E13DE94();
  sub_21E13DEA4();
  v90 = sub_21E13DE84();
  (*(v15 + 8))(v17, v14);
  v21 = [objc_allocWithZone(type metadata accessor for SheetTrackingAssistant()) init];
  v22 = OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_sheetAssistant;
  *&v0[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_sheetAssistant] = v21;
  v23 = v80;
  (*(v86 + 56))(v80, 1, 1, v87);
  v24 = objc_allocWithZone(type metadata accessor for OmnibarContainerView());
  v25 = v21;

  v27 = sub_21E0A020C(v26, v25, v23);

  *&v1[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_omnibarContainerView] = v27;
  type metadata accessor for OverlayViewModel();
  swift_allocObject();
  v87 = v27;

  v79 = OverlayViewModel.init(saliencyModel:)(v28);
  v86 = v18;
  v29 = *&v1[v18];
  v30 = *&v1[v22];
  LOBYTE(v94) = 1;
  v80 = v29;

  v78 = v30;
  sub_21E141A14();
  v76 = *(&v98 + 1);
  v77 = v98;
  v75 = v99;
  LOBYTE(v94) = 1;
  sub_21E141A14();
  v73 = *(&v98 + 1);
  v74 = v98;
  v72 = v99;
  LOBYTE(v94) = 0;
  sub_21E141A14();
  v70 = *(&v98 + 1);
  v71 = v98;
  v69 = v99;
  type metadata accessor for FeedbackController();
  swift_allocObject();
  v94 = FeedbackController.init(saliencyModel:)(0);
  sub_21E141704();
  v31 = v98;
  *(v11 + 72) = v98;
  v32 = v92;
  v33 = v83;
  v34 = v84;
  v35 = v81;
  (*(v83 + 104))(v81, *MEMORY[0x277CDF3D0], v84);
  (*(v33 + 16))(v82, v35, v34);
  sub_21E141704();
  (*(v33 + 8))(v35, v34);
  v36 = v32[17];
  if (qword_280F6A6F0 != -1)
  {
    swift_once();
    v32 = v92;
  }

  *&v11[v36] = off_280F6A6F8;
  v37 = v32[18];
  v94 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC4C0);
  sub_21E141704();
  *&v11[v37] = v98;
  v38 = v76;
  *v11 = v77;
  *(v11 + 1) = v38;
  v11[16] = v75;
  v39 = v73;
  *(v11 + 3) = v74;
  *(v11 + 4) = v39;
  v11[40] = v72;
  v40 = v70;
  *(v11 + 6) = v71;
  *(v11 + 7) = v40;
  v11[64] = v69;
  *&v11[v32[14]] = v79;
  *&v11[v32[13]] = v78;
  *&v11[v32[15]] = v80;
  v98 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8370);
  sub_21E141714();
  v41 = v94;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v98 = v41;
  sub_21E08CE80(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3B4();

  v43 = v89;
  sub_21DF236C0(v11, v89, &qword_27CEAC470);
  v44 = *&v1[v85];
  v45 = *&v1[v86];
  swift_getKeyPath();
  *&v98 = v45;
  sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);

  sub_21E13D3C4();

  v46 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
  swift_beginAccess();
  v47 = *(v45 + v46);

  v48 = objc_allocWithZone(type metadata accessor for VIUVisualIntelligenceView(0));
  v49 = sub_21E08AF94(v43, v44, v47);
  v50 = *&v1[v88];
  *&v1[v88] = v49;

  v51 = type metadata accessor for VisualIntelligenceViewCoordinator();
  v97.receiver = v1;
  v97.super_class = v51;
  v52 = objc_msgSendSuper2(&v97, sel_init);
  v53 = *&v52[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_saliencyModel];
  v54 = *&v52[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_sheetAssistant];
  v55 = v52;

  v56 = v54;
  v57 = sub_21E0879B4();
  v59 = v58;
  v61 = v60;
  v62 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v93 = 1;

  sub_21E141A14();
  Omnibar.init(model:sheetAssistant:arePartnerActionsEnabled:isUnified:handler:)(v53, v56, v57, v59, v61 & 1, v94, v95, v96, v91, sub_21E08C4B8, v62);

  v63 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC4D0));
  v64 = sub_21E13F974();
  v65 = v64;
  v66 = v87;
  OmnibarContainerView.hostingView.setter(v64);

  sub_21DF23614(v11, &qword_27CEAC470);

  swift_unknownObjectWeakAssign();

  return v55;
}

uint64_t sub_21E0879B4()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21E1423C4();

  v1 = sub_21E1423B4();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v0;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_21E1423B4();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;

  sub_21E141A04();
  return v8;
}

void sub_21E087B08(char *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_arePartnerActionsEnabled];
  }

  else
  {
    v3 = 1;
  }

  *a1 = v3;
}

void sub_21E087B70(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_arePartnerActionsEnabled] = v1;
  }
}

uint64_t sub_21E087BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v52 - v5;
  v6 = sub_21E13EEE4();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = sub_21E13D994();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v55 = &v52 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - v25;
  v58 = a3;
  result = swift_unknownObjectUnownedLoadStrong();
  v28 = *(result + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView);
  if (!v28)
  {
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = *(v28 + OBJC_IVAR___VIUVisualIntelligenceView_overlayViewModel);

  swift_getKeyPath();
  v65 = v30;
  sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  v31 = *(v30 + 152);
  v32 = v31;

  if (v31)
  {

    sub_21DFE76F0(v15);
    v33 = *(v17 + 48);
    if (v33(v15, 1, v16) == 1)
    {
      sub_21DF23614(v15, &qword_27CEA6D98);
    }

    else
    {
      v52 = v6;
      v34 = *(v17 + 32);
      v34(v26, v15, v16);
      v34(v23, v26, v16);
      v35 = (*(v17 + 88))(v23, v16);
      if (v35 == *MEMORY[0x277D78F58] || v35 == *MEMORY[0x277D78F48])
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v44 = *&Strong[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_saliencyModel];

        v65 = v44;
        v45 = sub_21E13DFD4();
        v46 = v54;
        (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
        PartneredActionsManager.handlePartneredAsk(executionParameter:)(v46);
        sub_21DF23614(v46, &qword_27CEAC550);

        v6 = v52;
        v37 = v59;
        v36 = v60;
LABEL_14:
        swift_getKeyPath();
        v47 = v61;
        v65 = v61;
        sub_21E08CE80(&qword_280F6B830, type metadata accessor for NewActionModel);
        sub_21E13D3C4();

        v48 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
        swift_beginAccess();
        sub_21DF236C0(v47 + v48, v37, &qword_27CEA6D48);
        if ((*(v36 + 48))(v37, 1, v6) == 1)
        {
          return sub_21DF23614(v37, &qword_27CEA6D48);
        }

        v49 = v57;
        (*(v36 + 32))(v57, v37, v6);
        v50 = swift_unknownObjectUnownedLoadStrong();
        v51 = *&v50[OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_saliencyModel];

        swift_getKeyPath();
        v64 = v51;
        sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
        sub_21E13D3C4();

        swift_beginAccess();

        ActionPin.Pill.analyticsAction()();
        v62 = 6;
        sub_21E0F8C08(&v63, &v62);

        return (*(v36 + 8))(v49, v6);
      }

      (*(v17 + 8))(v23, v16);
      v6 = v52;
    }

    v36 = v60;
    sub_21DFE76F0(v12);
    if (v33(v12, 1, v16) == 1)
    {
      sub_21DF23614(v12, &qword_27CEA6D98);
      v37 = v59;
    }

    else
    {
      v38 = *(v17 + 32);
      v39 = v55;
      v38(v55, v12, v16);
      v40 = v56;
      v38(v56, v39, v16);
      v41 = (*(v17 + 88))(v40, v16);
      v37 = v59;
      if (v41 == *MEMORY[0x277D78F28])
      {
        MEMORY[0x28223BE20](v41);
        v42 = v58;
        *(&v52 - 4) = v53;
        *(&v52 - 3) = v42;
        *(&v52 - 2) = v61;
        sub_21E141D64();
        sub_21E13F864();
      }

      else
      {
        (*(v17 + 8))(v40, v16);
      }
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_21E088450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v15 = a1;
  sub_21E08CE80(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v6 = *(a1 + v5);
  Strong = swift_unknownObjectUnownedLoadStrong();

  sub_21E13E484();
  v8 = sub_21E13DAD4();

  if (v8)
  {
    v14[0] = 5;
    CardModel.onboardingExperience.setter(v14);
    v9 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    if (*(v6 + v9))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v16 = v6;
      sub_21E08CE80(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3B4();
    }

    else
    {
      *(v6 + v9) = 0;
    }
  }

  else
  {
    v14[0] = 1;
    CardModel.onboardingExperience.setter(v14);
  }

  NewEntityModel.prepareForPresentationOfAction(_:)(a3);
  v11 = swift_unknownObjectUnownedLoadStrong();

  NewSaliencyModel.presentedEntity.setter(v12);
}

id sub_21E088708()
{
  result = *(v0 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21E088720()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_saliencyModel);
  swift_getKeyPath();
  sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E13D3B4();
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  result = swift_beginAccess();
  if (*(v2 + v5))
  {
    result = NewSaliencyModel.selectedEntity.setter(0);
  }

  v7 = *(v1 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR___VIUVisualIntelligenceView_overlayViewModel);
    swift_getKeyPath();
    sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);

    sub_21E13D3C4();

    if (*(v8 + 32) == 1)
    {
      sub_21E11ECF4(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21E088A70()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v139 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v135 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v140 = (&v127 - v5);
  v6 = sub_21E13F1B4();
  v136 = *(v6 - 8);
  v137 = v6;
  MEMORY[0x28223BE20](v6);
  v128 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v127 - v9;
  MEMORY[0x28223BE20](v11);
  v132 = &v127 - v12;
  MEMORY[0x28223BE20](v13);
  v133 = &v127 - v14;
  MEMORY[0x28223BE20](v15);
  v131 = &v127 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v127 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v127 - v21;
  v23 = *(v0 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView);
  if (!v23)
  {
    __break(1u);
    return;
  }

  v24 = OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult;
  v25 = *(v0 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult);
  v26 = *&v23[OBJC_IVAR___VIUVisualIntelligenceView_analysisResult];
  *&v23[OBJC_IVAR___VIUVisualIntelligenceView_analysisResult] = v25;
  v27 = v25;
  v28 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);

  sub_21E11EFC8(v25);

  v138 = v1;
  v134 = v24;
  v29 = *(v1 + v24);
  if (!v29)
  {
    sub_21E13EBE4();
    v63 = sub_21E13F1A4();
    v64 = sub_21E142584();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_21DF05000, v63, v64, "analysisResult is nil", v65, 2u);
      MEMORY[0x223D540B0](v65, -1, -1);
    }

    v48 = *(v136 + 8);
    v48(v10, v137);
    v66 = 0;
    v67 = v139;
    goto LABEL_38;
  }

  v30 = v29;
  sub_21E13EBE4();
  v31 = v30;
  v32 = sub_21E13F1A4();
  v33 = sub_21E142584();

  v34 = os_log_type_enabled(v32, v33);
  v130 = v2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v31;
    *v36 = v29;
    v37 = v31;
    _os_log_impl(&dword_21DF05000, v32, v33, "analysisResult: %@", v35, 0xCu);
    sub_21DF23614(v36, &unk_27CEAC540);
    v38 = v36;
    v2 = v130;
    MEMORY[0x223D540B0](v38, -1, -1);
    MEMORY[0x223D540B0](v35, -1, -1);
  }

  v39 = v137;
  v40 = v136 + 8;
  v141 = *(v136 + 8);
  v141(v22, v137);
  sub_21E13EBE4();
  v41 = v31;
  v42 = sub_21E13F1A4();
  v43 = sub_21E142584();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = sub_21E13D724();
    *(v44 + 4) = v46;
    *v45 = v46;
    _os_log_impl(&dword_21DF05000, v42, v43, "analysisResult.request: %@", v44, 0xCu);
    sub_21DF23614(v45, &unk_27CEAC540);
    v47 = v45;
    v2 = v130;
    MEMORY[0x223D540B0](v47, -1, -1);
    MEMORY[0x223D540B0](v44, -1, -1);
  }

  v48 = v141;
  v141(v19, v39);
  v49 = v131;
  sub_21E13EBE4();
  v50 = v41;
  v51 = sub_21E13F1A4();
  v52 = sub_21E142584();

  v53 = os_log_type_enabled(v51, v52);
  v129 = v40;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v143[0] = v55;
    *v54 = 136315138;
    v56 = sub_21E13D724();
    v57 = sub_21E13D744();

    if (v57)
    {
      v58 = v57;
      v59 = [v58 description];
      v60 = sub_21E142124();
      v62 = v61;

      v39 = v137;
    }

    else
    {
      v62 = 0xE400000000000000;
      v60 = 1701736270;
    }

    v69 = sub_21E0E08C0(v60, v62, v143);

    *(v54 + 4) = v69;
    _os_log_impl(&dword_21DF05000, v51, v52, "analysisResult.request.config: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223D540B0](v55, -1, -1);
    MEMORY[0x223D540B0](v54, -1, -1);

    v48 = v141;
    v141(v131, v39);
    v2 = v130;
    v68 = v133;
  }

  else
  {

    v48(v49, v39);
    v68 = v133;
  }

  sub_21E13EBE4();
  v70 = v50;
  v71 = sub_21E13F1A4();
  v72 = sub_21E142584();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v143[0] = v74;
    *v73 = 136315138;
    v75 = sub_21E13D724();
    v76 = sub_21E13D744();

    if (v76)
    {
      v77 = sub_21E13D764();

      v78 = 0xE400000000000000;
      if (v77)
      {
        v79 = [v77 BOOLValue];

        if (v79)
        {
          v80 = 1702195828;
        }

        else
        {
          v80 = 0x65736C6166;
        }

        if (!v79)
        {
          v78 = 0xE500000000000000;
        }

        v48 = v141;
        goto LABEL_29;
      }

      v48 = v141;
    }

    else
    {
      v78 = 0xE400000000000000;
    }

    v80 = 1701736270;
LABEL_29:
    v81 = sub_21E0E08C0(v80, v78, v143);

    *(v73 + 4) = v81;
    _os_log_impl(&dword_21DF05000, v71, v72, "analysisResult.request.config?.vluAuthorized: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x223D540B0](v74, -1, -1);
    MEMORY[0x223D540B0](v73, -1, -1);

    v48(v133, v39);
    v67 = v139;
    goto LABEL_30;
  }

  v48(v68, v39);
  v67 = v139;
LABEL_30:
  v82 = v132;
  sub_21E13EBE4();
  v83 = v70;
  v84 = sub_21E13F1A4();
  v85 = sub_21E142584();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v143[0] = v87;
    *v86 = 136315138;
    v88 = sub_21E13D724();
    v89 = sub_21E13D744();

    if (v89 && (v90 = sub_21E13D774(), v92 = v91, v89, v92))
    {
      v93 = v90;
    }

    else
    {

      v92 = 0xE300000000000000;
      v93 = 7104878;
    }

    v2 = v130;
    v67 = v139;
    v96 = sub_21E0E08C0(v93, v92, v143);

    *(v86 + 4) = v96;
    _os_log_impl(&dword_21DF05000, v84, v85, "analysisResult.request.config?.environmentBundleIdentifier: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x223D540B0](v87, -1, -1);
    MEMORY[0x223D540B0](v86, -1, -1);

    v94 = v132;
    v95 = v39;
    v48 = v141;
  }

  else
  {

    v94 = v82;
    v95 = v39;
  }

  v48(v94, v95);
  v66 = 1;
LABEL_38:
  v97 = v138;
  v141 = v48;
  *(v138 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_arePartnerActionsEnabled) = v66;
  v98 = *(v97 + v134);
  if (v98 && (v99 = v98, v100 = sub_21E13D724(), v99, v101 = sub_21E13D744(), v100, v101))
  {
    v102 = sub_21E13D774();
    v104 = v103;
  }

  else
  {
    v102 = 0;
    v104 = 0;
  }

  v105 = v140;
  *v140 = v102;
  v105[1] = v104;
  (*(v67 + 104))(v105, *MEMORY[0x277D78DB0], v2);
  v106 = *(v138 + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_saliencyModel);
  swift_getKeyPath();
  v143[0] = v106;
  sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v107 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v108 = *(v67 + 16);
  v109 = v106 + v107;
  v110 = v135;
  v108(v135, v109, v2);
  sub_21E08CE80(&qword_280F690E0, MEMORY[0x277D78DD0]);
  v111 = v110;
  LOBYTE(v110) = sub_21E142074();
  v114 = *(v67 + 8);
  v113 = v67 + 8;
  v112 = v114;
  v114(v111, v2);
  if ((v110 & 1) == 0)
  {
    v108(v111, v140, v2);
    NewSaliencyModel.entryPoint.setter(v111);
  }

  sub_21E13E7D4();
  v115 = sub_21E13E7B4();
  v116 = v115 & 1;
  swift_getKeyPath();
  v142[1] = v106;
  sub_21E13D3C4();

  v117 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__shouldShowAskAcmeUI;
  swift_beginAccess();
  if (v116 == *(v106 + v117))
  {
    v112(v140, v2);
  }

  else
  {
    v139 = v113;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v127 - 2) = v106;
    *(&v127 - 8) = v116;
    v142[0] = v106;
    sub_21E13D3B4();

    v119 = v128;
    sub_21E13EBE4();
    v120 = sub_21E13F1A4();
    v121 = sub_21E142584();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v142[0] = v123;
      *v122 = 136315138;
      if (v115)
      {
        v124 = 1702195828;
      }

      else
      {
        v124 = 0x65736C6166;
      }

      if (v115)
      {
        v125 = 0xE400000000000000;
      }

      else
      {
        v125 = 0xE500000000000000;
      }

      v126 = sub_21E0E08C0(v124, v125, v142);

      *(v122 + 4) = v126;
      _os_log_impl(&dword_21DF05000, v120, v121, "Setting shouldShowAskAcmeUI for saliency model to: %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x223D540B0](v123, -1, -1);
      MEMORY[0x223D540B0](v122, -1, -1);
    }

    v141(v119, v137);
    v112(v140, v2);
  }
}

uint64_t sub_21E089870()
{
  v1[2] = v0;
  v2 = sub_21E13F1B4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21E1423C4();
  v1[6] = sub_21E1423B4();
  v4 = sub_21E142364();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21E089964, v4, v3);
}

uint64_t sub_21E089964()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult;
  v0[9] = OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_21E13D724();
    v0[10] = v5;

    *(swift_task_alloc() + 16) = v1;
    sub_21E141D64();
    sub_21E13F864();

    v0[11] = [objc_allocWithZone(sub_21E13D7A4()) init];
    v16 = (*MEMORY[0x277D78D78] + MEMORY[0x277D78D78]);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_21E089BAC;

    return v16(v5);
  }

  else
  {

    sub_21E13EBE4();
    v8 = sub_21E13F1A4();
    v9 = sub_21E142584();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21DF05000, v8, v9, "analysis result is nil; not restarting stream", v14, 2u);
      MEMORY[0x223D540B0](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21E089BAC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_21E089CD4, v4, v3);
}

uint64_t sub_21E089CD4()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[2];

  v6 = *(v5 + v4);
  *(v5 + v4) = v1;
  v7 = v1;

  sub_21E088A70();

  v8 = v0[1];

  return v8();
}

void sub_21E089F24(char a1)
{
  v2 = sub_21E13F1B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_21E13EBE4();
    v8 = sub_21E13F1A4();
    v9 = sub_21E142584();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = a1 & 1;
      _os_log_impl(&dword_21DF05000, v8, v9, "setting isVisualLookUpEagerModeEnabled to %{BOOL}d", v10, 8u);
      MEMORY[0x223D540B0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      if ([v11 respondsToSelector_])
      {
        [v12 visualIntelligenceView:v7 didRequestVluEnabled:a1 & 1];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21E08A1EC()
{
  v1 = v0 + OBJC_IVAR___VIUVisualIntelligenceView_overlayView;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);
  v3 = *(v1 + *(v2 + 60));
  swift_getKeyPath();
  sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);

  sub_21E13D3C4();

  v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);

  if (v4)
  {

    return 1;
  }

  else
  {
    v6 = *(v1 + *(v2 + 60));
    swift_getKeyPath();

    sub_21E13D3C4();

    v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
    swift_beginAccess();
    v5 = *(v6 + v7);
  }

  return v5;
}

uint64_t sub_21E08A3E8()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E08A458()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E08A4D0(uint64_t a1, char a2)
{
  v3 = a1 + OBJC_IVAR___VIUVisualIntelligenceView_overlayView;
  v4 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470) + 60));
  if (a2)
  {
    swift_getKeyPath();
    sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);

    sub_21E13D3C4();

    v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (!v6)
    {
      swift_getKeyPath();
      sub_21E13D3C4();

      v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v6 = *(v4 + v7);
    }

    v8 = v6;
  }

  else
  {

    v8 = 0;
  }

  NewSaliencyModel.presentedEntity.setter(v8);

  sub_21E11ECF4(a2 & 1);
}

uint64_t (*sub_21E08A69C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_21E08A1EC() & 1;
  return sub_21E08A6E8;
}

uint64_t sub_21E08A6E8()
{
  sub_21E141D64();
  sub_21E13F864();
}

double sub_21E08A7C0()
{
  v0 = 0.0;
  if (sub_21E08A1EC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_sheetAssistant);

      v4 = *&v3[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel];

      swift_getKeyPath();
      sub_21E08CE80(&qword_280F6C000, type metadata accessor for SheetModel);
      sub_21E13D3C4();

      swift_beginAccess();
      v5 = *(v4 + 32);

      return v5;
    }
  }

  return v0;
}

uint64_t sub_21E08AA10()
{
  v1 = v0 + OBJC_IVAR___VIUVisualIntelligenceView_overlayView;
  v2 = *(*(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470) + 52)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  sub_21E08CE80(&qword_280F6C000, type metadata accessor for SheetModel);

  sub_21E13D3C4();

  v3 = *(v2 + 17);

  return v3;
}

uint64_t sub_21E08AB34()
{
  v1 = v0 + OBJC_IVAR___VIUVisualIntelligenceView_overlayView;
  v2 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470) + 56));
  v4 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect);
  v3 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect + 8);
  v6 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect + 16);
  v5 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect + 24);
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v10 = v2[9];

  v14.origin.x = v7;
  v14.origin.y = v8;
  v14.size.width = v9;
  v14.size.height = v10;
  v15.origin.x = v4;
  v15.origin.y = v3;
  v15.size.width = v6;
  v15.size.height = v5;
  if (CGRectEqualToRect(v14, v15))
  {
    v2[6] = v4;
    v2[7] = v3;
    v2[8] = v6;
    v2[9] = v5;
    sub_21E1202F0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

void sub_21E08AD50(char *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, void (*a8)(void))
{
  v9 = &a1[*a7];
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v10 = a1;
  a8();
}

uint64_t sub_21E08ADB0()
{
  v1 = v0 + OBJC_IVAR___VIUVisualIntelligenceView_overlayView;
  v2 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470) + 56));
  v4 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect);
  v3 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect + 8);
  v6 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect + 16);
  v5 = *(v0 + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect + 24);
  v7 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];

  v14.origin.x = v7;
  v14.origin.y = v8;
  v14.size.width = v9;
  v14.size.height = v10;
  v15.origin.x = v4;
  v15.origin.y = v3;
  v15.size.width = v6;
  v15.size.height = v5;
  if (CGRectEqualToRect(v14, v15))
  {
    v2[11] = v4;
    v2[12] = v3;
    v2[13] = v6;
    v2[14] = v5;
    sub_21E1209C4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

char *sub_21E08AF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28[1] = a3;
  v7 = type metadata accessor for VIUOverlayEnvironmentView(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___VIUVisualIntelligenceView_analysisResult] = 0;
  v14 = &v4[OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect];
  *v14 = 0;
  *(v14 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v14 + 1) = _Q0;
  v20 = &v4[OBJC_IVAR___VIUVisualIntelligenceView_contentsRect];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 1) = _Q0;
  sub_21DF236C0(a1, &v4[OBJC_IVAR___VIUVisualIntelligenceView_overlayView], &qword_27CEAC470);
  *&v4[OBJC_IVAR___VIUVisualIntelligenceView_configStorage] = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);
  *&v4[OBJC_IVAR___VIUVisualIntelligenceView_overlayViewModel] = *(a1 + *(v21 + 56));
  type metadata accessor for VIUOverlayEnvironmentViewModel();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21DF236C0(a1, v13, &qword_27CEAC470);
  *&v13[*(v8 + 28)] = *(a1 + *(v21 + 60));
  *&v13[*(v8 + 32)] = v22;
  sub_21E08C938(v13, v10);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC558));

  *&v4[OBJC_IVAR___VIUVisualIntelligenceView_hostingView] = sub_21E13F974();
  v23 = type metadata accessor for VIUVisualIntelligenceView(0);
  v29.receiver = v4;
  v29.super_class = v23;
  v24 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v25 = *&v24[OBJC_IVAR___VIUVisualIntelligenceView_hostingView];
  v26 = v24;
  [v26 addSubview_];

  sub_21DF23614(a1, &qword_27CEAC470);
  sub_21E08C500(v13);
  *(v22 + 24) = &off_282F42940;
  swift_unknownObjectWeakAssign();

  return v26;
}

id sub_21E08B308()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for VIUVisualIntelligenceView(0);
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___VIUVisualIntelligenceView_hostingView];
  [v0 bounds];
  return [v1 setFrame_];
}

uint64_t sub_21E08B3F4()
{
  v1 = type metadata accessor for VIUOverlayEnvironmentView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VIUVisualIntelligenceView(0);
  v11.receiver = v0;
  v11.super_class = v4;
  objc_msgSendSuper2(&v11, sel_didMoveToWindow);
  sub_21E13F984();
  v5 = [v0 window];
  if (v5)
  {

    v6 = *&v3[*(v1 + 20)];
    swift_getKeyPath();
    v10 = v6;
    sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    swift_beginAccess();

    sub_21E0F7A68();
  }

  else
  {
    v7 = *&v3[*(v1 + 20)];
    swift_getKeyPath();
    v10 = v7;
    sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    swift_beginAccess();

    sub_21E0FB0E4();
  }

  return sub_21E08C500(v3);
}

id VIUVisualIntelligenceView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_21E08B73C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21E08B810()
{
  sub_21DF18E8C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21E08B848@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for VIUOverlayEnvironmentView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = v5;
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC520);
  v34 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC528);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x28223BE20](v8);
  v42 = v32 - v10;
  v11 = *(v1 + *(v3 + 28));
  v12 = v1;
  swift_getKeyPath();
  v32[2] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v43 = v11;
  v32[1] = sub_21E08CE80(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v43 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v13 = v6;
  v38 = v6;
  sub_21E08C938(v12, v6);
  v33 = *(v4 + 80);
  v14 = (v33 + 16) & ~v33;
  v15 = swift_allocObject();
  sub_21E08C99C(v13, v15 + v14);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8360);
  v18 = sub_21E08CA80();
  v19 = sub_21DF97BB4();
  sub_21E141324();

  swift_getKeyPath();
  v43 = v11;
  sub_21E13D3C4();

  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  v47 = *(v11 + v20);
  v21 = v38;
  sub_21E08C938(v12, v38);
  v22 = swift_allocObject();
  sub_21E08C99C(v21, v22 + v14);
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v41;
  v25 = v40;
  sub_21E141324();

  (*(v34 + 8))(v25, v24);
  v26 = *(*(v12 + *(v16 + 52)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v43 = v26;
  sub_21E08CE80(&qword_280F6C000, type metadata accessor for SheetModel);

  sub_21E13D3C4();

  LOBYTE(v25) = *(v26 + 17);

  v47 = v25;
  v27 = v38;
  sub_21E08C938(v12, v38);
  v28 = swift_allocObject();
  sub_21E08C99C(v27, v28 + v14);
  v43 = v41;
  v44 = MEMORY[0x277D839B0];
  v45 = OpaqueTypeConformance2;
  v46 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  v30 = v42;
  sub_21E141324();

  return (*(v36 + 8))(v30, v29);
}

uint64_t sub_21E08BE18()
{
  type metadata accessor for VIUOverlayEnvironmentView(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v3 visualIntelligenceView:v1 isSheetPresentedDidChangeToValue:sub_21E08A1EC() & 1];
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21E08BED4()
{
  type metadata accessor for VIUOverlayEnvironmentView(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if ([Strong respondsToSelector_])
      {
        v4 = v1 + OBJC_IVAR___VIUVisualIntelligenceView_overlayView;
        v5 = *(*(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470) + 52)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
        swift_getKeyPath();
        sub_21E08CE80(&qword_280F6C000, type metadata accessor for SheetModel);

        sub_21E13D3C4();

        v6 = *(v5 + 17);

        [v3 visualIntelligenceView:v1 isDraggingSheetDidChange:v6];
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21E08C088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E08CE80(&qword_280F6C000, type metadata accessor for SheetModel);
  sub_21E13D3C4();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21E08C158@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  *a2 = *(v3 + 32);
  return result;
}

__n128 sub_21E08C228@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  result = *(v3 + 48);
  v5 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21E08C2FC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_21E08C3A8()
{
  swift_getKeyPath();
  sub_21E08CE80(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3B4();
}

uint64_t sub_21E08C500(uint64_t a1)
{
  v2 = type metadata accessor for VIUOverlayEnvironmentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21E08C5F4()
{
  sub_21E08C7DC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E08C7DC()
{
  if (!qword_280F6BD58)
  {
    v0 = type metadata accessor for OverlayView();
    if (!v1)
    {
      atomic_store(v0, &qword_280F6BD58);
    }
  }
}

void sub_21E08C880()
{
  sub_21E08C7DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NewSaliencyModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VIUOverlayEnvironmentViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21E08C938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VIUOverlayEnvironmentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E08C99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VIUOverlayEnvironmentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E08CA00()
{
  type metadata accessor for VIUOverlayEnvironmentView(0);

  return sub_21E08BE18();
}

unint64_t sub_21E08CA80()
{
  result = qword_280F6BD60[0];
  if (!qword_280F6BD60[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC470);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F6BD60);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  v1 = *(type metadata accessor for VIUOverlayEnvironmentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);
  v4 = v2 + *(v3 + 48);
  v5 = sub_21E13F444();
  (*(*(v5 - 8) + 8))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530);

  return swift_deallocObject();
}

uint64_t sub_21E08CCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for VIUOverlayEnvironmentView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_21E08CE80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E08CF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_21DF23614(a1, &qword_27CEA6D40);
    sub_21DFD8C18(a2, a3, v9);

    return sub_21DF23614(v9, &qword_27CEA6D40);
  }

  else
  {
    sub_21DF3DE9C(a1, v13, &qword_27CEA6C58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21E0E6B74(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_21E08D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_21E0E6CE4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_21E0E0F20(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_21E100500();
        v14 = v16;
      }

      result = sub_21DFD9228(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_21E08D1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    sub_21DF27A80(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_21E0E6FF4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_21DF23614(a1, &qword_27CEAC590);
    sub_21DFD8DA0(a2, a3, v9);

    return sub_21DF23614(v9, &qword_27CEAC590);
  }

  return result;
}

unint64_t sub_21E08D2B4()
{
  type metadata accessor for AppEntitiesProvider();
  v0 = swift_allocObject();
  result = sub_21DF26CE0(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  off_280F6A6F8 = v0;
  return result;
}

uint64_t static AppEntitiesProvider.shared.getter()
{
  if (qword_280F6A6F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21E08D358(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 72);
  sub_21DFA1148(a1, v4);
  swift_beginAccess();

  sub_21E08D1E4(v4, v1, v2);
  return swift_endAccess();
}

uint64_t sub_21E08D3C8()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_21E08D40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[76] = a3;
  v3[75] = a2;
  v3[74] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC588);
  v3[77] = v4;
  v3[78] = *(v4 - 8);
  v3[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E08D524, 0, 0);
}

uint64_t sub_21E08D524()
{
  v1 = v0;
  v2 = *(v0 + 608);
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = (v0 + 536);
    v32 = **(v0 + 600);
    v4 = sub_21E1423F4();
    v5 = *(v4 - 8);
    v31 = *(v5 + 56);
    v30 = (v5 + 48);
    v28 = (v5 + 8);
    v6 = (v2 + 40);
    v7 = &qword_27CEAD980;
    v8 = &unk_21E146EB0;
    do
    {
      v33 = v6;
      v34 = v3;
      v10 = v1[81];
      v11 = v1[80];
      v12 = v8;
      v13 = v7;
      v14 = *(v6 - 1);
      v15 = *v6;
      v31(v10, 1, 1, v4);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v14;
      v7 = v13;
      v8 = v12;
      v16[5] = v15;
      sub_21DF236C0(v10, v11, v7);
      LODWORD(v11) = (*v30)(v11, 1, v4);

      v18 = v1[80];
      if (v11 == 1)
      {
        sub_21DF23614(v1[80], v7);
        if (*v17)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_21E1423E4();
        (*v28)(v18, v4);
        if (*v17)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = sub_21E142364();
          v20 = v21;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v19 = 0;
      v20 = 0;
LABEL_9:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_21E1537C0;
      *(v22 + 24) = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC590);
      v23 = (v20 | v19);
      if (v20 | v19)
      {
        v23 = v29;
        *v29 = 0;
        v29[1] = 0;
        v1[69] = v19;
        v1[70] = v20;
      }

      v9 = v1[81];
      v1[71] = 1;
      v1[72] = v23;
      v1[73] = v32;
      swift_task_create();

      sub_21DF23614(v9, v7);
      v6 = v33 + 2;
      v3 = v34 - 1;
    }

    while (v34 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC590);
  sub_21E142384();
  v1[82] = MEMORY[0x277D84F90];
  v24 = sub_21E08ECFC();
  v25 = swift_task_alloc();
  v1[83] = v25;
  *v25 = v1;
  v25[1] = sub_21E08D8BC;
  v26 = v1[77];

  return MEMORY[0x282200308](v1 + 15, v26, v24);
}

uint64_t sub_21E08D8BC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[79];
    v4 = v2[78];
    v5 = v2[77];

    (*(v4 + 8))(v3, v5);

    v6 = nullsub_3;
  }

  else
  {
    v6 = sub_21E08DA14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21E08DA14()
{
  if (v0[17] == 1)
  {
    v1 = v0[82];
    v2 = v0[74];
    (*(v0[78] + 8))(v0[79], v0[77]);
    sub_21DF23614((v0 + 15), &qword_27CEAC5A0);
    *v2 = v1;

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_21DF3DE9C((v0 + 15), (v0 + 2), &qword_27CEAC590);
    sub_21DF236C0((v0 + 2), (v0 + 41), &qword_27CEAC590);
    if (v0[43])
    {
      sub_21DF27A80((v0 + 41), (v0 + 28));
      sub_21DFA1148((v0 + 28), (v0 + 54));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v0[82];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_21E06AD08(0, v6[2] + 1, 1, v0[82]);
      }

      v8 = v6[2];
      v7 = v6[3];
      if (v8 >= v7 >> 1)
      {
        v6 = sub_21E06AD08((v7 > 1), v8 + 1, 1, v6);
      }

      sub_21DFA11F8((v0 + 28));
      sub_21DF23614((v0 + 2), &qword_27CEAC590);
      v6[2] = v8 + 1;
      sub_21DF27A80((v0 + 54), &v6[13 * v8 + 4]);
    }

    else
    {
      sub_21DF23614((v0 + 2), &qword_27CEAC590);
      sub_21DF23614((v0 + 41), &qword_27CEAC590);
      v6 = v0[82];
    }

    v0[82] = v6;
    v9 = sub_21E08ECFC();
    v10 = swift_task_alloc();
    v0[83] = v10;
    *v10 = v0;
    v10[1] = sub_21E08D8BC;
    v11 = v0[77];

    return MEMORY[0x282200308](v0 + 15, v11, v9);
  }
}

uint64_t sub_21E08DC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21E08DCBC, 0, 0);
}

uint64_t sub_21E08DCBC()
{
  if (qword_280F6A6F0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_21E08DD8C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_21E08DE80(v4, v2, v3);
}

uint64_t sub_21E08DD8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21E08DE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[58] = a3;
  v4[59] = v3;
  v4[56] = a1;
  v4[57] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  v4[60] = swift_task_alloc();
  v5 = sub_21E13EF04();
  v4[61] = v5;
  v4[62] = *(v5 - 8);
  v4[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E08DF7C, 0, 0);
}

uint64_t sub_21E08DF7C()
{
  v1 = v0[59];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = v0[57];
    v3 = v0[58];

    v5 = sub_21E0E0F20(v4, v3);
    if (v6)
    {
      sub_21DFA1148(*(v2 + 56) + 104 * v5, (v0 + 15));

      sub_21DF27A80((v0 + 15), (v0 + 2));
      Strong = swift_weakLoadStrong();
      v0[64] = Strong;
      if (Strong)
      {
        sub_21E1423C4();
        v0[65] = sub_21E1423B4();
        v9 = sub_21E142364();

        return MEMORY[0x2822009F8](sub_21E08E104, v9, v8);
      }

      sub_21DFA11F8((v0 + 2));
    }

    else
    {
    }
  }

  v10 = v0[56];
  *(v10 + 96) = 0;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0u;

  v11 = v0[1];

  return v11();
}

uint64_t sub_21E08E104()
{
  v1 = v0[64];
  v2 = v0[60];

  swift_getKeyPath();
  v0[55] = v1;
  sub_21E08EAE8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  sub_21DF236C0(v1 + v3, v2, &qword_27CEACB50);

  return MEMORY[0x2822009F8](sub_21E08E220, 0, 0);
}

uint64_t sub_21E08E220()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DFA11F8((v0 + 2));

    sub_21DF23614(v3, &qword_27CEACB50);
    v4 = v0[56];
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0;

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[63];
    (*(v2 + 32))(v7, v3, v1);
    sub_21E13E374();
    v0[66] = sub_21E13E364();
    v8 = v0[12];
    v9 = MEMORY[0x277D796B0];
    v0[44] = v1;
    v0[45] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 41);
    (*(v2 + 16))(boxed_opaque_existential_1, v7, v1);
    v12 = (*MEMORY[0x277D79430] + MEMORY[0x277D79430]);
    v11 = swift_task_alloc();
    v0[67] = v11;
    *v11 = v0;
    v11[1] = sub_21E08E404;

    return v12(v8, v0 + 41);
  }
}

uint64_t sub_21E08E404(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[52] = v2;
  v3[53] = a1;
  v3[54] = a2;
  v3[68] = a2;

  __swift_destroy_boxed_opaque_existential_0((v3 + 41));

  return MEMORY[0x2822009F8](sub_21E08E530, 0, 0);
}

uint64_t sub_21E08E530()
{
  v1 = *(v0 + 544);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 504);
    v3 = *(v0 + 488);
    v4 = *(v0 + 496);
    v5 = *(v0 + 448);

    (*(v4 + 8))(v2, v3);
    sub_21DFA11F8(v0 + 16);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0;
  }

  else
  {
    v11 = *(v0 + 424);
    v12 = *(v0 + 496);
    v13 = *(v0 + 488);
    v14 = *(v0 + 504);
    v6 = *(v0 + 448);
    sub_21DFA1148(v0 + 16, v0 + 224);
    *v6 = xmmword_21E14A830;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC560);
    v6[2] = sub_21E13CDF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC568);
    v6[3] = sub_21E13CDE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC570);
    sub_21E08EAE8(&qword_280F6C080, MEMORY[0x277CCB120]);
    v6[4] = sub_21E13CDD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC578);
    v6[5] = sub_21E13CE04();
    v6[6] = sub_21E13CE04();
    v6[7] = sub_21E13CE04();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC580);
    sub_21E08EB30();
    v6[12] = sub_21E13CDC4();
    sub_21DFA1598(*v6, v6[1]);

    swift_weakDestroy();

    sub_21DFA1148(v0 + 224, v6);
    v8 = *v6;
    v7 = v6[1];
    sub_21DFAD958(v11, v1);
    sub_21DFA1598(v8, v7);
    *v6 = v11;
    v6[1] = v1;
    *(v0 + 552) = 0;
    sub_21E13CDB4();

    sub_21DFA1598(v11, v1);
    sub_21DFA11F8(v0 + 224);
    (*(v12 + 8))(v14, v13);
    sub_21DFA11F8(v0 + 16);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t AppEntitiesProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21E08E8F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21E08E9F0;

  return v6(a1);
}

uint64_t sub_21E08E9F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21E08EAE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E08EB30()
{
  result = qword_280F69320;
  if (!qword_280F69320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69320);
  }

  return result;
}

uint64_t sub_21E08EB84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF4AA04;

  return sub_21E08DC98(a1, v4, v5, v7, v6);
}

uint64_t sub_21E08EC44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF4AA04;

  return sub_21E08E8F8(a1, v4);
}

unint64_t sub_21E08ECFC()
{
  result = qword_27CEAC598;
  if (!qword_27CEAC598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC598);
  }

  return result;
}

uint64_t VisualIntelligenceFrameEntity.init(engineIdentifier:modelEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC5C0);
  MEMORY[0x28223BE20](v5 - 8);
  v23 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  *a3 = xmmword_21E14A830;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC560);
  *(a3 + 16) = sub_21E13CDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC568);
  *(a3 + 24) = sub_21E13CDE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC570);
  sub_21E0927DC(&qword_280F6C080, MEMORY[0x277CCB120]);
  *(a3 + 32) = sub_21E13CDD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC578);
  v21 = sub_21E13CE04();
  *(a3 + 40) = v21;
  *(a3 + 48) = sub_21E13CE04();
  *(a3 + 56) = sub_21E13CE04();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC580);
  sub_21E08EB30();
  *(a3 + 96) = sub_21E13CDC4();
  v20[1] = a2;
  *(a3 + 64) = sub_21E13D314();
  *(a3 + 72) = v16;
  *(a3 + 80) = v22;
  swift_weakAssign();
  sub_21E13D2E4();
  v17 = sub_21E13D304();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  sub_21DF236C0(v15, v12, &qword_27CEAA448);
  sub_21E13CDB4();
  sub_21DF23614(v15, &qword_27CEAA448);
  v18 = sub_21E13D394();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_21DF236C0(v9, v23, &qword_27CEAC5C0);
  sub_21E13CDB4();
  sub_21DF23614(v9, &qword_27CEAC5C0);
  v26 = 0;
  sub_21E13CDB4();
  v25 = 0;
  sub_21E13CDB4();
  v24 = 0;
  sub_21E13CDB4();
}

uint64_t VisualIntelligenceFrameEntity.displayRepresentation.getter()
{
  v1 = sub_21E13CF64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_21E08F274();
  sub_21E13CEC4();
  sub_21E1429B4();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x223D52A60](58, 0xE100000000000000);
  MEMORY[0x223D52A60](*(v0 + 64), *(v0 + 72));
  return sub_21E13CED4();
}

unint64_t sub_21E08F274()
{
  result = qword_27CEAC5C8;
  if (!qword_27CEAC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC5C8);
  }

  return result;
}

uint64_t VisualIntelligenceFrameEntity.id.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21E08F300@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t sub_21E08F30C()
{
  sub_21E08F274();

  return sub_21E13CEC4();
}

uint64_t sub_21E08F358(uint64_t a1)
{
  v2 = sub_21DFA11A4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21E08F3A4()
{
  v1 = sub_21E13CF64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_21E08F274();
  sub_21E13CEC4();
  sub_21E1429B4();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x223D52A60](58, 0xE100000000000000);
  MEMORY[0x223D52A60](*(v0 + 64), *(v0 + 72));
  return sub_21E13CED4();
}

uint64_t sub_21E08F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21DF4AA04;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_21E08F5A4(uint64_t a1)
{
  v2 = sub_21E091ACC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static VisualIntelligenceFrameEntity.transferRepresentation.getter()
{
  v0 = sub_21E13D6C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC5D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  sub_21E13D6B4();
  sub_21E08FCD8();
  sub_21E13D674();
  sub_21DF23E5C(&qword_27CEAC5E0, &qword_27CEAC5D0);
  sub_21E13D694();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21E08F7A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21E13D6C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  v2[7] = swift_task_alloc();
  v4 = sub_21E13D264();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E08F904, 0, 0);
}

uint64_t sub_21E08F904()
{
  sub_21E13D6B4();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_21E08F9A4;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return sub_21E08FD2C(v2, v4, v3);
}

uint64_t sub_21E08F9A4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_21E08FC50;
  }

  else
  {
    v5 = sub_21E08FB14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21E08FB14()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[10];
    v5 = v0[11];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    sub_21E13D684();
    (*(v2 + 8))(v5, v1);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_21E08FC50()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21E08FCD8()
{
  result = qword_27CEAC5D8;
  if (!qword_27CEAC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC5D8);
  }

  return result;
}

uint64_t sub_21E08FD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_21E13F1B4();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  v3[15] = swift_task_alloc();
  v5 = sub_21E13D264();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E08FE9C, 0, 0);
}

uint64_t sub_21E08FE9C()
{
  v51 = v0;
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    sub_21E1423C4();
    v0[21] = sub_21E1423B4();
    v3 = sub_21E142364();

    return MEMORY[0x2822009F8](sub_21E0904A0, v3, v2);
  }

  v4 = v0[9];
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_21E142884();

  v0[6] = v4[10];
  strcpy(v50, "frame-entity-");
  HIWORD(v50[1]) = -4864;
  v5 = sub_21E142AB4();
  MEMORY[0x223D52A60](v5);

  MEMORY[0x223D52A60](45, 0xE100000000000000);
  MEMORY[0x223D52A60](0x6E776F6E6B6E75, 0xE700000000000000);

  v6 = v50[1];
  type metadata accessor for FileWriter();
  inited = swift_initStackObject();
  *(inited + 16) = v50[0];
  *(inited + 24) = v6;
  v8 = v4[1];
  if (v8 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v9 = *v4;
  v10 = v0[15];
  v11 = v0[10];
  sub_21DFAD958(v9, v8);
  sub_21E012354(v9, v8, v11, v10);
  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_21DFA1598(v9, v8);
    sub_21DF23614(v0[15], &qword_27CEA9990);
LABEL_8:
    sub_21E13EC04();
    v15 = sub_21E13F1A4();
    v16 = sub_21E142564();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21DF05000, v15, v16, "error writing file", v17, 2u);
      MEMORY[0x223D540B0](v17, -1, -1);
    }

    v18 = v0[16];
    v19 = v0[17];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];
    v23 = v0[8];

    (*(v21 + 8))(v20, v22);
    (*(v19 + 56))(v23, 1, 1, v18);
    goto LABEL_11;
  }

  v26 = v0[18];
  v25 = v0[19];
  v49 = *(v13 + 32);
  v49(v25, v14, v12);
  sub_21E13EC04();
  (*(v13 + 16))(v26, v25, v12);
  v27 = sub_21E13F1A4();
  v47 = sub_21E142564();
  v28 = os_log_type_enabled(v27, v47);
  v30 = v0[17];
  v29 = v0[18];
  v31 = v0[16];
  v32 = v0[14];
  v33 = v0[12];
  v48 = v0[11];
  if (v28)
  {
    v46 = v0[14];
    v34 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v34 = 136315138;
    sub_21E0927DC(&qword_27CEA6BB8, MEMORY[0x277CC9260]);
    log = v27;
    v35 = sub_21E142AB4();
    v45 = v33;
    v37 = v36;
    (*(v30 + 8))(v29, v31);
    v38 = sub_21E0E08C0(v35, v37, v50);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_21DF05000, log, v47, "FrameEntity written file to %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x223D540B0](v44, -1, -1);
    MEMORY[0x223D540B0](v34, -1, -1);
    sub_21DFA1598(v9, v8);

    (*(v45 + 8))(v46, v48);
  }

  else
  {
    sub_21DFA1598(v9, v8);

    (*(v30 + 8))(v29, v31);
    (*(v33 + 8))(v32, v48);
  }

  v39 = v0[16];
  v40 = v0[17];
  v41 = v0[8];
  v49(v41, v0[19], v39);
  (*(v40 + 56))(v41, 0, 1, v39);
LABEL_11:

  v24 = v0[1];

  return v24();
}

uint64_t sub_21E0904A0()
{
  v1 = v0[20];

  swift_getKeyPath();
  v0[7] = v1;
  sub_21E0927DC(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v2 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage;
  v0[22] = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  v0[23] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_21E0905A8, 0, 0);
}

uint64_t sub_21E0905A8()
{
  v50 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[9];
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_21E142884();

  v0[6] = v3[10];
  strcpy(v49, "frame-entity-");
  HIWORD(v49[1]) = -4864;
  v4 = sub_21E142AB4();
  MEMORY[0x223D52A60](v4);

  MEMORY[0x223D52A60](45, 0xE100000000000000);
  MEMORY[0x223D52A60](v2, v1);

  v5 = v49[1];
  type metadata accessor for FileWriter();
  inited = swift_initStackObject();
  *(inited + 16) = v49[0];
  *(inited + 24) = v5;
  v7 = v3[1];
  if (v7 >> 60 != 15)
  {
    v8 = *v3;
    v9 = v0[15];
    v10 = v0[10];
    sub_21DFAD958(*v3, v3[1]);
    sub_21E012354(v8, v7, v10, v9);
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[15];
    if ((*(v12 + 48))(v13, 1, v11) != 1)
    {
      v26 = v0[18];
      v25 = v0[19];
      v48 = *(v12 + 32);
      v48(v25, v13, v11);
      sub_21E13EC04();
      (*(v12 + 16))(v26, v25, v11);
      v27 = sub_21E13F1A4();
      v46 = sub_21E142564();
      v28 = os_log_type_enabled(v27, v46);
      v30 = v0[17];
      v29 = v0[18];
      v31 = v0[16];
      v32 = v0[14];
      v33 = v0[12];
      v47 = v0[11];
      if (v28)
      {
        v45 = v0[14];
        v34 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49[0] = v43;
        *v34 = 136315138;
        sub_21E0927DC(&qword_27CEA6BB8, MEMORY[0x277CC9260]);
        log = v27;
        v35 = sub_21E142AB4();
        v44 = v33;
        v37 = v36;
        (*(v30 + 8))(v29, v31);
        v38 = sub_21E0E08C0(v35, v37, v49);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_21DF05000, log, v46, "FrameEntity written file to %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x223D540B0](v43, -1, -1);
        MEMORY[0x223D540B0](v34, -1, -1);
        sub_21DFA1598(v8, v7);

        (*(v44 + 8))(v45, v47);
      }

      else
      {
        sub_21DFA1598(v8, v7);

        (*(v30 + 8))(v29, v31);
        (*(v33 + 8))(v32, v47);
      }

      v39 = v0[16];
      v40 = v0[17];
      v41 = v0[8];
      v48(v41, v0[19], v39);
      (*(v40 + 56))(v41, 0, 1, v39);
      goto LABEL_7;
    }

    sub_21DFA1598(v8, v7);
    sub_21DF23614(v0[15], &qword_27CEA9990);
  }

  sub_21E13EC04();
  v14 = sub_21E13F1A4();
  v15 = sub_21E142564();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21DF05000, v14, v15, "error writing file", v16, 2u);
    MEMORY[0x223D540B0](v16, -1, -1);
  }

  v17 = v0[16];
  v18 = v0[17];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[11];
  v22 = v0[8];

  (*(v20 + 8))(v19, v21);
  (*(v18 + 56))(v22, 1, 1, v17);
LABEL_7:

  v23 = v0[1];

  return v23();
}

uint64_t sub_21E090B14()
{
  v0 = sub_21E13D6C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13D6B4();
  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_21E090BD8()
{
  v0 = sub_21E13D6C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC5D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  sub_21E13D6B4();
  sub_21E13D674();
  sub_21DF23E5C(&qword_27CEAC5E0, &qword_27CEAC5D0);
  sub_21E13D694();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21E090D94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC678);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BD0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E145380;
  sub_21E13CED4();
  v3 = sub_21DF27424(v2);
  swift_setDeallocating();
  sub_21DF23614(v2 + v1, &qword_27CEA6BD0);
  result = swift_deallocClassInstance();
  qword_27CEB7710 = v3;
  return result;
}

uint64_t sub_21E090EB0()
{
  sub_21E142C14();
  sub_21E142204();
  return sub_21E142C44();
}

uint64_t sub_21E090F0C()
{
  sub_21E142C14();
  sub_21E142204();
  return sub_21E142C44();
}

uint64_t sub_21E090F54@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21E142A34();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21E090FBC(uint64_t a1)
{
  v2 = sub_21E092788();

  return MEMORY[0x28210BDC8](a1, v2);
}

uint64_t sub_21E091008(uint64_t a1)
{
  v2 = sub_21E08EB30();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_21E091054()
{
  if (qword_27CEA67E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21E0910B0(uint64_t a1)
{
  v2 = sub_21E091E48();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_21E09110C()
{
  v0 = sub_21E13D114();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v25 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21E13D384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = sub_21E1420E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  v16 = sub_21E13D134();
  __swift_allocate_value_buffer(v16, qword_27CEB7718);
  v24[1] = __swift_project_value_buffer(v16, qword_27CEB7718);
  v17 = v15;
  sub_21E142084();
  sub_21DF23B80();
  v18 = sub_21E1426B4();
  if (!v18)
  {
    v18 = [objc_opt_self() mainBundle];
  }

  v19 = v18;
  sub_21E13D374();
  (*(v10 + 16))(v12, v15, v9);
  (*(v3 + 16))(v5, v8, v2);
  v20 = [v19 bundleURL];
  v24[0] = v2;
  v21 = v20;
  v22 = v25;
  sub_21E13D214();

  (*(v26 + 104))(v22, *MEMORY[0x277CC9118], v27);
  sub_21E13D144();

  (*(v3 + 8))(v8, v24[0]);
  return (*(v10 + 8))(v17, v9);
}

uint64_t sub_21E09148C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CEA67F0 != -1)
  {
    swift_once();
  }

  v2 = sub_21E13D134();
  v3 = __swift_project_value_buffer(v2, qword_27CEB7718);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21E09154C(uint64_t a1)
{
  v3 = *(v1 + 8);
  *(v2 + 120) = a1;
  *(v2 + 128) = v3;
  return MEMORY[0x2822009F8](sub_21E091570, 0, 0);
}

uint64_t sub_21E091570()
{
  sub_21E13CE54();
  sub_21E091A74();
  sub_21E13CD84();
  sub_21DFA11F8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E0915FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E092390();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E091624(uint64_t a1)
{
  v2 = sub_21E09216C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21E091660()
{
  v0 = sub_21E13CE14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = sub_21E13CE34();
  __swift_allocate_value_buffer(v5, qword_27CEAC5A8);
  __swift_project_value_buffer(v5, qword_27CEAC5A8);
  sub_21E13CE24();
  sub_21E13CE24();
  (*(v1 + 8))(v4, v0);
  return sub_21E13CE44();
}

uint64_t static VisualIntelligenceFrameEntity.__assistantSchemaEntity.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CEA67F8 != -1)
  {
    swift_once();
  }

  v2 = sub_21E13CE34();
  v3 = __swift_project_value_buffer(v2, qword_27CEAC5A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_21E091864()
{
  result = qword_280F6C050;
  if (!qword_280F6C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C050);
  }

  return result;
}

unint64_t sub_21E0918BC()
{
  result = qword_280F6C038;
  if (!qword_280F6C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C038);
  }

  return result;
}

unint64_t sub_21E091914()
{
  result = qword_280F6C010;
  if (!qword_280F6C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C010);
  }

  return result;
}

unint64_t sub_21E091968()
{
  result = qword_27CEAC5E8;
  if (!qword_27CEAC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC5E8);
  }

  return result;
}

unint64_t sub_21E0919CC()
{
  result = qword_280F6C030;
  if (!qword_280F6C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C030);
  }

  return result;
}

unint64_t sub_21E091A20()
{
  result = qword_280F6C028;
  if (!qword_280F6C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C028);
  }

  return result;
}

unint64_t sub_21E091A74()
{
  result = qword_280F6C040;
  if (!qword_280F6C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C040);
  }

  return result;
}

unint64_t sub_21E091ACC()
{
  result = qword_280F6C020;
  if (!qword_280F6C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C020);
  }

  return result;
}

unint64_t sub_21E091B68()
{
  result = qword_280F6C018;
  if (!qword_280F6C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C018);
  }

  return result;
}

unint64_t sub_21E091BDC()
{
  result = qword_280F692E0;
  if (!qword_280F692E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F692E0);
  }

  return result;
}

unint64_t sub_21E091C34()
{
  result = qword_280F69318;
  if (!qword_280F69318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69318);
  }

  return result;
}

unint64_t sub_21E091C8C()
{
  result = qword_280F692F8;
  if (!qword_280F692F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F692F8);
  }

  return result;
}

unint64_t sub_21E091CE4()
{
  result = qword_280F692D8;
  if (!qword_280F692D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F692D8);
  }

  return result;
}

unint64_t sub_21E091D48()
{
  result = qword_280F69300;
  if (!qword_280F69300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69300);
  }

  return result;
}

unint64_t sub_21E091D9C()
{
  result = qword_280F69328[0];
  if (!qword_280F69328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F69328);
  }

  return result;
}

unint64_t sub_21E091DF0()
{
  result = qword_280F69310;
  if (!qword_280F69310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69310);
  }

  return result;
}

unint64_t sub_21E091E48()
{
  result = qword_280F69308;
  if (!qword_280F69308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69308);
  }

  return result;
}

unint64_t sub_21E091ECC()
{
  result = qword_280F692F0;
  if (!qword_280F692F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F692F0);
  }

  return result;
}

unint64_t sub_21E091F24()
{
  result = qword_280F692D0;
  if (!qword_280F692D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F692D0);
  }

  return result;
}

unint64_t sub_21E091F7C()
{
  result = qword_280F692E8;
  if (!qword_280F692E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F692E8);
  }

  return result;
}

unint64_t sub_21E092018()
{
  result = qword_27CEAC610;
  if (!qword_27CEAC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC610);
  }

  return result;
}

unint64_t sub_21E092070()
{
  result = qword_27CEAC618;
  if (!qword_27CEAC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC618);
  }

  return result;
}

unint64_t sub_21E09216C()
{
  result = qword_27CEAC620;
  if (!qword_27CEAC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC620);
  }

  return result;
}

unint64_t sub_21E0921C4()
{
  result = qword_27CEAC628;
  if (!qword_27CEAC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC628);
  }

  return result;
}

unint64_t sub_21E092220()
{
  result = qword_27CEAC630;
  if (!qword_27CEAC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E0922C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E092308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E092390()
{
  v26 = sub_21E13CF34();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC658);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_21E13D134();
  v24 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC668);
  sub_21E13D104();
  v23 = *(v12 + 56);
  v23(v10, 1, 1, v11);
  LOBYTE(v27) = 1;
  v13 = sub_21E13CD74();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  v15 = v4;
  v14(v4, 1, 1, v13);
  v21 = *MEMORY[0x277CBA308];
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v25;
  v16(v25);
  sub_21E08EB30();
  v22 = sub_21E13CE64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC670);
  sub_21E13D104();
  v23(v10, 1, 1, v24);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14(v7, 1, 1, v13);
  v14(v15, 1, 1, v13);
  v20(v17, v21, v26);
  sub_21DFA11A4();
  sub_21E13CE74();
  return v22;
}

unint64_t sub_21E092788()
{
  result = qword_27CEAC680;
  if (!qword_27CEAC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC680);
  }

  return result;
}

uint64_t sub_21E0927DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E09285C()
{
  if (qword_280F6A6F0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v1 = off_280F6A6F8;
    swift_beginAccess();
    v2 = v1[2];
    v3 = *(v2 + 16);
    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
      break;
    }

    v26 = MEMORY[0x277D84F90];

    sub_21DF5C25C(0, v3, 0);
    v4 = v26;
    v24 = v2 + 64;
    v5 = sub_21E142774();
    v6 = 0;
    v25 = *(v2 + 36);
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v24 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (v25 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v9 = (*(v2 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      sub_21DFA1148(*(v2 + 56) + 104 * v5, (v0 + 4));
      v0[17] = v10;
      v0[18] = v11;
      sub_21DF27A80((v0 + 4), (v0 + 19));
      sub_21E093778((v0 + 17), (v0 + 32));
      v12 = v0[33];
      v0[47] = v0[32];
      v0[48] = v12;
      sub_21DF27A80((v0 + 34), (v0 + 49));
      sub_21DFA1148((v0 + 49), (v0 + 62));

      sub_21E0937E8((v0 + 47));
      sub_21E0937E8((v0 + 17));
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21DF5C25C((v13 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      sub_21DF27A80((v0 + 62), v26 + 104 * v14 + 32);
      v7 = 1 << *(v2 + 32);
      if (v5 >= v7)
      {
        goto LABEL_28;
      }

      v15 = *(v24 + 8 * v8);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      if (v25 != *(v2 + 36))
      {
        goto LABEL_30;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = (v2 + 72 + 8 * v8);
        v19 = v8 + 1;
        while (v19 < (v7 + 63) >> 6)
        {
          v21 = *v18++;
          v20 = v21;
          v17 += 64;
          ++v19;
          if (v21)
          {
            sub_21E093850(v5, v25, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_5;
          }
        }

        sub_21E093850(v5, v25, 0);
      }

LABEL_5:
      ++v6;
      v5 = v7;
      if (v6 == v3)
      {

        goto LABEL_22;
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
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_22:
  v22 = v0[1];

  return v22(v4);
}

uint64_t sub_21E092BAC()
{
  if (qword_280F6A6F0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC590);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC690);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_21E092CF8;

  return MEMORY[0x282200600](v0 + 2, v2, v4, 0, 0, &unk_21E1540D0, v3, v2);
}

uint64_t sub_21E092CF8()
{

  return MEMORY[0x2822009F8](sub_21E093BE0, 0, 0);
}

uint64_t VisualIntelligenceFrameEntityQuery.entities(matching:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E093BDC;

  return sub_21E09390C();
}

uint64_t sub_21E092EB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21E093BD0;

  return sub_21E09390C();
}

uint64_t sub_21E092F54(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21E092FE4;

  return VisualIntelligenceFrameEntityQuery.allEntities()();
}

uint64_t sub_21E092FE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_21E093118()
{
  if (qword_280F6A6F0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC590);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC690);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_21E093264;

  return MEMORY[0x282200600](v0 + 2, v2, v4, 0, 0, &unk_21E1542E8, v3, v2);
}

uint64_t sub_21E093264()
{

  return MEMORY[0x2822009F8](sub_21E09337C, 0, 0);
}

uint64_t sub_21E093398(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_21E093ACC();
  *v5 = v2;
  v5[1] = sub_21DF4AA04;

  return MEMORY[0x28210C0E8](a1, a2, v6);
}

uint64_t sub_21E09344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E09350C;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_21E09350C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21E09360C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_21E091968();
  *v5 = v2;
  v5[1] = sub_21DF8DAF8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_21E0936C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21DF4AA04;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_21E093778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0937E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E093850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21E09385C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21DF8DAF8;

  return sub_21E08D40C(a1, a2, v6);
}

unint64_t sub_21E09392C()
{
  result = qword_27CEAC698;
  if (!qword_27CEAC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC698);
  }

  return result;
}

unint64_t sub_21E093984()
{
  result = qword_27CEAC6A0;
  if (!qword_27CEAC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC6A0);
  }

  return result;
}

unint64_t sub_21E0939DC()
{
  result = qword_27CEAC6A8;
  if (!qword_27CEAC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC6A8);
  }

  return result;
}

unint64_t sub_21E093A38()
{
  result = qword_27CEAC6B0;
  if (!qword_27CEAC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC690);
    sub_21E091A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC6B0);
  }

  return result;
}

unint64_t sub_21E093ACC()
{
  result = qword_27CEAC6B8;
  if (!qword_27CEAC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC6B8);
  }

  return result;
}

uint64_t sub_21E093B20(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21DF4AA04;

  return sub_21E08D40C(a1, a2, v6);
}

uint64_t InAppWebPresentationView.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13D264();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t InAppWebPresentationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E13D264();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = sub_21E140914();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC6C0);
  *(a1 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_21E093CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E13D264();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = sub_21E140914();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC6C0);
  *(a1 + *(result + 36)) = v4;
  return result;
}

unint64_t sub_21E093DB4()
{
  result = qword_27CEAC6D8;
  if (!qword_27CEAC6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC6C0);
    sub_21E094264(&qword_27CEAC6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC6D8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D264();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D264();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21E093F80()
{
  result = sub_21E13D264();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_21E094020()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDB708]) init];
  [v0 _setEphemeral_];
  [v0 setBarCollapsingEnabled_];
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  [v0 _setNetworkAttributionApplicationBundleIdentifier_];
  v3 = objc_allocWithZone(MEMORY[0x277CDB700]);
  v4 = sub_21E13D1D4();
  v5 = [v3 initWithURL:v4 configuration:v0];

  return v5;
}

uint64_t sub_21E094120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E094264(&qword_27CEAC6F8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21E0941A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E094264(&qword_27CEAC6F8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21E094220()
{
  sub_21E094264(&qword_27CEAC6F8);
  sub_21E1407A4();
  __break(1u);
}

uint64_t sub_21E094264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebViewWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MapsDisambiguationViewItem.hash(into:)()
{
  v1 = v0;
  v2 = sub_21E13E504();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_21E13D264();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_21E142204();
  v16 = type metadata accessor for MapsDisambiguationViewItem(0);
  v17 = v8;
  sub_21DF236C0(v1 + v16[5], v15, &qword_27CEA9990);
  v31 = *(v8 + 48);
  v18 = v31(v15, 1, v7);
  v35 = v10;
  if (v18 == 1)
  {
    sub_21E142C34();
  }

  else
  {
    (*(v8 + 32))(v10, v15, v7);
    sub_21E142C34();
    sub_21E098684(&qword_27CEAC708, MEMORY[0x277CC9260]);
    sub_21E142024();
    (*(v8 + 8))(v10, v7);
  }

  if (*(v1 + v16[6] + 8))
  {
    sub_21E142C34();
    sub_21E142204();
  }

  else
  {
    sub_21E142C34();
  }

  if (*(v1 + v16[7] + 8))
  {
    sub_21E142C34();
    sub_21E142204();
  }

  else
  {
    sub_21E142C34();
  }

  if (*(v1 + v16[8] + 8))
  {
    sub_21E142C34();
    sub_21E142204();
  }

  else
  {
    sub_21E142C34();
  }

  MEMORY[0x223D53460](*(v1 + v16[9]));
  sub_21DF236C0(v1 + v16[10], v6, &qword_27CEAC700);
  v19 = v33;
  v20 = v34;
  v21 = (*(v33 + 48))(v6, 1, v34);
  v22 = v35;
  if (v21 == 1)
  {
    sub_21E142C34();
  }

  else
  {
    v23 = *(v19 + 32);
    v29 = v8;
    v24 = v30;
    v23(v30, v6, v20);
    sub_21E142C34();
    sub_21E098684(&qword_27CEAC710, MEMORY[0x277D794E0]);
    sub_21E142024();
    v25 = v24;
    v17 = v29;
    (*(v19 + 8))(v25, v20);
  }

  v26 = v32;
  sub_21DF236C0(v1 + v16[11], v32, &qword_27CEA9990);
  if (v31(v26, 1, v7) == 1)
  {
    return sub_21E142C34();
  }

  (*(v17 + 32))(v22, v26, v7);
  sub_21E142C34();
  sub_21E098684(&qword_27CEAC708, MEMORY[0x277CC9260]);
  sub_21E142024();
  return (*(v17 + 8))(v22, v7);
}

uint64_t MapsDisambiguationViewItem.hashValue.getter()
{
  sub_21E142C14();
  MapsDisambiguationViewItem.hash(into:)();
  return sub_21E142C44();
}

uint64_t sub_21E0948AC()
{
  sub_21E142C14();
  MapsDisambiguationViewItem.hash(into:)();
  return sub_21E142C44();
}

uint64_t sub_21E0948F0()
{
  sub_21E142C14();
  MapsDisambiguationViewItem.hash(into:)();
  return sub_21E142C44();
}

uint64_t sub_21E094930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v70 = a4;
  v63 = a1;
  v74 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A28);
  v8 = *(v7 - 8);
  v71 = v7;
  v72 = v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC780);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v59 - v13;
  v64 = sub_21E13FC44();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MapsDisambiguationViewItem(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC788);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v20 = &v59 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC790);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  sub_21E0989F4(a2, v18);
  v81 = *a3;
  v82 = *(a3 + 16);
  v25 = *(a3 + 3);
  v80 = *(a3 + 32);
  v78 = *(a3 + 5);
  v79 = v25;
  v26 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 71) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_21E098A58(v18, v29 + v26);
  v30 = (v29 + v27);
  v31 = a3[1];
  *v30 = *a3;
  v30[1] = v31;
  v32 = a3[3];
  v30[2] = a3[2];
  v30[3] = v32;
  v33 = v63;
  *(v29 + v28) = v63;
  v75 = a2;
  v76 = v33;
  sub_21DF236C0(&v81, v77, &qword_27CEA7358);
  sub_21DF236C0(&v79, v77, &qword_27CEA9A18);
  sub_21DF236C0(&v78, v77, &qword_27CEAC798);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC7A0);
  sub_21E098B5C();
  sub_21E141764();
  v34 = v61;
  sub_21E13FC34();
  sub_21DF23E5C(&qword_27CEAC7B8, &qword_27CEAC788);
  sub_21E098684(&qword_27CEA7000, MEMORY[0x277CDDB18]);
  v35 = v24;
  v36 = v60;
  v37 = v64;
  sub_21E140DC4();
  (*(v65 + 8))(v34, v37);
  (*(v62 + 8))(v20, v36);
  if (*(v70 + 16) - 1 <= v33)
  {
    v47 = 1;
    v48 = v71;
    v46 = v69;
  }

  else
  {
    v38 = v59;
    sub_21E141A44();
    v39 = sub_21E140944();
    sub_21E13F374();
    v40 = v71;
    v41 = v38 + *(v71 + 36);
    *v41 = v39;
    *(v41 + 8) = v42;
    *(v41 + 16) = v43;
    *(v41 + 24) = v44;
    *(v41 + 32) = v45;
    *(v41 + 40) = 0;
    v46 = v69;
    sub_21E098C64(v38, v69);
    v47 = 0;
    v48 = v40;
  }

  (*(v72 + 56))(v46, v47, 1, v48);
  v49 = v66;
  v50 = *(v66 + 16);
  v52 = v67;
  v51 = v68;
  v53 = v35;
  v50(v67, v35, v68);
  v54 = v73;
  sub_21DF236C0(v46, v73, &qword_27CEAC780);
  v55 = v74;
  v50(v74, v52, v51);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC7C0);
  sub_21DF236C0(v54, &v55[*(v56 + 48)], &qword_27CEAC780);
  sub_21DF23614(v46, &qword_27CEAC780);
  v57 = *(v49 + 8);
  v57(v53, v51);
  sub_21DF23614(v54, &qword_27CEAC780);
  return (v57)(v52, v51);
}

uint64_t sub_21E09507C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_21E13FF94();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_21E13D264();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MapsDisambiguationViewItem(0);
  sub_21DF236C0(a1 + *(v15 + 44), v10, &qword_27CEA9990);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21DF23614(v10, &qword_27CEA9990);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v22 = *a2;
    v23 = *(a2 + 16);
    v16 = v22;
    if (v23 == 1)
    {
    }

    else
    {

      sub_21E142574();
      v17 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF23614(&v22, &qword_27CEA7358);
      (*(v19 + 8))(v7, v5);
      v16 = v21;
    }

    LOBYTE(v21) = 1;
    v16(v14, &v21);

    (*(v12 + 8))(v14, v11);
  }

  return (*(a2 + 6))(v20);
}

uint64_t sub_21E0953A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21E0989F4(a1, a3);
  v5 = type metadata accessor for MapsDisambiguationItemView(0);
  *(a3 + *(v5 + 20)) = a2;
  v6 = a3 + *(v5 + 24);
  sub_21E141704();
  *v6 = v8;
  *(v6 + 8) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC7A0);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21E095434()
{
  v1 = *(v0 + 7);
  v8 = *(v0 + 40);
  sub_21DFA8240(*(v0 + 5));
  v3 = v2;
  v10 = v2;
  swift_getKeyPath();
  v11 = *v0;
  v12 = *(v0 + 16);
  v13 = *(v0 + 3);
  v14 = *(v0 + 32);
  v4 = swift_allocObject();
  v5 = v0[1];
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 4);
  *(v4 + 56) = v8;
  *(v4 + 72) = v1;
  *(v4 + 80) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21E098980;
  *(v6 + 24) = v4;

  sub_21DF236C0(&v11, v9, &qword_27CEA7358);
  sub_21DF236C0(&v13, v9, &qword_27CEA9A18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC760);
  sub_21DF23E5C(&qword_27CEAC768, &qword_27CEAC758);
  sub_21E098684(&qword_27CEAC770, type metadata accessor for MapsDisambiguationViewItem);
  sub_21DF23E5C(&qword_27CEAC778, &qword_27CEAC760);
  return sub_21E141A74();
}

uint64_t sub_21E095684@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC7E8);
  MEMORY[0x28223BE20](v19);
  v18 = &v18 - v3;
  v4 = *v1;
  v5 = v1[1];
  *&v53[0] = v4;
  *(&v53[0] + 1) = v5;
  sub_21DF252E0();

  v6 = sub_21E140C94();
  v8 = v7;
  *&v53[0] = v6;
  *(&v53[0] + 1) = v7;
  v10 = v9 & 1;
  LOBYTE(v53[1]) = v9 & 1;
  *(&v53[1] + 1) = v11;
  v12 = sub_21E140CC4();
  sub_21DF3DE8C(v6, v8, v10);

  v13 = sub_21E1401D4();
  LOBYTE(v30) = 1;
  sub_21E095A7C(v2, v53);
  v47 = v53[12];
  v48 = v53[13];
  v49 = v53[14];
  v43 = v53[8];
  v44 = v53[9];
  v45 = v53[10];
  v46 = v53[11];
  v39 = v53[4];
  v40 = v53[5];
  v41 = v53[6];
  v42 = v53[7];
  v35 = v53[0];
  v36 = v53[1];
  v37 = v53[2];
  v38 = v53[3];
  v51[12] = v53[12];
  v51[13] = v53[13];
  v51[14] = v53[14];
  v51[8] = v53[8];
  v51[9] = v53[9];
  v51[10] = v53[10];
  v51[11] = v53[11];
  v51[4] = v53[4];
  v51[5] = v53[5];
  v51[6] = v53[6];
  v51[7] = v53[7];
  v51[0] = v53[0];
  v51[1] = v53[1];
  v50 = v53[15];
  v52 = v53[15];
  v51[2] = v53[2];
  v51[3] = v53[3];
  sub_21DF236C0(&v35, v33, &qword_27CEAC7F0);
  sub_21DF23614(v51, &qword_27CEAC7F0);
  *(&v34[12] + 7) = v47;
  *(&v34[13] + 7) = v48;
  *(&v34[14] + 7) = v49;
  *(&v34[15] + 7) = v50;
  *(&v34[8] + 7) = v43;
  *(&v34[9] + 7) = v44;
  *(&v34[10] + 7) = v45;
  *(&v34[11] + 7) = v46;
  *(&v34[4] + 7) = v39;
  *(&v34[5] + 7) = v40;
  *(&v34[6] + 7) = v41;
  *(&v34[7] + 7) = v42;
  *(v34 + 7) = v35;
  *(&v34[1] + 7) = v36;
  *(&v34[2] + 7) = v37;
  *(&v34[3] + 7) = v38;
  *(&v33[26] + 1) = v34[12];
  *(&v33[28] + 1) = v34[13];
  *(&v33[30] + 1) = v34[14];
  *(&v33[31] + 2) = *(&v34[14] + 9);
  *(&v33[18] + 1) = v34[8];
  *(&v33[20] + 1) = v34[9];
  *(&v33[22] + 1) = v34[10];
  *(&v33[24] + 1) = v34[11];
  *(&v33[10] + 1) = v34[4];
  *(&v33[12] + 1) = v34[5];
  *(&v33[14] + 1) = v34[6];
  *(&v33[16] + 1) = v34[7];
  *(&v33[2] + 1) = v34[0];
  *(&v33[4] + 1) = v34[1];
  *(&v33[6] + 1) = v34[2];
  v33[0] = v13;
  v33[1] = 0;
  LOBYTE(v33[2]) = v30;
  *(&v33[8] + 1) = v34[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC7F8);
  sub_21DF23E5C(&qword_27CEAC800, &qword_27CEAC7F8);
  v14 = sub_21E140CC4();
  memcpy(v53, v33, 0x10AuLL);
  sub_21DF23614(v53, &qword_27CEAC7F8);
  v15 = v18;
  sub_21E096CEC(v2, v18);
  sub_21E098E78();
  v16 = sub_21E140CC4();
  sub_21DF23614(v15, &qword_27CEAC7E8);
  v33[3] = MEMORY[0x277CE11C8];
  v33[4] = MEMORY[0x277D63A60];
  v33[0] = v12;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = MEMORY[0x277CE11C8];
  v29 = MEMORY[0x277D63A60];
  v26 = 0;
  v27 = v14;
  v24 = 0u;
  v25 = 0u;
  v22 = MEMORY[0x277CE11C8];
  v23 = MEMORY[0x277D63A60];
  v21 = v16;
  return sub_21E141F94();
}

uint64_t sub_21E095A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140004();
  sub_21E095E1C(a1, &v57);
  v39 = *&v58[16];
  v40 = *&v58[32];
  v41 = *&v58[48];
  v42 = *&v58[64];
  v37 = v57;
  v38 = *v58;
  v43[2] = *&v58[16];
  v43[3] = *&v58[32];
  v43[4] = *&v58[48];
  v43[5] = *&v58[64];
  v43[0] = v57;
  v43[1] = *v58;
  sub_21DF236C0(&v37, &v55, &qword_27CEAC8C8);
  sub_21DF23614(v43, &qword_27CEAC8C8);
  *&v36[39] = v39;
  *&v36[55] = v40;
  *&v36[71] = v41;
  *&v36[87] = v42;
  *&v36[7] = v37;
  *&v36[23] = v38;
  v5 = sub_21E140004();
  LOBYTE(v19[0]) = 0;
  sub_21E096104(a1, &v57);
  v48 = *&v58[48];
  v49 = *&v58[64];
  v50 = *&v58[80];
  v44 = v57;
  v45 = *v58;
  v46 = *&v58[16];
  v47 = *&v58[32];
  v51[0] = v57;
  v51[1] = *v58;
  v51[2] = *&v58[16];
  v51[3] = *&v58[32];
  v51[4] = *&v58[48];
  v51[5] = *&v58[64];
  v52 = *&v58[80];
  sub_21DF236C0(&v44, &v55, &qword_27CEAC8D0);
  sub_21DF23614(v51, &qword_27CEAC8D0);
  *(&v35[3] + 7) = v47;
  *(&v35[4] + 7) = v48;
  *(&v35[5] + 7) = v49;
  *(&v35[6] + 7) = v50;
  *(v35 + 7) = v44;
  *(&v35[1] + 7) = v45;
  *(&v35[2] + 7) = v46;
  *&v53 = v4;
  *(&v53 + 1) = 0x4010000000000000;
  v54[0] = 0;
  *&v54[1] = *v36;
  *&v54[33] = *&v36[32];
  *&v54[17] = *&v36[16];
  *&v54[96] = *&v36[95];
  *&v54[81] = *&v36[80];
  *&v54[65] = *&v36[64];
  *&v54[49] = *&v36[48];
  v29 = *&v54[16];
  v30 = *&v54[32];
  v27 = v53;
  v28 = *v54;
  *v34 = *&v54[96];
  v32 = *&v54[64];
  v33 = *&v54[80];
  v31 = *&v54[48];
  *&v55 = v5;
  *(&v55 + 1) = 0x4010000000000000;
  v56[0] = 0;
  v6 = v35[1];
  *&v56[1] = v35[0];
  *&v56[33] = v35[2];
  v7 = v35[0];
  *&v56[17] = v35[1];
  *&v56[90] = *(&v35[5] + 9);
  v8 = v35[4];
  *&v56[81] = v35[5];
  v9 = v35[3];
  *&v56[65] = v35[4];
  v10 = v35[2];
  *&v56[49] = v35[3];
  *&v34[56] = *&v56[32];
  *&v34[40] = *&v56[16];
  *&v34[24] = *v56;
  *&v34[8] = v55;
  *&v34[114] = *&v56[90];
  *&v34[104] = *&v56[80];
  *&v34[88] = *&v56[64];
  *&v34[72] = *&v56[48];
  v11 = *&v54[32];
  *(a2 + 32) = *&v54[16];
  *(a2 + 48) = v11;
  v12 = v28;
  *a2 = v27;
  *(a2 + 16) = v12;
  v13 = *v34;
  *(a2 + 96) = v33;
  *(a2 + 112) = v13;
  v14 = v32;
  *(a2 + 64) = v31;
  *(a2 + 80) = v14;
  v15 = *&v34[64];
  *(a2 + 160) = *&v34[48];
  *(a2 + 176) = v15;
  v16 = *&v34[32];
  *(a2 + 128) = *&v34[16];
  *(a2 + 144) = v16;
  v17 = *&v34[112];
  *(a2 + 208) = *&v34[96];
  *(a2 + 224) = v17;
  *(a2 + 192) = *&v34[80];
  *&v58[49] = v9;
  *(a2 + 240) = *&v34[128];
  *&v57 = v5;
  *(&v57 + 1) = 0x4010000000000000;
  v58[0] = 0;
  *&v58[65] = v8;
  *&v58[81] = v35[5];
  *&v58[90] = *(&v35[5] + 9);
  *&v58[1] = v7;
  *&v58[17] = v6;
  *&v58[33] = v10;
  sub_21DF236C0(&v53, v19, &qword_27CEAC8D8);
  sub_21DF236C0(&v55, v19, &qword_27CEAC8E0);
  sub_21DF23614(&v57, &qword_27CEAC8E0);
  v24 = *&v36[48];
  v25 = *&v36[64];
  *v26 = *&v36[80];
  v21 = *v36;
  v22 = *&v36[16];
  v19[0] = v4;
  v19[1] = 0x4010000000000000;
  v20 = 0;
  *&v26[15] = *&v36[95];
  v23 = *&v36[32];
  return sub_21DF23614(v19, &qword_27CEAC8D8);
}

uint64_t sub_21E095E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapsDisambiguationViewItem(0);
  v5 = (a1 + *(v4 + 24));
  v6 = v5[1];
  if (v6)
  {
    *&v38 = *v5;
    *(&v38 + 1) = v6;
    sub_21DF252E0();

    v7 = sub_21E140C94();
    v9 = v8;
    v11 = v10;
    v13 = v12 & 1;
    sub_21DF42BEC(v7, v8, v12 & 1);
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v13 = 0;
    v11 = 0;
  }

  if (*(a1 + *(v4 + 28) + 8))
  {
    v27 = v13;
    v28 = v11;
    if (v6)
    {
      v14 = 10649826;
    }

    else
    {
      v14 = 0;
    }

    if (v6)
    {
      v15 = 0xA300000000000000;
    }

    else
    {
      v15 = 0;
    }

    if (v6)
    {
      v16 = MEMORY[0x277D84F90];
    }

    else
    {
      v16 = 0;
    }

    sub_21DF252E0();

    v17 = sub_21E140C94();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_21DFEF36C(v14, v15, 0, v16);
    v21 &= 1u;
    sub_21DF42BEC(v17, v19, v21);

    sub_21DFEF3B0(v14, v15, 0, v16);
    LOBYTE(v37[0]) = v21;
    sub_21DF3DE8C(v17, v19, v21);

    sub_21DFEF3B0(v14, v15, 0, v16);
    sub_21DFEF36C(v14, v15, 0, v16);
    sub_21DF42BEC(v17, v19, v21);
    *&v38 = v14;
    *(&v38 + 1) = v15;
    *&v39 = 0;
    *(&v39 + 1) = v16;
    v13 = v27;
    v11 = v28;
    *&v40 = v17;
    LOBYTE(v41) = v21;
  }

  else
  {
    v19 = 0;
    v23 = 0;
    v38 = 0u;
    v39 = 0u;
    *&v41 = 0;
    *&v40 = 0;
  }

  *(&v40 + 1) = v19;
  *(&v41 + 1) = v23;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v33 = v38;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  sub_21DFEF36C(v7, v9, v13, v11);
  sub_21DF236C0(&v33, v37, &qword_27CEAC900);
  sub_21DFEF3B0(v7, v9, v13, v11);
  sub_21DF23614(&v38, &qword_27CEAC900);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v13;
  *(a2 + 24) = v11;
  v24 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v24;
  v25 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v25;
  v37[2] = v31;
  v37[3] = v32;
  v37[0] = v29;
  v37[1] = v30;
  sub_21DF23614(v37, &qword_27CEAC900);
  return sub_21DFEF3B0(v7, v9, v13, v11);
}

uint64_t sub_21E096104@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v91 = a2;
  v3 = sub_21E13D384();
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC8E8);
  MEMORY[0x28223BE20](v87);
  v86 = &v76 - v5;
  v6 = sub_21E1400C4();
  MEMORY[0x28223BE20](v6 - 8);
  *&v88 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v76 - v9;
  MEMORY[0x28223BE20](v10);
  v83 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC700);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v76 - v13;
  v15 = sub_21E13E504();
  v93 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = &v76 - v19;
  v20 = type metadata accessor for MapsDisambiguationViewItem(0);
  v21 = v20;
  v22 = *(a1 + *(v20 + 32) + 8);
  v92 = v15;
  *&v89 = a1;
  if (v22)
  {
    v23 = *(a1 + *(v20 + 36));
    if ((v23 - 1) >= 3)
    {
      if (v23 == 4 || v23 == 6)
      {

        v24 = sub_21E1414E4();
      }

      else
      {

        v24 = sub_21E141584();
      }
    }

    else
    {

      v24 = sub_21E141434();
    }

    *&v109 = v24;
    v29 = sub_21E140C24();
    v26 = v30;
    v32 = v31;
    v28 = v33;

    v27 = v32 & 1;
    v25 = v29;
    sub_21DF42BEC(v29, v26, v27);

    v15 = v92;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  sub_21DF236C0(v89 + *(v21 + 40), v14, &qword_27CEAC700);
  v34 = v93;
  if ((*(v93 + 48))(v14, 1, v15) == 1)
  {
    sub_21DF23614(v14, &qword_27CEAC700);
    v109 = 0uLL;
    *&v110 = 0;
    *(&v110 + 1) = 1;
    v111 = 0u;
    v112 = 0u;
    v113 = 0;
LABEL_33:
    v96 = v111;
    v97 = v112;
    v98 = v113;
    v94 = v109;
    v95 = v110;
    v101 = v111;
    v102 = v112;
    v103 = v113;
    v99 = v109;
    v100 = v110;
    sub_21DFEF36C(v25, v26, v27, v28);
    sub_21DF236C0(&v99, &v104, &qword_27CEAC8F0);
    sub_21DFEF3B0(v25, v26, v27, v28);
    sub_21DF23614(&v109, &qword_27CEAC8F0);
    v72 = v91;
    *v91 = v25;
    v72[1] = v26;
    v72[2] = v27;
    v72[3] = v28;
    v73 = v102;
    *(v72 + 4) = v101;
    *(v72 + 5) = v73;
    *(v72 + 48) = v103;
    v74 = v100;
    *(v72 + 2) = v99;
    *(v72 + 3) = v74;
    v108 = v98;
    v106 = v96;
    v107 = v97;
    v104 = v94;
    v105 = v95;
    sub_21DF23614(&v104, &qword_27CEAC8F0);
    return sub_21DFEF3B0(v25, v26, v27, v28);
  }

  v81 = v27;
  v35 = v90;
  (*(v34 + 32))(v90, v14, v15);
  v36 = v22 == 0;
  if (v22)
  {
    v37 = 10649826;
  }

  else
  {
    v37 = 0;
  }

  v38 = 0xA300000000000000;
  if (v36)
  {
    v38 = 0;
  }

  v77 = v38;
  v39 = MEMORY[0x277D84F90];
  if (v36)
  {
    v39 = 0;
  }

  v78 = v39;
  (*(v34 + 16))(v17, v35, v15);
  v40 = (*(v34 + 88))(v17, v15);
  v41 = *MEMORY[0x277D794D8];
  v82 = v28;
  v79 = v25;
  v80 = v26;
  if (v40 == v41)
  {
    (*(v34 + 96))(v17, v15);
    v42 = *(v17 + 2);
    if (*(v17 + 3))
    {
      sub_21E1400B4();
      sub_21E1400A4();
      sub_21E141634();
      sub_21E140084();

      sub_21E1400A4();
      LODWORD(v109) = v42;
      sub_21E140064();
      sub_21E1400A4();
      sub_21E140094();

      sub_21E1400A4();
      sub_21E1400E4();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v43 = [objc_opt_self() mainBundle];
      }

      *&v104 = sub_21E140C64();
      *(&v104 + 1) = v44;
      *&v105 = v45 & 1;
      *(&v105 + 1) = v46;
      LOBYTE(v106) = 0;
      sub_21E1402F4();
      v47 = v109;
      v48 = v110;
      v49 = v111;
    }

    else
    {
      *&v89 = v37;
      sub_21E1400B4();
      sub_21E1400A4();
      sub_21E141634();
      sub_21E140084();

      sub_21E1400A4();
      LODWORD(v109) = v42;
      sub_21E140064();
      sub_21E1400A4();
      sub_21E1400E4();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v60 = [objc_opt_self() mainBundle];
      }

      *&v104 = sub_21E140C64();
      *(&v104 + 1) = v61;
      *&v105 = v62 & 1;
      *(&v105 + 1) = v63;
      LOBYTE(v106) = 1;
      sub_21E1402F4();
      v47 = v109;
      v48 = v110;
      v49 = v111;
      v37 = v89;
    }

    v104 = v47;
    v105 = v48;
    LOWORD(v106) = v49;
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7D8);
    sub_21E0626D0();
    sub_21E1402F4();
    v88 = v109;
    v89 = v110;
    v64 = v111;
    v65 = BYTE1(v111);
    LOBYTE(v99) = BYTE1(v111);
    v66 = v77;
    v67 = v78;
    sub_21DFEF36C(v37, v77, 0, v78);
    v69 = *(&v88 + 1);
    v68 = v88;
    v71 = *(&v89 + 1);
    v70 = v89;
    sub_21E09940C(v88, *(&v88 + 1), v89, *(&v89 + 1), v64, v65);
    sub_21DFEF3B0(v37, v66, 0, v67);
    (*(v93 + 8))(v90, v92);
    LOBYTE(v104) = v65;
    sub_21E09949C(v68, v69, v70, v71, v64, v99);
    sub_21DFEF3B0(v37, v66, 0, v67);
    LODWORD(v93) = v104;
    sub_21DFEF36C(v37, v66, 0, v67);
    sub_21E09940C(v68, v69, v70, v71, v64, v65);
    *&v109 = v37;
    *(&v109 + 1) = v66;
    *&v110 = 0;
    *(&v110 + 1) = v67;
    v111 = v88;
    v112 = v89;
    LOBYTE(v113) = v64;
    HIBYTE(v113) = v93;
    v25 = v79;
    v26 = v80;
    v27 = v81;
    v28 = v82;
    goto LABEL_33;
  }

  if (v40 == *MEMORY[0x277D794D0])
  {
    (*(v93 + 96))(v17, v15);
    v50 = *(v17 + 1);
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E141614();
    sub_21E140084();

    sub_21E1400A4();
    *&v109 = v50;
    sub_21E13D364();
    sub_21DFD30A4();
    sub_21E13D164();
    sub_21DF23E5C(&qword_27CEAC8F8, &qword_27CEAC8E8);
    v51 = sub_21E140C54();
    v53 = v52;
    v55 = v54;
    sub_21E140074();
    sub_21DF3DE8C(v51, v53, v55 & 1);

    sub_21E1400A4();
    sub_21E1400E4();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v56 = [objc_opt_self() mainBundle];
    }

    *&v104 = sub_21E140C64();
    *(&v104 + 1) = v57;
    *&v105 = v58 & 1;
    *(&v105 + 1) = v59;
    LOWORD(v106) = 256;
    goto LABEL_32;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21E096CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC828);
  MEMORY[0x28223BE20](v22);
  v4 = (&v21 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC830);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_21E13D264();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MapsDisambiguationViewItem(0);
  sub_21DF236C0(a1 + *(v15 + 20), v10, &qword_27CEA9990);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21DF23614(v10, &qword_27CEA9990);
    KeyPath = swift_getKeyPath();
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E0);
    sub_21E141704();
    v17 = v25;
    strcpy(v7, "com.apple.Maps");
    v7[15] = -18;
    *(v7 + 2) = 0x404A000000000000;
    *(v7 + 3) = KeyPath;
    v7[32] = 0;
    *(v7 + 40) = v17;
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEAC820, &qword_27CEAC828);
    sub_21DFE0F24();
    return sub_21E1402F4();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    *v4 = sub_21E141CA4();
    v4[1] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC838);
    sub_21E0970D8(v14, v4 + *(v20 + 44));
    sub_21DF236C0(v4, v7, &qword_27CEAC828);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEAC820, &qword_27CEAC828);
    sub_21DFE0F24();
    sub_21E1402F4();
    sub_21DF23614(v4, &qword_27CEAC828);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_21E0970D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  *&v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC840);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC848);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = sub_21E13D264();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v7, v35, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_21DF236C0(v7, v4, &qword_27CEA9990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC850);
  sub_21E098FB4();
  sub_21E13F334();
  sub_21DF23614(v7, &qword_27CEA9990);
  sub_21DF23E5C(&qword_27CEAC8A8, &qword_27CEAC840);
  sub_21E141164();
  (*(v9 + 8))(v11, v8);
  v17[*(v13 + 44)] = 1;
  KeyPath = swift_getKeyPath();
  *&v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E0);
  sub_21E141704();
  v21 = v43[0];
  v22 = v43[1];
  LOBYTE(v43[0]) = 0;
  v23 = v37;
  sub_21DF236C0(v17, v37, &qword_27CEAC848);
  v24 = v36;
  sub_21DF236C0(v23, v36, &qword_27CEAC848);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC8B0) + 48);
  strcpy(&v39, "com.apple.Maps");
  HIBYTE(v39) = -18;
  *&v40 = 0x4034000000000000;
  *(&v40 + 1) = KeyPath;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = *v38;
  DWORD1(v41) = *&v38[3];
  *(&v41 + 1) = v21;
  *v42 = v22;
  __asm { FMOV            V0.2D, #4.0 }

  v36 = _Q0;
  *&v42[8] = _Q0;
  v31 = v40;
  *v25 = v39;
  *(v25 + 16) = v31;
  v32 = *v42;
  *(v25 + 32) = v41;
  *(v25 + 48) = v32;
  *(v25 + 64) = *&v42[16];
  sub_21DF236C0(&v39, v43, &qword_27CEAC8B8);
  sub_21DF23614(v17, &qword_27CEAC848);
  strcpy(v43, "com.apple.Maps");
  HIBYTE(v43[1]) = -18;
  v43[2] = 0x4034000000000000;
  v43[3] = KeyPath;
  v44 = 0;
  *v45 = *v38;
  *&v45[3] = *&v38[3];
  v46 = v21;
  v47 = v22;
  v48 = v36;
  sub_21DF23614(v43, &qword_27CEAC8B8);
  return sub_21DF23614(v37, &qword_27CEAC848);
}

uint64_t sub_21E0975AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E13F9D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E141634();
  v7 = sub_21E1409C4();
  KeyPath = swift_getKeyPath();
  *&v27 = v6;
  *(&v27 + 1) = KeyPath;
  *&v28 = v7;
  (*(v3 + 104))(v5, *MEMORY[0x277CDF9D8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC8A0);
  sub_21E099354();
  sub_21E140F64();
  (*(v3 + 8))(v5, v2);

  v9 = sub_21E141584();
  v10 = swift_getKeyPath();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC898) + 36));
  *v11 = v10;
  v11[1] = v9;
  sub_21E141CC4();
  sub_21E13F664();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC888) + 36));
  v13 = v28;
  *v12 = v27;
  v12[1] = v13;
  v12[2] = v29;
  v14 = [objc_opt_self() tertiarySystemFillColor];
  v15 = sub_21E141414();
  LOBYTE(v10) = sub_21E140914();
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC878) + 36);
  *v16 = v15;
  *(v16 + 8) = v10;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC868) + 36));
  v18 = *(sub_21E13FCA4() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_21E140144();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v17 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18);
  *&v17[*(result + 36)] = 256;
  return result;
}

uint64_t sub_21E0978B0@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC868);
  MEMORY[0x28223BE20](v1);
  v3 = v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC8C0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  v7 = sub_21E141624();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EE8);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  if (sub_21E13F9C4())
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v14 = sub_21E141664();
    (*(v8 + 8))(v10, v7);
    sub_21E141CC4();
    sub_21E13F664();
    v28 = 1;
    *&v27[6] = v29;
    *&v27[22] = v30;
    *&v27[38] = v31;
    v15 = &v13[*(v11 + 36)];
    v16 = *(sub_21E13FCA4() + 20);
    v17 = *MEMORY[0x277CE0118];
    v18 = sub_21E140144();
    (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
    __asm { FMOV            V0.2D, #12.0 }

    *v15 = _Q0;
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18) + 36)] = 256;
    v24 = *&v27[16];
    *(v13 + 18) = *v27;
    *v13 = v14;
    *(v13 + 1) = 0;
    *(v13 + 8) = 257;
    *(v13 + 34) = v24;
    *(v13 + 50) = *&v27[32];
    *(v13 + 8) = *&v27[46];
    sub_21DF236C0(v13, v6, &qword_27CEA8EE8);
    swift_storeEnumTagMultiPayload();
    sub_21DFC2764();
    sub_21E099040();
    sub_21E1402F4();

    return sub_21DF23614(v13, &qword_27CEA8EE8);
  }

  else
  {
    sub_21E0975AC(v3);
    sub_21DF236C0(v3, v6, &qword_27CEAC868);
    swift_storeEnumTagMultiPayload();
    sub_21DFC2764();
    sub_21E099040();
    sub_21E1402F4();
    return sub_21DF23614(v3, &qword_27CEAC868);
  }
}

BOOL _s20VisualIntelligenceUI26MapsDisambiguationViewItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21E13E504();
  v84 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC700);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v74 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC738);
  MEMORY[0x28223BE20](v82);
  v83 = &v74 - v8;
  v9 = sub_21E13D264();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC740);
  MEMORY[0x28223BE20](v87);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21E142B14() & 1) == 0)
  {
    return 0;
  }

  v77 = v15;
  v78 = v4;
  v79 = v12;
  v85 = type metadata accessor for MapsDisambiguationViewItem(0);
  v86 = v10;
  v24 = v85[5];
  v25 = *(v87 + 48);
  sub_21DF236C0(a1 + v24, v23, &qword_27CEA9990);
  v26 = a2 + v24;
  v27 = v86;
  sub_21DF236C0(v26, &v23[v25], &qword_27CEA9990);
  v28 = *(v27 + 48);
  if (v28(v23, 1, v9) == 1)
  {
    if (v28(&v23[v25], 1, v9) == 1)
    {
      v75 = v28;
      v76 = v20;
      sub_21DF23614(v23, &qword_27CEA9990);
      goto LABEL_14;
    }

LABEL_9:
    v29 = &qword_27CEAC740;
    v30 = v23;
LABEL_10:
    sub_21DF23614(v30, v29);
    return 0;
  }

  sub_21DF236C0(v23, v18, &qword_27CEA9990);
  if (v28(&v23[v25], 1, v9) == 1)
  {
    (*(v27 + 8))(v18, v9);
    goto LABEL_9;
  }

  v75 = v28;
  v76 = v20;
  v32 = v79;
  (*(v27 + 32))(v79, &v23[v25], v9);
  sub_21E098684(&qword_27CEAC748, MEMORY[0x277CC9260]);
  v33 = sub_21E142074();
  v34 = *(v27 + 8);
  v34(v32, v9);
  v34(v18, v9);
  sub_21DF23614(v23, &qword_27CEA9990);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v35 = v85;
  v36 = v85[6];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_21E142B14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v41 = v35[7];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_21E142B14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v46 = v35[8];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_21E142B14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  if (*(a1 + v35[9]) != *(a2 + v35[9]))
  {
    return 0;
  }

  v51 = v35[10];
  v52 = v83;
  v53 = *(v82 + 48);
  sub_21DF236C0(a1 + v51, v83, &qword_27CEAC700);
  sub_21DF236C0(a2 + v51, v52 + v53, &qword_27CEAC700);
  v54 = *(v84 + 48);
  v55 = v78;
  if (v54(v52, 1, v78) == 1)
  {
    if (v54(v52 + v53, 1, v55) == 1)
    {
      sub_21DF23614(v52, &qword_27CEAC700);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v56 = v81;
  sub_21DF236C0(v52, v81, &qword_27CEAC700);
  if (v54(v52 + v53, 1, v55) == 1)
  {
    (*(v84 + 8))(v56, v55);
LABEL_41:
    v29 = &qword_27CEAC738;
    v30 = v52;
    goto LABEL_10;
  }

  v57 = v84;
  v58 = v52 + v53;
  v59 = v80;
  (*(v84 + 32))(v80, v58, v55);
  sub_21E098684(&qword_27CEAC750, MEMORY[0x277D794E0]);
  v60 = sub_21E142074();
  v61 = *(v57 + 8);
  v61(v59, v55);
  v61(v81, v55);
  sub_21DF23614(v52, &qword_27CEAC700);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v62 = v85[11];
  v63 = *(v87 + 48);
  v64 = a1 + v62;
  v65 = v76;
  sub_21DF236C0(v64, v76, &qword_27CEA9990);
  v66 = v65;
  sub_21DF236C0(a2 + v62, v65 + v63, &qword_27CEA9990);
  v67 = v75;
  if (v75(v65, 1, v9) == 1)
  {
    if (v67(v65 + v63, 1, v9) == 1)
    {
      sub_21DF23614(v65, &qword_27CEA9990);
      return 1;
    }

    goto LABEL_48;
  }

  v68 = v77;
  sub_21DF236C0(v65, v77, &qword_27CEA9990);
  if (v67(v65 + v63, 1, v9) == 1)
  {
    (*(v86 + 8))(v68, v9);
LABEL_48:
    v29 = &qword_27CEAC740;
    v30 = v65;
    goto LABEL_10;
  }

  v69 = v86;
  v70 = v65 + v63;
  v71 = v79;
  (*(v86 + 32))(v79, v70, v9);
  sub_21E098684(&qword_27CEAC748, MEMORY[0x277CC9260]);
  v72 = sub_21E142074();
  v73 = *(v69 + 8);
  v73(v71, v9);
  v73(v68, v9);
  sub_21DF23614(v66, &qword_27CEA9990);
  return (v72 & 1) != 0;
}

uint64_t sub_21E098684(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21E09873C()
{
  sub_21E098868(319, &qword_27CEA9290, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21E01B0DC(319, &qword_27CEA98A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MKLocalizedHoursState(319);
      if (v2 <= 0x3F)
      {
        sub_21E098868(319, &qword_27CEAC730, MEMORY[0x277D794E0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21E098868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E142724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21E0988BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21E098904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E09898C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86E8);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_21E0989F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsDisambiguationViewItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E098A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsDisambiguationViewItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E098ABC()
{
  v1 = *(type metadata accessor for MapsDisambiguationViewItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + ((v3 + 71) & 0xFFFFFFFFFFFFFFF8));

  return sub_21E09507C(v0 + v2, (v0 + v3), v4);
}

unint64_t sub_21E098B5C()
{
  result = qword_27CEAC7A8;
  if (!qword_27CEAC7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC7A0);
    sub_21E098684(&qword_27CEAC7B0, type metadata accessor for MapsDisambiguationItemView);
    sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC7A8);
  }

  return result;
}

uint64_t sub_21E098C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21E098CFC()
{
  type metadata accessor for MapsDisambiguationViewItem(319);
  if (v0 <= 0x3F)
  {
    sub_21E01B0DC(319, &qword_280F68D48, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21E098DAC()
{
  result = qword_27CEAC7D8;
  if (!qword_27CEAC7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC7E0);
    sub_21DF23E5C(&qword_27CEAC778, &qword_27CEAC760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC7D8);
  }

  return result;
}

unint64_t sub_21E098E78()
{
  result = qword_27CEAC808;
  if (!qword_27CEAC808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC7E8);
    sub_21E098EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC808);
  }

  return result;
}

unint64_t sub_21E098EFC()
{
  result = qword_27CEAC810;
  if (!qword_27CEAC810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC818);
    sub_21DF23E5C(&qword_27CEAC820, &qword_27CEAC828);
    sub_21DFE0F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC810);
  }

  return result;
}

unint64_t sub_21E098FB4()
{
  result = qword_27CEAC858;
  if (!qword_27CEAC858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC850);
    sub_21DFC2764();
    sub_21E099040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC858);
  }

  return result;
}

unint64_t sub_21E099040()
{
  result = qword_27CEAC860;
  if (!qword_27CEAC860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC868);
    sub_21E0990F8();
    sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC860);
  }

  return result;
}

unint64_t sub_21E0990F8()
{
  result = qword_27CEAC870;
  if (!qword_27CEAC870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC878);
    sub_21E0991DC(&qword_27CEAC880, &qword_27CEAC888, &unk_21E154800, sub_21E099260);
    sub_21DF23E5C(&qword_27CEAA748, &qword_27CEAA750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC870);
  }

  return result;
}

uint64_t sub_21E0991DC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E099260()
{
  result = qword_27CEAC890;
  if (!qword_27CEAC890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC8A0);
    sub_21E099354();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC890);
  }

  return result;
}

unint64_t sub_21E099354()
{
  result = qword_27CEAD3D0;
  if (!qword_27CEAD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC8A0);
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD3D0);
  }

  return result;
}

uint64_t sub_21E09940C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_21DF42BEC(a1, a2, a3 & 1);
  }

  else
  {

    return sub_21E099460(a1, a2, a3);
  }
}

uint64_t sub_21E099460(uint64_t a1, uint64_t a2, char a3)
{
  sub_21DF42BEC(a1, a2, a3 & 1);
}

uint64_t sub_21E09949C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_21DF3DE8C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_21E0994F0(a1, a2, a3);
  }
}

uint64_t sub_21E0994F0(uint64_t a1, uint64_t a2, char a3)
{
  sub_21DF3DE8C(a1, a2, a3 & 1);
}

uint64_t sub_21E09952C()
{
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();
}

float SheetModel.progress.getter()
{
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  swift_beginAccess();
  return *(v0 + 32);
}

double SheetModel.proposedBackgroundHeight.getter()
{
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  swift_beginAccess();
  return *(v0 + 56);
}

double sub_21E0996A8()
{
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  return *(v0 + 24);
}

uint64_t SheetModel.proposedBackgroundHeight.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E099814()
{
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();
}

uint64_t sub_21E099888()
{
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  return *(v0 + 17);
}

uint64_t SheetModel.isPresented.getter()
{
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_21E09997C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t SheetModel.isPresented.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  return result;
}

void (*SheetModel.isPresented.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI10SheetModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF4CFC8();
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E099C34;
}

uint64_t sub_21E099C40(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  return result;
}

void sub_21E099D28(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }
}

uint64_t type metadata accessor for SheetModel()
{
  result = qword_280F6BFF0;
  if (!qword_280F6BFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SheetModel.progress.setter(float a1)
{
  result = swift_beginAccess();
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E099F64(uint64_t a1, float a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

void (*SheetModel.progress.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI10SheetModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF4CFC8();
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E09A0C8;
}

uint64_t sub_21E09A0D4(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 40) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E09A228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  *a2 = *(v3 + 48);
}

uint64_t sub_21E09A2D0(uint64_t result)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 48) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  return result;
}

double sub_21E09A424@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

uint64_t sub_21E09A4D8(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 56) = a2;
  return result;
}

uint64_t sub_21E09A52C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_21E09A580()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

void (*SheetModel.proposedBackgroundHeight.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI10SheetModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF4CFC8();
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E09A6E4;
}

uint64_t SheetModel.deinit()
{

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI10SheetModel___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SheetModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI10SheetModel___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21E09A814()
{
  result = sub_21E13D404();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_21E09A908()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

uint64_t sub_21E09A918()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_21E09A954()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t FloatingPoint.approximates(_:epsilon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21E1429D4();
  sub_21E142B64();
  v10 = *(v4 + 8);
  v10(v6, a3);
  v11 = sub_21E142054();
  v10(v9, a3);
  return v11 & 1;
}

id SheetTrackingAssistant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21E09AB1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF4CFC8();
  sub_21E13D3C4();

  *a2 = *(v3 + 40);
}

uint64_t SheetTrackingAssistant.isActive.getter()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SheetTrackingAssistant.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SheetTrackingAssistant.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isActive] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingBackgroundView] = 0;
  *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingOverlayView] = 0;
  v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityEnabled] = 0;
  v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityDisabledWhileDragging] = 0;
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_lastDraggingHeight];
  *v2 = 0;
  v2[8] = 1;
  type metadata accessor for SheetModel();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  *(v3 + 48) = v4;
  *(v3 + 56) = 0;
  sub_21E13D3F4();
  *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel] = v3;
  *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetTransitionNamespace] = sub_21E141DA4();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall SheetTrackingAssistant._sheetPresentationControllerDidInvalidateDetentValues(_:)(UISheetPresentationController a1)
{
  v1 = [(objc_class *)a1.super.super.isa _detentValues];
  sub_21E09CB3C();
  v2 = sub_21E1422D4();

  if (v2 >> 62)
  {
    v3 = sub_21E1427B4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21DF5C098(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v5 = 0;
    v6 = v23;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D530F0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      sub_21E13D414();
      v10 = v9;

      v23 = v6;
      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_21DF5C098((v11 > 1), v12 + 1, 1);
        v6 = v23;
      }

      ++v5;
      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v10;
    }

    while (v3 != v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v23 = v6;

  sub_21E09CB88(&v23);

  v13 = v23;

  sub_21E09A0D4(v14);
  v15 = *(v13 + 2);
  if (v15)
  {
    v16 = *&v13[8 * v15 + 24];
    v23 = v4;
    sub_21DF5C27C(0, v15, 0);
    v17 = v23;
    v18 = *(v23 + 2);
    v19 = 32;
    do
    {
      v20 = *&v13[v19];
      v23 = v17;
      v21 = *(v17 + 3);
      if (v18 >= v21 >> 1)
      {
        sub_21DF5C27C((v21 > 1), v18 + 1, 1);
        v17 = v23;
      }

      v22 = v20 / v16;
      *(v17 + 2) = v18 + 1;
      *&v17[4 * v18 + 32] = v22;
      v19 += 8;
      ++v18;
      --v15;
    }

    while (v15);

    sub_21E09A2D0(v17);
  }

  else
  {
  }
}

Swift::Void __swiftcall SheetTrackingAssistant._sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame(_:)(UISheetPresentationController a1)
{
  v2 = v1;
  v4 = [(objc_class *)a1.super.super.isa containerView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {
      [v6 bounds];
      Height = CGRectGetHeight(v31);
      [(objc_class *)a1.super.super.isa _currentPresentedViewFrame];
      v8 = Height - CGRectGetMinY(v32);
      v9 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
      if (*(v9 + 24) == v8)
      {
        *(v9 + 24) = v8;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *&v30[0] = v9;
        sub_21DF4CFC8();
        sub_21E13D3B4();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        [Strong setNeedsLayout];
      }

      v13 = sub_21E1420F4();
      v14 = [(objc_class *)a1.super.super.isa valueForKey:v13];

      if (v14)
      {
        sub_21E142754();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      v30[0] = v28;
      v30[1] = v29;
      if (*(&v29 + 1))
      {
        if (swift_dynamicCast())
        {
          v15 = v27;
          if (v27 == *(v9 + 17))
          {
            *(v9 + 17) = v27;
            sub_21E09B5F8(v27, 0);
            if ((v27 & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_20:
            swift_getKeyPath();
            *&v30[0] = v9;
            sub_21DF4CFC8();
            sub_21E13D3C4();

            v17 = *(v9 + 40);
            v18 = *(v17 + 16);
            if (v18)
            {
              v19 = *(v17 + 8 * v18 + 24);
              [(objc_class *)a1.super.super.isa _currentDetentValue];
              v20 = v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_lastDraggingHeight;
              *v20 = v21;
              *(v20 + 8) = 0;
              v22 = v21 / v19;
              swift_beginAccess();
              if (*(v9 + 32) == v22)
              {
                *(v9 + 32) = v22;
              }

              else
              {
                v23 = swift_getKeyPath();
                MEMORY[0x28223BE20](v23);
                sub_21E13D3B4();
              }

              v24 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingBackgroundView);
              if (v24)
              {
                [v24 setNeedsLayout];
              }

              v25 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingOverlayView);
              if (v25)
              {
                v26 = v25;
                [v26 setNeedsLayout];
              }
            }

            goto LABEL_29;
          }

          goto LABEL_19;
        }
      }

      else
      {
        sub_21E09CCDC(v30);
      }

      if ((*(v9 + 17) & 1) == 0)
      {
        *(v9 + 17) = 0;
        sub_21E09B5F8(0, 0);
        goto LABEL_29;
      }

      v15 = 0;
LABEL_19:
      v16 = swift_getKeyPath();
      MEMORY[0x28223BE20](v16);
      *&v30[0] = v9;
      sub_21DF4CFC8();
      sub_21E13D3B4();

      sub_21E09B5F8(v15, 0);
      if (v15)
      {
        goto LABEL_20;
      }

LABEL_29:
    }
  }
}

void sub_21E09B5F8(char a1, char a2)
{
  v5 = sub_21E13F1B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  if (a1)
  {
    if (*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityEnabled))
    {
      v16 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityDisabledWhileDragging;
      if ((*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityDisabledWhileDragging) & 1) == 0)
      {
        v17 = v13;
        SBSSetReachabilityEnabled();
        *(v2 + v16) = 1;
        sub_21E13EBE4();
        v18 = sub_21E13F1A4();
        v19 = sub_21E142554();
        if (!os_log_type_enabled(v18, v19))
        {
LABEL_14:
          v8 = v15;
          goto LABEL_15;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21DF05000, v18, v19, "DISABLING SYSTEM REACHABILITY while dragging", v20, 2u);
LABEL_13:
        MEMORY[0x223D540B0](v20, -1, -1);
        goto LABEL_14;
      }
    }
  }

  else if (*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityEnabled))
  {
    v21 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityDisabledWhileDragging;
    if (*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityDisabledWhileDragging) == 1)
    {
      v17 = v13;
      SBSSetReachabilityEnabled();
      *(v2 + v21) = 0;
      if (a2)
      {
        sub_21E13EBE4();
        v18 = sub_21E13F1A4();
        v22 = sub_21E142554();
        if (!os_log_type_enabled(v18, v22))
        {
          v8 = v11;
          goto LABEL_15;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21DF05000, v18, v22, "ENABLING SYSTEM REACHABILITY because the sheet is disappearing", v20, 2u);
        v15 = v11;
      }

      else
      {
        sub_21E13EBE4();
        v18 = sub_21E13F1A4();
        v23 = sub_21E142554();
        if (!os_log_type_enabled(v18, v23))
        {
LABEL_15:

          (*(v6 + 8))(v8, v17);
          return;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21DF05000, v18, v23, "ENABLING SYSTEM REACHABILITY because dragging ended", v20, 2u);
        v15 = v8;
      }

      goto LABEL_13;
    }
  }
}

Swift::Void __swiftcall SheetTrackingAssistant._sheetPresentationControllerPerformLayout(_:)(UISheetPresentationController a1)
{
  v2 = v1;
  v4 = [(objc_class *)a1.super.super.isa containerView];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 window];

  if (!v6)
  {
    return;
  }

  [v6 bounds];
  Height = CGRectGetHeight(v32);
  [(objc_class *)a1.super.super.isa _currentPresentedViewFrame];
  v8 = Height - CGRectGetMinY(v33);
  v9 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  if (*(v9 + 24) == v8)
  {
    *(v9 + 24) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v31[0] = v9;
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong layoutIfNeeded];
  }

  v13 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingBackgroundView);
  if (v13)
  {
    [v13 layoutIfNeeded];
  }

  v14 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingOverlayView);
  if (v14)
  {
    [v14 layoutIfNeeded];
  }

  v15 = sub_21E1420F4();
  v16 = [(objc_class *)a1.super.super.isa valueForKey:v15];

  if (v16)
  {
    sub_21E142754();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_21E09CCDC(v31);
    goto LABEL_19;
  }

  if (!swift_dynamicCast())
  {
LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v17 = v28;
LABEL_20:
  v18 = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
  if (v17 == *(v9 + 17))
  {
    *(v9 + 17) = v17;
  }

  else
  {
    v19 = swift_getKeyPath();
    v27 = &v27;
    MEMORY[0x28223BE20](v19);
    *&v31[0] = v9;
    sub_21DF4CFC8();
    sub_21E13D3B4();
  }

  sub_21E09B5F8(v17, 0);
  if (v17 & 1) == 0 && (v18 & 1) != 0 && (swift_getKeyPath(), *&v31[0] = v9, sub_21DF4CFC8(), sub_21E13D3C4(), , v20 = *(v9 + 40), (v21 = *(v20 + 16)) != 0) && ((v22 = *(v20 + 8 * v21 + 24), v23 = v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_lastDraggingHeight, (*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_lastDraggingHeight + 8)) || vabdd_f64(*v23, v8) >= 0.01))
  {
    [(objc_class *)a1.super.super.isa _currentDetentValue];
    *v23 = 0;
    *(v23 + 8) = 1;
    v25 = v24 / v22;
    swift_beginAccess();
    if (*(v9 + 32) == v25)
    {

      *(v9 + 32) = v25;
    }

    else
    {
      v26 = swift_getKeyPath();
      MEMORY[0x28223BE20](v26);
      *&v29 = v9;
      sub_21E13D3B4();
    }
  }

  else
  {
  }
}

uint64_t SheetTrackingAssistant.responds(to:)(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v5, sel_respondsToSelector_, a1))
  {
    return 1;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = [result respondsToSelector_];
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

double SheetTrackingAssistant.forwardingTarget(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v15.receiver = v3;
  v15.super_class = ObjectType;
  if ((objc_msgSendSuper2(&v15, sel_respondsToSelector_, a1) & 1) == 0 && (v7 = swift_unknownObjectWeakLoadStrong()) != 0 && (v8 = [v7 respondsToSelector_], swift_unknownObjectRelease(), v8))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      *(a2 + 24) = swift_getObjectType();
      *a2 = v10;
    }

    else
    {
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    v14.receiver = v3;
    v14.super_class = ObjectType;
    if (objc_msgSendSuper2(&v14, sel_forwardingTargetForSelector_, a1))
    {
      sub_21E142754();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    result = *&v12;
    *a2 = v12;
    *(a2 + 16) = v13;
  }

  return result;
}

id SheetTrackingAssistant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E09C240@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21E09D1F8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E140894();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21E09C428(uint64_t a1)
{
  v2 = type metadata accessor for PresentationSheetAssistantModifier();
  MEMORY[0x28223BE20](v2);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_21E13F1B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21E140894();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21E09C240(v12);
  v25 = a1;
  sub_21E140884();
  (*(v10 + 8))(v12, v9);
  v13 = *(a1 + *(v2 + 20));
  v14 = SBSIsReachabilityEnabled() != 0;
  *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityEnabled) = v14;
  sub_21E13EBE4();
  sub_21E09CF08(a1, v4);
  v15 = sub_21E13F1A4();
  v16 = sub_21E142554();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = *(*&v4[*(v2 + 20)] + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityEnabled) == 0;
    if (*(*&v4[*(v2 + 20)] + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isSystemReachabilityEnabled))
    {
      v20 = 0x64656C62616E65;
    }

    else
    {
      v20 = 0x64656C6261736964;
    }

    if (v19)
    {
      v21 = 0xE800000000000000;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    sub_21E09D19C(v4);
    v22 = sub_21E0E08C0(v20, v21, &v26);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_21DF05000, v15, v16, "SYSTEM REACHABILITY is %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D540B0](v18, -1, -1);
    MEMORY[0x223D540B0](v17, -1, -1);

    return (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return sub_21E09D19C(v4);
  }
}

id sub_21E09C778(id result, uint64_t a2)
{
  if (result)
  {
    result = [result sheetPresentationController];
    if (result)
    {
      v3 = result;
      v4 = [result delegate];
      if (!v4 || (v5 = v4, v6 = *(a2 + *(type metadata accessor for PresentationSheetAssistantModifier() + 20)), swift_unknownObjectRelease(), v5 != v6))
      {
        v6 = *(a2 + *(type metadata accessor for PresentationSheetAssistantModifier() + 20));
        v7 = [v3 delegate];
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        [v3 setDelegate_];
      }

      v8 = [v3 containerView];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 window];

        if (v10)
        {
          v11 = [v10 _rootSheetPresentationController];

          if (v11)
          {
            [v11 _setShouldScaleDownBehindDescendantSheets_];
          }
        }
      }

      SheetTrackingAssistant._sheetPresentationControllerDidInvalidateDetentValues(_:)(v3);

      v12 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isActive;
      result = swift_beginAccess();
      v6[v12] = 1;
    }
  }

  return result;
}

void sub_21E09C914(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PresentationSheetAssistantModifier() + 20));
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isActive;
  swift_beginAccess();
  *(v1 + v2) = 0;
  sub_21E09B5F8(0, 1);
}

uint64_t sub_21E09C978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_21E09CF08(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21E09CF6C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA08);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA10) + 36));
  *v11 = sub_21E09CFD0;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_21E09CF08(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_21E09CF6C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA18);
  v14 = (a3 + *(result + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_21E09D108;
  v14[3] = v12;
  return result;
}

unint64_t sub_21E09CB3C()
{
  result = qword_27CEAC960;
  if (!qword_27CEAC960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEAC960);
  }

  return result;
}

uint64_t sub_21E09CB88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21E10198C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21E142AA4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_21E142314();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21E09D268(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21E09CCDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PresentationSheetAssistantModifier()
{
  result = qword_27CEAC9F0;
  if (!qword_27CEAC9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E09CE1C()
{
  sub_21E09CE94();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SheetTrackingAssistant();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21E09CE94()
{
  if (!qword_280F69030)
  {
    sub_21E140894();
    v0 = sub_21E13F464();
    if (!v1)
    {
      atomic_store(v0, &qword_280F69030);
    }
  }
}

uint64_t sub_21E09CF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationSheetAssistantModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E09CF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationSheetAssistantModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_23()
{
  v1 = type metadata accessor for PresentationSheetAssistantModifier();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E140894();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21E09D120(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PresentationSheetAssistantModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21E09D19C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationSheetAssistantModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E09D1F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E09D268(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21E101914(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_21E09D7C4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21E06A15C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_21E06A15C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_21E09D7C4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_21E09D7C4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_21E09D9E8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E09DA6C()
{
  result = qword_27CEACA30;
  if (!qword_27CEACA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACA30);
  }

  return result;
}

uint64_t NewSaliencyModel.shouldPeekForPresentedEntity.getter()
{
  swift_getKeyPath();
  sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  if (v1)
  {
    swift_getKeyPath();
    v6[4] = v1;
    sub_21E0A1180(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    v2 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v3 = *(v1 + v2);
    swift_getKeyPath();
    v6[1] = v1;
    sub_21DF5706C(v3);
    sub_21E13D3C4();

    swift_beginAccess();
    v6[0] = v3;

    v4 = sub_21DF31604(v6);

    sub_21DF5AF24(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

char *OmnibarContainerView.__allocating_init(model:sheetAssistant:omnibar:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_21E0A020C(a1, a2, a3);

  return v8;
}

void OmnibarContainerView.hostingView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v5 removeFromSuperview];
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    [v1 addSubview_];
    [v7 setHitTestInsets_];
  }
}

void *OmnibarContainerView.hostingView.getter()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*OmnibarContainerView.hostingView.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21E09DF3C;
}

void sub_21E09DF3C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    [*(v5 + v4) removeFromSuperview];
    v6 = *(v5 + v4);
    if (v6)
    {
      v7 = v3[3];
      v8 = v6;
      [v7 addSubview_];
      [v8 setHitTestInsets_];
    }
  }

  free(v3);
}

double OmnibarContainerView.additionalPartnerHorizontalPadding.getter()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

id OmnibarContainerView.additionalPartnerHorizontalPadding.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*OmnibarContainerView.additionalPartnerHorizontalPadding.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21E09E0F0;
}

id sub_21E09E0F0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

char *OmnibarContainerView.init(model:sheetAssistant:omnibar:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_21E0A020C(a1, a2, a3);

  return v4;
}

uint64_t sub_21E09E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  sub_21E1423C4();
  *(v4 + 96) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E09E2AC, v6, v5);
}

uint64_t sub_21E09E2AC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_model);
    v3 = Strong;
    swift_getKeyPath();
    v0[5] = v2;
    sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
    swift_beginAccess();
    v5 = *(v2 + v4);
    swift_getKeyPath();
    v0[8] = v5;
    sub_21E0A1180(&qword_280F6BEE0, type metadata accessor for NewBarModel);

    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__isAskPressed;
    swift_beginAccess();
    LODWORD(v6) = *(v5 + v6);

    if (v6)
    {
      v7 = 0.7;
    }

    else
    {
      v7 = 1.0;
    }

    sub_21DF3ED18(0, &unk_27CEAD970);
    MEMORY[0x223D52580](0.3, 0.825, 0.0);
    v8 = swift_task_alloc();
    *(v8 + 16) = v3;
    *(v8 + 24) = v7;
    sub_21E142684();

    swift_allocObject();
    swift_weakInit();
    *(swift_task_alloc() + 16) = v3;
    sub_21E13D3A4();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_21E09E5B8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    swift_beginAccess();

    swift_getKeyPath();
    sub_21E0A1180(&qword_280F6BEE0, type metadata accessor for NewBarModel);
    sub_21E13D3C4();
  }

  return result;
}

uint64_t sub_21E09E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  sub_21E1423C4();
  *(v4 + 96) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E09E850, v6, v5);
}

uint64_t sub_21E09E850()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_model);
    v3 = Strong;
    swift_getKeyPath();
    v0[5] = v2;
    sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
    swift_beginAccess();
    v5 = *(v2 + v4);
    swift_getKeyPath();
    v0[8] = v5;
    sub_21E0A1180(&qword_280F6BEE0, type metadata accessor for NewBarModel);

    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__isSearchPressed;
    swift_beginAccess();
    LODWORD(v6) = *(v5 + v6);

    if (v6)
    {
      v7 = 0.7;
    }

    else
    {
      v7 = 1.0;
    }

    sub_21DF3ED18(0, &unk_27CEAD970);
    MEMORY[0x223D52580](0.3, 0.825, 0.0);
    v8 = swift_task_alloc();
    *(v8 + 16) = v3;
    *(v8 + 24) = v7;
    sub_21E142684();

    swift_allocObject();
    swift_weakInit();
    *(swift_task_alloc() + 16) = v3;
    sub_21E13D3A4();
  }

  v9 = v0[1];

  return v9();
}

void sub_21E09EB5C(uint64_t a1, void *a2, double a3)
{
  v3 = *(a1 + *a2);
  if (v3)
  {
    v5 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_model);
    swift_getKeyPath();
    sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    v6 = v3;
    sub_21E13D3C4();

    v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
    swift_beginAccess();
    v8 = 0.0;
    if (!*(v5 + v7))
    {
      v8 = a3;
    }

    [v6 setAlpha_];
  }
}

uint64_t sub_21E09EC6C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();
  }

  return result;
}

uint64_t sub_21E09ED34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_21E1423F4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21E1423C4();

  v9 = sub_21E1423B4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  sub_21E0C2E04(0, 0, v7, a3, v10);
}

uint64_t sub_21E09EE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_21E1423C4();
  *(v4 + 72) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E09EEEC, v6, v5);
}

uint64_t sub_21E09EEEC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_model);
      swift_getKeyPath();
      *(v0 + 40) = v4;
      sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
      v5 = v3;

      sub_21E13D3C4();

      v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__shouldShowAskAcmeUI;
      swift_beginAccess();
      LODWORD(v6) = *(v4 + v6);

      v7 = 0.0;
      if (v6)
      {
        v7 = 1.0;
      }

      [v5 setAlpha_];
    }

    swift_allocObject();
    swift_weakInit();
    *(swift_task_alloc() + 16) = v2;
    sub_21E13D3A4();
  }

  v8 = *(v0 + 8);

  return v8();
}

id sub_21E09F120(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, *a1);
  return [v1 setNeedsLayout];
}

void sub_21E09F17C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  [v5 setNeedsLayout];
}

Swift::Void __swiftcall OmnibarContainerView.layoutSubviews()()
{
  v1 = v0;
  v88.receiver = v0;
  v88.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v88, sel_layoutSubviews);
  v2 = [v0 window];
  if (v2)
  {
    isEscapingClosureAtFileLocation = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [isEscapingClosureAtFileLocation bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v0 convertPoint:isEscapingClosureAtFileLocation toCoordinateSpace:{v5, v7}];
    v78 = v20;
    v89.origin.x = v13;
    v89.origin.y = v15;
    v89.size.width = v17;
    v89.size.height = v19;
    Height = CGRectGetHeight(v89);
    v90.origin.x = v5;
    v90.origin.y = v7;
    v79 = v9;
    v90.size.width = v9;
    v90.size.height = v11;
    v22 = CGRectGetHeight(v90);
    v23 = 0.0;
    if (NewSaliencyModel.shouldPeekForPresentedEntity.getter())
    {
      if (Height - v78 - v22 < 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = Height - v78 - v22;
      }

      v25 = *(*&v0[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_sheetAssistant] + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
      swift_getKeyPath();
      aBlock = v25;
      sub_21E0A1180(&qword_280F6C000, type metadata accessor for SheetModel);

      sub_21E13D3C4();

      v26 = *(v25 + 24);

      if (v26 - v24 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v26 - v24;
      }
    }

    v91.origin.x = v5;
    v91.origin.y = v7;
    v91.size.width = v79;
    v91.size.height = v11;
    MinX = CGRectGetMinX(v91);
    v92.origin.x = v5;
    v92.origin.y = v7;
    v92.size.width = v79;
    v92.size.height = v11;
    v93.origin.y = CGRectGetMaxY(v92) + -48.0 - v23 + -12.0;
    v93.size.height = 48.0;
    v93.origin.x = MinX;
    v93.size.width = v79;
    v94 = CGRectInset(v93, 32.0, 0.0);
    x = v94.origin.x;
    y = v94.origin.y;
    width = v94.size.width;
    v31 = v94.size.height;
    v32 = swift_allocObject();
    *(v32 + 2) = v1;
    v32[3] = x;
    v32[4] = y;
    v32[5] = width;
    v32[6] = v31;
    v33 = *&v1[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_sheetAssistant];
    v34 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isActive;
    swift_beginAccess();
    if (*(v33 + v34) == 1)
    {
      v35 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
      swift_beginAccess();
      v36 = *&v1[v35];
      v37 = v1;
      if (v36)
      {
        [v36 setFrame_];
        v36 = 0;
      }
    }

    else
    {
      v38 = objc_opt_self();
      v39 = swift_allocObject();
      v36 = sub_21E0A0D00;
      *(v39 + 16) = sub_21E0A0D00;
      *(v39 + 24) = v32;
      v86 = sub_21E0A0D10;
      v87 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v84 = sub_21E09DB40;
      v85 = &block_descriptor_9;
      v40 = _Block_copy(&aBlock);
      v41 = v1;

      [v38 performWithoutAnimation_];
      _Block_release(v40);
      LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

      if (v38)
      {
        __break(1u);
        return;
      }
    }

    v42 = *&v1[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel];
    if (v42)
    {
      v43 = *&v1[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel];
      if (v43)
      {
        v44 = v42;
        v45 = v43;
        v95.origin.x = v5;
        v95.origin.y = v7;
        v95.size.width = v79;
        v95.size.height = v11;
        v46 = CGRectGetMinX(v95);
        v96.origin.x = v5;
        v96.origin.y = v7;
        v96.size.width = v79;
        v96.size.height = v11;
        v97.origin.y = CGRectGetMaxY(v96) + -48.0 + -12.0;
        v97.origin.x = v46;
        v97.size.width = v79;
        v97.size.height = 48.0;
        v98 = CGRectInset(v97, 32.0, 0.0);
        v47 = v98.origin.x;
        v48 = v98.origin.y;
        v49 = v98.size.width;
        v50 = v98.size.height;
        v51 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding;
        swift_beginAccess();
        v52 = v47 + *&v1[v51];
        v99.origin.x = v47;
        v99.origin.y = v48;
        v99.size.width = v49;
        v99.size.height = v50;
        v53 = CGRectGetMaxX(v99) + -48.0 - *&v1[v51];
        v100.origin.x = v47;
        v100.origin.y = v48;
        v100.size.width = v49;
        v100.size.height = v50;
        MinY = CGRectGetMinY(v100);
        v55 = [v1 traitCollection];
        [v55 displayScale];
        v57 = v56;

        v101.origin.x = v52;
        v101.origin.y = v48;
        v101.size.width = 48.0;
        v101.size.height = 48.0;
        CGRectGetMinX(v101);
        v102.origin.x = v52;
        v102.origin.y = v48;
        v102.size.width = 48.0;
        v102.size.height = 48.0;
        CGRectGetMaxY(v102);
        [v44 sizeThatFits_];
        UIRectCenteredXInRectScale();
        v80 = v59;
        v81 = v58;
        v61 = v60;
        v63 = v62;
        v103.origin.x = v53;
        v103.origin.y = MinY;
        v103.size.width = 48.0;
        v103.size.height = 48.0;
        CGRectGetMinX(v103);
        v104.origin.x = v53;
        v104.origin.y = MinY;
        v104.size.width = 48.0;
        v104.size.height = 48.0;
        CGRectGetMaxY(v104);
        [v45 sizeThatFits_];
        UIRectCenteredXInRectScale();
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v72 = objc_opt_self();
        v73 = swift_allocObject();
        v73[2] = v44;
        v73[3] = v81;
        v73[4] = v80;
        v73[5] = v61;
        v73[6] = v63;
        v73[7] = v45;
        v73[8] = v65;
        v73[9] = v67;
        v73[10] = v69;
        v73[11] = v71;
        v74 = swift_allocObject();
        *(v74 + 16) = sub_21E0A0D50;
        *(v74 + 24) = v73;
        v86 = sub_21E0A13CC;
        v87 = v74;
        aBlock = MEMORY[0x277D85DD0];
        v83 = 1107296256;
        v84 = sub_21E09DB40;
        v85 = &block_descriptor_21;
        v75 = _Block_copy(&aBlock);
        v76 = v44;
        v77 = v45;

        [v72 performWithoutAnimation_];

        _Block_release(v75);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        sub_21DF1F1DC(v36);

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }
    }

    sub_21DF1F1DC(v36);
  }
}

id sub_21E09FA14(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  result = *(a1 + v10);
  if (result)
  {
    return [result setFrame_];
  }

  return result;
}

char *OmnibarContainerView.forFirstBaselineLayout.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

char *OmnibarContainerView.forLastBaselineLayout.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

Swift::Bool __swiftcall OmnibarContainerView.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [v2 convertPoint:v8 toCoordinateSpace:{x, y}];
  v9 = [v8 pointInside:isa withEvent:?];

  return v9;
}

id OmnibarContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OmnibarContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E09FF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v9 = sub_21E1420F4();
  [v8 setText_];

  [v8 setNumberOfLines_];
  [v8 setTextAlignment_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  (*(v5 + 16))(v7, a3, v4);
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == *MEMORY[0x277D78DB0])
  {
    (*(v5 + 8))(v7, v4);
    v11 = [objc_opt_self() systemFontOfSize:10.0 weight:*MEMORY[0x277D74410]];
    v12 = &selRef_labelColor;
LABEL_3:
    v13 = v11;
    [v8 setFont_];

    v14 = [objc_opt_self() *v12];
    [v8 setTextColor_];

    return v8;
  }

  if (v10 == *MEMORY[0x277D78DC0] || v10 == *MEMORY[0x277D78DC8])
  {
    return v8;
  }

  if (v10 == *MEMORY[0x277D78DA8])
  {
    v11 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];
    v12 = &selRef_whiteColor;
    goto LABEL_3;
  }

  if (v10 == *MEMORY[0x277D78DB8])
  {
    return v8;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

char *sub_21E0A020C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_21E13D834();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  MEMORY[0x28223BE20](v8);
  v82 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC478);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v73 - v12;
  v14 = type metadata accessor for Omnibar();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v73 - v19;
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  *&v4[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView] = 0;
  *&v4[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel] = 0;
  *&v4[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel] = 0;
  *&v4[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_pressedAlpha] = 0x3FE6666666666666;
  *&v4[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding] = 0;
  *&v4[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_model] = a1;
  *&v4[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_sheetAssistant] = a2;
  v75 = a3;
  sub_21E0A0E18(a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    v22 = a2;
    sub_21E0A0E88(v13);
  }

  else
  {
    sub_21E02C908(v13, v20);
    sub_21E02C8A4(v20, v17);
    v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC4D0));

    v24 = a2;
    v25 = sub_21E13F974();
    sub_21E07FFF0(v20);
    swift_beginAccess();
    v26 = *&v4[v21];
    *&v4[v21] = v25;
  }

  v27 = a2;
  v89.receiver = v4;
  v89.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v89, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v30 = *&v28[v29];
  v31 = v28;
  [v30 removeFromSuperview];
  v32 = *&v28[v29];
  if (v32)
  {
    v33 = v32;
    [v31 addSubview_];
    [v33 setHitTestInsets_];
  }

  v73[1] = sub_21DF3ED18(0, &qword_280F68C20);
  v34 = sub_21E1426B4();
  v76 = v27;
  if (!v34)
  {
    v34 = [objc_opt_self() mainBundle];
  }

  v35 = v34;
  v36 = sub_21E13D0D4();
  v38 = v37;

  swift_getKeyPath();
  v39 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v88 = a1;
  sub_21E0A1180(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  ObjectType = v39;
  sub_21E13D3C4();

  v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v41 = v84;
  v42 = *(v84 + 16);
  v80 = v40;
  v44 = v82;
  v43 = v83;
  v79 = v42;
  v42(v82, a1 + v40, v83);
  v45 = sub_21E09FF1C(v36, v38, v44);

  v46 = *(v41 + 8);
  v84 = v41 + 8;
  v78 = v46;
  v46(v44, v43);
  [v45 setIsAccessibilityElement_];
  v47 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel;
  v48 = *&v31[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel];
  *&v31[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel] = v45;
  v49 = v45;

  v50 = v31;
  v74 = v49;
  [v50 addSubview_];
  v77 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_model;
  v51 = *&v50[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_model];
  swift_getKeyPath();
  v87 = v51;

  sub_21E13D3C4();

  v52 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  LOBYTE(v52) = *(v51 + v52);

  v53 = 0.0;
  if ((v52 & 1) == 0)
  {
    v54 = *&v50[v77];
    swift_getKeyPath();
    v86 = v54;

    sub_21E13D3C4();

    v55 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__shouldShowAskAcmeUI;
    swift_beginAccess();
    LODWORD(v55) = *(v54 + v55);

    v53 = 0.0;
    if (v55)
    {
      v53 = 1.0;
    }
  }

  v56 = *&v31[v47];
  if (v56)
  {
    [v56 setAlpha_];
  }

  swift_getKeyPath();
  v85 = a1;
  sub_21E13D3C4();

  v58 = v82;
  v57 = v83;
  v79(v82, a1 + v80, v83);
  sub_21E13D7F4();
  v78(v58, v57);
  v59 = sub_21E1426B4();
  if (!v59)
  {
    v59 = [objc_opt_self() mainBundle];
  }

  v60 = v59;
  v61 = sub_21E13D0D4();
  v63 = v62;

  swift_getKeyPath();
  v85 = a1;
  sub_21E13D3C4();

  v64 = v82;
  v65 = v83;
  v79(v82, a1 + v80, v83);
  v66 = sub_21E09FF1C(v61, v63, v64);

  v78(v64, v65);
  [v66 setIsAccessibilityElement_];
  v67 = *&v50[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel];
  *&v50[OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel] = v66;
  v68 = v66;

  [v50 addSubview_];
  swift_allocObject();
  v69 = swift_weakInit();
  MEMORY[0x28223BE20](v69);
  sub_21E13D3A4();

  swift_allocObject();
  v70 = swift_weakInit();
  MEMORY[0x28223BE20](v70);
  sub_21E13D3A4();

  swift_allocObject();
  v71 = swift_weakInit();
  MEMORY[0x28223BE20](v71);
  sub_21E13D3A4();

  sub_21E0A0E88(v75);

  swift_unknownObjectWeakAssign();

  return v50;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}