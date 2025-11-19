void sub_20BE4B3A4()
{
  sub_20B87D5A8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE4B4A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BE4B50C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 144) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v8 = OBJC_IVAR____TtC9SeymourUI26CatalogTipSummaryPresenter_serviceSubscription;
  v9 = sub_20C135734();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + 64) = v11[0];
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B52E424(v11, v4 + 104);
  return v4;
}

id sub_20BE4B7E4()
{
  result = [objc_opt_self() effectWithStyle_];
  qword_27C76F6C0 = result;
  return result;
}

char *sub_20BE4B8E8(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView;
  type metadata accessor for PaletteContainerView.ContainerView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_contentInsets];
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  *(v4 + 1) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  *&v1[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView] = v6;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PaletteContainerView();
  v7 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setClipsToBounds_];
  v8 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView;
  [v7 addSubview_];
  v9 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView;
  swift_unknownObjectWeakAssign();
  v10 = [*&v7[v8] contentView];
  [v10 addSubview_];

  return v7;
}

id sub_20BE4BAE4()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PaletteContainerView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView];
  [v0 bounds];
  return [v2 setFrame_];
}

id sub_20BE4BC50(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t NavigationIntent.hash(into:)()
{
  v1 = sub_20C1344C4();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v40 - v6;
  v7 = sub_20C134DC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C139144();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BE4CDB8(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v12 + 32))(v14, v17, v11);
      MEMORY[0x20F2F58E0](3);
      sub_20BE4D1C8(&qword_27C76F708, MEMORY[0x277D54298]);
      sub_20C13C7C4();
      return (*(v12 + 8))(v14, v11);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v20 = *v17;
      MEMORY[0x20F2F58E0](4);
      MEMORY[0x20F2F58E0](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v24 = *(v8 + 16);
        v22 = v8 + 16;
        v23 = v24;
        v25 = (*(v22 + 64) + 32) & ~*(v22 + 64);
        v45 = v20;
        v26 = v20 + v25;
        v27 = *(v22 + 56);
        do
        {
          v23(v10, v26, v7);
          sub_20BE4D1C8(&qword_27C76F700, MEMORY[0x277D510B8]);
          sub_20C13C7C4();
          (*(v22 - 8))(v10, v7);
          v26 += v27;
          --v21;
        }

        while (v21);
      }
    }

    else
    {
      v29 = *v17;
      v30 = v17[8];
      v31 = *(v17 + 3);
      v32 = *(v17 + 4);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0);
      v34 = v42;
      sub_20BD3113C(&v17[*(v33 + 80)], v42);
      MEMORY[0x20F2F58E0](5);
      sub_20C13E184();
      if (v30 != 1)
      {
        MEMORY[0x20F2F58E0](v29);
      }

      v36 = v44;
      v35 = v45;
      v37 = v43;
      sub_20C13E184();
      if (v31)
      {
        sub_20C13CA64();
      }

      v38 = 0.0;
      if (v32 != 0.0)
      {
        v38 = v32;
      }

      MEMORY[0x20F2F5910](*&v38);
      sub_20BE4CE1C(v34, v37);
      if ((*(v36 + 48))(v37, 1, v35) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v39 = v41;
        (*(v36 + 32))(v41, v37, v35);
        sub_20C13E184();
        sub_20BE4D1C8(&qword_27C76EE30, MEMORY[0x277D50820]);
        sub_20C13C7C4();
        (*(v36 + 8))(v39, v35);
      }

      return sub_20B520158(v34, &qword_27C766E88);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x20F2F58E0](v19);
    return sub_20C13E184();
  }
}

uint64_t NavigationIntent.hashValue.getter()
{
  sub_20C13E164();
  NavigationIntent.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BE4C364()
{
  sub_20C13E164();
  NavigationIntent.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BE4C3A8()
{
  sub_20C13E164();
  NavigationIntent.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI16NavigationIntentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v3 = sub_20C1344C4();
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  MEMORY[0x28223BE20](v3);
  v82 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F720);
  MEMORY[0x28223BE20](v84);
  v87 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v90 = &v82 - v12;
  v13 = sub_20C139144();
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x28223BE20](v13);
  v88 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v82 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v82 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v82 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v82 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F728);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v82 - v34;
  v37 = &v82 + *(v36 + 56) - v34;
  sub_20BE4CDB8(v93, &v82 - v34);
  sub_20BE4CDB8(a2, v37);
  v38 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v40 = v35;
      if (EnumCaseMultiPayload != 1)
      {
        sub_20BE4CDB8(v35, v26);
        v49 = swift_getEnumCaseMultiPayload();
        if (v49 == 2)
        {
          v41 = *v26;
          goto LABEL_18;
        }

        goto LABEL_26;
      }

      sub_20BE4CDB8(v35, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = *v29;
LABEL_18:
        v50 = v41 ^ *v37;
        sub_20B7897CC(v40);
        v43 = v50 ^ 1;
        return v43 & 1;
      }
    }

    else
    {
      v40 = v35;
      sub_20BE4CDB8(v35, v32);
      if (!swift_getEnumCaseMultiPayload())
      {
        v41 = *v32;
        goto LABEL_18;
      }
    }

LABEL_26:
    sub_20B520158(v40, &qword_27C76F728);
LABEL_27:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v40 = v35;
      sub_20BE4CDB8(v35, v20);
      v42 = *v20;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_26;
      }

      v43 = sub_20BB81EE0(v42, *v37);

      goto LABEL_15;
    }

    sub_20BE4CDB8(v35, v17);
    v51 = *v17;
    v52 = *(v17 + 2);
    v53 = *(v17 + 3);
    v54 = *(v17 + 4);
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_20B520158(&v17[v55], &qword_27C766E88);

      v40 = v38;
      goto LABEL_26;
    }

    v93 = v52;
    v56 = v17[8];
    v57 = *v37;
    v58 = v37[8];
    v59 = *(v37 + 3);
    v92 = *(v37 + 2);
    v60 = *(v37 + 4);
    sub_20BD3113C(&v17[v55], v90);
    v61 = &v37[v55];
    v62 = v89;
    sub_20BD3113C(v61, v89);
    if (v56)
    {
      v63 = v38;
      if (!v58)
      {
LABEL_22:

        sub_20B520158(v62, &qword_27C766E88);
        v64 = v90;
LABEL_48:
        v74 = &qword_27C766E88;
LABEL_49:
        sub_20B520158(v64, v74);
LABEL_50:
        sub_20B7897CC(v63);
        goto LABEL_27;
      }
    }

    else
    {
      if (v51 == v57)
      {
        v66 = v58;
      }

      else
      {
        v66 = 1;
      }

      v63 = v38;
      if (v66)
      {
        goto LABEL_22;
      }
    }

    if (v53)
    {
      if (v59)
      {
        v67 = v90;
        if (v93 == v92 && v53 == v59)
        {
        }

        else
        {
          v68 = sub_20C13DFF4();

          if ((v68 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_43;
      }

      v67 = v90;
    }

    else
    {
      v67 = v90;
      if (!v59)
      {
LABEL_43:
        if (v54 == v60)
        {
          v69 = *(v84 + 48);
          v70 = v87;
          sub_20BE4CE1C(v67, v87);
          sub_20BE4CE1C(v62, v70 + v69);
          v71 = v85;
          v72 = *(v86 + 48);
          if (v72(v70, 1, v85) == 1)
          {
            sub_20B520158(v62, &qword_27C766E88);
            v73 = v87;
            sub_20B520158(v67, &qword_27C766E88);
            if (v72(v73 + v69, 1, v71) == 1)
            {
              sub_20B520158(v73, &qword_27C766E88);
              goto LABEL_55;
            }
          }

          else
          {
            v75 = v83;
            sub_20BE4CE1C(v70, v83);
            if (v72(v70 + v69, 1, v71) != 1)
            {
              v76 = v86;
              v77 = v70 + v69;
              v78 = v82;
              (*(v86 + 32))(v82, v77, v71);
              sub_20BE4D1C8(&qword_27C76F730, MEMORY[0x277D50820]);
              v79 = v70;
              v80 = sub_20C13C894();
              v81 = *(v76 + 8);
              v81(v78, v71);
              sub_20B520158(v89, &qword_27C766E88);
              sub_20B520158(v67, &qword_27C766E88);
              v81(v75, v71);
              sub_20B520158(v79, &qword_27C766E88);
              if ((v80 & 1) == 0)
              {
                goto LABEL_50;
              }

LABEL_55:
              sub_20B7897CC(v63);
              v43 = 1;
              return v43 & 1;
            }

            sub_20B520158(v62, &qword_27C766E88);
            v73 = v87;
            sub_20B520158(v67, &qword_27C766E88);
            (*(v86 + 8))(v75, v71);
          }

          v74 = &qword_27C76F720;
          v64 = v73;
          goto LABEL_49;
        }

LABEL_47:
        sub_20B520158(v62, &qword_27C766E88);
        v64 = v67;
        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  v40 = v35;
  sub_20BE4CDB8(v35, v23);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v91 + 8))(v23, v92);
    goto LABEL_26;
  }

  v44 = v91;
  v45 = v88;
  v46 = v37;
  v47 = v92;
  (*(v91 + 32))(v88, v46, v92);
  v43 = MEMORY[0x20F2F08A0](v23, v45);
  v48 = *(v44 + 8);
  v48(v45, v47);
  v48(v23, v47);
LABEL_15:
  sub_20B7897CC(v40);
  return v43 & 1;
}

uint64_t type metadata accessor for NavigationIntent()
{
  result = qword_2811035F8;
  if (!qword_2811035F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE4CDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE4CE1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BE4CED4()
{
  sub_20BE4CFAC();
  if (v0 <= 0x3F)
  {
    sub_20BE4CFDC(319, &qword_281103B38, MEMORY[0x277D54298]);
    if (v1 <= 0x3F)
    {
      sub_20BE4CFDC(319, &qword_2811005B0, sub_20BE4D028);
      if (v2 <= 0x3F)
      {
        sub_20BE4D080(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20BE4CFAC()
{
  result = qword_281100590;
  if (!qword_281100590)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_281100590);
  }

  return result;
}

void sub_20BE4CFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20BE4D028()
{
  if (!qword_2811005A8)
  {
    sub_20C134DC4();
    v0 = sub_20C13CD04();
    if (!v1)
    {
      atomic_store(v0, &qword_2811005A8);
    }
  }
}

void sub_20BE4D080(uint64_t a1)
{
  if (!qword_2811004B8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76F718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766E88);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2811004B8);
    }
  }
}

uint64_t sub_20BE4D1C8(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_20BE4D234()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_tracks);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0);
  v2 = sub_20C132164();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14F980;
  (*(v3 + 16))(v5 + v4, v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset, v2);
  v6 = *(v1 + 16);

  v9 = sub_20BC0746C(0, v6 + 1, 0, MEMORY[0x277D84F90]);

  sub_20B8D999C(v7);
  sub_20B8D9970(v5);

  return v9;
}

uint64_t sub_20BE4D37C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v48 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v34 - v6;
  v41 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
  v7 = sub_20C132264();
  v35 = v7;
  v8 = *(v7 - 8);
  v46 = *(v8 + 72);
  v39 = *(v8 + 80);
  v38 = ((v39 + 32) & ~v39) + 2 * v46;
  v9 = (v39 + 32) & ~v39;
  v37 = v9;
  v10 = swift_allocObject();
  v36 = xmmword_20C14F320;
  *(v10 + 16) = xmmword_20C14F320;
  v11 = v10 + v9;
  v12 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel;
  swift_beginAccess();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v14 = *(*(v13 - 8) + 16);
  v14(v11, v1 + v12, v13);
  v15 = *MEMORY[0x277CE9CD8];
  v34 = *(v8 + 104);
  v34(v11, v15, v7);
  v16 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel;
  swift_beginAccess();
  v17 = v46;
  v14(v11 + v46, v1 + v16, v13);
  v18 = v11 + v17;
  v19 = v35;
  v20 = v34;
  v34(v18, v15, v35);
  v21 = v1;
  v22 = v47;
  sub_20C1320F4();

  v23 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  swift_beginAccess();
  v24 = v42;
  sub_20B6B5ADC(v1 + v23, v42);
  v25 = swift_allocObject();
  *(v25 + 16) = v36;
  v26 = v25 + v37;
  v27 = v43;
  (*(v48 + 16))(v25 + v37, v22, v43);
  v20(v26, *MEMORY[0x277CE9CE8], v19);
  v28 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  swift_beginAccess();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v30 = v46;
  (*(*(v29 - 8) + 16))(v26 + v46, v21 + v28, v29);
  v20(v26 + v30, *MEMORY[0x277CE9CE0], v19);
  v31 = v44;
  sub_20B7E27F8(v44);

  sub_20B593250(v24);
  sub_20C1323A4();
  sub_20C131FF4();
  v32 = *(v48 + 8);
  v32(v31, v27);
  return (v32)(v47, v27);
}

