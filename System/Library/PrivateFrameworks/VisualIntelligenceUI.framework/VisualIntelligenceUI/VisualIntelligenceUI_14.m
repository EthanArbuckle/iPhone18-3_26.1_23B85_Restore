id sub_21E0A0D50()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  [*(v0 + 16) setFrame_];

  return [v1 setFrame_];
}

uint64_t sub_21E0A0E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0A0E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E0A0F84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF8DAF8;

  return sub_21E09EE54(a1, v4, v5, v6);
}

uint64_t (*sub_21E0A1038())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_21E0A0F4C;
}

uint64_t sub_21E0A10CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF8DAF8;

  return sub_21E09E7B8(a1, v4, v5, v6);
}

uint64_t sub_21E0A1180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_21E0A11F0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_21E0A1094;
}

uint64_t sub_21E0A1284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF4AA04;

  return sub_21E09E214(a1, v4, v5, v6);
}

uint64_t (*sub_21E0A1360())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_21E0A124C;
}

uint64_t View.containerSmartDialog()(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E1418F4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for ContainerSmartDialogViewModifier();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E1418E4();
  sub_21E141FA4();
  v8 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F50);
  swift_allocObject();
  *&v7[v8] = sub_21E13F294();
  MEMORY[0x223D51B40](v7, a1, v5, a2);
  return sub_21E0A158C(v7);
}

uint64_t type metadata accessor for ContainerSmartDialogViewModifier()
{
  result = qword_27CEACA78;
  if (!qword_27CEACA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E0A158C(uint64_t a1)
{
  v2 = type metadata accessor for ContainerSmartDialogViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21E0A1610()
{
  sub_21E141FB4();
  if (v0 <= 0x3F)
  {
    sub_21E0A1694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E0A1694()
{
  if (!qword_27CEACA88)
  {
    v0 = sub_21E13F2A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEACA88);
    }
  }
}

uint64_t sub_21E0A1714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContainerSmartDialogViewModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21E0A1C48(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_21E0A1CAC(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA90);
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACAA0);
  v13 = (a3 + *(result + 36));
  *v13 = sub_21E0A1EA8;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return result;
}

uint64_t sub_21E0A1878()
{
  type metadata accessor for ContainerSmartDialogViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F50);
  sub_21DF23E5C(&qword_27CEACAB8, &qword_27CEA9F50);
  return sub_21E13F2B4();
}

uint64_t sub_21E0A1904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = a2 - 8;
  v4 = *(a2 - 8);
  v23 = a1;
  v24 = v4;
  v6 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = sub_21E141FB4();
  v13 = MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v13);
  v26 = *(v3 + *(v5 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F50);
  sub_21DF23E5C(&qword_27CEACA98, &qword_27CEA9F50);
  sub_21E13F2F4();
  (*(v8 + 16))(v11, v23, v7);
  v16 = v22;
  sub_21E0A1C48(v3, v22);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = (v9 + *(v24 + 80) + v17) & ~*(v24 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v17, v11, v7);
  sub_21E0A1CAC(v16, v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACAA0);
  sub_21E0A1DF0();
  return sub_21E141F54();
}

uint64_t sub_21E0A1C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerSmartDialogViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0A1CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerSmartDialogViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0A1D10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA90) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ContainerSmartDialogViewModifier() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21E0A1714(v1 + v4, v7, a1);
}

unint64_t sub_21E0A1DF0()
{
  result = qword_27CEACAA8;
  if (!qword_27CEACAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACAA0);
    sub_21DF23E5C(&qword_27CEACAB0, &qword_27CEACA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACAA8);
  }

  return result;
}

uint64_t sub_21E0A1EA8()
{
  type metadata accessor for ContainerSmartDialogViewModifier();

  return sub_21E0A1878();
}

id sub_21E0A1F6C()
{
  v1 = *v0;
  v2 = type metadata accessor for OverlayTextBaseView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView_model] = v1;
  v6.receiver = v3;
  v6.super_class = v2;

  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 addInteraction_];
  return v4;
}

uint64_t sub_21E0A1FF8@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for OverlayTextView.Coordinator());

  v4 = sub_21E0A336C(v3);

  *a1 = v4;
  return result;
}

uint64_t sub_21E0A204C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0A3460();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E0A20B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0A3460();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E0A2114()
{
  sub_21E0A3460();
  sub_21E1402A4();
  __break(1u);
}

uint64_t sub_21E0A2288(void *a1)
{
  v1 = [a1 selectedText];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21E142124();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  sub_21E0C8F90(v7);
}

id sub_21E0A255C(unint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v8 = type metadata accessor for WaypointLayout.WaypointFrame(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13D834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  *&v15 = MEMORY[0x28223BE20](v14 - 8).n128_u64[0];
  v17 = &v64 - v16;
  v18 = *&v4[OBJC_IVAR____TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView_model];
  if ([*(v18 + 24) hasActiveTextSelection])
  {
    v19 = 1;
  }

  else
  {
    v68 = v12;
    v69 = v11;
    v71 = v9;
    v72 = v4;
    v70 = v18;
    v20 = *(v18 + 16);
    swift_getKeyPath();
    v78[0] = v20;
    v21 = sub_21E0A35D8(&qword_280F6B250, type metadata accessor for NewSaliencyModel);

    v67 = v21;
    sub_21E13D3C4();

    v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
    swift_beginAccess();
    v23 = *(v20 + v22);

    v78[0] = MEMORY[0x277D84F90];
    if (v23 >> 62)
    {
      goto LABEL_36;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v66 = a1;
    if (v24)
    {
      a1 = 0;
      v76 = v23 & 0xC000000000000001;
      v75 = v23 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v76)
        {
          v25 = MEMORY[0x223D530F0](a1, v23);
          v26 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v31 = v78[0];
            goto LABEL_25;
          }
        }

        else
        {
          if (a1 >= *(v75 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v24 = sub_21E1427B4();
            goto LABEL_5;
          }

          v25 = *(v23 + 8 * a1 + 32);

          v26 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_22;
          }
        }

        swift_getKeyPath();
        v79 = v25;
        sub_21E0A35D8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
        sub_21E13D3C4();

        v27 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
        swift_beginAccess();
        sub_21E0A34B4(v25 + v27, v17);
        v28 = sub_21E13EF04();
        if ((*(*(v28 - 8) + 48))(v17, 1, v28) == 1)
        {

          sub_21E0A3524(v17);
        }

        else
        {
          sub_21E0A3524(v17);
          swift_getKeyPath();
          v79 = v25;
          sub_21E13D3C4();

          v29 = *(v25 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8);
          if ((v29 & 0x2000000000000000) != 0)
          {
            v30 = HIBYTE(v29) & 0xF;
          }

          else
          {
            v30 = *(v25 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage) & 0xFFFFFFFFFFFFLL;
          }

          if (v30 && (swift_getKeyPath(), v79 = v25, sub_21E13D3C4(), , *(v25 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) != 2))
          {
            sub_21E1428F4();
            sub_21E142934();
            sub_21E142944();
            sub_21E142904();
          }

          else
          {
          }
        }

        ++a1;
        if (v26 == v24)
        {
          goto LABEL_23;
        }
      }
    }

    v31 = MEMORY[0x277D84F90];
LABEL_25:

    v76 = sub_21DFAA298(v31);

    v4 = v72;
    [v72 bounds];
    v75 = v32;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v18 = v70;
    v39 = *(v70 + 16);
    swift_getKeyPath();
    v78[0] = v39;

    sub_21E13D3C4();

    v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
    swift_beginAccess();
    v41 = *(v39 + v40);

    swift_getKeyPath();
    v78[0] = v41;
    sub_21E0A35D8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
    sub_21E13D3C4();

    v42 = (v41 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect);
    swift_beginAccess();
    v43 = v42[1];
    v65 = *v42;
    v64 = v43;

    v44 = *(v18 + 16);
    swift_getKeyPath();
    v78[0] = v44;

    sub_21E13D3C4();

    v45 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
    swift_beginAccess();
    v46 = *(v44 + v45);

    swift_getKeyPath();
    v78[0] = v46;
    sub_21E13D3C4();

    v47 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
    swift_beginAccess();
    v48 = *(v46 + v47);

    v49 = *(v18 + 16);
    swift_getKeyPath();
    v78[0] = v49;

    sub_21E13D3C4();

    v50 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
    swift_beginAccess();
    v51 = v68;
    v17 = v74;
    v52 = v69;
    (*(v68 + 16))(v74, v49 + v50, v69);

    ITKSubtractSizes();
    v53 = ITKRectFromAddingSize();
    v78[0] = v54;
    v78[1] = v55;
    v78[2] = v56;
    v78[3] = v57;
    MEMORY[0x28223BE20](v53);
    *(&v64 - 12) = v17;
    *(&v64 - 11) = v75;
    *(&v64 - 10) = v34;
    *(&v64 - 9) = v36;
    *(&v64 - 8) = v38;
    *(&v64 - 40) = v64;
    *(&v64 - 56) = v65;
    *(&v64 - 3) = v78;
    *(&v64 - 2) = v48 * 50.0;
    *(&v64 - 1) = v48 * 50.0;
    v58 = sub_21E0B0080(sub_21DFAB10C, (&v64 - 7), v76);

    (*(v51 + 8))(v17, v52);
    [v4 bounds];
    a1 = 0;
    v59 = *(v58 + 16);
    v60 = v71;
    v23 = v73;
    do
    {
      v19 = v59 == a1;
      if (v59 == a1)
      {
        break;
      }

      if (a1 >= *(v58 + 16))
      {
        goto LABEL_35;
      }

      sub_21DFAB1B8(v58 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * a1++, v23);
      v80.x = a2;
      v80.y = a3;
      v61 = CGRectContainsPoint(*v23, v80);
      sub_21DFAB21C(v23);
    }

    while (!v61);

    a1 = v66;
  }

  swift_getKeyPath();
  v78[0] = v18;
  sub_21E0A35D8(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  if (!v19 && !*(v18 + 80))
  {
    return 0;
  }

  v63 = type metadata accessor for OverlayTextBaseView();
  v77.receiver = v4;
  v77.super_class = v63;
  return objc_msgSendSuper2(&v77, sel_hitTest_withEvent_, a1, a2, a3);
}

id sub_21E0A30D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayTextBaseView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21E0A3158()
{
  result = qword_280F6B3F0;
  if (!qword_280F6B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6B3F0);
  }

  return result;
}

id sub_21E0A31AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0A35D8(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_21E0A3264(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E120160(v1);
}

__n128 sub_21E0A3294@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0A35D8(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  result = *(v3 + 120);
  v5 = *(v3 + 136);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

id sub_21E0A336C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCV20VisualIntelligenceUI15OverlayTextView11Coordinator_model] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;

  v4 = objc_msgSendSuper2(&v11, sel_init);
  v5 = *(a1 + 24);
  v6 = v4;
  v7 = v5;
  [v7 setDelegate_];
  v8 = sub_21E1420F4();
  v9 = NSSelectorFromString(v8);

  if ([v7 respondsToSelector_])
  {
    [v7 set:1 isVIHosted:?];
  }

  return v6;
}

unint64_t sub_21E0A3460()
{
  result = qword_280F6B3E8;
  if (!qword_280F6B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6B3E8);
  }

  return result;
}

uint64_t sub_21E0A34B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0A3524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E0A358C()
{
  result = qword_27CEACB58;
  if (!qword_27CEACB58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEACB58);
  }

  return result;
}

uint64_t sub_21E0A35D8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_21E0A3620()
{
  v1 = sub_21E13D834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtCV20VisualIntelligenceUI15OverlayTextView11Coordinator_model);
  v6 = *(v5 + 16);
  swift_getKeyPath();
  v10[1] = v6;
  sub_21E0A35D8(&qword_280F6B250, type metadata accessor for NewSaliencyModel);

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*(v2 + 16))(v4, v6 + v7, v1);

  LOBYTE(v7) = sub_21E13D7F4();
  (*(v2 + 8))(v4, v1);
  swift_getKeyPath();
  v10[0] = v5;
  sub_21E0A35D8(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  sub_21E13D3C4();

  if (v7)
  {
    v8 = 120;
  }

  else
  {
    v8 = 88;
  }

  return *(v5 + v8);
}

double SuggestedActionsDial.init(model:sheetAssistant:isActive:sheetProgressOpacity:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  sub_21E141704();
  *(a8 + 32) = v19;
  *(a8 + 40) = v20;
  sub_21E141704();
  result = v19;
  *(a8 + 48) = v19;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 88) = a3;
  *(a8 + 96) = a4;
  *(a8 + 104) = a5;
  *(a8 + 56) = v20;
  *(a8 + 64) = a6;
  *(a8 + 72) = a7;
  *(a8 + 80) = a9;
  return result;
}

uint64_t SuggestedActionsDial.model.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SuggestedActionsDial.bar.getter()
{
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t SuggestedActionsDial.items.getter()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v5 = *(v3 + v4);

  return v5;
}

uint64_t sub_21E0A3CA4()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    if (v6 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = *(v5 + 16);
    }

    sub_21E0AC96C(v5, v5 + 32, v8, (2 * v6) | 1);
    v10 = v9;

    return v10;
  }

  return v5;
}

uint64_t sub_21E0A3E48()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v5 = *(v3 + v4);

  if (*(v5 + 16) >= 6uLL)
  {
    sub_21E0AC96C(v5, v5 + 32, 0, 0xBuLL);
    v7 = v6;

    return v7;
  }

  return v5;
}

uint64_t SuggestedActionsDial.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[2];
  v35 = v1[3];
  v36 = v6;
  v37[0] = v7;
  *(v37 + 9) = *(v1 + 89);
  v9 = v1[1];
  v32 = *v1;
  v33 = v9;
  v34 = v8;
  v10 = sub_21E140004();
  v11 = swift_allocObject();
  v12 = v1[5];
  *(v11 + 80) = v1[4];
  *(v11 + 96) = v12;
  *(v11 + 105) = *(v1 + 89);
  v13 = v1[1];
  *(v11 + 16) = *v1;
  *(v11 + 32) = v13;
  v14 = v1[3];
  *(v11 + 48) = v1[2];
  *(v11 + 64) = v14;
  *(v11 + 128) = 0x4048000000000000;
  sub_21E0ABC54(&v32, &v25);
  sub_21E141CC4();
  sub_21E13F664();
  v31 = 1;
  v25 = v10;
  LOBYTE(v26) = 1;
  *(&v26 + 1) = sub_21E0ABC48;
  *&v27 = v11;
  v15 = *MEMORY[0x277CDFA10];
  v16 = sub_21E13F9D4();
  (*(*(v16 - 8) + 104))(v5, v15, v16);
  sub_21E0AD534(&unk_280F68FD8, MEMORY[0x277CDFA28]);
  result = sub_21E142074();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB80);
    sub_21E0ABC8C();
    sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
    sub_21E140F74();
    sub_21DF23614(v5, &qword_27CEA6DF8);
    v38[2] = v27;
    v38[3] = v28;
    v38[4] = v29;
    v39 = v30;
    v38[0] = v25;
    v38[1] = v26;
    sub_21DF23614(v38, &qword_27CEACB80);
    v18 = swift_allocObject();
    v19 = v35;
    v20 = v37[0];
    v18[5] = v36;
    v18[6] = v20;
    *(v18 + 105) = *(v37 + 9);
    v21 = v33;
    v22 = v34;
    v18[1] = v32;
    v18[2] = v21;
    v18[3] = v22;
    v18[4] = v19;
    v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBA0) + 36));
    *v23 = sub_21E0ABD44;
    v23[1] = v18;
    return sub_21E0ABC54(&v32, &v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E0A432C@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v100 = a2;
  v5 = sub_21E140484();
  v98 = *(v5 - 8);
  v99 = v5;
  MEMORY[0x28223BE20](v5);
  v97 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21E140814();
  v87 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v75 - v9;
  v96 = sub_21E140834();
  v88 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E140684();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCE8);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCF0);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v18 = &v75 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCF8);
  v84 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v82 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD00);
  v92 = *(v20 - 8);
  v93 = v20;
  MEMORY[0x28223BE20](v20);
  v86 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD08);
  v94 = *(v22 - 8);
  v95 = v22;
  MEMORY[0x28223BE20](v22);
  v89 = &v75 - v23;
  sub_21E13F714();
  v25 = v24;
  v27 = v26;
  v107 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  v28 = *&v112;
  sub_21E13F714();
  v115.origin.x = (v29 - v28) * 0.5 + 0.0;
  v115.origin.y = v30 * 0.5 + 0.0;
  v115.size.height = 0.0;
  v115.size.width = v28;
  MinX = CGRectGetMinX(v115);
  v107 = a1[3];
  sub_21E141714();
  v32 = *&v112;
  sub_21E13F714();
  v116.origin.x = (v33 - v32) * 0.5 + 0.0;
  v116.origin.y = v34 * 0.5 + 0.0;
  v116.size.height = 0.0;
  v116.size.width = v32;
  v35 = CGRectGetMinX(v116);
  sub_21E1408D4();
  v101 = MinX;
  v79 = a1;
  v102 = a1;
  v103 = v25;
  v104 = v27;
  v105 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD10);
  sub_21DF23E5C(&qword_27CEACD18, &qword_27CEACD10);
  sub_21E13F3C4();
  sub_21E141CC4();
  sub_21E13F664();
  v36 = &v16[*(v14 + 36)];
  v37 = *(&v114[5] + 8);
  *v36 = *(&v114[4] + 8);
  *(v36 + 1) = v37;
  *(v36 + 2) = *(&v114[6] + 8);
  sub_21E140674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E147C80;
  LOBYTE(a1) = sub_21E1408F4();
  *(inited + 32) = a1;
  v39 = sub_21E1408D4();
  *(inited + 33) = v39;
  sub_21E1408E4();
  sub_21E1408E4();
  if (sub_21E1408E4() != a1)
  {
    sub_21E1408E4();
  }

  sub_21E1408E4();
  if (sub_21E1408E4() != v39)
  {
    sub_21E1408E4();
  }

  v40 = sub_21E0ACF5C();
  v75 = v18;
  sub_21E140FE4();
  (*(v76 + 8))(v13, v77);
  sub_21DF23614(v16, &qword_27CEACCE8);
  v41 = v78;
  sub_21E140804();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v42 = v87;
  v43 = v90;
  (*(v87 + 16))(v80, v41, v90);
  v44 = v85;
  sub_21E140824();
  (*(v42 + 8))(v41, v43);
  *&v107 = v14;
  *(&v107 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = MEMORY[0x277CDE478];
  v48 = v82;
  v47 = v83;
  v49 = v96;
  v50 = v75;
  sub_21E141114();
  (*(v88 + 8))(v44, v49);
  (*(v81 + 8))(v50, v47);
  v51 = swift_allocObject();
  v52 = v79;
  v53 = v79[5];
  v51[5] = v79[4];
  v51[6] = v53;
  *(v51 + 105) = *(v52 + 89);
  v54 = v52[1];
  v51[1] = *v52;
  v51[2] = v54;
  v55 = v52[3];
  v51[3] = v52[2];
  v51[4] = v55;
  sub_21E0ABC54(v52, &v107);
  *&v107 = v47;
  *(&v107 + 1) = v49;
  *&v108 = OpaqueTypeConformance2;
  *(&v108 + 1) = v46;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v86;
  v58 = v91;
  sub_21E141084();

  (*(v84 + 8))(v48, v58);
  v59 = sub_21E140964();
  v60 = v97;
  sub_21E140474();
  *&v107 = v58;
  *(&v107 + 1) = v56;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v89;
  v63 = v93;
  MEMORY[0x223D51770](v59, *&v35, 0, v60, v93, v61);
  (*(v98 + 8))(v60, v99);
  (*(v92 + 8))(v57, v63);
  v64 = sub_21E141CC4();
  v66 = v65;
  v67 = sub_21E0A6E38(&v107);
  v68 = v107;
  v70 = v108;
  v69 = v109;
  LOBYTE(v60) = BYTE8(v109);
  *&v112 = v64;
  *(&v112 + 1) = v66;
  v113 = v107;
  v114[0] = v108;
  *&v114[1] = v109;
  BYTE8(v114[1]) = BYTE8(v109);
  v71 = v100;
  (*(v94 + 32))(v100, v62, v95, v67);
  v72 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD38) + 36));
  v73 = v113;
  *v72 = v112;
  v72[1] = v73;
  v72[2] = v114[0];
  *(v72 + 41) = *(v114 + 9);
  *&v107 = v64;
  *(&v107 + 1) = v66;
  v108 = v68;
  v109 = v70;
  v110 = v69;
  v111 = v60;
  sub_21DF236C0(&v112, &v106, &qword_27CEACD40);
  return sub_21DF23614(&v107, &qword_27CEACD40);
}

uint64_t sub_21E0A4DE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD48);
  sub_21E0AD050();
  return sub_21E140314();
}

uint64_t sub_21E0A4E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = sub_21E140004();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD78);
  sub_21E0A4FCC(a1, (a2 + *(v12 + 44)), a3, a4, a5, a6);
  sub_21E141CC4();
  sub_21E13F664();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD60) + 36));
  v14 = v23;
  *v13 = v22;
  v13[1] = v14;
  v13[2] = v24;
  v15 = MEMORY[0x223D52580](0.4, 0.825, 0.0);
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v19, v16);
  LOBYTE(a1) = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD48);
  v18 = a2 + *(result + 36);
  *v18 = v15;
  *(v18 + 8) = a1;
  return result;
}

