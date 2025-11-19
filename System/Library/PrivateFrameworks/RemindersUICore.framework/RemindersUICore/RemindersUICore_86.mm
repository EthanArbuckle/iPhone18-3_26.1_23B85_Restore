void *_s15RemindersUICore33TTRIHashtagWrappingCollectionViewC22contextMenuInteraction_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0nhI0C_So7CGPointVtF_0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer;
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (result)
  {
    [result convertPoint:v0 fromCoordinateSpace:?];
    result = *&v1[v0];
    if (result)
    {
      v5 = v3;
      v6 = v4;
      v7 = [result visibleArrangedSubviews];
      if (v7)
      {
        v1 = v7;
        sub_21D114EC8();
        v8 = sub_21DBFA5EC();

        if (!(v8 >> 62))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_5:
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v9)
          {
            goto LABEL_27;
          }

          goto LABEL_6;
        }
      }

      v9 = sub_21DBFBD7C();
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_6:
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x223D44740](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v1 = v11;
        v12 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        [v11 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [v1 effectiveAlignmentRectInsets];
        v41.origin.x = UIEdgeInsetsInsetRect(v14, v16, v18, v20, v21, v22);
        v40.x = v5;
        v40.y = v6;
        if (CGRectContainsPoint(v41, v40))
        {
          break;
        }

        ++v10;
        if (v12 == v9)
        {
          goto LABEL_27;
        }
      }

      if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
      {
        goto LABEL_34;
      }

      v23 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
      swift_beginAccess();
      v24 = *(v0 + v23);

      v25 = v1;
      sub_21DBF8E0C();
      v26 = sub_21D8F7BB0(v1, v24);
      v28 = v27;

      if (!v28)
      {

        return 0;
      }

      v29 = v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 8);
        ObjectType = swift_getObjectType();
        v37 = 1;
        *v36 = v1;
        memset(&v36[8], 0, 32);
        v36[40] = 1;
        *&v36[48] = 0;
        v36[56] = 1;
        v32 = *(v30 + 56);
        v1 = v25;
        v33 = v32(v0, v26, v28, v36, ObjectType, v30);
        swift_unknownObjectRelease();
        v38[0] = *v36;
        v38[1] = *&v36[16];
        v39[0] = *&v36[32];
        *(v39 + 9) = *&v36[41];
        sub_21D1A9430(v38);
        if (v33)
        {
          v10 = v33;
          if (qword_27CE56E48 == -1)
          {
LABEL_23:
            v34 = qword_27CE638E0;
            v35 = sub_21DBFA12C();

            objc_setAssociatedObject(v10, v34, v35, 1);

            return v10;
          }

LABEL_31:
          swift_once();
          goto LABEL_23;
        }
      }

      else
      {
      }

LABEL_27:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21D8F8D84()
{
  result = sub_21D8F48C8();
  if (!v2)
  {
    return 0;
  }

  if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (!v3)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = v2;

  v6 = [v3 visibleArrangedSubviews];
  if (v6)
  {
    v7 = v6;
    sub_21D114EC8();
    v8 = sub_21DBFA5EC();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v10 = *(v0 + v9);
  sub_21DBF8E0C();
  v11 = sub_21D8F8620(v4, v5, v8, v10);

  if (!v11)
  {
    return 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
  type metadata accessor for TTRIHashtagButton();
  if (swift_dynamicCastClass())
  {
    v13 = v11;
    v14 = TTRIHashtagButton.currentVisiblePath.getter();
    [v12 setVisiblePath_];
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v11 parameters:v12];

  return v15;
}

unint64_t sub_21D8F8F4C()
{
  result = qword_27CE63988;
  if (!qword_27CE63988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63988);
  }

  return result;
}

uint64_t type metadata accessor for TTRIHashtagWrappingCollectionView()
{
  result = qword_27CE639A0;
  if (!qword_27CE639A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8F9094()
{
  result = sub_21DBF6C1C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21D8F91CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D8F924C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21D8F7150(*a1, *(a1 + 8), *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t TTRConfirmationDialogState.__allocating_init(dialogToShow:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21D8FB4D0();
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t TTRConfirmationDialogState.show(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  sub_21D8FB428();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21D8F94A8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63AB8);
  v1 = __swift_project_value_buffer(v0, qword_27CE63AB8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRConfirmationDialogState.init(dialogToShow:)(uint64_t a1)
{
  v2 = sub_21D8FB4D0();
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_21D8F95F4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21D8F96DC();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21D8F977C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  v5 = sub_21DBFBA8C();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

BOOL sub_21D8F991C()
{
  v1 = *(*v0 + 80);
  v2 = sub_21DBFBA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_21D8F95F4(&v8 - v4);
  v6 = (*(*(v1 - 8) + 48))(v5, 1, v1) != 1;
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_21D8F9A38(char a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - v7;
  if ((a1 & 1) == 0)
  {
    (*(*(v3 - 8) + 56))(v8, 1, 1, v3, v6);
    sub_21D8FB428();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t TTRConfirmationDialogState.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_21DBF5DBC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRConfirmationDialogState.__deallocating_deinit()
{
  TTRConfirmationDialogState.deinit();

  return swift_deallocClassInstance();
}

uint64_t View.confirmationDialog<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v65 = a3;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v54 = type metadata accessor for TTRConfirmationDialogState();
  v7 = sub_21DBF9C4C();
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = v50 - v8;
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v9);
  v50[0] = v50 - v10;
  v69 = sub_21DBFBA8C();
  v53 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v50 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63AD0);
  v17 = sub_21D176F0C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = sub_21D8FB590();
  v72 = a2;
  v73 = MEMORY[0x277D837D0];
  v55 = AssociatedTypeWitness;
  v74 = AssociatedTypeWitness;
  v75 = v16;
  v62 = v17;
  v63 = v16;
  v76 = v5;
  v77 = v65;
  v78 = v17;
  v79 = AssociatedConformanceWitness;
  v20 = v7;
  v66 = v19;
  v67 = AssociatedConformanceWitness;
  v80 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v56 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = v50 - v23;
  v24 = swift_allocBox();

  swift_getWitnessTable();
  sub_21DBF9C2C();
  v25 = v24;
  v54 = a2;
  sub_21D8FA5D0();
  sub_21D8F95F4(v14);

  v26 = v51;
  if ((*(v51 + 48))(v14, 1, v5))
  {
    v27 = *(v53 + 1);
    v52 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v27;
    v27(v14, v69);
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v30 = v50[0];
    (*(v26 + 16))(v50[0], v14, v5);
    v31 = *(v53 + 1);
    v52 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v31;
    v31(v14, v69);
    v32 = (*(v6 + 24))(v5, v6);
    v34 = v33;
    (*(v26 + 8))(v30, v5);
    v29 = 0xE000000000000000;
    if (v34)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0;
    }

    if (v34)
    {
      v29 = v34;
    }
  }

  v51 = v29;
  v70 = v28;
  v71 = v29;
  v35 = v58;
  v50[1] = v25;
  v36 = v54;
  v37 = v65;
  v38 = sub_21D8FA4C0();
  MEMORY[0x28223BE20](v38);
  swift_getKeyPath();
  sub_21DBF9C3C();

  (*(v59 + 8))(v35, v20);
  LODWORD(v59) = v74;
  sub_21D8FA5D0();
  sub_21D8F95F4(v68);

  v58 = v50;
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v55 = swift_checkMetadataState();
  v41 = v62;
  v42 = v63;
  v43 = v56;
  v44 = v68;
  sub_21DBF99DC();

  v53(v44, v69);

  v72 = v36;
  v73 = MEMORY[0x277D837D0];
  v74 = v55;
  v75 = v42;
  v76 = v5;
  v77 = v37;
  v78 = v41;
  v79 = v67;
  v80 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v57;
  v47 = OpaqueTypeMetadata2;
  sub_21DA31930(v43, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v48 = *(v60 + 8);
  v48(v43, v47);
  sub_21DA31930(v46, v47, OpaqueTypeConformance2);
  v48(v46, v47);
}

uint64_t sub_21D8FA4C0()
{
  type metadata accessor for TTRConfirmationDialogState();
  v0 = sub_21DBF9C4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_21DBF9C1C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D8FA5D0()
{
  type metadata accessor for TTRConfirmationDialogState();
  v0 = sub_21DBF9C4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_21DBF9C0C();
  (*(v1 + 8))(v3, v0);
  return v6[1];
}

uint64_t sub_21D8FA6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  (*(a5 + 40))(a3, a5, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_21DA31930(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_21DA31930(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

double sub_21D8FA86C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 32))(a1, a2);
  if (v5)
  {
    *&v7 = v4;
    *(&v7 + 1) = v5;
    sub_21D176F0C();
    sub_21DBF996C();
  }

  sub_21DBF97FC();
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 32) = v9;
  return result;
}

uint64_t TTRDiscardChangesDialog.discardChanges.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRDiscardChangesDialog.init(discardChanges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRDiscardChangesDialog.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRDiscardChangesDialog.actions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - v2;
  v5 = *v0;
  v4 = v0[1];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v10[0] = sub_21DBF516C();
  v10[1] = v6;
  sub_21DBF949C();
  v7 = sub_21DBF94AC();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  sub_21D176F0C();

  return sub_21DBF9B9C();
}

uint64_t sub_21D8FAC04()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRAlertWithMessageDialog.AlertAction.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertWithMessageDialog.AlertAction.action.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TTRAlertWithMessageDialog.AlertAction.init(title:isDestructive:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t TTRAlertWithMessageDialog.alertTitle.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertWithMessageDialog.alertMessage.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertWithMessageDialog.alertPrimaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  sub_21DBF8E0C();
}

__n128 TTRAlertWithMessageDialog.init(alertTitle:alertMessage:alertPrimaryAction:shouldShowCancelButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = a5[1];
  v9 = *(a5 + 16);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = v8;
  *(a7 + 48) = v9;
  result = *(a5 + 3);
  *(a7 + 56) = result;
  *(a7 + 72) = a6;
  return result;
}

uint64_t TTRAlertWithMessageDialog.actions.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  *&v43[9] = *(v1 + 57);
  v21 = v1[3];
  v42 = v1[2];
  *v43 = v21;
  v22 = v1[1];
  v40 = *v1;
  v41 = v22;
  if (v43[24])
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v38[0] = sub_21DBF516C();
    v38[1] = v23;
    sub_21D176F0C();
    sub_21DBF9BAC();
    (*(v9 + 32))(v20, v14, v8);
    (*(v9 + 56))(v20, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(&v34 - v19, 1, 1, v8);
  }

  v44 = v42;
  if (v43[0])
  {
    sub_21DBF949C();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_21DBF94AC();
  (*(*(v25 - 8) + 56))(v7, v24, 1, v25);
  v45 = v44;
  v39 = v44;
  sub_21D0D3954(v7, v4, &qword_27CE63AE0);
  v26 = swift_allocObject();
  v27 = *v43;
  v26[3] = v42;
  v26[4] = v27;
  *(v26 + 73) = *&v43[9];
  v28 = v41;
  v26[1] = v40;
  v26[2] = v28;
  sub_21D35BFD0(&v45, v38);
  sub_21D8FB654(&v40, v38);
  sub_21D176F0C();
  sub_21DBF9B9C();
  sub_21D0D3954(v20, v17, &qword_27CE63AF0);
  v36 = v20;
  v29 = *(v9 + 16);
  v29(v11, v14, v8);
  v35 = v7;
  v30 = v37;
  sub_21D0D3954(v17, v37, &qword_27CE63AF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE63AF8);
  v29((v30 + *(v31 + 48)), v11, v8);
  v32 = *(v9 + 8);
  v32(v14, v8);
  sub_21D0CF7E0(v35, &qword_27CE63AE0);
  sub_21D0CF7E0(v36, &qword_27CE63AF0);
  v32(v11, v8);
  return sub_21D0CF7E0(v17, &qword_27CE63AF0);
}

uint64_t sub_21D8FB354()
{
  if (qword_27CE56E50 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE63AB8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();
}

uint64_t sub_21D8FB3F4()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D8FB428()
{
  swift_getKeyPath();
  sub_21D8F9844();
}

uint64_t sub_21D8FB4D0()
{
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 96), 1, 1);
  sub_21DBF5DAC();
  sub_21D8FB428();
  return v0;
}

unint64_t sub_21D8FB590()
{
  result = qword_27CE63AD8;
  if (!qword_27CE63AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63AD8);
  }

  return result;
}

uint64_t sub_21D8FB700()
{
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF5DBC();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t destroy for TTRAlertWithMessageDialog()
{
}

uint64_t initializeWithCopy for TTRAlertWithMessageDialog(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRAlertWithMessageDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TTRAlertWithMessageDialog(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAlertWithMessageDialog(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for TTRAlertWithMessageDialog(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t destroy for TTRAlertWithMessageDialog.AlertAction()
{
}

uint64_t initializeWithCopy for TTRAlertWithMessageDialog.AlertAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRAlertWithMessageDialog.AlertAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithTake for TTRAlertWithMessageDialog.AlertAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t TTRRemindersBoardColumnWidthCalculator.WidthClass.description.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t TTRRemindersBoardColumnWidthCalculator.WidthClass.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D8FBD20()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

void TTRRemindersBoardColumnWidthCalculator.init(contentSize:edgeInsets:interColumnSpacing:displayScale:columnWidthRange:peekPercentage:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, __int128 a9, uint64_t a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v10 = 1.0;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  if (fabs(a8) >= 0.0000000149011612)
  {
    v10 = a8;
  }

  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = v10;
  *(a1 + 56) = a9;
  *(a1 + 72) = a10;
}

uint64_t TTRRemindersBoardColumnWidthCalculator.supportedWidthClasses()()
{
  v1 = v0[3];
  v24 = v0[2];
  v25 = v1;
  v26 = v0[4];
  v2 = v0[1];
  v22 = *v0;
  v23 = v2;
  v21 = MEMORY[0x277D84F90];
  sub_21D18E658(0, 3, 0);
  v3 = v21;
  v20 = 0;
  v4 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v20);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    v17 = v4;
    sub_21D18E658((v5 > 1), v6 + 1, 1);
    v4 = v17;
    v3 = v21;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = v4;
  v20 = 1;
  v7 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v20);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (v9 >= v8 >> 1)
  {
    v18 = v7;
    sub_21D18E658((v8 > 1), v9 + 1, 1);
    v7 = v18;
    v3 = v21;
  }

  *(v3 + 16) = v9 + 1;
  *(v3 + 8 * v9 + 32) = v7;
  v20 = 2;
  v10 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v20);
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (v12 >= v11 >> 1)
  {
    v19 = v10;
    sub_21D18E658((v11 > 1), v12 + 1, 1);
    v10 = v19;
  }

  v13 = v21;
  *(v21 + 16) = v12 + 1;
  *(v13 + 8 * v12 + 32) = v10;
  v14 = sub_21DBFA64C();

  v15 = *(v14 + 16);

  if ((v15 - 1) >= 3)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return *(&off_27832F218 + v15 - 1);
  }
}

Swift::Int __swiftcall TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(RemindersUICore::TTRRemindersBoardColumnWidthCalculator::WidthClass a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 72);
  if (*a1)
  {
    v2 = *(v1 + 64);
    if (*a1 == 1)
    {
      v8 = *(v1 + 8);
      v9 = *(v1 + 48);
      v15 = *v1;
      v16 = v8;
      v17 = v4;
      v18 = *(v1 + 24);
      v19 = v5;
      v20 = v9;
      v21 = v6;
      v22 = v2;
      v23 = v7;
      v14 = 0;
      v10 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v14);
      v15 = v3;
      v16 = v8;
      v17 = v4;
      v18 = *(v1 + 24);
      v19 = v5;
      v20 = v9;
      v21 = v6;
      v22 = v2;
      v23 = v7;
      v14 = 2;
      *&a1 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v14);
      if (!__OFADD__(v10, a1))
      {
        v11 = roundf(vcvts_n_f32_s64(v10 + a1, 1uLL));
        if ((LODWORD(v11) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v11 > -9.2234e18)
          {
            if (v11 < 9.2234e18)
            {
              *&a1 = v11;
              goto LABEL_27;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v12 = ceil((v3 - v4 - v6 * v7) / (v5 + v6) + -1.0);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 >= 9.22337204e18)
  {
    __break(1u);
LABEL_12:
    v12 = ceil((v3 - v4 - v2 * v7) / (v5 + v2));
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v12 <= -9.22337204e18)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v12 >= 9.22337204e18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  if (v12 <= 1)
  {
    *&a1 = 1;
  }

  else
  {
    *&a1 = v12;
  }

LABEL_27:
  LOBYTE(result) = a1;
  return result;
}

Swift::Int TTRRemindersBoardColumnWidthCalculator.columnWidth(for:)(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 2);
  v11 = *(v1 + 24);
  v5 = *(v1 + 5);
  v4 = *(v1 + 6);
  v14 = *(v1 + 56);
  v6 = *(v1 + 9);
  v9 = *v1;
  v10 = v3;
  v12 = v5;
  v13 = v4;
  v15 = v6;
  v8 = v2;
  return TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v8);
}

uint64_t TTRRemindersBoardColumnWidthCalculator.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v32 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v31 = *(v0 + 56);
  v6 = *(v0 + 72);
  v29 = 0;
  v30 = 0xE000000000000000;
  v21 = v1;
  v22 = v2;
  v23 = v3;
  v24 = *(v0 + 24);
  v25 = v4;
  v26 = v5;
  v27 = *(v0 + 56);
  v28 = v6;
  v7 = TTRRemindersBoardColumnWidthCalculator.supportedWidthClasses()();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      v11 = *(v7 + v9);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_21DBFBEEC();
      v19 = v21;
      v20 = v22;
      v12 = 0x6D756964656DLL;
      if (v11 != 1)
      {
        v12 = 0x656772616CLL;
      }

      v13 = 0xE600000000000000;
      if (v11 != 1)
      {
        v13 = 0xE500000000000000;
      }

      if (v11)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x6C6C616D73;
      }

      if (v11)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v14, v15);

      MEMORY[0x223D42AA0](0xD000000000000014, 0x800000021DC6FF00);
      v21 = v1;
      v22 = v2;
      v24 = v32;
      v23 = v3;
      v25 = v4;
      v26 = v5;
      v27 = v31;
      v28 = v6;
      v18 = v11;
      v21 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v18);
      v16 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v16);

      MEMORY[0x223D42AA0](0x6E6D756C6F63202CLL, 0xEF203A6874646957);
      v21 = v1;
      v22 = v2;
      v24 = v32;
      v23 = v3;
      v25 = v4;
      v26 = v5;
      v27 = v31;
      v28 = v6;
      v18 = v11;
      TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v18);
      v10 = sub_21DBFAA1C();
      MEMORY[0x223D42AA0](v10);

      MEMORY[0x223D42AA0](545005693, 0xE400000000000000);
      MEMORY[0x223D42AA0](v19, v20);

      ++v9;
      --v8;
    }

    while (v8);

    return v29;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_21D8FC550()
{
  result = qword_27CE63B98;
  if (!qword_27CE63B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63B98);
  }

  return result;
}

unint64_t sub_21D8FC5A8()
{
  result = qword_27CE63BA0;
  if (!qword_27CE63BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersBoardColumnWidthCalculator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersBoardColumnWidthCalculator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

id TTRIReminderCompletionButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void TTRIReminderCompletionButton.icon.setter(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_21D637AC4(v5, v6);
  sub_21D637AE8(v5, v6);
  v7[0] = v5;
  v7[1] = v6;
  sub_21D8FD0A0(v7);
  sub_21D637AE8(v5, v6);
}

id TTRIReminderCompletionButton.scale.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = v2;
  if (v2 != v5)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

id TTRIReminderCompletionButton.prefersFadedAppearance.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    v7 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
    swift_beginAccess();
    v8 = *&v1[v7];
    if (v8 >> 62)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
    }

    if (v9 || (a1 & 1) != 0 || (v10 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (v1[v10] & 1) == 0))
    {
      v11 = &selRef_removeTarget_action_forControlEvents_;
    }

    else
    {
      v11 = &selRef_addTarget_action_forControlEvents_;
    }

    [v1 *v11];
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_21D8FC8EC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63BB0);
  v1 = __swift_project_value_buffer(v0, qword_27CE63BB0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIReminderCompletionButton.Scale.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRIReminderCompletionButton.Icon.AddIconStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void *TTRIReminderCompletionButton.preferredSymbolConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIReminderCompletionButton.preferredSymbolConfiguration.setter(id a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      sub_21D0D8CF0(0, &unk_27CE65680);
      a1 = a1;
      v6 = v4;
      v7 = sub_21DBFB63C();

      if (v7)
      {

        v4 = v6;
LABEL_10:

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    [v1 setNeedsUpdateConfiguration];

    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_9;
  }
}

void (*TTRIReminderCompletionButton.preferredSymbolConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21D8FCCA0;
}

void sub_21D8FCCA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_21D0D8CF0(0, &unk_27CE65680);
        v5 = v3;
        v9 = v8;
        v10 = sub_21DBFB63C();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    [*(v2 + 32) setNeedsUpdateConfiguration];

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  TTRIReminderCompletionButton.preferredSymbolConfiguration.setter(v3);
  v5 = *(v2 + 24);
LABEL_11:

LABEL_12:

  free(v2);
}

uint64_t TTRIReminderCompletionButton.scale.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_21D8FCDF0(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*TTRIReminderCompletionButton.scale.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D8FCEF4;
}

void sub_21D8FCEF4(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

unint64_t TTRIReminderCompletionButton.icon.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_21D637AC4(v4, v5);
}

unint64_t sub_21D8FCFA8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_21D637AC4(v4, v5);
}

void sub_21D8FD000(unint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_21D637AC4(v2, v3);
  sub_21D637AC4(v5, v6);
  sub_21D637AE8(v5, v6);
  v7[0] = v5;
  v7[1] = v6;
  sub_21D8FD0A0(v7);
  sub_21D637AE8(v5, v6);
}