uint64_t sub_20BE4D868(uint64_t a1, void *a2, float a3, double a4)
{
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20C1321F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - v16;
  v18 = v4 + *a2;
  swift_beginAccess();
  if (a4 <= 0.0)
  {
    v20 = 0;
    v22 = LODWORD(a3);
  }

  else
  {
    v29 = a3;
    v27[3] = 0;
    v19 = a1;
    v20 = 1;
    v28 = 1;
    (*(v11 + 16))(v13, v19, v10);
    sub_20C132ED4();
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20C14F980;
    (*(v15 + 32))(v22 + v21, v17, v14);
  }

  v23 = v18 + *(type metadata accessor for ContainerNodeBuilder() + 32);
  v24 = *v23;
  *v23 = v22;
  v25 = *(v23 + 8);
  *(v23 + 8) = v20;
  sub_20B584060(v24, v25);
  return swift_endAccess();
}

void *sub_20BE4DB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v244 = a3;
  v222 = a2;
  v236 = a1;
  v180[3] = *v3;
  v235 = sub_20C1321A4();
  v241 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v234 = v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_20C132194();
  v240 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v232 = v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_20C132344();
  v238 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v214 = (v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v231 = sub_20C132364();
  v239 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v228 = v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v229 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v215 = v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v216 = v180 - v10;
  MEMORY[0x28223BE20](v11);
  v217 = v180 - v12;
  MEMORY[0x28223BE20](v13);
  v219 = v180 - v14;
  MEMORY[0x28223BE20](v15);
  v218 = v180 - v16;
  MEMORY[0x28223BE20](v17);
  v209 = v180 - v18;
  MEMORY[0x28223BE20](v19);
  v210 = v180 - v20;
  MEMORY[0x28223BE20](v21);
  v211 = v180 - v22;
  MEMORY[0x28223BE20](v23);
  v212 = v180 - v24;
  MEMORY[0x28223BE20](v25);
  v213 = v180 - v26;
  v199 = sub_20C1321D4();
  v197 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v196 = v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v203 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v195 = v180 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v200 = v180 - v30;
  MEMORY[0x28223BE20](v31);
  v201 = v180 - v32;
  MEMORY[0x28223BE20](v33);
  v202 = v180 - v34;
  v205 = sub_20C13A814();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v191 = v180 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_20C132144();
  v185 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v189 = v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_20C132154();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v184 = v180 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C132EE4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v180 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v227 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v194 = v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v226 = v180 - v45;
  v46 = sub_20C132254();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = v180 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = v3;
  v50 = v3 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  if (qword_27C760740 != -1)
  {
    swift_once();
  }

  v51 = *algn_27C79A30C;
  v52 = flt_27C79A314;
  *&v190 = flt_27C79A314;
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0) + 48);
  v54 = *MEMORY[0x277CE9C98];
  v55 = sub_20C132234();
  (*(*(v55 - 8) + 104))(v49, v54, v55);
  *&v49[v53] = 1099956224;
  v56 = *MEMORY[0x277CE9CB8];
  v57 = *(v47 + 104);
  v192 = v47 + 104;
  v193 = v57;
  v225 = v46;
  v57(v49, v56, v46);
  v50[1] = 1;
  sub_20C132ED4();
  v58 = v226;
  sub_20C132104();
  v224 = *(v39 + 8);
  v237 = v39 + 8;
  v224(v41, v38);
  v59 = type metadata accessor for ContainerNodeBuilder();
  v243 = v41;
  v60 = v59;
  sub_20C131F24();
  v223 = v38;
  v61 = *(v227 + 8);
  v208 = v227 + 8;
  v207 = v61;
  v61(v58, v42);
  *v50 = 1;
  v62 = sub_20C131F44();
  v63 = &v50[v60[7]];
  *v63 = v62;
  v63[8] = v64;
  v65 = sub_20C131FD4();
  v66 = &v50[v60[8]];
  *v66 = v65;
  v66[8] = v67;
  v68 = sub_20C131FE4();
  v69 = &v50[v60[9]];
  *v69 = v68;
  *(v69 + 1) = v70;
  v69[20] = v71;
  *(v69 + 4) = v72;
  v69[21] = v73;
  v74 = sub_20C132384();
  v75 = &v50[v60[10]];
  *v75 = v74 & 0xFFFFFFFFFFLL;
  v75[12] = v76;
  *(v75 + 2) = v77;
  v75[13] = 0;
  v78 = sub_20C132004();
  v206 = v42;
  v80 = v79;
  v82 = v81;
  LOBYTE(v53) = v83;
  v84 = *(v47 + 8);
  v186 = v47 + 8;
  v187 = v84;
  v84(v49, v225);
  v85 = v60[11];
  v180[2] = v50;
  v86 = &v50[v85];
  *v86 = v78;
  *(v86 + 1) = v80;
  *(v86 + 2) = v82;
  v86[24] = v53;
  v181 = v49;
  v87 = v242;
  v88 = v242 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent;
  *(v88 + 1) = 0;
  v180[1] = v88;
  swift_unknownObjectWeakInit();
  v89 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset;
  v198 = objc_opt_self();
  v90 = [v198 whiteColor];
  (*(v182 + 104))(v184, *MEMORY[0x277CE9BD8], v183);
  (*(v185 + 104))(v189, *MEMORY[0x277CE9BC8], v188);
  v91 = swift_allocObject();
  *(v91 + 16) = 0x69662E6F746F6870;
  *(v91 + 24) = 0xEA00000000006C6CLL;
  *(v91 + 40) = 0;
  *(v91 + 48) = 0;
  *(v91 + 32) = v90;
  *(v91 + 56) = 1;
  *(v91 + 64) = 0x69662E6F746F6870;
  *(v91 + 72) = 0xEA00000000006C6CLL;
  sub_20C132124();
  v92 = *(v204 + 104);
  v93 = v191;
  v94 = v205;
  v92(v191, *MEMORY[0x277D4EF48], v205);
  LOBYTE(v245) = 0;
  sub_20C13A384();
  v92(v93, *MEMORY[0x277D4EF50], v94);
  LOBYTE(v245) = 1;
  sub_20C13A384();
  v95 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_catalogWorkout;
  v96 = sub_20C1344C4();
  v204 = *(v96 - 8);
  v97 = *(v204 + 16);
  v189 = v95;
  v205 = v96;
  v97(&v87[v95], v236);
  v188 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_stringBuilder;
  sub_20B78290C(v244, &v87[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_stringBuilder]);
  v98 = sub_20C132164();
  v184 = *(v98 - 8);
  v99 = *(v184 + 2);
  v191 = v89;
  v100 = v196;
  v185 = v98;
  v99(v196, &v87[v89]);
  v101 = v197;
  v102 = v199;
  (v197[13])(v100, *MEMORY[0x277CE9C40], v199);
  v103 = v243;
  sub_20C132ED4();
  v104 = v195;
  sub_20C1320E4();
  v105 = v103;
  v106 = v223;
  v107 = v224;
  v224(v105, v223);
  v101[1](v100, v102);
  sub_20C1323A4();
  v108 = v200;
  v109 = v220;
  sub_20C131FF4();
  v110 = v203;
  v112 = v203 + 8;
  v111 = *(v203 + 1);
  v111(v104, v109);
  sub_20C1323F4();
  v245 = v113;
  v246 = v114;
  v115 = v201;
  sub_20C131F54();
  v111(v108, v109);
  v116 = v202;
  sub_20C131F84();
  v195 = v112;
  v190 = v111;
  v111(v115, v109);
  v117 = *(v110 + 4);
  v183 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  v117(&v87[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image], v116, v109);
  v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EBB0) + 48);
  v119 = *MEMORY[0x277CE9CB0];
  v120 = sub_20C132244();
  v121 = v181;
  (*(*(v120 - 8) + 104))(v181, v119, v120);
  *&v121[v118] = 1090519040;
  v122 = v225;
  v193(v121, *MEMORY[0x277CE9CC8], v225);
  v123 = v243;
  sub_20C132ED4();
  v124 = v194;
  sub_20C132104();
  v107(v123, v106);
  v125 = v107;
  v187(v121, v122);
  v225 = COERCE_UNSIGNED_INT(((960.0 - (v51 + v52)) + -18.0) + -96.0);
  sub_20C1323A4();
  v126 = v226;
  v127 = v206;
  sub_20C131FF4();
  v207(v124, v127);
  v128 = *(v227 + 32);
  v194 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer;
  v128(&v87[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer], v126, v127);
  v129 = sub_20B9B2B40();
  v130 = [v129 fontName];

  v131 = sub_20C13C954();
  v133 = v132;

  v134 = v214;
  *v214 = v131;
  v134[1] = v133;
  LODWORD(v199) = *MEMORY[0x277CE9D30];
  v135 = *(v238 + 104);
  v238 += 104;
  v197 = v135;
  (v135)(v134);
  v136 = v228;
  sub_20C132354();
  v137 = v243;
  sub_20C132ED4();
  sub_20C1323D4();
  v138 = v209;
  sub_20C1320B4();
  v125(v137, v106);
  v139 = *(v239 + 8);
  v239 += 8;
  v196 = v139;
  (v139)(v136, v231);
  sub_20C1323A4();
  v140 = v210;
  v141 = v221;
  sub_20C131FF4();
  v142 = *(v229 + 8);
  v142(v138, v141);
  LODWORD(v227) = *MEMORY[0x277CE9C18];
  v143 = v240;
  v144 = *(v240 + 104);
  v209 = (v240 + 104);
  v226 = v144;
  v146 = v232;
  v145 = v233;
  (v144)(v232);
  v147 = v211;
  sub_20C132094();
  v148 = *(v143 + 8);
  v240 = v143 + 8;
  v203 = v148;
  (v148)(v146, v145);
  v142(v140, v141);
  LODWORD(v210) = *MEMORY[0x277CE9C20];
  v149 = v241;
  v150 = *(v241 + 104);
  v201 = (v241 + 104);
  v202 = v150;
  v151 = v234;
  v152 = v235;
  (v150)(v234);
  v153 = v212;
  sub_20C132084();
  v154 = *(v149 + 8);
  v241 = v149 + 8;
  v200 = v154;
  (v154)(v151, v152);
  v142(v147, v141);
  sub_20C1323D4();
  v155 = v213;
  sub_20C1320C4();
  v142(v153, v141);
  v229 = *(v229 + 32);
  (v229)(v242 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel, v155, v141);
  v156 = sub_20B9B2CA0();
  v157 = [v156 fontName];

  v158 = sub_20C13C954();
  v160 = v159;

  *v134 = v158;
  v134[1] = v160;
  (v197)(v134, v199, v230);
  v161 = v228;
  v162 = v142;
  sub_20C132354();
  v163 = v243;
  sub_20C132ED4();
  sub_20C1323D4();
  v164 = v215;
  sub_20C1320B4();
  v224(v163, v223);
  (v196)(v161, v231);
  v165 = [v198 lightGrayColor];
  sub_20C1323E4();
  v166 = v216;
  sub_20C1320C4();
  v142(v164, v141);
  sub_20C1323A4();
  v167 = v217;
  sub_20C131FF4();
  v142(v166, v141);
  v169 = v232;
  v168 = v233;
  (v226)(v232, v227, v233);
  v170 = v219;
  sub_20C132094();
  (v203)(v169, v168);
  v142(v167, v141);
  v171 = v234;
  v172 = v235;
  (v202)(v234, v210, v235);
  v173 = v242;
  v174 = v218;
  sub_20C132084();
  (v200)(v171, v172);
  v162(v170, v141);
  (v229)(v173 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel, v174, v141);
  v175 = v236;
  v176 = sub_20C134364();
  MEMORY[0x28223BE20](v176);
  v177 = v222;
  v180[-2] = v222;
  v178 = sub_20BDF22DC(MEMORY[0x277D84F98], sub_20BE51B54, &v180[-4], v176);

  sub_20B815F44(v244);
  (*(v204 + 8))(v175, v205);
  *(v173 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_tracks) = v178;
  __swift_destroy_boxed_opaque_existential_1(v177);
  return v173;
}