uint64_t sub_21E0A4FCC@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v158 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD80);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v121 - v13;
  v15 = sub_21E1403A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v155 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v142 = &v121 - v19;
  v20 = sub_21E1403C4();
  v144 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v143 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8500);
  MEMORY[0x28223BE20](v154);
  v141 = &v121 - v22;
  v23 = sub_21E13FF94();
  OpaqueTypeConformance2 = *(v23 - 8);
  v134 = v23;
  MEMORY[0x28223BE20](v23);
  v132 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD88);
  MEMORY[0x28223BE20](v135);
  v137 = (&v121 - v25);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD90);
  MEMORY[0x28223BE20](v136);
  v153 = &v121 - v26;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD98);
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v139 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v138 = &v121 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDA0);
  MEMORY[0x28223BE20](v30 - 8);
  v152 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v148 = &v121 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDA8);
  v150 = *(v34 - 8);
  v151 = v34;
  MEMORY[0x28223BE20](v34);
  v146 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v121 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDB0);
  MEMORY[0x28223BE20](v39 - 8);
  v157 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v156 = &v121 - v42;
  v178 = *(a1 + 88);
  LOBYTE(v179) = *(a1 + 104);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v159, v43);
  if (v159 == 1)
  {
    v145 = v16;
    v127 = v20;
    v128 = v14;
    v130 = v11;
    v131 = v15;
    v129 = v12;
    v44 = *(a1 + 80);
    v182 = *(a1 + 64);
    v183[0] = v44;
    *(v183 + 9) = *(a1 + 89);
    v45 = *(a1 + 16);
    v178 = *a1;
    v179 = v45;
    v46 = *(a1 + 48);
    v180 = *(a1 + 32);
    v181 = v46;
    v47 = *(sub_21E0A3E48() + 16);

    v48 = *(a1 + 80);
    v163 = *(a1 + 64);
    v164[0] = v48;
    *(v164 + 9) = *(a1 + 89);
    v49 = *(a1 + 16);
    v159 = *a1;
    v160 = v49;
    v50 = *(a1 + 48);
    v161 = *(a1 + 32);
    v162 = v50;
    v51 = sub_21E0A3E48();
    v52 = sub_21DFA859C(0, v47, v51);

    *&v159 = v52;
    swift_getKeyPath();
    v53 = swift_allocObject();
    v54 = *(a1 + 80);
    *(v53 + 80) = *(a1 + 64);
    *(v53 + 96) = v54;
    *(v53 + 105) = *(a1 + 89);
    v55 = *(a1 + 16);
    *(v53 + 16) = *a1;
    *(v53 + 32) = v55;
    v56 = *(a1 + 48);
    *(v53 + 48) = *(a1 + 32);
    *(v53 + 64) = v56;
    *(v53 + 128) = a4;
    *(v53 + 136) = a5;
    *(v53 + 144) = a6;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_21E0AD248;
    *(v57 + 24) = v53;
    sub_21E0ABC54(a1, &v178);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDC8);
    sub_21DF23E5C(&qword_280F68C98, &qword_27CEACDC0);
    sub_21E0AD258();
    sub_21E141A74();
    v58 = *(a1 + 80);
    v182 = *(a1 + 64);
    v183[0] = v58;
    *(v183 + 9) = *(a1 + 89);
    v59 = *(a1 + 16);
    v178 = *a1;
    v179 = v59;
    v60 = *(a1 + 48);
    v180 = *(a1 + 32);
    v181 = v60;
    v61 = *(sub_21E0A3CA4() + 16);

    v140 = v38;
    if (v61)
    {
      v62 = *(a1 + 80);
      v182 = *(a1 + 64);
      v183[0] = v62;
      *(v183 + 9) = *(a1 + 89);
      v63 = *(a1 + 16);
      v178 = *a1;
      v179 = v63;
      v64 = *(a1 + 48);
      v180 = *(a1 + 32);
      v181 = v64;
      v126 = sub_21E0A3CA4();
      v66 = *(a1 + 16);
      v65 = *(a1 + 24);
      v67 = *(a1 + 80);
      v163 = *(a1 + 64);
      v164[0] = v67;
      *(v164 + 9) = *(a1 + 89);
      v68 = *(a1 + 16);
      v159 = *a1;
      v160 = v68;
      v69 = *(a1 + 48);
      v161 = *(a1 + 32);
      v162 = v69;

      v125 = v65;
      v124 = *(sub_21E0A3E48() + 16);

      v170 = *(a1 + 64);
      v171 = *(a1 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC88);
      sub_21E1419F4();
      v122 = v168;
      v123 = v167;
      v70 = v169;
      type metadata accessor for SessionAnalytics();
      sub_21E0AD534(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
      v71 = sub_21E13F484();
      v73 = v72;
      v167 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDD8);
      sub_21E141704();
      v74 = v170;
      LOBYTE(v167) = 0;
      sub_21E141704();
      v75 = v170;
      v76 = *(&v170 + 1);
      type metadata accessor for CGSize(0);
      v167 = 0;
      v168 = 0;
      sub_21E141704();
      v174 = v73 & 1;
      *&v159 = v126;
      BYTE8(v159) = 1;
      *(&v159 + 9) = *v177;
      HIDWORD(v159) = *&v177[3];
      *&v160 = v66;
      *(&v160 + 1) = v125;
      *&v161 = v124;
      WORD4(v161) = 256;
      *(&v161 + 10) = v175;
      HIWORD(v161) = v176;
      *&v162 = v71;
      BYTE8(v162) = v73 & 1;
      HIDWORD(v162) = *&v173[3];
      *(&v162 + 9) = *v173;
      v163 = v74;
      LOBYTE(v164[0]) = v75;
      DWORD1(v164[0]) = *&v172[3];
      *(v164 + 1) = *v172;
      *(&v164[0] + 1) = v76;
      v164[1] = v170;
      *&v165 = v171;
      *(&v165 + 1) = v123;
      *&v166 = v122;
      *(&v166 + 1) = v70;
      sub_21E0AD4E0();
      v77 = v137;
      sub_21E141054();
      v183[1] = v164[1];
      v183[2] = v165;
      v183[3] = v166;
      v180 = v161;
      v181 = v162;
      v182 = v163;
      v183[0] = v164[0];
      v178 = v159;
      v179 = v160;
      sub_21E0AC6F4(&v178);
      v78 = sub_21E140974();
      LOBYTE(v168) = *(a1 + 8);
      v167 = *a1;
      if (v168 != 1)
      {

        sub_21E142574();
        v82 = sub_21E1408C4();
        sub_21E13F184();

        v83 = v132;
        sub_21E13FF84();
        swift_getAtKeyPath();
        sub_21DF23614(&v167, &qword_27CEA9A18);
        (*(OpaqueTypeConformance2 + 8))(v83, v134);
      }

      v84 = v127;
      v85 = v145;
      sub_21E13F374();
      v86 = v77 + *(v135 + 36);
      *v86 = v78;
      *(v86 + 8) = v87;
      *(v86 + 16) = v88;
      *(v86 + 24) = v89;
      *(v86 + 32) = v90;
      *(v86 + 40) = 0;
      sub_21E141CC4();
      sub_21E13FCE4();
      v91 = v153;
      sub_21DF3DE9C(v77, v153, &qword_27CEACD88);
      v92 = (v91 + *(v136 + 36));
      v93 = v164[0];
      v92[4] = v163;
      v92[5] = v93;
      v92[6] = v164[1];
      v94 = v160;
      *v92 = v159;
      v92[1] = v94;
      v95 = v162;
      v92[2] = v161;
      v92[3] = v95;
      sub_21E13F6A4();
      MEMORY[0x223D52580](0.4, 0.825, 0.0);
      v136 = sub_21E13F6F4();

      v96 = v142;
      sub_21E140394();
      v137 = *(v85 + 16);
      v97 = v131;
      v137(v155, v96, v131);
      v98 = v143;
      sub_21E1403B4();
      v99 = *(v85 + 8);
      v145 = v85 + 8;
      v135 = v99;
      v99(v96, v97);
      MEMORY[0x223D52580](0.225, 0.825, 0.0);
      v100 = v84;
      v101 = sub_21E0AD534(&qword_280F68E58, MEMORY[0x277CE0418]);
      v134 = v101;
      sub_21E13F424();

      v144 = *(v144 + 8);
      (v144)(v98, v100);
      *&v170 = v100;
      *(&v170 + 1) = v101;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_21E13F704();
      sub_21E13F6C4();

      sub_21E140394();
      v102 = v131;
      v137(v155, v96, v131);
      sub_21E1403B4();
      (v135)(v96, v102);
      MEMORY[0x223D52580](0.225, 0.825, 0.0);
      sub_21E13F424();

      (v144)(v98, v100);
      sub_21E13F704();
      v103 = sub_21E13F684();

      v104 = v139;
      sub_21DF3DE9C(v153, v139, &qword_27CEACD90);
      v105 = v149;
      *(v104 + *(v149 + 36)) = v103;
      v106 = v104;
      v107 = v138;
      sub_21DF3DE9C(v106, v138, &qword_27CEACD98);
      v81 = v148;
      sub_21DF3DE9C(v107, v148, &qword_27CEACD98);
      (*(v147 + 56))(v81, 0, 1, v105);
      v38 = v140;
    }

    else
    {
      v81 = v148;
      (*(v147 + 56))(v148, 1, 1, v149);
    }

    v109 = v150;
    v108 = v151;
    v110 = *(v150 + 16);
    v111 = v146;
    v110(v146, v38, v151);
    v112 = v152;
    sub_21DF236C0(v81, v152, &qword_27CEACDA0);
    v113 = v81;
    v114 = v128;
    v110(v128, v111, v108);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDE0);
    sub_21DF236C0(v112, v114 + *(v115 + 48), &qword_27CEACDA0);
    sub_21DF23614(v113, &qword_27CEACDA0);
    v116 = *(v109 + 8);
    v116(v140, v108);
    sub_21DF23614(v112, &qword_27CEACDA0);
    v116(v111, v108);
    v80 = v156;
    sub_21DF3DE9C(v114, v156, &qword_27CEACD80);
    v79 = 0;
    v12 = v129;
    v11 = v130;
  }

  else
  {
    v79 = 1;
    v80 = v156;
  }

  (*(v12 + 56))(v80, v79, 1, v11);
  v117 = v157;
  sub_21DF236C0(v80, v157, &qword_27CEACDB0);
  v118 = v158;
  *v158 = a3;
  *(v118 + 8) = 0;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDB8);
  sub_21DF236C0(v117, v118 + *(v119 + 48), &qword_27CEACDB0);
  sub_21DF23614(v80, &qword_27CEACDB0);
  return sub_21DF23614(v117, &qword_27CEACDB0);
}

uint64_t sub_21E0A613C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a1;
  v80 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8500);
  MEMORY[0x28223BE20](v79);
  v78 = &v58 - v6;
  v76 = sub_21E1403A4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v58 - v9;
  v77 = sub_21E1403C4();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13FF94();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD88);
  MEMORY[0x28223BE20](v67);
  v66 = &v58 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACD90);
  MEMORY[0x28223BE20](v68);
  v70 = &v58 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDD0);
  MEMORY[0x28223BE20](v69);
  v83 = &v58 - v15;
  v17 = *a2;
  v16 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21E145380;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  v81 = a3;
  v20 = a3[2];
  v19 = a3[3];
  swift_getKeyPath();
  *&v103 = v20;
  sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);

  v65 = v19;

  sub_21E13D3C4();

  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v22 = *(v20 + v21);
  swift_getKeyPath();
  *&v103 = v22;
  sub_21E0AD534(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v24 = *(v22 + v23);

  v25 = *(v24 + 16);

  v63 = v25 - 1 == v82;
  v64 = v82 == 0;
  v103 = *(v81 + 4);
  *&v104 = v81[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC88);
  sub_21E1419F4();
  v61 = *(&v86 + 1);
  v62 = v86;
  v26 = v87;
  type metadata accessor for SessionAnalytics();
  sub_21E0AD534(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  v27 = sub_21E13F484();
  v29 = v28;
  *&v86 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDD8);
  sub_21E141704();
  v30 = v103;
  LOBYTE(v86) = 0;
  sub_21E141704();
  LOBYTE(v25) = v103;
  v31 = *(&v103 + 1);
  type metadata accessor for CGSize(0);
  v86 = 0uLL;
  sub_21E141704();
  v99 = v29 & 1;
  *&v86 = v18;
  BYTE8(v86) = 0;
  *(&v86 + 9) = *v102;
  HIDWORD(v86) = *&v102[3];
  *&v87 = v20;
  *(&v87 + 1) = v65;
  *&v88 = v82;
  BYTE8(v88) = v64;
  BYTE9(v88) = v63;
  *(&v88 + 10) = v100;
  HIWORD(v88) = v101;
  *&v89 = v27;
  BYTE8(v89) = v29 & 1;
  HIDWORD(v89) = *&v98[3];
  *(&v89 + 9) = *v98;
  v90 = v30;
  v32 = v66;
  LOBYTE(v91) = v25;
  DWORD1(v91) = *&v97[3];
  *(&v91 + 1) = *v97;
  *(&v91 + 1) = v31;
  v92 = v103;
  *&v93 = v104;
  *(&v93 + 1) = v62;
  *&v94 = v61;
  *(&v94 + 1) = v26;
  sub_21E0AD4E0();
  sub_21E141054();
  v108 = v91;
  v109 = v92;
  v110 = v93;
  v111 = v94;
  v104 = v87;
  v105 = v88;
  v106 = v89;
  v107 = v90;
  v103 = v86;
  sub_21E0AC6F4(&v103);
  v33 = sub_21E140974();
  v96 = *(v81 + 8);
  v95 = *v81;
  if (v96 != 1)
  {

    sub_21E142574();
    v34 = sub_21E1408C4();
    sub_21E13F184();

    v35 = v58;
    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF23614(&v95, &qword_27CEA9A18);
    (*(v59 + 8))(v35, v60);
  }

  sub_21E13F374();
  v36 = v32 + *(v67 + 36);
  *v36 = v33;
  *(v36 + 8) = v37;
  *(v36 + 16) = v38;
  *(v36 + 24) = v39;
  *(v36 + 32) = v40;
  *(v36 + 40) = 0;
  sub_21E141CC4();
  sub_21E13FCE4();
  v41 = v70;
  sub_21DF3DE9C(v32, v70, &qword_27CEACD88);
  v42 = (v41 + *(v68 + 36));
  v43 = v91;
  v42[4] = v90;
  v42[5] = v43;
  v42[6] = v92;
  v44 = v87;
  *v42 = v86;
  v42[1] = v44;
  v45 = v89;
  v42[2] = v88;
  v42[3] = v45;
  v46 = v41;
  v47 = v83;
  sub_21DF3DE9C(v46, v83, &qword_27CEACD90);
  *(v47 + *(v69 + 36)) = 257;
  sub_21E13F6A4();
  v48 = v71;
  sub_21E140394();
  v49 = v74;
  v81 = *(v74 + 16);
  v50 = v72;
  v51 = v76;
  (v81)(v72, v48, v76);
  v52 = v73;
  sub_21E1403B4();
  v74 = *(v49 + 8);
  (v74)(v48, v51);
  v70 = sub_21E0AD534(&qword_280F68E58, MEMORY[0x277CE0418]);
  v53 = v77;
  sub_21E13F704();
  v82 = sub_21E13F6C4();

  sub_21E140394();
  (v81)(v50, v48, v51);
  sub_21E1403B4();
  (v74)(v48, v51);
  MEMORY[0x223D52580](0.225, 0.825, 0.0);
  v54 = v70;
  sub_21E13F424();

  (*(v75 + 8))(v52, v53);
  v84 = v53;
  v85 = v54;
  swift_getOpaqueTypeConformance2();
  sub_21E13F704();
  v55 = sub_21E13F684();

  v56 = v80;
  sub_21DF3DE9C(v83, v80, &qword_27CEACDD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACDC8);
  *(v56 + *(result + 36)) = v55;
  return result;
}

uint64_t sub_21E0A6CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E13F4A4();
  if (result)
  {
    v5 = *(a3 + 16);
    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI;
    result = swift_beginAccess();
    if (*(v5 + v6) == 1)
    {
      *(v5 + v6) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
      sub_21E13D3B4();
    }
  }

  return result;
}

__n128 sub_21E0A6E38@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7098);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E155250;
  sub_21E1414A4();
  *(v2 + 32) = sub_21E141B24();
  *(v2 + 40) = v3;
  sub_21E141484();
  sub_21E141514();

  *(v2 + 48) = sub_21E141B24();
  *(v2 + 56) = v4;
  sub_21E141484();
  sub_21E141514();

  *(v2 + 64) = sub_21E141B24();
  *(v2 + 72) = v5;
  sub_21E141484();
  *(v2 + 80) = sub_21E141B24();
  *(v2 + 88) = v6;
  sub_21E141484();
  sub_21E141514();

  *(v2 + 96) = sub_21E141B24();
  *(v2 + 104) = v7;
  sub_21E141484();
  sub_21E141514();

  *(v2 + 112) = sub_21E141B24();
  *(v2 + 120) = v8;
  sub_21E1414A4();
  *(v2 + 128) = sub_21E141B24();
  *(v2 + 136) = v9;
  sub_21E141E04();
  sub_21E141E14();
  sub_21E141B34();
  sub_21E13F8A4();
  *a1 = v11;
  result = v13;
  *(a1 + 8) = v12;
  *(a1 + 24) = v13;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_21E0A7018()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E0A708C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141724();
  return sub_21E141724();
}

double sub_21E0A7148@<D0>(_OWORD *a1@<X8>)
{
  result = *&xmmword_27CEACB70;
  *a1 = xmmword_27CEACB70;
  return result;
}

float64x2_t sub_21E0A715C(float64x2_t *a1, void (*a2)(float64x2_t *__return_ptr))
{
  a2(&v4);
  result = vbslq_s8(vcgeq_f64(v4, *a1), v4, *a1);
  *a1 = result;
  return result;
}

void sub_21E0A71B4(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_21E13EEE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = *(*v1 + 40);
    swift_getKeyPath();
    v13[0] = v10;
    sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);

    sub_21E13D3C4();

    v11 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(v10 + v11, v5, &qword_27CEA6D48);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_21DF23614(v5, &qword_27CEA6D48);
      v12 = 0;
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      static CardLayout.expectedLayout(for:)(&v14);
      (*(v7 + 8))(v9, v6);
      v12 = v14;
    }

    *a1 = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21E0A7420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBD8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBE0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  if (*(a1 + 8))
  {
    sub_21E0A7F2C(v4);
    sub_21DF236C0(v4, v7, &qword_27CEACBD8);
    swift_storeEnumTagMultiPayload();
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBF0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBF8);
    v14 = sub_21E0AC11C();
    v23 = v13;
    v24 = MEMORY[0x277D839B0];
    v25 = v14;
    v26 = MEMORY[0x277D839C8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v16 = sub_21DF3D110();
    v23 = v12;
    v24 = MEMORY[0x277D85048];
    v25 = OpaqueTypeConformance2;
    v26 = v16;
    swift_getOpaqueTypeConformance2();
    sub_21E0AC454();
    sub_21E1402F4();
    return sub_21DF23614(v4, &qword_27CEACBD8);
  }

  else
  {
    sub_21E0A77B4(&v23 - v10);
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBF0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBF8);
    v20 = sub_21E0AC11C();
    v23 = v19;
    v24 = MEMORY[0x277D839B0];
    v25 = v20;
    v26 = MEMORY[0x277D839C8];
    v21 = swift_getOpaqueTypeConformance2();
    v22 = sub_21DF3D110();
    v23 = v18;
    v24 = MEMORY[0x277D85048];
    v25 = v21;
    v26 = v22;
    swift_getOpaqueTypeConformance2();
    sub_21E0AC454();
    sub_21E1402F4();
    return (*(v9 + 8))(v11, v8);
  }
}