void sub_21D8FD0A0(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
  swift_beginAccess();
  v6 = *v4;
  v5 = *(v4 + 1);
  if (*v4 >> 1 == 0xFFFFFFFFLL)
  {
    sub_21D637AC4(*v4, *(v4 + 1));
    sub_21D637AC4(v2, v3);
    if (v2 >> 1 == 0xFFFFFFFF)
    {
      sub_21D637AE8(v6, v5);
      return;
    }
  }

  else
  {
    v14 = *v4;
    v15 = v5;
    if (v2 >> 1 != 0xFFFFFFFF)
    {
      v12 = v2;
      v13 = v3;
      sub_21D637AC4(v6, v5);
      sub_21D637AC4(v2, v3);
      sub_21D637AC4(v6, v5);
      v11 = _s15RemindersUICore28TTRIReminderCompletionButtonC4IconO2eeoiySbAE_AEtFZ_0(&v14, &v12);
      sub_21D637AFC(v12, v13);
      sub_21D637AFC(v14, v15);
      sub_21D637AE8(v6, v5);
      if (v11)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_21D637AC4(v6, v5);
    sub_21D637AC4(v2, v3);
    sub_21D637AC4(v6, v5);
    sub_21D637AFC(v6, v5);
  }

  sub_21D637AE8(v6, v5);
  sub_21D637AE8(v2, v3);
LABEL_7:
  if (*v4 >> 62)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
  }

  if (v7 || (v8 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance, swift_beginAccess(), (v1[v8] & 1) != 0) || (v9 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (v1[v9] & 1) == 0))
  {
    v10 = &selRef_removeTarget_action_forControlEvents_;
  }

  else
  {
    v10 = &selRef_addTarget_action_forControlEvents_;
  }

  [v1 *v10];
  [v1 setNeedsUpdateConfiguration];
}

void (*TTRIReminderCompletionButton.icon.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_21D637AC4(v7, v8);
  return sub_21D8FD330;
}

void sub_21D8FD330(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = v3[4];
  v6 = (v3[5] + v3[6]);
  v8 = *v6;
  v7 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  if (a2)
  {
    sub_21D637AC4(v4, v5);
    sub_21D637AC4(v8, v7);
    sub_21D637AE8(v8, v7);
    v11 = v8;
    v12 = v7;
    sub_21D8FD0A0(&v11);
    sub_21D637AE8(v8, v7);
    v9 = v3[3];
    v10 = v3[4];
  }

  else
  {
    sub_21D637AC4(v8, v7);
    sub_21D637AE8(v8, v7);
    v11 = v8;
    v12 = v7;
    sub_21D8FD0A0(&v11);
    v9 = v8;
    v10 = v7;
  }

  sub_21D637AE8(v9, v10);

  free(v3);
}

uint64_t TTRIReminderCompletionButton.prefersFadedAppearance.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*TTRIReminderCompletionButton.prefersFadedAppearance.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_21D8FD4E0;
}

void sub_21D8FD4E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    TTRIReminderCompletionButton.prefersFadedAppearance.setter(*(*a1 + 88));
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[9];
      v8 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
      swift_beginAccess();
      if ((v3 & 1) != 0 || ((v9 = *(v7 + v8), !(v9 >> 62)) ? (v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL) : (v10 = 1), v10 || (v11 = v2[9], v12 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (*(v11 + v12) & 1) == 0)))
      {
        v13 = &selRef_removeTarget_action_forControlEvents_;
      }

      else
      {
        v13 = &selRef_addTarget_action_forControlEvents_;
      }

      v14 = v2[9];
      [v14 *v13];
      [v14 setNeedsUpdateConfiguration];
    }
  }

  free(v2);
}

uint64_t TTRIReminderCompletionButton.togglesSelectionOnPress.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress;
  swift_beginAccess();
  return *(v0 + v1);
}

id TTRIReminderCompletionButton.togglesSelectionOnPress.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    v7 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
    swift_beginAccess();
    v8 = *&v1[v7];
    v9 = &selRef_removeTarget_action_forControlEvents_;
    if (v8 >> 62)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v8 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
    }

    if (!v10)
    {
      v11 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
      swift_beginAccess();
      if (!(v1[v11] & 1 | ((a1 & 1) == 0)))
      {
        v9 = &selRef_addTarget_action_forControlEvents_;
      }
    }

    return [v1 *v9];
  }

  return result;
}

void (*TTRIReminderCompletionButton.togglesSelectionOnPress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_21D8FD7BC;
}

void sub_21D8FD7BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    TTRIReminderCompletionButton.togglesSelectionOnPress.setter(*(*a1 + 88));
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = *(v2 + 80);
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = *(v2 + 72);
      v8 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
      swift_beginAccess();
      v9 = *(v7 + v8);
      v10 = &selRef_removeTarget_action_forControlEvents_;
      if (v9 >> 62)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v9 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
      }

      if (!v11)
      {
        v12 = *(v2 + 72);
        v13 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
        swift_beginAccess();
        if (!(*(v12 + v13) & 1 | ((v3 & 1) == 0)))
        {
          v10 = &selRef_addTarget_action_forControlEvents_;
        }
      }

      [*(v2 + 72) *v10];
    }
  }

  free(v2);
}

id TTRIReminderCompletionButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon] = xmmword_21DC30F50;
  v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D8FD9A0();

  return v10;
}

id sub_21D8FD9A0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  sub_21DBFB90C();
  v5 = sub_21DBFB95C();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_21DBFB98C();
  *(swift_allocObject() + 16) = ObjectType;
  sub_21DBFB99C();
  v6 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
  }

  if (v8 || (v9 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance, swift_beginAccess(), (v0[v9] & 1) != 0) || (v10 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (v0[v10] & 1) == 0))
  {
    v11 = &selRef_removeTarget_action_forControlEvents_;
  }

  else
  {
    v11 = &selRef_addTarget_action_forControlEvents_;
  }

  return [v0 *v11];
}

id TTRIReminderCompletionButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

CGSize __swiftcall TTRIReminderCompletionButton.sizeThatFits(_:)(CGSize a1)
{
  v2 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage];
  }

  else
  {
    v4 = v1;
  }

  v5 = &selRef_intrinsicContentSize;
  if (!v3)
  {
    v5 = &selRef_size;
  }

  [v4 *v5];
  result.height = v7;
  result.width = v6;
  return result;
}

Swift::Void __swiftcall TTRIReminderCompletionButton.updateConfiguration()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_updateConfiguration);
  sub_21D8FDC88();
}

uint64_t sub_21D8FDC88()
{
  v1 = v0;
  v2 = sub_21DBF9D0C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v70[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A658);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v70[-v6];
  v83 = sub_21DBF88CC();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v75 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v70[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v70[-v16];
  v18 = sub_21DBFB95C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v70[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  v23 = v1[v22];
  v78 = v14;
  v72 = v4;
  v76 = v7;
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = 0;
      v25 = 2;
    }

    else
    {
      v24 = 1;
      v25 = 3;
    }
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  v80 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = &v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
  swift_beginAccess();
  v28 = *v27;
  v29 = *v27 >> 1 == 0xFFFFFFFF;
  v81 = v18;
  v77 = v26;
  if (v29)
  {
    LOBYTE(v28) = 0;
    v79 = 0;
    v80 = 0;
    v30 = 0;
    v74 = 0;
    v31 = 1.0;
    v71 = 1;
    goto LABEL_40;
  }

  if (!(v28 >> 62))
  {
    v35 = v27[1];
    sub_21D637AD8(v28, v35);
    if (v28)
    {
      if (qword_27CE56808 != -1)
      {
        swift_once();
      }

      v38 = &qword_27CE5C530;
    }

    else
    {
      if (qword_280D16890 != -1)
      {
        swift_once();
      }

      v38 = &qword_280D16898;
    }

    v74 = *v38;
    v42 = sub_21D8FECF4(v26, v1, v80);
    v43 = v42;
    v80 = v42;
    if (v28)
    {
      v44 = v42;
    }

    else
    {
      v45 = objc_opt_self();
      v46 = v43;
      v47 = v45;
      v48 = v46;
      v49 = [v47 tertiaryLabelColor];
      sub_21D637AE8(v28, v35);
      v35 = v49;
    }

    v50 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
    swift_beginAccess();
    v30 = 0;
    v51 = v1[v50];
    v71 = v28 ^ 1;
    if (v51)
    {
      v31 = 0.4;
    }

    else
    {
      v31 = 1.0;
    }

    v52 = &v85;
    goto LABEL_38;
  }

  if (v28 >> 62 != 1)
  {
    if (qword_280D16868 != -1)
    {
      swift_once();
    }

    v74 = qword_280D16870;
    v39 = sub_21D8FECF4(v26, v1, v80);
    v40 = objc_opt_self();
    v80 = v39;
    v35 = [v40 tertiaryLabelColor];
    LOBYTE(v28) = 0;
    v30 = 0;
    v71 = 1;
    v31 = 1.0;
    v79 = v35;
    goto LABEL_39;
  }

  if ((v28 & 1) == 0)
  {
    if (qword_27CE56810 != -1)
    {
      swift_once();
    }

    v74 = qword_27CE5C538;
    v41 = sub_21D8FECF4(v26, v1, v80);
    v35 = sub_21D8FEE58();

    LOBYTE(v28) = 0;
    v79 = 0;
    v30 = 0;
    v71 = 1;
    v31 = 1.0;
    goto LABEL_37;
  }

  if (qword_27CE56818 != -1)
  {
    swift_once();
  }

  v32 = qword_27CE5C540;
  v33 = objc_opt_self();
  v28 = v32;
  v79 = [v33 tintColor];
  v34 = v79;
  v35 = sub_21D8FECF4(v26, v1, v80);
  v31 = 1.0;
  v74 = v28;
  if (!v24)
  {
    LOBYTE(v28) = 0;
    v30 = 0;
    v71 = 1;
LABEL_37:
    v52 = &v86;
LABEL_38:
    *(v52 - 32) = v35;
    goto LABEL_39;
  }

  v36 = [objc_opt_self() configurationWithScale_];
  v37 = [v35 configurationByApplyingConfiguration_];

  v30 = [v28 imageWithSymbolConfiguration_];
  LOBYTE(v28) = 0;
  v71 = 1;
  v80 = v37;
  v35 = v37;
LABEL_39:
  v53 = v35;
LABEL_40:
  sub_21DBFB97C();
  v54 = *(v19 + 48);
  v55 = v81;
  if (v54(v17, 1, v81) == 1)
  {
    sub_21DBFB90C();
    if (v54(v17, 1, v55) != 1)
    {
      sub_21D3032C8(v17);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v55);
  }

  v73 = v74;
  sub_21DBFB8FC();
  sub_21DBFB78C();
  sub_21DBFB89C();
  sub_21DBFB82C();
  sub_21DBF889C();
  v56 = [objc_opt_self() clearColor];
  sub_21DBF883C();
  sub_21DBF885C();
  v57 = v76;
  sub_21DBF8BAC();
  v58 = sub_21DBF8B9C();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_21DBF888C();
  (*(v82 + 16))(v75, v11, v83);
  sub_21DBFB7BC();
  if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
  {
    sub_21D0D8CF0(0, &qword_27CE63C08);
    v84[3] = sub_21DBF9CEC();
    v84[4] = sub_21D8FFCB0();
    __swift_allocate_boxed_opaque_existential_0(v84);
    sub_21DBF9CDC();
    sub_21DBF9CFC();
    sub_21DBFB50C();
LABEL_49:
    sub_21DBFB8BC();
    goto LABEL_52;
  }

  v59 = sub_21DBFB8AC();
  if (!v59)
  {
    goto LABEL_49;
  }

  v60 = v59;
  if ((v71 & 1) == 0)
  {
    v61 = v59;
  }

  sub_21DBFB8BC();

LABEL_52:
  v62 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage;
  v63 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage];
  if (!v63)
  {
    if (!v30)
    {
      v65 = 0;
      goto LABEL_59;
    }

    v63 = 0;
    goto LABEL_58;
  }

  if (!v30)
  {
LABEL_58:
    *&v1[v62] = v30;
    v65 = v30;

    [v1 invalidateIntrinsicContentSize];
    goto LABEL_59;
  }

  sub_21D0D8CF0(0, &qword_280D17688);
  v64 = v63;
  v65 = v30;
  v66 = sub_21DBFB63C();

  if ((v66 & 1) == 0)
  {
    v63 = *&v1[v62];
    goto LABEL_58;
  }

LABEL_59:
  v67 = v78;
  v68 = v81;
  (*(v19 + 16))(v78, v21, v81);
  (*(v19 + 56))(v67, 0, 1, v68);
  sub_21DBFB98C();
  [v1 setSelected_];
  [v1 setAlpha_];

  (*(v82 + 8))(v11, v83);
  (*(v19 + 8))(v21, v68);
}

uint64_t TTRIReminderCompletionButton.accessibilityUserInputLabels.getter()
{
  v1 = [v0 isSelected];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D00;
  if (v1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  *(v2 + 32) = sub_21DBF516C();
  *(v2 + 40) = v3;
  return v2;
}

void sub_21D8FEAE4(void *a1, char a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v11[4] = sub_21D8FFD20;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D0D74FC;
  v11[3] = &block_descriptor_33_1;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = a1;

  [v6 animateWithDuration:v8 animations:0.3];
  _Block_release(v8);
}

void sub_21D8FEBF4(uint64_t a1, char a2, void *a3)
{
  v4 = (a2 & 1) == 0;
  v5 = (a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = a3;
  v8 = a3;
  sub_21D637AC4(v6, v7);
  sub_21D637AE8(v6, v7);
  v9[0] = v6;
  v9[1] = v7;
  sub_21D8FD0A0(v9);
  sub_21D637AE8(v6, v7);
}

id sub_21D8FECF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v7 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
    swift_beginAccess();
    v9 = *(a2 + v7);
    if (v9)
    {
      v10 = *(a2 + v7);
    }

    else
    {
      v10 = [objc_opt_self() configurationWithTextStyle_];
      v9 = 0;
    }

    v11 = v9;
    v12 = sub_21D8FEDE8(a3);

    swift_beginAccess();
    v13 = *v4;
    *v4 = v12;
    v5 = v12;

    v3 = 0;
  }

  v14 = v3;
  return v5;
}

id sub_21D8FEDE8(uint64_t a1)
{
  swift_getObjectType();
  v3 = [swift_getObjCClassFromMetadata() configurationWithScale_];
  v4 = [v1 configurationByApplyingConfiguration_];

  return v4;
}

id sub_21D8FEE58()
{
  swift_getObjectType();
  v1 = [swift_getObjCClassFromMetadata() configurationPreferringMulticolor];
  v2 = [v0 configurationByApplyingConfiguration_];

  return v2;
}

void sub_21D8FEEC0()
{
  sub_21D637AE8(*(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon), *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon + 8));
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage);
}

id TTRIReminderCompletionButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s15RemindersUICore28TTRIReminderCompletionButtonC4IconO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1 >> 62;
  if (v6)
  {
    if (v6 == 1)
    {
      if (v4 >> 62 == 1)
      {
        sub_21D637AFC(*a1, v3);
        sub_21D637AFC(v4, v5);
        return ((v4 ^ v2) & 1) == 0;
      }
    }

    else if (v4 >> 62 == 2 && v4 == 0x8000000000000000 && v5 == 0)
    {
      sub_21D637AFC(*a1, v3);
      sub_21D637AFC(0x8000000000000000, 0);
      return 1;
    }

    goto LABEL_18;
  }

  if (v4 >> 62)
  {
    v10 = v3;
    goto LABEL_18;
  }

  if ((v4 ^ v2))
  {
    sub_21D637AD8(*a1, v3);
LABEL_18:
    v11 = v4;
    v12 = v5;
LABEL_19:
    sub_21D637AD8(v11, v12);
    sub_21D637AFC(v2, v3);
LABEL_20:
    sub_21D637AFC(v4, v5);
    return 0;
  }

  if (v3)
  {
    if (!v5)
    {
      sub_21D637AD8(*a2, 0);
      sub_21D637AD8(v2, v3);
      v11 = v4;
      v12 = 0;
      goto LABEL_19;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0);
    sub_21D637AD8(v4, v5);
    sub_21D637AD8(v2, v3);
    sub_21D637AD8(v2, v3);
    sub_21D637AD8(v4, v5);
    v13 = sub_21DBFB63C();
    sub_21D637AFC(v2, v3);
    sub_21D637AFC(v4, v5);
    sub_21D637AFC(v2, v3);
    sub_21D637AFC(v4, v5);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_21D637AD8(*a2, *(a2 + 8));
    sub_21D637AD8(v2, 0);
    sub_21D637AD8(v2, 0);
    sub_21D637AD8(v4, v5);
    sub_21D637AFC(v2, 0);
    sub_21D637AFC(v4, v5);
    if (v5)
    {
      goto LABEL_20;
    }
  }

  return 1;
}

void _s15RemindersUICore28TTRIReminderCompletionButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon) = xmmword_21DC30F50;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage) = 0;
  if (qword_27CE56E58 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE63BB0);
  v2 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v2);
  sub_21DAEAB00("init(coder:) has not been implemented", 37, 2);
  __break(1u);
}

unint64_t sub_21D8FF2A8()
{
  result = qword_27CE63BF8;
  if (!qword_27CE63BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63BF8);
  }

  return result;
}

unint64_t sub_21D8FF300()
{
  result = qword_27CE63C00;
  if (!qword_27CE63C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63C00);
  }

  return result;
}

unint64_t *assignWithCopy for TTRIReminderCompletionButton.Icon(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D637AD8(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_21D637AFC(v5, v6);
  return a1;
}

unint64_t *assignWithTake for TTRIReminderCompletionButton.Icon(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_21D637AFC(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderCompletionButton.Icon(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIReminderCompletionButton.Icon(uint64_t result, int a2, int a3)
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
      *result = 2 * -a2;
      *(result + 8) = 0;
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

uint64_t sub_21D8FF4A8(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 1 | (2 * *(a1 + 8))) + 2;
  }
}

void *sub_21D8FF4D8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 1 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 1;
  }

  return result;
}

uint64_t sub_21D8FF528(void *a1)
{
  v2 = sub_21DBF851C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65BF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_21DBF862C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - v14);
  type metadata accessor for TTRIReminderCompletionButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v17 = result;
    v38 = v3;
    v18 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
    swift_beginAccess();
    v19 = *&v17[v18];
    if (v19 >> 1 == 0xFFFFFFFF)
    {
      return 0;
    }

    else
    {
      if (v19 >> 62 || (v19 & 1) == 0)
      {
        v26 = objc_allocWithZone(MEMORY[0x277D75B90]);
        v27 = a1;
        *v15 = [v26 initWithView_];
        (*(v10 + 104))(v15, *MEMORY[0x277D74B08], v9);
        [v17 frame];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [v17 frame];
        Height = CGRectGetHeight(v39);
        *v5 = v29;
        *(v5 + 1) = v31;
        *(v5 + 2) = v33;
        *(v5 + 3) = v35;
        *(v5 + 4) = Height * 0.5;
        v37 = v38;
        (*(v38 + 104))(v5, *MEMORY[0x277D74A60], v2);
        sub_21D0D8CF0(0, &qword_27CE63C18);
        (*(v10 + 16))(v12, v15, v9);
        (*(v37 + 16))(v8, v5, v2);
        (*(v37 + 56))(v8, 0, 1, v2);
        v25 = sub_21DBFAF6C();

        (*(v37 + 8))(v5, v2);
      }

      else
      {
        v20 = objc_allocWithZone(MEMORY[0x277D758D8]);
        v21 = a1;
        v22 = [v20 init];
        v23 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v17 parameters:v22];

        *v15 = v23;
        (*(v10 + 104))(v15, *MEMORY[0x277D74B00], v9);
        sub_21D0D8CF0(0, &qword_27CE63C18);
        (*(v10 + 16))(v12, v15, v9);
        (*(v38 + 56))(v8, 1, 1, v2);
        v24 = v23;
        v25 = sub_21DBFAF6C();
      }

      (*(v10 + 8))(v15, v9);
      return v25;
    }
  }

  return result;
}

void sub_21D8FF9DC()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  v2 = swift_beginAccess();
  v3 = *v1;
  if (*v1 >> 62)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*v1 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
  }

  if (!v4)
  {
    v5 = v1[1];
    MEMORY[0x28223BE20](v2);
    v12[2] = v0;
    v13 = v6;
    v14 = v5;
    isEscapingClosureAtFileLocation = objc_opt_self();
    if (v3)
    {
      v0 = swift_allocObject();
      v0[2] = sub_21D8FFC90;
      v0[3] = v12;
      v19 = sub_21D0E6070;
      v20 = v0;
      aBlock = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v17 = sub_21D0E6204;
      v18 = &block_descriptor_26_1;
      v8 = _Block_copy(&aBlock);
      sub_21D637AC4(v3, v5);

      [isEscapingClosureAtFileLocation performWithoutAnimation_];
      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      sub_21D637AE8(v3, v5);
      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v5;
    v19 = sub_21D8FFCA0;
    v20 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_21D0D74FC;
    v18 = &block_descriptor_112;
    v10 = _Block_copy(&aBlock);
    sub_21D637AC4(v3, v5);
    sub_21D637AC4(v3, v5);
    v11 = v0;

    [isEscapingClosureAtFileLocation animateWithDuration:v10 animations:0.3];
    _Block_release(v10);
    sub_21D637AE8(v3, v5);
  }
}

unint64_t sub_21D8FFCB0()
{
  result = qword_27CE63C10;
  if (!qword_27CE63C10)
  {
    sub_21DBF9CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63C10);
  }

  return result;
}

id static CNContact.unknownContact(displayName:firstName:lastName:emailAddress:phoneNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  if (a8)
  {
    sub_21DBFA16C();
    v13 = sub_21DBFA12C();
    v14 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v15 = sub_21DBFA12C();

    v16 = [v14 initWithLabel:v15 value:v13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC09CF0;
    *(v17 + 32) = v16;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0);
    v19 = sub_21DBFA5DC();

    [v12 setEmailAddresses_];
  }

  if (a10)
  {
    v20 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v21 = sub_21DBFA12C();
    v22 = [v20 initWithStringValue_];

    sub_21DBFA16C();
    v23 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v24 = v22;
    v25 = sub_21DBFA12C();

    v26 = [v23 initWithLabel:v25 value:v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21DC09CF0;
    *(v27 + 32) = v26;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0);
    v29 = sub_21DBFA5DC();

    [v12 setPhoneNumbers_];
  }

  if (a4 || a2)
  {
    v30 = sub_21DBFA12C();
    [v12 setGivenName_];
  }

  if (a6)
  {
    v31 = sub_21DBFA12C();
    [v12 setFamilyName_];
  }

  return v12;
}

uint64_t CNContact.urlForRevealingInContactsApp.getter()
{
  sub_21DBFBEEC();

  strcpy(v6, "addressbook://");
  HIBYTE(v6[1]) = -18;
  v1 = [v0 identifier];
  v2 = sub_21DBFA16C();
  v4 = v3;

  MEMORY[0x223D42AA0](v2, v4);

  sub_21DBF54BC();
}