uint64_t sub_20BE4F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772B60);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v35 - v5;
  v49 = sub_20C133474();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = v6;
  v46 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132144();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C132154();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C132164();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137C24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v35 - v16;
  v18 = sub_20C132C14();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v53 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  sub_20C133444();
  sub_20C138044();
  sub_20C138064();
  sub_20C137BB4();

  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_20B9E801C(v17);
  }

  (*(v19 + 32))(v53, v17, v18);
  v35[1] = sub_20C132B24();
  v35[0] = v22;
  (*(v36 + 104))(v40, *MEMORY[0x277CE9BD8], v37);
  (*(v38 + 104))(v42, *MEMORY[0x277CE9BC8], v39);
  sub_20B51CC64(v48, v54);
  v24 = v46;
  v23 = v47;
  v25 = v49;
  (*(v47 + 16))(v46, v50, v49);
  v26 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v27 = swift_allocObject();
  sub_20B52E424(v54, v27 + 16);
  (*(v23 + 32))(v27 + v26, v24, v25);
  v28 = v41;
  sub_20C132124();
  v29 = sub_20C132134();
  v31 = v30;
  v32 = v43;
  v33 = v51;
  v34 = v45;
  (*(v43 + 16))(v51, v28, v45);
  (*(v32 + 56))(v33, 0, 1, v34);
  sub_20C0C1218(v33, v29, v31);
  (*(v32 + 8))(v28, v34);
  return (*(v19 + 8))(v53, v18);
}

uint64_t sub_20BE4FCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v5 = sub_20C137C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE4FE60, 0, 0);
}

uint64_t sub_20BE4FE60()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 128);
  v3 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_20C133444();
  sub_20C138B14();
  (*(v4 + 8))(v3, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_20BE50394;
  *(v6 + 24) = 0;
  (*(v2 + 16))(v15, v1, v14);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v15, v14);
  v9 = (v8 + ((v16 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v9 = sub_20BE51CF0;
  v9[1] = v6;
  v10 = MEMORY[0x277CC9318];
  sub_20C137C94();
  (*(v2 + 8))(v1, v14);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *(v11 + 16) = "SeymourUI/MusicTrackNodeBuilder.swift";
  *(v11 + 24) = 37;
  *(v11 + 32) = 2;
  *(v11 + 40) = 92;
  *(v11 + 48) = v17;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_20BE500FC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BE51DB4, v11, v10);
}

uint64_t sub_20BE500FC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_20BE502EC;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = sub_20BE5024C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BE5024C()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_20BE502EC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

void sub_20BE50394(UIImage **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = UIImagePNGRepresentation(*a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_20C132C54();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    sub_20B6A3954();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }
}

uint64_t sub_20BE50428()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent);
  v1 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_catalogWorkout;
  v2 = sub_20C1344C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B815F44(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_stringBuilder);

  v3 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset;
  v4 = sub_20C132164();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__persistentOverlayEnabled;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__reducedOverlayAnimations, v13);
  return v0;
}