void sub_21E0A77B4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC30);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = *v2;
  if (*(*v2 + 16))
  {
    v63 = v11;
    v64 = v12;
    v60 = v7;
    v61 = v14;
    v16 = *(v15 + 40);
    *&v67 = *(v15 + 32);
    *(&v67 + 1) = v16;

    v62 = a1;
    sub_21E0A8C2C(&v67, 0, v6);

    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_21E142884();

    *&v67 = 0xD00000000000001CLL;
    *(&v67 + 1) = 0x800000021E15ED40;
    *v73 = *(v2 + 32);
    v17 = sub_21E142AB4();
    MEMORY[0x223D52A60](v17);

    MEMORY[0x223D52A60](0x3A656C7469542CLL, 0xE700000000000000);
    swift_getKeyPath();
    *v73 = v16;
    sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);

    sub_21E13D3C4();

    swift_beginAccess();
    v18 = *(v16 + 56);
    v19 = *(v16 + 64);

    MEMORY[0x223D52A60](v18, v19);

    sub_21E0AC31C();
    sub_21E141164();

    sub_21DF23614(v6, &qword_27CEACC30);
    v20 = sub_21E141CC4();
    v58 = v21;
    v67 = *(v2 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC80);
    sub_21E141714();
    v22 = *v73;
    v57 = *v73;
    *v73 = *(v2 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141734();
    v23 = v67;
    v24 = v68;
    v73[0] = 0;
    sub_21E141704();
    v59 = v9;
    LOBYTE(v16) = v67;
    v25 = *(&v67 + 1);
    *v70 = v22;
    *&v70[8] = v23;
    v70[24] = v24;
    LOBYTE(v71) = v67;
    *(&v71 + 1) = *(&v67 + 1);
    *&v72 = v20;
    v26 = v58;
    *(&v72 + 1) = v58;
    v27 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC10) + 36)];
    v28 = *&v70[16];
    *v27 = *v70;
    *(v27 + 1) = v28;
    v29 = v72;
    *(v27 + 2) = v71;
    *(v27 + 3) = v29;
    *v73 = v57;
    *&v73[8] = v23;
    v74 = v24;
    v75 = v16;
    v76 = v25;
    v77 = v20;
    v78 = v26;
    sub_21DF236C0(v70, &v67, &qword_27CEACC50);
    sub_21DF23614(v73, &qword_27CEACC50);
    v30 = swift_allocObject();
    v31 = *(v2 + 112);
    v30[7] = *(v2 + 96);
    v30[8] = v31;
    v30[9] = *(v2 + 128);
    v32 = *(v2 + 48);
    v30[3] = *(v2 + 32);
    v30[4] = v32;
    v33 = *(v2 + 80);
    v30[5] = *(v2 + 64);
    v30[6] = v33;
    v34 = *(v2 + 16);
    v30[1] = *v2;
    v30[2] = v34;
    v66 = 0;
    sub_21E0AC0DC(v2, &v67);
    sub_21E141704();
    v35 = v67;
    v36 = *(&v67 + 1);
    v38 = v59;
    v37 = v60;
    v39 = &v59[*(v60 + 36)];
    *v39 = sub_21E0AC688;
    *(v39 + 1) = v30;
    v39[16] = v35;
    *(v39 + 3) = v36;
    v40 = *(v2 + 16);
    swift_getKeyPath();
    *&v67 = v40;
    sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v41 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
    swift_beginAccess();
    LOBYTE(v65) = *(v40 + v41);
    v42 = swift_allocObject();
    v43 = *(v2 + 112);
    v42[7] = *(v2 + 96);
    v42[8] = v43;
    v42[9] = *(v2 + 128);
    v44 = *(v2 + 48);
    v42[3] = *(v2 + 32);
    v42[4] = v44;
    v45 = *(v2 + 80);
    v42[5] = *(v2 + 64);
    v42[6] = v45;
    v46 = *(v2 + 16);
    v42[1] = *v2;
    v42[2] = v46;
    sub_21E0AC0DC(v2, &v67);
    v47 = sub_21E0AC11C();
    v48 = MEMORY[0x277D839C8];
    v49 = v61;
    sub_21E141324();

    sub_21DF23614(v38, &qword_27CEACBF8);
    v67 = *(v2 + 120);
    v68 = *(v2 + 136);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC88);
    MEMORY[0x223D52200](&v65, v50);
    v51 = swift_allocObject();
    v52 = *(v2 + 112);
    v51[7] = *(v2 + 96);
    v51[8] = v52;
    v51[9] = *(v2 + 128);
    v53 = *(v2 + 48);
    v51[3] = *(v2 + 32);
    v51[4] = v53;
    v54 = *(v2 + 80);
    v51[5] = *(v2 + 64);
    v51[6] = v54;
    v55 = *(v2 + 16);
    v51[1] = *v2;
    v51[2] = v55;
    sub_21E0AC0DC(v2, &v67);
    *&v67 = v37;
    *(&v67 + 1) = MEMORY[0x277D839B0];
    v68 = v47;
    v69 = v48;
    swift_getOpaqueTypeConformance2();
    sub_21DF3D110();
    v56 = v63;
    sub_21E141324();

    (*(v64 + 8))(v49, v56);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21E0A7F2C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_21E13D384();
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E1420E4();
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13FC44();
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC70);
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCB0);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC68);
  MEMORY[0x28223BE20](v15 - 8);
  v56 = &v46 - v16;
  v59 = v1;
  v58 = v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCB8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCC0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA830);
  v18 = type metadata accessor for SuggestedActionButtonStyle(255);
  v19 = sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830);
  v20 = sub_21E0AD534(&qword_27CEA82D0, type metadata accessor for SuggestedActionButtonStyle);
  *v64 = v17;
  *&v64[8] = v18;
  *&v64[16] = v19;
  v65 = v20;
  swift_getOpaqueTypeConformance2();
  sub_21E0ACD34();
  sub_21E140AF4();
  v21 = v47;
  sub_21E13FC34();
  v22 = sub_21DF23E5C(&qword_27CEACC78, &qword_27CEACC70);
  v23 = sub_21E0AD534(&qword_27CEA7000, MEMORY[0x277CDDB18]);
  v52 = v14;
  v24 = v49;
  sub_21E140DC4();
  (*(v50 + 8))(v21, v24);
  (*(v48 + 8))(v11, v9);
  *v64 = 0;
  *&v64[8] = 0xE000000000000000;
  sub_21E142884();

  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021E15ED40;
  v50 = v1;
  *v64 = *(v1 + 32);
  v25 = sub_21E142AB4();
  MEMORY[0x223D52A60](v25);

  MEMORY[0x223D52A60](0x3A656C7469542CLL, 0xE700000000000000);
  sub_21E142084();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v26 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v27 = sub_21E142184();
  MEMORY[0x223D52A60](v27);

  *v64 = v9;
  *&v64[8] = v24;
  *&v64[16] = v22;
  v65 = v23;
  swift_getOpaqueTypeConformance2();
  v28 = v56;
  v29 = v54;
  v30 = v52;
  sub_21E141164();

  (*(v53 + 8))(v30, v29);
  v31 = sub_21E141CC4();
  v33 = v32;
  v34 = v50;
  *v64 = *(v50 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC80);
  sub_21E141714();
  v35 = *v61;
  *v61 = *(v34 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141734();
  v36 = *v64;
  v37 = v64[16];
  v61[0] = 0;
  sub_21E141704();
  v38 = v64[0];
  v39 = *&v64[8];
  *v61 = v35;
  *&v61[8] = v36;
  v61[24] = v37;
  LOBYTE(v62) = v64[0];
  *(&v62 + 1) = *&v64[8];
  *&v63 = v31;
  *(&v63 + 1) = v33;
  v40 = v28;
  v41 = v57;
  sub_21DF3DE9C(v40, v57, &qword_27CEACC68);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBD8) + 36));
  v43 = *&v61[16];
  *v42 = *v61;
  v42[1] = v43;
  v44 = v63;
  v42[2] = v62;
  v42[3] = v44;
  *v64 = v35;
  *&v64[8] = v36;
  LOBYTE(v65) = v37;
  v66 = v38;
  v67 = v39;
  v68 = v31;
  v69 = v33;
  sub_21DF236C0(v61, &v60, &qword_27CEACC50);
  return sub_21DF23614(v64, &qword_27CEACC50);
}

uint64_t sub_21E0A8718(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  if (*(a2 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82E0);
    result = sub_21E141714();
    v5 = v6;
  }

  *v3 = v5;
  if (*(a2 + 41))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82E0);
    result = sub_21E141714();
    v4 = v6;
  }

  v3[1] = v4;
  return result;
}

uint64_t sub_21E0A87DC(uint64_t a1)
{
  v9 = *a1;
  v10 = v9;
  v2 = swift_allocObject();
  v3 = *(a1 + 112);
  v2[7] = *(a1 + 96);
  v2[8] = v3;
  v2[9] = *(a1 + 128);
  v4 = *(a1 + 48);
  v2[3] = *(a1 + 32);
  v2[4] = v4;
  v5 = *(a1 + 80);
  v2[5] = *(a1 + 64);
  v2[6] = v5;
  v6 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v6;
  sub_21DF236C0(&v10, v8, &qword_27CEACCD0);
  sub_21E0AC0DC(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC30);
  sub_21DF23E5C(&qword_27CEACCD8, &qword_27CEACCD0);
  sub_21E0AC31C();
  sub_21E0ACE40();
  return sub_21E141A84();
}

uint64_t sub_21E0A8930@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC98);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = swift_allocObject();
  v15 = a2[7];
  *(v14 + 112) = a2[6];
  *(v14 + 128) = v15;
  *(v14 + 144) = a2[8];
  v16 = a2[3];
  *(v14 + 48) = a2[2];
  *(v14 + 64) = v16;
  v17 = a2[5];
  *(v14 + 80) = a2[4];
  *(v14 + 96) = v17;
  v18 = a2[1];
  *(v14 + 16) = *a2;
  *(v14 + 32) = v18;
  *(v14 + 160) = v13;
  *(v14 + 168) = v12;
  v20[4] = v13;
  v20[5] = v12;
  sub_21E0AC0DC(a2, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  sub_21E141764();
  (*(v9 + 16))(v7, v11, v8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC40);
  sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
  sub_21DF23E5C(&qword_27CEACC38, &qword_27CEACC40);
  sub_21E1402F4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21E0A8C2C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v7 = sub_21E13D834();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC40);
  MEMORY[0x28223BE20](v9);
  v11 = &v40[-v10];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC98);
  MEMORY[0x28223BE20](v48);
  v47 = &v40[-v12];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
  v13 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v40[-v14];
  v17 = *a1;
  v16 = a1[1];
  if (a2)
  {
    v18 = swift_allocObject();
    v19 = v4[7];
    *(v18 + 112) = v4[6];
    *(v18 + 128) = v19;
    *(v18 + 144) = v4[8];
    v20 = v4[3];
    *(v18 + 48) = v4[2];
    *(v18 + 64) = v20;
    v21 = v4[5];
    *(v18 + 80) = v4[4];
    *(v18 + 96) = v21;
    v22 = v4[1];
    *(v18 + 16) = *v4;
    *(v18 + 32) = v22;
    *(v18 + 160) = v17;
    *(v18 + 168) = v16;
    MEMORY[0x28223BE20](v18);
    *&v40[-16] = v17;
    *&v40[-8] = v16;
    sub_21E0AC0DC(v4, &v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
    sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
    sub_21E141764();
    v23 = v49;
    (*(v13 + 16))(v47, v15, v49);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    sub_21DF23E5C(&qword_27CEACC38, &qword_27CEACC40);
    sub_21E1402F4();
    return (*(v13 + 8))(v15, v23);
  }

  else
  {
    v25 = *(v4 + 2);
    swift_getKeyPath();
    *&v51 = v25;
    sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v26 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
    swift_beginAccess();
    v42 = *(v46 + 16);
    v27 = v25 + v26;
    v28 = v45;
    v42(v45, v27, v7);
    swift_getKeyPath();
    v44 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
    *&v51 = v16;
    v43 = sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3C4();

    v29 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
    swift_beginAccess();
    v41 = *(v16 + v29);
    v30 = swift_allocObject();
    v31 = v4[7];
    *(v30 + 112) = v4[6];
    *(v30 + 128) = v31;
    *(v30 + 144) = v4[8];
    v32 = v4[3];
    *(v30 + 48) = v4[2];
    *(v30 + 64) = v32;
    v33 = v4[5];
    *(v30 + 80) = v4[4];
    *(v30 + 96) = v33;
    v34 = v4[1];
    *(v30 + 16) = *v4;
    *(v30 + 32) = v34;
    *(v30 + 160) = v17;
    *(v30 + 168) = v16;
    v53 = 0;
    v54 = 0;
    sub_21E0AC0DC(v4, &v51);
    type metadata accessor for CGSize(0);

    sub_21E141704();
    v35 = v52;
    *v11 = v51;
    *(v11 + 2) = v35;
    *(v11 + 3) = 0x62614C7473726966;
    *(v11 + 4) = 0xEA00000000006C65;
    *(v11 + 5) = 0x614C646E6F636573;
    *(v11 + 6) = 0xEB000000006C6562;
    LOBYTE(v53) = 0;
    sub_21E141704();
    v36 = *(&v51 + 1);
    v11[56] = v51;
    *(v11 + 8) = v36;
    v53 = 0;
    v54 = 0;
    sub_21E141704();
    v37 = v52;
    *(v11 + 72) = v51;
    *(v11 + 11) = v37;
    v38 = &v11[v9[18]];
    v42(&v11[v9[17]], v28, v7);
    v11[v9[22]] = v41;
    *&v11[v9[19]] = 0x4018000000000000;
    *&v11[v9[24]] = 0x4038000000000000;
    *&v11[v9[21]] = 0x4018000000000000;
    *v38 = sub_21E0AC724;
    v38[1] = v30;
    v39 = v9[20];
    swift_getKeyPath();
    *&v51 = v16;
    sub_21E13D3C4();

    swift_beginAccess();

    *&v11[v39] = sub_21E141634();
    sub_21E0AA764(v16, v4, &v11[v9[23]]);
    (*(v46 + 8))(v28, v7);
    sub_21DF236C0(v11, v47, &qword_27CEACC40);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    sub_21DF23E5C(&qword_27CEACC38, &qword_27CEACC40);
    sub_21E1402F4();
    return sub_21DF23614(v11, &qword_27CEACC40);
  }
}

uint64_t sub_21E0A94C4(uint64_t a1)
{
  v2 = type metadata accessor for SuggestedActionButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA830);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  sub_21E141764();
  v9 = *(a1 + 16);
  swift_getKeyPath();
  v14[1] = v9;
  sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v11 = *(v2 + 20);
  v12 = sub_21E13D834();
  (*(*(v12 - 8) + 16))(v4 + v11, v9 + v10, v12);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v2 + 24)) = 0;
  sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830);
  sub_21E0AD534(&qword_27CEA82D0, type metadata accessor for SuggestedActionButtonStyle);
  sub_21E140DD4();
  sub_21DF9555C(v4);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21E0A97D4@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void *sub_21E0A98AC(unsigned __int8 *a1)
{
  v2 = v1;
  v40 = sub_21E13F1B4();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13FF94();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v35 - v9;
  v11 = sub_21E13EEE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v15 = *(v2 + 16);
  swift_getKeyPath();
  *&v43 = v15;
  sub_21E0AD534(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  result = swift_beginAccess();
  if ((*(v15 + v16) & 1) == 0)
  {
    v43 = *(v2 + 120);
    v44 = *(v2 + 136);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC88);
    result = MEMORY[0x223D52200](v45, v18);
    if (v45[0] > 0.0)
    {
      v19 = *v2;
      if (*(*v2 + 16))
      {
        v35[0] = v5;
        v20 = *(v19 + 40);
        swift_getKeyPath();
        v21 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
        *&v43 = v20;
        v22 = v12;
        v23 = sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);

        v35[2] = v21;
        v35[1] = v23;
        sub_21E13D3C4();

        v24 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
        swift_beginAccess();
        sub_21DF236C0(v20 + v24, v10, &qword_27CEA6D48);

        if ((*(v22 + 48))(v10, 1, v11) == 1)
        {
          sub_21DF23614(v10, &qword_27CEA6D48);
          v25 = v38;
          sub_21E13EC34();
          sub_21E0AC0DC(v2, &v43);
          v26 = sub_21E13F1A4();
          v27 = sub_21E142564();
          sub_21E0AC6F4(v2);
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v42 = v29;
            *v28 = 136315138;
            swift_getKeyPath();
            *&v43 = v20;

            sub_21E13D3C4();

            swift_beginAccess();
            v30 = *(v20 + 56);
            v31 = *(v20 + 64);

            v32 = sub_21E0E08C0(v30, v31, &v42);

            *(v28 + 4) = v32;
            _os_log_impl(&dword_21DF05000, v26, v27, "No pill present for suggested action %s", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v29);
            MEMORY[0x223D540B0](v29, -1, -1);
            MEMORY[0x223D540B0](v28, -1, -1);
          }

          return (*(v39 + 8))(v25, v40);
        }

        else
        {
          (*(v22 + 32))(v14, v10, v11);
          *&v43 = *(v2 + 48);
          BYTE8(v43) = *(v2 + 56);
          v33 = BYTE8(v43);

          if ((v33 & 1) == 0)
          {
            sub_21E142574();
            v34 = sub_21E1408C4();
            sub_21E13F184();

            sub_21E13FF84();
            swift_getAtKeyPath();
            sub_21DF23614(&v43, &qword_27CEACC90);
            (*(v36 + 8))(v7, v35[0]);
          }

          ActionPin.Pill.analyticsAction()();
          v41 = v37;
          sub_21E0F868C(&v42, &v41);

          return (*(v22 + 8))(v14, v11);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_21E0A9F8C(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v11 = *a1;
  v10 = a1[1];
  if (qword_27CEA6808 != -1)
  {
    swift_once();
  }

  if (v10 == qword_27CEB7738)
  {
    return sub_21E0C913C();
  }

  v26 = v11;
  swift_getKeyPath();
  *&v28[0] = v10;
  sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  sub_21DF236C0(v10 + v12, v9, &qword_27CEA77B8);
  v13 = sub_21E13F274();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_21DF23614(v9, &qword_27CEA77B8);
  if (v14 == 1)
  {
    swift_getKeyPath();
    *&v28[0] = v10;
    sub_21E13D3C4();

    v15 = v26;
    if (*(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) == 1)
    {
      v16 = sub_21DFE4D84();
      if (!v16)
      {
        MEMORY[0x28223BE20](v16);
        *(&v26 - 4) = v15;
        *(&v26 - 3) = v10;
        *(&v26 - 2) = v2;
        sub_21E141D64();
        sub_21E13F864();
      }
    }

    v17 = sub_21E1423F4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_21E1423C4();

    sub_21E0AC0DC(v2, v28);

    v18 = sub_21E1423B4();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    v21 = v2[7];
    *(v19 + 128) = v2[6];
    *(v19 + 144) = v21;
    *(v19 + 160) = v2[8];
    v22 = v2[3];
    *(v19 + 64) = v2[2];
    *(v19 + 80) = v22;
    v23 = v2[5];
    *(v19 + 96) = v2[4];
    *(v19 + 112) = v23;
    v24 = v2[1];
    *(v19 + 32) = *v2;
    *(v19 + 48) = v24;
    *(v19 + 176) = v10;
    *(v19 + 184) = v15;
    sub_21E0C2E04(0, 0, v6, &unk_21E155850, v19);
  }

  else
  {
    v28[0] = v2[4];
    v27 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC80);
    sub_21E141724();
    v28[0] = v2[5];
    LOBYTE(v27) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    return sub_21E141724();
  }
}

uint64_t sub_21E0AA400()
{
  swift_getKeyPath();
  sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();

  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E141684();
}

uint64_t sub_21E0AA59C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = swift_allocObject();
  v16 = a1[7];
  *(v15 + 112) = a1[6];
  *(v15 + 128) = v16;
  *(v15 + 144) = a1[8];
  v17 = a1[3];
  *(v15 + 48) = a1[2];
  *(v15 + 64) = v17;
  v18 = a1[5];
  *(v15 + 80) = a1[4];
  *(v15 + 96) = v18;
  v19 = a1[1];
  *(v15 + 16) = *a1;
  *(v15 + 32) = v19;
  *(v15 + 160) = a2;
  *(v15 + 168) = a3;

  sub_21E0AC0DC(a1, v26);
  v20 = MKBGetDeviceLockState();
  if (v20 != 3 && v20)
  {
    v21 = sub_21E1423F4();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    sub_21E1423C4();

    v22 = sub_21E1423B4();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = a6;
    v23[5] = v15;
    v23[6] = 0;
    v23[7] = 0;
    sub_21E0C2E04(0, 0, v14, a7, v23);
  }

  else
  {
    v26[0] = a2;
    v26[1] = a3;
    sub_21E0A9F8C(v26);
  }
}

uint64_t sub_21E0AA764@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCA0);
  MEMORY[0x28223BE20](v32);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACCA8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - v10;
  swift_getKeyPath();
  *&v37 = a1;
  sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v37 = v11;
  *(&v37 + 1) = v12;
  sub_21DF252E0();

  result = sub_21E140C94();
  v17 = *a2;
  if (*(*a2 + 16))
  {
    v18 = result;
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v28 = v9;
    v30 = v8;
    v31 = a3;
    v22 = *(v17 + 32);
    swift_getKeyPath();
    *&v37 = v22;
    sub_21E0AD534(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    sub_21E0A71B4(&v37);
    v23 = v37;
    *&v37 = v18;
    *(&v37 + 1) = v19;
    v24 = v20 & 1;
    v38 = v20 & 1;
    v39 = v21;
    if (v23 == 6)
    {
      v25 = v29;
      sub_21E0AAB78(&v37, a2);
      v26 = v28;
      v27 = v30;
      (*(v28 + 16))(v7, v25, v30);
      swift_storeEnumTagMultiPayload();
      v33 = MEMORY[0x277CE0BD8];
      v34 = MEMORY[0x277D837D0];
      v35 = MEMORY[0x277CE0BC8];
      v36 = MEMORY[0x277D837E0];
      swift_getOpaqueTypeConformance2();
      sub_21E1402F4();
      sub_21DF3DE8C(v18, v19, v24);

      return (*(v26 + 8))(v25, v27);
    }

    else
    {
      sub_21DF5AF24(v23);
      *v7 = v18;
      *(v7 + 1) = v19;
      v7[16] = v24;
      *(v7 + 3) = v21;
      swift_storeEnumTagMultiPayload();
      v33 = MEMORY[0x277CE0BD8];
      v34 = MEMORY[0x277D837D0];
      v35 = MEMORY[0x277CE0BC8];
      v36 = MEMORY[0x277D837E0];
      swift_getOpaqueTypeConformance2();
      return sub_21E1402F4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21E0AAB78(__int128 *a1, uint64_t a2)
{
  v4 = sub_21E13D344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 16);
  v8 = *(a1 + 3);
  v11 = *a1;
  v12 = v6;
  v13 = v8;
  v10[0] = 0x6974636172747865;
  v10[1] = 0xEB000000002D6E6FLL;
  if (*(*a2 + 16))
  {
    (*(v5 + 16))(v7, *(*a2 + 32) + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v4);
    sub_21E0AD534(&qword_27CEA6CF0, MEMORY[0x277CC95F0]);
    v9 = sub_21E142AB4();
    MEMORY[0x223D52A60](v9);

    (*(v5 + 8))(v7, v4);
    sub_21E141174();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21E0AAD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_21E13FF94();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  v6[16] = swift_task_alloc();
  v8 = sub_21E13EEE4();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  v6[20] = swift_task_alloc();
  sub_21E1423C4();
  v6[21] = sub_21E1423B4();
  v10 = sub_21E142364();
  v6[22] = v10;
  v6[23] = v9;

  return MEMORY[0x2822009F8](sub_21E0AAF38, v10, v9);
}

uint64_t sub_21E0AAF38()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = sub_21E13DFD4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_getKeyPath();
  *(v0 + 192) = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *(v0 + 56) = v2;
  *(v0 + 200) = sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v4 = *(v2 + 40) == 0;
  *(v0 + 49) = 6;
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_21E0AB0CC;
  v6 = *(v0 + 160);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  return NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(v8, v7, v6, v4, (v0 + 49));
}

uint64_t sub_21E0AB0CC()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  sub_21DF23614(v2, &qword_27CEAC550);
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_21E0AB220, v4, v3);
}

uint64_t sub_21E0AB220()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);

  swift_getKeyPath();
  *(v0 + 64) = v4;
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v4 + v5, v3, &qword_27CEA6D48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(*(v0 + 128), &qword_27CEA6D48);
  }

  else
  {
    v6 = *(v0 + 80);
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    v7 = *(v6 + 56);
    *(v0 + 40) = *(v6 + 48);
    *(v0 + 48) = v7;
    v8 = *(v0 + 48);

    if ((v8 & 1) == 0)
    {
      v10 = *(v0 + 112);
      v9 = *(v0 + 120);
      v11 = *(v0 + 104);
      sub_21E142574();
      v12 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF23614(v0 + 40, &qword_27CEACC90);
      (*(v10 + 8))(v9, v11);
    }

    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    ActionPin.Pill.analyticsAction()();
    v19 = 6;
    sub_21E0F8C08(&v18, &v19);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21E0AB4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBB8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23[-v4];
  v6 = v1[7];
  v30 = v1[6];
  v31 = v6;
  v32 = v1[8];
  v7 = v1[3];
  v26 = v1[2];
  v27 = v7;
  v8 = v1[5];
  v28 = v1[4];
  v29 = v8;
  v9 = v1[1];
  v24 = *v1;
  v25 = v9;
  *v5 = sub_21E141CC4();
  v5[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBC0);
  sub_21E0A7420(&v24);
  type metadata accessor for CGSize(0);
  v11 = swift_allocObject();
  v12 = v31;
  v11[7] = v30;
  v11[8] = v12;
  v11[9] = v32;
  v13 = v27;
  v11[3] = v26;
  v11[4] = v13;
  v14 = v29;
  v11[5] = v28;
  v11[6] = v14;
  v15 = v25;
  v11[1] = v24;
  v11[2] = v15;
  sub_21E0AC0DC(&v24, v23);
  sub_21DF23E5C(&qword_27CEACBC8, &qword_27CEACBB8);
  sub_21E0AD534(&qword_27CEA9E90, type metadata accessor for CGSize);
  sub_21E140FD4();

  sub_21DF23614(v5, &qword_27CEACBB8);
  v16 = swift_allocObject();
  v17 = v31;
  *(v16 + 7) = v30;
  *(v16 + 8) = v17;
  *(v16 + 9) = v32;
  v18 = v27;
  *(v16 + 3) = v26;
  *(v16 + 4) = v18;
  v19 = v29;
  *(v16 + 5) = v28;
  *(v16 + 6) = v19;
  v20 = v25;
  *(v16 + 1) = v24;
  *(v16 + 2) = v20;
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACBD0) + 36));
  *v21 = sub_21E0AC114;
  v21[1] = v16;
  return sub_21E0AC0DC(&v24, v23);
}