id _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(void *a1)
{
  v24 = a1[1];
  v25 = a1[3];
  v1 = a1[5];
  v2 = a1[7];
  v3 = a1[9];
  v4 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v5 = 0x277CBD000;
  v6 = 0x1FAE38000;
  if (v2)
  {
    v7 = *MEMORY[0x277CBD940];
    v8 = sub_21DBFA12C();
    v9 = [objc_allocWithZone(MEMORY[0x277CBDB20]) initWithLabel:v7 value:v8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC09CF0;
    *(v10 + 32) = v9;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0);
    v12 = sub_21DBFA5DC();

    [v4 setEmailAddresses_];

    v6 = 0x1FAE38000uLL;
    v5 = 0x277CBD000uLL;
  }

  if (v3)
  {
    v13 = v6;
    v14 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v15 = sub_21DBFA12C();
    v16 = [v14 initWithStringValue_];

    v17 = [objc_allocWithZone(*(v5 + 2848)) (v13 + 3576)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21DC09CF0;
    *(v18 + 32) = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0);
    v20 = sub_21DBFA5DC();

    [v4 setPhoneNumbers_];
  }

  if (v25 || v24)
  {
    v21 = sub_21DBFA12C();
    [v4 setGivenName_];
  }

  if (v1)
  {
    v22 = sub_21DBFA12C();
    [v4 setFamilyName_];
  }

  return v4;
}

uint64_t sub_21D9003F8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76810] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D76448] object:0];

  return v0;
}

uint64_t sub_21D9004B4()
{
  sub_21D9003F8();

  return swift_deallocClassInstance();
}

id sub_21D9004E8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_21D181DFC(0), (v4 & 1) != 0))
  {
    v9 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    return v9;
  }

  else
  {
    swift_endAccess();
    v6 = [objc_opt_self() preferredFontForTextStyle_];
    swift_beginAccess();
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_21D476BC0(v7, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v10;
    swift_endAccess();
    return v7;
  }
}

id sub_21D900614(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16) || (v5 = sub_21D181DFC(a1), (v6 & 1) == 0))
  {
    swift_endAccess();
    if (a1 <= 4u)
    {
      if (a1 <= 1u)
      {
        if (a1)
        {
          v16 = *MEMORY[0x277D76918];
          v23 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
          if (v23)
          {
            v24 = v23;
            v19 = [v23 fontDescriptorWithDesign_];

            if (v19)
            {
              v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
              if (v20)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_48;
        }

        v11 = [objc_opt_self() preferredFontForTextStyle_];
      }

      else
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
            v8 = MEMORY[0x277D76918];
LABEL_23:
            v9 = *v8;
            v10 = MEMORY[0x277D74420];
            goto LABEL_24;
          }

          v16 = *MEMORY[0x277D76968];
          v17 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 fontDescriptorWithDesign_];

            if (v19)
            {
              v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
              if (v20)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
            v19 = 0;
          }

LABEL_48:
          v20 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_49:
          v11 = v20;

          goto LABEL_50;
        }

        v12 = objc_opt_self();
        result = [v12 _preferredFontForTextStyle_variant_];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;
        v13 = [result fontDescriptor];
        v14 = [v13 fontDescriptorWithDesign_];

        if (v14)
        {
          v15 = [v12 fontWithDescriptor:v14 size:0.0];

          v11 = v15;
        }
      }

LABEL_50:
      swift_beginAccess();
      v27 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      sub_21D476BC0(v27, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 16) = v30;
      swift_endAccess();
      return v27;
    }

    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v8 = MEMORY[0x277D76968];
        goto LABEL_23;
      }

      v16 = *MEMORY[0x277D769D0];
      v25 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
      if (v25)
      {
        v26 = v25;
        v19 = [v25 fontDescriptorWithDesign_];

        if (v19)
        {
          v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
          if (v20)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      if (a1 == 7)
      {
        v8 = MEMORY[0x277D769D0];
        goto LABEL_23;
      }

      if (a1 == 8)
      {
        v9 = *MEMORY[0x277D769D0];
        v10 = MEMORY[0x277D74410];
LABEL_24:
        v11 = sub_21D10FA9C(v9, *v10, 0, 0);
        goto LABEL_50;
      }

      v16 = *MEMORY[0x277D76988];
      v21 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:0];
      if (v21)
      {
        v22 = v21;
        v19 = [v21 fontDescriptorWithDesign_];

        if (v19)
        {
          v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
          if (v20)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    goto LABEL_48;
  }

  v29 = *(*(v4 + 56) + 8 * v5);
  swift_endAccess();

  return v29;
}

uint64_t sub_21D900BB4()
{
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63C20);
    sub_21DBFC1EC();
    *(v0 + 16) = v2;
  }

  return swift_endAccess();
}

uint64_t sub_21D900C50()
{
  v0 = sub_21DBF4D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF4D1C();

  sub_21D900BB4();

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_21D900D74()
{
  result = qword_280D1AE30;
  if (!qword_280D1AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D1AE30);
  }

  return result;
}

uint64_t UIScreen.landscapeHorizontalSizeClass.getter()
{
  [objc_msgSend(v0 fixedCoordinateSpace)];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  swift_unknownObjectRelease();
  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  v9.n128_f64[0] = CGRectGetHeight(v12);

  return MEMORY[0x2821DEB40](v9);
}

uint64_t UIDragItem.localObject<A>(ofType:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_21D90105C();
  if (*(v6 + 16) && (v7 = sub_21D17EA0C(a1), (v8 & 1) != 0))
  {
    sub_21D0CEB98(*(v6 + 56) + 32 * v7, v11);
  }

  else
  {

    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

void UIDragItem.setLocalObject(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21D181CE0(a2, v11);
  sub_21D0DB414(a1, &v9);
  v8 = sub_21D90105C();
  if (v10)
  {
    sub_21D0CF2E8(&v9, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D478860(v7, v11, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_21D1A8418(&v9);
    sub_21D874094(v11, v7);
    sub_21D1A8418(v7);
  }

  sub_21D181D3C(v11);
  v6 = sub_21DBF9E5C();

  [v3 setLocalObject_];
}

uint64_t sub_21D90105C()
{
  if ([v0 localObject])
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63C28);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_21D1A8418(v5);
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_21D90111C(uint64_t a1, int a2)
{
  v3 = v2;
  v19 = a2;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CE468();
  *v11 = sub_21DBFB12C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_21DBF9DAC();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    (*(v6 + 16))(&v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
    *(v15 + v14 + v7) = v19 & 1;
    *(v15 + ((v14 + v7) & 0xFFFFFFFFFFFFFFF8) + 8) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7C0);
    swift_allocObject();
    v16 = v3;
    v20 = sub_21DBF911C();
    sub_21D90201C();
    v17 = sub_21DBF91CC();

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D9013B8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63C30);
  v1 = __swift_project_value_buffer(v0, qword_27CE63C30);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D901480(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = v11;
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v47 = v15;
  v16 = objc_allocWithZone(MEMORY[0x277CCAB70]);

  v17 = sub_21DBF53FC();
  v48 = [v16 initWithURL_];

  if (qword_27CE56E60 != -1)
  {
    swift_once();
  }

  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_27CE63C30);
  v19 = *(v10 + 16);
  v19(v14, a3, v9);
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAE9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = a3;
    v23 = v22;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v23 = 136315394;
    v45 = v19;
    v24 = a4;
    if (a4)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (a4)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_21D0CDFB4(v25, v26, aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = sub_21DBF533C();
    v30 = v29;
    (*(v10 + 8))(v14, v9);
    v31 = sub_21D0CDFB4(v28, v30, aBlock);

    *(v23 + 14) = v31;
    a4 = v24;
    v19 = v45;
    _os_log_impl(&dword_21D0C9000, v20, v21, "URL metadata fetch setting isNonAppInitiated=%s {url: %s}", v23, 0x16u);
    v32 = v44;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v32, -1, -1);
    v33 = v23;
    a3 = v46;
    MEMORY[0x223D46520](v33, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v34 = a4 & 1;
  v35 = v48;
  [v48 _setNonAppInitiated_];
  v36 = v50;
  v19(v50, a3, v9);
  v37 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v10 + 32))(v39 + v37, v36, v9);
  v40 = (v39 + v38);
  v41 = v47;
  *v40 = sub_21D22D130;
  v40[1] = v41;
  aBlock[4] = sub_21D901F6C;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D55C8BC;
  aBlock[3] = &block_descriptor_113;
  v42 = _Block_copy(aBlock);
  v43 = v35;

  [v51 startFetchingMetadataForRequest:v43 completionHandler:v42];
  _Block_release(v42);
}

void sub_21D901900(void *a1, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  if (a2)
  {
    v17 = a2;
    if (qword_27CE56E60 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE63C30);
    (*(v11 + 16))(v16, a3, v10);
    v19 = a2;
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = a4;
      v60 = v57;
      *v22 = 136315394;
      swift_getErrorValue();
      v23 = sub_21DBFC74C();
      v25 = sub_21D0CDFB4(v23, v24, &v60);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_21DBF533C();
      v28 = v27;
      (*(v11 + 8))(v16, v10);
      v29 = sub_21D0CDFB4(v26, v28, &v60);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_21D0C9000, v20, v21, "URL metadata fetch failed {error: %s, url: %s}", v22, 0x16u);
      v30 = v57;
      swift_arrayDestroy();
      a4 = v58;
      MEMORY[0x223D46520](v30, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v46 = a2;
    (a4)(a2, 1);
  }

  else
  {
    v59 = a5;
    if (a1)
    {
      v31 = qword_27CE56E60;
      v32 = a1;
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = sub_21DBF84BC();
      __swift_project_value_buffer(v33, qword_27CE63C30);
      v34 = v32;
      v35 = sub_21DBF84AC();
      v36 = sub_21DBFAE9C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v60 = v38;
        *v37 = 136315138;
        v39 = [v34 description];
        v40 = sub_21DBFA16C();
        v41 = a4;
        v43 = v42;

        v44 = sub_21D0CDFB4(v40, v43, &v60);
        a4 = v41;

        *(v37 + 4) = v44;
        _os_log_impl(&dword_21D0C9000, v35, v36, "URL metadata fetch finished {metadata %s}", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x223D46520](v38, -1, -1);
        MEMORY[0x223D46520](v37, -1, -1);
      }

      v58 = v34;
      (a4)(a1, 0);

      v45 = v58;
    }

    else
    {
      if (qword_27CE56E60 != -1)
      {
        swift_once();
      }

      v47 = sub_21DBF84BC();
      __swift_project_value_buffer(v47, qword_27CE63C30);
      (*(v11 + 16))(v13, a3, v10);
      v48 = sub_21DBF84AC();
      v49 = sub_21DBFAECC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v60 = v51;
        *v50 = 136315138;
        v52 = sub_21DBF533C();
        v54 = v53;
        (*(v11 + 8))(v13, v10);
        v55 = sub_21D0CDFB4(v52, v54, &v60);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_21D0C9000, v48, v49, "URL metadata fetch failed with no response or error {url: %s}", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x223D46520](v51, -1, -1);
        MEMORY[0x223D46520](v50, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v13, v10);
      }

      v56 = [objc_opt_self() unexpectedError];
      (a4)();
    }
  }
}

void sub_21D901F6C(void *a1, void *a2)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_21D901900(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_21D90201C()
{
  result = qword_27CE5A850;
  if (!qword_27CE5A850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A850);
  }

  return result;
}

uint64_t (*sub_21D902080(uint64_t *a1))()
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
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D2424CC;
}

void *TTRRemindersListEditableSectionNameInteractor.__allocating_init(store:undoManager:committer:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[4] = a1;
  v6[5] = a2;
  sub_21D0D15E0(a3, (v6 + 6));
  return v6;
}

void *TTRRemindersListEditableSectionNameInteractor.init(store:undoManager:committer:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = a1;
  v3[5] = a2;
  sub_21D0D15E0(a3, (v3 + 6));
  return v3;
}

void sub_21D9021D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  v7 = a3;
  v8 = v6;
  TTRSection.init(with:store:)(v7, v8, &v31);
  v9 = v31;
  if (v32 > 1u)
  {
    if (v32 != 2)
    {
      return;
    }

    sub_21D0D32E4(v3 + 48, &v31);
    v18 = v33;
    v29 = v34;
    v30 = __swift_project_boxed_opaque_existential_1(&v31, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21DC09CF0;
    *(v19 + 32) = v9;
    v20 = *(v3 + 40);
    v21 = type metadata accessor for TTRTemplateSectionEditor();
    MEMORY[0x28223BE20](v21);
    v27 = a1;
    v28 = a2;
    sub_21D1B1ED4(v9, 2);
    v15 = v20;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v21, v19, v8, v20, sub_21D7CF698, v26, 0, 0, v18, v21, v29, &protocol witness table for TTRTemplateSectionEditor);
    v16 = v9;
    v17 = 2;
  }

  else
  {
    v10 = v3 + 48;
    if (v32)
    {
      sub_21D0D32E4(v10, &v31);
      v22 = v33;
      v29 = v34;
      v30 = __swift_project_boxed_opaque_existential_1(&v31, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21DC09CF0;
      *(v23 + 32) = v9;
      v24 = *(v3 + 40);
      v25 = type metadata accessor for TTRSmartListSectionEditor();
      MEMORY[0x28223BE20](v25);
      v27 = a1;
      v28 = a2;
      sub_21D1B1ED4(v9, 1);
      v15 = v24;
      TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v25, v23, v8, v24, sub_21D902584, v26, 0, 0, v22, v25, v29, &protocol witness table for TTRSmartListSectionEditor);
      v16 = v9;
      v17 = 1;
    }

    else
    {
      sub_21D0D32E4(v10, &v31);
      v11 = v33;
      v29 = v34;
      v30 = __swift_project_boxed_opaque_existential_1(&v31, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21DC09CF0;
      *(v12 + 32) = v9;
      v13 = *(v3 + 40);
      v14 = type metadata accessor for TTRListSectionEditor();
      MEMORY[0x28223BE20](v14);
      v27 = a1;
      v28 = a2;
      sub_21D1B1ED4(v9, 0);
      v15 = v13;
      TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v14, v12, v8, v13, sub_21D18387C, v26, 0, 0, v11, v14, v29, &protocol witness table for TTRListSectionEditor);
      v16 = v9;
      v17 = 0;
    }
  }

  sub_21D157864(v16, v17);

  __swift_destroy_boxed_opaque_existential_0(&v31);
}

uint64_t TTRRemindersListEditableSectionNameInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  return v0;
}

uint64_t TTRRemindersListEditableSectionNameInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t (*sub_21D902638(uint64_t *a1))()
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
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24BEC0;
}

uint64_t sub_21D902800()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63C48);
  v1 = __swift_project_value_buffer(v0, qword_27CE63C48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSECreateRemindersModelChangeDetails.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRSECreateRemindersInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRSECreateRemindersInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

void *TTRSECreateRemindersInteractor.__allocating_init(store:undoManager:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[6] = 0;
  v4[7] = 0;
  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void *TTRSECreateRemindersInteractor.init(store:undoManager:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[6] = 0;
  v2[7] = 0;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

uint64_t TTRSECreateRemindersInteractor.start(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21DBFA89C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21DBFA84C();

  v8 = sub_21DBFA83C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = a1;
  sub_21D1B5178(0, 0, v6, &unk_21DC312A0, v9);
}

uint64_t sub_21D902C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_21DBFA84C();
  v5[12] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_21D902CF0, v7, v6);
}

uint64_t sub_21D902CF0()
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v1 = sub_21DA52758(1, 2, 480.0);
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_21D902DF8;
  v3 = v0[11];

  return sub_21D9033E0(v3, v1, 2, sub_21D903274, 0);
}

uint64_t sub_21D902DF8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D902F14;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D38F86C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D902F14()
{
  v26 = v0;
  v1 = v0[15];

  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE63C48);
  v4 = v2;
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRSECreateRemindersInteractor: failed to start {error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v12 = v0[17];
  v0[8] = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  if (swift_dynamicCast())
  {
    v14 = 0;
  }

  else
  {
    v14 = v0[17];
    v15 = v14;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v0[17];
  if (Strong)
  {
    v18 = *(v0[10] + 24);
    ObjectType = swift_getObjectType();
    v25 = v14;
    v20 = *(v18 + 24);
    v21 = v14;
    v20(&v25, ObjectType, v18);
    swift_unknownObjectRelease();

    v22 = v25;
  }

  else
  {

    v22 = v17;
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_21D9031B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D902C58(a1, v4, v5, v7, v6);
}

void sub_21D903274(void *a1)
{
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v6 = qword_280D1AA18;
  sub_21DA5392C(a1, 1);
  v7 = *(v6 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v7)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v8 = sub_21DBF55BC();
    (*(v3 + 8))(v5, v2);
    v9 = sub_21DBFA12C();
    [v7 setValue:v8 forKey:v9];
  }
}

uint64_t sub_21D9033E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 368) = a5;
  *(v6 + 376) = v5;
  *(v6 + 592) = a3;
  *(v6 + 352) = a2;
  *(v6 + 360) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  *(v6 + 384) = swift_task_alloc();
  v7 = sub_21DBF54CC();
  *(v6 + 392) = v7;
  *(v6 + 400) = *(v7 - 8);
  *(v6 + 408) = swift_task_alloc();
  v8 = sub_21DBF793C();
  *(v6 + 416) = v8;
  *(v6 + 424) = *(v8 - 8);
  *(v6 + 432) = swift_task_alloc();
  v9 = sub_21DBF604C();
  *(v6 + 440) = v9;
  *(v6 + 448) = *(v9 - 8);
  *(v6 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = type metadata accessor for TTRExtensionContextExtractorResult();
  *(v6 + 496) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v6 + 504) = v10;
  *(v6 + 512) = sub_21DBFA84C();
  *(v6 + 520) = sub_21DBFA83C();
  v11 = swift_task_alloc();
  *(v6 + 528) = v11;
  *v11 = v6;
  v11[1] = sub_21D903688;

  return MEMORY[0x2821A7870](v10);
}

uint64_t sub_21D903688()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = sub_21DBFA7CC();
  if (v0)
  {
    v5 = sub_21D904DFC;
  }

  else
  {
    *(v2 + 544) = v3;
    *(v2 + 552) = v4;
    v5 = sub_21D9037F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D9037F0()
{
  v21 = v0;
  v1 = *(v0 + 592);
  if (v1 == 2)
  {
    v2 = *(v0 + 480);
    sub_21D0D3954(*(v0 + 504) + *(*(v0 + 488) + 60), v2, &qword_27CE5EDE0);
    v3 = type metadata accessor for TTRSERecipeCard();
    LOBYTE(v1) = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
    sub_21D0CF7E0(v2, &qword_27CE5EDE0);
  }

  v4 = v1 & 1;
  *(v0 + 593) = v1 & 1;
  v5 = *(v0 + 376);
  v6 = *(v0 + 352);
  TTRExtensionContextExtractorResult.containsImages.getter();
  v8 = v7 & 1;
  type metadata accessor for TTRQuickEntryReminderCreationInteractorCapability();
  v9 = *(v5 + 32);
  *(v0 + 560) = v9;
  v16 = v6;
  v17 = v8;
  v18 = v4;
  v19 = 1;
  v20 = 1;
  v10 = v6;
  v11 = static TTRQuickEntryReminderCreationInteractorCapability.fetchInitialListForReminderCreation(store:options:)(v9, &v16);
  *(v0 + 568) = v11;
  *(v0 + 328) = v11;
  v12 = swift_task_alloc();
  *(v0 + 576) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E080);
  v14 = sub_21D0D0F1C(&qword_27CE5E088, &qword_27CE5E080);
  *v12 = v0;
  v12[1] = sub_21D9039DC;

  return MEMORY[0x2821A7968](v0 + 96, v13, v14);
}