uint64_t sub_20BE50688()
{
  sub_20BE50428();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MusicTrackNodeBuilder()
{
  result = qword_27C76F748;
  if (!qword_27C76F748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE50734()
{
  type metadata accessor for ContainerNodeBuilder();
  if (v0 <= 0x3F)
  {
    sub_20C1344C4();
    if (v1 <= 0x3F)
    {
      sub_20C132164();
      if (v2 <= 0x3F)
      {
        sub_20B592D08();
        if (v3 <= 0x3F)
        {
          sub_20B792F2C();
          if (v4 <= 0x3F)
          {
            sub_20B592C74();
            if (v5 <= 0x3F)
            {
              sub_20B52432C();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_20BE5094C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_20BE5099C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1321D4();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v63 - v8;
  v73 = sub_20C132164();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v83 = *(v14 - 8);
  v15 = v83;
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v63 - v19;
  v70 = a1;
  v20 = sub_20B9B2E00();
  v82 = sub_20B9B2FC0();
  v21 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel;
  swift_beginAccess();
  v69 = *(v15 + 16);
  v69(v17, v1 + v21, v14);
  v74 = v20;
  v22 = [v20 string];
  sub_20C13C954();

  v23 = v66;
  sub_20C132074();

  v24 = v83;
  v68 = *(v83 + 8);
  v68(v17, v14);
  swift_beginAccess();
  v25 = *(v24 + 40);
  v83 = v24 + 40;
  v67 = v25;
  v25(v2 + v21, v23, v14);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel;
  swift_beginAccess();
  v69(v17, v2 + v26, v14);
  v27 = [v82 string];
  sub_20C13C954();

  sub_20C132074();

  v68(v17, v14);
  v28 = v2;
  swift_beginAccess();
  v67(v2 + v26, v23, v14);
  swift_endAccess();
  type metadata accessor for SessionMusicTrack();
  sub_20C138044();
  sub_20C138064();
  v29 = v71;
  sub_20C137BB4();

  v30 = sub_20C132C14();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_20B9E801C(v29);
  }

  else
  {
    v32 = sub_20C132B24();
    v34 = v33;
    (*(v31 + 8))(v29, v30);
    v35 = *(v28 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_tracks);
    if (*(v35 + 16))
    {
      v36 = sub_20B65AA60(v32, v34);
      v38 = v37;

      if (v38)
      {
        v39 = v72;
        v40 = *(v35 + 56) + *(v72 + 72) * v36;
        v41 = *(v72 + 16);
        v42 = v64;
        v43 = v73;
        v41(v64, v40, v73);
        v44 = v65;
        (*(v39 + 32))(v65, v42, v43);
        v45 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
        swift_beginAccess();
        v46 = v79;
        v47 = v75;
        (*(v79 + 16))(v75, v28 + v45, v81);
        v48 = v76;
        v41(v76, v44, v43);
        v50 = v77;
        v49 = v78;
        (*(v77 + 104))(v48, *MEMORY[0x277CE9C40], v78);
        sub_20C1320D4();
        (*(v50 + 8))(v48, v49);
        v51 = v81;
        (*(v46 + 8))(v47, v81);
        (*(v39 + 8))(v65, v43);
        swift_beginAccess();
        (*(v46 + 40))(v28 + v45, v80, v51);
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v52 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  swift_beginAccess();
  v53 = v79;
  v54 = v75;
  v55 = v81;
  (*(v79 + 16))(v75, v28 + v52, v81);
  v56 = v76;
  (*(v72 + 16))(v76, v28 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset, v73);
  v58 = v77;
  v57 = v78;
  (*(v77 + 104))(v56, *MEMORY[0x277CE9C40], v78);
  v59 = v80;
  sub_20C1320D4();
  (*(v58 + 8))(v56, v57);
  (*(v53 + 8))(v54, v55);
  swift_beginAccess();
  (*(v53 + 40))(v28 + v52, v59, v55);
LABEL_8:
  swift_endAccess();
  v60 = v28 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v61 = *(v60 + 8);
    ObjectType = swift_getObjectType();
    (*(v61 + 8))(ObjectType, v61);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_20BE51328(double a1)
{
  v2 = v1;
  v4 = sub_20C132EE4();
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F758);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v7;
  v8 = sub_20C1321F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  (*(v16 + 16))(&v43 - v18, v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__reducedOverlayAnimations, v15, v17);
  sub_20C13A344();
  (*(v16 + 8))(v19, v15);
  if (v52)
  {
    a1 = 0.0;
  }

  sub_20C1322D4();
  sub_20C1322E4();
  sub_20C1322C4();
  sub_20C1322A4();
  v20 = *MEMORY[0x277CE9C78];
  v21 = *(v9 + 104);
  v21(v14, v20, v8);
  sub_20BE4D868(v14, &OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder, 1.0, a1);
  v47 = *(v9 + 8);
  v47(v14, v8);
  sub_20C132434();
  v23 = v22;
  v25 = v24;
  sub_20C132424();
  v27 = v26;
  v29 = v28;
  sub_20C1322D4();
  sub_20C1322E4();
  sub_20C1322C4();
  sub_20C1322A4();
  v21(v11, v20, v8);
  v30 = v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  swift_beginAccess();
  if (a1 <= 0.0)
  {
    v35 = 0;
    v34 = v23 | (v25 << 32);
  }

  else
  {
    v50 = v23;
    v51 = v25;
    v48 = v27 | (v29 << 32);
    v49 = 0;
    (*(v9 + 16))(v14, v11, v8);
    sub_20C132ED4();
    sub_20B7E249C();
    v31 = v44;
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F760);
    v32 = v45;
    v33 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20C14F980;
    (*(v32 + 32))(v34 + v33, v31, v46);
    v35 = 1;
  }

  v36 = v30 + *(type metadata accessor for ContainerNodeBuilder() + 28);
  v37 = *v36;
  *v36 = v34;
  v38 = *(v36 + 8);
  *(v36 + 8) = v35;
  sub_20B584060(v37, v38);
  swift_endAccess();
  v47(v11, v8);
  v39 = v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = *(v39 + 8);
    ObjectType = swift_getObjectType();
    (*(v41 + 8))(ObjectType, v41);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BE51870(double a1)
{
  v2 = v1;
  v20 = sub_20C1321F4();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(v8 + 16);
  v12(&v20 - v10, v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__reducedOverlayAnimations, v7, v9);
  sub_20C13A344();
  v13 = *(v8 + 8);
  v13(v11, v7);
  v14 = v22;
  (v12)(v11, v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__persistentOverlayEnabled, v7);
  sub_20C13A344();
  v13(v11, v7);
  if ((v21 & 1) == 0)
  {
    if (v14)
    {
      a1 = 0.0;
    }

    sub_20C1322D4();
    sub_20C1322E4();
    sub_20C1322C4();
    sub_20C1322A4();
    v15 = v20;
    (*(v4 + 104))(v6, *MEMORY[0x277CE9C78], v20);
    sub_20BE4D868(v6, &OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder, 0.0, a1);
    (*(v4 + 8))(v6, v15);
  }

  v16 = v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BE51B70(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_20C133474() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20BB110D0;

  return sub_20BE4FCBC(a1, a2, v2 + 16, v2 + v7);
}

uint64_t sub_20BE51C54(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BE51CF8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E2C08(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20BE51DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a2, a3);
  MEMORY[0x20F2F4230](45, 0xE100000000000000);
  v3 = sub_20C13DFA4();
  MEMORY[0x20F2F4230](v3);

  return v5;
}

uint64_t sub_20BE51E8C()
{

  v1 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPageCategory;
  v2 = sub_20C1352F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage;
  v4 = sub_20C1333A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_archivedSessionClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_assetClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configurationClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_subscriptionCache);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_upNextQueueClient);

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configuration);
  return v0;
}

uint64_t sub_20BE52054()
{
  sub_20BE51E8C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChartGalleryDataProvider()
{
  result = qword_27C76F768;
  if (!qword_27C76F768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE52100()
{
  sub_20C1352F4();
  if (v0 <= 0x3F)
  {
    sub_20C1333A4();
    if (v1 <= 0x3F)
    {
      sub_20B524ACC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BE52278@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_20BE522F4()
{
  if ((*(*v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) & 1) == 0)
  {
    *(*v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) = 1;
  }
}

uint64_t sub_20BE52470@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20BE524C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v103 = a6;
  v104 = a3;
  v92 = a5;
  v94 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = v91 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = v91 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = v91 - v18;
  v99 = sub_20C1333A4();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v20 - 8);
  v93 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_bookmarks) = v22;
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_playlists) = v22;
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_resumableSessions) = v22;
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v23 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configuration;
  v24 = sub_20C134104();
  (*(*(v24 - 8) + 56))(v7 + v23, 1, 1, v24);
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) = 0;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_bookmarkClient);
  v91[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_eventHub) = v116[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v116, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_upNextQueueClient);
  type metadata accessor for ChartGalleryShelf();
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v26 = v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row;
  sub_20B5D8060(v116);
  v27 = v116[5];
  *(v26 + 64) = v116[4];
  *(v26 + 80) = v27;
  *(v26 + 160) = v117;
  v28 = v116[9];
  *(v26 + 128) = v116[8];
  *(v26 + 144) = v28;
  v29 = v116[7];
  *(v26 + 96) = v116[6];
  *(v26 + 112) = v29;
  v30 = v116[1];
  *v26 = v116[0];
  *(v26 + 16) = v30;
  v31 = v116[3];
  *(v26 + 32) = v116[2];
  *(v26 + 48) = v31;
  v32 = (v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_decriptorIdentifier);
  *v32 = v104;
  v32[1] = a4;
  v95 = a4;
  sub_20C133AA4();
  v33 = v115[1];
  v34 = (v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_eventHub);
  *v34 = v115[0];
  v34[1] = v33;
  *(v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_placeholders) = v92;
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 152) = MEMORY[0x277D84F90];
  v37 = v36;
  *(v35 + 160) = sub_20B6B0C04(v36);
  *(v35 + 168) = MEMORY[0x277D84FA0];
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();

  *(v35 + 136) = 10;
  *(v35 + 144) = v94;
  *(v35 + 145) = 0;
  *(v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_lazyLockupFetcher) = v35;
  v94 = sub_20C1380F4();
  v38 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v92 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v38 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v39 = sub_20C13C724();
  v40 = type metadata accessor for CatalogPageImpressionTracker();
  v41 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v42 = MEMORY[0x277D221C0];
  v41[2] = sub_20C13C6D4();
  v41[3] = v39;
  v41[4] = v42;
  v115[3] = v40;
  v43 = sub_20B63EE48();
  v115[4] = v43;
  v115[0] = v41;
  v44 = type metadata accessor for MetricLocationStore();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D84F98];
  *(v45 + 16) = v37;
  *(v45 + 24) = v46;
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v115, v40);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = (v91 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  v52 = *v50;
  v114[3] = v40;
  v114[4] = v43;
  v114[0] = v52;
  v113[3] = v44;
  v113[4] = &off_2822B6968;
  v113[0] = v45;
  v112[0] = v37;
  sub_20BB5D394(0, 1, 0);
  v53 = v112[0];
  v55 = *(v112[0] + 16);
  v54 = *(v112[0] + 24);
  if (v55 >= v54 >> 1)
  {
    sub_20BB5D394((v54 > 1), v55 + 1, 1);
    v53 = v112[0];
  }

  *(v53 + 16) = v55 + 1;
  v56 = v53 + 24 * v55;
  *(v56 + 32) = v25;
  *(v56 + 40) = &off_2822FCB50;
  *(v56 + 48) = 0;
  sub_20B51CC64(v114, v112);
  sub_20B51CC64(v113, v111);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v112, v112[3]);
  v93 = v91;
  v58 = MEMORY[0x28223BE20](v57);
  v60 = (v91 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60, v58);
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v111, v111[3]);
  v63 = MEMORY[0x28223BE20](v62);
  v65 = (v91 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65, v63);
  v67 = *v60;
  v68 = *v65;
  v109 = v40;
  v110 = v43;
  v108[0] = v67;
  v106 = v44;
  v107 = &off_2822B6968;
  v105[0] = v68;
  v69 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
  v71 = MEMORY[0x28223BE20](v70);
  v73 = (v91 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73, v71);
  v75 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
  v76 = MEMORY[0x28223BE20](v75);
  v78 = (v91 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78, v76);
  v80 = sub_20BE3AA74(v104, v95, v53, v94, v92, *v73, *v78, 2, v69);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v115);
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page) = v80;
  v81 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPageCategory;
  v82 = sub_20C1352F4();
  v83 = *(v82 - 8);
  v84 = v103;
  (*(v83 + 16))(v7 + v81, v103, v82);
  v104 = *(v80 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v85 = v98;
  (*(v83 + 104))(v98, *MEMORY[0x277D51838], v82);
  (*(v83 + 56))(v85, 0, 1, v82);
  v86 = sub_20C132C14();
  (*(*(v86 - 8) + 56))(v100, 1, 1, v86);
  v87 = sub_20C135ED4();
  (*(*(v87 - 8) + 56))(v101, 1, 1, v87);
  v88 = sub_20C136914();
  (*(*(v88 - 8) + 56))(v102, 1, 1, v88);

  v89 = v96;
  sub_20C133384();
  (*(v97 + 32))(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage, v89, v99);
  sub_20BE14668();
  (*(v83 + 8))(v84, v82);
  return v7;
}

uint64_t sub_20BE533E4(uint64_t a1)
{
  v147 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767AE8);
  MEMORY[0x28223BE20](v2 - 8);
  v130 = &v120 - v3;
  v131 = sub_20C137884();
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v127 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_20C135EB4();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v128 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v132 = &v120 - v7;
  v126 = sub_20C1373A4();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C136DE4();
  MEMORY[0x28223BE20](v9);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v144 = &v120 - v13;
  v123 = sub_20C13BB84();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_20C137514();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_20C136D94();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_20C136D64();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v135 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v138 = &v120 - v20;
  v21 = sub_20C136224();
  MEMORY[0x28223BE20](v21);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  v145 = sub_20C135E14();
  v27 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v146 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C135344();
  MEMORY[0x28223BE20](v29);
  v31 = (&v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C135DE4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v46 = *v31;
      v47 = v146;
      (*(v27 + 16))(v146, v1, v145);
      type metadata accessor for EditorialLockupsShelf();
      swift_allocObject();

      v42 = sub_20BB4A46C(v48, v46, v47);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v33 = MEMORY[0x277D52890];
      v34 = v26;
      sub_20BE54BF0(v31, v26, MEMORY[0x277D52890]);
      sub_20BE54C58(v26, v23, v33);
      v35 = swift_getEnumCaseMultiPayload();
      if (v35)
      {
        if (v35 == 1)
        {
          v36 = v136;
          v37 = v137;
          (*(v136 + 32))(v17, v23, v137);
          v38 = sub_20C135DB4();
          v40 = v39;
          type metadata accessor for CatalogWorkoutDetailHeaderShelf();
          swift_allocObject();

          v42 = sub_20B76FE34(v41, v38, v40);

          sub_20B76ECD8(v17);
          (*(v36 + 8))(v17, v37);
          sub_20BE54CC0(v34, MEMORY[0x277D52890]);
        }

        else
        {
          v92 = v142;
          v93 = v141;
          v94 = v143;
          (*(v142 + 32))(v141, v23, v143);
          sub_20C1380F4();
          v95 = sub_20C138104();
          if (v95 == sub_20C138104())
          {
            v96 = v121;
            sub_20C13B534();
            v97 = sub_20C13BB74();
            v98 = sub_20C13D1F4();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              *v99 = 0;
              _os_log_impl(&dword_20B517000, v97, v98, "Preview video link shelf not supported in tvOS. Discarding.", v99, 2u);
              MEMORY[0x20F2F6A40](v99, -1, -1);
            }

            (*(v122 + 8))(v96, v123);
            (*(v92 + 8))(v93, v94);
            sub_20BE54CC0(v34, MEMORY[0x277D52890]);
            return 0;
          }

          else
          {
            v114 = sub_20C135DB4();
            v116 = v115;
            type metadata accessor for PreviewVideoLinkShelf();
            swift_allocObject();

            v42 = sub_20BE9B2CC(v117, v114, v116);

            sub_20BE99D2C(v93);
            (*(v92 + 8))(v93, v94);
            sub_20BE54CC0(v34, MEMORY[0x277D52890]);
          }
        }
      }

      else
      {
        v85 = v139;
        v86 = v138;
        v87 = v140;
        (*(v139 + 32))();
        sub_20C1380F4();
        v88 = sub_20C138104();
        v89 = sub_20C138104();
        v90 = v135;
        (*(v85 + 16))(v135, v86, v87);
        if (v88 == v89)
        {
          type metadata accessor for TVExpandingTextEditorialSectionShelf();
          swift_allocObject();

          v42 = sub_20BE9F518(v91, v90);
        }

        else
        {
          v112 = v146;
          (*(v27 + 16))(v146, v1, v145);
          type metadata accessor for ExpandingTextEditorialSectionShelf();
          swift_allocObject();

          v42 = sub_20BABA12C(v113, v90, v112);
        }

        (*(v85 + 8))(v86, v87);
        sub_20BE54CC0(v26, MEMORY[0x277D52890]);
      }
    }

    else
    {
      v49 = MEMORY[0x277D52FB8];
      v50 = v144;
      sub_20BE54BF0(v31, v144, MEMORY[0x277D52FB8]);
      sub_20BE54C58(v50, v11, v49);
      v51 = swift_getEnumCaseMultiPayload();
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          v70 = v125;
          v71 = v124;
          v72 = v126;
          (*(v125 + 32))(v124, v11, v126);
          v73 = sub_20C137394();
          v75 = v74;
          type metadata accessor for MarketingInlineBannerShelf();
          v42 = swift_allocObject();
          sub_20C132ED4();
          (*(v70 + 8))(v71, v72);
          sub_20BE54CC0(v50, MEMORY[0x277D52FB8]);
          *(v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_delegate + 8) = 0;
          swift_unknownObjectWeakInit();
          v76 = v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row;
          sub_20B5D8060(&v148);
          v77 = v153;
          *(v76 + 64) = v152;
          *(v76 + 80) = v77;
          *(v76 + 160) = v158;
          v78 = v157;
          *(v76 + 128) = v156;
          *(v76 + 144) = v78;
          v79 = v155;
          *(v76 + 96) = v154;
          *(v76 + 112) = v79;
          v80 = v149;
          *v76 = v148;
          *(v76 + 16) = v80;
          v81 = v151;
          *(v76 + 32) = v150;
          *(v76 + 48) = v81;
          *(v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_marketingPresentationStyle) = 1;
          v82 = (v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_contentIdentifier);
          *v82 = v73;
          v82[1] = v75;
        }

        else
        {
          v106 = v129;
          v107 = v127;
          v108 = v131;
          (*(v129 + 32))(v127, v11, v131);
          v109 = v130;
          (*(v106 + 16))(v130, v107, v108);
          v110 = type metadata accessor for WorkoutPlanBannerContent();
          (*(*(v110 - 8) + 56))(v109, 0, 1, v110);
          type metadata accessor for WorkoutPlanBannerShelf();
          swift_allocObject();

          v42 = sub_20B913E98(v111, v109);

          (*(v106 + 8))(v107, v108);
          sub_20BE54CC0(v50, MEMORY[0x277D52FB8]);
        }
      }

      else if (v51)
      {
        v102 = *v11;
        v103 = v146;
        (*(v27 + 16))(v146, v1, v145);
        v104 = objc_allocWithZone(type metadata accessor for MarketingHeaderUpsellShelf());

        v42 = sub_20BC2BE1C(v105, v102, v103);

        sub_20BE54CC0(v50, MEMORY[0x277D52FB8]);
      }

      else
      {
        v52 = v133;
        v53 = v132;
        v54 = v134;
        (*(v133 + 32))(v132, v11, v134);
        v55 = v128;
        (*(v52 + 16))(v128, v53, v54);
        v56 = v146;
        (*(v27 + 16))(v146, v1, v145);
        v57 = type metadata accessor for LocalImageLoader();
        v58 = swift_allocObject();
        *(&v149 + 1) = v57;
        *&v150 = &off_2822D4BB0;
        *&v148 = v58;
        type metadata accessor for MarketingHeaderBannerShelf(0);
        v59 = swift_allocObject();
        v60 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v57);
        v61 = MEMORY[0x28223BE20](v60);
        v63 = (&v120 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v64 + 16))(v63, v61);
        v65 = *v63;

        v42 = sub_20BE546E8(v66, v55, v56, v65, v59);

        (*(v52 + 8))(v53, v54);
        sub_20BE54CC0(v50, MEMORY[0x277D52FB8]);
        __swift_destroy_boxed_opaque_existential_1(&v148);
      }
    }

    return v42;
  }

  if (!EnumCaseMultiPayload)
  {
    v43 = *v31;
    v44 = v146;
    (*(v27 + 16))(v146, v1, v145);
    type metadata accessor for ChartLockupsShelf();
    swift_allocObject();

    v42 = sub_20B9EA858(v45, v43, v44);

    return v42;
  }

  v67 = *v31;
  if (v67 > 5)
  {
    if (v67 - 7 >= 2)
    {
      if (v67 == 6)
      {
        v83 = v146;
        (*(v27 + 16))(v146, v1, v145);
        type metadata accessor for ShowcaseShelf();
        swift_allocObject();

        v42 = sub_20C026AAC(v84, v83);
      }

      else
      {
        type metadata accessor for ScheduledWorkoutPlanShelf();
        swift_allocObject();

        return sub_20B6157F8(v118);
      }

      return v42;
    }

LABEL_30:
    v100 = v146;
    (*(v27 + 16))(v146, v1, v145);
    type metadata accessor for RecommendationsShelf();
    swift_allocObject();

    v42 = sub_20C077074(v101, v67, v100);

    return v42;
  }

  v42 = 0;
  if (*v31 > 2u)
  {
    if (v67 - 4 < 2)
    {
      return v42;
    }

    goto LABEL_30;
  }

  if (v67 == 1)
  {
    v68 = v146;
    (*(v27 + 16))(v146, v1, v145);
    type metadata accessor for MyLibraryShelf();
    swift_allocObject();

    v42 = sub_20B68CD58(v69, v68);
  }

  return v42;
}