void *sub_21E0AB744(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  v8 = *(v1 + 8);
  v7 = *(v1 + 16);
  LOBYTE(v5) = *(v1 + 24);
  *&v18 = v8;
  *(&v18 + 1) = v7;
  v19 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  result = MEMORY[0x223D52200](&v17, v9);
  if (v17 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACE10);
    sub_21E1406D4();
    v17 = *(v1 + 32);
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141714();
    sub_21E0AD868(a1, v16[15], *v1);

    v11 = sub_21E1423F4();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v20 = v8;
    sub_21E1423C4();

    sub_21E0ADB78(&v20, &v17);

    sub_21DF236C0(&v18, &v17, &qword_27CEA6E78);
    v12 = sub_21E1423B4();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    v15 = v2[1];
    *(v13 + 32) = *v2;
    *(v13 + 48) = v15;
    *(v13 + 64) = v2[2];
    sub_21E0C2E04(0, 0, v6, &unk_21E155C58, v13);
  }

  return result;
}

uint64_t sub_21E0AB978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_21E1423C4();
  *(v4 + 48) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E0ABA10, v6, v5);
}

uint64_t sub_21E0ABA10()
{
  v1 = *(v0 + 40);

  v2 = *(v1 + 8);
  *(v0 + 32) = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 33) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  sub_21E1419D4();
  v3 = *(v0 + 8);

  return v3();
}

id sub_21E0ABABC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D18]);

  return [v0 init];
}

uint64_t sub_21E0ABAF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DataDetectorView.Coordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_21E0ABB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0ADC84();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E0ABB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0ADC84();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E0ABBF4()
{
  sub_21E0ADC84();
  sub_21E1402A4();
  __break(1u);
}

uint64_t sub_21E0ABC1C@<X0>(void *a1@<X8>)
{
  result = sub_21E13FDD4();
  *a1 = v3;
  return result;
}

unint64_t sub_21E0ABC8C()
{
  result = qword_27CEACB88;
  if (!qword_27CEACB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACB80);
    sub_21DF23E5C(&qword_27CEACB90, &qword_27CEACB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACB88);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21E0ABD94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_21E0ABDDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E0ABE6C()
{
  result = qword_27CEACBA8;
  if (!qword_27CEACBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8);
    sub_21E0ABC8C();
    sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DF0, &qword_27CEACBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACBA8);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21E0ABFFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E0AC044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E0AC11C()
{
  result = qword_27CEACC00;
  if (!qword_27CEACC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBF8);
    sub_21E0AC1A8();
    sub_21E0AC400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACC00);
  }

  return result;
}

unint64_t sub_21E0AC1A8()
{
  result = qword_27CEACC08;
  if (!qword_27CEACC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACC10);
    sub_21E0AC260();
    sub_21DF23E5C(&qword_27CEACC48, &qword_27CEACC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACC08);
  }

  return result;
}

unint64_t sub_21E0AC260()
{
  result = qword_27CEACC18;
  if (!qword_27CEACC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACC20);
    sub_21E0AC31C();
    sub_21E0AD534(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACC18);
  }

  return result;
}

unint64_t sub_21E0AC31C()
{
  result = qword_27CEACC28;
  if (!qword_27CEACC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACC30);
    sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    sub_21DF23E5C(&qword_27CEACC38, &qword_27CEACC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACC28);
  }

  return result;
}

unint64_t sub_21E0AC400()
{
  result = qword_280F694B8[0];
  if (!qword_280F694B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F694B8);
  }

  return result;
}

unint64_t sub_21E0AC454()
{
  result = qword_27CEACC58;
  if (!qword_27CEACC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBD8);
    sub_21E0AC50C();
    sub_21DF23E5C(&qword_27CEACC48, &qword_27CEACC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACC58);
  }

  return result;
}

unint64_t sub_21E0AC50C()
{
  result = qword_27CEACC60;
  if (!qword_27CEACC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACC68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACC70);
    sub_21E13FC44();
    sub_21DF23E5C(&qword_27CEACC78, &qword_27CEACC70);
    sub_21E0AD534(&qword_27CEA7000, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21E0AD534(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACC60);
  }

  return result;
}

void *sub_21E0AC7DC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_21DF5BD50(v2, 0);

    MEMORY[0x223D530E0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_21E1427B4();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

size_t sub_21E0AC878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_21DF5BE00(*(a1 + 16), 0);
  v4 = *(sub_21E13DD74() - 8);
  v5 = sub_21DF5ECD4(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v1, a1);

  sub_21DF5F790();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_21E0AC96C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21E0ACA44@<X0>(uint64_t a1@<X8>)
{
  sub_21DF252E0();

  result = sub_21E140C94();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21E0ACAF0(uint64_t a1)
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
  v10[1] = sub_21DF8DAF8;

  return sub_21DF4E8C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21E0ACBC4()
{
  NewEntityModel.prepareForPresentationOfAction(_:)(*(v0 + 24));

  return NewSaliencyModel.presentedEntity.setter(v1);
}

uint64_t sub_21E0ACC10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[22];
  v7 = v1[23];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E0AAD74(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t objectdestroy_70Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_21E0ACD34()
{
  result = qword_27CEACCC8;
  if (!qword_27CEACCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACCC0);
    sub_21E0AC31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACCC8);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

unint64_t sub_21E0ACE40()
{
  result = qword_27CEACCE0;
  if (!qword_27CEACCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACCE0);
  }

  return result;
}

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

unint64_t sub_21E0ACF5C()
{
  result = qword_27CEACD20;
  if (!qword_27CEACD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACCE8);
    sub_21DF23E5C(&qword_27CEACD28, &qword_27CEACD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACD20);
  }

  return result;
}

unint64_t sub_21E0AD050()
{
  result = qword_27CEACD50;
  if (!qword_27CEACD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACD48);
    sub_21E0AD108();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACD50);
  }

  return result;
}

unint64_t sub_21E0AD108()
{
  result = qword_27CEACD58;
  if (!qword_27CEACD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACD60);
    sub_21DF23E5C(&qword_27CEACD68, &qword_27CEACD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACD58);
  }

  return result;
}

uint64_t objectdestroyTm_24()
{
  sub_21DFE0F78(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_21E0AD258()
{
  result = qword_280F68EC0;
  if (!qword_280F68EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACDC8);
    sub_21E0AD310();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EC0);
  }

  return result;
}

unint64_t sub_21E0AD310()
{
  result = qword_280F68EE8;
  if (!qword_280F68EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACDD0);
    sub_21E0AD39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EE8);
  }

  return result;
}

unint64_t sub_21E0AD39C()
{
  result = qword_280F68F28;
  if (!qword_280F68F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACD90);
    sub_21E0AD428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F28);
  }

  return result;
}

unint64_t sub_21E0AD428()
{
  result = qword_280F68F98;
  if (!qword_280F68F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACD88);
    sub_21E0AD4E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F98);
  }

  return result;
}

unint64_t sub_21E0AD4E0()
{
  result = qword_280F69D08;
  if (!qword_280F69D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69D08);
  }

  return result;
}

uint64_t sub_21E0AD534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E0AD58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21E0AD5D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_21E0AD640()
{
  result = qword_27CEACDE8;
  if (!qword_27CEACDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACBB8);
    type metadata accessor for CGSize(255);
    sub_21DF23E5C(&qword_27CEACBC8, &qword_27CEACBB8);
    sub_21E0AD534(&qword_27CEA9E90, type metadata accessor for CGSize);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEACDF0, &qword_27CEACDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACDE8);
  }

  return result;
}

unint64_t sub_21E0AD7BC()
{
  result = qword_27CEACE00;
  if (!qword_27CEACE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACE00);
  }

  return result;
}

unint64_t sub_21E0AD814()
{
  result = qword_27CEACE08;
  if (!qword_27CEACE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACE08);
  }

  return result;
}

uint64_t sub_21E0AD868(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_21E13F274();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    (*(v10 + 56))(v8, 1, 1, v9, v11);
    return sub_21DF23614(v8, &qword_27CEA77B8);
  }

  swift_getKeyPath();
  v20[1] = a3;
  sub_21E0AD534(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  sub_21DF236C0(a3 + v14, v8, &qword_27CEA77B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21DF23614(v8, &qword_27CEA77B8);
  }

  (*(v10 + 32))(v13, v8, v9);
  v15 = sub_21E13F234();
  if (v15)
  {
    v16 = v15;
    [v15 setHidden_];
    [a1 bounds];
    [v16 setFrame_];
    [a1 addSubview_];
    if ((a2 & 1) != 0 && (v17 = sub_21E13F214()) != 0)
    {
      v18 = v17;
      [v16 setMenu_];
      [v16 setShowsMenuAsPrimaryAction_];
      [v16 performPrimaryAction];
    }

    else
    {
      sub_21E13F204();
    }
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21E0ADBD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DF8DAF8;

  return sub_21E0AB978(a1, v4, v5, v1 + 32);
}

unint64_t sub_21E0ADC84()
{
  result = qword_27CEACE18;
  if (!qword_27CEACE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACE18);
  }

  return result;
}

uint64_t sub_21E0ADCEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E0ADD34(uint64_t result, int a2, int a3)
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

double sub_21E0ADD9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  *&v29[0] = a1;
  *(&v29[0] + 1) = a2;
  sub_21DF252E0();

  v9 = sub_21E140C94();
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() defaultMetrics];
  [v14 scaledValueForValue_];

  v15 = sub_21E1409D4();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_21E140A24();
  sub_21DF23614(v8, &unk_27CEAD410);
  v16 = sub_21E140C44();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_21DF3DE8C(v9, v11, v13 & 1);

  sub_21E141CD4();
  sub_21E13FCE4();
  v30 = v20 & 1;
  KeyPath = swift_getKeyPath();
  v24 = sub_21E140904();
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20 & 1;
  *(a3 + 24) = v22;
  v25 = v29[5];
  *(a3 + 96) = v29[4];
  *(a3 + 112) = v25;
  *(a3 + 128) = v29[6];
  v26 = v29[1];
  *(a3 + 32) = v29[0];
  *(a3 + 48) = v26;
  v27 = v29[3];
  *(a3 + 64) = v29[2];
  *(a3 + 80) = v27;
  *(a3 + 144) = KeyPath;
  *(a3 + 152) = 0;
  *(a3 + 160) = v24;
  result = 0.0;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 1;
  return result;
}

double sub_21E0AE024@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_21E1401C4();
  v28 = 1;
  sub_21E0ADD9C(v3, v4, &v15);
  v39 = v25;
  v40[0] = v26[0];
  *(v40 + 9) = *(v26 + 9);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v29 = v15;
  v30 = v16;
  v41[9] = v24;
  v41[10] = v25;
  v42[0] = v26[0];
  *(v42 + 9) = *(v26 + 9);
  v41[6] = v21;
  v41[7] = v22;
  v41[8] = v23;
  v41[2] = v17;
  v41[3] = v18;
  v41[4] = v19;
  v41[5] = v20;
  v41[0] = v15;
  v41[1] = v16;
  sub_21E0AE2AC(&v29, &v14);
  sub_21DF23614(v41, &qword_27CEACE20);
  *(&v27[9] + 7) = v38;
  *(&v27[10] + 7) = v39;
  *(&v27[11] + 7) = v40[0];
  v27[12] = *(v40 + 9);
  *(&v27[5] + 7) = v34;
  *(&v27[6] + 7) = v35;
  *(&v27[7] + 7) = v36;
  *(&v27[8] + 7) = v37;
  *(&v27[1] + 7) = v30;
  *(&v27[2] + 7) = v31;
  *(&v27[3] + 7) = v32;
  *(&v27[4] + 7) = v33;
  *(v27 + 7) = v29;
  v6 = v27[8];
  *(a1 + 161) = v27[9];
  v7 = v27[11];
  *(a1 + 177) = v27[10];
  *(a1 + 193) = v7;
  *(a1 + 209) = v27[12];
  v8 = v27[4];
  *(a1 + 97) = v27[5];
  v9 = v27[7];
  *(a1 + 113) = v27[6];
  *(a1 + 129) = v9;
  *(a1 + 145) = v6;
  v10 = v27[0];
  *(a1 + 33) = v27[1];
  result = *&v27[2];
  v12 = v27[3];
  *(a1 + 49) = v27[2];
  *(a1 + 65) = v12;
  *(a1 + 81) = v8;
  v13 = v28;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 17) = v10;
  return result;
}

uint64_t sub_21E0AE2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E0AE31C()
{
  result = qword_27CEACE28;
  if (!qword_27CEACE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEACE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACE28);
  }

  return result;
}

uint64_t sub_21E0AE380()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E13F2E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  return sub_21E1419D4();
}

uint64_t sub_21E0AE42C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  v7 = v11;
  v11 = *v1;
  v12 = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = *v1;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v5;
  *(v8 + 56) = v6;
  *a1 = v7;
  a1[1] = sub_21E0AED5C;
  a1[2] = v8;
  sub_21E0AED64(&v11, v10);

  sub_21E0ADB78(&v12, v10);
}

id sub_21E0AE5CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrillInHost.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E0AE670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E0AE6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21E0AE710@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = type metadata accessor for DrillInHost.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV20VisualIntelligenceUI11DrillInHost11Coordinator_parent];
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = v3;

  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_21E0AE798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0AEC34();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21E0AE7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0AEC34();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21E0AE860()
{
  sub_21E0AEC34();
  sub_21E1407A4();
  __break(1u);
}

unint64_t sub_21E0AE88C()
{
  result = qword_27CEACF10;
  if (!qword_27CEACF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF10);
  }

  return result;
}

id sub_21E0AE8E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75788]);
    v4 = a2;
    v5 = [v3 init];
    [v5 configureWithTransparentBackground];
    v6 = [v4 navigationBar];
    [v6 setStandardAppearance_];

    v7 = sub_21E1420F4();
    v8 = [objc_opt_self() systemImageNamed_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACF18);
    sub_21E1408A4();
    v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v8 style:0 target:v19 action:sel_backButtonTapped];

    v10 = [v4 viewControllers];
    sub_21E0AEBE8();
    v11 = sub_21E1422D4();

    if (v11 >> 62)
    {
      result = sub_21E1427B4();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223D530F0](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v13 = *(v11 + 32);
        }

        v14 = v13;

        v15 = [v14 navigationItem];

        [v15 setLeftBarButtonItem_];
        goto LABEL_13;
      }
    }

LABEL_13:
    v17 = [v4 navigationBar];
    v18 = [v17 topItem];

    if (v18)
    {
      [v18 setRightBarButtonItem_];
    }

    sub_21E1408A4();
    [v4 setDelegate_];

    return v4;
  }

  type metadata accessor for SecureNavigationController();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v16 init];
}

unint64_t sub_21E0AEBE8()
{
  result = qword_27CEA9DF0;
  if (!qword_27CEA9DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEA9DF0);
  }

  return result;
}

unint64_t sub_21E0AEC34()
{
  result = qword_27CEACF28;
  if (!qword_27CEACF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF28);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21E0AEC9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21E0AECE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E0AED64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AnyTransition.offset(yOffset:delay:)()
{
  sub_21E141704();
  sub_21E141704();
  sub_21E141704();
  sub_21E141704();
  sub_21E0AEF40();
  v0 = sub_21E13F6E4();

  return v0;
}

unint64_t sub_21E0AEF40()
{
  result = qword_27CEACF38;
  if (!qword_27CEACF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF38);
  }

  return result;
}

uint64_t static AnyTransition.offset(xOffset:yOffset:delay:)()
{
  sub_21E141704();
  sub_21E141704();
  sub_21E141704();
  sub_21E141704();
  sub_21E0AEF40();
  v0 = sub_21E13F6E4();

  return v0;
}

uint64_t sub_21E0AF0C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21E0AF120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void (*sub_21E0AF1A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

unint64_t sub_21E0AF22C()
{
  result = qword_27CEACF40;
  if (!qword_27CEACF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF40);
  }

  return result;
}

uint64_t sub_21E0AF2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21E0AFB40();

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_21E0AF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21E0AFB40();

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_21E0AF398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACF48);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACF50);
  v8 = a2 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_21E0AF43C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACF60);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - v4;
  v16 = *v1;
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = *(v1 + 48);
  sub_21E0AFBD4(v1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACF68);
  sub_21DF23E5C(&qword_27CEACF70, &qword_27CEACF68);
  sub_21DF3D110();
  sub_21E141324();

  v15[0] = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  v8 = v16;
  v9 = &v5[*(v3 + 36)];
  *v9 = 0;
  *(v9 + 1) = v8;
  v16 = *(v1 + 8);
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = *(v1 + 48);
  sub_21E0AFBD4(v1, v15);
  sub_21E0AFC4C();
  sub_21E141324();

  sub_21DF1A68C(v5);
  v15[0] = *(v1 + 24);
  sub_21E141714();
  v12 = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACF80);
  v14 = (a1 + *(result + 36));
  *v14 = v12;
  v14[1] = 0;
  return result;
}

uint64_t sub_21E0AF6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v7 = sub_21E141E74();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E141E94();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E141EB4();
  v27 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_21DFA9C80();
  v25 = sub_21E1425C4();
  sub_21E141EA4();
  sub_21E141EC4();
  v26 = *(v14 + 8);
  v26(v16, v13);
  v20 = swift_allocObject();
  v21 = *(a3 + 16);
  *(v20 + 16) = *a3;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a3 + 32);
  *(v20 + 64) = *(a3 + 48);
  aBlock[4] = v28;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E079CD4;
  aBlock[3] = v29;
  v22 = _Block_copy(aBlock);
  sub_21E0AFBD4(a3, v33);

  sub_21E141E84();
  v33[0] = MEMORY[0x277D84F90];
  sub_21E01968C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
  sub_21E142764();
  v23 = v25;
  MEMORY[0x223D52DF0](v19, v12, v9, v22);
  _Block_release(v22);

  (*(v32 + 8))(v9, v7);
  (*(v30 + 8))(v12, v31);
  return (v26)(v19, v27);
}

uint64_t sub_21E0AFA80()
{
  sub_21E141D64();
  sub_21E13F864();
}

unint64_t sub_21E0AFB40()
{
  result = qword_27CEACF58;
  if (!qword_27CEACF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF58);
  }

  return result;
}

unint64_t sub_21E0AFC4C()
{
  result = qword_27CEACF78;
  if (!qword_27CEACF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACF68);
    sub_21DF23E5C(&qword_27CEACF70, &qword_27CEACF68);
    sub_21DF3D110();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF78);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_25()
{

  return swift_deallocObject();
}

unint64_t sub_21E0AFEDC()
{
  result = qword_27CEACF88;
  if (!qword_27CEACF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACF50);
    sub_21DF23E5C(&qword_27CEACF90, &qword_27CEACF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF88);
  }

  return result;
}

unint64_t sub_21E0AFF94()
{
  result = qword_27CEACF98;
  if (!qword_27CEACF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACF60);
    sub_21E0AFC4C();
    sub_21DF3D110();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEACF98);
  }

  return result;
}