uint64_t sub_21D9039DC()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_21D904EDC;
  }

  else
  {
    v5 = sub_21D903AF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D903AF8()
{
  v1 = *(v0 + 593);

  v2 = *(v0 + 96);
  v3 = *(v0 + 112);
  v4 = *(v0 + 128);
  v148 = [v3 isSuggestedRemindersSupportedInCurrentAppVersion];
  v151 = v2;
  v5 = [v2 store];
  v6 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v7 = [v3 account];
  v8 = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v164 = v9;
  if (v1 == 1)
  {
    v10 = v6;
    sub_21DBF8E0C();
    v11 = [v3 groceryContext];
    if (!v11 || (v174 = v11, v12 = sub_21D0D8CF0(0, &unk_280D0C250), v13 = sub_21D0FB9CC(v12, &protocol witness table for REMListGroceryContext), v174, (v13 & 1) == 0))
    {
      v14 = sub_21D9055B8(v7, v164, v10);
      if (v14)
      {
        v15 = v14;
        v158 = 1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = v6;
    sub_21DBF8E0C();
  }

  v15 = [v6 updateList_];
  v158 = 0;
LABEL_11:
  v17 = *(v0 + 472);
  v173 = v8;
  v165 = *(v0 + 488);
  v167 = v7;
  sub_21D0D3954(*(v0 + 504) + *(v165 + 60), v17, &qword_27CE5EDE0);
  v159 = type metadata accessor for TTRSERecipeCard();
  v157 = *(*(v159 - 8) + 48);
  v150 = v3;
  if (v157(v17, 1) == 1)
  {
    v18 = *(v0 + 504);
    sub_21D0CF7E0(*(v0 + 472), &qword_27CE5EDE0);
    v19 = sub_21DBFA12C();
    v20 = [v6 addReminderWithTitle:v19 toListChangeItem:v15];

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_21D0D3954(v0 + 136, v0 + 176, &unk_27CE60D80);
    type metadata accessor for TTRReminderEditor();
    v21 = swift_allocObject();
    *(v21 + 72) = 0;
    *(v21 + 16) = v20;
    sub_21D0D3954(v0 + 176, v21 + 24, &unk_27CE60D80);
    *(v21 + 64) = 0;
    v22 = v20;
    v23 = [v22 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v0 + 136, &unk_27CE60D80);
    sub_21D0CF7E0(v0 + 176, &unk_27CE60D80);
    *(v21 + 72) = v23;
    TTRReminderEditor.apply(_:)(v18);
    v24 = [v22 0x1FB1036F8];
    v25 = v22;
    MEMORY[0x223D42D80](v24);
    if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    v149 = 0;
    v170 = v173;
    v155 = v24;
  }

  else
  {
    v26 = *(v0 + 472);
    v27 = *(v26 + 8);
    sub_21DBF8E0C();
    sub_21D90BAE8(v26, type metadata accessor for TTRSERecipeCard);
    v28 = *(v27 + 16);
    v149 = v27;
    if (v28)
    {
      v29 = v27 + 40;
      do
      {
        sub_21DBF8E0C();
        v30 = sub_21DBFA12C();

        v31 = [v6 addReminderWithTitle:v30 toListChangeItem:v15];

        v32 = v31;
        MEMORY[0x223D42D80]();
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v29 += 24;
        --v28;
      }

      while (v28);
      v33 = v173;
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v170 = v33;
    v155 = 0;
  }

  v34 = *(v0 + 496);
  v35 = *(v0 + 368);
  v36 = *(v0 + 376);
  v154 = *(v0 + 560);
  v37 = *(v0 + 360);
  sub_21D575ED0(*(v0 + 504), v34);
  v153 = *(v36 + 40);
  *(v0 + 16) = v37;
  *(v0 + 24) = v35;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  v172 = v0;
  type metadata accessor for ActionContext();
  v38 = swift_allocObject();
  swift_weakInit();
  v38[5] = 0;
  *(v38 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID) = MEMORY[0x277D84F98];
  v39 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList;
  *(v38 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList) = 0;
  v40 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_reminderIDWithExtractorResultApplied;
  *(v38 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_reminderIDWithExtractorResultApplied) = 0;
  swift_weakAssign();
  sub_21D575ED0(v34, v38 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult);
  v38[7] = v164;
  v38[8] = v15;
  v38[6] = v6;
  v41 = (v38 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext);
  *v41 = v167;
  v41[1] = v164;
  v41[2] = v6;
  v152 = *(v38 + v40);
  v169 = v38;
  *(v38 + v40) = v155;
  v42 = v6;
  v43 = v15;
  v44 = v167;
  swift_bridgeObjectRetain_n();
  v162 = v42;
  sub_21DBF8E0C();
  v163 = v43;
  v161 = v44;
  v45 = v154;
  v46 = v153;
  sub_21D0D0E78(v37);
  sub_21DBF8E0C();

  v47 = v155;

  if (v158)
  {
    v48 = *(v38 + v39);
    *(v38 + v39) = v163;
    v49 = v163;
  }

  v50 = *(v172 + 464);
  sub_21D0D3954(*(v172 + 496) + *(v165 + 60), v50, &qword_27CE5EDE0);
  v51 = (v157)(v50, 1, v159);
  sub_21D0CF7E0(v50, &qword_27CE5EDE0);
  v156 = v47;
  if (v51 != 1)
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v74 = sub_21DBF84BC();
    __swift_project_value_buffer(v74, qword_27CE63C48);
    v75 = sub_21DBF84AC();
    v76 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_47;
    }

    v77 = swift_slowAlloc();
    *v77 = 0;
    v78 = "TTRSECreateRemindersInteractor: RecipeCard with ingredients detected don't perform extraction";
    goto LABEL_46;
  }

  v53 = *(v172 + 448);
  v52 = *(v172 + 456);
  v54 = *(v172 + 440);
  (*(v53 + 104))(v52, *MEMORY[0x277D44DE0], v54);
  v55 = sub_21DBF603C();
  (*(v53 + 8))(v52, v54);
  if ((v55 & 1) == 0 || (v57 = *(v172 + 424), v56 = *(v172 + 432), v58 = *(v172 + 416), sub_21DBF80BC(), *(v172 + 336) = sub_21DBF80AC(), (*(v57 + 104))(v56, *MEMORY[0x277D45640], v58), v59 = sub_21DBF80DC(), (*(v57 + 8))(v56, v58), , (v59 & v148 & 1) == 0))
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v79 = sub_21DBF84BC();
    __swift_project_value_buffer(v79, qword_27CE63C48);
    v75 = sub_21DBF84AC();
    v76 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_47;
    }

    v77 = swift_slowAlloc();
    *v77 = 0;
    v78 = "TTRSECreateRemindersInteractor: Skipping Extraction because not on Apple Intelligence Supported Device";
LABEL_46:
    _os_log_impl(&dword_21D0C9000, v75, v76, v78, v77, 2u);
    MEMORY[0x223D46520](v77, -1, -1);
LABEL_47:

    v71 = v38;
    goto LABEL_48;
  }

  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v60 = sub_21DBF84BC();
  __swift_project_value_buffer(v60, qword_27CE63C48);
  v61 = sub_21DBF84AC();
  v62 = sub_21DBFAEDC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_21D0C9000, v61, v62, "TTRSECreateRemindersInteractor: Attempting Extraction on Apple Intelligence supported device", v63, 2u);
    MEMORY[0x223D46520](v63, -1, -1);
  }

  v64 = *(v172 + 496);
  v65 = *(v172 + 392);
  v66 = *(v172 + 400);
  v67 = *(v172 + 384);

  *(v172 + 344) = *(v64 + 24);
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0);
  sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0);
  sub_21DBFA48C();

  if ((*(v66 + 48))(v67, 1, v65) != 1)
  {
    v129 = *(v172 + 400);
    v128 = *(v172 + 408);
    v130 = *(v172 + 392);
    (*(v129 + 32))(v128, *(v172 + 384), v130);
    v131 = objc_allocWithZone(MEMORY[0x277D44788]);
    v132 = sub_21DBF53FC();
    v73 = [v131 initWithInputURL_];

    (*(v129 + 8))(v128, v130);
    v71 = v38;
    if (v73)
    {
      goto LABEL_81;
    }

LABEL_48:
    v71[3] = 0;
    v71[4] = 0;
    goto LABEL_49;
  }

  v69 = *(v172 + 488);
  v68 = *(v172 + 496);
  sub_21D0CF7E0(*(v172 + 384), &qword_27CE5EA20);
  v70 = *(v68 + *(v69 + 56));
  v71 = v38;
  if (!v70)
  {
    goto LABEL_48;
  }

  v72 = [v70 string];
  if (!v72)
  {
    sub_21DBFA16C();
    v72 = sub_21DBFA12C();
  }

  v73 = [objc_allocWithZone(MEMORY[0x277D44788]) initWithInputText_];

  if (!v73)
  {
    goto LABEL_48;
  }

LABEL_81:
  v133 = *(v172 + 560);
  type metadata accessor for GenerativeSuggestionContext();
  v134 = swift_allocObject();
  *(v134 + 16) = v73;
  *(v134 + 24) = v133;
  v71[3] = v134;
  v71[4] = &off_282EDB310;
  v135 = v133;
LABEL_49:
  v80 = *(v172 + 560);
  v81 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for TTRReminderDetailPendingMoveInteractorCapability();
  v82 = swift_allocObject();
  *(v172 + 240) = &type metadata for TTRReminderDetailPendingMoveDynamicItemProvider;
  *(v172 + 248) = &protocol witness table for TTRReminderDetailPendingMoveDynamicItemProvider;
  *(v172 + 216) = sub_21D90BB48;
  *(v172 + 224) = v81;
  *(v82 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v82 + 160) = 0;
  v83 = v80;
  *(v82 + 32) = v80;
  *(v82 + 40) = v46;
  v84 = *(v172 + 16);
  v85 = *(v172 + 24);
  *(v82 + 48) = v84;
  *(v82 + 56) = v85;
  v86 = *(v172 + 32);
  v87 = *(v172 + 40);
  v88 = *(v172 + 48);
  v89 = *(v172 + 56);
  v90 = v46;
  v91 = *(v172 + 64);
  *(v82 + 112) = v86;
  *(v82 + 120) = v87;
  *(v82 + 128) = v88;
  *(v82 + 136) = v89;
  *(v82 + 144) = v91;
  *(v82 + 152) = *(v172 + 72);
  v92 = v83;
  v160 = v90;
  v93 = v169;
  sub_21D0D0E78(v84);
  v94 = v86;
  v95 = v89;
  isUniquelyReferenced_nonNull_native = v172;
  sub_21D575E44(v87, v88, v95, v91);
  sub_21D575DF4(0, 0, 0, 1);
  v97 = *(v172 + 80);
  v98 = *(v82 + 160);
  *(v82 + 160) = v97;
  v99 = v97;

  v100 = *(v172 + 88);
  *(v82 + 168) = v100;
  v101 = v100;
  sub_21D5B8E5C(v172 + 16);
  *(v82 + 64) = v163;
  sub_21D0D0FD0((v172 + 216), v82 + 72);
  v169[5] = v82;

  swift_beginAccess();
  *(v82 + 24) = &off_282EDB320;
  swift_unknownObjectWeakAssign();
  v102 = v170;
  if (v170 >> 62)
  {
LABEL_87:
    v103 = sub_21DBFBD7C();
    if (v103)
    {
      goto LABEL_51;
    }

LABEL_88:
    v136 = *(isUniquelyReferenced_nonNull_native + 496);
    v137 = *(isUniquelyReferenced_nonNull_native + 376);

    sub_21D90BAE8(v136, type metadata accessor for TTRExtensionContextExtractorResult);
    *(v137 + 56) = v93;

    *(v137 + 48) = sub_21D551A94(v160, v137, sub_21D905C3C, 0);

    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v138 = sub_21DBF84BC();
    __swift_project_value_buffer(v138, qword_27CE63C48);
    v139 = sub_21DBF84AC();
    v140 = sub_21DBFAEDC();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_21D0C9000, v139, v140, "TTRSECreateRemindersInteractor: finish setup", v141, 2u);
      MEMORY[0x223D46520](v141, -1, -1);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v142 = *(isUniquelyReferenced_nonNull_native + 352);
      v143 = *(*(isUniquelyReferenced_nonNull_native + 376) + 24);
      ObjectType = swift_getObjectType();
      (*(v143 + 8))(v102, v149, ObjectType, v143);

      swift_unknownObjectRelease();

      sub_21D157878(1);
    }

    else
    {
      v145 = *(isUniquelyReferenced_nonNull_native + 352);

      sub_21D157878(1);
    }

    v146 = *(isUniquelyReferenced_nonNull_native + 504);

    sub_21D90BAE8(v146, type metadata accessor for TTRExtensionContextExtractorResult);

    v147 = *(isUniquelyReferenced_nonNull_native + 8);

    return v147();
  }

  v103 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v103)
  {
    goto LABEL_88;
  }

LABEL_51:
  v104 = 0;
  v105 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
  v166 = v102 & 0xFFFFFFFFFFFFFF8;
  v168 = v102 & 0xC000000000000001;
  v171 = v102;
  while (1)
  {
    if (v168)
    {
      v108 = MEMORY[0x223D44740](v104, v102);
    }

    else
    {
      if (v104 >= *(v166 + 16))
      {
        goto LABEL_86;
      }

      v108 = *(v102 + 8 * v104 + 32);
    }

    v109 = v108;
    v110 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v111 = [v108 objectID];
    swift_beginAccess();
    v112 = *(v93 + v105);
    if ((v112 & 0xC000000000000001) != 0)
    {
      if (v112 < 0)
      {
        v113 = *(v93 + v105);
      }

      else
      {
        v113 = v112 & 0xFFFFFFFFFFFFFF8;
      }

      v114 = v109;
      v115 = sub_21DBFBD7C();
      if (__OFADD__(v115, 1))
      {
        goto LABEL_84;
      }

      *(v93 + v105) = sub_21D984914(v113, v115 + 1);
    }

    else
    {
      v116 = v109;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = *(v93 + v105);
    v117 = v175;
    *(v93 + v105) = 0x8000000000000000;
    v93 = sub_21D17E07C(v111);
    v119 = v175[2];
    v120 = (v118 & 1) == 0;
    v121 = v119 + v120;
    if (__OFADD__(v119, v120))
    {
      goto LABEL_83;
    }

    v102 = v118;
    if (v175[3] < v121)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v172;
      if (v118)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_21D2240D0();
      v117 = v175;
      isUniquelyReferenced_nonNull_native = v172;
      if (v102)
      {
LABEL_52:
        v106 = v117[7];
        v107 = *(v106 + 8 * v93);
        *(v106 + 8 * v93) = v109;

        goto LABEL_53;
      }
    }

LABEL_73:
    v117[(v93 >> 6) + 8] |= 1 << v93;
    *(v117[6] + 8 * v93) = v111;
    *(v117[7] + 8 * v93) = v109;
    v124 = v117[2];
    v125 = __OFADD__(v124, 1);
    v126 = v124 + 1;
    if (v125)
    {
      goto LABEL_85;
    }

    v117[2] = v126;
LABEL_53:
    v93 = v169;
    *(v169 + v105) = v117;
    swift_endAccess();

    ++v104;
    v102 = v171;
    if (v110 == v103)
    {
      goto LABEL_88;
    }
  }

  sub_21D21BEE4(v121, isUniquelyReferenced_nonNull_native);
  v117 = v175;
  v122 = sub_21D17E07C(v111);
  if ((v102 & 1) == (v123 & 1))
  {
    v93 = v122;
    isUniquelyReferenced_nonNull_native = v172;
    if (v102)
    {
      goto LABEL_52;
    }

    goto LABEL_73;
  }

  sub_21D0D8CF0(0, &qword_280D17880);

  return sub_21DBFC70C();
}

uint64_t sub_21D904DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D904EDC()
{
  v1 = v0[63];
  v2 = v0[44];

  sub_21D157878(1);
  sub_21D90BAE8(v1, type metadata accessor for TTRExtensionContextExtractorResult);

  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall TTRSECreateRemindersInteractor.registerUndo(byDraining:)(NSUndoManager *byDraining)
{
  v3 = *(v1 + 32);
  if ([(NSUndoManager *)byDraining canUndo])
  {
    v4 = swift_allocObject();
    *(v4 + 16) = byDraining;
    *(v4 + 24) = v3;
    sub_21D0D8CF0(0, &unk_280D17840);
    v5 = byDraining;
    v6 = v3;
    sub_21DBFAE8C();
  }
}

uint64_t TTRSECreateRemindersInteractor.fetchAllHashtagLabelsAsync()()
{
  v1[3] = v0;
  v1[4] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v1[5] = swift_task_alloc();
  sub_21DBFA84C();
  v1[6] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_21D9051CC, v3, v2);
}

uint64_t sub_21D9051CC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[3] + 32);
  sub_21DBFA85C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;
  v6 = v3;
  v7 = sub_21D393568(0, 0, v1, &unk_21DC312B8, v5);
  v0[9] = v7;
  sub_21D0CF7E0(v1, &unk_27CE5F150);
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  *v8 = v0;
  v8[1] = sub_21D905348;

  return MEMORY[0x282200460](v0 + 2, v7, v9);
}

uint64_t sub_21D905348()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D90548C, v3, v2);
}

uint64_t sub_21D90548C()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D9054FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21D90551C, 0, 0);
}

uint64_t sub_21D90551C()
{
  v1 = *(v0 + 16);
  *v1 = sub_21D90A888();
  v2 = *(v0 + 8);

  return v2();
}

id sub_21D9055B8(void *a1, uint64_t a2, void *a3)
{
  v47 = a3;
  v5 = sub_21DBF69AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63CA8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 32) = a1;
  *&v54[0] = v9;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63CB0);
  sub_21D0D8CF0(0, &qword_27CE5DDD0);
  sub_21D0D0F1C(&qword_27CE63CB8, &qword_27CE63CB0);
  v11 = sub_21DBFA41C();

  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v46 = v11;
    *&v54[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v48 = *(v6 + 16);
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    do
    {
      v48(v8, v14, v5);
      sub_21DBF693C();
      (*(v6 + 8))(v8, v5);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v14 += v15;
      --v12;
    }

    while (v12);
    v13 = *&v54[0];
    v11 = v46;
  }

  *&v54[0] = v11;
  sub_21D5635A4(v13);
  v16 = *&v54[0];
  if (!(*&v54[0] >> 62))
  {
    v17 = *((*&v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_26:

    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE63C48);
    v43 = sub_21DBF84AC();
    v44 = sub_21DBFAEBC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21D0C9000, v43, v44, "TTRSECreateRemindersInteractor: unable to create grocery list change item, supported account not found", v45, 2u);
      MEMORY[0x223D46520](v45, -1, -1);
    }

    return 0;
  }

LABEL_25:
  v17 = sub_21DBFBD7C();
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_7:
  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x223D44740](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = [v19 capabilities];
    v23 = [v22 supportsGroceriesList];

    if (v23)
    {
      break;
    }

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_26;
    }
  }

  v24 = v47;
  v25 = [v47 updateAccount_];
  v26 = sub_21DBFA12C();
  v27 = [v24 addListWithName:v26 toAccountChangeItem:v25];

  v55 = 0;
  memset(v54, 0, sizeof(v54));
  sub_21D0D3954(v54, v52, &unk_27CE60D80);
  v28 = qword_280D1AA10;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_280D1AA18;
  sub_21D0CF7E0(v54, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v31 = swift_allocObject();
  v50 = type metadata accessor for TTRUserDefaults();
  v51 = &protocol witness table for TTRUserDefaults;
  *&v49 = v30;
  *(v31 + 64) = 0;
  *(v31 + 16) = v29;
  v32 = v52[1];
  *(v31 + 24) = v52[0];
  *(v31 + 40) = v32;
  *(v31 + 56) = v53;
  swift_beginAccess();
  *(v31 + 64) = 0;
  sub_21D0D0FD0(&v49, v31 + 72);
  v33 = v30;
  TTRListEditor.setSuggestedGroceryListProperties()();
  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v34 = sub_21DBF84BC();
  __swift_project_value_buffer(v34, qword_27CE63C48);
  v35 = v29;
  v36 = sub_21DBF84AC();
  v37 = sub_21DBFAEDC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = [v35 objectID];
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&dword_21D0C9000, v36, v37, "TTRSECreateRemindersInteractor: created grocery list change item {objectID: %@}", v38, 0xCu);
    sub_21D0CF7E0(v39, &unk_27CE60070);
    MEMORY[0x223D46520](v39, -1, -1);
    MEMORY[0x223D46520](v38, -1, -1);
  }

  return v35;
}

uint64_t sub_21D905C3C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v5 = 1;
    (*(v3 + 16))(&v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRSECreateRemindersInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRSECreateRemindersInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_21D905D90(void *a1)
{
  v3 = *(v1 + 32);
  result = [a1 canUndo];
  if (result)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v3;
    sub_21D0D8CF0(0, &unk_280D17840);
    v6 = a1;
    v7 = v3;
    sub_21DBFAE8C();
  }

  return result;
}

uint64_t sub_21D905E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1237C4;

  return TTRSECreateRemindersInteractor.fetchAllHashtagLabelsAsync()();
}

char *sub_21D905EF8()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v0 = sub_21DBF8E0C();
  v1 = sub_21D198C38(v0);

  return v1;
}