uint64_t sub_20BE546E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v34 = a3;
  v8 = sub_20C13A814();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = type metadata accessor for LocalImageLoader();
  v36[4] = &off_2822D4BB0;
  v36[0] = a4;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v12 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 2, v13);
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 0;
  v14 = a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
  sub_20B5D8060(v37);
  v15 = v37[7];
  v16 = v37[9];
  *(v14 + 128) = v37[8];
  *(v14 + 144) = v16;
  v17 = v37[3];
  v18 = v37[5];
  v19 = v37[6];
  *(v14 + 64) = v37[4];
  *(v14 + 80) = v18;
  *(v14 + 160) = v38;
  *(v14 + 96) = v19;
  *(v14 + 112) = v15;
  v20 = v37[1];
  *v14 = v37[0];
  *(v14 + 16) = v20;
  *(v14 + 32) = v37[2];
  *(v14 + 48) = v17;
  v21 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription;
  v22 = sub_20C135734();
  (*(*(v22 - 8) + 56))(a5 + v21, 1, 1, v22);
  v23 = a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds;
  *v23 = 0;
  *(v23 + 8) = 1;
  (*(v9 + 104))(v11, *MEMORY[0x277D4EF10], v8);
  LOBYTE(v35[0]) = 1;
  sub_20C13A384();
  v24 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_content;
  v25 = sub_20C135EB4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a5 + v24, a2, v25);
  v27 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_descriptor;
  v28 = sub_20C135E14();
  v29 = *(v28 - 8);
  v30 = v34;
  (*(v29 + 16))(a5 + v27, v34, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E900);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_eventHub) = v35[0];
  sub_20B51CC64(v36, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder);
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_20C13A914();
  (*(v29 + 8))(v30, v28);
  (*(v26 + 8))(v33, v25);
  __swift_destroy_boxed_opaque_existential_1(v36);
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionToken) = v31;
  return a5;
}