uint64_t sub_21E0B0080(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for WaypointLayout.WaypointFrame(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_21DF5C054(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for WaypointLayout.Element(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_21DF5C054(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_21E0B971C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for WaypointLayout.WaypointFrame);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0B027C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_21DF5C098(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21DF5C098((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 8 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_21E0B03F0(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x277D84F90];
  sub_21DF5C0E8(0, v4, 0);
  v5 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v9 = v15;
    v16 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = v15;
      sub_21DF5C0E8((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v5 = v16;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 16 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t GeoLookupCardView.init(state:dismissalAction:showDebugGeoLookupResults:customContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_21E13DBC4();
  v18 = *(v12 - 8);
  (*(v18 + 16))(a6, a1, v12);
  v13 = type metadata accessor for GeoLookupCardView();
  v14 = (a6 + *(v13 + 36));
  *v14 = a2;
  v14[1] = a3;
  *(a6 + *(v13 + 40)) = a4;
  v15 = sub_21DF09028(a2);
  a5(v15);
  sub_21DF1F1DC(a2);
  v16 = *(v18 + 8);

  return v16(a1, v12);
}

void sub_21E0B0668()
{
  v0 = sub_21E13E514();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E145380;
  *(inited + 32) = sub_21E142124();
  *(inited + 40) = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 72) = sub_21DF3ED18(0, &qword_27CEAC960);
  *(inited + 48) = v3;
  sub_21DF2667C(inited);
  swift_setDeallocating();
  sub_21DF23614(inited + 32, &qword_27CEA6B98);
  v4 = sub_21E141FF4();

  [v0 openInMapsWithLaunchOptions_];
}

uint64_t sub_21E0B07A8()
{
  sub_21E0BA134();
  sub_21E13FFA4();
  return v1;
}

void sub_21E0B07E4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 mapItem];
  v7 = v6;
  if (a3)
  {
    v8 = v5;
    if (v6)
    {
      sub_21DF3ED18(0, &qword_27CEAD450);
      v9 = sub_21E1426D4();

      if (v9)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v8 = v6;
    if (!v6)
    {
      return;
    }
  }

LABEL_7:

  [a1 setMapItem_];
}

id sub_21E0B08B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D266B0]) initWithMapItem_];
  [v1 setScrollEnabled_];
  [v1 setOptions_];
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E0B099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0BAD48();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21E0B0A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E0BAD48();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21E0B0A64()
{
  sub_21E0BAD48();
  sub_21E1407A4();
  __break(1u);
}

uint64_t sub_21E0B0A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a1;
  v143 = a2;
  v2 = sub_21E13FF94();
  v129 = *(v2 - 8);
  v130 = v2;
  MEMORY[0x28223BE20](v2);
  v128 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD360);
  MEMORY[0x28223BE20](v138);
  v5 = (&v113 - v4);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92C0);
  MEMORY[0x28223BE20](v137);
  v141 = &v113 - v6;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD370);
  MEMORY[0x28223BE20](v140);
  v142 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = &v113 - v9;
  MEMORY[0x28223BE20](v10);
  v146 = &v113 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  MEMORY[0x28223BE20](v133);
  v131 = &v113 - v12;
  v13 = sub_21E13FBE4();
  v126 = *(v13 - 8);
  v127 = v13;
  MEMORY[0x28223BE20](v13);
  v125 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GeoLookupResultItemView(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v136 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v113 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD378);
  v117 = *(v21 - 8);
  v118 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v113 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD380);
  MEMORY[0x28223BE20](v115);
  v116 = &v113 - v24;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD388);
  MEMORY[0x28223BE20](v121);
  v26 = &v113 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD390);
  v123 = *(v27 - 8);
  v124 = v27;
  MEMORY[0x28223BE20](v27);
  v122 = &v113 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD398);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v120 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v119 = &v113 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD3A0);
  MEMORY[0x28223BE20](v145);
  v144 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v132 = v15;
  v39 = *(v36 + *(v15 + 28));
  v147 = &v113 - v37;
  v134 = v16;
  v135 = v17;
  if (v39 == 1)
  {
    v113 = v30;
    v114 = v5;
    sub_21E0B9060(v36, v20, type metadata accessor for GeoLookupResultItemView);
    v40 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v41 = swift_allocObject();
    sub_21E0B971C(v20, v41 + v40, type metadata accessor for GeoLookupResultItemView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3C0);
    sub_21E0BA9AC();
    sub_21E141764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E147C80;
    LOBYTE(v40) = sub_21E140924();
    *(inited + 32) = v40;
    v43 = sub_21E140944();
    *(inited + 33) = v43;
    v44 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() != v40)
    {
      v44 = sub_21E140954();
    }

    sub_21E140954();
    if (sub_21E140954() != v43)
    {
      v44 = sub_21E140954();
    }

    v5 = v114;
    v45 = v29;
    v46 = v116;
    (*(v117 + 32))(v116, v23, v118);
    v47 = v46 + *(v115 + 36);
    *v47 = v44;
    *(v47 + 8) = 0u;
    *(v47 + 24) = 0u;
    *(v47 + 40) = 1;
    sub_21E141CD4();
    sub_21E13FCE4();
    sub_21DF3DE9C(v46, v26, &qword_27CEAD380);
    v48 = &v26[*(v121 + 36)];
    v49 = v169;
    *(v48 + 4) = v168;
    *(v48 + 5) = v49;
    *(v48 + 6) = v170;
    v50 = v165;
    *v48 = v164;
    *(v48 + 1) = v50;
    v51 = v167;
    *(v48 + 2) = v166;
    *(v48 + 3) = v51;
    v52 = v125;
    sub_21E13FBD4();
    sub_21E0BAA38();
    sub_21E0B9018(&unk_27CEAD400, MEMORY[0x277CDDA98]);
    v53 = v122;
    v54 = v127;
    sub_21E140DC4();
    (*(v126 + 8))(v52, v54);
    sub_21DF23614(v26, &qword_27CEAD388);
    v55 = v120;
    v56 = &v120[*(v45 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
    sub_21E13FCF4();
    *v56 = swift_getKeyPath();
    (*(v123 + 32))(v55, v53, v124);
    v57 = v119;
    sub_21DF3DE9C(v55, v119, &qword_27CEAD398);
    v58 = v147;
    sub_21DF3DE9C(v57, v147, &qword_27CEAD398);
    (*(v113 + 56))(v58, 0, 1, v45);
  }

  else
  {
    (*(v30 + 56))(&v113 - v37, 1, 1, v29, v38);
  }

  v59 = v131;
  v60 = v145;
  sub_21DF236C0(v145 + *(v132 + 24), v131, &unk_27CEACFB0);
  v61 = *(v133 + 64);
  v133 = sub_21E13E514();
  v62 = sub_21E13E524();
  (*(*(v62 - 8) + 8))(v59, v62);
  sub_21DF23614(v59 + v61, &qword_27CEA6D18);
  sub_21E141CD4();
  sub_21E13FCE4();
  sub_21E1400D4();
  v63 = v136;
  sub_21E0B9060(v60, v136, type metadata accessor for GeoLookupResultItemView);
  v64 = (*(v134 + 80) + 16) & ~*(v134 + 80);
  v65 = swift_allocObject();
  sub_21E0B971C(v63, v65 + v64, type metadata accessor for GeoLookupResultItemView);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v66 = v138;
  *(v5 + *(v138 + 36)) = xmmword_21E156140;
  v67 = (v5 + *(v66 + 40));
  *v67 = sub_21E0BA65C;
  v67[1] = v65;
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v68 = [objc_opt_self() mainBundle];
  }

  v69 = sub_21E140C64();
  v70 = v5 + *(v66 + 44);
  *v70 = v69;
  *(v70 + 1) = v71;
  v70[16] = v72 & 1;
  *(v70 + 3) = v73;
  v74 = v141;
  v75 = &v141[*(v137 + 36)];
  sub_21E141BD4();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B80);
  v77 = &v75[*(v76 + 52)];
  v78 = *(sub_21E13FCA4() + 20);
  v79 = *MEMORY[0x277CE0118];
  v80 = sub_21E140144();
  (*(*(v80 - 8) + 104))(&v77[v78], v79, v80);
  __asm { FMOV            V0.2D, #16.0 }

  *v77 = _Q0;
  *&v75[*(v76 + 56)] = 256;
  sub_21DF3DE9C(v5, v74, &unk_27CEAD360);
  LOBYTE(v75) = sub_21E140904();
  sub_21E13F374();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v139;
  sub_21DF3DE9C(v74, v139, &qword_27CEA92C0);
  v95 = v94 + *(v140 + 36);
  *v95 = v75;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  sub_21DF3DE9C(v94, v146, &qword_27CEAD370);
  v96 = *(v60 + 24);
  LOBYTE(v94) = *(v60 + 32);

  if ((v94 & 1) == 0)
  {
    sub_21E142574();
    v97 = sub_21E1408C4();
    sub_21E13F184();

    v98 = v128;
    sub_21E13FF84();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v129 + 8))(v98, v130);
    v96 = v149;
  }

  v100 = v143;
  v99 = v144;
  sub_21DF236C0(v147, v144, &unk_27CEAD3A0);
  v101 = v146;
  v102 = v142;
  sub_21DF236C0(v146, v142, &qword_27CEAD370);
  sub_21DF236C0(v99, v100, &unk_27CEAD3A0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3B0);
  v104 = v100 + v103[12];
  v105 = v133;
  *v148 = v133;
  *&v148[8] = v157;
  *&v148[24] = v158;
  *&v148[40] = v159;
  *&v148[56] = v160;
  *&v148[88] = v162;
  *&v148[72] = v161;
  *&v148[104] = v163;
  v106 = *v148;
  v107 = *&v148[16];
  v108 = *&v148[48];
  *(v104 + 32) = *&v148[32];
  *(v104 + 48) = v108;
  *v104 = v106;
  *(v104 + 16) = v107;
  v109 = *&v148[64];
  v110 = *&v148[80];
  v111 = *&v148[96];
  *(v104 + 112) = *&v148[112];
  *(v104 + 80) = v110;
  *(v104 + 96) = v111;
  *(v104 + 64) = v109;
  sub_21DF236C0(v102, v100 + v103[16], &qword_27CEAD370);
  *(v100 + v103[20]) = v96;
  sub_21DF236C0(v148, &v149, &qword_27CEAD3B8);

  sub_21DF23614(v101, &qword_27CEAD370);
  sub_21DF23614(v147, &unk_27CEAD3A0);

  sub_21DF23614(v102, &qword_27CEAD370);
  v149 = v105;
  v154 = v161;
  v155 = v162;
  v156 = v163;
  v150 = v157;
  v151 = v158;
  v152 = v159;
  v153 = v160;
  sub_21DF23614(&v149, &qword_27CEAD3B8);
  return sub_21DF23614(v144, &unk_27CEAD3A0);
}

uint64_t sub_21E0B1B40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for GeoLookupResultItemView(0);
  sub_21DF236C0(v5, v2, &unk_27CEACFA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD2E0);
  sub_21E1419D4();
  return sub_21DF23614(v5, &unk_27CEACFA0);
}

double sub_21E0B1C8C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = sub_21E141614();
  sub_21E1409F4();
  v6 = sub_21E1409D4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_21E140A24();
  sub_21DF23614(v4, &unk_27CEAD410);
  KeyPath = swift_getKeyPath();
  sub_21E141CC4();
  sub_21E13FCE4();
  v9 = v13[2];
  *(a1 + 72) = v13[3];
  v10 = v13[5];
  *(a1 + 88) = v13[4];
  *(a1 + 104) = v10;
  *(a1 + 120) = v13[6];
  result = *v13;
  v12 = v13[1];
  *(a1 + 24) = v13[0];
  *(a1 + 40) = v12;
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 56) = v9;
  return result;
}

uint64_t sub_21E0B1E44(uint64_t a1)
{
  v2 = sub_21E13FF94();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13D264();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = sub_21E13E524();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GeoLookupResultItemView(0);
  sub_21DF236C0(a1 + *(v17 + 24), v12, &unk_27CEACFB0);
  v18 = *(v10 + 72);
  (*(v14 + 32))(v16, v12, v13);
  sub_21DF23614(&v12[v18], &qword_27CEA6D18);
  sub_21E13E324();
  v19 = sub_21E13E514();
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E145380;
  v45[0] = sub_21E142124();
  v45[1] = v22;
  v23 = v19;
  sub_21E142824();
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 96) = sub_21DF3ED18(0, &qword_27CEAC960);
  *(inited + 72) = v24;
  sub_21DF27100(inited);
  swift_setDeallocating();
  sub_21DF23614(inited + 32, &qword_27CEA6C18);
  v25 = sub_21E141FF4();

  v26 = [v20 urlForMapItem:v23 options:v25];

  if (v26)
  {
    v38 = v13;
    sub_21E13D214();

    v27 = v42;
    v28 = v43;
    v29 = v44;
    (*(v43 + 32))(v42, v6, v44);
    v30 = *a1;
    v31 = *(a1 + 16);
    v32 = v29;
    if (v31 == 1)
    {
    }

    else
    {

      sub_21E142574();
      v34 = sub_21E1408C4();
      sub_21E13F184();

      v35 = v39;
      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF446B8();
      (*(v40 + 8))(v35, v41);
      v30 = v45[0];
    }

    v36 = v38;
    LOBYTE(v45[0]) = 1;
    v30(v27, v45);

    (*(v28 + 8))(v27, v32);
    return (*(v14 + 8))(v16, v36);
  }

  else
  {
    sub_21E0B0668();

    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_21E0B2388@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E1401C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD350);
  sub_21E0B0A8C(v1, a1 + *(v3 + 44));
  v4 = sub_21E13FB64();
  v5 = sub_21E140914();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD358);
  v7 = a1 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

uint64_t sub_21E0B2418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for GeoLookupResultViewContainer(0);
  v4 = v3 - 8;
  v31 = *(v3 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD160);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD168);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = sub_21E0F05E8(*(v1 + *(v4 + 40)), *(v1 + *(v4 + 36)));
  v15 = v14;
  v17 = v16;

  sub_21E0B271C(v13, v15, v17, v2, v8);
  sub_21E141CC4();
  sub_21E13FCE4();
  swift_unknownObjectRelease();
  sub_21DF3DE9C(v8, v12, &qword_27CEAD160);
  v18 = &v12[*(v10 + 44)];
  v19 = v38;
  *(v18 + 4) = v37;
  *(v18 + 5) = v19;
  *(v18 + 6) = v39;
  v20 = v34;
  *v18 = v33;
  *(v18 + 1) = v20;
  v21 = v36;
  *(v18 + 2) = v35;
  *(v18 + 3) = v21;
  v22 = v2;
  v23 = v30;
  sub_21E0B9060(v22, v30, type metadata accessor for GeoLookupResultViewContainer);
  v24 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v25 = swift_allocObject();
  sub_21E0B971C(v23, v25 + v24, type metadata accessor for GeoLookupResultViewContainer);
  v26 = v32;
  sub_21DF3DE9C(v12, v32, &qword_27CEAD168);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD170);
  v28 = (v26 + *(result + 36));
  *v28 = 0;
  v28[1] = 0;
  v28[2] = sub_21E0B8F18;
  v28[3] = v25;
  return result;
}

void sub_21E0B271C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v59 = a4;
  v55 = a2;
  v52 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD178);
  MEMORY[0x28223BE20](v62);
  v8 = (&v47 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD180);
  MEMORY[0x28223BE20](v60);
  v61 = &v47 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD188);
  MEMORY[0x28223BE20](v56);
  v57 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD190);
  MEMORY[0x28223BE20](v14);
  v58 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = type metadata accessor for GeoLookupResultItemView(0);
  MEMORY[0x28223BE20](v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  if (__OFSUB__(a3 >> 1, v23))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if ((a3 >> 1) - v23 == 1)
  {
    if ((a3 >> 1) > v23)
    {
      sub_21DF236C0(v55 + *(v17 + 72) * v23, v21, &unk_27CEACFB0);
      v26 = *&v21[*(v16 + 48)];
      v27 = *(v16 + 64);
      type metadata accessor for GeoLookupResultViewContainer(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD130);
      sub_21E141734();
      *v25 = swift_getKeyPath();
      *(v25 + 1) = 0;
      v25[16] = 0;
      *(v25 + 3) = swift_getKeyPath();
      v25[32] = 0;
      v28 = &v25[*(v22 + 24)];
      v29 = *(v16 + 48);
      v30 = *(v16 + 64);
      v31 = sub_21E13E524();
      (*(*(v31 - 8) + 32))(v28, v21, v31);
      *&v28[v29] = v26;
      sub_21DF3DE9C(&v21[v27], &v28[v30], &qword_27CEA6D18);
      v25[*(v22 + 28)] = 0;
      sub_21E0B9060(v25, v57, type metadata accessor for GeoLookupResultItemView);
      swift_storeEnumTagMultiPayload();
      sub_21E0B9018(&qword_27CEAD1A8, type metadata accessor for GeoLookupResultItemView);
      v32 = v58;
      sub_21E1402F4();
      sub_21DF236C0(v32, v61, &qword_27CEAD190);
      swift_storeEnumTagMultiPayload();
      sub_21E0B8F64();
      sub_21DF23E5C(&unk_27CEAD1B0, &qword_27CEAD178);
      sub_21E1402F4();
      sub_21DF23614(v32, &qword_27CEAD190);
      sub_21E0B9784(v25, type metadata accessor for GeoLookupResultItemView);
      return;
    }

    goto LABEL_10;
  }

  v48 = v23;
  v49 = v8;
  v50 = v14;
  v51 = a5;
  type metadata accessor for GeoLookupResultViewContainer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD130);
  v33 = v59;
  sub_21E141714();
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_21DF23614(v11, &unk_27CEACFA0);
    v34 = sub_21E1401D4();
    v35 = v49;
    *v49 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD198);
    sub_21E0B302C(v55, v48, v53, v33, v35 + *(v36 + 44));
    sub_21DF236C0(v35, v61, &qword_27CEAD178);
    swift_storeEnumTagMultiPayload();
    sub_21E0B8F64();
    sub_21DF23E5C(&unk_27CEAD1B0, &qword_27CEAD178);
    sub_21E1402F4();
    v37 = v35;
    v38 = &qword_27CEAD178;
  }

  else
  {
    v39 = v54;
    sub_21DF3DE9C(v11, v54, &unk_27CEACFB0);
    sub_21DF236C0(v39, v21, &unk_27CEACFB0);
    v40 = *&v21[*(v16 + 48)];
    v41 = *(v16 + 64);
    sub_21E141734();
    *v25 = swift_getKeyPath();
    *(v25 + 1) = 0;
    v25[16] = 0;
    *(v25 + 3) = swift_getKeyPath();
    v25[32] = 0;
    v42 = &v25[*(v22 + 24)];
    v43 = *(v16 + 48);
    v44 = *(v16 + 64);
    v45 = sub_21E13E524();
    (*(*(v45 - 8) + 32))(v42, v21, v45);
    *&v42[v43] = v40;
    sub_21DF3DE9C(&v21[v41], &v42[v44], &qword_27CEA6D18);
    v25[*(v22 + 28)] = 1;
    sub_21E0B9060(v25, v57, type metadata accessor for GeoLookupResultItemView);
    swift_storeEnumTagMultiPayload();
    sub_21E0B9018(&qword_27CEAD1A8, type metadata accessor for GeoLookupResultItemView);
    v46 = v58;
    sub_21E1402F4();
    sub_21DF236C0(v46, v61, &qword_27CEAD190);
    swift_storeEnumTagMultiPayload();
    sub_21E0B8F64();
    sub_21DF23E5C(&unk_27CEAD1B0, &qword_27CEAD178);
    sub_21E1402F4();
    sub_21DF23614(v46, &qword_27CEAD190);
    sub_21E0B9784(v25, type metadata accessor for GeoLookupResultItemView);
    v37 = v39;
    v38 = &unk_27CEACFB0;
  }

  sub_21DF23614(v37, v38);
}

uint64_t sub_21E0B302C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v97 = a4;
  v94 = a3;
  v92 = a2;
  v91 = a1;
  v98 = a5;
  v5 = type metadata accessor for GeoLookupResultViewContainer(0);
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = v6;
  v96 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v84 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD1C0);
  MEMORY[0x28223BE20](v84);
  v11 = &v84 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD1C8);
  MEMORY[0x28223BE20](v86);
  v13 = &v84 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD1D0);
  MEMORY[0x28223BE20](v87);
  v15 = &v84 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD1D8);
  MEMORY[0x28223BE20](v88);
  v85 = &v84 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD1E0);
  MEMORY[0x28223BE20](v89);
  v90 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v99 = &v84 - v22;
  sub_21E1400D4();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v23 = [objc_opt_self() mainBundle];
  }

  LOWORD(v83) = 256;
  v82 = 0;
  v24 = sub_21E140C64();
  v26 = v25;
  *&v102 = v24;
  *(&v102 + 1) = v25;
  v28 = v27 & 1;
  LOBYTE(v103) = v27 & 1;
  *(&v103 + 1) = v29;
  sub_21E141164();
  sub_21DF3DE8C(v24, v26, v28);

  v30 = sub_21E140A44();
  KeyPath = swift_getKeyPath();
  sub_21DF3DE9C(v9, v11, &qword_27CEA7200);
  v32 = &v11[*(v84 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v82 = sub_21E141CD4();
  v83 = v33;
  v81 = 1;
  v80 = 0;
  sub_21E13FCE4();
  sub_21DF3DE9C(v11, v13, &qword_27CEAD1C0);
  v34 = &v13[*(v86 + 36)];
  v35 = v107;
  *(v34 + 4) = v106;
  *(v34 + 5) = v35;
  *(v34 + 6) = v108;
  v36 = v103;
  *v34 = v102;
  *(v34 + 1) = v36;
  v37 = v105;
  *(v34 + 2) = v104;
  *(v34 + 3) = v37;
  LOBYTE(v30) = sub_21E140904();
  sub_21E13F374();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_21DF3DE9C(v13, v15, &qword_27CEAD1C8);
  v46 = &v15[*(v87 + 36)];
  *v46 = v30;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  LOBYTE(v30) = sub_21E140924();
  sub_21E13F374();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v85;
  sub_21DF3DE9C(v15, v85, &qword_27CEAD1D0);
  v56 = v55 + *(v88 + 36);
  *v56 = v30;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  LOBYTE(v30) = sub_21E140934();
  sub_21E13F374();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_21DF3DE9C(v55, v20, &qword_27CEAD1D8);
  v65 = &v20[*(v89 + 36)];
  *v65 = v30;
  *(v65 + 1) = v58;
  *(v65 + 2) = v60;
  *(v65 + 3) = v62;
  *(v65 + 4) = v64;
  v65[40] = 0;
  v66 = v99;
  v67 = sub_21DF3DE9C(v20, v99, &unk_27CEAD1E0);
  MEMORY[0x28223BE20](v67);
  v68 = v97;
  v82 = v97;
  v69 = sub_21E0B90F4(sub_21E0B90C8, &v80, v91, v92, v94);
  v70 = v96;
  sub_21E0B9060(v68, v96, type metadata accessor for GeoLookupResultViewContainer);
  v71 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v72 = swift_allocObject();
  sub_21E0B971C(v70, v72 + v71, type metadata accessor for GeoLookupResultViewContainer);
  v73 = swift_getKeyPath();
  v74 = swift_getKeyPath();
  v101 = 0;
  v100 = 0;
  v75 = v90;
  sub_21DF236C0(v66, v90, &unk_27CEAD1E0);
  v76 = v101;
  LOBYTE(v66) = v100;
  v77 = v98;
  sub_21DF236C0(v75, v98, &unk_27CEAD1E0);
  v78 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD1F0) + 48);
  *v78 = v73;
  *(v78 + 8) = 0;
  *(v78 + 16) = v76;
  *(v78 + 24) = v74;
  *(v78 + 32) = v66;
  *(v78 + 40) = v69;
  *(v78 + 48) = sub_21E0B9678;
  *(v78 + 56) = v72;
  sub_21E0B96E8();
  sub_21E0B96F4(v74, v66 & 1);

  sub_21DF23614(v99, &unk_27CEAD1E0);
  sub_21DF446B8();
  sub_21DFE0F78(v74, v66 & 1);

  return sub_21DF23614(v75, &unk_27CEAD1E0);
}