uint64_t sub_21D905F9C(int a1)
{
  v110 = a1;
  v151 = sub_21DBF68CC();
  v2 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v152 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v153 = &v99 - v5;
  v6 = sub_21DBF648C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v99 = (&v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v144 = (&v99 - v10);
  v11 = sub_21DBF695C();
  v149 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF68DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v129 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v134 = &v99 - v18;
  v19 = sub_21DBF69AC();
  v113 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v116 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21DBF64DC();
  MEMORY[0x28223BE20](v109);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v1;
  v24 = *(v1 + 56);
  v25 = *(v24 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v121 = v11;
  v106 = v23;
  v155 = MEMORY[0x277D84F90];
  v104 = v25;
  v26 = v21;
  sub_21D18F5C8(0, v25, 0);
  v27 = 0;
  v115 = v155;
  v100 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList;
  v112 = v24 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
  v111 = v113 + 16;
  v128 = v15 + 16;
  v127 = v15 + 88;
  v126 = *MEMORY[0x277D452F8];
  v122 = *MEMORY[0x277D452F0];
  v120 = *MEMORY[0x277D45300];
  v125 = (v15 + 96);
  v119 = (v149 + 32);
  v142 = v2 + 88;
  v143 = v2 + 16;
  v141 = *MEMORY[0x277D452E8];
  v136 = *MEMORY[0x277D452E0];
  v139 = (v2 + 96);
  v140 = (v2 + 8);
  v150 = (v7 + 104);
  v145 = v7 + 32;
  v118 = (v149 + 8);
  v124 = (v15 + 8);
  v103 = (v113 + 8);
  v137 = *MEMORY[0x277D45020];
  v107 = v26;
  v102 = v26 + 32;
  LODWORD(v149) = *MEMORY[0x277D45028];
  v123 = xmmword_21DC08D00;
  v146 = v6;
  v133 = v14;
  v28 = v113;
  v117 = v13;
  v131 = v15;
  v108 = v19;
  v105 = v24;
  do
  {
    if (v27 >= *(v24 + 16))
    {
      goto LABEL_60;
    }

    v29 = *(v28 + 72);
    v114 = v27;
    (*(v28 + 16))(v116, v112 + v29 * v27, v19);
    v30 = sub_21DBF694C();
    v132 = *(v30 + 16);
    if (v132)
    {
      v31 = 0;
      v32 = MEMORY[0x277D84F90];
      v33 = v131;
      v34 = v134;
      v130 = v30;
      while (v31 < *(v30 + 16))
      {
        v138 = v32;
        v35 = v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        v36 = *(v33 + 72);
        v135 = v31;
        v37 = *(v33 + 16);
        v37(v34, v35 + v36 * v31, v14);
        v38 = v129;
        v37(v129, v34, v14);
        v39 = (*(v33 + 88))(v38, v14);
        if (v39 == v126)
        {
          (*v125)(v38, v14);
          v40 = *v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C0);
          v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = v123;
          *(v42 + v41) = v40;
          (*(v7 + 104))(v42 + v41, v149, v6);
          (*v124)(v34, v14);
          goto LABEL_23;
        }

        if (v39 == v122)
        {
          (*v125)(v38, v14);
          v43 = *v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C0);
          v44 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = v123;
          *(v42 + v44) = v43;
          (*(v7 + 104))(v42 + v44, v137, v6);
          (*v124)(v134, v14);
          goto LABEL_23;
        }

        if (v39 != v120)
        {
          goto LABEL_65;
        }

        (*v125)(v38, v14);
        v45 = v121;
        (*v119)(v13, v38, v121);
        v46 = sub_21DBF694C();
        v47 = *(v46 + 16);
        if (v47)
        {
          v154 = MEMORY[0x277D84F90];
          v48 = v46;
          sub_21D18E93C(0, v47, 0);
          v49 = v48;
          v50 = 0;
          v42 = v154;
          v147 = v48 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          v148 = v48;
          while (v50 < *(v49 + 16))
          {
            v51 = v47;
            v52 = v7;
            v53 = *(v2 + 16);
            v54 = v153;
            v55 = v151;
            v53(v153, v147 + *(v2 + 72) * v50, v151);
            v56 = v152;
            v53(v152, v54, v55);
            v57 = v2;
            v58 = (*(v2 + 88))(v56, v55);
            v59 = v149;
            if (v58 != v141)
            {
              v59 = v137;
              if (v58 != v136)
              {
                goto LABEL_61;
              }
            }

            v60 = v151;
            (*v140)(v153, v151);
            v61 = v152;
            (*v139)(v152, v60);
            v62 = v144;
            *v144 = *v61;
            v6 = v146;
            (*v150)(v62, v59, v146);
            v154 = v42;
            v64 = *(v42 + 16);
            v63 = *(v42 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_21D18E93C(v63 > 1, v64 + 1, 1);
              v42 = v154;
            }

            ++v50;
            *(v42 + 16) = v64 + 1;
            v7 = v52;
            (*(v52 + 32))(v42 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v64, v62, v6);
            v47 = v51;
            v2 = v57;
            v49 = v148;
            if (v51 == v50)
            {

              v13 = v117;
              (*v118)(v117, v121);
              (*v124)(v134, v133);
              goto LABEL_23;
            }
          }

          __break(1u);
          return v115;
        }

        (*v118)(v13, v45);
        (*v124)(v134, v14);
        v42 = MEMORY[0x277D84F90];
LABEL_23:
        v65 = *(v42 + 16);
        v66 = v138[2];
        v67 = v66 + v65;
        if (__OFADD__(v66, v65))
        {
          goto LABEL_56;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v138;
        if (!isUniquelyReferenced_nonNull_native || v67 > v138[3] >> 1)
        {
          if (v66 <= v67)
          {
            v70 = v66 + v65;
          }

          else
          {
            v70 = v66;
          }

          v69 = sub_21D21507C(isUniquelyReferenced_nonNull_native, v70, 1, v138);
        }

        v14 = v133;
        if (*(v42 + 16))
        {
          if ((v69[3] >> 1) - v69[2] < v65)
          {
            goto LABEL_58;
          }

          v32 = v69;
          swift_arrayInitWithCopy();

          v33 = v131;
          v34 = v134;
          if (v65)
          {
            v71 = v32[2];
            v72 = __OFADD__(v71, v65);
            v73 = v71 + v65;
            if (v72)
            {
              goto LABEL_59;
            }

            v32[2] = v73;
          }
        }

        else
        {
          v32 = v69;

          v33 = v131;
          v34 = v134;
          if (v65)
          {
            goto LABEL_57;
          }
        }

        v31 = v135 + 1;
        v30 = v130;
        if (v135 + 1 == v132)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      if (qword_27CE56E68 != -1)
      {
        swift_once();
      }

      v93 = sub_21DBF84BC();
      __swift_project_value_buffer(v93, qword_27CE63C48);
      v94 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v94);
      v95 = "Unknown group child type";
      for (i = 24; ; i = 26)
      {
        sub_21DAEAB00(v95, i, 2);
        __break(1u);
LABEL_65:
        if (qword_27CE56E68 != -1)
        {
          swift_once();
        }

        v97 = sub_21DBF84BC();
        __swift_project_value_buffer(v97, qword_27CE63C48);
        v98 = MEMORY[0x277D84F90];
        sub_21D17716C(MEMORY[0x277D84F90]);
        sub_21D17716C(v98);
        v95 = "Unknown account child type";
      }
    }

    v32 = MEMORY[0x277D84F90];
LABEL_37:
    v74 = v32;

    if (v110)
    {
      v75 = *(v101 + v100);
      if (v75)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        v76 = v75;
        v77 = [v76 accountID];
        v78 = sub_21DBF693C();
        v79 = [v78 objectID];

        LOBYTE(v78) = sub_21DBFB63C();
        if (v78)
        {
          v80 = sub_21D906F60();
          v6 = v146;
          if (v80)
          {
            v81 = v80;
            v82 = sub_21DBFB60C();
            v83 = v99;
            *v99 = v82;
            (*v150)(v83, v149, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_21D21507C(0, v74[2] + 1, 1, v74);
            }

            v85 = v74[2];
            v84 = v74[3];
            if (v85 >= v84 >> 1)
            {
              v74 = sub_21D21507C(v84 > 1, v85 + 1, 1, v74);
            }

            v74[2] = v85 + 1;
            (*(v7 + 32))(v74 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v85, v99, v6);
          }

          else
          {
          }
        }

        else
        {

          v6 = v146;
        }
      }
    }

    v19 = v108;
    v86 = v116;
    sub_21DBF693C();
    v87 = v106;
    sub_21DBF64BC();
    (*v103)(v86, v19);
    v88 = v115;
    v155 = v115;
    v90 = *(v115 + 16);
    v89 = *(v115 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_21D18F5C8(v89 > 1, v90 + 1, 1);
      v88 = v155;
    }

    v27 = v114 + 1;
    *(v88 + 16) = v90 + 1;
    v91 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v115 = v88;
    (*(v107 + 32))(v88 + v91 + *(v107 + 72) * v90, v87, v109);
    v28 = v113;
    v24 = v105;
  }

  while (v27 != v104);
  return v115;
}

id sub_21D906F60()
{
  v1 = sub_21D90A088();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 saveRequest];
    v4 = [v3 store];

    v5 = [v0 storage];
    v6 = [objc_allocWithZone(MEMORY[0x277D44660]) initWithStore:v4 account:v2 storage:v5];
  }

  else
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE63C48);
    v8 = v0;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = [v8 objectID];
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRSECreateRemindersInteractor#remListRepresentation: no account {objectID: %@}", v11, 0xCu);
      sub_21D0CF7E0(v12, &unk_27CE60070);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_21D907150()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  sub_21D90BAE8(v0 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult, type metadata accessor for TTRExtensionContextExtractorResult);
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext);

  return v0;
}

uint64_t sub_21D907220()
{
  sub_21D907150();

  return swift_deallocClassInstance();
}

void sub_21D907274(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = v2[20];
    v8 = v2[14];
    v4 = v2[8];
    *a1 = v3;
    a1[1] = v8;
    a1[2] = v4;
    v5 = v4;
    v6 = v3;

    v7 = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_21D9072D8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v2 + 160);
    if (v3)
    {
      v4 = 1;
      v5 = *(v2 + 160);
    }

    else
    {
      v5 = *(v2 + 112);
      if (v5)
      {
        v6 = a1;
        v7 = v5;
        a1 = v6;
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }
    }

    v8 = *(v2 + 120);
    v9 = *(v2 + 128);
    v10 = *(v2 + 136);
    v11 = *(v2 + 144);
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
    *(a1 + 48) = *(v2 + 152);
    v12 = v3;

    sub_21D575E44(v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_21D907394(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v2 + 48);
    v12 = *(v2 + 112);
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = *(v2 + 168);
    v11 = *(v2 + 160);
    *a1 = v3;
    *(a1 + 16) = v12;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
    *(a1 + 48) = v6;
    *(a1 + 56) = *(v2 + 152);
    *(a1 + 64) = v11;
    *(a1 + 72) = v7;
    sub_21D0D0E78(v3);
    v8 = v12;
    sub_21D575E44(*(&v12 + 1), v4, v5, v6);
    v9 = v7;

    v10 = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D907454(uint64_t result)
{
  v2 = *(v1 + 40);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = v1;
  v4 = *result;
  v5 = *(result + 8);
  v6 = v2[20];
  v7 = v2[14];
  v8 = v2[8];
  v32[0] = v6;
  v32[1] = v7;
  v32[2] = v8;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v33);

  v12 = *(&v34 + 1);
  if (!*(&v34 + 1))
  {
    sub_21D0CF7E0(&v33, &qword_27CE59DC0);
    v15 = 2;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_6:
    v17 = [v4 account];
    v16 = [v17 capabilities];

    goto LABEL_7;
  }

  v13 = v35;
  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  v14 = (*(v13 + 72))(v12, v13);
  v15 = [v14 supportsAttachments];

  __swift_destroy_boxed_opaque_existential_0(&v33);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v16 = [v4 accountCapabilities];
LABEL_7:
  v18 = [v16 supportsAttachments];

  if (v15 != 2 && ((v18 ^ v15) & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = *(v3 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_reminderIDWithExtractorResultApplied);
  if (!v16)
  {
    goto LABEL_18;
  }

  v19 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
  swift_beginAccess();
  v20 = *(v3 + v19);
  v16 = v16;
  v21 = sub_21D1AA268(v16, v20);
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  swift_endAccess();
  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_27CE63C48);
  v24 = v22;
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAEDC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = [v24 objectID];
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_21D0C9000, v25, v26, "TTRSECreateRemindersInteractor: need to reapply extractor result to reminder {objectID: %@}", v27, 0xCu);
    sub_21D0CF7E0(v28, &unk_27CE60070);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_21D0D3954(&v33, v32, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v30 = swift_allocObject();
  *(v30 + 72) = 0;
  *(v30 + 16) = v24;
  sub_21D0D3954(v32, v30 + 24, &unk_27CE60D80);
  *(v30 + 64) = 0;
  v31 = [v24 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(&v33, &unk_27CE60D80);
  sub_21D0CF7E0(v32, &unk_27CE60D80);
  *(v30 + 72) = v31;

  swift_retain_n();
  TTRReminderEditor.prepareToReapplyExtensionContextExtractorResultDueToAccountCapabilityChange()();

  for (; !*(v3 + 40); v30 = 0)
  {
    __break(1u);
LABEL_17:
    swift_endAccess();

LABEL_18:
    ;
  }

  *&v33 = v4;
  BYTE8(v33) = v5;

  TTRReminderDetailPendingMoveInteractorCapability.update(parentList:)(&v33);

  if (v30)
  {
    TTRReminderEditor.apply(_:)((v3 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult));
  }

  return result;
}

void sub_21D907890()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList;
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 groceryContextChangeItem];
    if (v5 && (v30 = v5, v6 = sub_21D0D8CF0(0, &qword_280D0C220), v7 = sub_21D0FB9CC(v6, &protocol witness table for REMListGroceryContextChangeItem), v30, (v7 & 1) != 0))
    {
      v8 = sub_21D906F60();

      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v32 = sub_21D905F9C(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B60);
  sub_21D0D8CF0(0, &qword_280D17690);
  sub_21D0D0F1C(&qword_27CE63CA0, &qword_27CE61B60);
  sub_21DBFA48C();

  v8 = v30;
  if (!v30)
  {
    if (*(v1 + v2) || (v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext), v23 = *(v1 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext + 8), v24 = *(v1 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext + 16), v25 = v22, sub_21DBF8E0C(), v26 = v24, v27 = sub_21D9055B8(v22, v23, v26), v26, , v25, !v27) || (v28 = *(v1 + v2), *(v1 + v2) = v27, v29 = v27, v28, v8 = sub_21D906F60(), v29, !v8))
    {
      if (qword_27CE56E68 != -1)
      {
        swift_once();
      }

      v18 = sub_21DBF84BC();
      __swift_project_value_buffer(v18, qword_27CE63C48);
      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAEDC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_21D0C9000, v19, v20, "TTRSECreateRemindersPresenterCapability: grocery list not found", v21, 2u);
        MEMORY[0x223D46520](v21, -1, -1);
      }

      return;
    }
  }

LABEL_8:
  v9 = v8;
  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE63C48);
  v11 = v9;
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [v11 objectID];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRSECreateRemindersInteractor: switching to grocery list {listID: %@}", v14, 0xCu);
    sub_21D0CF7E0(v15, &unk_27CE60070);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  v30 = v11;
  v31 = 0;
  v17 = v11;
  sub_21D907454(&v30);
}

uint64_t sub_21D907CA8@<X0>(void *a1@<X8>)
{
  v2 = sub_21DBF649C();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 groceryContext];
      if (v9)
      {
        v13 = v9;
        v10 = sub_21D0D8CF0(0, &unk_280D0C250);
        v11 = sub_21D0FB9CC(v10, &protocol witness table for REMListGroceryContext);

        if (v11)
        {

          goto LABEL_17;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v7 = 0;
LABEL_17:
  *a1 = v7;
  return result;
}

uint64_t sub_21D907E0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 groceryContextChangeItem];
    if (v3)
    {
      v9 = v3;
      v4 = sub_21D0D8CF0(0, &qword_280D0C220);
      v5 = sub_21D0FB9CC(v4, &protocol witness table for REMListGroceryContextChangeItem);

      if (v5)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        v6 = [v2 objectID];
        v7 = sub_21DBFB63C();

        return v7 & 1;
      }
    }
  }

  return 0;
}

void sub_21D907F04(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = a1;
    v7 = sub_21D1AA268(v6, v5);
    swift_endAccess();
    if (v7)
    {

      v8 = [*(v2 + 48) trackedReminderChangeItems];
      [v8 removeObjectForKey_];

      swift_beginAccess();
      v9 = sub_21D983C2C(v6);
      swift_endAccess();

      v6 = v9;
    }
  }

  v10 = *(v2 + 48);
  v11 = sub_21DBFA12C();
  v12 = [v10 addReminderWithTitle:v11 toListChangeItem:*(v2 + 64) reminderObjectID:a1];

  if (*(v2 + 40))
  {

    TTRReminderDetailPendingMoveInteractorCapability.reflectPendingMoveState(in:)(v12);

    v13 = [v12 objectID];
    v14 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if ((v15 & 0xC000000000000001) == 0)
    {
      v19 = v12;
      goto LABEL_13;
    }

    if (v15 < 0)
    {
      v16 = *(v2 + v14);
    }

    else
    {
      v16 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = v12;
    v18 = sub_21DBFBD7C();
    if (!__OFADD__(v18, 1))
    {
      *(v2 + v14) = sub_21D984914(v16, v18 + 1);
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v2 + v14);
      sub_21D47857C(v12, v13, isUniquelyReferenced_nonNull_native);
      *(v2 + v14) = v21;

      swift_endAccess();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21D908118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 392) = a4;
  *(v5 + 264) = a3;
  *(v5 + 272) = v4;
  *(v5 + 248) = a1;
  *(v5 + 256) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
  *(v5 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  *(v5 + 288) = swift_task_alloc();
  v6 = sub_21DBF56BC();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  sub_21DBFA84C();
  *(v5 + 328) = sub_21DBFA83C();
  v8 = sub_21DBFA7CC();
  *(v5 + 336) = v8;
  *(v5 + 344) = v7;

  return MEMORY[0x2822009F8](sub_21D908290, v8, v7);
}

uint64_t sub_21D908290()
{
  v175 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = swift_allocObject();
  *(v0 + 352) = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
  swift_beginAccess();
  v153 = v4;
  v154 = v1;
  v161 = v3;
  *(v3 + 16) = *(v1 + v4);
  v155 = (v3 + 16);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult;
  v6 = type metadata accessor for TTRExtensionContextExtractorResult();
  sub_21D0D3954(v5 + *(v6 + 60), v2, &qword_27CE5EDE0);
  v7 = type metadata accessor for TTRSERecipeCard();
  v8 = (*(*(v7 - 8) + 48))(v2, 1, v7);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  if (v8 == 1)
  {
    sub_21DBF8E0C();
    sub_21D0CF7E0(v12, &qword_27CE5EDE0);
    (*(v10 + 56))(v11, 1, 1, v9);
LABEL_4:
    sub_21D0CF7E0(*(v0 + 288), &qword_27CE58370);
    sub_21DBF56AC();
    goto LABEL_6;
  }

  sub_21D0D3954(v12 + *(v7 + 24), *(v0 + 288), &qword_27CE58370);
  sub_21DBF8E0C();
  sub_21D90BAE8(v12, type metadata accessor for TTRSERecipeCard);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v13 = *(v0 + 312);
  v14 = *(v0 + 320);
  v15 = *(v0 + 296);
  v16 = *(*(v0 + 304) + 32);
  v16(v13, *(v0 + 288), v15);
  v16(v14, v13, v15);
LABEL_6:
  v17 = v155;
  v18 = *(v5 + *(v6 + 40));
  if (v18)
  {
    if (*(v0 + 392) == 1)
    {
      v18 = [v18 userActivityWithFlags_];
    }

    else
    {
      v19 = v18;
    }
  }

  *(v0 + 360) = v18;
  v20 = *(v0 + 248);
  if (v20 >> 62)
  {
    goto LABEL_151;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v158 = v0;
  if (v21)
  {
    v22 = 0;
    v165 = *(v0 + 256);
    v167 = v20 & 0xC000000000000001;
    v156 = *(v0 + 248) + 32;
    v157 = v20 & 0xFFFFFFFFFFFFFF8;
    v160 = *(v0 + 272);
    v159 = v18;
    v162 = v21;
    do
    {
      if (v167)
      {
        v23 = MEMORY[0x223D44740](v22, *(v0 + 248));
      }

      else
      {
        if (v22 >= *(v157 + 16))
        {
          goto LABEL_149;
        }

        v23 = *(v156 + 8 * v22);
      }

      v24 = v23;
      if (__OFADD__(v22++, 1))
      {
        goto LABEL_148;
      }

      swift_beginAccess();
      v26 = sub_21D983C2C(v24);
      swift_endAccess();
      if (!v26)
      {
        if (qword_27CE56E68 != -1)
        {
          swift_once();
        }

        v28 = sub_21DBF84BC();
        __swift_project_value_buffer(v28, qword_27CE63C48);
        v29 = v24;
        v30 = sub_21DBF84AC();
        v20 = sub_21DBFAEBC();

        if (os_log_type_enabled(v30, v20))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412290;
          *(v31 + 4) = v29;
          *v32 = v29;
          v29 = v29;
          _os_log_impl(&dword_21D0C9000, v30, v20, "TTRSECreateRemindersInteractor: REMReminderChangeItem not found {objectID: %@}", v31, 0xCu);
          sub_21D0CF7E0(v32, &unk_27CE60070);
          v33 = v32;
          v21 = v162;
          MEMORY[0x223D46520](v33, -1, -1);
          MEMORY[0x223D46520](v31, -1, -1);
        }

        goto LABEL_14;
      }

      v27 = [v26 userActivity];
      if (v27)
      {
      }

      else if (v18)
      {
        [v26 setUserActivity_];
      }

      v34 = sub_21DBF566C();
      [v26 setBatchCreationID_];

      v35 = *(v165 + 16);
      v36 = v26;
      v169 = v24;
      if (v35 && (v37 = sub_21D17E07C(v24), (v38 & 1) != 0))
      {
        v39 = *(*(v165 + 56) + 8 * v37);
        sub_21DBF8E0C();
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      v40 = *(v0 + 320);
      v41 = swift_task_alloc();
      v41[2] = v161;
      v41[3] = v18;
      v41[4] = v40;
      v20 = sub_21D4E7B44(sub_21D90B5E4, v41, v39);

      v42 = [v36 listChangeItem];

      [v42 addReminderChangeItem_];
      if (v20 >> 62)
      {
        v43 = sub_21DBFBD7C();
        if (v43)
        {
LABEL_35:
          v44 = [v36 subtaskContext];
          if (v44)
          {
            if (v43 < 1)
            {
              goto LABEL_150;
            }

            v45 = v44;
            v46 = 0;
            v47 = 0;
            do
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v48 = MEMORY[0x223D44740](v47, v20);
              }

              else
              {
                v48 = *(v20 + 8 * v47 + 32);
              }

              v49 = v48;
              ++v47;
              [v45 insertReminderChangeItem:v48 afterReminderChangeItem:v46];

              v46 = v49;
            }

            while (v43 != v47);

            v0 = v158;
            v17 = v155;
          }
        }
      }

      else
      {
        v43 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_35;
        }
      }

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_21D0D3954(v0 + 56, v0 + 96, &unk_27CE60D80);
      type metadata accessor for TTRReminderEditor();
      v50 = swift_allocObject();
      *(v50 + 72) = 0;
      *(v50 + 16) = v36;
      sub_21D0D3954(v0 + 96, v50 + 24, &unk_27CE60D80);
      *(v50 + 64) = 0;
      v30 = v36;
      v51 = [v30 fetchedCurrentDueDateDeltaAlert];
      sub_21D0CF7E0(v0 + 56, &unk_27CE60D80);
      v52 = sub_21D0CF7E0(v0 + 96, &unk_27CE60D80);
      *(v50 + 72) = v51;
      v53 = *(v160 + 40);
      if (!v53)
      {
        __break(1u);
LABEL_157:
        __break(1u);
        return MEMORY[0x2821A7AD0](v52);
      }

      sub_21DBF8E0C();

      v29 = sub_21DB4F3C8(v50, v53, v20);
      swift_bridgeObjectRelease_n();

      v18 = v159;
      v21 = v162;
LABEL_14:
    }

    while (v22 != v21);
  }

  v161 = (v0 + 208);
  swift_beginAccess();
  v20 = *v17;
  if ((*v17 & 0xC000000000000001) != 0)
  {
    v54 = sub_21DBFC21C();
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = v54 | 0x8000000000000000;
  }

  else
  {
    v59 = -1 << *(v20 + 32);
    v56 = ~v59;
    v55 = v20 + 64;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v57 = v61 & *(v20 + 64);
    v58 = *v17;
  }

  v0 = (v56 + 64) >> 6;
  sub_21DBF8E0C();
  v18 = 0;
  v17 = &selRef__setContentViewMarginType_;
  if ((v58 & 0x8000000000000000) == 0)
  {
    goto LABEL_57;
  }

  while (sub_21DBFC2DC())
  {
    v63 = v62;
    swift_unknownObjectRelease();
    v158[30] = v63;
    sub_21D0D8CF0(0, &qword_280D17770);
    swift_dynamicCast();
    v20 = v158[29];
    v64 = v18;
    v65 = v57;
    if (!v20)
    {
      break;
    }

    while (1)
    {
      [v20 removeFromList];

      v18 = v64;
      v57 = v65;
      if ((v58 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_57:
      v66 = v18;
      v67 = v57;
      v64 = v18;
      if (!v57)
      {
        while (1)
        {
          v64 = (v66 + 1);
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v64 >= v0)
          {
            goto LABEL_64;
          }

          v67 = *(v55 + 8 * v64);
          ++v66;
          if (v67)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
        goto LABEL_147;
      }

LABEL_61:
      v65 = (v67 - 1) & v67;
      v20 = *(*(v58 + 56) + ((v64 << 9) | (8 * __clz(__rbit64(v67)))));
      if (!v20)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_64:
  sub_21D199874();
  v68 = *(v154 + v153);
  v171 = MEMORY[0x277D84F90];
  if ((v68 & 0xC000000000000001) != 0)
  {
    v69 = sub_21DBFC21C();
    v70 = 0;
    v71 = 0;
    v0 = 0;
    v72 = v69 | 0x8000000000000000;
  }

  else
  {
    v73 = -1 << *(v68 + 32);
    v71 = ~v73;
    v70 = v68 + 64;
    v74 = -v73;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    else
    {
      v75 = -1;
    }

    v0 = v75 & *(v68 + 64);
    v72 = *(v154 + v153);
  }

  v170 = v158[34];
  v76 = (v71 + 64) >> 6;
  v163 = v158[33] & 0xFFFFFFFFFFFFFF8;
  v166 = v158[33];
  sub_21DBF8E0C();
  v17 = 0;
LABEL_71:
  v20 = 0x278332000;
  while (1)
  {
    v18 = v0;
    if ((v72 & 0x8000000000000000) != 0)
    {
      break;
    }

    v77 = v17;
    v78 = v0;
    if (!v0)
    {
      while (1)
      {
        v17 = (v77 + 1);
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v17 >= v76)
        {
          goto LABEL_94;
        }

        v78 = *(v70 + 8 * v17);
        v77 = (v77 + 1);
        if (v78)
        {
          goto LABEL_77;
        }
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      v21 = sub_21DBFBD7C();
      goto LABEL_12;
    }

LABEL_77:
    v0 = (v78 - 1) & v78;
    v79 = *(*(v72 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v78)))));
    if (!v79)
    {
      goto LABEL_94;
    }

LABEL_81:
    v81 = [*(v170 + 48) *(v20 + 872)];
    if (v81)
    {
      if (!v166)
      {
        goto LABEL_88;
      }

      if (v166 >> 62)
      {
        v87 = v81;
        v88 = sub_21DBFBD7C();
        v81 = v87;
        if (!v88)
        {
          goto LABEL_88;
        }
      }

      else if (!*(v163 + 16))
      {
        goto LABEL_88;
      }

      v82 = v81;
      *v161 = v79;
      v83 = swift_task_alloc();
      *(v83 + 16) = v161;
      v84 = sub_21D17B954(sub_21D90B57C, v83, v166);

      if ((v84 & 1) == 0)
      {

LABEL_91:
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        goto LABEL_71;
      }

      v81 = v82;
LABEL_88:
      v85 = v81;
      v86 = [v81 listID];

      if (v86)
      {

        goto LABEL_71;
      }

      goto LABEL_91;
    }
  }

  v80 = sub_21DBFC2EC();
  if (v80)
  {
    v158[28] = v80;
    sub_21D0D8CF0(0, &qword_280D17880);
    swift_dynamicCast();
    v79 = v158[27];
    v20 = &selRef__setContentViewMarginType_;
    if (v79)
    {
      goto LABEL_81;
    }
  }

LABEL_94:
  v52 = sub_21D199874();
  v89 = v171;
  v90 = v171 < 0 || (v171 & 0x4000000000000000) != 0;
  if (v90)
  {
    v52 = sub_21DBFBD7C();
    v91 = v158;
    if (!v52)
    {
      goto LABEL_117;
    }

LABEL_99:
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v92 = sub_21DBF84BC();
    __swift_project_value_buffer(v92, qword_27CE63C48);

    v93 = sub_21DBF84AC();
    v94 = sub_21DBFAEDC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v174 = v168;
      *v95 = 136315138;
      if (v90)
      {
        v96 = sub_21DBFBD7C();
      }

      else
      {
        v96 = *(v171 + 16);
      }

      v97 = MEMORY[0x277D84F90];
      if (v96)
      {
        v164 = v94;
        v172 = MEMORY[0x277D84F90];
        sub_21D18E678(0, v96 & ~(v96 >> 63), 0);
        if (v96 < 0)
        {
          __break(1u);
          goto LABEL_155;
        }

        v98 = 0;
        v97 = v172;
        do
        {
          if ((v89 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x223D44740](v98, v89);
          }

          else
          {
            v99 = *(v89 + 8 * v98 + 32);
          }

          v100 = v99;
          v101 = [v99 description];
          v102 = sub_21DBFA16C();
          v104 = v103;

          v106 = *(v172 + 16);
          v105 = *(v172 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_21D18E678((v105 > 1), v106 + 1, 1);
          }

          ++v98;
          *(v172 + 16) = v106 + 1;
          v107 = v172 + 16 * v106;
          *(v107 + 32) = v102;
          *(v107 + 40) = v104;
        }

        while (v96 != v98);
        v91 = v158;
        LOBYTE(v94) = v164;
      }

      v108 = MEMORY[0x223D42DB0](v97, MEMORY[0x277D837D0]);
      v110 = v109;

      v111 = sub_21D0CDFB4(v108, v110, &v174);

      *(v95 + 4) = v111;
      _os_log_impl(&dword_21D0C9000, v93, v94, "TTRSECreateRemindersInteractor: remove reminders from saveRequest {objectIDs: %s}", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v168);
      MEMORY[0x223D46520](v168, -1, -1);
      MEMORY[0x223D46520](v95, -1, -1);
    }

    v112 = [*(v170 + 48) trackedReminderChangeItems];
    sub_21D7F6738(v89);
    v113 = sub_21DBFA5DC();

    [v112 removeObjectsForKeys_];

    goto LABEL_117;
  }

  v91 = v158;
  if (*(v171 + 16))
  {
    goto LABEL_99;
  }