uint64_t sub_20BE54BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE54C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE54CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BE54D20(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v26 = a1 + 32;
  while (1)
  {
    v4 = *(v26 + 8 * v1);
    v5 = v4 >> 62;
    v6 = v4 >> 62 ? sub_20C13DB34() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_20C13DB34();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (!result)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_17;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = v4;
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v28 = v2;
    v16 = v10 + 8 * v11 + 32;
    v25 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_20B859A9C();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
        v18 = sub_20B720464(v29, i, v13);
        v20 = *v19;
        (v18)(v29, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_20B5E29D0();
      swift_arrayInitWithCopy();
    }

    v2 = v28;
    if (v30 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v30);
      v23 = v21 + v30;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_17:
  sub_20C13DB34();
LABEL_18:
  result = sub_20C13DCD4();
  v2 = result;
  v10 = result & 0xFFFFFFFFFFFFFF8;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_19:
  v13 = v4;
  v15 = v10;
  result = sub_20C13DB34();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id TVPlaylistViewController.__allocating_init(dependencies:pageContext:pageNavigator:playlistIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = sub_20BE55E10(a1, a2, a3, v15, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

id TVPlaylistViewController.init(dependencies:pageContext:pageNavigator:playlistIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_20BE55BAC(a1, a2, a3, v18, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

Swift::Void __swiftcall TVPlaylistViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_focusedWorkoutController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_listViewController];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  v14 = [v9 view];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14FE90;
  v17 = [v9 view];
  if (!v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v2 view];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:90.0];
  *(v16 + 32) = v23;
  v24 = [v9 view];
  if (!v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 &selRef_passwordEntryCancelledHandler + 6];
  *(v16 + 40) = v30;
  v31 = [v9 view];
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v16 + 48) = v37;
  v38 = [v9 view];
  if (!v38)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v1 view];
  if (!v41)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 &selRef_passwordEntryCancelledHandler + 6];
  *(v16 + 56) = v44;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v46 = [v2 view];
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v1 view];
  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v50 = v49;
  v51 = [v49 leadingAnchor];

  v52 = [v48 &selRef_passwordEntryCancelledHandler + 6];
  *(inited + 32) = v52;
  v53 = [v2 view];
  if (!v53)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v54 = v53;
  v55 = [v53 topAnchor];

  v56 = [v1 view];
  if (!v56)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v57 = v56;
  v58 = [v56 topAnchor];

  v59 = [v55 &selRef_passwordEntryCancelledHandler + 6];
  *(inited + 40) = v59;
  v60 = [v2 view];
  if (!v60)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v1 view];
  if (!v63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v64 = v63;
  v65 = [v63 bottomAnchor];

  v66 = [v62 constraintEqualToAnchor_];
  *(inited + 48) = v66;
  v67 = [v2 view];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 widthAnchor];

    v70 = [v69 constraintEqualToConstant_];
    *(inited + 56) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_20C14F980;
    sub_20B8D9310(inited);
    *(v71 + 32) = v16;
    v72 = objc_opt_self();
    sub_20BE54D20(v71);
    swift_setDeallocating();
    sub_20B68537C(v71 + 32);
    sub_20B5E29D0();
    v73 = sub_20C13CC54();

    [v72 activateConstraints_];

    sub_20BD8F2B0();
    return;
  }

LABEL_43:
  __break(1u);
}

id TVPlaylistViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVPlaylistViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BE55BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v32 = a6;
  v33 = a9;
  ObjectType = swift_getObjectType();
  v16 = *(a8 - 8);
  MEMORY[0x28223BE20](ObjectType);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  (*(v16 + 32))(&v31 - v21, a4, a8, v20);
  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_layout] = xmmword_20C16A0B0;
  type metadata accessor for TVPlaylistPresenter();
  swift_allocObject();

  v24 = sub_20BD8EEC8(v23, a2, a3, a5, v32);
  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_presenter] = v24;
  v25 = v24[2];
  v26 = objc_allocWithZone(type metadata accessor for TVPlaylistListViewController());
  (*(v16 + 16))(v18, v22, a8);

  v27 = sub_20BE7D794(a1, v25, v18, v26, a8, v33);

  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_listViewController] = v27;
  objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_focusedWorkoutController] = sub_20BC1C728(v28);
  v35.receiver = a7;
  v35.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  (*(v16 + 8))(v22, a8);
  return v29;
}

id sub_20BE55E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a4, a8);
  return sub_20BE55BAC(a1, a2, a3, v17, a5, v22, v19, a8, a9);
}

uint64_t sub_20BE55F94()
{
  sub_20B583E6C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_20BE56050(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v2[12];
    v5 = sub_20B7B7C20(result, a2);
    v4(v5);
  }

  else if (v2[16])
  {
    return (v2[12])(v2[15]);
  }

  return result;
}

void sub_20BE56100(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DurationFilterTickView();
  v19.receiver = v4;
  v19.super_class = v13;
  objc_msgSendSuper2(&v19, sel_drawRect_, a1, a2, a3, a4);
  v14 = UIGraphicsGetCurrentContext();
  if (v14)
  {
    v15 = v14;
    sub_20BE56358(v14, a1, a2, a3, a4);
    if (*(v4 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) != 2)
    {
      sub_20BE56604(v15);
    }
  }

  else
  {
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "Invalid context!", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_20BE56358(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_20C138364();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 systemBackgroundColor];
  v17 = [v16 CGColor];

  CGContextSetFillColorWithColor(a1, v17);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGContextFillRect(a1, v26);
  if (*(v5 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) != 1)
  {
    v20 = [v15 systemGray5Color];
    v21 = [v20 CGColor];
    goto LABEL_6;
  }

  v18 = [objc_opt_self() briskColors];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 nonGradientTextColor];

    if (v20)
    {
      v21 = [v20 CGColor];
LABEL_6:
      v22 = v21;

      CGContextSetFillColorWithColor(a1, v22);
      v23 = [v15 clearColor];
      v24 = [v23 CGColor];

      CGContextSetStrokeColorWithColor(a1, v24);
      v27.origin.x = a2;
      v27.origin.y = a3;
      v27.size.width = a4;
      v27.size.height = a5;
      CGContextAddEllipseInRect(a1, v27);
      (*(v12 + 104))(v14, *MEMORY[0x277CBF258], v11);
      sub_20C13D184();
      (*(v12 + 8))(v14, v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BE56604(CGContext *a1)
{
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  v5 = [v4 CGColor];

  CGContextSetFillColorWithColor(a1, v5);
  CGContextSetLineCap(a1, kCGLineCapRound);
  CGContextSetLineWidth(a1, *(v1 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_layout + 32));
  CGContextBeginPath(a1);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) == 1)
  {
    v6 = [v3 blackColor];
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.380392157 alpha:1.0];
  }

  v7 = v6;
  v8 = [v6 CGColor];

  CGContextSetStrokeColorWithColor(a1, v8);
  v16 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v9 = 0;
  v10 = 0.0;
  do
  {
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    v14 = (v9 + 1) * 0.785398163 + 0.0;
    sub_20C13D4E4();
    __sincos_stret(v10);
    sub_20C13D594();
    [v16 moveToPoint_];
    sub_20C13D4E4();
    sub_20C13D594();
    [v16 addLineToPoint_];
    ++v9;
    v10 = v14;
  }

  while (v14 < 6.28318531);
  v11 = 0;
  v12 = 0.392699082;
  while (!__OFADD__(v11, 1))
  {
    v15 = (v11 + 1) * 0.785398163 + 0.392699082;
    sub_20C13D4E4();
    __sincos_stret(v12);
    sub_20C13D594();
    [v16 moveToPoint_];
    sub_20C13D4E4();
    sub_20C13D594();
    [v16 addLineToPoint_];
    ++v11;
    v12 = v15;
    if (v15 >= 6.28318531)
    {
      v13 = [v16 CGPath];
      CGContextAddPath(a1, v13);

      CGContextStrokePath(a1);

      return;
    }
  }

LABEL_14:
  __break(1u);
}

id sub_20BE56AF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DurationFilterTickView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BE56B5C@<X0>(double *a1@<X8>)
{
  sub_20C1380F4();
  v2 = sub_20C138104();
  if (v2 == sub_20C138104())
  {
    v3 = 60.0;
  }

  else
  {
    v3 = 75.0;
  }

  sub_20C1380F4();
  v4 = sub_20C138104();
  if (v4 == sub_20C138104())
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 3.0;
  }

  sub_20C1380F4();
  v6 = sub_20C138104();
  if (v6 == sub_20C138104())
  {
    v7 = 6.0;
  }

  else
  {
    v7 = 8.0;
  }

  sub_20C1380F4();
  v8 = sub_20C138104();
  if (v8 == sub_20C138104())
  {
    v9 = 3.0;
  }

  else
  {
    v9 = 4.0;
  }

  sub_20C1380F4();
  v10 = sub_20C138104();
  result = sub_20C138104();
  if (v10 == result)
  {
    v12 = 2.0;
  }

  else
  {
    v12 = 3.0;
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v12;
  return result;
}

uint64_t WorkoutPlanSwappableItem.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2F5910](*&v1);
  sub_20C13CA64();
  if (*(v0 + 40) == 255)
  {
    sub_20C13E184();
  }

  else
  {
    sub_20C13E184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00);
    sub_20B71A9E4();
    sub_20C133BE4();
  }

  type metadata accessor for WorkoutPlanSwappableItem();
  sub_20C135C54();
  sub_20BE56FDC(&qword_27C762F50, MEMORY[0x277D51FE0]);
  return sub_20C13C7C4();
}