uint64_t sub_21E0B3900@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21E13FF94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13D264();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_21E13E4E4();
  v57 = v17;
  v58 = v16;
  v18 = *(v7 + 56);
  v61 = v15;
  v62 = v6;
  v59 = v18;
  v60 = v7 + 56;
  v18(v15, 1, 1, v6);
  v19 = sub_21E13E514();
  v20 = [v19 _searchResultPhotoCarousel];

  if (!v20)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD200);
  v21 = sub_21E1422D4();

  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = sub_21E1427B4();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x223D530F0](0, v21);
LABEL_7:

    v24 = &v56[*(type metadata accessor for GeoLookupResultViewContainer(0) + 20)];
    v25 = *v24;
    if (v24[8] == 1)
    {
      v26 = *v24;
    }

    else
    {

      sub_21E142574();
      v55 = v2;
      v27 = sub_21E1408C4();
      v56 = v23;
      v28 = v7;
      v29 = v9;
      v30 = v12;
      v31 = v27;
      sub_21E13F184();

      v12 = v30;
      v9 = v29;
      v7 = v28;
      v23 = v56;
      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DFE0F78(v25, 0);
      (*(v3 + 8))(v5, v55);
      v26 = v63;
    }

    v32 = [objc_opt_self() defaultPhotoOptionsWithAllowSmaller_];
    v33 = [v23 bestPhotoForFrameSize:v32 displayScale:60.0 options:{60.0, v26}];

    if (v33)
    {
      v34 = [v33 url];
      if (v34)
      {
        v35 = v34;
        sub_21E13D214();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v36 = *(v7 + 32);
        v37 = v62;
        v36(v12, v9, v62);
        v38 = v61;
        sub_21DF23614(v61, &qword_27CEA9990);
        v36(v38, v12, v37);
        v59(v38, 0, 1, v37);
LABEL_17:
        v39 = sub_21E13E4A4();
        v41 = v40;
        v42 = sub_21E13E4C4();
        v44 = v43;
        v45 = sub_21E13E4D4();
        v47 = v46;
        v48 = sub_21E13E4B4();
        v49 = type metadata accessor for MapsDisambiguationViewItem(0);
        sub_21E13E494();
        v59(a1 + v49[11], 1, 1, v62);
        v50 = v57;
        *a1 = v58;
        a1[1] = v50;
        result = sub_21DF3DE9C(v61, a1 + v49[5], &qword_27CEA9990);
        v51 = (a1 + v49[6]);
        *v51 = v39;
        v51[1] = v41;
        v52 = (a1 + v49[7]);
        *v52 = v42;
        v52[1] = v44;
        v53 = (a1 + v49[8]);
        *v53 = v45;
        v53[1] = v47;
        *(a1 + v49[9]) = v48;
        return result;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v21 + 32);
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0B3E64()
{
  sub_21E141D64();
  sub_21E13F864();

  return 0;
}

uint64_t sub_21E0B3ED4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  result = type metadata accessor for GeoLookupResultViewContainer(0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a1 + *(result + 28));
    if (*(v11 + 16) > a2)
    {
      v14[3] = a1;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
      v13 = *(v12 - 8);
      sub_21DF236C0(v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a2, v9, &unk_27CEACFB0);
      (*(v13 + 56))(v9, 0, 1, v12);
      sub_21DF236C0(v9, v6, &unk_27CEACFA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD130);
      sub_21E141724();
      return sub_21DF23614(v9, &unk_27CEACFA0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0B40D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for GeoLookupResultViewContainer(0);
  sub_21DF236C0(v5, v2, &unk_27CEACFA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD130);
  sub_21E141724();
  return sub_21DF23614(v5, &unk_27CEACFA0);
}

uint64_t GeoLookupResultToText(state:)(uint64_t a1)
{
  v57 = sub_21E13E524();
  v2 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = sub_21E13DBC4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D790F0])
  {
    (*(v13 + 8))(v16, v12);
    return 0xD000000000000021;
  }

  if (v17 == *MEMORY[0x277D790F8])
  {
    v18 = 0xD00000000000001ELL;
    (*(v13 + 96))(v16, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFC0);

    v19 = sub_21E13E144();
    (*(*(v19 - 8) + 8))(v16, v19);
    return v18;
  }

  v56 = v8;
  if (v17 != *MEMORY[0x277D79100])
  {
    goto LABEL_18;
  }

  (*(v13 + 96))(v16, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D30);

  v21 = *&v16[v20[16]];
  v22 = *&v16[v20[20]];
  v23 = v20[24];
  v51 = v16;
  v24 = sub_21E0B4984(v21, v22, *&v16[v23]);

  v25 = v24;

  v26 = 0;
  v27 = 0x800000021E15EDA0;
  v28 = *(v24 + 16);
  v54 = (v2 + 16);
  v55 = (v2 + 32);
  v52 = v28;
  v53 = (v2 + 8);
  v29 = &unk_27CEACFB0;
  v30 = &unk_21E147730;
  v31 = 0xD000000000000029;
  while (1)
  {
    v32 = v56;
    v62 = v31;
    if (v26 == v28)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v29);
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      v34 = v28;
      goto LABEL_12;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 >= *(v25 + 16))
    {
      goto LABEL_17;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v29);
    v36 = *(v35 - 8);
    sub_21DF236C0(v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26, v32, v29);
    v34 = v26 + 1;
    (*(v36 + 56))(v32, 0, 1, v35);
LABEL_12:
    sub_21DF3DE9C(v32, v11, &unk_27CEACFA0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v29);
    if ((*(*(v37 - 8) + 48))(v11, 1, v37) == 1)
    {

      v63 = v62;
      v64 = v27;

      MEMORY[0x223D52A60](93, 0xE100000000000000);

      v18 = v63;
      v48 = sub_21E13E144();
      (*(*(v48 - 8) + 8))(v51, v48);
      return v18;
    }

    v60 = *(v37 + 64);
    v61 = v34;
    v38 = v58;
    v39 = v30;
    v40 = v29;
    v41 = v57;
    (*v55)(v58, v11, v57);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_21E142884();
    MEMORY[0x223D52A60](0x3A746C7573657220, 0xE900000000000020);
    (*v54)(v59, v38, v41);
    v42 = sub_21E1421A4();
    MEMORY[0x223D52A60](v42);

    MEMORY[0x223D52A60](0x203A65726F637320, 0xE800000000000000);
    sub_21E142484();
    MEMORY[0x223D52A60](44, 0xE100000000000000);
    v43 = v25;
    v44 = v63;
    v45 = v64;
    v63 = v62;
    v64 = v27;

    MEMORY[0x223D52A60](v44, v45);

    v25 = v43;

    v31 = v63;
    v27 = v64;
    v46 = v38;
    v28 = v52;
    v47 = v41;
    v29 = v40;
    v30 = v39;
    v26 = v61;
    (*v53)(v46, v47);
    sub_21DF23614(&v11[v60], &qword_27CEA6D18);
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21E0B4984(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  v110 = *(v6 - 8);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = &v88[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v88[-v9];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2C8);
  MEMORY[0x28223BE20](v109);
  v102 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v101 = &v88[-v13];
  MEMORY[0x28223BE20](v14);
  v108 = &v88[-v15];
  MEMORY[0x28223BE20](v16);
  v107 = &v88[-v17];
  MEMORY[0x28223BE20](v18);
  v106 = &v88[-v19];
  MEMORY[0x28223BE20](v20);
  v95 = &v88[-v21];
  MEMORY[0x28223BE20](v22);
  v94 = &v88[-v23];
  v122 = sub_21E13E524();
  v112 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v25 = &v88[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v96 = &v88[-v27];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2D0);
  MEMORY[0x28223BE20](v105);
  v100 = &v88[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v93 = &v88[-v30];
  MEMORY[0x28223BE20](v31);
  v92 = &v88[-v32];
  v113 = a3;
  v114 = a1;
  v33 = *(a1 + 16);
  v34 = a2[2];
  v116 = *(a3 + 16);
  v117 = v34;
  if (v116 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v116;
  }

  if (v35 >= v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  v123 = MEMORY[0x277D84F90];
  sub_21DF5C2E0(0, v36 & ~(v36 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v89 = v35;
    v91 = v10;
    v37 = v123;
    v104 = v33;
    v90 = a2;
    if (v36)
    {
      v120 = v112 + 16;
      v98 = a2 + 4;
      v97 = (v112 + 32);

      v38 = 0;
      result = v25;
      v115 = v36;
      v99 = v25;
      while (v33 != v38)
      {
        v121 = v37;
        v40 = *(v112 + 16);
        a2 = result;
        v40();
        if (v117 == v38 || v116 == v38)
        {
          goto LABEL_37;
        }

        v41 = v98[v38];
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D18) - 8);
        v43 = v113 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38;
        v44 = v109;
        v45 = *(v109 + 48);
        v46 = v102;
        *v102 = v41;
        sub_21DF236C0(v43, v46 + v45, &qword_27CEA6D18);
        v47 = v101;
        sub_21DF3DE9C(v46, v101, &qword_27CEAD2C8);
        v48 = v100;
        v49 = &v100[*(v105 + 48)];
        v50 = v122;
        (*v97)(v100, a2, v122);
        sub_21DF3DE9C(v47, v49, &qword_27CEAD2C8);
        v51 = *v49;
        v52 = *(v44 + 48);
        v53 = *(v111 + 48);
        v118 = *(v111 + 64);
        v119 = v53;
        v54 = v106;
        *v106 = v51;
        sub_21DF236C0(v49 + v52, v54 + v52, &qword_27CEA6D18);
        a2 = v103;
        (v40)(v103, v48, v50);
        v55 = v107;
        sub_21DF236C0(v54, v107, &qword_27CEAD2C8);
        v56 = *v55;
        v57 = *(v44 + 48);
        v58 = v108;
        sub_21DF3DE9C(v54, v108, &qword_27CEAD2C8);
        sub_21DF3DE9C(&v58[*(v44 + 48)], a2 + v118, &qword_27CEA6D18);
        sub_21DF23614(v55 + v57, &qword_27CEA6D18);
        *(a2 + v119) = v56;
        sub_21DF23614(v48, &qword_27CEAD2D0);
        v37 = v121;
        v123 = v121;
        v60 = *(v121 + 16);
        v59 = *(v121 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_21DF5C2E0(v59 > 1, v60 + 1, 1);
          v37 = v123;
        }

        ++v38;
        *(v37 + 16) = v60 + 1;
        sub_21DF3DE9C(a2, v37 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v60, &unk_27CEACFB0);
        v36 = v115;
        v33 = v104;
        result = v99;
        if (v115 == v38)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_38;
    }

LABEL_18:
    if (v33 <= v89)
    {
LABEL_31:

      return v37;
    }

    v120 = v112 + 16;
    v103 = v90 + 4;
    v102 = (v112 + 32);
    while (v36 < v33)
    {
      v61 = *(v112 + 16);
      v61(v96, v114 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v36, v122);
      if (__OFADD__(v36, 1))
      {
        goto LABEL_33;
      }

      if (v117 == v36)
      {
        goto LABEL_30;
      }

      if (v36 >= v117)
      {
        goto LABEL_34;
      }

      if (v116 == v36)
      {
LABEL_30:
        (*(v112 + 8))(v96, v122);
        goto LABEL_31;
      }

      if (v36 >= v116)
      {
        goto LABEL_35;
      }

      v119 = v36 + 1;
      v62 = *&v103[8 * v36];
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D18) - 8);
      v64 = v113 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v36;
      v65 = v109;
      v66 = *(v109 + 48);
      v121 = v37;
      v67 = v95;
      *v95 = v62;
      sub_21DF236C0(v64, v67 + v66, &qword_27CEA6D18);
      v68 = v67;
      v69 = v94;
      sub_21DF3DE9C(v68, v94, &qword_27CEAD2C8);
      v70 = v105;
      v71 = *(v105 + 48);
      v72 = v93;
      v73 = v122;
      (*v102)(v93, v96, v122);
      sub_21DF3DE9C(v69, v72 + v71, &qword_27CEAD2C8);
      v74 = v92;
      sub_21DF3DE9C(v72, v92, &qword_27CEAD2D0);
      v75 = &v74[*(v70 + 48)];
      v76 = *v75;
      v77 = *(v65 + 48);
      v118 = *(v111 + 48);
      v78 = *(v111 + 64);
      v79 = v106;
      *v106 = v76;
      sub_21DF236C0(v75 + v77, v79 + v77, &qword_27CEA6D18);
      v115 = v36;
      v80 = v91;
      v61(v91, v74, v73);
      a2 = v107;
      sub_21DF236C0(v79, v107, &qword_27CEAD2C8);
      v81 = *a2;
      v82 = *(v65 + 48);
      v83 = v79;
      v84 = v108;
      sub_21DF3DE9C(v83, v108, &qword_27CEAD2C8);
      v85 = &v84[*(v65 + 48)];
      v37 = v121;
      sub_21DF3DE9C(v85, v80 + v78, &qword_27CEA6D18);
      sub_21DF23614(a2 + v82, &qword_27CEA6D18);
      *(v80 + v118) = v81;
      sub_21DF23614(v74, &qword_27CEAD2D0);
      v123 = v37;
      v87 = *(v37 + 16);
      v86 = *(v37 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_21DF5C2E0(v86 > 1, v87 + 1, 1);
        v37 = v123;
      }

      *(v37 + 16) = v87 + 1;
      sub_21DF3DE9C(v80, v37 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v87, &unk_27CEACFB0);
      v36 = v115 + 1;
      v33 = v104;
      if (v119 == v104)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  result = (*(v112 + 8))(a2, v122);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21E0B5518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v36 - v12;
  v13 = sub_21E13E524();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E13D594();
  MEMORY[0x28223BE20](v17 - 8);
  v43 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD220);
  MEMORY[0x28223BE20](v19 - 8);
  v42 = &v36 - v20;
  v41 = sub_21E13E134();
  v21 = *(a2 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v37 = a1;
    v39 = v5;
    v40 = a4;
    v49 = MEMORY[0x277D84F90];
    sub_21DF5C360(0, v21, 0);
    v22 = v49;
    v23 = *(v45 + 80);
    v38 = a2;
    v24 = a2 + ((v23 + 32) & ~v23);
    v25 = (v14 + 32);
    v45 = *(v45 + 72);
    v46 = v14;
    do
    {
      v26 = v47;
      sub_21DF236C0(v24, v47, &unk_27CEACFB0);
      sub_21DF3DE9C(v26, v10, &unk_27CEACFB0);
      v27 = *(v48 + 64);
      v28 = *v25;
      (*v25)(v16, v10, v13);
      sub_21DF23614(&v10[v27], &qword_27CEA6D18);
      v49 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21DF5C360(v29 > 1, v30 + 1, 1);
        v22 = v49;
      }

      *(v22 + 16) = v30 + 1;
      v28((v22 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v30), v16, v13);
      v24 += v45;
      --v21;
    }

    while (v21);
    v5 = v39;
    a1 = v37;
    a2 = v38;
  }

  v31 = v41;
  sub_21E0B9B24(v41, v22);
  v32 = v42;
  sub_21E13D554();

  v33 = sub_21E13D564();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = sub_21E13D584();
  MEMORY[0x28223BE20](v34);
  *(&v36 - 3) = *(v44 + 16);
  *(&v36 - 4) = a1;
  *(&v36 - 3) = a2;
  *(&v36 - 2) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD228);
  sub_21DF23E5C(&qword_27CEAD230, &qword_27CEAD228);
  return sub_21E13D544();
}

uint64_t sub_21E0B59C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v54 = a1;
  v55 = a6;
  v53 = sub_21E13E144();
  v57 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GeoLookupCardView();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &KeyPath - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD238);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &KeyPath - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD240);
  v20 = *(v19 - 8);
  v50 = v19;
  v51 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &KeyPath - v21;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD248);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &KeyPath - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v56 = &KeyPath - v25;
  v58 = a2;
  KeyPath = swift_getKeyPath();
  (*(v12 + 16))(v14, a3, v11);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  (*(v12 + 32))(v27 + v26, v14, v11);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_21E0B9950;
  *(v28 + 24) = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD258);
  sub_21DF23E5C(&qword_27CEAD260, &qword_27CEAD250);
  sub_21E0B9018(&qword_27CEAD268, MEMORY[0x277D794F8]);
  sub_21DF23E5C(&qword_27CEAD270, &qword_27CEAD258);
  sub_21E141A64();
  v29 = sub_21E0B9A68();
  v30 = v47;
  sub_21E13D5F4();
  (*(v48 + 8))(v18, v30);
  v58 = v30;
  v59 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v56;
  v32 = v50;
  sub_21E13D604();
  (*(v51 + 8))(v22, v32);
  v33 = *(v57 + 16);
  v35 = v52;
  v34 = v53;
  v33(v52, v54, v53);
  v36 = v45;
  v37 = v46;
  v38 = *(v45 + 16);
  v39 = v49;
  v38(v46, v31, v49);
  v40 = v55;
  v33(v55, v35, v34);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD280);
  v38(&v40[*(v41 + 48)], v37, v39);
  v42 = *(v36 + 8);
  v42(v56, v39);
  v42(v37, v39);
  return (*(v57 + 8))(v35, v34);
}

uint64_t sub_21E0B5FF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v55 = a2;
  v46 = sub_21E13D5B4();
  v51 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD288);
  v54 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD290);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD298);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2A0);
  v56 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = sub_21E13E514();
  [v20 _coordinate];

  v58 = a1;
  v59 = a3;
  sub_21E13D664();
  v60 = sub_21E141434();
  sub_21DF23E5C(&qword_27CEAD2A8, &qword_27CEAD298);
  v21 = MEMORY[0x277CE0F60];
  v22 = v19;
  v44 = v19;
  sub_21E13D614();

  (*(v13 + 8))(v15, v12);
  v23 = sub_21E13E514();
  [v23 _coordinate];

  sub_21E13D5A4();
  sub_21E141504();
  v24 = sub_21E141514();

  v60 = v24;
  v25 = MEMORY[0x277CE42E0];
  v26 = v45;
  v27 = v46;
  v28 = MEMORY[0x277CE0F78];
  sub_21E13D5E4();

  (*(v51 + 8))(v6, v27);
  v29 = sub_21E141504();
  v63 = v21;
  v64 = v29;
  v60 = v27;
  v61 = v28;
  v62 = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v57;
  v31 = v49;
  sub_21E13D624();

  (*(v54 + 8))(v26, v31);
  v32 = *(v56 + 16);
  v33 = v47;
  v34 = v48;
  v32(v47, v22, v48);
  v35 = v52;
  v36 = v53;
  v37 = *(v52 + 16);
  v38 = v50;
  v37(v50, v30, v53);
  v39 = v55;
  v32(v55, v33, v34);
  v40 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD2B0) + 48)];
  v37(v40, v38, v36);
  v41 = *(v35 + 8);
  v41(v57, v36);
  v42 = *(v56 + 8);
  v42(v44, v34);
  v41(v38, v36);
  return (v42)(v33, v34);
}