LABEL_117:
  v114 = v91[34];
  v115 = *(v114 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList);
  if (!v115)
  {

    goto LABEL_143;
  }

  v116 = *(v114 + 40);
  if (!v116)
  {
    goto LABEL_157;
  }

  v93 = v115;

  v117 = *(v116 + 160);
  v118 = *(v116 + 112);
  v119 = *(v116 + 64);
  v120 = v117;
  v121 = v118;

  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(v91 + 2);

  v122 = v91[5];
  if (!v122)
  {

    sub_21D0CF7E0((v91 + 2), &qword_27CE59DC0);
    goto LABEL_143;
  }

  v123 = v91[6];
  __swift_project_boxed_opaque_existential_1(v91 + 2, v91[5]);
  v89 = (*(v123 + 8))(v122, v123);
  __swift_destroy_boxed_opaque_existential_0((v91 + 2));
  v94 = [v93 objectID];
  sub_21D0D8CF0(0, &qword_280D17880);
  if (sub_21DBFB63C())
  {
    v124 = [v93 groceryContextChangeItem];
    if (v124)
    {
      v173 = v124;
      v125 = sub_21D0D8CF0(0, &qword_280D0C220);
      v126 = sub_21D0FB9CC(v125, &protocol witness table for REMListGroceryContextChangeItem);
    }

    else
    {
      v126 = 0;
    }

    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v136 = sub_21DBF84BC();
    __swift_project_value_buffer(v136, qword_27CE63C48);
    v137 = v94;
    v138 = sub_21DBF84AC();
    v139 = sub_21DBFAEDC();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v140 = 138412546;
      *(v140 + 4) = v137;
      *v141 = v137;
      *(v140 + 12) = 1024;
      *(v140 + 14) = v126 & 1;
      v142 = v137;
      _os_log_impl(&dword_21D0C9000, v138, v139, "TTRSECreateRemindersInteractor: will save new list {objectID: %@, isGroceryList: %{BOOL}d}", v140, 0x12u);
      sub_21D0CF7E0(v141, &unk_27CE60070);
      v143 = v141;
      v91 = v158;
      MEMORY[0x223D46520](v143, -1, -1);
      MEMORY[0x223D46520](v140, -1, -1);
    }

    if (v126)
    {
      v144 = sub_21DBF84AC();
      v145 = sub_21DBFAEDC();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        _os_log_impl(&dword_21D0C9000, v144, v145, "TTRSECreateRemindersInteractor: TTRUserDefault#hasCreatedGroceryList set to true after creating a new grocery list", v146, 2u);
        MEMORY[0x223D46520](v146, -1, -1);
      }

      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v147 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
      if (v147)
      {
        v148 = sub_21DBFA12C();
        [v147 setBool:1 forKey:v148];
      }

      v149 = [objc_opt_self() daemonUserDefaults];
      [v149 setHasCreatedGroceryList_];
    }

    goto LABEL_143;
  }

  if (qword_27CE56E68 != -1)
  {
LABEL_155:
    swift_once();
  }

  v127 = sub_21DBF84BC();
  __swift_project_value_buffer(v127, qword_27CE63C48);
  v128 = v94;
  v129 = sub_21DBF84AC();
  v130 = sub_21DBFAEDC();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v131 = 138412290;
    *(v131 + 4) = v128;
    *v132 = v128;
    v133 = v128;
    _os_log_impl(&dword_21D0C9000, v129, v130, "TTRSECreateRemindersInteractor: remove unused uncommitted list from saveRequest {objectID: %@}", v131, 0xCu);
    sub_21D0CF7E0(v132, &unk_27CE60070);
    MEMORY[0x223D46520](v132, -1, -1);
    MEMORY[0x223D46520](v131, -1, -1);
  }

  [v93 removeFromParent];
  v134 = [*(v170 + 48) trackedListChangeItems];
  v135 = v128;
  [v134 removeObjectForKey_];

LABEL_143:
  sub_21D0D8CF0(0, &qword_280D1B900);
  v150 = sub_21DBFB12C();
  v91[46] = v150;
  v151 = swift_task_alloc();
  v91[47] = v151;
  *v151 = v91;
  v151[1] = sub_21D909744;
  v52 = v150;

  return MEMORY[0x2821A7AD0](v52);
}

uint64_t sub_21D909744()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_21D909930;
  }

  else
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_21D909860;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D909860()
{
  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[37];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21D909930()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[37];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

void *sub_21D909A10(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = sub_21D983C2C(a1);
  swift_endAccess();
  if (v5)
  {
    v6 = [v5 userActivity];
    if (v6)
    {
    }

    else if (a3)
    {
      [v5 setUserActivity_];
    }

    v9 = sub_21DBF566C();
    [v5 setBatchCreationID_];
  }

  else
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE63C48);
    v8 = a1;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRSECreateRemindersInteractor: REMReminderChangeItem not found {objectID: %@}", v11, 0xCu);
      sub_21D0CF7E0(v12, &unk_27CE60070);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }

  return v5;
}

uint64_t sub_21D909C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1B795C;

  return sub_21D908118(a1, a2, a3, a4);
}

uint64_t sub_21D909CD4()
{
  v1[2] = v0;
  sub_21DBFA84C();
  v1[3] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21D909D6C, v3, v2);
}

uint64_t sub_21D909D6C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21D909E08;

  return MEMORY[0x2821A7C88](v1);
}

uint64_t sub_21D909E08(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_21D909F98;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_21D909F30;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21D909F30()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_21D909F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D909FFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D203124;

  return sub_21D90B620();
}

id sub_21D90A088()
{
  v1 = [v0 parentAccountID];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 saveRequest];
    v4 = [v3 _trackedAccountChangeItemForObjectID_];

    if (v4)
    {
      v5 = [v0 saveRequest];
      v6 = [v5 store];

      v7 = [v4 storage];
      v8 = [objc_allocWithZone(MEMORY[0x277D44548]) initWithStore:v6 storage:v7];

      return v8;
    }
  }

  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE63C48);
  v11 = v0;
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [v11 objectID];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRSECreateRemindersInteractor#remListRepresentation: no account {objectID: %@}", v14, 0xCu);
    sub_21D0CF7E0(v15, &unk_27CE60070);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_21D90A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21DBFC0AC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21D90A3CC, 0, 0);
}

uint64_t sub_21D90A3CC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21DBFC0CC();
  v5 = sub_21D90BAA0(&qword_27CE63CC0, MEMORY[0x277D85928]);
  sub_21DBFC71C();
  sub_21D90BAA0(&qword_27CE63CC8, MEMORY[0x277D858F8]);
  sub_21DBFC0DC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21D90A55C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21D90A55C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D90A718, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21D90A718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D90A7E8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v5 = 0;
      (*(v3 + 16))(&v5, ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_21D90A888()
{
  v0 = sub_21DBF6AEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF6AFC();
  (*(v1 + 104))(v3, *MEMORY[0x277D45328], v0);
  v4 = sub_21DBF6ADC();
  (*(v1 + 8))(v3, v0);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v5 = sub_21DBFBD7C();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_21D18E678(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v19;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D44740](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 name];
      v12 = sub_21DBFA16C();
      v14 = v13;

      v19 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21D18E678((v15 > 1), v16 + 1, 1);
        v8 = v19;
      }

      ++v7;
      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D90AC24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D9054FC(a1, v4, v5, v6);
}

unint64_t sub_21D90ACE8()
{
  result = qword_27CE63C60;
  if (!qword_27CE63C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63C60);
  }

  return result;
}

uint64_t dispatch thunk of TTRSECreateRemindersInteractorType.fetchAllHashtagLabelsAsync()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1237C4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRSECreateRemindersInteractorActionContext.save(topLevelReminderIDs:subtaskIDByParentID:selectedReminderIDs:prefersUserActivityHiddenInRemindersList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21D1B795C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TTRSECreateRemindersInteractorSuggestionContext.fetchSuggestions()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D22C140;

  return v7(a1, a2);
}

void **assignWithCopy for TTRSECreateRemindersTerminationReason(void **a1, id *a2)
{
  v3 = *a2;
  v4 = *a2;
  v5 = *a1;
  *a1 = v3;

  return a1;
}

void **assignWithTake for TTRSECreateRemindersTerminationReason(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t type metadata accessor for ActionContext()
{
  result = qword_27CE63C90;
  if (!qword_27CE63C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D90B2F4()
{
  result = type metadata accessor for TTRExtensionContextExtractorResult();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void destroy for GroceryListCreationContext(uint64_t a1)
{

  v2 = *(a1 + 16);
}

void *sub_21D90B460(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for GroceryListCreationContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for GroceryListCreationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *sub_21D90B5E4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_21D909A10(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_21D90B620()
{
  v1 = sub_21DBFC0CC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_21DBFA84C();
  v0[5] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_21D90B710, v3, v2);
}

uint64_t sub_21D90B710()
{
  sub_21DBFC73C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_21D90B7DC;

  return sub_21D90A2CC(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21D90B7DC()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  v7 = *(v2 + 48);
  if (v0)
  {
    v8 = sub_21D90B974;
  }

  else
  {
    v8 = sub_21D90B9E0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21D90B974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D90B9E0()
{

  v1 = objc_allocWithZone(MEMORY[0x277D44790]);
  v2 = sub_21DBFA5DC();
  v3 = [v1 initWithSuggestedTitles:v2 isClassifiedAsRecipe:0];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_21D90BAA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D90BAE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D90BB5C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63CD0);
  v1 = __swift_project_value_buffer(v0, qword_27CE63CD0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSECreateRemindersPresenterCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRSECreateRemindersPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRSECreateRemindersPresenterCapability.suggestionSectionItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D97A914(v5 & 1, v2, v4, v3);
  v7 = v6;

  return v7;
}

uint64_t TTRSECreateRemindersPresenterCapability.isSuggestionFeedbackButtonVisible.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = sub_21D97AD40(v5 & 1, v2, v4, v3);

  return v6 & 1;
}

uint64_t TTRSECreateRemindersPresenterCapability.editingState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter);
  v4 = OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state;
  swift_beginAccess();
  a1[3] = type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState(0);
  a1[4] = &off_282ED2D00;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D90BFC8(v3 + v4, boxed_opaque_existential_0, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
}

uint64_t sub_21D90BFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TTRSECreateRemindersPresenterCapability.__allocating_init(interactor:attachmentThumbnailsManager:urlMetadataInteractor:contactsProvider:userActivityMetadataInterator:avatarProvider:geoService:undoManager:reminderEditingComponents:cellEditModeState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v69 = a8;
  v78 = a7;
  v82 = a6;
  v68 = a5;
  v77 = a4;
  v76 = a3;
  v80 = a10;
  v81 = a9;
  v79 = a13;
  v67 = a12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - v17;
  v19 = type metadata accessor for TTRRemindersListUndoContext();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = v13;
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_moduleState;
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  v25 = sub_21D0D852C(0x6552657461657243, 0xEF737265646E696DLL);
  v73 = v23;
  *(v23 + v24) = v25;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients) = 0;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) = 0;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = 0;
  v26 = (v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor);
  *v26 = a1;
  v26[1] = a2;
  v27 = *(v19 + 20);
  v28 = type metadata accessor for TTRListType(0);
  v29 = *(*(v28 - 8) + 56);
  v71 = v22;
  v29(v22 + v27, 1, 1, v28);
  *v22 = a11;
  v70 = type metadata accessor for TTRRemindersListUndoContext;
  sub_21D90BFC8(v22, v18, type metadata accessor for TTRRemindersListUndoContext);
  (*(v20 + 56))(v18, 0, 1, v19);
  type metadata accessor for UndoContextProvider(0);
  v30 = swift_allocObject();
  sub_21D0D523C(v18, v30 + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &qword_27CE59370);
  type metadata accessor for TTRSECreateRemindersItemDisplayUpdater();
  v31 = swift_allocObject();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D18);
  swift_allocObject();
  swift_unknownObjectRetain();
  v31[2] = sub_21DBF907C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D20);
  swift_allocObject();
  v31[3] = sub_21DBF907C();
  v31[4] = 0;
  sub_21D0D32E4(v79, &v87);

  v32 = sub_21D91B008(v30, v31, &v87, 0);
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;
  v34 = a1;
  swift_unknownObjectRetain();

  v35 = v32;
  v36 = v32;
  v37 = v30;
  v38 = sub_21D91B27C(sub_21D91B548, v33, v35, v30, v31);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  *(v39 + 24) = a2;
  v65 = v34;
  type metadata accessor for TTRSECreateRemindersEditingPresenter(0);
  v40 = swift_allocObject();
  *(v40 + 3) = 0;
  swift_unknownObjectWeakInit();
  v41 = OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  (*(*(v42 - 8) + 56))(&v40[v41], 1, 1, v42);
  *(v40 + 4) = sub_21D91B550;
  *(v40 + 5) = v39;
  *(v40 + 6) = v36;
  *(v40 + 7) = &off_282EC9F30;
  v66 = v37;
  *(v40 + 8) = v37;
  *(v40 + 9) = &off_282EDB578;
  v64 = v31;
  *(v40 + 10) = v31;
  *(v40 + 11) = &off_282ED8AE8;
  v63 = v38;
  *(v40 + 12) = v38;
  *(v40 + 13) = &off_282EC7FF0;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper();
  swift_allocObject();
  swift_unknownObjectRetain();

  v75 = v36;

  v43 = sub_21DBCEC2C(v67);

  *(v40 + 14) = v43;
  swift_beginAccess();
  *(v43 + 3) = &off_282ED2CE8;
  swift_unknownObjectWeakAssign();
  sub_21D0D32E4(v82, &v87);
  sub_21D0D32E4(v81, v86);
  sub_21D0D32E4(v80, v83);
  type metadata accessor for TTRRemindersListPresenterCapabilityCore();
  v44 = swift_allocObject();
  v44[3] = 0;
  swift_unknownObjectWeakInit();
  v44[4] = v36;
  v44[5] = &off_282EC9F18;
  v45 = v77;
  v44[6] = v76;
  v44[7] = v45;
  v44[8] = v68;
  sub_21D0D32E4(&v87, (v44 + 9));
  v46 = v69;
  v44[14] = v78;
  v44[15] = v46;
  v44[16] = v40;
  v44[17] = &off_282ED2CD8;
  sub_21D0D32E4(v86, (v44 + 18));
  sub_21D0D32E4(v83, (v44 + 23));
  v47 = v84;
  v48 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v49 = *(v48 + 96);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();

  v50 = v49(v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720);
  v51 = swift_allocObject();
  *(v51 + 16) = 2;
  *(v51 + 40) = 0u;
  *(v51 + 56) = 0u;
  *(v51 + 24) = 0;
  *(v51 + 32) = v50;
  swift_beginAccess();
  *(v51 + 16) = 0;
  v44[28] = v51;
  v52 = swift_allocObject();
  swift_weakInit();
  sub_21D59F07C(sub_21D5BB894, 0, sub_21D72E84C, v52);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(&v87);
  __swift_destroy_boxed_opaque_existential_0(v83);
  v53 = v73;
  *(v73 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core) = v44;
  v54 = v71;
  sub_21D90BFC8(v71, v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_undoContext, v70);
  v55 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v56 = v75;
  *v55 = v75;
  v55[1] = &off_282EC9EB0;
  v57 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_displayUpdater);
  v58 = v64;
  *v57 = v64;
  v57[1] = &off_282ED8AD0;
  v59 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingSessionProvider);
  *v59 = v63;
  v59[1] = &off_282EC7FD8;
  v60 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter);
  *v60 = v40;
  v60[1] = &off_282ED2C98;
  *(v56 + 64) = &off_282EDB548;
  swift_unknownObjectWeakAssign();
  *(v40 + 3) = &off_282EDB558;
  swift_unknownObjectWeakAssign();
  v87 = v58[2];
  sub_21D0D0F1C(&qword_27CE63D40, &qword_27CE63D18);

  v87 = sub_21DBF920C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D48);
  sub_21D0D0F1C(&qword_27CE63D50, &qword_27CE63D48);
  v61 = sub_21DBF91AC();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v82);

  sub_21D91BA78(v54, type metadata accessor for TTRRemindersListUndoContext);
  *(v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = v61;

  return v53;
}