uint64_t WorkoutPlanSwappableItem.hashValue.getter()
{
  sub_20C13E164();
  WorkoutPlanSwappableItem.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BE56DCC()
{
  sub_20C13E164();
  WorkoutPlanSwappableItem.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BE56E10()
{
  sub_20C13E164();
  WorkoutPlanSwappableItem.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI24WorkoutPlanSwappableItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5 == 255)
  {
    if (v6 == 255)
    {
      goto LABEL_13;
    }

LABEL_15:
    v12 = 0;
    return v12 & 1;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = *(a1 + 40);
  if (v6 == 255)
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_20B6A6418(v7, v8, v5 & 1);
    sub_20B583F4C(v13, v14, v5 & 1);
    goto LABEL_15;
  }

  sub_20B6A6418(v7, v8, v5 & 1);
  sub_20B590B28();
  sub_20B590B7C();
  v9 = sub_20C133BF4();
  sub_20B583F4C(v15, v16, v17);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v11 = type metadata accessor for WorkoutPlanSwappableItem();
  v12 = MEMORY[0x20F2ED390](a1 + *(v11 + 28), a2 + *(v11 + 28));
  return v12 & 1;
}

uint64_t sub_20BE56FDC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_20BE5704C()
{
  v0 = sub_20C135214();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135C04();
  sub_20C133894();
  (*(v1 + 8))(v3, v0);
  sub_20B8D3878();
  v8 = sub_20C13C834();
  (*(v5 + 8))(v7, v4);
  return (v8 & 1) == 0;
}

uint64_t type metadata accessor for RemoteDisplayConnected()
{
  result = qword_27C76F7B0;
  if (!qword_27C76F7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE57274()
{
  result = sub_20C135174();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20BE572E0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  v1[12] = swift_task_alloc();
  v5 = sub_20C135334();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v6 = sub_20C135D54();
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  v1[19] = swift_task_alloc();
  v7 = sub_20C136C64();
  v1[20] = v7;
  v1[21] = *(v7 - 8);
  v1[22] = swift_task_alloc();
  v8 = sub_20C13BB84();
  v1[23] = v8;
  v1[24] = *(v8 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE57614, 0, 0);
}

uint64_t sub_20BE57614()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[2];
  sub_20C13B464();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[10];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    v14 = v0[2];
    v13 = v0[3];
    sub_20B520158(v0[19], &qword_27C768690);
    __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    sub_20C13B954();
    v15 = swift_allocObject();
    *(v15 + 16) = nullsub_1;
    *(v15 + 24) = 0;
    (*(v11 + 16))(v10, v9, v13);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    (*(v11 + 32))(v17 + v16, v10, v13);
    v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = sub_20B5D9F30;
    v18[1] = v15;
    v19 = MEMORY[0x277D84F78];
    sub_20C137C94();
    (*(v11 + 8))(v9, v13);
    v20 = swift_task_alloc();
    v0[29] = v20;
    *(v20 + 16) = "SeymourUI/RemoteBrowsingServiceSubscriptionCache.swift";
    *(v20 + 24) = 54;
    *(v20 + 32) = 2;
    *(v20 + 40) = 32;
    *(v20 + 48) = v8;
    v21 = swift_task_alloc();
    v0[30] = v21;
    *v21 = v0;
    v21[1] = sub_20BE58090;
    v22 = sub_20B526A4C;
LABEL_8:

    return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x800000020C192D10, v22, v20, v19 + 8);
  }

  v23 = v0[16];
  v24 = v0[17];
  v26 = v0[14];
  v25 = v0[15];
  v28 = v0[12];
  v27 = v0[13];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  sub_20C136C24();
  sub_20C135314();
  (*(v26 + 8))(v25, v27);
  if ((*(v24 + 48))(v28, 1, v23) != 1)
  {
    v43 = v0[11];
    v34 = v0[6];
    v33 = v0[7];
    v36 = v0[4];
    v35 = v0[5];
    v37 = v0[2];
    v38 = v0[3];
    (*(v0[17] + 32))(v0[18], v0[12], v0[16]);
    __swift_project_boxed_opaque_existential_1((v37 + 16), *(v37 + 40));
    sub_20C13B934();
    v39 = swift_allocObject();
    *(v39 + 16) = nullsub_1;
    *(v39 + 24) = 0;
    (*(v36 + 16))(v34, v33, v38);
    v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v41 = swift_allocObject();
    (*(v36 + 32))(v41 + v40, v34, v38);
    v42 = (v41 + ((v35 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = sub_20B5DF4B4;
    v42[1] = v39;
    v19 = MEMORY[0x277D84F78];
    sub_20C137C94();
    (*(v36 + 8))(v33, v38);
    v20 = swift_task_alloc();
    v0[26] = v20;
    *(v20 + 16) = "SeymourUI/RemoteBrowsingServiceSubscriptionCache.swift";
    *(v20 + 24) = 54;
    *(v20 + 32) = 2;
    *(v20 + 40) = 38;
    *(v20 + 48) = v43;
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    v21[1] = sub_20BE57CE4;
    v22 = sub_20BE69F38;
    goto LABEL_8;
  }

  sub_20B520158(v0[12], &unk_27C762370);
  v29 = sub_20C13B8A4();
  sub_20BE69590();
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D4FA70], v29);
  swift_willThrow();
  (*(v0[21] + 8))(v0[22], v0[20]);

  v31 = v0[1];

  return v31();
}

uint64_t sub_20BE57CE4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_20BE57F50;
  }

  else
  {
    (*(v2[9] + 8))(v2[11], v2[8]);
    v3 = sub_20BE57E34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BE57E34()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BE57F50()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[9] + 8))(v0[11], v0[8]);
  (*(v2 + 8))(v1, v3);
  (*(v0[21] + 8))(v0[22], v0[20]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BE58090()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_20BE582C4;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v3 = sub_20BE581E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BE581E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE582C4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BE583F0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE5848C, 0, 0);
}

uint64_t sub_20BE5848C()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 56), *(v0[2] + 80));
  sub_20C13B174();
  v2 = sub_20C136C64();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_20B520158(v1, &qword_27C768690);
  if (v3 == 1)
  {
    v4 = v0[2];
    v5 = v4[15];
    v6 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_20BE58608;

    return MEMORY[0x2821B5678](v5, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_20BE58608()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BE58718(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v2[4] = swift_task_alloc();
  v3 = sub_20C135734();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  v2[8] = swift_task_alloc();
  v4 = sub_20C136C64();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE58900, 0, 0);
}

uint64_t sub_20BE58900()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[3];
  sub_20C13B464();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[3];
    sub_20B520158(v0[8], &qword_27C768690);
    v9 = v8[15];
    v10 = v8[16];
    __swift_project_boxed_opaque_existential_1(v8 + 12, v9);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_20BE58EB8;
    v12 = v0[2];

    return MEMORY[0x2821B5668](v12, v9, v10);
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_20BE58B20;

    return sub_20BE572E0();
  }
}

uint64_t sub_20BE58B20()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20BE59048;
  }

  else
  {
    v2 = sub_20BE58C34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE58C34()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_20BE58CF4;
  v5 = v0[2];

  return MEMORY[0x2821B5668](v5, v2, v3);
}

uint64_t sub_20BE58CF4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20BE59240;
  }

  else
  {
    v2 = sub_20BE58E08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE58E08()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BE58EB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BE59048()
{
  v1 = v0[16];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_20C136AF4();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    sub_20B520158(v0[4], &unk_27C762390);
    sub_20B8CB638();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v11 = v0[6];
    v10 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[2];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v15 = *(v11 + 32);
    v15(v10, v13, v12);
    v15(v14, v10, v12);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BE59240()
{
  v1 = v0[18];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_20C136AF4();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    sub_20B520158(v0[4], &unk_27C762390);
    sub_20B8CB638();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v11 = v0[6];
    v10 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[2];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v15 = *(v11 + 32);
    v15(v10, v13, v12);
    v15(v14, v10, v12);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BE59438(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v2[4] = swift_task_alloc();
  v3 = sub_20C135734();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  v2[8] = swift_task_alloc();
  v4 = sub_20C136C64();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE59620, 0, 0);
}

uint64_t sub_20BE59620()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[3];
  sub_20C13B464();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[3];
    sub_20B520158(v0[8], &qword_27C768690);
    v9 = v8[15];
    v10 = v8[16];
    __swift_project_boxed_opaque_existential_1(v8 + 12, v9);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_20BE69F34;
    v12 = v0[2];

    return MEMORY[0x2821B5670](v12, v9, v10);
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_20BE59840;

    return sub_20BE572E0();
  }
}

uint64_t sub_20BE59840()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20BE69F40;
  }

  else
  {
    v2 = sub_20BE59954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE59954()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_20BE59A14;
  v5 = v0[2];

  return MEMORY[0x2821B5670](v5, v2, v3);
}

uint64_t sub_20BE59A14()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20BE69F44;
  }

  else
  {
    v2 = sub_20BE69F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE59B28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20BE583F0();
}

uint64_t sub_20BE59BB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20BE58718(a1);
}

uint64_t sub_20BE59C54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BE59438(a1);
}

uint64_t sub_20BE59CF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F828);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE698E0;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5A0CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F800);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69840;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5A4A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F830);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764340);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69978;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5A884(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F838);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762740);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B531924;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5AC60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69818;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5B03C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F808);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69868;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5B418(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EE0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE697F0;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5B7F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F840);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762EA0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B531974;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5BBD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8C8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B80;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5BFAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F900);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E7C8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69C48;
  *(v34 + 24) = v32;

  v33(sub_20B523484, v34);
}

uint64_t sub_20BE5C388(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69BF8;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5C764(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8D0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644B0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69BA8;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5CB40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8D8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69BD0;
  *(v34 + 24) = v32;

  v33(sub_20B52347C, v34);
}

uint64_t sub_20BE5CF1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F940);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69E24;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5D2F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F938);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763338);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69DFC;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);
}

uint64_t sub_20BE5D6D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F930);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69DD4;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);
}

uint64_t sub_20BE5DAB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F850);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE699C8;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5DE8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE697C8;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5E268(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8C0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B58;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5E644(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F928);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69DAC;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);
}