uint64_t sub_21E0B6680@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_21E1400C4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E13E4E4();
  sub_21E140094();

  sub_21E1400A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEF8);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D839F8];
  *(v5 + 16) = xmmword_21E145380;
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = a2;
  sub_21E142154();
  sub_21E140094();

  sub_21E1400A4();
  sub_21E1400E4();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v8 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t GeoLookupCardView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v103 = *(a1 + 16);
  v98 = *(v103 - 8);
  MEMORY[0x28223BE20](a1);
  v97 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFA0);
  MEMORY[0x28223BE20](v95);
  v94 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v85 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFC8);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v96 = (&v85 - v8);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFD0);
  MEMORY[0x28223BE20](v119);
  v107 = &v85 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFD8);
  MEMORY[0x28223BE20](v117);
  v118 = &v85 - v10;
  v104 = a1;
  v87 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  v85 = v12;
  v86 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFE0);
  v89 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v88 = &v85 - v13;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFE8);
  v91 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v90 = &v85 - v14;
  v15 = sub_21E13E144();
  v114 = *(v15 - 8);
  v115 = v15;
  MEMORY[0x28223BE20](v15);
  v92 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFF0);
  MEMORY[0x28223BE20](v105);
  v111 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFF8);
  MEMORY[0x28223BE20](v18);
  v20 = &v85 - v19;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD000);
  MEMORY[0x28223BE20](v109);
  v100 = &v85 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B10);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v85 - v22;
  v23 = sub_21E13DBC4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v85 - v28;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD010);
  v30 = MEMORY[0x28223BE20](v116);
  v110 = &v85 - v31;
  v32 = (v24 + 88);
  v33 = *(v24 + 16);
  if (*(v2 + *(a1 + 40)) == 1)
  {
    v108 = v2;
    v33(v29, v2, v23, v30);
    v34 = (*v32)(v29, v23);
    if (v34 == *MEMORY[0x277D790F0])
    {
      (*(v24 + 8))(v29, v23);
      v35 = v99;
      sub_21E13F574();
      v36 = v101;
      v37 = v102;
      (*(v101 + 16))(v20, v35, v102);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA6B08, &qword_27CEA6B10);
      v38 = v100;
      sub_21E1402F4();
      sub_21DF236C0(v38, v111, &unk_27CEAD000);
      swift_storeEnumTagMultiPayload();
      sub_21E0B7C3C();
      v39 = sub_21DF23E5C(&qword_27CEAD030, &qword_27CEACFE0);
      v121 = v112;
      v122 = v39;
      swift_getOpaqueTypeConformance2();
      v40 = v110;
      sub_21E1402F4();
      sub_21DF23614(v38, &unk_27CEAD000);
      (*(v36 + 8))(v35, v37);
    }

    else if (v34 == *MEMORY[0x277D790F8])
    {
      (*(v24 + 96))(v29, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFC0);

      v58 = v99;
      sub_21E13F574();
      v59 = v101;
      v60 = v102;
      (*(v101 + 16))(v20, v58, v102);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA6B08, &qword_27CEA6B10);
      v61 = v100;
      sub_21E1402F4();
      sub_21DF236C0(v61, v111, &unk_27CEAD000);
      swift_storeEnumTagMultiPayload();
      sub_21E0B7C3C();
      v62 = sub_21DF23E5C(&qword_27CEAD030, &qword_27CEACFE0);
      v121 = v112;
      v122 = v62;
      swift_getOpaqueTypeConformance2();
      v40 = v110;
      sub_21E1402F4();
      sub_21DF23614(v61, &unk_27CEAD000);
      (*(v59 + 8))(v58, v60);
      (*(v114 + 8))(v29, v115);
    }

    else
    {
      if (v34 != *MEMORY[0x277D79100])
      {
        result = sub_21E142B04();
        __break(1u);
        return result;
      }

      (*(v24 + 96))(v29, v23);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D30);

      v65 = *&v29[v64[16]];
      v66 = *&v29[v64[20]];
      v67 = *&v29[v64[24]];
      v68 = v92;
      (*(v114 + 32))();
      v69 = sub_21E0B4984(v65, v66, v67);

      v107 = &v85;
      MEMORY[0x28223BE20](v70);
      v72 = v103;
      v71 = v104;
      v73 = *(v104 + 24);
      *(&v85 - 6) = v103;
      *(&v85 - 5) = v73;
      v74 = v108;
      *(&v85 - 4) = v108;
      *(&v85 - 3) = v69;
      *(&v85 - 2) = v68;
      sub_21E1408F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD078);
      sub_21DF23E5C(qword_27CEAD080, &qword_27CEAD078);
      v75 = v88;
      sub_21E13F3C4();

      v76 = v87;
      v77 = v86;
      (*(v87 + 16))(v86, v74, v71);
      v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = v72;
      *(v79 + 24) = v73;
      (*(v76 + 32))(v79 + v78, v77, v71);
      v80 = sub_21DF23E5C(&qword_27CEAD030, &qword_27CEACFE0);
      v81 = v90;
      v82 = v112;
      sub_21E140E94();

      (*(v89 + 8))(v75, v82);
      v83 = v91;
      v84 = v113;
      (*(v91 + 16))(v111, v81, v113);
      swift_storeEnumTagMultiPayload();
      sub_21E0B7C3C();
      v121 = v82;
      v122 = v80;
      swift_getOpaqueTypeConformance2();
      v40 = v110;
      sub_21E1402F4();
      (*(v83 + 8))(v81, v84);
      (*(v114 + 8))(v92, v115);
    }

    sub_21DF236C0(v40, v118, &qword_27CEAD010);
    swift_storeEnumTagMultiPayload();
    sub_21E0B7B38();
    sub_21E0B7CEC();
    sub_21E1402F4();
    return sub_21DF23614(v40, &qword_27CEAD010);
  }

  else
  {
    v33(v26, v2, v23, v30);
    if ((*v32)(v26, v23) == *MEMORY[0x277D79100])
    {
      (*(v24 + 96))(v26, v23);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D30);

      v42 = v2;
      v43 = *&v26[v41[16]];
      v44 = *&v26[v41[20]];
      v45 = *&v26[v41[24]];
      (*(v114 + 8))(v26, v115);
      v46 = sub_21E0B4984(v43, v44, v45);

      v47 = type metadata accessor for GeoLookupResultViewContainer(0);
      v48 = v96;
      (v33)(v96 + v47[6], v42, v23);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
      v50 = v93;
      (*(*(v49 - 8) + 56))(v93, 1, 1, v49);
      *v48 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v51 = v48 + v47[5];
      *v51 = swift_getKeyPath();
      v51[8] = 0;
      *(v48 + v47[7]) = v46;
      *(v48 + v47[8]) = 3;
      *(v48 + v47[9]) = 0;
      sub_21DF236C0(v50, v94, &unk_27CEACFA0);
      sub_21E141704();
      sub_21DF23614(v50, &unk_27CEACFA0);
      KeyPath = swift_getKeyPath();
      (*(v98 + 16))(v97, v42 + *(v104 + 44), v103);
      v53 = sub_21E1419B4();
      v54 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD050) + 36));
      *v54 = KeyPath;
      v54[1] = v53;
      v56 = v107;
      v55 = v108;
      *(v48 + *(v108 + 36)) = 256;
      sub_21DF3DE9C(v48, v56, &qword_27CEACFC8);
      v57 = 0;
    }

    else
    {
      (*(v24 + 8))(v26, v23);
      v57 = 1;
      v56 = v107;
      v55 = v108;
    }

    (*(v106 + 56))(v56, v57, 1, v55);
    sub_21DF236C0(v56, v118, &qword_27CEACFD0);
    swift_storeEnumTagMultiPayload();
    sub_21E0B7B38();
    sub_21E0B7CEC();
    sub_21E1402F4();
    return sub_21DF23614(v56, &qword_27CEACFD0);
  }
}

unint64_t sub_21E0B7B38()
{
  result = qword_27CEAD018;
  if (!qword_27CEAD018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD010);
    sub_21E0B7C3C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACFE0);
    sub_21DF23E5C(&qword_27CEAD030, &qword_27CEACFE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD018);
  }

  return result;
}

unint64_t sub_21E0B7C3C()
{
  result = qword_27CEAD020;
  if (!qword_27CEAD020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEAD000);
    sub_21DF23E5C(&qword_27CEA6B08, &qword_27CEA6B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD020);
  }

  return result;
}

unint64_t sub_21E0B7CEC()
{
  result = qword_27CEAD038;
  if (!qword_27CEAD038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACFD0);
    sub_21E0B7D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD038);
  }

  return result;
}

unint64_t sub_21E0B7D70()
{
  result = qword_27CEAD040;
  if (!qword_27CEAD040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEACFC8);
    sub_21E0B7DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD040);
  }

  return result;
}

unint64_t sub_21E0B7DFC()
{
  result = qword_27CEAD048;
  if (!qword_27CEAD048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD050);
    sub_21E0B9018(&qword_27CEAD058, type metadata accessor for GeoLookupResultViewContainer);
    sub_21DF23E5C(&qword_27CEAD060, &qword_27CEAD068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD048);
  }

  return result;
}

double sub_21E0B7F04@<D0>(uint64_t a1@<X8>)
{
  result = 1.26355835e200;
  *a1 = xmmword_21E156150;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_21E0B7F24(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000015;
  *(a1 + 8) = 0x800000021E15EE70;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_21E0B7F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46[2] = a5;
  v46[1] = a4;
  v51 = a3;
  v49 = a2;
  v56 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD208);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD210);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v55 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v46 - v13;
  MEMORY[0x28223BE20](v15);
  v52 = v46 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFA0);
  MEMORY[0x28223BE20](v47);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v46 - v20;
  v22 = type metadata accessor for GeoLookupResultViewContainer(0);
  v23 = (v22 - 8);
  MEMORY[0x28223BE20](v22);
  v48 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (v46 - v26);
  v28 = v23[8];
  v29 = sub_21E13DBC4();
  v30 = *(*(v29 - 8) + 16);
  v46[0] = a1;
  v30(v27 + v28, a1, v29);
  v31 = type metadata accessor for GeoLookupCardView();
  LOBYTE(a1) = *(a1 + *(v31 + 40));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  *v27 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v33 = v27 + v23[7];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v49;
  *(v27 + v23[9]) = v49;
  *(v27 + v23[10]) = 10;
  *(v27 + v23[11]) = a1;
  sub_21DF236C0(v21, v18, &unk_27CEACFA0);

  sub_21E141704();
  sub_21DF23614(v21, &unk_27CEACFA0);
  v35 = v50;
  sub_21E0B5518(v51, v34, v31, v50);
  sub_21E141CC4();
  sub_21E13FCE4();
  (*(v53 + 32))(v14, v35, v54);
  v36 = &v14[*(v10 + 44)];
  v37 = v62;
  *(v36 + 4) = v61;
  *(v36 + 5) = v37;
  *(v36 + 6) = v63;
  v38 = v58;
  *v36 = v57;
  *(v36 + 1) = v38;
  v39 = v60;
  *(v36 + 2) = v59;
  *(v36 + 3) = v39;
  v40 = v52;
  sub_21DF3DE9C(v14, v52, &qword_27CEAD210);
  v41 = v48;
  sub_21E0B9060(v27, v48, type metadata accessor for GeoLookupResultViewContainer);
  v42 = v55;
  sub_21DF236C0(v40, v55, &qword_27CEAD210);
  v43 = v56;
  sub_21E0B9060(v41, v56, type metadata accessor for GeoLookupResultViewContainer);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD218);
  sub_21DF236C0(v42, v43 + *(v44 + 48), &qword_27CEAD210);
  sub_21DF23614(v40, &qword_27CEAD210);
  sub_21E0B9784(v27, type metadata accessor for GeoLookupResultViewContainer);
  sub_21DF23614(v42, &qword_27CEAD210);
  return sub_21E0B9784(v41, type metadata accessor for GeoLookupResultViewContainer);
}

uint64_t sub_21E0B84F8()
{
  sub_21E0BA134();

  return sub_21E13FFB4();
}

uint64_t sub_21E0B8570()
{
  v1 = type metadata accessor for GeoLookupCardView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 44) + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

void sub_21E0B8630()
{
  sub_21E13DBC4();
  if (v0 <= 0x3F)
  {
    sub_21E0BA388(319, &qword_27CEA8280, &qword_27CEAD110, &unk_21E148960, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21E0B8704(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21E13DBC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v8 == v13)
      {
        v22 = *(v7 + 48);

        return v22(a1, v8, v6);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v12 > 0x7FFFFFFE)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 17) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          if ((v24 + 1) >= 2)
          {
            return v24;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 17) & ~v11) + *(v9 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_21E0B8994(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21E13DBC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13) + *(v11 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_52:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v15)
  {
    v23 = *(v9 + 56);

    v23(a1, a2, v10, v8);
  }

  else
  {
    v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v14 > 0x7FFFFFFE)
    {
      v25 = *(v11 + 56);

      v25((v24 + v13 + 17) & ~v13, a2);
    }

    else if (a2 > 0x7FFFFFFE)
    {
      *v24 = 0;
      v24[1] = 0;
      *v24 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v24 = a2;
    }
  }
}

unint64_t sub_21E0B8CBC()
{
  result = qword_27CEAD118;
  if (!qword_27CEAD118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEAD120);
    sub_21E0B7B38();
    sub_21E0B7CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD118);
  }

  return result;
}

void sub_21E0B8D70()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21E0B8EAC();
    if (v1 <= 0x3F)
    {
      sub_21E13DBC4();
      if (v2 <= 0x3F)
      {
        sub_21E0BA388(319, &qword_27CEAD150, &unk_27CEACFB0, &unk_21E147730, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21E0BA388(319, &qword_27CEAD158, &unk_27CEACFA0, &unk_21E156160, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21E0B8EAC()
{
  if (!qword_280F69048)
  {
    v0 = sub_21E13F464();
    if (!v1)
    {
      atomic_store(v0, &qword_280F69048);
    }
  }
}

unint64_t sub_21E0B8F64()
{
  result = qword_27CEAD1A0;
  if (!qword_27CEAD1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD190);
    sub_21E0B9018(&qword_27CEAD1A8, type metadata accessor for GeoLookupResultItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD1A0);
  }

  return result;
}

uint64_t sub_21E0B9018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E0B9060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E0B90F4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for MapsDisambiguationViewItem(0);
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a5 >> 1;
  v31 = a4;
  v15 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = MEMORY[0x277D84F90];
  if (!v15)
  {
    return result;
  }

  v34 = MEMORY[0x277D84F90];
  sub_21DF5C29C(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v33 = v34;
    v24 = v11;
    while (!__OFADD__(v17, 1))
    {
      if ((v31 + v17) >= v30 || v17 >= v15)
      {
        goto LABEL_15;
      }

      v32 = v17 + 1;
      sub_21DF236C0(v29 + *(v26 + 72) * (v31 + v17), v11, &unk_27CEACFB0);
      v18 = v14;
      v27(v11);
      if (v6)
      {
        goto LABEL_18;
      }

      v6 = 0;
      sub_21DF23614(v11, &unk_27CEACFB0);
      v19 = v33;
      v34 = v33;
      v21 = *(v33 + 16);
      v20 = *(v33 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21DF5C29C(v20 > 1, v21 + 1, 1);
        v19 = v34;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v33 = v19;
      v23 = v19 + v22 + *(v25 + 72) * v21;
      v14 = v18;
      sub_21E0B971C(v18, v23, type metadata accessor for MapsDisambiguationViewItem);
      ++v17;
      v11 = v24;
      if (v32 == v15)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  sub_21DF23614(v11, &unk_27CEACFB0);

  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for GeoLookupResultViewContainer(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_21DFE0F78(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v1[6];
  v6 = sub_21E13DBC4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  v7 = v3 + v1[10];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_21E13E524();
    (*(*(v9 - 8) + 8))(v7, v9);
    v10 = *(v8 + 64);
    v11 = sub_21E13EF14();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD130);

  return swift_deallocObject();
}

uint64_t sub_21E0B9678()
{
  type metadata accessor for GeoLookupResultViewContainer(0);

  return sub_21E0B3E64();
}

uint64_t sub_21E0B96F4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21E0B971C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E0B9784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_26()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for GeoLookupCardView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  v4 = sub_21E13DBC4();
  (*(*(v4 - 8) + 8))(v3, v4);
  if (*(v3 + *(v2 + 36)))
  {
  }

  (*(*(v1 - 8) + 8))(v3 + *(v2 + 44), v1);

  return swift_deallocObject();
}

uint64_t sub_21E0B9950@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  type metadata accessor for GeoLookupCardView();

  return sub_21E0B5FF4(a1, a2, a3);
}

uint64_t sub_21E0B9A04(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  return v3(a1, a1 + *(v4 + 64), *(a1 + *(v4 + 48)));
}

unint64_t sub_21E0B9A68()
{
  result = qword_27CEAD278;
  if (!qword_27CEAD278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD238);
    sub_21DF23E5C(&qword_27CEAD270, &qword_27CEAD258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD278);
  }

  return result;
}

void sub_21E0B9B24(void *a1, uint64_t a2)
{
  v4 = sub_21E13E524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E145380;
  [a1 coordinate];
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v68 = inited;
    v71 = MEMORY[0x277D84F90];
    sub_21DF5C340(0, v11, 0);
    v13 = v71;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v69 = *(v14 + 56);
    v70 = v15;
    v17 = (v14 - 8);
    do
    {
      v18 = v14;
      v70(v7, v16, v4);
      v19 = sub_21E13E514();
      [v19 _coordinate];
      v21 = v20;
      v23 = v22;

      (*v17)(v7, v4);
      v71 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21DF5C340((v24 > 1), v25 + 1, 1);
        v13 = v71;
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v16 += v69;
      --v11;
      v14 = v18;
    }

    while (v11);
    v12 = MEMORY[0x277D84F90];
    inited = v68;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v71 = inited;
  sub_21DF5B488(v13);
  v27 = v71;
  v28 = *(v71 + 16);
  if (v28)
  {
    v71 = v12;
    sub_21DF5C320(0, v28, 0);
    v29 = v71;
    v30 = (v27 + 32);
    v31 = *(v71 + 16);
    v32 = v28;
    do
    {
      v33 = *v30;
      v71 = v29;
      v34 = *(v29 + 24);
      v35 = v31 + 1;
      if (v31 >= v34 >> 1)
      {
        sub_21DF5C320((v34 > 1), v31 + 1, 1);
        v29 = v71;
      }

      *(v29 + 16) = v35;
      *(v29 + 8 * v31 + 32) = v33;
      v30 += 2;
      ++v31;
      --v32;
    }

    while (v32);
  }

  else
  {
    v35 = *(v12 + 16);
    if (!v35)
    {

      v36 = INFINITY;
      goto LABEL_27;
    }

    v29 = v12;
  }

  v36 = INFINITY;
  v37 = 32;
  do
  {
    if (*(v29 + v37) < v36)
    {
      v36 = *(v29 + v37);
    }

    v37 += 8;
    --v35;
  }

  while (v35);

  if (v28)
  {
    v71 = v12;
    sub_21DF5C320(0, v28, 0);
    v38 = v71;
    v39 = *(v71 + 16);
    v40 = (v27 + 40);
    v41 = v28;
    do
    {
      v42 = *v40;
      v71 = v38;
      v43 = *(v38 + 24);
      v44 = v39 + 1;
      if (v39 >= v43 >> 1)
      {
        sub_21DF5C320((v43 > 1), v39 + 1, 1);
        v38 = v71;
      }

      *(v38 + 16) = v44;
      *(v38 + 8 * v39 + 32) = v42;
      v40 += 2;
      ++v39;
      --v41;
    }

    while (v41);
    goto LABEL_29;
  }

LABEL_27:
  v44 = *(v12 + 16);
  if (!v44)
  {

    v45 = INFINITY;
    goto LABEL_40;
  }

  v38 = v12;
LABEL_29:
  v45 = INFINITY;
  v46 = 32;
  do
  {
    if (*(v38 + v46) < v45)
    {
      v45 = *(v38 + v46);
    }

    v46 += 8;
    --v44;
  }

  while (v44);

  if (v28)
  {
    v71 = v12;
    sub_21DF5C320(0, v28, 0);
    v47 = v71;
    v48 = (v27 + 32);
    v49 = *(v71 + 16);
    v50 = v28;
    do
    {
      v51 = *v48;
      v71 = v47;
      v52 = *(v47 + 24);
      v53 = v49 + 1;
      if (v49 >= v52 >> 1)
      {
        sub_21DF5C320((v52 > 1), v49 + 1, 1);
        v47 = v71;
      }

      *(v47 + 16) = v53;
      *(v47 + 8 * v49 + 32) = v51;
      v48 += 2;
      ++v49;
      --v50;
    }

    while (v50);
    goto LABEL_42;
  }

LABEL_40:
  v53 = *(v12 + 16);
  if (!v53)
  {

    v54 = -INFINITY;
    goto LABEL_58;
  }

  v47 = v12;
LABEL_42:
  v54 = -INFINITY;
  v55 = 32;
  do
  {
    if (v54 <= *(v47 + v55))
    {
      v54 = *(v47 + v55);
    }

    v55 += 8;
    --v53;
  }

  while (v53);

  if (v28)
  {
    v71 = v12;
    sub_21DF5C320(0, v28, 0);
    v56 = v71;
    v57 = *(v71 + 16);
    v58 = 40;
    do
    {
      v59 = *(v27 + v58);
      v71 = v56;
      v60 = *(v56 + 24);
      if (v57 >= v60 >> 1)
      {
        sub_21DF5C320((v60 > 1), v57 + 1, 1);
        v56 = v71;
      }

      *(v56 + 16) = v57 + 1;
      *(v56 + 8 * v57 + 32) = v59;
      v58 += 16;
      ++v57;
      --v28;
    }

    while (v28);

    v61 = *(v56 + 16);
    if (v61)
    {
      goto LABEL_52;
    }

LABEL_59:
    v63 = -INFINITY;
    goto LABEL_60;
  }

LABEL_58:

  v56 = MEMORY[0x277D84F90];
  v61 = *(MEMORY[0x277D84F90] + 16);
  if (!v61)
  {
    goto LABEL_59;
  }

LABEL_52:
  v62 = (v56 + 32);
  v63 = -INFINITY;
  do
  {
    v64 = *v62++;
    v65 = v64;
    if (v63 <= v64)
    {
      v63 = v65;
    }

    --v61;
  }

  while (v61);
LABEL_60:

  v66 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v36 longitude:v45];
  v67 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v54 longitude:v63];
  [v66 distanceFromLocation_];

  v72.latitude = (v36 + v54) * 0.5;
  v72.longitude = (v45 + v63) * 0.5;
  MKMapPointForCoordinate(v72);
}

unint64_t sub_21E0BA134()
{
  result = qword_27CEAD2D8;
  if (!qword_27CEAD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD2D8);
  }

  return result;
}

void sub_21E0BA1C0()
{
  sub_21E0BA388(319, &qword_280F69020, &qword_27CEA79E8, &unk_21E14EA10, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21E0BA388(319, &qword_27CEAD300, &qword_27CEAD308, &unk_21E156570, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21E0BA300();
      if (v2 <= 0x3F)
      {
        sub_21E0BA388(319, &unk_27CEAD318, &unk_27CEACFA0, &unk_21E156160, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21E0BA300()
{
  if (!qword_27CEAD310)
  {
    sub_21E13E524();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6D18);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CEAD310);
    }
  }
}

void sub_21E0BA388(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_21E0BA3EC()
{
  result = qword_27CEAD328;
  if (!qword_27CEAD328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD170);
    sub_21E0BA478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD328);
  }

  return result;
}

unint64_t sub_21E0BA478()
{
  result = qword_27CEAD330;
  if (!qword_27CEAD330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD168);
    sub_21E0BA504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD330);
  }

  return result;
}

unint64_t sub_21E0BA504()
{
  result = qword_27CEAD338;
  if (!qword_27CEAD338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD160);
    sub_21E0BA588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD338);
  }

  return result;
}

unint64_t sub_21E0BA588()
{
  result = qword_27CEAD340;
  if (!qword_27CEAD340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD348);
    sub_21E0B8F64();
    sub_21DF23E5C(&unk_27CEAD1B0, &qword_27CEAD178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD340);
  }

  return result;
}

uint64_t sub_21E0BA688(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for GeoLookupResultItemView(0);
  v15 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v15 + 16) & ~v15);
  sub_21DF446B8();
  j__swift_release();
  v3 = v2 + *(v1 + 24);
  v4 = sub_21E13E524();
  v14 = *(*(v4 - 8) + 8);
  v14(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0);
  v6 = *(v5 + 64);
  v7 = sub_21E13EF14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v10 = v2 + *(v1 + 32);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD2E0) + 32);
  if (!(*(*(v5 - 8) + 48))(v11, 1, v5))
  {
    v14(v11, v4);
    v12 = *(v5 + 64);
    if (!v9(v11 + v12, 1, v7))
    {
      (*(v8 + 8))(v11 + v12, v7);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_21E0BA9AC()
{
  result = qword_27CEAD3C8;
  if (!qword_27CEAD3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD3C0);
    sub_21E099354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD3C8);
  }

  return result;
}

unint64_t sub_21E0BAA38()
{
  result = qword_27CEAD3E8;
  if (!qword_27CEAD3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD388);
    sub_21E0BAAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD3E8);
  }

  return result;
}

unint64_t sub_21E0BAAC4()
{
  result = qword_27CEAD3F0;
  if (!qword_27CEAD3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD380);
    sub_21DF23E5C(&qword_27CEAD3F8, &qword_27CEAD378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD3F0);
  }

  return result;
}

uint64_t sub_21E0BAB7C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21E0BABD8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E0BAC38()
{
  result = qword_27CEAD430;
  if (!qword_27CEAD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD358);
    sub_21DF23E5C(&qword_27CEAD438, &qword_27CEAD440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD430);
  }

  return result;
}

unint64_t sub_21E0BACF4()
{
  result = qword_27CEAD448;
  if (!qword_27CEAD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD448);
  }

  return result;
}