void *TTRSECreateRemindersPresenterCapability.init(interactor:attachmentThumbnailsManager:urlMetadataInteractor:contactsProvider:userActivityMetadataInterator:avatarProvider:geoService:undoManager:reminderEditingComponents:cellEditModeState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a8;
  v77 = a7;
  v81 = a6;
  v67 = a5;
  v76 = a4;
  v75 = a3;
  v79 = a10;
  v80 = a9;
  v78 = a13;
  v66 = a12;
  v73 = *v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v19 = type metadata accessor for TTRRemindersListUndoContext();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13[3] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_moduleState;
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  v24 = sub_21D0D852C(0x6552657461657243, 0xEF737265646E696DLL);
  v72 = v13;
  *(v13 + v23) = v24;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = 0;
  v25 = (v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor);
  *v25 = a1;
  v25[1] = a2;
  v26 = *(v19 + 20);
  v27 = type metadata accessor for TTRListType(0);
  v28 = *(*(v27 - 8) + 56);
  v70 = v22;
  v28(v22 + v26, 1, 1, v27);
  *v22 = a11;
  v69 = type metadata accessor for TTRRemindersListUndoContext;
  sub_21D90BFC8(v22, v18, type metadata accessor for TTRRemindersListUndoContext);
  (*(v20 + 56))(v18, 0, 1, v19);
  type metadata accessor for UndoContextProvider(0);
  v29 = swift_allocObject();
  sub_21D0D523C(v18, v29 + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &qword_27CE59370);
  type metadata accessor for TTRSECreateRemindersItemDisplayUpdater();
  v30 = swift_allocObject();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D18);
  swift_allocObject();
  swift_unknownObjectRetain();
  v30[2] = sub_21DBF907C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D20);
  swift_allocObject();
  v30[3] = sub_21DBF907C();
  v30[4] = 0;
  sub_21D0D32E4(v78, &v86);

  v31 = sub_21D91B008(v29, v30, &v86, 0);
  v32 = swift_allocObject();
  v33 = a1;
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  swift_unknownObjectRetain();

  v34 = v31;
  v35 = v31;
  v36 = v29;
  v37 = sub_21D91B27C(sub_21D92C400, v32, v34, v29, v30);
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  *(v38 + 24) = a2;
  v64 = v33;
  type metadata accessor for TTRSECreateRemindersEditingPresenter(0);
  v39 = swift_allocObject();
  *(v39 + 3) = 0;
  swift_unknownObjectWeakInit();
  v40 = OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  (*(*(v41 - 8) + 56))(&v39[v40], 1, 1, v41);
  *(v39 + 4) = sub_21D92C404;
  *(v39 + 5) = v38;
  *(v39 + 6) = v35;
  *(v39 + 7) = &off_282EC9F30;
  v65 = v36;
  *(v39 + 8) = v36;
  *(v39 + 9) = &off_282EDB578;
  v63 = v30;
  *(v39 + 10) = v30;
  *(v39 + 11) = &off_282ED8AE8;
  v62 = v37;
  *(v39 + 12) = v37;
  *(v39 + 13) = &off_282EC7FF0;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper();
  swift_allocObject();
  swift_unknownObjectRetain();

  v74 = v35;

  v42 = sub_21DBCEC2C(v66);

  *(v39 + 14) = v42;
  swift_beginAccess();
  *(v42 + 3) = &off_282ED2CE8;
  swift_unknownObjectWeakAssign();
  sub_21D0D32E4(v81, &v86);
  sub_21D0D32E4(v80, v85);
  sub_21D0D32E4(v79, v82);
  type metadata accessor for TTRRemindersListPresenterCapabilityCore();
  v43 = swift_allocObject();
  v43[3] = 0;
  swift_unknownObjectWeakInit();
  v43[4] = v35;
  v43[5] = &off_282EC9F18;
  v44 = v76;
  v43[6] = v75;
  v43[7] = v44;
  v43[8] = v67;
  sub_21D0D32E4(&v86, (v43 + 9));
  v45 = v68;
  v43[14] = v77;
  v43[15] = v45;
  v43[16] = v39;
  v43[17] = &off_282ED2CD8;
  sub_21D0D32E4(v85, (v43 + 18));
  sub_21D0D32E4(v82, (v43 + 23));
  v46 = v83;
  v47 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v48 = *(v47 + 96);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();

  v49 = v48(v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720);
  v50 = swift_allocObject();
  *(v50 + 16) = 2;
  *(v50 + 40) = 0u;
  *(v50 + 56) = 0u;
  *(v50 + 24) = 0;
  *(v50 + 32) = v49;
  swift_beginAccess();
  *(v50 + 16) = 0;
  v43[28] = v50;
  v51 = swift_allocObject();
  swift_weakInit();
  sub_21D59F07C(sub_21D5BB894, 0, sub_21D92C408, v51);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_destroy_boxed_opaque_existential_0(&v86);
  __swift_destroy_boxed_opaque_existential_0(v82);
  v52 = v72;
  *(v72 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core) = v43;
  v53 = v70;
  sub_21D90BFC8(v70, v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_undoContext, v69);
  v54 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v55 = v74;
  *v54 = v74;
  v54[1] = &off_282EC9EB0;
  v56 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_displayUpdater);
  v57 = v63;
  *v56 = v63;
  v56[1] = &off_282ED8AD0;
  v58 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingSessionProvider);
  *v58 = v62;
  v58[1] = &off_282EC7FD8;
  v59 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter);
  *v59 = v39;
  v59[1] = &off_282ED2C98;
  *(v55 + 64) = &off_282EDB548;
  swift_unknownObjectWeakAssign();
  *(v39 + 3) = &off_282EDB558;
  swift_unknownObjectWeakAssign();
  v86 = v57[2];
  sub_21D0D0F1C(&qword_27CE63D40, &qword_27CE63D18);

  v86 = sub_21DBF920C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D48);
  sub_21D0D0F1C(&qword_27CE63D50, &qword_27CE63D48);
  v60 = sub_21DBF91AC();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v81);

  sub_21D91BA78(v53, type metadata accessor for TTRRemindersListUndoContext);
  *(v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = v60;

  return v52;
}

uint64_t sub_21D90D5F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63DE8);
  type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  sub_21D0D0F1C(&qword_27CE63DF0, &qword_27CE63DE8);
  sub_21D92C334(&qword_27CE63DF8, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  v2 = sub_21DBFA49C();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v3 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(a1, v2, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D90D764@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D90BFC8(a1, v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if ((EnumCaseMultiPayload - 1) >= 3)
    {
      *a2 = *v6;
    }

    else
    {
      sub_21D91BAD8(v6, v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D91BAD8(v9, a2, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }
  }

  type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.setUp(withInitialReminders:recipeCardIngredients:)(Swift::OpaquePointer withInitialReminders, Swift::OpaquePointer_optional recipeCardIngredients)
{
  v3 = v2;
  rawValue = recipeCardIngredients.value._rawValue;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v9 + 8))(ObjectType, v9))
  {
    v12 = v11;
    v13 = swift_getObjectType();
    v14 = (*(v12 + 40))(v13, v12);
    v16 = v15;
    swift_unknownObjectRelease();
    if (!rawValue)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (!rawValue)
    {
      goto LABEL_7;
    }
  }

  if (rawValue[2])
  {
    v17 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72) = v17;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients) = v17;
  if (v14)
  {
    v18 = sub_21D97B494(0, MEMORY[0x277D84F90], 0);
    v20 = v19;
    v21 = v18 & 0x101;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_21D643F10(withInitialReminders._rawValue, v21, v19, v22, v23, &v28);

    sub_21D24A814(v21, v20);
    sub_21D0CF7E0(&v28, &unk_27CE60D80);
    v24 = sub_21DBFA89C();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    sub_21DBFA84C();

    swift_unknownObjectRetain();
    v25 = sub_21DBFA83C();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v3;
    v26[5] = v14;
    v26[6] = v16;
    sub_21D1B5178(0, 0, v8, &unk_21DC316D8, v26);

    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_21D643F10(withInitialReminders._rawValue, 0, 0, 0, 0, &v28);

    sub_21D24A814(0, 0);
    sub_21D0CF7E0(&v28, &unk_27CE60D80);
  }
}

uint64_t sub_21D90DC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21DBFA84C();
  v6[3] = sub_21DBFA83C();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_21D0EF998;

  return sub_21D90DCE4(a5, a6);
}

uint64_t sub_21D90DCE4(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = sub_21DBFA84C();
  v3[18] = sub_21DBFA83C();
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 8) + **(a2 + 8));
  v6 = swift_task_alloc();
  v3[19] = v6;
  *v6 = v3;
  v6[1] = sub_21D90DE30;

  return v8(ObjectType, a2);
}

uint64_t sub_21D90DE30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  v5 = sub_21DBFA7CC();
  if (v1)
  {
    v6 = sub_21D90E488;
  }

  else
  {
    v6 = sub_21D90DF90;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21D90DF90()
{
  v60 = v0;
  v1 = *(v0 + 160);

  v2 = &selRef_setDisplayText_;
  v3 = [v1 suggestedTitles];
  v4 = sub_21DBFA5EC();

  v5 = *(v4 + 16);
  if (v5)
  {
    v53 = v0;
    v57 = MEMORY[0x277D84F90];
    sub_21D18F60C(0, v5, 0);
    v6 = v57;
    v7 = objc_opt_self();
    v8 = (v4 + 40);
    v9 = &selRef_keyboardType;
    do
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      sub_21DBF8E0C();
      v12 = [v7 v9[419]];
      v57 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v12;
        sub_21D18F60C((v13 > 1), v14 + 1, 1);
        v9 = &selRef_keyboardType;
        v12 = v16;
        v6 = v57;
      }

      *(v6 + 16) = v14 + 1;
      v15 = (v6 + 24 * v14);
      v15[4] = v12;
      v15[5] = v10;
      v15[6] = v11;
      v8 += 2;
      --v5;
    }

    while (v5);

    v0 = v53;
    v2 = &selRef_setDisplayText_;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v17 = *(v0 + 160);
  v18 = sub_21D97B494(1, v6, [v17 isClassifiedAsRecipe]);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [v17 isClassifiedAsRecipe];
  v26 = *(v0 + 160);
  if (v25)
  {
    v27 = [*(v0 + 160) v2[366]];
    v28 = sub_21DBFA5EC();

    v29 = *(v28 + 16);

    v30 = v29 != 0;
  }

  else
  {

    v30 = 0;
  }

  v31 = *(*(v0 + 128) + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  sub_21D24A7C4(v18 & 0x101, v20);
  sub_21D64D878(v31, v18 & 0x101, v20, v22, v24);
  sub_21D24A814(v18 & 0x101, v20);
  sub_21D24A814(v18 & 0x101, v20);
  if (v30)
  {
    v32 = *(*(v0 + 128) + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
    ObjectType = swift_getObjectType();
    if ((*(v32 + 8))(ObjectType, v32))
    {
      v35 = v34;
      v36 = swift_getObjectType();
      (*(v35 + 24))(&v54, v36, v35);
      v38 = v54;
      v37 = v55;
      v39 = v56;
      v57 = v54;
      v58 = v55;
      v59 = v56;
      TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter((v0 + 56));

      v40 = *(v0 + 80);
      if (v40)
      {
        v41 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        (*(v41 + 112))(v40, v41);
        v42 = *(v0 + 40);
        if (v42)
        {
          v43 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
          v44 = (*(v43 + 16))(v42, v43);
          __swift_destroy_boxed_opaque_existential_0(v0 + 16);
          __swift_destroy_boxed_opaque_existential_0(v0 + 56);
          if (v44)
          {
LABEL_26:
            swift_unknownObjectRelease();
            goto LABEL_27;
          }

LABEL_20:
          if ((*(*(v0 + 128) + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) & 1) == 0)
          {
            if (qword_27CE56E70 != -1)
            {
              swift_once();
            }

            v47 = sub_21DBF84BC();
            __swift_project_value_buffer(v47, qword_27CE63CD0);
            v48 = sub_21DBF84AC();
            v49 = sub_21DBFAEDC();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              *v50 = 0;
              _os_log_impl(&dword_21D0C9000, v48, v49, "TTRSECreateRemindersPresenterCapability: input is classified as recipe with suggested ingredients, switch to a grocery list if available", v50, 2u);
              MEMORY[0x223D46520](v50, -1, -1);
            }

            (*(v35 + 64))(v36, v35);
          }

          goto LABEL_26;
        }

        __swift_destroy_boxed_opaque_existential_0(v0 + 56);
        v45 = &qword_27CE5A6E8;
        v46 = v0 + 16;
      }

      else
      {
        v45 = &qword_27CE59DC0;
        v46 = v0 + 56;
      }

      sub_21D0CF7E0(v46, v45);
      goto LABEL_20;
    }
  }

LABEL_27:
  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_21D90E488()
{
  v17 = v0;

  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE63CD0);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRSECreateRemindersPresenterCapability: failed to fetch suggestions {error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0[16] + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  sub_21D24A7C4(0, 0);
  sub_21D64D878(v13, 0, 0, 0, 0);
  sub_21D24A814(0, 0);
  sub_21D24A814(0, 0);
  v14 = v0[1];

  return v14();
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.handleInteractorChanges(details:)(RemindersUICore::TTRSECreateRemindersModelChangeDetails details)
{
  if (*details)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60);
    v8 = *(type metadata accessor for TTRSECreateRemindersViewModel.Item(0) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D00;
    swift_storeEnumTagMultiPayload();
    sub_21D8977FC(v10);
    swift_setDeallocating();
    sub_21D91BA78(v10 + v9, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    swift_deallocClassInstance();
    v11 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);
    v3 = *(v11 + 24);
    v4 = *(v11 + 32);
  }

  ObjectType = swift_getObjectType();
  v12 = v3;
  v6 = *(v4 + 8);

  TTRTreeContentsQueryable.allItems.getter(ObjectType, v6);
  v7 = sub_21DBFC12C();

  v12 = 1;
  sub_21D897284(&v12, v7);
}

uint64_t TTRSECreateRemindersPresenterCapability.reminderViewModel(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D90BFC8(a1, v12, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D91BAD8(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_21D91BAD8(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  swift_storeEnumTagMultiPayload();
  v17 = swift_getEnumCaseMultiPayload();
  if ((v17 - 2) >= 4)
  {
    if (v17)
    {
      sub_21D91BAD8(v15, v9, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRSECreateRemindersPresenterCapability.reminderViewModel(forRemindersListItem:)(v9, a2);
      v20 = type metadata accessor for TTRRemindersListViewModel.Item;
      v21 = v9;
    }

    else
    {
      sub_21D91BAD8(v15, v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D90F59C(v6, a2);
      v20 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v21 = v6;
    }

    return sub_21D91BA78(v21, v20);
  }

  else
  {
    v18 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t TTRSECreateRemindersPresenterCapability.reminderViewModel(forRemindersListItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v49[-v11];
  v13 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v19 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v49[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D90BFC8(a1, v12, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 4)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        v52 = a1;
        v22 = a2;
        goto LABEL_10;
      }

LABEL_7:
      swift_storeEnumTagMultiPayload();
      return (*(v19 + 56))(a2, 1, 1, v56);
    }

LABEL_6:
    sub_21D91BA78(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

  v52 = a1;
  v22 = a2;
LABEL_10:
  sub_21D91BAD8(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  a2 = v22;
  if (swift_getEnumCaseMultiPayload() >= 3)
  {
    return (*(v19 + 56))(a2, 1, 1, v56);
  }

  sub_21D91BAD8(v15, v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v24 = v52;
  sub_21D9181C4(&v57);
  if (*(&v58 + 1))
  {
    sub_21D91BA78(v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v60[0] = v57;
    v60[1] = v58;
    v60[2] = v59;
    v25 = v54;
    sub_21D918358(v60, v24, v54);
    sub_21D4ECC40(v60);
  }

  else
  {
    sub_21D0CF7E0(&v57, &qword_27CE5D168);
    sub_21D90BFC8(v24, v6, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v53 + 56))(v6, 0, 1, v7);
    v26 = *v18;
    sub_21D91BA78(v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v25 = v54;
    TTRRemindersListViewModel.Reminder.init(item:objectID:)(v6, v26, v54);
  }

  sub_21D90BFC8(v24, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v27 = swift_getEnumCaseMultiPayload();
  sub_21D91BA78(v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v51 = a2;
  if (v27 == 4)
  {
    if (qword_280D15960 != -1)
    {
      swift_once();
    }

    v28 = word_280D15968;
    v29 = HIBYTE(word_280D15968);
    v30 = byte_280D1596A;
    LODWORD(v53) = word_280D15980;
    v50 = HIBYTE(word_280D15980);
    v31 = qword_280D1BAA8;
    sub_21DBF8E0C();
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF516C();
    v34 = v33;

    v35 = v56;
    v25 = v54;
    v36 = &v54[*(v56 + 24)];
    sub_21DBF8E0C();

    *v36 = v28;
    v36[1] = v29;
    v36[2] = v30;
    *(v36 + 1) = v32;
    *(v36 + 2) = v34;
    v36[24] = v53;
    v36[25] = v50;
  }

  else
  {
    if (qword_27CE569D8 != -1)
    {
      swift_once();
    }

    v37 = word_27CE5DB98;
    v38 = HIBYTE(word_27CE5DB98);
    v39 = byte_27CE5DB9A;
    v41 = qword_27CE5DBA0;
    v40 = unk_27CE5DBA8;
    LODWORD(v54) = word_27CE5DBB0;
    LODWORD(v53) = HIBYTE(word_27CE5DBB0);
    v35 = v56;
    v42 = &v25[*(v56 + 24)];
    sub_21DBF8E0C();

    *v42 = v37;
    v42[1] = v38;
    v42[2] = v39;
    *(v42 + 1) = v41;
    *(v42 + 2) = v40;
    v42[24] = v54;
    v42[25] = v53;
  }

  v43 = &v25[*(v35 + 52)];
  if (*(v43 + 3))
  {
    v44 = *(*(v55 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core) + 224);
    swift_beginAccess();
    v43[48] = *(v44 + 16) & 1;
  }

  v45 = v52;
  sub_21D918568(v25, v52, sub_21D92C40C, TTRRemindersListPresenterCapabilityCore.decorateWithImageAttachments(_:for:viewScale:thumbnailDidLoad:));
  v46 = swift_allocObject();
  swift_weakInit();

  TTRRemindersListPresenterCapabilityCore.decorateWithLinkAttachments(_:for:linkDidLoad:)(v25, v45, sub_21D92C40C, v46);

  v47 = swift_allocObject();
  swift_weakInit();

  TTRRemindersListPresenterCapabilityCore.decorateWithPerson(_:for:personDidLoad:)(v25, v45, sub_21D91BB40, v47);

  sub_21D918568(v25, v45, sub_21D92C40C, TTRRemindersListPresenterCapabilityCore.decorateWithAppLink(_:for:viewScale:appLinkDidLoad:));
  sub_21D918694(v25, v45);
  v48 = v51;
  sub_21D90BFC8(v25, v51, type metadata accessor for TTRRemindersListViewModel.Reminder);
  (*(v19 + 56))(v48, 0, 1, v35);
  return sub_21D91BA78(v25, type metadata accessor for TTRRemindersListViewModel.Reminder);
}

uint64_t sub_21D90F59C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v42 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  if (*(v17 + 32))
  {
    v18 = *(v17 + 48);
    if (*(v18 + 16))
    {
      v44 = v13;
      v45 = a2;
      v19 = *a1;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v20 = sub_21D17E07C(v19);
      if (v21)
      {
        v22 = *(v18 + 56) + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v42[0] = v19;
        v42[1] = v24;
        v25 = *(v22 + 16);
        v43 = v23;
        sub_21DBF8E0C();

        sub_21D90BFC8(a1, v16, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v26 = v44;
        swift_storeEnumTagMultiPayload();
        sub_21D90BFC8(v16, v7, type metadata accessor for TTRRemindersListViewModel.Item);
        (*(v12 + 56))(v7, 0, 1, v26);
        TTRRemindersListViewModel.Reminder.init(item:objectID:)(v7, v42[0], v10);
        v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v44 = v25;
        v28 = sub_21DBFA12C();
        v29 = [v27 initWithString_];

        v30 = *(v8 + 28);
        *&v10[v30] = v29;
        if (qword_27CE569E0 != -1)
        {
          swift_once();
        }

        v31 = word_27CE5DBB8;
        v32 = HIBYTE(word_27CE5DBB8);
        v33 = byte_27CE5DBBA;
        v35 = qword_27CE5DBC0;
        v34 = unk_27CE5DBC8;
        v36 = word_27CE5DBD0;
        v37 = HIBYTE(word_27CE5DBD0);
        sub_21DBF8E0C();

        sub_21D91BA78(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        v38 = &v10[*(v8 + 24)];

        *v38 = v31;
        v38[1] = v32;
        v38[2] = v33;
        *(v38 + 1) = v35;
        *(v38 + 2) = v34;
        v38[24] = v36;
        v38[25] = v37;
        v39 = v45;
        sub_21D90BFC8(v10, v45, type metadata accessor for TTRRemindersListViewModel.Reminder);
        (*(v46 + 56))(v39, 0, 1, v8);
        return sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.Reminder);
      }

      a2 = v45;
    }
  }

  v41 = *(v46 + 56);

  return v41(a2, 1, 1, v8, v14);
}

uint64_t TTRSECreateRemindersPresenterCapability.reminderChangeItem(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v3 + 8) + 16))(a1, ObjectType);
}

void TTRSECreateRemindersPresenterCapability.requestSetPendingMoveTargetList(_:)(char **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v4 - 8);
  v82 = v76 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v76 - v10;
  v91 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = v76 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v76 - v18;
  v20 = *a1;
  v87 = *(a1 + 8);
  if (qword_27CE56E70 != -1)
  {
LABEL_61:
    swift_once();
  }

  v21 = sub_21DBF84BC();
  v22 = __swift_project_value_buffer(v21, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v23 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 8))(ObjectType, v23);
  v89 = v26;
  v90 = v25;
  if (v25)
  {
    v80 = v22;
    v81 = v14;
    v85 = v20;
    v27 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
    swift_beginAccess();
    if (*(v27 + 40))
    {
      v28 = *(v27 + 48);
      v29 = swift_getObjectType();
      v30 = *(v28 + 24);
      swift_unknownObjectRetain();
      v30(v29, v28);
      swift_unknownObjectRelease();
    }

    _s15RemindersUICore17TTRDeferredActionC5drain6reasonySS_tF_0();
    v31 = swift_getObjectType();
    v32 = *(v89 + 24);
    v84 = v31;
    v32(&v98);
    v34 = v98;
    v33 = v99;
    v35 = v100;
    v95 = v98;
    v96 = v99;
    v97 = v100;
    TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v93);
    if (!v94)
    {
      sub_21D0CF7E0(&v93, &qword_27CE59DC0);

LABEL_18:
      v46 = v85;
LABEL_19:
      v101 = v46;
      v102 = v87;
      (*(v89 + 56))(&v101, v84);
      swift_unknownObjectRelease();
      *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) = 1;
      return;
    }

    sub_21D0D0FD0(&v93, &v101);

    v36 = v103;
    v37 = v104;
    __swift_project_boxed_opaque_existential_1(&v101, v103);
    v38 = (*(v37 + 72))(v36, v37);
    v39 = [v38 supportsSubtasks];

    if (!v39)
    {
      goto LABEL_17;
    }

    if (v87)
    {
      v40 = [v85 accountCapabilities];
    }

    else
    {
      v44 = [v85 account];
      v40 = [v44 capabilities];
    }

    v45 = [v40 supportsSubtasks];

    if (v45)
    {
LABEL_17:
      __swift_destroy_boxed_opaque_existential_0(&v101);
      goto LABEL_18;
    }

    v78 = v2;
    v77 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);

    v47 = TTRRemindersListTreeViewModel.remindersWithSubtasks.getter();
    v2 = v47[2];
    if (v2)
    {
      v48 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v76[1] = v47;
      v83 = v48;
      v49 = v47 + v48;
      v92 = *(v12 + 72);
      v79 = (v12 + 56);
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D90BFC8(v49, v19, type metadata accessor for TTRRemindersListViewModel.Item);
        v50 = *(v88 + 80);

        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
        swift_beginAccess();
        if (!*(*(v50 + 24) + 16))
        {
          break;
        }

        sub_21D181E00(v8, v51);
        if ((v52 & 1) == 0)
        {
          break;
        }

        swift_endAccess();

        sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
        Strong = swift_weakLoadStrong();

        if (!Strong)
        {
          goto LABEL_30;
        }

        v54 = *(*Strong + 120);
        swift_beginAccess();
        v55 = Strong + v54;
        v56 = v86;
        sub_21D90BFC8(v55, v86, type metadata accessor for TTRRemindersListViewModel.Item);

        v57 = v81;
        sub_21D90BFC8(v56, v81, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21D91BAD8(v57, v11, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v58 = 0;
        }

        else
        {
          sub_21D91BA78(v57, type metadata accessor for TTRRemindersListViewModel.Item);
          v58 = 1;
        }

        v67 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v68 = *(v67 - 8);
        (*(v68 + 56))(v11, v58, 1, v67);
        sub_21D91BA78(v86, type metadata accessor for TTRRemindersListViewModel.Item);
        if ((*(v68 + 48))(v11, 1, v67) == 1)
        {
          goto LABEL_31;
        }

        sub_21D0CF7E0(v11, &qword_27CE5A3A8);
        v69 = v82;
        sub_21D90BFC8(v19, v82, type metadata accessor for TTRRemindersListViewModel.Item);
        (*v79)(v69, 0, 1, v91);

        v60 = sub_21D263398(v69);

        sub_21D0CF7E0(v69, &unk_27CE5CD80);
LABEL_32:
        v20 = *(v60 + 16);
        v61 = *(v12 + 16);
        v14 = &v20[v61];
        if (__OFADD__(v61, v20))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v14 <= *(v12 + 24) >> 1)
        {
          if (!*(v60 + 16))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v61 <= v14)
          {
            v63 = &v20[v61];
          }

          else
          {
            v63 = v61;
          }

          v12 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v63, 1, v12);
          if (!*(v60 + 16))
          {
LABEL_22:

            if (v20)
            {
              goto LABEL_59;
            }

            goto LABEL_23;
          }
        }

        if ((*(v12 + 24) >> 1) - *(v12 + 16) < v20)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v64 = *(v12 + 16);
          v65 = __OFADD__(v64, v20);
          v66 = &v20[v64];
          if (v65)
          {
            __break(1u);
            return;
          }

          *(v12 + 16) = v66;
        }

LABEL_23:
        sub_21D91BA78(v19, type metadata accessor for TTRRemindersListViewModel.Item);
        v49 += v92;
        if (!--v2)
        {

          goto LABEL_50;
        }
      }

      swift_endAccess();
      sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_30:
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      (*(*(v59 - 8) + 56))(v11, 1, 1, v59);
LABEL_31:
      sub_21D0CF7E0(v11, &qword_27CE5A3A8);
      v60 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_50:
    v2 = v78;
    v46 = v85;
    v70 = v77;
    if (*(v12 + 16))
    {
      sub_21DBF8E0C();
      v71 = sub_21DBF84AC();
      v72 = sub_21DBFAEDC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = *(v12 + 16);

        _os_log_impl(&dword_21D0C9000, v71, v72, "TTRSECreateRemindersPresenterCapability: outdent subtasks before changing list {count: %ld}", v73, 0xCu);
        MEMORY[0x223D46520](v73, -1, -1);
      }

      else
      {
      }

      v74 = *(v70 + 16);

      v75 = sub_21D285D24(v12, 1, v74);

      v46 = v85;
      if (!v75)
      {
        goto LABEL_57;
      }

      sub_21D64A230(v75);
    }

LABEL_57:

    __swift_destroy_boxed_opaque_existential_0(&v101);
    goto LABEL_19;
  }

  v92 = sub_21DBF84AC();
  v41 = sub_21DBFAEBC();
  if (os_log_type_enabled(v92, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_21D0C9000, v92, v41, "TTRSECreateRemindersPresenterCapability: cannot set list; missing actionContext", v42, 2u);
    MEMORY[0x223D46520](v42, -1, -1);
  }

  v43 = v92;
}

uint64_t TTRSECreateRemindersPresenterCapability.requestSave(selectedItemIDs:)(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = sub_21DBF619C();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = sub_21DBF613C();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v2[36] = swift_task_alloc();
  type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v2[37] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D58);
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D60);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D68);
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2[70] = v7;
  v2[71] = *(v7 - 8);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  sub_21DBFA84C();
  v2[76] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v2[77] = v9;
  v2[78] = v8;

  return MEMORY[0x2822009F8](sub_21D910B98, v9, v8);
}