uint64_t sub_20BE5EA20(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B52F6C4;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5EDFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F910);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD40);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69D34;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5F1D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F920);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D78);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69D84;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5F5B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F848);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769060);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE699A0;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE5F990(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F918);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69D5C;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE5FD6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7D8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764000);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE697A0;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE60148(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC60);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69778;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE60524(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F908);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69C70;
  *(v34 + 24) = v32;

  v33(sub_20B52347C, v34);
}

uint64_t sub_20BE60900(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8B8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D000);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B53194C;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE60CDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F958);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFF8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B53199C;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE610B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F950);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647C8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B52E590;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE61494(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F948);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69E4C;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);
}

uint64_t sub_20BE61870(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F810);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69890;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE61C4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F818);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE698B8;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);
}

uint64_t sub_20BE62028(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69C20;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE62404(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F960);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69E74;
  *(v34 + 24) = v32;

  v33(sub_20B77F844, v34);
}

uint64_t sub_20BE627E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F858);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643C8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE699F0;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE62BBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F860);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A18;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE62F98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F880);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A90;
  *(v34 + 24) = v32;

  v33(sub_20B71AB80, v34);
}

uint64_t sub_20BE63374(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F870);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C20);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A68;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE63750(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F868);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764388);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A40;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE63B2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B08;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE63F08(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F898);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C80);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69AE0;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE642E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F888);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C70);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69AB8;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

uint64_t sub_20BE646C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8B0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = a4;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B30;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);
}

uint64_t sub_20BE64A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642B0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v31 - v15);
  v17 = sub_20C13BB84();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v20 = sub_20C13BB74();
  v21 = sub_20C13D1F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a6;
    v23 = v22;
    v33 = swift_slowAlloc();
    v34 = a7;
    v40 = v33;
    *v23 = 134218498;
    *(v23 + 4) = a2;
    *(v23 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = a1;
    v27 = v13;
    v28 = sub_20B51E694(v24, v25, &v40);

    *(v23 + 14) = v28;
    v13 = v27;
    a1 = v26;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v32;
    _os_log_impl(&dword_20B517000, v20, v21, "Finished P->A conversion: %ld:%s:%lu", v23, 0x20u);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  (*(v38 + 8))(v19, v39);
  sub_20B52F9E8(a1, v16, &unk_27C7642B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F828);
    return sub_20C13CD44();
  }

  else
  {
    sub_20BE69908(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F828);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE64DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135AE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C7641D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F800);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F800);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C134D54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764110);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &unk_27C764110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE654B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C134104();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764168);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764168);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F808);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F808);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65828(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[0] = a1;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v24 = v20;
    a1 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C0);
    return sub_20C13CD44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C1364A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F7F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C139354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764288);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764288);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F820);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F820);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66160(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v31 = a7;
  v30 = a6;
  v29[2] = a5;
  v32 = a2;
  v33 = a9;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[1] = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29[0] = a10;
    v22 = v21;
    v34 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v23 = sub_20C13DCA4();
    v25 = sub_20B51E694(v23, v24, &v34);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v31;
    _os_log_impl(&dword_20B517000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x20F2F6A40](v22, -1, -1);
    MEMORY[0x20F2F6A40](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v34 = a1;
  if (v32)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    return sub_20C13CD44();
  }

  else
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE663B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C133954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764888);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135534();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764550);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &unk_27C764550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C136194();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764620);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &unk_27C764620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F910);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F910);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135734();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F918);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F918);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE67184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C137094();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7D0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE674F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F908);
    return sub_20C13CD44();
  }

  else
  {
    LOBYTE(v31) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F908);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE67754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C136354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C7647D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F810);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F810);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE67AC8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_20B517000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F818);
  if (v10)
  {
    return sub_20C13CD44();
  }

  else
  {
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE67D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C1364E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F8F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68094(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v29 = a7;
  v28[2] = a6;
  v31 = a3;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[1] = a9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[0] = a2;
    v21 = v20;
    v32[0] = v20;
    *v19 = 134218498;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2080;
    v22 = sub_20C13DCA4();
    v24 = sub_20B51E694(v22, v23, v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_20B517000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v25 = v21;
    a2 = v28[0];
    MEMORY[0x20F2F6A40](v25, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32[0] = a1;
  if (v31)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F960);
    return sub_20C13CD44();
  }

  else
  {
    v32[1] = a2;
    sub_20B719888(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F960);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE682FC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v31 = a1;
  if (v30)
  {
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F858);
    return sub_20C13CD44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F858);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68554(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v29 = a8;
  v28 = a7;
  v30 = a3;
  v31 = a1;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a9;
    v20 = v19;
    v32[0] = v19;
    *v18 = 134218498;
    *(v18 + 4) = a4;
    *(v18 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, v32);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    v24 = v18;
    a2 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v32[0] = v31;
  if (v30)
  {
    v25 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F880);
    return sub_20C13CD44();
  }

  else
  {
    v32[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F880);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE687BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135FB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F878);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F878);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F870);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F870);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C137794();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E28);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764E28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C136724();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E30);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F898);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F898);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE69218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135D34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F890);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F888);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F888);
    return sub_20C13CD54();
  }
}

unint64_t sub_20BE69590()
{
  result = qword_27C762380;
  if (!qword_27C762380)
  {
    sub_20C13B8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762380);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BE69694(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E03A8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20BE69908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE69C98(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_20BE69F4C()
{
  sub_20B5D9BA8();
  v0 = swift_allocError();
  *v1 = 11;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t NavigationRouter.__allocating_init(dependencies:interceptionPresenter:interceptionChain:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = *(a4 + 24);
  v13 = *(a4 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = sub_20BE7057C(a1, v11, a3, v14, v4, v9, v12, v10, v13);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v15;
}

uint64_t NavigationRouter.init(dependencies:interceptionPresenter:interceptionChain:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = *(a4 + 24);
  v15 = *(a4 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_20BE70138(a1, v13, a3, v20, v24[1], v9, v16, v8, v15);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

uint64_t sub_20BE6A278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NavigationRouter.navigateToRequest(_:)(a1, v5);

    v7 = sub_20C137CB4();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v7(sub_20B5DF6DC, v8);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void NavigationRouter.navigateToRequest(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for NavigationRequest();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = type metadata accessor for NavigationRouter.State(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationRouterRequest();
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v15 = *(v3 + 28);
  v32 = a1;
  v16 = *(a1 + v15);
  if (!v16)
  {
    sub_20C13B534();
    sub_20C13BB64();
    v14(v13, v10);
    v18 = swift_allocObject();
    swift_weakInit();
    sub_20BE70750(v32, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v19 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_20BE707B8(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for NavigationRequest);
    sub_20C137C94();
    return;
  }

  if (v16 == 1)
  {
    v17 = v34;
  }

  else
  {
    v21 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
    v22 = v33;
    swift_beginAccess();
    sub_20BE70750(v22 + v21, v7, type metadata accessor for NavigationRouter.State);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968);
    if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
    {
      v24 = type metadata accessor for NavigationRouter.State;
      v25 = v7;
    }

    else
    {
      v26 = v30;
      sub_20BE707B8(v7, v30, type metadata accessor for NavigationRouterRequest);
      if (*(v26 + *(v3 + 28)) == 2)
      {
        sub_20B5D9BA8();
        v27 = swift_allocError();
        *v28 = 4;
        *(swift_allocObject() + 16) = v27;
        v29 = v27;
        sub_20C137CA4();
        sub_20BE70820(v26, type metadata accessor for NavigationRouterRequest);

        return;
      }

      v24 = type metadata accessor for NavigationRouterRequest;
      v25 = v26;
    }

    sub_20BE70820(v25, v24);
    v17 = v34;
  }

  sub_20BE6E034(v32, v17);
}

uint64_t sub_20BE6A95C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BE6AA80(uint64_t a1)
{
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v21 - v2;
  v4 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4B4();
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v3;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_20B517000, v11, v12, "NavigationRouter handling siri begin session", v13, 2u);
    v3 = v22;
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  v15 = v4[5];
  v16 = sub_20C139144();
  (*(*(v16 - 8) + 16))(&v6[v15], v23, v16);
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v6[v4[7]] = 0;
  v6[v4[8]] = 0;
  *&v6[v4[9]] = 0;
  NavigationRouter.navigateToRequest(_:)(v6, v3);
  v17 = v24;
  v18 = sub_20C137CB4();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v18(sub_20B5DF6DC, v19);

  (*(v1 + 8))(v3, v17);
  return sub_20BE70820(v6, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BE6AE00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v37 - v4;
  v45 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v45);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C135024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  v14 = *(v8 + 16);
  v46 = a1;
  v48 = v7;
  v43 = v14;
  v44 = v8 + 16;
  v14(v10, a1, v7);
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v41 = v2;
    v38 = v19;
    v49 = v19;
    *v18 = 136315138;
    sub_20BE7178C(&qword_27C766E98, MEMORY[0x277D51510]);
    v20 = v48;
    v21 = sub_20C13DFA4();
    v40 = v3;
    v23 = v22;
    (*(v8 + 8))(v10, v20);
    v24 = sub_20B51E694(v21, v23, &v49);
    v3 = v40;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_20B517000, v15, v16, "NavigationRouter handling multi-user begin session for %s", v18, 0xCu);
    v25 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    v2 = v41;
    MEMORY[0x20F2F6A40](v25, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);

    (*(v42 + 8))(v13, v39);
  }

  else
  {

    (*(v8 + 8))(v10, v48);
    (*(v42 + 8))(v13, v11);
  }

  v26 = v46;
  *v6 = sub_20C135004();
  v6[1] = v27;
  type metadata accessor for WorkoutNavigationResource();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  v28 = v45;
  v29 = v6 + *(v45 + 20);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
  *v29 = sub_20C134FD4();
  v29[8] = 0;
  *(v29 + 2) = sub_20C134FF4();
  *(v29 + 3) = v31;
  v32 = sub_20C1344C4();
  (*(*(v32 - 8) + 56))(&v29[v30], 1, 1, v32);
  *(v29 + 4) = 0;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  v43(v6 + v28[6], v26, v48);
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  *(v6 + v28[7]) = 0;
  *(v6 + v28[8]) = 0;
  *(v6 + v28[9]) = 0;
  v33 = v47;
  NavigationRouter.navigateToRequest(_:)(v6, v47);
  v34 = sub_20C137CB4();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_20B5DF6DC, v35);

  (*(v3 + 8))(v33, v2);
  return sub_20BE70820(v6, type metadata accessor for NavigationRequest);
}