unint64_t sub_21E0BAD48()
{
  result = qword_27CEAD458;
  if (!qword_27CEAD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD458);
  }

  return result;
}

uint64_t type metadata accessor for CardSafetyInterstitial()
{
  result = qword_27CEAD460;
  if (!qword_27CEAD460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E0BAE10()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21DFE0CEC();
    if (v1 <= 0x3F)
    {
      sub_21DFB9568();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_21E0BAEC8@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD470);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_21E1401C4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD478);
  sub_21E0BB008(v1, &v5[*(v6 + 44)]);
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF1AEF0(v5, a1);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD480) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_21E0BB008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_21E140194();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD488);
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v83 = &v68 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD490);
  MEMORY[0x28223BE20](v88);
  v87 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD498);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4A0);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = &v68 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4A8);
  MEMORY[0x28223BE20](v79);
  v80 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4B0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v77 = &v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4B8);
  MEMORY[0x28223BE20](v23 - 8);
  v82 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  v81 = type metadata accessor for CardSafetyInterstitial();
  v28 = (a1 + *(v81 + 20));
  v29 = v28[1];
  if (!v29)
  {
    (*(v21 + 56))(v27, 1, 1, v20);
    goto LABEL_5;
  }

  v69 = v21;
  v70 = v20;
  v71 = v14;
  v72 = v27;
  v73 = a1;
  v74 = v13;
  v75 = v10;
  *&v96 = *v28;
  *(&v96 + 1) = v29;
  sub_21DF252E0();

  v30 = sub_21E140C94();
  v32 = v31;
  v34 = v33;
  sub_21E1409A4();
  v35 = sub_21E140C44();
  v37 = v36;
  v76 = v16;
  v39 = v38;

  sub_21DF3DE8C(v30, v32, v34 & 1);

  sub_21E141524();
  v40 = sub_21E140C14();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_21DF3DE8C(v35, v37, v39 & 1);

  KeyPath = swift_getKeyPath();
  sub_21E141CC4();
  sub_21E13FCE4();
  *&v108[55] = v114;
  *&v108[71] = v115;
  *&v108[87] = v116;
  *&v108[103] = v117;
  *&v108[7] = v111;
  *&v108[23] = v112;
  v109 = v44 & 1;
  *&v108[39] = v113;
  v48 = sub_21E140914();
  *(&v94[4] + 9) = *&v108[64];
  *(&v94[5] + 9) = *&v108[80];
  *(&v94[6] + 9) = *&v108[96];
  *(v94 + 9) = *v108;
  *(&v94[1] + 9) = *&v108[16];
  *(&v94[2] + 9) = *&v108[32];
  v110 = 0;
  *&v92 = v40;
  *(&v92 + 1) = v42;
  LOBYTE(v93) = v44 & 1;
  *(&v93 + 1) = v46;
  *&v94[0] = KeyPath;
  BYTE8(v94[0]) = 1;
  *(&v94[7] + 1) = *&v108[111];
  *(&v94[3] + 9) = *&v108[48];
  LOBYTE(v95[0]) = v48;
  *(v95 + 8) = xmmword_21E1567C0;
  *(&v95[1] + 8) = xmmword_21E1567C0;
  BYTE8(v95[2]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4E0);
  sub_21E0BC154();
  v49 = v78;
  v50 = v76;
  sub_21E141164();
  v106 = v95[0];
  v107[0] = v95[1];
  *(v107 + 9) = *(&v95[1] + 9);
  v102 = v94[4];
  v103 = v94[5];
  v104 = v94[6];
  v105 = v94[7];
  v98 = v94[0];
  v99 = v94[1];
  v100 = v94[2];
  v101 = v94[3];
  v96 = v92;
  v97 = v93;
  sub_21DF23614(&v96, &qword_27CEAD4E0);
  v51 = v80;
  sub_21E0BC1E0(v49, v80);
  *(v51 + *(v79 + 36)) = 256;
  v52 = *MEMORY[0x277CDF998];
  v53 = sub_21E13F9D4();
  (*(*(v53 - 8) + 104))(v50, v52, v53);
  sub_21E0BC398(&unk_280F68FD8, MEMORY[0x277CDFA28]);
  result = sub_21E142074();
  if (result)
  {
    sub_21E0BC250();
    sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
    v55 = v77;
    v14 = v71;
    sub_21E140F74();
    sub_21DF23614(v50, &qword_27CEA6DF8);
    sub_21DF23614(v51, &qword_27CEAD4A8);
    v57 = v69;
    v56 = v70;
    v27 = v72;
    (*(v69 + 32))(v72, v55, v70);
    (*(v57 + 56))(v27, 0, 1, v56);
    v13 = v74;
    v10 = v75;
LABEL_5:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4C0);
    v58 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
    *&v96 = MEMORY[0x277CE0BD8];
    *(&v96 + 1) = v14;
    *&v97 = MEMORY[0x277CE0BC8];
    *(&v97 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v59 = v83;
    sub_21E141764();
    v60 = v86;
    sub_21E140184();
    sub_21DF23E5C(&qword_27CEAD4C8, &qword_27CEAD488);
    sub_21E0BC398(&qword_27CEA7280, MEMORY[0x277CDDEE0]);
    v61 = v87;
    v62 = v85;
    v63 = v90;
    sub_21E140DC4();
    (*(v89 + 8))(v60, v63);
    (*(v84 + 8))(v59, v62);
    v64 = (v61 + *(v88 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
    sub_21E13FD04();
    *v64 = swift_getKeyPath();
    sub_21E0BBF88();
    sub_21E141164();
    sub_21DF23614(v61, &qword_27CEAD490);
    v65 = v82;
    sub_21DF236C0(v27, v82, &qword_27CEAD4B8);
    sub_21DF236C0(v13, v10, &qword_27CEAD498);
    v66 = v91;
    sub_21DF236C0(v65, v91, &qword_27CEAD4B8);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4D8);
    sub_21DF236C0(v10, v66 + *(v67 + 48), &qword_27CEAD498);
    sub_21DF23614(v13, &qword_27CEAD498);
    sub_21DF23614(v27, &qword_27CEAD4B8);
    sub_21DF23614(v10, &qword_27CEAD498);
    return sub_21DF23614(v65, &qword_27CEAD4B8);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0BBB88@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v24);
  v2 = &v24 - v1;
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = sub_21E140C64();
  v6 = v5;
  v8 = v7;
  sub_21E140AC4();
  v9 = sub_21E140C44();
  v11 = v10;
  v13 = v12;

  sub_21DF3DE8C(v4, v6, v8 & 1);

  sub_21E1409E4();
  v14 = sub_21E140BD4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_21DF3DE8C(v9, v11, v13 & 1);

  v26 = v14;
  v27 = v16;
  v28 = v18 & 1;
  v29 = v20;
  v21 = *MEMORY[0x277CDF998];
  v22 = sub_21E13F9D4();
  (*(*(v22 - 8) + 104))(v2, v21, v22);
  sub_21E0BC398(&unk_280F68FD8, MEMORY[0x277CDFA28]);
  result = sub_21E142074();
  if (result)
  {
    sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
    sub_21E140F74();
    sub_21DF23614(v2, &qword_27CEA6DF8);
    sub_21DF3DE8C(v14, v16, v18 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E0BBEC0(uint64_t a1)
{
  v2 = sub_21E13FD14();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21E13FE74();
}

unint64_t sub_21E0BBF88()
{
  result = qword_27CEAD4D0;
  if (!qword_27CEAD4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD488);
    sub_21E140194();
    sub_21DF23E5C(&qword_27CEAD4C8, &qword_27CEAD488);
    sub_21E0BC398(&qword_27CEA7280, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA7270, &qword_27CEA7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD4D0);
  }

  return result;
}

uint64_t sub_21E0BC100@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13FE94();
  *a1 = result;
  return result;
}

unint64_t sub_21E0BC154()
{
  result = qword_27CEAD4E8;
  if (!qword_27CEAD4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD4E0);
    sub_21DFF5D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD4E8);
  }

  return result;
}

uint64_t sub_21E0BC1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD4A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E0BC250()
{
  result = qword_27CEAD4F0;
  if (!qword_27CEAD4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD4A8);
    sub_21E0BC2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD4F0);
  }

  return result;
}

unint64_t sub_21E0BC2DC()
{
  result = qword_27CEAD4F8;
  if (!qword_27CEAD4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD4A0);
    sub_21E0BC154();
    sub_21E0BC398(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD4F8);
  }

  return result;
}

uint64_t sub_21E0BC398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E0BC3E0()
{
  result = qword_27CEAD500;
  if (!qword_27CEAD500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD480);
    sub_21DF23E5C(&qword_27CEAD508, &qword_27CEAD470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD500);
  }

  return result;
}

uint64_t sub_21E0BC498(void *a1)
{
  v2 = sub_21E13F1B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EC04();
  v6 = a1;
  v7 = sub_21E13F1A4();
  v8 = sub_21E142554();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 BOOLValue];

    _os_log_impl(&dword_21DF05000, v7, v8, "MontaraDirectActionSource activeChanged: %{BOOL}d", v9, 8u);
    MEMORY[0x223D540B0](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    NewSaliencyModel.activeChanged(to:)([v6 BOOLValue]);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21E0BC6B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_21E13F1B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EC04();
  v7 = sub_21E13F1A4();
  v8 = sub_21E142554();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21DF05000, v7, v8, "MontaraDirectActionSource deinit", v9, 2u);
    MEMORY[0x223D540B0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  [v1 invalidate];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

Swift::Void __swiftcall NewSaliencyModel.activeChanged(to:)(Swift::Bool to)
{
  v2 = v1;
  v4 = sub_21E13F1B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21E13EC04();

  v8 = sub_21E13F1A4();
  v9 = sub_21E142544();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = to;
    *(v10 + 8) = 1024;
    swift_getKeyPath();
    v16 = v1;
    sub_21E0BCC44();
    sub_21E13D3C4();

    v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
    swift_beginAccess();
    *(v10 + 10) = *(v2 + v11);

    _os_log_impl(&dword_21DF05000, v8, v9, "Siri activation state changed to: %{BOOL}d, isAskingMontara: %{BOOL}d", v10, 0xEu);
    MEMORY[0x223D540B0](v10, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  if (!to)
  {
    swift_getKeyPath();
    v16 = v2;
    sub_21E0BCC44();
    sub_21E13D3C4();

    v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
    swift_beginAccess();
    if (*(v2 + v12) == 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v14[-16] = v2;
      v14[-8] = 0;
      v15 = v2;
      sub_21E13D3B4();
    }
  }
}

void *sub_21E0BCBA0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_21E0BCC14@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21E0BCC44()
{
  result = qword_280F6B250;
  if (!qword_280F6B250)
  {
    type metadata accessor for NewSaliencyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6B250);
  }

  return result;
}

id sub_21E0BCCD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21E13F1B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC20VisualIntelligenceUI25MontaraDirectActionSource_delegate];
  *&v3[OBJC_IVAR____TtC20VisualIntelligenceUI25MontaraDirectActionSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_21E13EC04();
  v12 = sub_21E13F1A4();
  v13 = sub_21E142554();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a1;
    v15 = a2;
    v16 = ObjectType;
    v17 = v14;
    *v14 = 0;
    _os_log_impl(&dword_21DF05000, v12, v13, "MontaraDirectActionSource initialized", v14, 2u);
    v18 = v17;
    ObjectType = v16;
    a2 = v15;
    a1 = v21;
    MEMORY[0x223D540B0](v18, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  *(v11 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v22.receiver = v3;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_initWithDelegate_, a1);
}

uint64_t IdentifiableURL.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13D264();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t IdentifiableURL.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E13D264();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_21E0BCF6C()
{
  result = qword_27CEAC708;
  if (!qword_27CEAC708)
  {
    sub_21E13D264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC708);
  }

  return result;
}

uint64_t type metadata accessor for IdentifiableURL()
{
  result = qword_27CEAD578;
  if (!qword_27CEAD578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E0BD050(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_21E13EF04();
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DF5C3C4(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21DF5C3C4(v25 > 1, v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

uint64_t NewSaliencyModel.selectedEntity.getter()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E0BD41C()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    if (*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay) == 1)
    {
      *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21E13D3B4();
    }
  }

  return result;
}

Swift::Void __swiftcall NewSaliencyModel.clearSelection(animated:)(Swift::Bool animated)
{
  swift_allocObject();
  v2 = swift_weakInit();
  if (animated)
  {
    MEMORY[0x28223BE20](v2);
    sub_21E141D64();
    sub_21E13F864();
  }

  else
  {
    sub_21E0DC0D0();
  }
}

uint64_t NewSaliencyModel.updateUserSelection(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13F1B4();
  v66 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v62 - v10;
  v73 = sub_21E13EF04();
  v70 = *(v73 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v67 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v62 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v62 - v15;
  swift_getKeyPath();
  v77 = v1;
  v71 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v16 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v72 = a1;
  if (v16)
  {
    v63 = v6;
    v17 = sub_21E1423C4();
    MEMORY[0x28223BE20](v17);
    *(&v62 - 2) = a1;
    *(&v62 - 1) = v16;

    v18 = sub_21E0C372C(sub_21DF6078C, (&v62 - 4), "VisualIntelligenceUI/NewEntityModel.swift");

    if (v18)
    {
      return result;
    }

    v6 = v63;
  }

  swift_getKeyPath();
  v77 = v2;
  sub_21E13D3C4();

  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21)
  {
    v22 = sub_21E1423C4();
    MEMORY[0x28223BE20](v22);
    *(&v62 - 2) = v72;
    *(&v62 - 1) = v21;

    v23 = sub_21E0C372C(sub_21DF23B64, (&v62 - 4), "VisualIntelligenceUI/NewEntityModel.swift");

    if (v23)
    {
      sub_21E141D64();
      sub_21E13F864();
    }
  }

  swift_getKeyPath();
  v24 = v72;
  v76 = v72;
  sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  v26 = v24 + v25;
  v27 = v69;
  sub_21DF236C0(v26, v69, &qword_27CEACB50);
  v28 = v70;
  v29 = v73;
  if ((*(v70 + 48))(v27, 1, v73) != 1)
  {
    v42 = v28;
    v43 = *(v28 + 32);
    v44 = v68;
    v43(v68, v27, v29);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = *(v42 + 16);
    v47 = v65;
    v46(v65, v44, v73);
    v48 = v67;
    v46(v67, v47, v73);
    v49 = v73;
    v50 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v45;
    v43((v51 + v50), v47, v49);

    v52 = MKBGetDeviceLockState();
    if (v52 != 3 && v52)
    {
      v56 = sub_21E1423F4();
      v57 = v64;
      (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
      sub_21E1423C4();

      v58 = sub_21E1423B4();
      v59 = swift_allocObject();
      v60 = MEMORY[0x277D85700];
      v59[2] = v58;
      v59[3] = v60;
      v59[4] = sub_21E0E0E78;
      v59[5] = v51;
      v59[6] = 0;
      v59[7] = 0;
      sub_21E0C2E04(0, 0, v57, &unk_21E146EC0, v59);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        swift_getKeyPath();
        v75 = v54;
        sub_21E13D3C4();

        sub_21E0D919C(v48, *(v54 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized));

        v55 = *(v70 + 8);
        v55(v48, v49);
        v55(v44, v49);
      }
    }

    v61 = *(v70 + 8);
    v61(v48, v49);
    v61(v44, v49);
  }

  sub_21DF23614(v27, &qword_27CEACB50);
  sub_21E13EBF4();

  v30 = sub_21E13F1A4();
  v31 = sub_21E142564();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v73 = v4;
    v33 = v32;
    v34 = v24;
    v35 = swift_slowAlloc();
    v74[0] = v35;
    *v33 = 136315394;
    sub_21E13D344();
    sub_21E0ECD50(&qword_27CEA6CF0, MEMORY[0x277CC95F0]);
    v36 = sub_21E142AB4();
    v38 = sub_21E0E08C0(v36, v37, v74);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    swift_getKeyPath();
    v75 = v34;
    sub_21E13D3C4();

    v39 = *(v34 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
    v40 = *(v34 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8);

    v41 = sub_21E0E08C0(v39, v40, v74);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_21DF05000, v30, v31, "Attempting to update user selection to entity without a pin: %s, %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D540B0](v35, -1, -1);
    MEMORY[0x223D540B0](v33, -1, -1);

    return (*(v66 + 8))(v6, v73);
  }

  else
  {

    return (*(v66 + 8))(v6, v4);
  }
}

uint64_t NewSaliencyModel.__allocating_init(actions:)()
{
  v0 = swift_allocObject();
  NewSaliencyModel.init(actions:)();
  return v0;
}

uint64_t NewSaliencyModel.entities.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();

  v5 = sub_21E0E0250(v4, a1, sub_21DF6078C, "VisualIntelligenceUI/NewEntityModel.swift", 233);

  if (v5)
  {
    *(v1 + v3) = a1;

    sub_21E141D64();
    sub_21E13F864();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

void (*NewSaliencyModel.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0CBC60(v4);
  return sub_21E0BE3AC;
}

uint64_t sub_21E0BE3B8(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_21E142C14();
    ActionAnalytics.ActionType.rawValue.getter();
    sub_21E142204();

    v4 = sub_21E142C44();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEC00000070756B6FLL;
        v9 = 0x6F4C6C6175736956;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xEA00000000007075;
            v9 = 0x6B6F6F4C7370614DLL;
            break;
          case 2:
            v9 = 0x697463417370614DLL;
            v8 = 0xEA00000000006E6FLL;
            break;
          case 3:
            v8 = 0xE600000000000000;
            v9 = 0x65646F435251;
            break;
          case 4:
            v9 = 0x4370696C43707041;
            v10 = 6644847;
            goto LABEL_27;
          case 5:
            v9 = 0x6574654461746144;
            v8 = 0xEC000000726F7463;
            break;
          case 6:
            v9 = 0x7A6972616D6D7553;
            goto LABEL_22;
          case 7:
            v8 = 0xE900000000000064;
            v9 = 0x756F6C4164616552;
            break;
          case 8:
            v9 = 0x7261646E656C6143;
            v8 = 0xED0000746E657645;
            break;
          case 9:
            v9 = 0xD000000000000014;
            v8 = 0x800000021E15ADE0;
            break;
          case 0xA:
            v9 = 0x7261646E656C6143;
            v8 = 0xEC00000074696445;
            break;
          case 0xB:
            v8 = 0xE300000000000000;
            v9 = 7041857;
            break;
          case 0xC:
            v9 = 0x6165536567616D49;
            v10 = 6841202;
            goto LABEL_27;
          case 0xD:
            v9 = 0x74616C736E617254;
LABEL_22:
            v8 = 0xE900000000000065;
            break;
          case 0xE:
            v9 = 0x4172657474756853;
            v8 = 0xED00006E6F697463;
            break;
          case 0xF:
            v9 = 0x4E72657474756853;
            v8 = 0xEF6E6F697463416FLL;
            break;
          case 0x10:
            v8 = 0xEA00000000007265;
            v9 = 0x6B63697453646441;
            break;
          case 0x11:
            v9 = 0xD000000000000014;
            v8 = 0x800000021E15AE50;
            break;
          case 0x12:
            v8 = 0xE90000000000006FLL;
            v9 = 0x746F685065766153;
            break;
          case 0x13:
            v9 = 0x6974634174786554;
            v10 = 7564911;
            goto LABEL_27;
          case 0x14:
            v8 = 0xE800000000000000;
            v9 = 0x6B63616264656546;
            break;
          case 0x15:
            v9 = 0x6669636570736E55;
            v10 = 6579561;
LABEL_27:
            v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          default:
            break;
        }

        v11 = 0x6F4C6C6175736956;
        v12 = 0xEC00000070756B6FLL;
        switch(a1)
        {
          case 1:
            v12 = 0xEA00000000007075;
            if (v9 == 0x6B6F6F4C7370614DLL)
            {
              goto LABEL_66;
            }

            goto LABEL_67;
          case 2:
            v12 = 0xEA00000000006E6FLL;
            if (v9 != 0x697463417370614DLL)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 3:
            v12 = 0xE600000000000000;
            if (v9 != 0x65646F435251)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 4:
            v14 = 0x4370696C43707041;
            v15 = 6644847;
            goto LABEL_71;
          case 5:
            v16 = 0x6574654461746144;
            v17 = 1919906915;
            goto LABEL_62;
          case 6:
            v18 = 0x7A6972616D6D7553;
            goto LABEL_57;
          case 7:
            v12 = 0xE900000000000064;
            if (v9 != 0x756F6C4164616552)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 8:
            v11 = 0x7261646E656C6143;
            v12 = 0xED0000746E657645;
            goto LABEL_65;
          case 9:
            v12 = 0x800000021E15ADE0;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 10:
            v16 = 0x7261646E656C6143;
            v17 = 1953064005;
LABEL_62:
            v12 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v16)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 11:
            v12 = 0xE300000000000000;
            if (v9 != 7041857)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 12:
            v14 = 0x6165536567616D49;
            v15 = 6841202;
            goto LABEL_71;
          case 13:
            v18 = 0x74616C736E617254;
LABEL_57:
            v12 = 0xE900000000000065;
            if (v9 != v18)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 14:
            v12 = 0xED00006E6F697463;
            if (v9 != 0x4172657474756853)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 15:
            v12 = 0xEF6E6F697463416FLL;
            if (v9 != 0x4E72657474756853)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 16:
            v12 = 0xEA00000000007265;
            v13 = 0x697453646441;
            goto LABEL_51;
          case 17:
            v12 = 0x800000021E15AE50;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 18:
            v12 = 0xE90000000000006FLL;
            if (v9 != 0x746F685065766153)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 19:
            v14 = 0x6974634174786554;
            v15 = 7564911;
            goto LABEL_71;
          case 20:
            v12 = 0xE800000000000000;
            v13 = 0x616264656546;
LABEL_51:
            if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x6B63000000000000))
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 21:
            v14 = 0x6669636570736E55;
            v15 = 6579561;
LABEL_71:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v9 != v14)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          default:
LABEL_65:
            if (v9 != v11)
            {
              goto LABEL_67;
            }

LABEL_66:
            if (v8 == v12)
            {

              v19 = 1;
              return v19 & 1;
            }

LABEL_67:
            v19 = sub_21E142B14();

            if (v19)
            {
              return v19 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v19 & 1;
            }

            break;
        }
      }
    }
  }

  v19 = 0;
  return v19 & 1;
}