uint64_t sub_21D910B98()
{
  v217 = v0;
  if (qword_27CE56E70 != -1)
  {
    goto LABEL_124;
  }

  while (1)
  {
    v1 = v0[25];
    v2 = sub_21DBF84BC();
    v0[79] = __swift_project_value_buffer(v2, qword_27CE63CD0);
    v3 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    v0[80] = v6;
    if (!v6)
    {

      v22 = sub_21DBF84AC();
      v23 = sub_21DBFAEBC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_21D0C9000, v22, v23, "TTRSECreateRemindersPresenterCapability: cannot save; missing actionContext", v24, 2u);
        MEMORY[0x223D46520](v24, -1, -1);
      }

      goto LABEL_12;
    }

    v190 = v7;
    v8 = *(*(v0[25] + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
    swift_beginAccess();
    if (*(v8 + 40))
    {
      v9 = *(v8 + 48);
      v10 = swift_getObjectType();
      v11 = *(v9 + 24);
      swift_unknownObjectRetain();
      v11(v10, v9);
      swift_unknownObjectRelease();
    }

    v12 = v0[71];
    v13 = v0[70];
    v14 = v0[69];
    v15 = v0[25];
    _s15RemindersUICore17TTRDeferredActionC5drain6reasonySS_tF_0();
    v0[20] = v3;
    v16 = *(v15 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);

    TTRRemindersListTreeViewModel.primarySectionItem.getter(v14);

    v17 = *(v12 + 48);
    if (v17(v14, 1, v13) == 1)
    {
      v18 = v0[69];

      sub_21D0CF7E0(v18, &unk_27CE5CD80);
      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAEBC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_21D0C9000, v19, v20, "TTRSECreateRemindersPresenterCapability: cannot save; missing primarySectionItem", v21, 2u);
        MEMORY[0x223D46520](v21, -1, -1);
      }

      swift_unknownObjectRelease();
LABEL_12:

      v25 = v0[1];

      return v25();
    }

    v27 = v0[75];
    v28 = v0[71];
    v29 = v0[70];
    v30 = v0[68];
    v31 = v0[55];
    v32 = v0[39];
    v200 = v0[38];
    sub_21D91BAD8(v0[69], v27, type metadata accessor for TTRRemindersListViewModel.Item);
    v192 = v16;
    v33 = *(v16 + 16);
    v202 = v17;
    v34 = *(v33 + 24);
    v35 = *(v33 + 32);
    v213 = swift_getObjectType();
    v0[21] = v34;
    sub_21D90BFC8(v27, v30, type metadata accessor for TTRRemindersListViewModel.Item);
    v209 = *(v28 + 56);
    v209(v30, 0, 1, v29);
    v36 = *(v35 + 8);
    v37 = v202;

    swift_unknownObjectRetain();
    v38 = TTRTreeContentsQueryable.childrenCollection(of:)(v30, v213, v36);
    v191 = v39;
    v194 = v40;
    sub_21D0CF7E0(v30, &unk_27CE5CD80);
    swift_unknownObjectRelease();
    v206 = (v32 + 56);
    v212 = (v31 + 48);
    v214 = (v31 + 56);
    v41 = (v32 + 48);
    v196 = v33;

    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F98];
    v45 = &unk_21DC31708;
    v195 = v38;
    v197 = (v32 + 48);
LABEL_17:
    v193 = v43;
    v0[83] = v43;
    v201 = v44;
    v0[82] = v44;
    v199 = v42;
    v0[81] = v42;
    v47 = v192;
    if (v38 == v191)
    {
      break;
    }

LABEL_18:
    if (v191 < v195)
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v38 < v195)
    {
      goto LABEL_122;
    }

    if (v38 < v191)
    {
      v48 = v0[70];
      v49 = v0[67];
      v216[0] = v38;
      v194(v216);
      v209(v49, 0, 1, v48);
      v198 = v38 + 1;
      v41 = v197;
      goto LABEL_23;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    swift_once();
  }

  while (1)
  {
    v209(v0[67], 1, 1, v0[70]);
    v198 = v191;
LABEL_23:
    v50 = v0[70];
    v51 = v0[66];
    sub_21D0D523C(v0[67], v51, &unk_27CE5CD80);
    v52 = 1;
    if (v37(v51, 1, v50) != 1)
    {
      v53 = v0[47];
      sub_21D91BAD8(v0[66], v0[74], type metadata accessor for TTRRemindersListViewModel.Item);
      v54 = *(v196 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v53);
      swift_beginAccess();
      v56 = *(v54 + 24);
      if (*(v56 + 16) && (v57 = sub_21D181E00(v0[47], v55), (v58 & 1) != 0))
      {
        v59 = v0[47];
        v60 = *(*(v56 + 56) + 8 * v57);
        swift_endAccess();

        sub_21D91BA78(v59, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v61 = *(*v60 + 128);
        swift_beginAccess();
        v62 = *(v60 + v61);

        if (v62)
        {
          v63 = v0[52];
          v64 = *(v200 + 48);
          sub_21D90BFC8(v0[74], v63, type metadata accessor for TTRRemindersListViewModel.Item);
          v65 = [*(v62 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) objectID];

          v66 = 0;
          *(v63 + v64) = v65;
        }

        else
        {
          v66 = 1;
        }

        v41 = v197;
      }

      else
      {
        swift_endAccess();
        v67 = v0[47];

        sub_21D91BA78(v67, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v66 = 1;
      }

      v68 = v0[74];
      (*v206)(v0[52], v66, 1, v0[38]);
      sub_21D91BA78(v68, type metadata accessor for TTRRemindersListViewModel.Item);
      v52 = 0;
    }

    v69 = v0[54];
    v70 = v0[52];
    v211 = *v214;
    (*v214)(v70, v52, 1, v69);
    v210 = *v212;
    if ((*v212)(v70, 1, v69) == 1)
    {
      v75 = v0[53];
      v76 = v0[54];
      sub_21D0CF7E0(v0[52], &qword_27CE63D60);
      v211(v75, 1, 1, v76);
      goto LABEL_38;
    }

    v71 = v0[62];
    v72 = v0[38];
    sub_21D0D523C(v0[52], v71, &qword_27CE63D68);
    v73 = (*v41)(v71, 1, v72);
    v74 = v0[62];
    if (v73 != 1)
    {
      break;
    }

    sub_21D0CF7E0(v74, &qword_27CE63D68);
    v38 = v198;
    if (v198 != v191)
    {
      goto LABEL_18;
    }
  }

  v77 = v0[53];
  v78 = v0[54];
  sub_21D0D523C(v74, v77, &qword_27CE63D68);
  v211(v77, 0, 1, v78);
LABEL_38:
  v79 = v0[54];
  v80 = v0[51];
  sub_21D0D523C(v0[53], v80, &qword_27CE63D60);
  if (v210(v80, 1, v79) == 1)
  {
    v205 = *v206;
    (*v206)(v0[63], 1, 1, v0[38]);
    v81 = *v41;
  }

  else
  {
    v82 = v0[60];
    v83 = v0[61];
    v84 = v0[38];
    sub_21D0D523C(v0[51], v83, &qword_27CE63D68);
    sub_21D0D3954(v83, v82, &qword_27CE63D68);
    v85 = *v41;
    result = (*v41)(v82, 1, v84);
    if (result == 1)
    {
LABEL_126:
      __break(1u);
      return result;
    }

    v81 = v85;
    v86 = v0[63];
    v87 = v0[61];
    v88 = v0[38];
    sub_21D0D523C(v0[60], v86, &qword_27CE63D58);
    sub_21D0CF7E0(v87, &qword_27CE63D68);
    v205 = *v206;
    (*v206)(v86, 0, 1, v88);
  }

  v89 = v0[63];
  if (v81(v89, 1, v0[38]) == 1)
  {
    goto LABEL_113;
  }

  v208 = v81;
  v91 = v0[43];
  v90 = v0[44];
  v92 = *(v200 + 48);
  v93 = *(v89 + v92);
  sub_21D91BAD8(v89, v90, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v90 + v92) = v93;
  v94 = sub_21D0D3954(v90, v91, &qword_27CE63D58);
  MEMORY[0x223D42D80](v94);
  if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  v95 = v0[70];
  v96 = v0[68];
  v98 = v0[43];
  v97 = v0[44];
  sub_21DBFA6CC();
  v193 = v0[20];
  sub_21D91BA78(v98, type metadata accessor for TTRRemindersListViewModel.Item);
  v99 = *(v192 + 16);
  v101 = *(v99 + 24);
  v100 = *(v99 + 32);
  v102 = swift_getObjectType();
  v0[23] = v101;
  sub_21D90BFC8(v97, v96, type metadata accessor for TTRRemindersListViewModel.Item);
  v209(v96, 0, 1, v95);
  v103 = *(v100 + 8);

  swift_unknownObjectRetain();
  v104 = TTRTreeContentsQueryable.childrenCollection(of:)(v96, v102, v103);
  v47 = v105;
  v203 = v106;
  sub_21D0CF7E0(v96, &unk_27CE5CD80);
  swift_unknownObjectRelease();
  v204 = v99;

  v107 = v104;
  v207 = v104;
  if (v104 == v47)
  {
    while (1)
    {
      v209(v0[65], 1, 1, v0[70]);
      v107 = v47;
LABEL_51:
      v110 = v0[70];
      v111 = v0[64];
      sub_21D0D523C(v0[65], v111, &unk_27CE5CD80);
      v112 = 1;
      if (v37(v111, 1, v110) != 1)
      {
        break;
      }

LABEL_82:
      v144 = v0[54];
      v145 = v0[49];
      v211(v145, v112, 1, v144);
      if (v210(v145, 1, v144) == 1)
      {
        v150 = v45;
        sub_21D0CF7E0(v0[49], &qword_27CE63D60);
        v151 = 1;
        goto LABEL_89;
      }

      v146 = v0[58];
      v147 = v0[38];
      sub_21D0D523C(v0[49], v146, &qword_27CE63D68);
      v148 = v208(v146, 1, v147);
      v149 = v0[58];
      if (v148 != 1)
      {
        sub_21D0D523C(v149, v0[50], &qword_27CE63D68);
        v151 = 0;
        v150 = v45;
LABEL_89:
        v152 = v0[54];
        v153 = v0[50];
        v154 = v0[48];
        v155 = 1;
        v211(v153, v151, 1, v152);
        sub_21D0D523C(v153, v154, &qword_27CE63D60);
        v45 = v150;
        if (v210(v154, 1, v152) != 1)
        {
          v156 = v0[56];
          v157 = v0[57];
          v158 = v0[38];
          sub_21D0D523C(v0[48], v157, &qword_27CE63D68);
          sub_21D0D3954(v157, v156, &qword_27CE63D68);
          result = v208(v156, 1, v158);
          if (result == 1)
          {
            __break(1u);
            goto LABEL_126;
          }

          v159 = v0[57];
          sub_21D0D523C(v0[56], v0[59], &qword_27CE63D58);
          sub_21D0CF7E0(v159, &qword_27CE63D68);
          v155 = 0;
        }

        v160 = v0[59];
        v161 = v0[38];
        v205(v160, v155, 1, v161);
        if (v208(v160, 1, v161) == 1)
        {
          v46 = v0[44];

          sub_21D0CF7E0(v46, &qword_27CE63D58);

          v44 = v201;
          v41 = v197;
          v38 = v198;
          v43 = v193;
          v42 = v199;
          goto LABEL_17;
        }

        v162 = v0[59];
        v163 = v0[44];
        v164 = v0[41];
        v165 = v0[42];
        v166 = v0[40];
        v167 = *(v200 + 48);
        v168 = *(v162 + v167);
        sub_21D91BAD8(v162, v165, type metadata accessor for TTRRemindersListViewModel.Item);
        *(v165 + v167) = v168;
        sub_21D0D3954(v163, v164, &qword_27CE63D58);
        v169 = *(v164 + *(v200 + 48));
        sub_21D0D3954(v165, v166, &qword_27CE63D58);
        sub_21D0D0E88(v199);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v216[0] = v201;
        v172 = sub_21D17E07C(v169);
        v173 = v201[2];
        v174 = (v171 & 1) == 0;
        v175 = v173 + v174;
        if (__OFADD__(v173, v174))
        {
          __break(1u);
          goto LABEL_121;
        }

        v176 = v171;
        if (v201[3] >= v175)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v171 & 1) == 0)
            {
              goto LABEL_100;
            }
          }

          else
          {
            sub_21D221214();
            v201 = v216[0];
            if ((v176 & 1) == 0)
            {
              goto LABEL_100;
            }
          }
        }

        else
        {
          sub_21D217430(v175, isUniquelyReferenced_nonNull_native);
          sub_21D0D8CF0(0, &qword_280D17880);
          v201 = v216[0];
          v177 = sub_21D17E07C(v169);
          if ((v176 & 1) != (v178 & 1))
          {

            return sub_21DBFC70C();
          }

          v172 = v177;
          if (v176)
          {
            goto LABEL_101;
          }

LABEL_100:
          sub_21D33572C(v172, v169, MEMORY[0x277D84F90], v201);
          v179 = v169;
        }

LABEL_101:
        v180 = (v201[7] + 8 * v172);
        MEMORY[0x223D42D80]();
        if (*((*v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        v182 = v0[41];
        v181 = v0[42];
        v183 = v0[40];
        sub_21DBFA6CC();

        sub_21D0CF7E0(v181, &qword_27CE63D58);
        sub_21D91BA78(v183, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D91BA78(v182, type metadata accessor for TTRRemindersListViewModel.Item);
        v199 = sub_21D15779C;
        v37 = v202;
        v45 = &unk_21DC31708;
        goto LABEL_85;
      }

      sub_21D0CF7E0(v149, &qword_27CE63D68);
LABEL_85:
      v104 = v207;
      if (v107 != v47)
      {
        goto LABEL_46;
      }
    }

    v113 = v0[73];
    v114 = v0[72];
    sub_21D91BAD8(v0[64], v113, type metadata accessor for TTRRemindersListViewModel.Item);
    v115 = *(v204 + 80);
    sub_21D90BFC8(v113, v114, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        v124 = v0[72];
        if (EnumCaseMultiPayload == 6)
        {
          v125 = v0[46];
          v126 = 1;
        }

        else
        {
          v125 = v0[46];
          v126 = 2;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (EnumCaseMultiPayload == 9)
          {
            v119 = v0[46];
            v120 = 3;
          }

          else
          {
            v119 = v0[46];
            v120 = 5;
          }

          *v119 = v120;
          goto LABEL_68;
        }

        v124 = v0[72];
        v125 = v0[46];
        v126 = 4;
      }

      *v125 = v126;
      swift_storeEnumTagMultiPayload();

      sub_21D91BA78(v124, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_75;
    }

    if ((EnumCaseMultiPayload - 2) < 3)
    {
      v117 = v0[46];
      v118 = v0[36];
      sub_21D91BAD8(v0[72], v118, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v37 = v202;
      sub_21D91BAD8(v118, v117, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_68:
      swift_storeEnumTagMultiPayload();

LABEL_75:
      swift_beginAccess();
      v131 = *(v115 + 24);
      if (*(v131 + 16) && (v132 = sub_21D181E00(v0[46], v130), (v133 & 1) != 0))
      {
        v134 = v0[46];
        v135 = *(*(v131 + 56) + 8 * v132);
        swift_endAccess();

        sub_21D91BA78(v134, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v136 = *(*v135 + 128);
        swift_beginAccess();
        v137 = *(v135 + v136);

        if (v137)
        {
          v138 = v0[49];
          v139 = *(v200 + 48);
          sub_21D90BFC8(v0[73], v138, type metadata accessor for TTRRemindersListViewModel.Item);
          v140 = [*(v137 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) objectID];

          v141 = 0;
          *(v138 + v139) = v140;
LABEL_81:
          v143 = v0[73];
          v205(v0[49], v141, 1, v0[38]);
          sub_21D91BA78(v143, type metadata accessor for TTRRemindersListViewModel.Item);
          v112 = 0;
          goto LABEL_82;
        }
      }

      else
      {
        swift_endAccess();
        v142 = v0[46];

        sub_21D91BA78(v142, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      v141 = 1;
      goto LABEL_81;
    }

    if (EnumCaseMultiPayload >= 2)
    {
      v127 = v0[72];
      v128 = v0[46];

      sub_21D91BA78(v127, type metadata accessor for TTRRemindersListViewModel.Item);
      *v128 = 0;
LABEL_74:
      swift_storeEnumTagMultiPayload();
      goto LABEL_75;
    }

    v121 = v0[37];
    v122 = v0[34];
    sub_21D91BAD8(v0[72], v121, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D90BFC8(v121, v122, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v123 = swift_getEnumCaseMultiPayload();

    if (((1 << v123) & 0x17E) != 0)
    {
      sub_21D91BA78(v0[34], type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    else if (((1 << v123) & 0x81) == 0)
    {
      v185 = v0[34];
      v184 = v0[35];
      sub_21D91BA78(v0[37], type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      *v184 = *v185;
      swift_storeEnumTagMultiPayload();
      goto LABEL_73;
    }

    v129 = v0[37];
    sub_21D90BFC8(v129, v0[35], type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D91BA78(v129, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
LABEL_73:
    sub_21D91BAD8(v0[35], v0[46], type metadata accessor for TTRRemindersListViewModel.SectionID);
    goto LABEL_74;
  }

LABEL_46:
  if (v47 < v104)
  {
    __break(1u);
    goto LABEL_111;
  }

  if (v107 < v104)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v107 < v47)
  {
    v108 = v0[70];
    v109 = v0[65];
    v216[0] = v107;
    v203(v216);
    v209(v109, 0, 1, v108);
    ++v107;
    goto LABEL_51;
  }

LABEL_112:
  __break(1u);
LABEL_113:

  if (*(v47 + 32) && (*(v47 + 25) & 1) != 0)
  {
    v186 = 1;
  }

  else
  {
    v186 = *(v0[25] + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients);
  }

  v187 = swift_getObjectType();
  v215 = (*(v190 + 80) + **(v190 + 80));
  v188 = swift_task_alloc();
  v0[84] = v188;
  *v188 = v0;
  v188[1] = sub_21D912510;
  v189 = v0[24];

  return v215(v193, v201, v189, v186, v187, v190);
}