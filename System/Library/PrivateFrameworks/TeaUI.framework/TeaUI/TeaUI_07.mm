uint64_t BlueprintCompositionalListItemSeparatorOptions.init(topSeparatorInsets:bottomSeparatorInsets:bottomSeparatorVisibility:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4] = a7;
  a2[5] = a8;
  a2[6] = a9;
  a2[7] = a10;
  v11 = a2 + *(type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0) + 24);

  return sub_1D7E9F98C(a1, v11);
}

uint64_t sub_1D7E9F98C(uint64_t a1, uint64_t a2)
{
  sub_1D7E9F1D8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7E9F9F0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D818E924();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6(v17, v18, v16);

  return (*(v12 + 8))(v16, v10);
}

void sub_1D7E9FB60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v9 = sub_1D818E8E4();
    [a1 *a5];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7E9FC30(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v10 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D818E924();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v20 = OUTLINED_FUNCTION_4_8();
  a6(v20);

  return (*(v12 + 8))(v16, v10);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  ObjectType = swift_getObjectType();
  v42 = ObjectType;
  OUTLINED_FUNCTION_9_30();
  v44 = v6;
  sub_1D7E5951C(0, v7, v8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v42 - v10;
  sub_1D7E5951C(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v47.receiver = v3;
  v47.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v47, sel_copyWithZone_, a1, v12);
  v16 = &v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_8_4();
  v17 = *v16;
  v18 = v16[8];
  v19 = &v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_56();
  *v19 = v17;
  v19[8] = v18;
  v20 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
  OUTLINED_FUNCTION_8_4();
  LOBYTE(v20) = v3[v20];
  v21 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
  OUTLINED_FUNCTION_56();
  v15[v21] = v20;
  v22 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_8_4();
  LOBYTE(v22) = v3[v22];
  v23 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_56();
  v15[v23] = v22;
  v24 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  OUTLINED_FUNCTION_8_4();
  sub_1D7EA2620(&v3[v24], v14, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  v25 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  OUTLINED_FUNCTION_15_2();
  sub_1D7EA2670(v14, &v15[v25], qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_8_4();
  sub_1D7EA2620(&v3[v26], v46, &qword_1EDBB44D0, sub_1D7FDADC0);
  v27 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_15_2();
  sub_1D7EA2670(v46, &v15[v27], &qword_1EDBB44D0, sub_1D7FDADC0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
  OUTLINED_FUNCTION_8_4();
  sub_1D7E7B91C(&v3[v28], v46);
  v29 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
  OUTLINED_FUNCTION_15_2();
  sub_1D7E5C8DC(v46, &v15[v29]);
  swift_endAccess();
  v30 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
  OUTLINED_FUNCTION_8_4();
  LOBYTE(v30) = v3[v30];
  v31 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
  OUTLINED_FUNCTION_56();
  v15[v31] = v30;
  v32 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
  OUTLINED_FUNCTION_8_4();
  LOBYTE(v32) = v3[v32];
  v33 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
  OUTLINED_FUNCTION_56();
  v15[v33] = v32;
  v34 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  OUTLINED_FUNCTION_8_4();
  LOBYTE(v34) = v3[v34];
  v35 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  OUTLINED_FUNCTION_56();
  v15[v35] = v34;
  OUTLINED_FUNCTION_12_36(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame);
  OUTLINED_FUNCTION_12_36(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame);
  OUTLINED_FUNCTION_16_31(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier);

  OUTLINED_FUNCTION_16_31(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier);

  v36 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  OUTLINED_FUNCTION_8_4();
  v38 = v43;
  v37 = v44;
  sub_1D7EA2620(&v3[v36], v43, &qword_1EDBBC690, v44);
  v39 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  OUTLINED_FUNCTION_15_2();
  sub_1D7EA2670(v38, &v15[v39], &qword_1EDBBC690, v37);
  result = swift_endAccess();
  v41 = v45;
  v45[3] = v42;
  *v41 = v15;
  return result;
}

void BlueprintCollectionViewDelegate.collectionView(_:willDisplay:forItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_97_1();
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v69 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_38_0(v10);
  sub_1D7EA0824();
  v67 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_1D7E3D564();
  v17 = OUTLINED_FUNCTION_50(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  OUTLINED_FUNCTION_3_7();
  v25 = *(v0 + *(v24 + 152));
  LOBYTE(v74[0]) = 3;
  v70 = v4;
  BlueprintImpressionManager.startImpression(at:view:triggerSource:)(v4, v6, v74);
  v66 = v1;
  if ([v1 allowsMultipleSelection])
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_20();
  v27 = v2 + *(v26 + 192);
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 8))(ObjectType, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v7);
  }

  v31 = v69;
  v32 = v68;
  (*(v69 + 16))(v20, v70, v7);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v7);
  v36 = *(v67 + 48);
  sub_1D7E54838(v23, v15);
  sub_1D7E54838(v20, v15 + v36);
  OUTLINED_FUNCTION_43_0(v15, 1, v7);
  if (!v39)
  {
    sub_1D7E54838(v15, v32);
    OUTLINED_FUNCTION_43_0(v15 + v36, 1, v7);
    if (!v39)
    {
      v44 = v15 + v36;
      v45 = v65;
      (*(v31 + 32))(v65, v44, v7);
      sub_1D8008590();
      OUTLINED_FUNCTION_4_8();
      LODWORD(v69) = sub_1D8190ED4();
      v46 = *(v31 + 8);
      v46(v45, v7);
      OUTLINED_FUNCTION_43_8();
      sub_1D7E54AA4(v20, v47);
      v48 = OUTLINED_FUNCTION_73();
      sub_1D7E54AA4(v48, v49);
      v46(v32, v7);
      sub_1D7E54AA4(v15, v45);
      if ((v69 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_6_49();
    sub_1D7E54AA4(v20, v40);
    sub_1D7E54AA4(v23, v25);
    v41 = OUTLINED_FUNCTION_111();
    v42(v41);
LABEL_13:
    OUTLINED_FUNCTION_12_26();
    sub_1D7E54AA4(v15, v43);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_6_49();
  sub_1D7E54AA4(v20, v37);
  sub_1D7E54AA4(v23, v25);
  OUTLINED_FUNCTION_43_0(v15 + v36, 1, v7);
  if (!v39)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_114();
  sub_1D7E54AA4(v15, v38);
LABEL_15:
  if (([v6 isSelected] & 1) == 0)
  {
    [v6 setSelected_];
    v50 = sub_1D818E8E4();
    [v66 selectItemAtIndexPath:v50 animated:0 scrollPosition:0];
  }

LABEL_17:
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_8_4();
  swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_0_20();
  v52 = *(v2 + *(v51 + 264));
  type metadata accessor for BlueprintViewportTransitionManager();
  OUTLINED_FUNCTION_1_63();
  swift_allocObject();
  v53 = OUTLINED_FUNCTION_158();
  v55 = sub_1D7EA2E4C(v53, v54, v52);
  v73 = v6;
  sub_1D7E0A1A8(0, &qword_1EDBB3110);
  sub_1D7E0631C(0, qword_1EDBB8580);

  v56 = v6;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v71, v74);
    sub_1D7F357DC(v74, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

  else
  {
    v72 = 0;
    memset(v71, 0, sizeof(v71));
    sub_1D7E25DBC(v71, &qword_1EDBB8578, qword_1EDBB8580, &protocol descriptor for ViewControllerBackable);
  }

  OUTLINED_FUNCTION_0_20();
  v58 = *(v57 + 224);
  OUTLINED_FUNCTION_8_4();
  v59 = *(v2 + v58);
  if (v59)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v56))
    {
      v61 = v60;
      v62 = v56;
      v63 = v59;
      OUTLINED_FUNCTION_54_1();
      BlueprintViewportMonitor.add(observer:scrollView:)();
      v64 = swift_getObjectType();
      (*(v61 + 48))(v63, v55, v64, v61);
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7EA0824()
{
  if (!qword_1EDBBC680)
  {
    sub_1D7E54930(255, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBC680);
    }
  }
}

id BlueprintLayoutCollectionLayoutAttributes.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  *v2 = 1;
  v2[8] = 3;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait] = 2;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge] = 3;
  v3 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  v5 = type metadata accessor for CollectionViewSupplementaryKind.Source();
  __swift_storeEnumTagSinglePayload(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin] = 0;
  v6 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData];
  *v6 = 0u;
  v6[1] = 0u;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing] = 0;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected] = 0;
  v7 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  v13 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(&v0[v12], 1, 1, v13);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

void BlueprintImpressionManager.startImpression(at:view:triggerSource:)(uint64_t a1, void *a2, char *a3)
{
  v327 = a3;
  v314 = a2;
  v325 = a1;
  v4 = *v3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  OUTLINED_FUNCTION_36_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36_6();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_47();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_1_47();
  v10 = swift_getAssociatedConformanceWitness();
  v332 = AssociatedTypeWitness;
  v333 = v8;
  v334 = AssociatedConformanceWitness;
  v335 = v10;
  active = type metadata accessor for BlueprintActiveImpressionSection();
  OUTLINED_FUNCTION_1_65(active, &v318);
  v289 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v14);
  v293 = type metadata accessor for BlueprintImpressionManager.SectionContext();
  v15 = sub_1D8191E84();
  v16 = OUTLINED_FUNCTION_1_65(v15, &v321);
  v291 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v19);
  v332 = AssociatedTypeWitness;
  v333 = v8;
  v334 = AssociatedConformanceWitness;
  v335 = v10;
  v20 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_107();
  v21 = sub_1D8191E84();
  OUTLINED_FUNCTION_1_65(v21, &v325);
  v295 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v24);
  v305 = v20;
  OUTLINED_FUNCTION_32_5();
  v298 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v28);
  v332 = AssociatedTypeWitness;
  v333 = v8;
  v334 = AssociatedConformanceWitness;
  v335 = v10;
  v29 = type metadata accessor for BlueprintActiveImpression();
  OUTLINED_FUNCTION_1_65(v29, &v328);
  v303 = v30;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v32);
  v33 = sub_1D818E754();
  v34 = OUTLINED_FUNCTION_1_65(v33, v331);
  v307 = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v39);
  v321 = v6;
  v320 = v5;
  v40 = type metadata accessor for BlueprintImpressionManager.Session();
  OUTLINED_FUNCTION_1_65(v40, &v334);
  v309 = v41;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v43);
  v44 = sub_1D818E994();
  v45 = OUTLINED_FUNCTION_1_65(v44, &v337);
  v311[1] = v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_14_1(v47);
  v48 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_56_0();
  v49 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v51 = v50;
  OUTLINED_FUNCTION_44();
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v276 - v54;
  v323 = v48;
  v317 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v276 - v60;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v62);
  v313 = AssociatedTypeWitness;
  v332 = AssociatedTypeWitness;
  v333 = v8;
  v315 = v8;
  v63 = AssociatedConformanceWitness;
  v64 = v10;
  v334 = v63;
  v335 = v10;
  v65 = type metadata accessor for Blueprint();
  v66 = OUTLINED_FUNCTION_1_65(v65, &v338);
  v319 = v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_28_0();
  v70 = (v68 - v69);
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v276 - v73;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v76);
  v77 = v4;
  v78 = *v327;
  if (v78 >= 0 != *(v3 + *(v77 + 152)))
  {
    v326 = v3;
    if (sub_1D7E481B0())
    {
      LODWORD(v327) = v78;
      v284 = v70;
      v283 = v74;
      v79 = v324;
      v80 = v320;
      BlueprintProviderType.blueprint.getter(v321, v320);
      v81 = v322;
      Blueprint.item(indexPath:)();
      v82 = v323;
      OUTLINED_FUNCTION_43_0(v55, 1, v323);
      if (v101)
      {
        OUTLINED_FUNCTION_10_26();
        v83(v79, v81);
        (*(v51 + 8))(v55, v49);
        return;
      }

      OUTLINED_FUNCTION_48_5();
      v85 = v316;
      (*(v84 + 32))(v316, v55, v82);
      v86 = BlueprintItem.isImpressionable.getter(v82);
      if ((v86 & 1) == 0)
      {
        (*(v81 + 8))(v85, v82);
LABEL_15:
        OUTLINED_FUNCTION_10_26();
        v113 = v324;
LABEL_26:
        v129 = v322;
LABEL_27:
        v112(v113, v129);
        return;
      }

      OUTLINED_FUNCTION_59();
      v87 = v313;
      v332 = v321;
      v333 = v313;
      OUTLINED_FUNCTION_50_4();
      v88 = type metadata accessor for BlueprintImpressionManager.Context();
      OUTLINED_FUNCTION_0_87();
      sub_1D7E2491C(v89, v90);
      OUTLINED_FUNCTION_54_2();
      v281 = v88;
      v282 = v91;
      sub_1D8190E24();
      v92 = v330;
      if (v330)
      {
        swift_endAccess();
        OUTLINED_FUNCTION_41_4();
        v94 = *(v93 + 136);
        OUTLINED_FUNCTION_8_4();
        v95 = v323;
        (*(v81 + 16))(v61, v92 + v94, v323);
        v96 = v85;
        v97 = BlueprintItem.identifier.getter();
        v99 = v98;
        v280 = *(v81 + 8);
        (v280)(v61, v95);
        v101 = v97 == BlueprintItem.identifier.getter() && v99 == v100;
        if (v101)
        {
        }

        else
        {
          v102 = OUTLINED_FUNCTION_76_3();

          if ((v102 & 1) == 0)
          {
            OUTLINED_FUNCTION_41_4();
            Strong = swift_unknownObjectWeakLoadStrong();
            OUTLINED_FUNCTION_72_3();
            LOBYTE(v332) = v104;
            v105 = OUTLINED_FUNCTION_40_5();
            BlueprintImpressionManager.endImpression(at:view:triggerSource:)(v105, Strong, v106, v107, v108, v109, v110, v111, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287);

            v87 = v313;
            v85 = v96;
            v80 = v320;
            goto LABEL_17;
          }
        }

        OUTLINED_FUNCTION_41_4();
        swift_unknownObjectWeakAssign();
        v127 = v324;
        sub_1D7EA261C(v324, v96);
        OUTLINED_FUNCTION_34_6();
        OUTLINED_FUNCTION_61_3();
        v128();
        v336 = v92;
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_74_4();

        OUTLINED_FUNCTION_78_1();
        sub_1D8190E34();
        swift_endAccess();

        OUTLINED_FUNCTION_70_3();
        v280();
        OUTLINED_FUNCTION_10_26();
        v113 = v127;
        goto LABEL_26;
      }

      swift_endAccess();
LABEL_17:
      v114 = v326;
      OUTLINED_FUNCTION_59();
      v115 = *(v114 + 56);
      v332 = v321;
      v333 = v87;
      OUTLINED_FUNCTION_50_4();
      type metadata accessor for BlueprintImpressionManager.StagedContext();
      OUTLINED_FUNCTION_54_2();
      v280 = v116;
      sub_1D8190E24();
      v117 = v330;
      v279 = v64;
      if (v330)
      {
        swift_endAccess();
        OUTLINED_FUNCTION_8_4();
        v118 = OUTLINED_FUNCTION_28_8();
        v119 = v323;
        v120(v118);
        v121 = BlueprintItem.identifier.getter();
        v123 = v122;
        v308 = *(v81 + 8);
        v308(v115, v119);
        if (v121 == BlueprintItem.identifier.getter() && v123 == v124)
        {
        }

        else
        {
          v126 = sub_1D8192634();

          if ((v126 & 1) == 0)
          {
            OUTLINED_FUNCTION_35_8();
            OUTLINED_FUNCTION_74_4();
            sub_1D8190D74();
            swift_endAccess();

            OUTLINED_FUNCTION_70_3();
            (v308)();
            goto LABEL_15;
          }
        }

        swift_unknownObjectWeakAssign();
        sub_1D7EA261C(v324, v85);
        OUTLINED_FUNCTION_38_6();
        OUTLINED_FUNCTION_61_3();
        v131();
        v336 = v117;
        v130 = v326;
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_84_2();
        OUTLINED_FUNCTION_74_4();

        sub_1D8190E34();
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v130 = v326;
      }

      OUTLINED_FUNCTION_53_4();
      v133 = *(v132 + 136);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_46_7();
      v134 = v130 + v133;
      v135 = v311[0];
      v136(v311[0], v134, v310);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v81 + 8))(v85, v323);
        goto LABEL_15;
      }

      v137 = v135[1];
      v309 = *v135;
      v310 = v137;
      v138 = OUTLINED_FUNCTION_51_4(&v339);
      v139 = v130;
      v140 = BlueprintItem.impressionTraits.getter(v138);
      sub_1D7EA3DD8(v314, v140);
      v142 = v141;

      BlueprintItem.impressionManagerOptions.getter(v117);
      if (v334 == 255)
      {
        OUTLINED_FUNCTION_3_52();
        v144 = (v130 + *(v143 + 168));
        v277 = v144[1];
        v278 = *(v144 + 16);
      }

      else
      {
        v278 = v334;
        v277 = v333;
        v144 = &v332;
      }

      v145 = *v144;
      sub_1D7E0D158();
      v308 = *(v146 + 48);
      if (v145 > v142)
      {
        if (qword_1EDBBB328 != -1)
        {
          OUTLINED_FUNCTION_4_36();
        }

        v147 = sub_1D81919B4();
        OUTLINED_FUNCTION_10_17(v147, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_1D81A1B70;
        OUTLINED_FUNCTION_3_52();
        v150 = (v139 + *(v149 + 160));
        v151 = *v150;
        v152 = v150[1];
        v153 = MEMORY[0x1E69E6158];
        *(v154 + 56) = MEMORY[0x1E69E6158];
        v155 = sub_1D7E13BF4();
        *(v148 + 64) = v155;
        *(v148 + 32) = v151;
        *(v148 + 40) = v152;
        sub_1D8190DB4();
        v156 = v323;
        v157 = v316;
        v158 = BlueprintItem.visualDescription.getter(v323);
        *(v148 + 96) = v153;
        *(v148 + 104) = v155;
        *(v148 + 72) = v158;
        *(v148 + 80) = v159;
        *(v148 + 136) = MEMORY[0x1E69E7DE0];
        *(v148 + 144) = sub_1D7EA41AC();
        *(v148 + 112) = v142;
        sub_1D818FD44();

        OUTLINED_FUNCTION_34_6();
        OUTLINED_FUNCTION_61_3();
        v160();
        v161 = v319;
        v162 = v284;
        v163 = v324;
        (*(v319 + 16))(v284, v324, v322);
        v164 = v317;
        v165 = v300;
        (*(v317 + 16))(v300, v157, v156);
        OUTLINED_FUNCTION_26_7();
        v167 = *(v166 - 256);
        v168 = v167;
        v330 = sub_1D7EA4D60(v162, v165, v309, v310, v167, &v332);
        OUTLINED_FUNCTION_35_8();
        sub_1D8190E14();
        sub_1D8190E34();
        swift_endAccess();
        (*(v164 + 8))(v157, v156);
        (*(v161 + 8))(v163, v322);
        v169 = v306;
        goto LABEL_41;
      }

      if (qword_1EDBBB328 != -1)
      {
        OUTLINED_FUNCTION_4_36();
      }

      v171 = sub_1D81919B4();
      LODWORD(v300) = v171;
      OUTLINED_FUNCTION_10_17(v171, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_1D81A1B70;
      OUTLINED_FUNCTION_3_52();
      v174 = (v139 + *(v173 + 160));
      v175 = *v174;
      v176 = v174[1];
      v177 = MEMORY[0x1E69E6158];
      *(v178 + 56) = MEMORY[0x1E69E6158];
      v179 = sub_1D7E13BF4();
      *(v172 + 64) = v179;
      *(v172 + 32) = v175;
      *(v172 + 40) = v176;
      sub_1D8190DB4();
      v180 = v323;
      v181 = BlueprintItem.visualDescription.getter(v323);
      *(v172 + 96) = v177;
      *(v172 + 104) = v179;
      *(v172 + 72) = v181;
      *(v172 + 80) = v182;
      *(v172 + 136) = MEMORY[0x1E69E7DE0];
      *(v172 + 144) = sub_1D7EA41AC();
      *(v172 + 112) = v142;
      sub_1D818FD44();

      OUTLINED_FUNCTION_38_6();
      v183 = OUTLINED_FUNCTION_83_1();
      v300 = v184;
      v284 = v185;
      v185(v183);
      OUTLINED_FUNCTION_38_6();
      v186 = v299;
      v187(v299, v85, v180);
      v188 = v301;
      sub_1D818E744();
      OUTLINED_FUNCTION_72_3();
      LODWORD(v327) = v189 & 0x7F;
      LOBYTE(v330) = v189 & 0x7F;
      OUTLINED_FUNCTION_26_7();
      v191 = *(v190 - 256);
      v192 = v191;
      v193 = v310;
      sub_1D8190DB4();
      v194 = sub_1D7EA4200(v172, v186, v188, &v330, v309, v193, v191, &v332);
      OUTLINED_FUNCTION_34_6();
      v196(*(v195 - 256), v325, v318);
      v330 = v194;
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_56_0();
      v197 = v282;
      sub_1D8190E14();

      sub_1D8190E34();
      swift_endAccess();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_56_0();
      sub_1D8190E14();
      sub_1D8190D74();
      swift_endAccess();

      sub_1D7EA3F14(v314);
      OUTLINED_FUNCTION_72_3();
      LOBYTE(v332) = v198;
      OUTLINED_FUNCTION_65_5();
      v325 = v194;
      sub_1D7EA44EC(v199, v200, v201, v202, v203, v204);
      v205 = swift_unknownObjectWeakLoadStrong();
      v206 = v321;
      if (v205)
      {
        v207 = *(v139 + 32);
        ObjectType = swift_getObjectType();
        (*(v207 + 56))(v139, v197, v206, v313, v315, v80, v63, v279, ObjectType, v207);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_3_52();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_56_0();
      type metadata accessor for BlueprintImpressionManagerProcessor();
      sub_1D8190DB4();
      v209 = sub_1D8191324();
      v330 = v209;
      OUTLINED_FUNCTION_87_0();
      v210 = sub_1D8191414();
      v211 = v323;
      if (v209 != v210)
      {
        do
        {
          OUTLINED_FUNCTION_87_0();
          v222 = sub_1D81913E4();
          sub_1D81913A4();
          if (v222)
          {
          }

          else
          {
            sub_1D8192204();
          }

          sub_1D8191454();
          sub_1D81251C0();

          OUTLINED_FUNCTION_87_0();
        }

        while (v330 != sub_1D8191414());
      }

      v212 = v316;
      BlueprintItem.identifier.getter();
      v213 = v302;
      v214 = v322;
      v215 = v324;
      v216 = v324;
      Blueprint.section(forItem:)();

      v217 = v305;
      OUTLINED_FUNCTION_43_0(v213, 1, v305);
      if (v101)
      {

        OUTLINED_FUNCTION_40_5();

        OUTLINED_FUNCTION_14_15();
        v218(v197, v304);
        OUTLINED_FUNCTION_14_15();
        v219(v212, v211);
        OUTLINED_FUNCTION_10_26();
        v220(v215, v214);
        OUTLINED_FUNCTION_14_15();
        v221(v213, v296);
        v169 = v306;
      }

      else
      {
        OUTLINED_FUNCTION_65_5();
        v223 = OUTLINED_FUNCTION_28_8();
        v224(v223, v213, v217);
        v225 = BlueprintSection.isImpressionable.getter();
        v169 = v306;
        if (v225)
        {
          v226 = BlueprintSection.identifier.getter();
          v228 = v227;
          v229 = v326;
          OUTLINED_FUNCTION_59();
          v328 = v226;
          v329 = v228;
          OUTLINED_FUNCTION_48_5();
          v230 = v293;
          sub_1D8190E24();
          v231 = v230;

          swift_endAccess();
          OUTLINED_FUNCTION_43_0(v211, 1, v230);
          if (v101)
          {
            v232 = OUTLINED_FUNCTION_11_23();
            v233(v232, v292);
            OUTLINED_FUNCTION_48_5();
            sub_1D818E744();
            v234 = BlueprintSection.identifier.getter();
            v236 = v235;
            v237 = *(v307 + 16);
            v238 = OUTLINED_FUNCTION_51_4(v312);
            v237(v238, v211, v169);
            v239 = v237;
            OUTLINED_FUNCTION_72_3();
            LOBYTE(v330) = v240;
            v241 = v288;
            sub_1D7EB82CC(v229, &v330, v288);
            __swift_storeEnumTagSinglePayload(v241, 0, 1, v231);
            v328 = v234;
            v329 = v236;
            OUTLINED_FUNCTION_15_2();
            sub_1D8190E14();
            sub_1D8190E34();
            swift_endAccess();
            v242 = OUTLINED_FUNCTION_51_4(v311);
            v284(v242, v324, v322);
            OUTLINED_FUNCTION_38_6();
            v243 = OUTLINED_FUNCTION_28_8();
            v244(v243, v297, v305);
            v239(v286, v294, v169);
            OUTLINED_FUNCTION_72_3();
            LOBYTE(v330) = v245;
            v246 = v279;
            OUTLINED_FUNCTION_65_5();
            v247 = v326;
            OUTLINED_FUNCTION_78();
            v248 = v313;
            v249 = v315;
            sub_1D7EB83A4(v250, v251, v252, v253, v309, v310, v254);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v255 = *(v247 + 32);
              v256 = swift_getObjectType();
              (*(v255 + 64))(v247, v236, v321, v248, v249, v80, v63, v246, v256, v255);
              OUTLINED_FUNCTION_40_5();

              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_40_5();
            }

            v170 = v311[0];
            OUTLINED_FUNCTION_14_15();
            v269(v236, v290);
            (*(v307 + 8))(v294, v169);
            OUTLINED_FUNCTION_14_15();
            v270(v297, v305);
            v271 = OUTLINED_FUNCTION_12_20();
            v272(v271);
            OUTLINED_FUNCTION_14_15();
            v273 = OUTLINED_FUNCTION_62_3();
            v274(v273);
            OUTLINED_FUNCTION_10_26();
            v275(v324, v322);
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_40_5();

          OUTLINED_FUNCTION_14_15();
          v261(v216, v305);
          v262 = OUTLINED_FUNCTION_12_20();
          v263(v262);
          OUTLINED_FUNCTION_14_15();
          v264 = OUTLINED_FUNCTION_62_3();
          v265(v264);
          OUTLINED_FUNCTION_10_26();
          v266(v215, v214);
          v267 = OUTLINED_FUNCTION_11_23();
          v268(v267, v292);
LABEL_41:
          v170 = v311[0];
LABEL_42:
          OUTLINED_FUNCTION_14_15();
          v113 = v308 + v170;
LABEL_63:
          v129 = v169;
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_40_5();

        (*(v197 + 8))(v216, v217);
        v257 = OUTLINED_FUNCTION_12_20();
        v258(v257);
        OUTLINED_FUNCTION_14_15();
        v259(v316, v211);
        OUTLINED_FUNCTION_10_26();
        v260(v215, v214);
      }

      OUTLINED_FUNCTION_14_15();
      v113 = v308 + v311[0];
      goto LABEL_63;
    }
  }
}

uint64_t sub_1D7EA2620(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_24(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1D7EA2670(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_24(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1D7EA26DC()
{
  result = type metadata accessor for Blueprint();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BlueprintSection();
    if (v2 <= 0x3F)
    {
      result = sub_1D818E754();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D7EA27C0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7EA2840(v4);
}

void sub_1D7EA2840(void *a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v17.receiver = v2;
  v17.super_class = type metadata accessor for CollectionViewCell();
  objc_msgSendSuper2(&v17, sel_applyLayoutAttributes_, a1);
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
    swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
    OUTLINED_FUNCTION_10();
    v11 = *(v7 + v10);
    v12 = *(v5 + 8);
    v13 = *(v12 + 16);
    v14 = a1;
    v13(v9, v11, v4, v12);
    v15 = sub_1D7EA29BC();
    if (v15)
    {
      v16 = v15;
      v15(v2, v7);
      sub_1D7E0E10C(v16);
    }
  }
}

uint64_t sub_1D7EA29BC()
{
  v0 = OUTLINED_FUNCTION_109();
  sub_1D7E19F24(v0);
  return OUTLINED_FUNCTION_109();
}

void sub_1D7EA29F4()
{
  type metadata accessor for Blueprint();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BlueprintItem();
    if (v1 <= 0x3F)
    {
      sub_1D818E754();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGRect();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_1D7EA2AEC(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1EDBBA008;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_1D7E9B848(v4);
  return sub_1D7EA2B74();
}

id sub_1D7EA2B74()
{
  v1 = v0;
  v2 = qword_1EDBBA008;
  swift_beginAccess();
  v15 = *&v0[v2];
  SelectionBehavior.style.getter(v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = *&v0[qword_1EDBBA040];
  (*(v4 + 8))(v1, &protocol witness table for CollectionViewCell<A>, *&v1[qword_1EDBBA040], v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  result = [v0 isSelected];
  if (result)
  {
    v15 = *&v0[v2];
    SelectionBehavior.style.getter(v12);
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v9 = [v0 isHighlighted];
    v10 = sub_1D8121904();
    v11 = [v1 contentView];
    (*(v8 + 16))(1, v9, v10 & 1, v11, v5, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return result;
}

uint64_t NoneSelectionStyle.setup(cell:selectedBackgroundView:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = a3;
  return v6(a3, ObjectType, a2);
}

uint64_t sub_1D7EA2D74(void *a1)
{
  v1 = a1;
  v2 = sub_1D7EA2DB0(&selRef_isSelected);

  return v2 & 1;
}

id sub_1D7EA2DB0(SEL *a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_73();
  return objc_msgSendSuper2(&v3, *a1);
}

void *sub_1D7EA2E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t BlueprintViewportTransitionManager.__deallocating_deinit()
{
  BlueprintViewportTransitionManager.deinit();

  return swift_deallocClassInstance();
}

void static Accessibility.Strings.delimitedString(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a1;
  v22[2] = a2;
  OUTLINED_FUNCTION_0_170();
  sub_1D7E54994(0, v4, v5, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = 0;
  v10 = *(a3 + 16);
  v11 = a3 + 40;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v11 + 16 * v9); ; i += 2)
  {
    if (v10 == v9)
    {
      v22[3] = v12;
      sub_1D7EA30C0();
      sub_1D7E28814(&qword_1EDBB3328, sub_1D7EA30C0);
      sub_1D8190E94();

      return;
    }

    if (v9 >= v10)
    {
      break;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_17;
    }

    v15 = *(i - 1);
    v14 = *i;
    sub_1D8190DB4();
    sub_1D818E3E4();
    v16 = sub_1D818E3F4();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
    v17 = sub_1D818F004();
    sub_1D7E9A7A8(v8);
    if (v17)
    {
    }

    else if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7E2D320();
        v12 = v20;
      }

      v18 = *(v12 + 16);
      if (v18 >= *(v12 + 24) >> 1)
      {
        sub_1D7E2D320();
        v12 = v21;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      ++v9;
      goto LABEL_2;
    }

    ++v9;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1D7EA30C0()
{
  if (!qword_1EDBB3330)
  {
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3330);
    }
  }
}

uint64_t BlueprintViewportTransitionManager.deinit()
{

  return v0;
}

uint64_t sub_1D7EA3140(char a1)
{
  v3 = qword_1EDBBA018;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D7EA31A8(uint64_t a1, uint64_t a2)
{

  return sub_1D7EA31F4(a1, a2);
}

uint64_t sub_1D7EA3200(void *a1)
{
  v1 = a1;
  v2 = sub_1D7EA2DB0(&selRef_isHighlighted);

  return v2 & 1;
}

id BlueprintLayoutCollectionLayoutAttributes.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CollectionViewSupplementaryKind.Source();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EA3C40(0, &unk_1EDBB5AE8, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  v9 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v95 - v11;
  sub_1D7E5951C(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  sub_1D7E7B91C(a1, &v108);
  if (!*(&v109 + 1))
  {
    OUTLINED_FUNCTION_8_41();
    sub_1D7E70EA0(&v108, v29);
    return 0;
  }

  v100 = v5;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v97 = v15;
  v98 = v12;
  v95 = a1;
  v96 = ObjectType;
  v19 = *&v113[0];
  v20 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_8_4();
  v99 = v2;
  sub_1D7EA2620(&v2[v20], v113, &qword_1EDBB44D0, sub_1D7FDADC0);
  v21 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_8_4();
  v108 = v113[0];
  v109 = v113[1];
  v110 = v114;
  sub_1D7EA2620(&v19[v21], &v111, &qword_1EDBB44D0, sub_1D7FDADC0);
  if (!*(&v109 + 1))
  {
    if (!v112)
    {
      OUTLINED_FUNCTION_2_106();
      sub_1D7EA3CA4(&v108, v35, v36, v37);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3_92();
    sub_1D7E54B6C(&v111, v30, v31);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_106();
  sub_1D7EA2620(&v108, v106, v22, v23);
  if (!v112)
  {

    v32 = v106;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
LABEL_13:
    OUTLINED_FUNCTION_3_92();
    sub_1D7E54B6C(&v108, v33, v34);
    return 0;
  }

  sub_1D7E05450(v106, v103);
  sub_1D7E05450(&v111, v102);
  v25 = v104;
  v24 = v105;
  __swift_project_boxed_opaque_existential_1(v103, v104);
  v26 = (*(v24 + 16))(v102, v25, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  if ((v26 & 1) == 0)
  {

    v32 = v103;
    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v103);
  OUTLINED_FUNCTION_3_92();
  sub_1D7E54B6C(&v108, v27, v28);
LABEL_15:
  v38 = &v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_8_4();
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = &v99[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_8_4();
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = v98;
  switch(v40)
  {
    case 1:
      if (v43 != 1)
      {
        goto LABEL_55;
      }

      goto LABEL_28;
    case 2:
      if (v43 != 2)
      {
        goto LABEL_55;
      }

LABEL_28:
      if (v39 != v42)
      {
        goto LABEL_55;
      }

      goto LABEL_32;
    case 3:
      if (v39 == 0.0)
      {
        if (v43 != 3 || v42 != 0.0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v45 = v43 == 3 && *&v42 == 1;
        if (!v45)
        {
          goto LABEL_55;
        }
      }

LABEL_32:
      v46 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
      OUTLINED_FUNCTION_8_4();
      v47 = v19[v46];
      v48 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
      v49 = v99;
      OUTLINED_FUNCTION_8_4();
      v50 = v49[v48];
      if (v47 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_55;
        }
      }

      else if (v47 == 3)
      {
        if (v50 != 3)
        {
          goto LABEL_55;
        }
      }

      else if (v50 & 0xFE) == 2 || ((v50 ^ v47))
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      v51 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
      OUTLINED_FUNCTION_8_4();
      sub_1D7EA2620(&v19[v51], v18, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      v52 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
      OUTLINED_FUNCTION_8_4();
      v53 = *(v9 + 48);
      sub_1D7EA2620(v18, v44, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      sub_1D7EA2620(&v99[v52], v44 + v53, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      v54 = v100;
      if (__swift_getEnumTagSinglePayload(v44, 1, v100) == 1)
      {
        OUTLINED_FUNCTION_1_116();
        sub_1D7E54B6C(v18, v55, v56);
        if (__swift_getEnumTagSinglePayload(v44 + v53, 1, v54) == 1)
        {
          OUTLINED_FUNCTION_1_116();
          sub_1D7E54B6C(v44, v57, v58);
          goto LABEL_50;
        }

LABEL_48:
        OUTLINED_FUNCTION_0_160();
        sub_1D7EA3CA4(v44, v64, v65, v66);
        return 0;
      }

      OUTLINED_FUNCTION_0_160();
      v59 = v97;
      sub_1D7EA2620(v44, v97, v60, v61);
      if (__swift_getEnumTagSinglePayload(v44 + v53, 1, v54) == 1)
      {

        OUTLINED_FUNCTION_1_116();
        sub_1D7E54B6C(v18, v62, v63);
        sub_1D7E70EA0(v59, type metadata accessor for CollectionViewSupplementaryKind.Source);
        goto LABEL_48;
      }

      v67 = v44 + v53;
      v68 = v101;
      sub_1D7EA896C(v67, v101);
      v69 = static CollectionViewSupplementaryKind.Source.== infix(_:_:)(v59, v68);
      sub_1D7E70EA0(v68, type metadata accessor for CollectionViewSupplementaryKind.Source);
      sub_1D7E54B6C(v18, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      sub_1D7E70EA0(v59, type metadata accessor for CollectionViewSupplementaryKind.Source);
      sub_1D7E54B6C(v44, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      if ((v69 & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_50:
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_18_27();
      if (v74)
      {
        if ((v73 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if ((v73 & 1) != 0 || !OUTLINED_FUNCTION_21_25(v72))
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_18_27();
      if (v77)
      {
        if (v76)
        {
          goto LABEL_68;
        }

LABEL_55:

        return 0;
      }

      if ((v76 & 1) != 0 || !OUTLINED_FUNCTION_21_25(v75))
      {
        goto LABEL_55;
      }

LABEL_68:
      OUTLINED_FUNCTION_20_26();
      if (v78)
      {
        if (!v79)
        {
          goto LABEL_55;
        }

        v82 = *v80 == *v81 && v78 == v79;
        if (!v82 && (sub_1D8192634() & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (v79)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_20_26();
      if (v83)
      {
        if (!v84)
        {
          goto LABEL_55;
        }

        v87 = *v85 == *v86 && v83 == v84;
        if (!v87 && (sub_1D8192634() & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (v84)
      {
        goto LABEL_55;
      }

      sub_1D7E7B91C(v95, &v108);
      v88 = *(&v109 + 1);
      if (*(&v109 + 1))
      {
        v89 = __swift_project_boxed_opaque_existential_1(&v108, *(&v109 + 1));
        v90 = *(v88 - 8);
        v91 = MEMORY[0x1EEE9AC00](v89);
        v93 = &v95 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v90 + 16))(v93, v91);
        v94 = sub_1D8192614();
        (*(v90 + 8))(v93, v88);
        __swift_destroy_boxed_opaque_existential_1Tm(&v108);
      }

      else
      {
        v94 = 0;
      }

      v107.receiver = v99;
      v107.super_class = v96;
      v70 = objc_msgSendSuper2(&v107, sel_isEqual_, v94);
      swift_unknownObjectRelease();

      return v70;
    default:
      if (*(v41 + 8) || (sub_1D7EE2AA4(LOBYTE(v39) & 1) & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_32;
  }
}

void sub_1D7EA3C40(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7E5951C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D7EA3CA4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7EA3C40(0, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D7EA3DD8(void *a1, uint64_t a2)
{
  v16.origin.x = sub_1D7EA3F14(a1);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectGetHeight(v16) == 0.0 && *(a2 + 16))
  {
    v15.x = x;
    v15.y = y;
    CGRectContainsPoint(*(v2 + *(*v2 + 184) + 8), v15);
  }

  else
  {
    v8 = v2 + *(*v2 + 184);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v17 = CGRectIntersection(*(v8 + 8), v19);
    v9 = v17.origin.x;
    v10 = v17.origin.y;
    v11 = v17.size.width;
    v12 = v17.size.height;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v13 = CGRectGetHeight(v17);
    v14 = CGRectGetHeight(*(v8 + 8));
    if (v14 < v13)
    {
      v13 = v14;
    }

    if (v13 > 0.0)
    {
      v18.origin.x = v9;
      v18.origin.y = v10;
      v18.size.width = v11;
      v18.size.height = v12;
      CGRectGetHeight(v18);
    }
  }
}

double sub_1D7EA3F14(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = a1;
  [v2 bounds];
  [v2 convertRect:*(v1 + *(*v1 + 184)) toCoordinateSpace:?];
  v4 = v3;

  return v4;
}

uint64_t BlueprintItem.visualDescription.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v2);
  sub_1D7E0631C(0, &unk_1EDBBAEE8);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v11, v13);
    *&v11[0] = 0x286D657449;
    *(&v11[0] + 1) = 0xE500000000000000;
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v5 = OUTLINED_FUNCTION_3_1();
    v7 = v6(v5);
    MEMORY[0x1DA713260](v7);

    MEMORY[0x1DA713260](41, 0xE100000000000000);
    v8 = *&v11[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1D7E9DD24(v11, &qword_1EDBBAEE0, &unk_1EDBBAEE8);
    v13[0] = 0x286D657449;
    v13[1] = 0xE500000000000000;
    v9 = BlueprintItem.identifier.getter();
    MEMORY[0x1DA713260](v9);

    MEMORY[0x1DA713260](41, 0xE100000000000000);
    return v13[0];
  }

  return v8;
}

unint64_t sub_1D7EA41AC()
{
  result = qword_1EDBBC568;
  if (!qword_1EDBBC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC568);
  }

  return result;
}

uint64_t sub_1D7EA4294(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v14 = *a4;
  v15 = *a8;
  v28 = a8[1];
  v27 = *(a8 + 16);
  v16 = a8[3];
  swift_unknownObjectWeakInit();
  v17 = *(*v8 + 128);
  v18 = type metadata accessor for Blueprint();
  (*(*(v18 - 8) + 32))(v8 + v17, a1, v18);
  v19 = *(*v8 + 136);
  v20 = type metadata accessor for BlueprintItem();
  (*(*(v20 - 8) + 32))(v8 + v19, a2, v20);
  v21 = *(*v8 + 144);
  v22 = sub_1D818E754();
  (*(*(v22 - 8) + 32))(v8 + v21, a3, v22);
  *(v8 + *(*v8 + 152)) = v14;
  v23 = (v8 + *(*v8 + 160));
  *v23 = a5;
  v23[1] = a6;
  swift_unknownObjectWeakAssign();

  v24 = v8 + *(*v8 + 168);
  *v24 = v15;
  *(v24 + 8) = v28;
  *(v24 + 16) = v27;
  *(v24 + 24) = v16;
  return v8;
}

uint64_t sub_1D7EA44EC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v32 = a1;
  v37 = a2;
  v11 = *v6;
  v36 = sub_1D818E754();
  v12 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[15];
  v33 = v11[12];
  v15 = v33;
  v31 = type metadata accessor for BlueprintItem();
  v16 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v18 = &v29 - v17;
  v34 = v11[11];
  *&v19 = v34;
  *(&v19 + 1) = v15;
  v30 = v11[14];
  *&v20 = v30;
  *(&v20 + 1) = v14;
  v40 = v20;
  v39 = v19;
  v21 = type metadata accessor for Blueprint();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - v23;
  LOBYTE(v15) = *v32;
  v25 = v11[16];
  swift_beginAccess();
  (*(v22 + 16))(v24, v6 + v25, v21);
  v26 = *(*v6 + 136);
  swift_beginAccess();
  (*(v16 + 16))(v18, v6 + v26, v31);
  v27 = v35;
  (*(v12 + 16))(v35, v6 + *(*v6 + 144), v36);
  v38 = v15;
  sub_1D7EA486C(v24, v18, v27, &v38, *(v6 + *(*v6 + 160)), *(v6 + *(*v6 + 160) + 8), v37, a3, a4, a5, a6);
  return sub_1D8190DB4();
}

uint64_t sub_1D7EA486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v20 = *a4;
  OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_0_13();
  (*(v21 + 32))(a7, a1);
  OUTLINED_FUNCTION_3_66();
  active = type metadata accessor for BlueprintActiveImpression();
  v23 = active[13];
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_0_13();
  (*(v24 + 32))(a7 + v23, a2);
  v25 = active[14];
  sub_1D818E754();
  OUTLINED_FUNCTION_0_13();
  result = (*(v26 + 32))(a7 + v25, a3);
  *(a7 + active[15]) = v20;
  v28 = (a7 + active[16]);
  *v28 = a5;
  v28[1] = a6;
  v29 = (a7 + active[17]);
  *v29 = a8;
  v29[1] = a9;
  v29[2] = a10;
  v29[3] = a11;
  return result;
}

void sub_1D7EA49DC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_13_42(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81_4();
  OUTLINED_FUNCTION_23_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_45(AssociatedConformanceWitness);
  type metadata accessor for BlueprintActiveImpression();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_144(v8, v21);
  type metadata accessor for BlueprintActiveImpression();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_54();
  v12 = *(v11 + 280);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_30_23();
    v13 = OUTLINED_FUNCTION_11_46();
    v14(v13);
    OUTLINED_FUNCTION_15_41();
    OUTLINED_FUNCTION_32_18();
    v15 = OUTLINED_FUNCTION_20_36();
    v16(v15);

    v17 = OUTLINED_FUNCTION_31_18();
    v18(v17);
    v19 = OUTLINED_FUNCTION_19_32();
    v20(v19);
  }

  OUTLINED_FUNCTION_100();
}

void Blueprint.section(forItem:)()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_18_40();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_24();
  sub_1D818F794();
  OUTLINED_FUNCTION_80_0();
}

uint64_t sub_1D7EA4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v12 = *a6;
  v22 = a6[1];
  v13 = *(a6 + 16);
  v14 = a6[3];
  swift_unknownObjectWeakInit();
  v15 = *(*v6 + 128);
  v16 = type metadata accessor for Blueprint();
  (*(*(v16 - 8) + 32))(v6 + v15, a1, v16);
  v17 = *(*v6 + 136);
  v18 = type metadata accessor for BlueprintItem();
  (*(*(v18 - 8) + 32))(v6 + v17, a2, v18);
  v19 = (v6 + *(*v6 + 144));
  *v19 = a3;
  v19[1] = a4;
  swift_unknownObjectWeakAssign();

  v20 = v6 + *(*v6 + 152);
  *v20 = v12;
  *(v20 + 8) = v22;
  *(v20 + 16) = v13;
  *(v20 + 24) = v14;
  return v6;
}

unint64_t sub_1D7EA4FB8()
{
  result = qword_1EDBBB468[0];
  if (!qword_1EDBBB468[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBBB468);
  }

  return result;
}

uint64_t sub_1D7EA5014(uint64_t a1)
{
  sub_1D7EA5070();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7EA5070()
{
  if (!qword_1EDBBB460)
  {
    sub_1D7EA4FB8();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBB460);
    }
  }
}

void sub_1D7EA50C8(void *a1)
{
  v1 = a1;
  sub_1D7EA5110();
}

uint64_t sub_1D7EA5110()
{
  OUTLINED_FUNCTION_2_0();
  sub_1D7EA51C4(v2);
  if (v3)
  {
  }

  else
  {
    sub_1D7EA522C();
  }

  OUTLINED_FUNCTION_10_14();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  sub_1D7EA55A4(0, 0);
  sub_1D7EA51C4(v2);
  if (v3)
  {
  }

  else
  {
    return sub_1D7EA55C4();
  }
}

uint64_t sub_1D7EA51C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1EDBB8C78;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  return sub_1D8190DB4();
}

void sub_1D7EA522C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];

  sub_1D7EA5268(v0);
}

void sub_1D7EA5268(uint64_t a1)
{
  v3 = qword_1EDBB8C80;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *CollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0 + qword_1EDBB9FD8;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 24) = 0;
  v2 = qword_1EDBBA040;
  v3 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  v4 = qword_1EDBB9FE0;
  sub_1D7E40308();
  v6 = v5;
  *(v0 + v4) = [objc_allocWithZone(v5) init];
  v7 = qword_1EDBBA030;
  *(v0 + v7) = [objc_allocWithZone(v6) init];
  v8 = qword_1EDBBA010;
  *(v0 + v8) = [objc_allocWithZone(v6) init];
  *(v0 + qword_1EDBBA018) = 0;
  *(v0 + qword_1EDBBA008) = 0x8000000000000008;
  v9 = qword_1EDBB9FE8;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v10 = (v0 + qword_1EDBB9FF8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + qword_1EDBBA000);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + qword_1EDBBA020) = 0;
  *(v0 + qword_1EDBBA028) = 0;
  *(v0 + qword_1EDBBA038) = 0;
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *(v0 + qword_1EDBB9FF0) = OUTLINED_FUNCTION_4(v12, sel_initWithFrame_);
  v28 = type metadata accessor for CollectionViewCell();
  v13 = OUTLINED_FUNCTION_80();
  v16 = objc_msgSendSuper2(v14, v15, v13, v0, v28);
  v17 = [v16 contentView];
  v18 = qword_1EDBB9FF0;
  [v17 addSubview_];

  v19 = *&v16[v18];
  v20 = v16;
  v21 = v19;
  v22 = [v20 contentView];
  [v22 bounds];
  OUTLINED_FUNCTION_9_0();

  v23 = OUTLINED_FUNCTION_8_0();
  [v24 v25];

  v26 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor_];

  [v20 setSelectedBackgroundView_];
  return v20;
}

uint64_t sub_1D7EA55A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EDBB8C90);
  v4 = *(v2 + qword_1EDBB8C90);
  *v3 = a1;
  v3[1] = a2;
  return sub_1D7E0E10C(v4);
}

void sub_1D7EA566C(void *a1)
{
  v1 = a1;
  CollectionViewListCell.layoutSubviews()();
}

Swift::Void __swiftcall CollectionViewListCell.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v6 = sub_1D818E7D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_layoutSubviews, v8);
  v11 = [v0 contentView];
  [v11 bounds];
  OUTLINED_FUNCTION_9_0();

  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  inited = swift_initStackObject();
  inited[5] = v6;
  inited[6] = sub_1D7E4E9A0();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  (*(v7 + 16))(boxed_opaque_existential_0, v10, v6);
  inited[7] = v1;
  inited[8] = v2;
  inited[9] = v3;
  inited[10] = v4;
  (*(v7 + 8))(v10, v6);
  sub_1D7EA5848(inited, v0);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 2));
}

id sub_1D7EA5848(uint64_t a1, char *a2)
{
  v3 = sub_1D818FED4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RTLAdjuster.layoutDirection.getter() == 1 && (v7 = [a2 _bridgedConfigurationState], sub_1D818FEA4(), v7, LOBYTE(v7) = sub_1D818FEC4(), (*(v4 + 8))(v6, v3), (v7 & 1) != 0))
  {
    v8 = *&a2[qword_1EDBB8BA8];
    v9 = [a2 contentView];
    v10 = [v9 readableContentGuide];

    [v10 layoutFrame];
    v12 = v11;

    [a2 layoutMargins];
    v14 = v12 + v13;
    v15 = [a2 readableContentGuide];
    [v15 layoutFrame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v46.origin.x = v17;
    v46.origin.y = v19;
    v46.size.width = v21;
    v46.size.height = v23;
    Width = CGRectGetWidth(v46);
    v25 = [a2 contentView];
    [v25 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v47.origin.x = v27;
    v47.origin.y = v29;
    v47.size.width = v31;
    v47.size.height = v33;
    v48.size.height = CGRectGetHeight(v47);
    v45 = 0;
    v48.origin.y = 0.0;
    v48.origin.x = v14;
    v48.size.width = Width;
    v49 = RTLAdjuster.frame(_:alignment:)(v48, &v45);
    x = v49.origin.x;
    y = v49.origin.y;
    v36 = v49.size.width;
    height = v49.size.height;
  }

  else
  {
    v8 = *&a2[qword_1EDBB8BA8];
    v38 = [a2 contentView];
    [v38 bounds];
    x = v39;
    y = v40;
    v36 = v41;
    height = v42;
  }

  return [v8 setFrame_];
}

Swift::Void __swiftcall SelectedBackgroundView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_1D7E9B700();
}

void sub_1D7EA5BD0(void *a1)
{
  v1 = a1;
  sub_1D7EA5C18();
}

id sub_1D7EA5C18()
{
  v1 = OUTLINED_FUNCTION_20_40();
  [v1 center];
  v3 = v2;
  v5 = v4;

  OUTLINED_FUNCTION_7_73();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  if ((*(v0 + qword_1EDBBA020) & 1) == 0 && (*(v0 + qword_1EDBBA028) & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_20_40();
    [v6 center];
    if (v8 != v3 || v7 != v5)
    {
      [v6 setCenter_];
    }
  }

  v10 = *(v0 + qword_1EDBB9FF0);
  v11 = OUTLINED_FUNCTION_20_40();
  [v11 bounds];
  OUTLINED_FUNCTION_9_0();

  [v10 frame];
  if (!OUTLINED_FUNCTION_19_8(v12, v13, v14, v15))
  {
    v16 = OUTLINED_FUNCTION_8_0();
    [v17 v18];
  }

  v19 = *(v0 + qword_1EDBBA040);
  v20 = OUTLINED_FUNCTION_20_40();
  [v20 bounds];
  OUTLINED_FUNCTION_9_0();

  v30.origin.x = OUTLINED_FUNCTION_8_0();
  SelectedBackgroundView.makeFrame(in:)(v30);
  OUTLINED_FUNCTION_9_0();
  [v19 frame];
  result = OUTLINED_FUNCTION_19_8(v21, v22, v23, v24);
  if ((result & 1) == 0)
  {
    v26 = OUTLINED_FUNCTION_8_0();
    return [v27 v28];
  }

  return result;
}

__C::CGRect __swiftcall SelectedBackgroundView.makeFrame(in:)(__C::CGRect in)
{
  OUTLINED_FUNCTION_155();
  v2 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling;
  OUTLINED_FUNCTION_8_4();
  if (v1[v2] == 1 || (v3 = [v1 traitCollection], v4 = objc_msgSend(v3, sel_horizontalSizeClass), v3, (v4 | 2) == 2))
  {
    OUTLINED_FUNCTION_8_4();
    v5 = OUTLINED_FUNCTION_80();
    UIEdgeInsetsInsetRect(v5, v6, v7, v8, v9, v10);
  }

  v11 = OUTLINED_FUNCTION_80();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

uint64_t sub_1D7EA5EC8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    v2 = -64;
  }

  *(result + 8) = v2;
  return result;
}

double BlueprintLayoutSection<>.init(descriptor:framePosition:items:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = *(a2 + 8);
  OUTLINED_FUNCTION_2();
  v14 = v13;
  (*(v15 + 16))(a6, a1, v16);
  v20.n128_u64[0] = a3;
  v20.n128_u64[1] = a4;
  v21 = *(a5 + 8);
  v17 = type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_2_89(v17);
  *v18 = v11;
  *(v18 + 8) = v12;
  sub_1D8190DB4();
  BlueprintLayoutSectionViewState.init<A>(items:)();
  (*(v14 + 8))(a1, a3);
  *&result = OUTLINED_FUNCTION_1_96(v21, v20).n128_u64[0];
  return result;
}

BOOL sub_1D7EA6108()
{
  v0 = OUTLINED_FUNCTION_4_11();
  v1(v0);
  return v3 > 0.0 && v2 > 0.0;
}

uint64_t sub_1D7EA614C@<X0>(BOOL *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_4_11();
  result = v3(v2);
  v6 = v5 > 0.0;
  if (v7 <= 0.0)
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

id sub_1D7EA61A0(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  return sub_1D7EA6264(a3, a2);
}

id sub_1D7EA6264(SEL *a1, const char **a2)
{
  v4 = *&v2[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
  v5 = [v2 *a1];
  v6 = *a2;

  return [v4 v6];
}

void sub_1D7EA62D4(void *a1, SEL *a2, const char **a3)
{
  v5 = v3;
  v7 = [v3 *a2];
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F68);
      v9 = a1;
      v10 = sub_1D8191CC4();

      if (v10)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v11 = *a3;

  [v5 v11];
}

unint64_t get_enum_tag_for_layout_string_5TeaUI17SelectionBehaviorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t KeyboardSelectionStyle.setup(cell:selectedBackgroundView:)()
{
  sub_1D818EEE4();
  v0 = sub_1D818EED4();
  v1 = 64;
  if (v0)
  {
    v1 = 24;
  }

  OUTLINED_FUNCTION_1_168(v1);
  OUTLINED_FUNCTION_0_234();
  return v2();
}

uint64_t BackgroundSelectionStyle.setup(cell:selectedBackgroundView:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = a3;
  return v6(a3, ObjectType, a2);
}

uint64_t PinningBlueprintCollectionViewLayout.init(blueprintLayoutCollectionProvider:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v10 - v6, a1, v3, v5);
  BlueprintCollectionViewLayout.init(blueprintLayoutCollectionProvider:)();
  v8 = v7;
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t SharedImageCache.init()()
{
  v1 = v0;
  v2 = type metadata accessor for MemoryCacheAccessQueue();
  swift_allocObject();
  v3 = MemoryCacheAccessQueue.init()();
  type metadata accessor for MemoryImageCache();
  v4 = swift_allocObject();
  v4[6] = v2;
  v4[7] = &protocol witness table for MemoryCacheAccessQueue;
  v4[3] = v3;
  sub_1D7E1D0A0();
  swift_allocObject();
  v4[2] = sub_1D818FC84();
  *(v1 + 16) = v4;
  return v1;
}

uint64_t MemoryCacheAccessQueue.init()()
{
  v0 = sub_1D8191AA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = sub_1D8191A84();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v6 = sub_1D8190C34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15();
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  sub_1D8190C24();
  sub_1D7E102D8(&unk_1EDBB3180, MEMORY[0x1E69E8030]);
  sub_1D7E2798C();
  sub_1D7E102D8(&qword_1EDBB3300, sub_1D7E2798C);
  sub_1D8192004();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  *(v8 + 16) = sub_1D8191AE4();
  return v8;
}

void sub_1D7EA6964(double a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setCornerRadius_, a1);
  sub_1D7EA69B0();
}

void sub_1D7EA69B0()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer];
  if (v1)
  {
    v3.receiver = v0;
    v3.super_class = swift_getObjectType();
    v2 = v1;
    objc_msgSendSuper2(&v3, sel_cornerRadius);
    [v2 setCornerRadius_];
  }
}

uint64_t sub_1D7EA6A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7EA6A68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

unint64_t sub_1D7EA6AA8(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_1D7EA6B0C(v5, v2, v3, v4);
}

unint64_t sub_1D7EA6B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  v10._countAndFlagsBits = (*(a4 + 16))(a3, a4);
  v11 = MemoryImageCache.image(for:)(v10);

  (*(v6 + 8))(v9, a3);
  return v11;
}

UIImage_optional __swiftcall MemoryImageCache.image(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1[6];
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v5);
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = countAndFlagsBits;
  v8[4] = object;
  v9 = *(v6 + 16);

  sub_1D8190DB4();
  v10 = v9(sub_1D7EA6E38, v8, v5, v6);

  sub_1D7EA7358(v2, countAndFlagsBits, object);
  v12 = v10;
  result.value.super.isa = v12;
  result.is_nil = v11;
  return result;
}

uint64_t sub_1D7EA6D30()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t MemoryCacheAccessMainWriter.accessValue(block:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() currentThread];
  v3 = [v2 isMainThread];

  if (v3)
  {
    return a1();
  }

  v5 = sub_1D818EDB4();
  v6 = (a1)(v5);
  sub_1D818EDC4();
  return v6;
}

uint64_t sub_1D7EA6E44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D818FC74();

    return v1;
  }

  return result;
}

uint64_t BlueprintTraversalCollectionProvider.init()()
{
  type metadata accessor for BlueprintTraversalCollectionItem();
  v1 = sub_1D81913C4();
  sub_1D7EA76FC(v1, (v0 + 16));
  return v0;
}

uint64_t objectdestroy_2Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_0()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_3()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_4_44();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_4()
{
  type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_4_20();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_42_10();
  type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(v4 + v2);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v4 + v2);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v4 + v1);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v8, v9, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_17_7();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_39_11();
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 8))(v1 + v2);
  }

  OUTLINED_FUNCTION_19_21();

  OUTLINED_FUNCTION_9_28();
  if (!v12)
  {
    OUTLINED_FUNCTION_26_14(v11);
  }

  OUTLINED_FUNCTION_21_21();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_35_12();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_5(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EA7358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8190BD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D8190C34();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v12 = sub_1D8191AB4();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1D7EB2B2C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);
  sub_1D8190DB4();

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  sub_1D7E2885C();
  sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v11, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1D7EA7674()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D818E994();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ImageView.loadImage(from:with:interestToken:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 16))(v10, v11);
  sub_1D7E73B8C();
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  OUTLINED_FUNCTION_0_8();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7E0E768(a2, v18);
  v15 = swift_allocObject();
  v15[2] = v14;
  sub_1D7E05450(v18, (v15 + 3));
  v15[8] = a4;
  v15[9] = a5;
  v16 = *(v13 + 16);

  v16(a2, 1, a3, sub_1D7EBC9F4, v15, v12, v13);
}

uint64_t sub_1D7EA7864()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EA7898()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7EA78F0(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[3] = a7;
  v29[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a1, a7);
  v14 = *(a8 + 16);
  v15._countAndFlagsBits = v14(a7, a8);
  v16 = MemoryImageCache.image(for:)(v15);

  if (v16)
  {
    v17 = v16;
    a4(v16, 0);
  }

  else
  {
    v18 = v14(a7, a8);
    v20 = v19;
    if (a3)
    {
      v21 = a5;
    }

    else
    {
      v21 = a5;
      if (qword_1EDBB8158 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = v21;
    sub_1D7E0E768(v29, v28);
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    sub_1D7E05450(v28, v23 + 24);
    *(v23 + 64) = a2 & 1;
    *(v23 + 72) = v18;
    *(v23 + 80) = v20;

    sub_1D8190DB4();
    sub_1D7EA7C54();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_1D7EA7B78()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EA7BB0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7EA7BF8()
{
  OUTLINED_FUNCTION_8_3();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_4_26();

  return sub_1D7EA78F0(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1D7EA7C54()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v27 = v3;
  v28 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1D8190BD4();
  OUTLINED_FUNCTION_2();
  v31 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  sub_1D8190C34();
  OUTLINED_FUNCTION_2();
  v29 = v19;
  v30 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_0_8();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v11;
  v24[4] = v9;
  v24[5] = v27;
  v24[6] = v1;
  v24[7] = v28;
  v24[8] = v5;
  v24[9] = v7;
  v32[4] = sub_1D7F587AC;
  v32[5] = v24;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_1D7E64940;
  v32[3] = &block_descriptor_12;
  v25 = _Block_copy(v32);

  sub_1D8190DB4();

  sub_1D8190BF4();
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  v26 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v26);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v22, v17, v25);
  _Block_release(v25);
  (*(v31 + 8))(v17, v12);
  (*(v29 + 8))(v22, v30);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EA7F74()
{

  return swift_deallocObject();
}

id CardViewScrollViewCoordinator.init(scrollView:isEnabled:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled] = 1;
  v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_trackingPollTimer] = 0;
  OUTLINED_FUNCTION_1_91(OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock);
  *&v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView] = a1;
  swift_beginAccess();
  v2[v6] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t BlueprintLayoutOptionsProvider.margins.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t CollectionViewCell.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{

  return sub_1D7EA8098(a1, a2);
}

id _s5TeaUI18CollectionViewCellC22traversedDisposerTokenSo8NSObjectCvg_0()
{
  v1 = qword_1EDBB9FE8;
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + v1);

  return v2;
}

id sub_1D7EA81BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = sub_1D8190F14();
  v16 = v15;
  sub_1D818E924();
  v17 = a1;
  v18 = a5(v14, v16, v13);

  (*(v9 + 8))(v13, v7);

  return v18;
}

void sub_1D7EA82F4()
{
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_47_9();
  sub_1D7E67328(v10);
  v1 = v11;
  if (*(v11 + 16) && (OUTLINED_FUNCTION_23_14(), v2 = OUTLINED_FUNCTION_85(), v4 = sub_1D7E11428(v2, v3), (v5 & 1) != 0) && (v6 = *(*(v1 + 56) + 8 * v4), sub_1D8190DB4(), sub_1D7EA83F4(v0, v6), OUTLINED_FUNCTION_16_1(), , v0) && (v7 = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter()))
  {
    OUTLINED_FUNCTION_26_13(v7);
    sub_1D7EAF9D8(v0 + 608, __dst);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_7_47();
    BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();

    memcpy(__dst, __src, 0x260uLL);
    sub_1D7EAFC0C(__dst);
    sub_1D7E598FC(v10);
  }

  else
  {
    sub_1D7E598FC(v10);
  }

  OUTLINED_FUNCTION_32_9();
}

void *sub_1D7EA83F4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D7E7DB08();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

BOOL BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait);
  OUTLINED_FUNCTION_8_4();
  v2 = *v1;
  LODWORD(v1) = *(v1 + 8);
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_8_4();
  v4 = *(v0 + v3);
  sub_1D7EA84BC();
  return v1 < 3 || v2 == 0 || v4 != 3;
}

void sub_1D7EA84BC()
{
  if (!qword_1EDBB53D0[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBB53D0);
    }
  }
}

uint64_t sub_1D7EA851C(uint64_t a1, uint64_t a2)
{
  sub_1D7E1ADB0(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7EA859C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 600);
  v5 = OUTLINED_FUNCTION_1_152();
  return a2(v4, v5);
}

uint64_t BlueprintViewSupplementaryData.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlueprintViewSupplementaryData() + 20);
  v4 = sub_1D818E994();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlueprintInfiniteScrollManager.__allocating_init(infiniteScroll:)(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintInfiniteScroll();
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  sub_1D7E33AB4(a1, v5 - v4);
  if (qword_1EDBB1B60 != -1)
  {
    OUTLINED_FUNCTION_2_122();
  }

  v7 = qword_1EDBC6040;
  v8 = OUTLINED_FUNCTION_4_80();
  BlueprintInfiniteScrollManager.init(infiniteScroll:maxInflightRequests:log:)(v6, 0x7FFFFFFFFFFFFFFFLL, v7);
  sub_1D7E306A8(a1);
  return v8;
}

uint64_t UICollectionView.dequeue<A>(supplementaryView:kind:at:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_1D8190EE4();

  sub_1D7E3ED28(a1, a4, a5);
  v13 = sub_1D8190EE4();

  v14 = sub_1D818E8E4();
  v15 = [v7 dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:v14];

  return MEMORY[0x1EEE6BE48](v15, a6, 0, 0, 0);
}

uint64_t sub_1D7EA8884()
{
  v1 = *(v0 + qword_1EDBB8C90);
  sub_1D7E19F24(v1);
  return v1;
}

uint64_t sub_1D7EA88C4()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6040 = result;
  return result;
}

uint64_t sub_1D7EA8910(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintViewSupplementaryData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7EA896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSupplementaryKind.Source();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CollectionViewSupplementaryKind.Source.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for CollectionViewSupplementaryKind.Source();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v32 - v14);
  sub_1D7EA8D28();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 56)];
  sub_1D7EA8D8C(a1, v18);
  sub_1D7EA8D8C(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7EA8D8C(v18, v12);
    sub_1D7E58AEC();
    v22 = *(v21 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v12;
      v33 = *v20;
      v34 = v23;
      v24 = v35;
      v25 = *(v35 + 32);
      v25(v9, &v12[v22], v4);
      v25(v6, &v20[v22], v4);
      if (v34 == v33)
      {
        v26 = sub_1D818E914();
        v27 = *(v24 + 8);
        v27(v6, v4);
        v27(v9, v4);
      }

      else
      {
        v30 = *(v24 + 8);
        v30(v6, v4);
        v30(v9, v4);
        v26 = 0;
      }

      goto LABEL_10;
    }

    (*(v35 + 8))(&v12[v22], v4);
    v26 = 0;
    v29 = sub_1D7EA8D28;
  }

  else
  {
    sub_1D7EA8D8C(v18, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = sub_1D7EA8D28;
    if (EnumCaseMultiPayload != 1)
    {
      v26 = *v15 == *v20;
LABEL_10:
      v29 = type metadata accessor for CollectionViewSupplementaryKind.Source;
      goto LABEL_11;
    }

    v26 = 0;
  }

LABEL_11:
  sub_1D7EA8DF0(v18, v29);
  return v26 & 1;
}

void sub_1D7EA8D28()
{
  if (!qword_1EDBB5A70[0])
  {
    type metadata accessor for CollectionViewSupplementaryKind.Source();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBB5A70);
    }
  }
}

uint64_t sub_1D7EA8D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSupplementaryKind.Source();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7EA8DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7EA8EFC()
{
  swift_beginAccess();
  v1 = sub_1D8190DB4();
  v2 = sub_1D7EA8F6C(v1);

  *(v0 + 16) = v2;
}

uint64_t sub_1D7EA8F6C(uint64_t a1)
{
  v26 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  result = sub_1D8190DB4();
  v7 = 0;
  v28 = v5;
  v29 = v1;
  while (1)
  {
    v8 = v7;
    if (!v4)
    {
      goto LABEL_7;
    }

    while (2)
    {
      v7 = v8;
LABEL_10:
      v31 = (v4 - 1) & v4;
      v9 = __clz(__rbit64(v4)) | (v7 << 6);
      v10 = (*(a1 + 48) + 16 * v9);
      v11 = v10[1];
      v27 = *v10;
      v12 = *(*(a1 + 56) + 8 * v9);
      v32 = MEMORY[0x1E69E7CC0];
      v13 = sub_1D7E36AB8(v12);
      sub_1D8190DB4();
      result = sub_1D8190DB4();
      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA714420](i, v12);
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          result = sub_1D8192284();
        }

        else
        {
        }
      }

      if (!sub_1D7E36AB8(v32))
      {

        v8 = v7;
        v5 = v28;
        v1 = v29;
        v4 &= v4 - 1;
        if (v31)
        {
          continue;
        }

LABEL_7:
        while (1)
        {
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_39;
          }

          if (v7 >= v5)
          {

            return v26;
          }

          v4 = *(v1 + 8 * v7);
          ++v8;
          if (v4)
          {
            goto LABEL_10;
          }
        }
      }

      break;
    }

    v15 = v26;
    if (*(v26 + 24) <= *(v26 + 16))
    {
      sub_1D7F01914();
      v15 = v33;
    }

    v26 = v15;
    sub_1D81927E4();
    sub_1D8190FF4();
    result = sub_1D8192824();
    v16 = v26 + 64;
    v17 = -1 << *(v26 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_35:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = (*(v26 + 48) + 16 * v20);
    *v25 = v27;
    v25[1] = v11;
    *(*(v26 + 56) + 8 * v20) = v32;
    ++*(v26 + 16);
    v5 = v28;
    v1 = v29;
    v4 &= v4 - 1;
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_35;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D7EA92BC(void *a1, void (*a2)(double), uint64_t a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v73 = a6;
  v74 = a5;
  sub_1D7E98BE0();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D818E8B4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v15);
  v18 = a4[3];
  v19 = a4[4];
  v20 = __swift_project_boxed_opaque_existential_1(a4, v18);
  v21 = *(v19 + 32);
  v69 = v20;
  v70 = v21;
  v21(v18, v19);
  v22 = sub_1D818E874();
  v75 = *(v14 + 8);
  v76 = v13;
  v75(v17, v13);
  if ((v22 & 1) == 0)
  {
    v70(v18, v19);
    v23 = sub_1D818E814();
    v75(v17, v76);
    [a1 reloadSections_];
  }

  v24 = a4[3];
  v25 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v24);
  v26 = *((*(v25 + 72))(v24, v25) + 16);

  if (v26)
  {
    v27 = a4[3];
    v28 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v27);
    (*(v28 + 72))(v27, v28);
    sub_1D818E994();
    v29 = sub_1D8191304();

    [a1 reloadItemsAtIndexPaths_];
  }

  v30 = a4[3];
  v31 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v30);
  (*(v31 + 16))(v30, v31);
  LOBYTE(v30) = sub_1D818E874();
  v33 = v75;
  v32 = v76;
  v75(v17, v76);
  if ((v30 & 1) == 0)
  {
    v34 = a4[3];
    v35 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v34);
    (*(v35 + 16))(v34, v35);
    v36 = sub_1D818E814();
    v33(v17, v32);
    [a1 deleteSections_];
  }

  v37 = a4[3];
  v38 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v37);
  (*(v38 + 24))(v37, v38);
  LOBYTE(v37) = sub_1D818E874();
  v33(v17, v32);
  if ((v37 & 1) == 0)
  {
    v39 = a4[3];
    v40 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v39);
    (*(v40 + 24))(v39, v40);
    v41 = sub_1D818E814();
    v33(v17, v32);
    [a1 insertSections_];
  }

  v42 = a4[3];
  v43 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v42);
  v44 = *((*(v43 + 56))(v42, v43) + 16);

  if (v44)
  {
    v45 = a4[3];
    v46 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v45);
    (*(v46 + 56))(v45, v46);
    sub_1D818E994();
    v47 = sub_1D8191304();

    [a1 deleteItemsAtIndexPaths_];
  }

  v48 = a4[3];
  v49 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v48);
  v50 = *((*(v49 + 64))(v48, v49) + 16);

  if (v50)
  {
    v51 = a4[3];
    v52 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v51);
    (*(v52 + 64))(v51, v52);
    sub_1D818E994();
    v53 = sub_1D8191304();

    [a1 insertItemsAtIndexPaths_];
  }

  v54 = a4[3];
  v55 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v54);
  v56 = (*(v55 + 48))(v54, v55);
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = (v56 + 40);
    do
    {
      [a1 moveSection:*(v58 - 1) toSection:*v58];
      v58 += 2;
      --v57;
    }

    while (v57);
  }

  v59 = a4[3];
  v60 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v59);
  v61 = (*(v60 + 80))(v59, v60);
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = v61 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v64 = *(v72 + 72);
    do
    {
      sub_1D7E9A440(v63, v12, sub_1D7E98BE0);
      v65 = sub_1D818E8E4();
      v66 = sub_1D818E8E4();
      sub_1D7FE84DC(v12);
      [a1 moveItemAtIndexPath:v65 toIndexPath:v66];

      v63 += v64;
      --v62;
    }

    while (v62);
  }

  return v74(v67);
}

uint64_t sub_1D7EA9984()
{
  swift_beginAccess();
  v1 = sub_1D8190DB4();
  v2 = sub_1D7EA9A04(v1);

  *(v0 + 16) = v2;
}

uint64_t sub_1D7EA9A04(uint64_t a1)
{
  v26 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  result = sub_1D8190DB4();
  v7 = 0;
  v28 = v5;
  v29 = v1;
  while (1)
  {
    v8 = v7;
    if (!v4)
    {
      goto LABEL_7;
    }

    while (2)
    {
      v7 = v8;
LABEL_10:
      v31 = (v4 - 1) & v4;
      v9 = __clz(__rbit64(v4)) | (v7 << 6);
      v10 = (*(a1 + 48) + 16 * v9);
      v11 = v10[1];
      v27 = *v10;
      v12 = *(*(a1 + 56) + 8 * v9);
      v32 = MEMORY[0x1E69E7CC0];
      v13 = sub_1D7E36AB8(v12);
      sub_1D8190DB4();
      result = sub_1D8190DB4();
      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA714420](i, v12);
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          result = sub_1D8192284();
        }

        else
        {
        }
      }

      if (!sub_1D7E36AB8(v32))
      {

        v8 = v7;
        v5 = v28;
        v1 = v29;
        v4 &= v4 - 1;
        if (v31)
        {
          continue;
        }

LABEL_7:
        while (1)
        {
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_39;
          }

          if (v7 >= v5)
          {

            return v26;
          }

          v4 = *(v1 + 8 * v7);
          ++v8;
          if (v4)
          {
            goto LABEL_10;
          }
        }
      }

      break;
    }

    v15 = v26;
    if (*(v26 + 24) <= *(v26 + 16))
    {
      sub_1D7EA9D88();
      v15 = v33;
    }

    v26 = v15;
    sub_1D81927E4();
    sub_1D8190FF4();
    result = sub_1D8192824();
    v16 = v26 + 64;
    v17 = -1 << *(v26 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_35:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = (*(v26 + 48) + 16 * v20);
    *v25 = v27;
    v25[1] = v11;
    *(*(v26 + 56) + 8 * v20) = v32;
    ++*(v26 + 16);
    v5 = v28;
    v1 = v29;
    v4 &= v4 - 1;
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_35;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D7EA9D54()
{
  sub_1D7EA9DB0();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D7EA9DB0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v5[0] = *(v1 + 80);
  v5[1] = v2;
  v3 = type metadata accessor for BlueprintLayout();
  (*(*(v3 - 8) + 8))(v0 + 4, v3);
  memcpy(v5, v0 + 80, 0x4E8uLL);
  sub_1D7E598FC(v5);
  memcpy(__dst, v0 + 237, 0x235uLL);
  sub_1D7E4C1A0(__dst);

  swift_weakDestroy();

  return v0;
}

void sub_1D7EA9E9C()
{
  v7 = OUTLINED_FUNCTION_16_9();
  sub_1D7EAAFC4(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_24_3();
  if (!*(v3 + 16))
  {
LABEL_26:

LABEL_27:
    *v0 = v11;
    return;
  }

  OUTLINED_FUNCTION_6_7();
  if (!v1)
  {
LABEL_4:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v12;
      if (*(v2 + 8 * v6))
      {
        OUTLINED_FUNCTION_21_3();
        v1 = v14 & v13;
        goto LABEL_9;
      }
    }

    if ((v28 & 1) == 0)
    {

      v0 = v27;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_3();
    v0 = v27;
    if (v25 != v26)
    {
      OUTLINED_FUNCTION_51_1(v24);
    }

    else
    {
      OUTLINED_FUNCTION_44_0(v24);
    }

    *(v3 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_36_2();
LABEL_9:
    OUTLINED_FUNCTION_47_1();
    if ((v15 & 1) == 0)
    {
      sub_1D8190DB4();
      sub_1D8190DB4();
    }

    sub_1D81927E4();
    OUTLINED_FUNCTION_58_0();
    sub_1D8192824();
    OUTLINED_FUNCTION_14_8();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_34();
LABEL_18:
    OUTLINED_FUNCTION_12_7(v17);
    v23 = (v22 + 16 * v21);
    *v23 = v4;
    v23[1] = v5;
    OUTLINED_FUNCTION_18_4(v21);
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33();
  while (v18 + 1 != v20 || (v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_1();
    if (!v16)
    {
      OUTLINED_FUNCTION_32();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

void BlueprintInfiniteScrollBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:layoutCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_70();
  a27 = v29;
  a28 = v32;
  v225 = v28;
  v229 = v33;
  v215 = v34;
  v230 = v35;
  v224 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v228 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_48_3();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v227 = v38;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v197 - v40;
  v226 = v42;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v233 = v43;
  v232 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v219 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_23();
  v231 = v46;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v197 - v48;
  OUTLINED_FUNCTION_61_2();
  v50 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_21_8();
  WitnessTable = swift_getWitnessTable();
  v52 = sub_1D81923F4();
  OUTLINED_FUNCTION_25_6(v52, &v233);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v54);
  v202 = WitnessTable;
  v234 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v217 = v55;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_94();
  v235 = v57;
  v216 = *(v50 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v59);
  v212 = v50;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v207 = v60;
  v206 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v214 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23();
  v205 = v63;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_14_1(&v197 - v65);
  OUTLINED_FUNCTION_61_2();
  v66 = COERCE_DOUBLE(type metadata accessor for Blueprint());
  OUTLINED_FUNCTION_18_10();
  v67 = swift_getWitnessTable();
  v68 = sub_1D81923F4();
  OUTLINED_FUNCTION_25_6(v68, &v235);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v70);
  v213 = v66;
  v210 = v67;
  v208 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v197 = v71;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v73);
  v229 = *(v229 + 1216);
  v74 = type metadata accessor for BlueprintInfiniteScroll();
  v75 = swift_allocBox();
  v77 = v76;
  v78 = v215;
  LODWORD(v66) = *(v215 + 565);
  OUTLINED_FUNCTION_40_3();
  v80 = *(v79 + 80);
  LOBYTE(v50) = *(v79 + 88);
  v221 = v74[5];
  sub_1D818E8A4();
  v220 = v74[6];
  *&v77[v220] = MEMORY[0x1E69E7CC0];
  v218 = v74[7];
  *&v77[v218] = MEMORY[0x1E69E7CD0];
  v223 = LODWORD(v66);
  *v77 = LOBYTE(v66);
  v81 = v74[8];
  v222 = v77;
  v82 = &v77[v81];
  *v82 = v80;
  v82[8] = v50;
  v83 = *(v78 + 1);
  v198 = v75;
  if (v83)
  {
    if (v83 == 1)
    {
      v84 = v78 + 8;
      v85 = v78 + 7;
    }

    else
    {
      v84 = v78 + 12;
      v85 = v78 + 11;
    }
  }

  else
  {
    v85 = v78 + 1;
    v84 = v78 + 2;
  }

  v86 = v224;
  v87 = v207;
  v89 = v227;
  v88 = v228;
  v90 = v219;
  v91 = v213;
  v213 = *v84;
  v92 = *v85;
  MEMORY[0x1DA7133A0](*&v91, v210);
  sub_1D81923C4();
  v203 = v214 + 32;
  v201 = (v216 + 32);
  v93 = (v90 + 32);
  v94 = (v89 + 4);
  v227 = v89 + 1;
  v228 = v88 + 8;
  v200 = v217 + 8;
  v199 = v216 + 8;
  v95 = v226;
  v219 = v41;
  v217 = v94;
LABEL_7:
  v96 = v205;
  sub_1D81923D4();
  OUTLINED_FUNCTION_22();
  v97 = v204;
  v98(v204, v96, v206);
  if (__swift_getEnumTagSinglePayload(v97, 1, v87) == 1)
  {
    (*(v197 + 8))(v209, v208);
    v194 = v225;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v195 = swift_allocObject();
    v196 = v198;
    *(v195 + 16) = v194;
    *(v195 + 24) = v196;
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_72();
    return;
  }

  v230 = *v97;
  v99 = v212;
  (*v201)(v211, &v97[*(v87 + 48)], v212);
  MEMORY[0x1DA7133A0](v99, v202);
  sub_1D81923C4();
  while (1)
  {
    while (1)
    {
      v100 = v231;
      sub_1D81923D4();
      (*v93)(v49, v100, v232);
      v101 = v233;
      if (__swift_getEnumTagSinglePayload(v49, 1, v233) == 1)
      {
        OUTLINED_FUNCTION_22();
        v192(v235, v234);
        OUTLINED_FUNCTION_22();
        v193(v211, v212);
        v87 = v207;
        goto LABEL_7;
      }

      v102 = *v49;
      (*v94)(v41, &v49[*(v101 + 48)], v95);
      MEMORY[0x1DA710B60](v102, v230);
      v103 = v229;
      if (*(v229 + 16))
      {
        v104 = sub_1D7E7DB08();
        if (v105)
        {
          break;
        }
      }

LABEL_27:
      v120 = OUTLINED_FUNCTION_42_4();
      v121(v120, v86);
      (*v227)(v41, v95);
    }

    v106 = *(*(v103 + 56) + 8 * v104);
    if ((BlueprintItem.isExpandable.getter() & 1) == 0)
    {

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_40_3();
    v94 = *(v107 + 56);
    v108 = *(v107 + 72);
    if (v108)
    {
      if (v108 == 1)
      {
        OUTLINED_FUNCTION_40_3();

        v94();
        v109 = v106;
        [v109 frame];
        v215 = v109;
        v214 = v94;
        if (v223)
        {
          MinY = CGRectGetMinY(*&v110);
          OUTLINED_FUNCTION_32_2(MinY);
          OUTLINED_FUNCTION_75_1();
          CGRectGetMaxY(v238);
          OUTLINED_FUNCTION_75_1();
          OUTLINED_FUNCTION_38_3();

          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_65_3();
          if (v31 <= -9.22337204e18)
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_8_16();
          if (!v115)
          {
            goto LABEL_96;
          }

          OUTLINED_FUNCTION_2_42();
          if (v117)
          {
            goto LABEL_104;
          }

          if (v116 <= -9.22337204e18)
          {
            goto LABEL_106;
          }

          OUTLINED_FUNCTION_36_5();
          if (!v115)
          {
            goto LABEL_114;
          }

          OUTLINED_FUNCTION_44_3();
          if (v115 != v119)
          {
            goto LABEL_121;
          }
        }

        else
        {
          MinX = CGRectGetMinX(*&v110);
          OUTLINED_FUNCTION_32_2(MinX);
          OUTLINED_FUNCTION_75_1();
          CGRectGetMaxX(v242);
          OUTLINED_FUNCTION_75_1();
          OUTLINED_FUNCTION_38_3();

          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_65_3();
          if (v31 <= -9.22337204e18)
          {
            goto LABEL_92;
          }

          OUTLINED_FUNCTION_8_16();
          if (!v115)
          {
            goto LABEL_94;
          }

          OUTLINED_FUNCTION_2_42();
          if (v165)
          {
            goto LABEL_101;
          }

          if (v164 <= -9.22337204e18)
          {
            goto LABEL_108;
          }

          OUTLINED_FUNCTION_36_5();
          if (!v115)
          {
            goto LABEL_113;
          }

          OUTLINED_FUNCTION_44_3();
          if (v115 != v119)
          {
            goto LABEL_123;
          }
        }

        v166 = v118;
        v236 = v109;
        v237 = &selRef_attemptTransitionToState_animated_;
        OUTLINED_FUNCTION_0_53();
        v210 = v167;
        sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v168);
        v41 = v169;
        sub_1D7EB88FC();
        sub_1D8190DB4();
        OUTLINED_FUNCTION_6_21();
        sub_1D818E834();
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_37_4();
        OUTLINED_FUNCTION_10_20();
        OUTLINED_FUNCTION_41_3(v170);
        *(v171 + 64) = v109;
        *(v171 + 72) = &selRef_attemptTransitionToState_animated_;
        v172 = OUTLINED_FUNCTION_4_27();
        sub_1D7E91548(v172, v173, v166);
        sub_1D7EB8B0C(v214, v216, 1);
        v174 = &a15;
        goto LABEL_84;
      }

      v94 = v106;
      [v94 frame];
      v216 = v94;
      if (v223)
      {
        v149 = CGRectGetMinY(*&v145);
        OUTLINED_FUNCTION_50_2();
        v150 = v149 - (v213 - CGRectGetHeight(v240));
        if (v150 < 0.0)
        {
          v31 = 0.0;
        }

        else
        {
          v31 = v150;
        }

        OUTLINED_FUNCTION_50_2();
        MaxY = CGRectGetMaxY(v241);
        OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_38_3();

        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_3_38();
        if (v31 <= -9.22337204e18)
        {
          goto LABEL_93;
        }

        OUTLINED_FUNCTION_8_16();
        if (!v115)
        {
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_57_2();
        if (v154)
        {
          goto LABEL_102;
        }

        if (MaxY <= -9.22337204e18)
        {
          goto LABEL_109;
        }

        if (MaxY >= v153)
        {
          goto LABEL_112;
        }

        v122 = MaxY;
        if (MaxY < v31)
        {
          goto LABEL_119;
        }

        v155 = v152;
        v236 = v31;
        v237 = MaxY;
        OUTLINED_FUNCTION_0_53();
        v157 = OUTLINED_FUNCTION_43_5(v156);
        sub_1D7EAF54C(v157, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v158);
        v41 = v159;
        sub_1D7EB88FC();
        sub_1D8190DB4();
        OUTLINED_FUNCTION_6_21();
        sub_1D818E834();
        OUTLINED_FUNCTION_39_3();
        v160 = *(*&v41[v94] + 16);
        sub_1D7EB8AF4();
        v161 = *&v41[v94];
        *(v161 + 16) = v160 + 1;
        OUTLINED_FUNCTION_41_3((v161 + 48 * v160));
        *(v162 + 64) = v31;
        goto LABEL_83;
      }

      v180 = CGRectGetMinX(*&v145);
      OUTLINED_FUNCTION_50_2();
      v181 = v180 - (v92 - CGRectGetWidth(v244));
      if (v181 < 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v181;
      }

      OUTLINED_FUNCTION_50_2();
      MaxX = CGRectGetMaxX(v245);
      OUTLINED_FUNCTION_50_2();
      OUTLINED_FUNCTION_38_3();

      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_38();
      if (v31 <= -9.22337204e18)
      {
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_8_16();
      if (!v115)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_57_2();
      if (v184)
      {
        goto LABEL_105;
      }

      if (MaxX <= -9.22337204e18)
      {
        goto LABEL_107;
      }

      if (MaxX >= v183)
      {
        goto LABEL_115;
      }

      v176 = v31;
      v122 = MaxX;
      if (MaxX < v31)
      {
        goto LABEL_120;
      }

LABEL_82:
      v155 = v179;
      v236 = v176;
      v237 = v122;
      OUTLINED_FUNCTION_0_53();
      v186 = OUTLINED_FUNCTION_43_5(v185);
      sub_1D7EAF54C(v186, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v187);
      v41 = v188;
      sub_1D7EB88FC();
      sub_1D8190DB4();
      OUTLINED_FUNCTION_6_21();
      sub_1D818E834();
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_37_4();
      OUTLINED_FUNCTION_10_20();
      OUTLINED_FUNCTION_41_3(v189);
      *(v162 + 64) = v176;
LABEL_83:
      *(v162 + 72) = v122;
      v190 = OUTLINED_FUNCTION_4_27();
      sub_1D7E91548(v190, v191, v155);
      v174 = &a16;
LABEL_84:

      v143 = OUTLINED_FUNCTION_42_4();
      v86 = v224;
      goto LABEL_85;
    }

    v122 = v106;
    [v122 frame];
    v216 = v122;
    if (!v223)
    {
      v175 = CGRectGetMinX(*&v123);
      OUTLINED_FUNCTION_32_2(v175);
      v176 = v115 == v119;
      OUTLINED_FUNCTION_74_3();
      CGRectGetMaxX(v243);
      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_38_3();

      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_38();
      if (v31 <= -9.22337204e18)
      {
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_8_16();
      if (!v115)
      {
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_2_42();
      if (v178)
      {
        goto LABEL_100;
      }

      if (v177 <= -9.22337204e18)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_36_5();
      if (!v115)
      {
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_44_3();
      if (v115 != v119)
      {
        goto LABEL_122;
      }

      goto LABEL_82;
    }

    v127 = CGRectGetMinY(*&v123);
    OUTLINED_FUNCTION_32_2(v127);
    OUTLINED_FUNCTION_74_3();
    CGRectGetMaxY(v239);
    OUTLINED_FUNCTION_74_3();
    OUTLINED_FUNCTION_38_3();

    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_3_38();
    if (v31 <= -9.22337204e18)
    {
      break;
    }

    OUTLINED_FUNCTION_8_16();
    if (!v115)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_2_42();
    if (v129)
    {
      goto LABEL_103;
    }

    if (v128 <= -9.22337204e18)
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_36_5();
    if (!v115)
    {
      goto LABEL_117;
    }

    v132 = v131;
    if (v131 < v31)
    {
      goto LABEL_118;
    }

    v133 = v130;
    v236 = v31;
    v237 = v131;
    OUTLINED_FUNCTION_0_53();
    v135 = OUTLINED_FUNCTION_43_5(v134);
    sub_1D7EAF54C(v135, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v136);
    sub_1D7EB88FC();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_6_21();
    v214 = v133;
    v86 = v224;
    sub_1D818E834();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_10_20();
    v137 = v214;
    *(v138 + 32) = v215;
    *(v138 + 40) = v137;
    *(v138 + 48) = v94;
    *(v138 + 56) = v30;
    *(v138 + 64) = v31;
    *(v138 + 72) = v132;
    v139 = OUTLINED_FUNCTION_4_27();
    sub_1D7E91548(v139, v140, v141);
    OUTLINED_FUNCTION_58_2();

    v143 = OUTLINED_FUNCTION_42_4();
LABEL_85:
    v144(v143, v86);
    v95 = v226;
    (*v227)(v41, v226);
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
}

void sub_1D7EAAFC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7EAB040(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1D8192454();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7EAB040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);

  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for JSONView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1D818F824();
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return swift_deallocObject();
}

uint64_t (*BlueprintLayoutVisualRankBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v158 = a5;
  v156 = a2;
  v126 = a1;
  v161 = a9;
  v176 = a3;
  v177 = a4;
  v178 = a7;
  v179 = a8;
  v15 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v123 = v16;
  OUTLINED_FUNCTION_44();
  v121 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v19);
  v163 = a10;
  type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v21);
  v172 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23();
  v154 = v23;
  MEMORY[0x1EEE9AC00](v24);
  *&v173 = &v120 - v25;
  v149 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v171 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v164 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v33);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v168 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v165 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23();
  v167 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_14_1(&v120 - v39);
  v160 = a3;
  v176 = a3;
  v177 = a4;
  v162 = a4;
  v157 = a7;
  v178 = a7;
  v179 = a8;
  v159 = a8;
  v40 = type metadata accessor for BlueprintSection();
  WitnessTable = swift_getWitnessTable();
  v131 = sub_1D81923F4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v43);
  v132 = WitnessTable;
  v169 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v145 = v44;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_94();
  v170 = v46;
  v144 = *(v40 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v48);
  v137 = swift_getTupleTypeMetadata2();
  v136 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v153 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23();
  v135 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_14_1(&v120 - v53);
  v54 = OUTLINED_FUNCTION_13_19();
  sub_1D81923F4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v55);
  v139 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v120 = v56;
  OUTLINED_FUNCTION_44();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v120 - v59;
  *&v181 = MEMORY[0x1E69E7CC8];
  *(&v181 + 1) = MEMORY[0x1E69E7CC8];
  v182 = -1;
  v124 = v15;
  MEMORY[0x1DA7133A0](v15, v54, v58);
  v138 = v60;
  v61 = v125;
  sub_1D81923C4();
  v141 = 0;
  v133 = (v153 + 4);
  v130 = (v144 + 32);
  v165 += 32;
  v153 = (v164 + 32);
  v152 = v172 + 32;
  v151 = v172 + 16;
  v148 = v172 + 8;
  v147 = v171 + 8;
  v146 = v164 + 8;
  v128 = v145 + 8;
  v127 = v144 + 8;
  v143 = v29;
  v142 = a6;
  v150 = TupleTypeMetadata2;
  v129 = v40;
  while (2)
  {
    v62 = v135;
    sub_1D81923D4();
    OUTLINED_FUNCTION_22();
    v63 = v134;
    v64(v134, v62, v136);
    v65 = v137;
    if (__swift_getEnumTagSinglePayload(v63, 1, v137) == 1)
    {
      goto LABEL_29;
    }

    v164 = *v63;
    (*v130)(v140, &v63[*(v65 + 48)], v40);
    MEMORY[0x1DA7133A0](v40, v132);
    sub_1D81923C4();
    v144 = 0;
    v145 = 0;
    while (1)
    {
      v66 = v167;
      sub_1D81923D4();
      OUTLINED_FUNCTION_22();
      v67 = v166;
      v68(v166, v66, v168);
      if (__swift_getEnumTagSinglePayload(v67, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v69 = *v67;
      (*v153)(v61, &v67[*(TupleTypeMetadata2 + 48)], v30);
      v171 = v69;
      MEMORY[0x1DA710B60](v69, v164);
      v70 = v30;
      v71 = v158;
      v176 = v158;
      v177 = a6;
      v72 = v61;
      v73 = v161;
      v74 = v163;
      v178 = v161;
      v179 = v163;
      v75 = type metadata accessor for BlueprintLayout();
      v76 = v155;
      BlueprintLayout.subscript.getter(v29, v75);
      OUTLINED_FUNCTION_22();
      v77 = v29;
      v78 = v173;
      v79(v173, v76, a6);
      LODWORD(v172) = sub_1D7EB8BB0(v78, v160, v162, v71, a6, v157, v159, v73, v74);
      OUTLINED_FUNCTION_22();
      v80(v154, v78, a6);
      sub_1D7E0631C(0, &qword_1EDBBB330);
      if (swift_dynamicCast())
      {
        a6 = v72;
        sub_1D7E05450(v174, &v176);
        v81 = v179;
        v82 = v180;
        __swift_project_boxed_opaque_existential_1(&v176, v179);
        result = (*(v82 + 8))(v174, v81, v82);
        if (!BYTE8(v174[0]))
        {
          v30 = v70;
          if (((*&v174[0] >= 0) & v172) == 1)
          {
            TupleTypeMetadata2 = v150;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_34;
            }

            if (__OFADD__(v141, *&v174[0]))
            {
              goto LABEL_36;
            }

            ++v144;
            OUTLINED_FUNCTION_1_1();
            swift_getWitnessTable();
            OUTLINED_FUNCTION_12_21();
            sub_1D7EB8D68();
            OUTLINED_FUNCTION_12_21();
            v61 = v72;
          }

          else
          {
LABEL_22:
            TupleTypeMetadata2 = v150;
            if (__OFSUB__(v145, 1))
            {
              goto LABEL_31;
            }

            v61 = v72;
            --v145;
            OUTLINED_FUNCTION_1_1();
            swift_getWitnessTable();
            OUTLINED_FUNCTION_4_37();
            sub_1D7EB8D68();
            OUTLINED_FUNCTION_4_37();
          }

          sub_1D7E6383C();
          v100 = OUTLINED_FUNCTION_3_55();
          v101(v100);
          OUTLINED_FUNCTION_22();
          v102 = OUTLINED_FUNCTION_11_24();
          v103(v102);
          OUTLINED_FUNCTION_22();
          v104(v61, v30);
          v29 = &v181;
          goto LABEL_25;
        }

        v30 = v70;
        if (BYTE8(v174[0]) == 1)
        {
          if (__OFADD__(v144, *&v174[0]))
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          }

          if (__OFADD__(v145, *&v174[0]))
          {
            goto LABEL_32;
          }

          v145 += *&v174[0];
          v144 += *&v174[0];
          OUTLINED_FUNCTION_1_1();
          swift_getWitnessTable();
          v61 = v72;
          OUTLINED_FUNCTION_4_37();
          sub_1D7EB8D68();
          OUTLINED_FUNCTION_4_37();
          sub_1D7E6383C();
          v84 = OUTLINED_FUNCTION_3_55();
          v85(v84);
          OUTLINED_FUNCTION_22();
          v29 = v143;
          v86(v143, v149);
          OUTLINED_FUNCTION_22();
          v87(v72, v70);
          TupleTypeMetadata2 = v150;
        }

        else
        {
          if (((*&v174[0] == 0) & v172) == 0)
          {
            goto LABEL_22;
          }

          TupleTypeMetadata2 = v150;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_33;
          }

          if (__OFADD__(v141, v171))
          {
            goto LABEL_35;
          }

          v94 = v145;
          if (__OFADD__(v141 + v171, v145))
          {
            goto LABEL_37;
          }

          ++v144;
          OUTLINED_FUNCTION_1_1();
          swift_getWitnessTable();
          OUTLINED_FUNCTION_12_21();
          result = sub_1D7EB8D68();
          if (__OFADD__(v171, v94))
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_12_21();
          sub_1D7E6383C();
          v95 = OUTLINED_FUNCTION_3_55();
          v96(v95);
          OUTLINED_FUNCTION_22();
          v97 = OUTLINED_FUNCTION_11_24();
          v98(v97);
          OUTLINED_FUNCTION_22();
          v99(a6, v70);
          v29 = &v181;
          v61 = a6;
        }

LABEL_25:
        __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      }

      else
      {
        OUTLINED_FUNCTION_22();
        v88(v78, a6);
        OUTLINED_FUNCTION_22();
        v89(v77, v149);
        OUTLINED_FUNCTION_22();
        v90(v72, v70);
        v175 = 0;
        memset(v174, 0, sizeof(v174));
        OUTLINED_FUNCTION_12_21();
        sub_1D7FBDB74(v91, v92, v93);
        v29 = v77;
        v30 = v70;
        v61 = v72;
        TupleTypeMetadata2 = v150;
      }
    }

    OUTLINED_FUNCTION_22();
    v105(v170, v169);
    OUTLINED_FUNCTION_22();
    v40 = v129;
    v106(v140, v129);
    v107 = __OFADD__(v141, v144);
    v141 += v144;
    if (!v107)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_29:
  (*(v120 + 8))(v138, v139);
  v108 = v123;
  v109 = v122;
  v110 = v124;
  (*(v123 + 16))(v122, v126, v124);
  v111 = v182;
  v112 = (*(v108 + 80) + 80) & ~*(v108 + 80);
  v113 = (v121 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = swift_allocObject();
  v115 = v162;
  *(v114 + 2) = v160;
  *(v114 + 3) = v115;
  *(v114 + 4) = v158;
  *(v114 + 5) = a6;
  v116 = v159;
  *(v114 + 6) = v157;
  *(v114 + 7) = v116;
  v117 = v163;
  *(v114 + 8) = v161;
  *(v114 + 9) = v117;
  v118 = *(v108 + 32);
  v119 = &v114[v113];
  v173 = v181;
  v118(&v114[v112], v109, v110);
  *v119 = v173;
  *(v119 + 2) = v111;
  return OUTLINED_FUNCTION_2_60();
}

uint64_t sub_1D7EAC408()
{
  v1 = type metadata accessor for Blueprint();
  v8 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v8 + 80) & ~v8);

  if (*(v2 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  }

  v3 = *(v1 + 56);
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_13_19();
  sub_1D818F394();
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(v2 + v3);
  v5 = *(v1 + 60);
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_13_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  sub_1D818F784();
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

uint64_t (*BlueprintTraversalCollectionBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v106 = a2;
  v16 = *v10;
  v115 = a1;
  v116 = v16;
  v18 = type metadata accessor for BlueprintSection();
  WitnessTable = swift_getWitnessTable();
  v104 = sub_1D81923F4();
  OUTLINED_FUNCTION_9();
  v114 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v92 - v21;
  v122 = a5;
  v123 = a6;
  v128 = a5;
  v129 = a6;
  v121 = a9;
  v130 = a9;
  v131 = a10;
  v126 = a10;
  v102 = type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  v113 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v92 - v24;
  v25 = *(v18 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  v117 = &v92 - v27;
  v119 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v109 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v107 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v92 - v33);
  v120 = a3;
  v128 = a3;
  v129 = a4;
  v110 = a4;
  v124 = a7;
  v125 = a8;
  v130 = a7;
  v131 = a8;
  v35 = type metadata accessor for Blueprint();
  v36 = swift_getWitnessTable();
  sub_1D81923F4();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  v112 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v93 = v38;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v92 - v40;
  v116 = *(v116 + 80);
  v99 = type metadata accessor for BlueprintTraversalCollectionItem();
  v127 = sub_1D81913C4();
  MEMORY[0x1DA7133A0](v35, v36);
  v111 = v41;
  sub_1D81923C4();
  v42 = 0;
  v107 += 32;
  v98 = (v25 + 32);
  v97 = v114 + 1;
  v96 = v25 + 8;
  v95 = v113 + 1;
  v101 = TupleTypeMetadata2;
  v100 = v34;
  while (1)
  {
    v43 = v108;
    sub_1D81923D4();
    OUTLINED_FUNCTION_22();
    v44(v34, v43, v109);
    if (__swift_getEnumTagSinglePayload(v34, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v115 = *v34;
    v45 = v115;
    v46 = v119;
    (*v98)(v117, v34 + *(TupleTypeMetadata2 + 48), v119);
    v47 = v122;
    v128 = v122;
    v129 = v123;
    v48 = v123;
    v130 = v121;
    v114 = v42;
    v49 = v121;
    v131 = v126;
    v50 = type metadata accessor for BlueprintLayout();
    v51 = v118;
    BlueprintLayout.subscript.getter(v45, v50);
    v52 = v103;
    v53 = MEMORY[0x1DA7133A0](v46, WitnessTable);
    v113 = &v92;
    MEMORY[0x1EEE9AC00](v53);
    *(&v92 - 10) = v116;
    *(&v92 - 9) = v120;
    v54 = v110;
    *(&v92 - 8) = v110;
    *(&v92 - 7) = v47;
    v55 = v124;
    *(&v92 - 6) = v48;
    *(&v92 - 5) = v55;
    v56 = v126;
    *(&v92 - 4) = v125;
    *(&v92 - 3) = v49;
    *(&v92 - 2) = v56;
    *(&v92 - 1) = v51;
    MEMORY[0x1EEE9AC00](v57);
    *(&v92 - 12) = v58;
    *(&v92 - 11) = v59;
    v60 = v59;
    *(&v92 - 10) = v54;
    *(&v92 - 9) = v47;
    *(&v92 - 8) = v48;
    *(&v92 - 7) = v61;
    *(&v92 - 6) = v62;
    *(&v92 - 5) = v49;
    *(&v92 - 4) = v63;
    *(&v92 - 3) = sub_1D7EB90B0;
    *(&v92 - 2) = v64;
    swift_getTupleTypeMetadata3();
    v65 = v104;
    swift_getWitnessTable();
    v42 = v114;
    v66 = sub_1D8191184();
    OUTLINED_FUNCTION_22();
    v68 = v67(v52, v65);
    v114 = &v92;
    v128 = v66;
    MEMORY[0x1EEE9AC00](v68);
    v69 = v116;
    *(&v92 - 10) = v116;
    *(&v92 - 9) = v60;
    v70 = v121;
    v71 = v122;
    *(&v92 - 8) = v54;
    *(&v92 - 7) = v71;
    *(&v92 - 6) = v48;
    v73 = v124;
    v72 = v125;
    *(&v92 - 5) = v124;
    *(&v92 - 4) = v72;
    v74 = v126;
    *(&v92 - 3) = v70;
    *(&v92 - 2) = v74;
    v75 = sub_1D8191484();
    swift_getWitnessTable();
    v76 = sub_1D8191204();

    v114 = &v92;
    v128 = v76;
    MEMORY[0x1EEE9AC00](v77);
    v78 = v120;
    *(&v92 - 10) = v69;
    *(&v92 - 9) = v78;
    *(&v92 - 8) = v54;
    *(&v92 - 7) = v71;
    *(&v92 - 6) = v123;
    *(&v92 - 5) = v73;
    TupleTypeMetadata2 = v101;
    v34 = v100;
    v79 = v126;
    *(&v92 - 4) = v125;
    *(&v92 - 3) = v70;
    v80 = v115;
    *(&v92 - 2) = v79;
    *(&v92 - 1) = v80;
    v81 = swift_getWitnessTable();
    sub_1D7E6CDC0(sub_1D7EB95E4, (&v92 - 12), v75, v99, MEMORY[0x1E69E73E0], v81, MEMORY[0x1E69E7410], v82);

    sub_1D81913F4();

    OUTLINED_FUNCTION_22();
    v83(v117, v119);
    OUTLINED_FUNCTION_22();
    v84(v118, v102);
  }

  (*(v93 + 8))(v111, v112);
  v85 = v127;
  v86 = swift_allocObject();
  v87 = v110;
  v86[2] = v120;
  v86[3] = v87;
  v88 = v123;
  v86[4] = v122;
  v86[5] = v88;
  v89 = v125;
  v86[6] = v124;
  v86[7] = v89;
  v90 = v126;
  v86[8] = v121;
  v86[9] = v90;
  v86[10] = v94;
  v86[11] = v85;

  return OUTLINED_FUNCTION_0_90();
}

uint64_t sub_1D7EACFC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EAD000(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    memcpy(v7, __dst, sizeof(v7));
    sub_1D7E6755C(__dst, &v6);
    sub_1D7EAD1EC();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1D7E6E120();

    memcpy(v7, __dst, sizeof(v7));
    sub_1D7EAD254();
  }

  return result;
}

void Blueprint.insert(_:at:)()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_56();
  sub_1D818F394();
  sub_1D818F324();
  OUTLINED_FUNCTION_18_40();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_24();
  sub_1D818F754();
  OUTLINED_FUNCTION_80_0();
}

uint64_t sub_1D7EAD1EC()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_51_7(v3);
  v0 = OUTLINED_FUNCTION_29_12();
  memcpy(v0, v1, 0x4E8uLL);
  return sub_1D7E598FC(v3);
}

void sub_1D7EAD254()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_113();
  v1 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v21 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v20 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  memcpy(v24, v0, 0x4E8uLL);
  OUTLINED_FUNCTION_8_4();
  if (*(v0[2] + 16))
  {
    type metadata accessor for BlueprintCollectionViewLayoutCache.Token();
    v13 = swift_allocObject();
    v0[3] = v13;
    v14 = v13;

    v15 = v0[2];
    OUTLINED_FUNCTION_15_2();
    sub_1D7EAD894(0, &qword_1EDBB3478, MEMORY[0x1E69E5E18]);
    sub_1D8190DB4();
    sub_1D8190DE4();
    swift_endAccess();
    OUTLINED_FUNCTION_0_8();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    memcpy(v17 + 4, v24, 0x4E8uLL);
    v17[161] = v14;
    v23[4] = sub_1D8042038;
    v23[5] = v17;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1D7E64940;
    v23[3] = &block_descriptor_85;
    v18 = _Block_copy(v23);

    sub_1D7E6755C(v24, &v22);
    sub_1D8190BF4();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D7E2DB48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
    v19 = MEMORY[0x1E69E7F60];
    sub_1D7E1AE04(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D7E1CFF4(&qword_1EDBB3340, &qword_1EDBB3348, v19);
    sub_1D8192004();
    MEMORY[0x1DA713CE0](0, v12, v6, v18);
    _Block_release(v18);

    (*(v21 + 8))(v6, v1);
    (*(v20 + 8))(v12, v7);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EAD630()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EAD660()
{

  sub_1D7E57C40(*(v0 + 312), *(v0 + 320), *(v0 + 328));
  sub_1D7E57C40(*(v0 + 336), *(v0 + 344), *(v0 + 352));
  sub_1D7E57C40(*(v0 + 360), *(v0 + 368), *(v0 + 376));

  sub_1D7E57C40(*(v0 + 880), *(v0 + 888), *(v0 + 896));
  sub_1D7E57C40(*(v0 + 904), *(v0 + 912), *(v0 + 920));
  sub_1D7E57C40(*(v0 + 928), *(v0 + 936), *(v0 + 944));

  return swift_deallocObject();
}

void static BlueprintModifierResult.changes<A, B>(newBlueprint:oldBlueprint:bookmark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_79();
  a29 = v30;
  a30 = v31;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_18_21();
  - infix<A, B>(_:_:)();
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_7_40();
  if ((v33(v32) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_94();
    type metadata accessor for Blueprint();
    sub_1D7E0631C(255, &qword_1EDBBA670);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_15_23();
    OUTLINED_FUNCTION_4_54();
    v34 = OUTLINED_FUNCTION_16_24();
    v36 = v35(v34);
    OUTLINED_FUNCTION_29_11(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_27_15();
  }

  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm(&a14);
  OUTLINED_FUNCTION_80_0();
}

{
  OUTLINED_FUNCTION_79();
  a29 = v30;
  a30 = v31;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_18_21();
  - infix<A, B>(_:_:)();
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_7_40();
  if ((v33(v32) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_94();
    type metadata accessor for Blueprint();
    sub_1D7E0631C(255, &qword_1EDBBA670);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_15_23();
    OUTLINED_FUNCTION_4_54();
    v34 = OUTLINED_FUNCTION_16_24();
    v36 = v35(v34);
    OUTLINED_FUNCTION_29_11(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_27_15();
  }

  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm(&a14);
  OUTLINED_FUNCTION_80_0();
}

void sub_1D7EAD894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect();
    v7 = v6;
    v8 = type metadata accessor for BlueprintLayoutCollectionRectResult();
    v9 = sub_1D7E2DB48(&qword_1EDBB3008, type metadata accessor for CGRect);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void Diff.build(in:oldIndex:newIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v168 = a3;
  v166 = a2;
  v173 = a1;
  sub_1D7E98BE0();
  OUTLINED_FUNCTION_9();
  v170 = v5;
  v171 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_23();
  v177 = v6;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v167 = &v148 - v8;
  v9 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23();
  v148 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24_1();
  v165 = v15;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_24_1();
  v176 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_1();
  v162 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_24_1();
  v160 = v21;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24_1();
  v175 = v23;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  v174 = &v148 - v25;
  v159 = sub_1D818E7F4();
  OUTLINED_FUNCTION_9();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v158 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EAE9D0();
  v31 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23();
  v163 = v33;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_24_1();
  v164 = v35;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v148 - v37;
  v154 = v3;
  sub_1D818E804();
  v149 = v31;
  v172 = *(v31 + 36);
  v153 = 0;
  v157 = sub_1D818E8B4();
  v39 = sub_1D7E98CF4(&qword_1EDBBC6E0, MEMORY[0x1E6969B50]);
  v156 = (v27 + 8);
  v155 = v11 + 32;
  v161 = v39;
  while (1)
  {
    v40 = v158;
    OUTLINED_FUNCTION_34_12();
    v41 = sub_1D7E98CF4(&qword_1EDBBC6F0, MEMORY[0x1E6969B18]);
    OUTLINED_FUNCTION_32_12();
    v42 = sub_1D8190ED4();
    v43 = *v156;
    (*v156)(v40, v38);
    if (v42)
    {
      break;
    }

    sub_1D81918F4();
    v44 = OUTLINED_FUNCTION_16_30();
    v45(v44);
    sub_1D81917C4();
    MEMORY[0x1DA710B60](v42, v166);
    v46 = *(type metadata accessor for Diff() + 36);
    v47 = *(v173 + v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = OUTLINED_FUNCTION_4_65();
      sub_1D7EAEB70(v51, v52, v53, v54);
      v47 = v55;
    }

    v49 = *(v47 + 16);
    v48 = *(v47 + 24);
    if (v49 >= v48 >> 1)
    {
      OUTLINED_FUNCTION_13_32(v48);
      v47 = v56;
    }

    *(v47 + 16) = v49 + 1;
    OUTLINED_FUNCTION_5_51();
    OUTLINED_FUNCTION_24_17();
    v50();
    *(v173 + v46) = v47;
  }

  v150 = v43;
  v151 = v41;
  OUTLINED_FUNCTION_3_90();
  sub_1D7E9A8A0();
  v172 = type metadata accessor for Diff();
  sub_1D818E804();
  while (1)
  {
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_32_12();
    v57 = sub_1D8190ED4();
    OUTLINED_FUNCTION_31_12();
    v58();
    if (v57)
    {
      break;
    }

    sub_1D81918F4();
    v59 = OUTLINED_FUNCTION_16_30();
    v60(v59);
    sub_1D81917C4();
    MEMORY[0x1DA710B60](v57, v168);
    v61 = *(v172 + 40);
    v62 = *(v173 + v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = OUTLINED_FUNCTION_4_65();
      sub_1D7EAEB70(v66, v67, v68, v69);
      v62 = v70;
    }

    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    if (v64 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_13_32(v63);
      v62 = v71;
    }

    *(v62 + 16) = v64 + 1;
    OUTLINED_FUNCTION_5_51();
    OUTLINED_FUNCTION_24_17();
    v65();
    *(v173 + v61) = v62;
  }

  OUTLINED_FUNCTION_3_90();
  sub_1D7E9A8A0();
  v72 = *(v154 + *(v172 + 32));
  v73 = *(v72 + 16);
  v74 = v176;
  v75 = v162;
  v76 = v160;
  if (v73)
  {
    v152 = (v11 + 16);
    v175 = (v11 + 8);
    v77 = v72 + 40;
    do
    {
      MEMORY[0x1DA710B60](*(v77 - 8), v168);
      v78 = OUTLINED_FUNCTION_109();
      MEMORY[0x1DA710B60](v78);
      OUTLINED_FUNCTION_1_114();
      sub_1D7E98CF4(&qword_1EDBBC6B0, v79);
      if (sub_1D8190ED4())
      {
        v80 = *v175;
        (*v175)(v75, v9);
        v80(v76, v9);
      }

      else
      {
        v81 = *v152;
        v82 = v167;
        (*v152)(v167, v76, v9);
        v81(&v82[*(v171 + 36)], v75, v9);
        v174 = *(v172 + 52);
        v83 = *&v174[v173];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = OUTLINED_FUNCTION_4_65();
          sub_1D7EE5484(v87, v88, v89, v90);
          v83 = v91;
        }

        v85 = *(v83 + 16);
        v84 = *(v83 + 24);
        v164 = (v85 + 1);
        if (v85 >= v84 >> 1)
        {
          sub_1D7EE5484(v84 > 1, v85 + 1, 1, v83);
          v83 = v92;
        }

        v86 = *v175;
        v75 = v162;
        (*v175)(v162, v9);
        v76 = v160;
        v86(v160, v9);
        *(v83 + 16) = v164;
        sub_1D7E9A834();
        *&v174[v173] = v83;
        v74 = v176;
      }

      v77 += 16;
      --v73;
    }

    while (v73);
  }

  v152 = *(v172 + 24);
  sub_1D818E804();
  v149 = *(v149 + 36);
  v160 = (v11 + 16);
  v164 = (v11 + 8);
  v93 = v177;
  v169 = v9;
  while (1)
  {
    sub_1D81917B4();
    v94 = sub_1D8190ED4();
    OUTLINED_FUNCTION_31_12();
    v95();
    if (v94)
    {
      OUTLINED_FUNCTION_3_90();
      sub_1D7E9A8A0();
      sub_1D818E894();
      return;
    }

    sub_1D81918F4();
    v96 = OUTLINED_FUNCTION_16_30();
    v97(v96);
    sub_1D81917C4();
    MEMORY[0x1DA710B60](v94, v166);
    v98 = v173;
    v99 = *(v173 + *(v172 + 52));
    v100 = *(v99 + 16);
    if (v100)
    {
      break;
    }

LABEL_67:
    (*v160)(v148, v74, v9);
    v137 = *(v172 + 44);
    v138 = *(v98 + v137);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = OUTLINED_FUNCTION_4_65();
      sub_1D7EAEB70(v142, v143, v144, v145);
      v138 = v146;
    }

    v140 = *(v138 + 16);
    v139 = *(v138 + 24);
    if (v140 >= v139 >> 1)
    {
      OUTLINED_FUNCTION_13_32(v139);
      v138 = v147;
    }

    *(v138 + 16) = v140 + 1;
    OUTLINED_FUNCTION_5_51();
    OUTLINED_FUNCTION_24_17();
    v141();
    *(v98 + v137) = v138;
    v93 = v177;
LABEL_72:
    (*v164)(v74, v9);
  }

  v101 = 0;
  v102 = v170;
  v175 = (v99 + ((*(v170 + 80) + 32) & ~*(v170 + 80)));
  v103 = 1;
  v104 = v100;
  v167 = v100;
  v162 = v99;
  while (v101 < v104)
  {
    v105 = v101 + 1;
    sub_1D7E9A4A8();
    if ((v103 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_158();
      sub_1D7E9A8A0();
      if (v105 == v100)
      {
        goto LABEL_72;
      }

      v101 = v105;
LABEL_65:
      v103 = 0;
      goto LABEL_66;
    }

    v174 = v105;
    if (sub_1D818E914())
    {
      v106 = 0;
      v168 = *(v172 + 48);
      v107 = *(v98 + v168);
      v108 = *(v171 + 36);
      v109 = *(v107 + 16);
      while (v109 != v106)
      {
        v110 = v106 + 1;
        v111 = *(v11 + 80);
        v112 = *(v11 + 72);
        v103 = v107 + ((v111 + 32) & ~v111) + v112 * v106;
        OUTLINED_FUNCTION_1_114();
        sub_1D7E98CF4(&qword_1EDBBC6B0, v113);
        v114 = sub_1D8190ED4();
        v106 = v110;
        if (v114)
        {
          v98 = v173;
          v93 = v177;
          goto LABEL_55;
        }
      }

      v98 = v173;
      v125 = v168;
      sub_1D7EE4434();
      OUTLINED_FUNCTION_33_10();
      v107 = *(v98 + v125);
      *(v107 + 16) = v103 + 1;
      v111 = *(v11 + 80);
      v112 = *(v11 + 72);
      v93 = v177;
      (*(v11 + 16))(v107 + ((v111 + 32) & ~v111) + v112 * v103, v177 + v108, v169);
      *(v98 + v125) = v107;
LABEL_55:
      v100 = (v93 + v108);
      v126 = sub_1D818E964();
      v127 = v165;
      MEMORY[0x1DA710B60](v126, v166);
      if (sub_1D818E914() & 1) != 0 && (sub_1D818E964(), v100 = v152 + v154, v128 = sub_1D818E884(), (v128))
      {
        MEMORY[0x1EEE9AC00](v128);
        *(&v148 - 2) = v93;
        v129 = v107;
        v130 = v153;
        v131 = sub_1D7EB0860(sub_1D7EB0ED8, (&v148 - 4), v129);
        v153 = v130;
        v102 = v170;
        v99 = v162;
        if (v131)
        {
          v9 = v169;
          (*v164)(v165, v169);
        }

        else
        {
          v135 = v168;
          sub_1D7EE4434();
          OUTLINED_FUNCTION_33_10();
          (*v164)(v165, v169);
          v100 = *(v98 + v135);
          *(v100 + 2) = &v148 + 1;
          v136 = v169;
          (*v160)(&v100[((v111 + 32) & ~v111) + v112 * &v148], v93, v169);
          *(v98 + v135) = v100;
          v9 = v136;
        }
      }

      else
      {
        v9 = v169;
        (*v164)(v127, v169);
        v102 = v170;
        v99 = v162;
      }

      OUTLINED_FUNCTION_0_158();
      sub_1D7E9A8A0();
      OUTLINED_FUNCTION_15_30();
      v74 = v176;
      if (v120)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v115 = *(v171 + 36);
    if (sub_1D818E904() & 1) != 0 && (MEMORY[0x1DA710B00](v74, v93))
    {
      OUTLINED_FUNCTION_26_16();
      while (v74 != v116)
      {
        v117 = v116 + 1;
        OUTLINED_FUNCTION_1_114();
        sub_1D7E98CF4(&qword_1EDBBC6B0, v118);
        v119 = OUTLINED_FUNCTION_28_15();
        v116 = v117;
        if (v119)
        {
          OUTLINED_FUNCTION_0_158();
          v93 = v177;
          sub_1D7E9A8A0();
          OUTLINED_FUNCTION_15_30();
          v102 = v170;
          if (v120)
          {
            goto LABEL_73;
          }

          v103 = 0;
          v74 = v176;
          goto LABEL_66;
        }
      }
    }

    else
    {
      if ((MEMORY[0x1DA710B00](v74, v93 + v115) & 1) == 0 || (sub_1D818E904() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_158();
        sub_1D7E9A8A0();
        v101 = v174;
        if (v174 == v100)
        {
          goto LABEL_67;
        }

        v103 = 1;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_26_16();
      while (v74 != v121)
      {
        v122 = v121 + 1;
        OUTLINED_FUNCTION_1_114();
        sub_1D7E98CF4(&qword_1EDBBC6B0, v123);
        v124 = OUTLINED_FUNCTION_28_15();
        v121 = v122;
        if (v124)
        {
          OUTLINED_FUNCTION_0_158();
          v93 = v177;
          sub_1D7E9A8A0();
          OUTLINED_FUNCTION_15_30();
          if (!v120)
          {
            v103 = 0;
            v74 = v176;
            goto LABEL_62;
          }

LABEL_73:
          v74 = v176;
          goto LABEL_72;
        }
      }
    }

    sub_1D7EE4434();
    v132 = *(*(v98 + v102) + 16);
    sub_1D7EE4660();
    v100 = *(v98 + v102);
    *(v100 + 2) = v132 + 1;
    OUTLINED_FUNCTION_5_51();
    v74 = v176;
    (*(v11 + 16))(v133 + v134 * v132, v176, v9);
    *(v98 + v102) = v100;
    OUTLINED_FUNCTION_0_158();
    v93 = v177;
    sub_1D7E9A8A0();
    OUTLINED_FUNCTION_15_30();
    if (v120)
    {
      goto LABEL_72;
    }

    v103 = 0;
LABEL_62:
    v102 = v170;
LABEL_66:
    v104 = *(v99 + 16);
  }

  __break(1u);
}

uint64_t sub_1D7EAE8DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + *(*Strong + 152));
    *v1 = 0u;
    v1[1] = 0u;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for BlueprintPrefetcher();
    BlueprintPrefetcherType.prefetch()();
  }

  return result;
}

void sub_1D7EAE9D0()
{
  if (!qword_1EDBB2EA8)
  {
    sub_1D818E8B4();
    sub_1D7E98CF4(&qword_1EDBBC6E0, MEMORY[0x1E6969B50]);
    v0 = sub_1D8192344();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2EA8);
    }
  }
}

void sub_1D7EAEA7C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_16();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_12_4();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1D7EAEBF4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E73450(0, a3, a4, MEMORY[0x1E69E6F90]);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_21_4((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7EAED38(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, double a11, double a12)
{
  v69 = a9;
  v70 = a10;
  v79 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_28_0();
  v74 = (v26 - v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v67 - v29;
  v68 = *v18;
  v67 = v18[1];
  OUTLINED_FUNCTION_14_48(v88);
  v77 = 0;
  v30 = v18[156];
  v75 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CD0];
  v78 = (v24 + 8);
  v71 = v30;
  v72 = a2;
  while (1)
  {
    if (*(v30 + 16))
    {
      v31 = sub_1D7E7E198(a1);
      if (v32)
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        if (v33 >> 62)
        {
          v34 = sub_1D81920A4();
          if (v34)
          {
LABEL_6:
            v73 = a1;
            v35 = v33 & 0xC000000000000001;
            v80 = v33 + 32;
            v81 = v33 & 0xFFFFFFFFFFFFFF8;
            sub_1D8190DB4();
            v36 = 0;
            v82 = v33 & 0xC000000000000001;
            v83 = v34;
            while (1)
            {
              if (v35)
              {
                v37 = MEMORY[0x1DA714420](v36, v33);
              }

              else
              {
                if (v36 >= *(v81 + 16))
                {
                  goto LABEL_51;
                }

                v37 = *(v80 + 8 * v36);
              }

              v38 = v37;
              v39 = __OFADD__(v36++, 1);
              if (v39)
              {
                break;
              }

              if (BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter())
              {
              }

              else
              {
                v40 = v33;
                if (*&v38[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier + 8])
                {
                  v41 = *&v38[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
                  v42 = *&v38[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier + 8];
                }

                else
                {
                  v84[0] = [v38 representedElementCategory];
                  v85[0] = sub_1D81925B4();
                  v85[1] = v43;
                  MEMORY[0x1DA713260](14906, 0xE200000000000000);
                  v44 = [v38 indexPath];
                  v45 = v76;
                  sub_1D818E924();

                  sub_1D7E24964(&unk_1EDBBC6A0);
                  v46 = v79;
                  v47 = sub_1D81925B4();
                  MEMORY[0x1DA713260](v47);

                  (*v78)(v45, v46);
                  v41 = v85[0];
                  v42 = v85[1];
                }

                v48 = v86;
                if (*(v86 + 16))
                {
                  sub_1D81927E4();
                  sub_1D8190DB4();
                  sub_1D8190FF4();
                  v49 = sub_1D8192824();
                  v50 = ~(-1 << *(v48 + 32));
                  while (1)
                  {
                    v51 = v49 & v50;
                    if (((*(v48 + 56 + (((v49 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v50)) & 1) == 0)
                    {
                      break;
                    }

                    v52 = (*(v48 + 48) + 16 * v51);
                    if (*v52 != v41 || v52[1] != v42)
                    {
                      v54 = sub_1D8192634();
                      v49 = v51 + 1;
                      if ((v54 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  sub_1D8190DB4();
                }

                if (sub_1D7EAF358())
                {
                  v55 = v38;
                  MEMORY[0x1DA713500]();
                  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D81913B4();
                  }

                  sub_1D8191404();
                  v75 = v87;
                  v56 = [v55 indexPath];
                  v57 = v74;
                  sub_1D818E924();

                  v58 = sub_1D818E974();
                  (*v78)(v57, v79);
                  v59 = v77;
                  if (v58 > v77)
                  {
                    v59 = v58;
                  }

                  v77 = v59;
                  sub_1D7E91548(v85, v41, v42);
                }

                else
                {
LABEL_33:
                }

                v33 = v40;
                v35 = v82;
                v34 = v83;
              }

              if (v36 == v34)
              {

                a2 = v72;
                a1 = v73;
                v30 = v71;
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            return;
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_6;
          }
        }
      }
    }

LABEL_37:
    if (a1 == a2)
    {
      break;
    }

    v39 = __OFADD__(a1++, 1);
    if (v39)
    {
      goto LABEL_52;
    }
  }

  if (!sub_1D7E36AB8(v75))
  {

    return;
  }

  v60 = v77 + 1;
  if (__OFADD__(v77, 1))
  {
    goto LABEL_53;
  }

  if (v60 < 0)
  {
    goto LABEL_54;
  }

  v61 = sub_1D7EAF814(0, v60);
  memcpy(v84, v88, sizeof(v84));
  sub_1D7EAF9D8(v88, v85);
  v63 = v69;
  v62 = v70;
  v89.top = v69;
  v89.left = v70;
  v89.bottom = a11;
  v89.right = a12;
  v64 = BlueprintLayoutCollectionPinAdjuster.pinnedLayoutAttributes(for:offset:insets:contentSize:)(v61, __PAIR128__(*&a8, *&a7), v89, __PAIR128__(v67, v68));

  memcpy(v85, v84, sizeof(v85));
  sub_1D7EAFC0C(v85);
  if (v64)
  {
    sub_1D7F0A764(v64);
  }

  v65 = v64 == 0;
  v66 = v87;
  type metadata accessor for BlueprintLayoutCollectionRectResult();
  swift_allocObject();
  sub_1D7EAFC84(v66, v65, a7, a8, v63, v62, a11, a12);
}

void sub_1D7EAF3D4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_5_21(v4, &qword_1EDBB2EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_159();
  v5 = sub_1D8192144();
  if (*(v1 + 16))
  {
    v6 = 0;
    OUTLINED_FUNCTION_23_6();
    if (v3)
    {
      while (1)
      {
        OUTLINED_FUNCTION_64_3();
LABEL_9:
        v11 = (*(v1 + 48) + 16 * (v7 | (v6 << 6)));
        v12 = *v11;
        v13 = v11[1];
        sub_1D81927E4();
        sub_1D8190DB4();
        sub_1D8190FF4();
        sub_1D8192824();
        OUTLINED_FUNCTION_35_5();
        if (v14)
        {
          break;
        }

        OUTLINED_FUNCTION_34();
LABEL_18:
        OUTLINED_FUNCTION_29_5(v15);
        *v20 = v12;
        v20[1] = v13;
        ++*(v5 + 16);
        if (!v3)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_33();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (v0[v16] != -1)
        {
          OUTLINED_FUNCTION_32();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v8 = v6;
      while (1)
      {
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v6 >= v2)
        {
          goto LABEL_20;
        }

        ++v8;
        if (*(v1 + 56 + 8 * v6))
        {
          OUTLINED_FUNCTION_21_3();
          v3 = v10 & v9;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v0 = v5;
    OUTLINED_FUNCTION_80_0();
  }
}

void sub_1D7EAF54C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t CoverViewManager.styleCoverView(with:)(uint64_t a1)
{
  CoverViewManager.cover.getter();
  if (v13[49] != 2)
  {
    return sub_1D7E298F0(v12);
  }

  v2 = v13[40];
  v6 = v12[0];
  v7 = v12[1];
  sub_1D7E0E768(a1, v8);
  LOBYTE(v9) = v2;
  OUTLINED_FUNCTION_2_88(2, v4, v5, SWORD2(v5), SBYTE6(v5), HIBYTE(v5), v6, *(&v6 + 1), v7, *(&v7 + 1), v8[0], v8[1], v8[2], v8[3], v8[4], v9, v10, v11);
  sub_1D7E298F0(&v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

{
  CoverViewManager.cover.getter();
  if (v23 == 4)
  {
    v3 = v21;
    v4 = v22;
    sub_1D7E0E768(a1, v8);
    v13 = v3;
    v14 = v4;
    v2 = 4;
    goto LABEL_5;
  }

  if (v23 == 3)
  {
    sub_1D7E0E768(a1, v8);
    v2 = 3;
LABEL_5:
    OUTLINED_FUNCTION_2_88(v2, v6, v7, SWORD2(v7), SBYTE6(v7), HIBYTE(v7), v8[0], v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
    sub_1D7E298F0(v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return sub_1D7E298F0(v20);
}

void sub_1D7EAF62C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_5_21(v4, &qword_1EDBB2EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_159();
  v5 = sub_1D8192144();
  if (!*(v1 + 16))
  {
LABEL_24:

    *v0 = v5;
    OUTLINED_FUNCTION_80_0();
    return;
  }

  v6 = 0;
  v7 = (v1 + 56);
  OUTLINED_FUNCTION_23_6();
  if (!v3)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v6 >= v2)
      {
        break;
      }

      ++v9;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_21_3();
        v3 = v11 & v10;
        goto LABEL_9;
      }
    }

    v22 = 1 << *(v1 + 32);
    if (v22 >= 64)
    {
      sub_1D7E2CB98(0, (v22 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_59_3();
      *v7 = v23;
    }

    *(v1 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_64_3();
LABEL_9:
    v12 = (*(v1 + 48) + 16 * (v8 | (v6 << 6)));
    v13 = *v12;
    v14 = v12[1];
    sub_1D81927E4();
    sub_1D8190FF4();
    sub_1D8192824();
    OUTLINED_FUNCTION_35_5();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_34();
LABEL_18:
    OUTLINED_FUNCTION_29_5(v16);
    *v21 = v13;
    v21[1] = v14;
    ++*(v5 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (v0[v17] != -1)
    {
      OUTLINED_FUNCTION_32();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t CoverViewManager.cover.getter()
{

  sub_1D818F534();
}

uint64_t sub_1D7EAF814(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_1D7EAF8B8();
        if (sub_1D7EAF93C(&v7, v6 + 32, v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7EAF8B8()
{
  OUTLINED_FUNCTION_15_3();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E71F64(0, &unk_1EDBB2C40);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_22_5(v1);
  OUTLINED_FUNCTION_21_4(v2 / 8);
  return v0;
}

uint64_t sub_1D7EAF93C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall BlueprintLayoutCollectionPinAdjuster.pinnedLayoutAttributes(for:offset:insets:contentSize:)(Swift::OpaquePointer a1, CGPoint offset, UIEdgeInsets insets, CGSize contentSize)
{
  OUTLINED_FUNCTION_70();
  v6 = *(v4 + 568);
  if (*(v6 + 16))
  {
    v29 = MEMORY[0x1E69E7CC0];
    v7 = *(v5 + 16);
    if (v7)
    {
      OUTLINED_FUNCTION_5_46();
      v8 = 0;
      v10 = v9 + 32;
      v22 = v9 + 32;
      v23 = v7;
      do
      {
        if (!*(v6 + 16))
        {
          goto LABEL_17;
        }

        v11 = sub_1D7E7E198(*(v10 + 8 * v8));
        if (!v12)
        {
          goto LABEL_17;
        }

        v13 = *(*(v6 + 56) + 8 * v11);
        if (v13 >> 62)
        {
          v11 = sub_1D81920A4();
          v14 = v11;
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            goto LABEL_17;
          }
        }

        if (v14 < 1)
        {
          __break(1u);
          goto LABEL_23;
        }

        v24 = v8;
        sub_1D8190DB4();
        v15 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1DA714420](v15, v13);
          }

          else
          {
            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          memcpy(__dst, v4, sizeof(__dst));
          v26 = v6;
          v18 = *(v4 + 592);
          v27 = *(v4 + 576);
          v28 = v18;
          OUTLINED_FUNCTION_4_5();
          BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();
          v20 = v19;
          MEMORY[0x1DA713500]();
          v21 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
          {
            OUTLINED_FUNCTION_2_10(v21);
            sub_1D81913B4();
          }

          ++v15;
          sub_1D8191404();
        }

        while (v14 != v15);

        v7 = v23;
        v8 = v24;
        v10 = v22;
LABEL_17:
        ++v8;
      }

      while (v8 != v7);
    }
  }

  OUTLINED_FUNCTION_72();
LABEL_23:
  result.value._rawValue = v11;
  result.is_nil = v12;
  return result;
}

uint64_t sub_1D7EAFC84(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 72) = a2;
  return v8;
}

uint64_t sub_1D7EAFCA0(uint64_t result)
{
  if (result)
  {
    if (*(result + 72) == 1)
    {
      OUTLINED_FUNCTION_19_20();
      OUTLINED_FUNCTION_15_2();

      swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v1 + 16);
      OUTLINED_FUNCTION_80();
      sub_1D7EAFD70();
      *(v1 + 16) = v2;
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

void sub_1D7EAFD70()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_155();
  v4 = v3;
  sub_1D7EAFE50();
  OUTLINED_FUNCTION_4_10();
  if (v5)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for CGRect();
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_128_0();
  sub_1D7EAFF48();
  if (OUTLINED_FUNCTION_70_0())
  {
    OUTLINED_FUNCTION_80();
    sub_1D7EAFE50();
    OUTLINED_FUNCTION_74_0();
    if (!v7)
    {
      goto LABEL_14;
    }

    v2 = v6;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v4;
    OUTLINED_FUNCTION_170();
  }

  else
  {
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_170();

    sub_1D7EB00B4(v9, v10, v11);
  }
}

unint64_t sub_1D7EAFE50()
{
  OUTLINED_FUNCTION_10_13();
  v0 = OUTLINED_FUNCTION_80();
  sub_1D7EAFEC4(v0, v1, v2, v3);
  sub_1D8192824();
  v5 = OUTLINED_FUNCTION_80();

  return sub_1D7EAFFF4(v4, v5, v6, v7, v8);
}

uint64_t sub_1D7EAFEC4(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1DA714A20](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1DA714A20](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1DA714A20](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1DA714A20](*&v9);
}

void sub_1D7EAFF48()
{
  if (!qword_1EDBB2D70)
  {
    type metadata accessor for CGRect();
    type metadata accessor for BlueprintLayoutCollectionRectResult();
    sub_1D7E2B754(&qword_1EDBB3008, type metadata accessor for CGRect);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D70);
    }
  }
}

unint64_t sub_1D7EAFFF4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = ~(-1 << *(v5 + 32));
  for (i = a1 & v10; ((1 << i) & *(v5 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    if (CGRectEqualToRect(*(*(v5 + 48) + 32 * i), v13))
    {
      break;
    }
  }

  return i;
}

void sub_1D7EB00B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_3_37(a1, a3 + 8 * (a1 >> 6));
  v5 = (v4[6] + 32 * v3);
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  *(v4[7] + 8 * v3) = v10;
  v11 = v4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_15(v4, v13);
  }
}

void sub_1D7EB0164(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_35();
    v9 = v8(v7);
    v10 = a4(a1, v9);
    if (!v11)
    {
      atomic_store(v10, v4);
    }
  }
}

uint64_t sub_1D7EB01C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_1D818E994() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t sub_1D7EB02B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v40 = a1;
  v33 = *a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for BlueprintLayoutItem();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v29 - v7;
  v8 = v33[13];
  v9 = v33[11];
  swift_getAssociatedTypeWitness();
  v31 = v8;
  v30 = v9;
  v10 = swift_getAssociatedConformanceWitness();
  v11 = *(v10 + 40);
  v12 = swift_checkMetadataState();
  v32 = a2;
  v13 = v11(v12, v10);
  v14 = v40;
  v42 = v40;
  v15 = sub_1D7EB0860(sub_1D7EB0ED8, v41, v13);

  if (!v15)
  {
    v17 = swift_getAssociatedTypeWitness();
    v18 = swift_getAssociatedConformanceWitness();
    v44 = v17;
    v45 = AssociatedTypeWitness;
    v46 = v18;
    v47 = AssociatedConformanceWitness;
    v19 = type metadata accessor for BlueprintLayout();
    result = BlueprintLayout.contains(indexPath:)();
    if (result)
    {
      v20 = v34;
      BlueprintLayout.subscript.getter(v14, v19);
      if ((*(v33[15] + 8))(AssociatedTypeWitness))
      {
        v21 = *(*a4 + 160);
        swift_beginAccess();
        v22 = *(a4 + v21);
        sub_1D8190DB4();
        v23 = sub_1D818EF94();
        v25 = sub_1D7F28578(v23, v24, v22);

        if (!v25)
        {
          (*(v31 + 40))(v20, v32, v14, v30);
          v26 = sub_1D818EF94();
          v28 = v27;
          swift_beginAccess();
          sub_1D7E91548(v43, v26, v28);
          swift_endAccess();
        }
      }

      return (*(v35 + 8))(v20, v36);
    }
  }

  return result;
}

uint64_t CardViewAppearanceProviding<>.updateCardViewAppearance()(uint64_t a1, uint64_t a2)
{
  sub_1D7EB0890(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1D7F35C78(v7);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 8))(v2, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

BOOL sub_1D7EB0784(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = a4(0);
    OUTLINED_FUNCTION_15_15(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

double sub_1D7EB0890@<D0>(uint64_t a1@<X8>)
{
  if (sub_1D8190B24())
  {
    if (OUTLINED_FUNCTION_11_39() && (sub_1D7E0A1A8(0, &qword_1EDBB31B0), sub_1D7E0631C(0, qword_1EDBAF780), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v12 + 1))
      {
        sub_1D7E05450(&v11, &v14);
LABEL_9:
        sub_1D7E05450(&v14, a1);
        return result;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    sub_1D8096970(&v11, sub_1D7F35CD4);
    v5 = [v1 presentingViewController];
    if (v5)
    {
      v6 = v5;
      sub_1D7EB0890();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_11_39();
      if (v9)
      {
        v10 = v9;
        sub_1D7EB0890();
      }

      else
      {
        return OUTLINED_FUNCTION_3_100();
      }
    }
  }

  else
  {
    v3 = OUTLINED_FUNCTION_11_39();
    if (v3 && (*&v11 = v3, sub_1D7E0A1A8(0, &qword_1EDBB31B0), sub_1D7E0631C(0, qword_1EDBAF780), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v15 + 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    v7 = OUTLINED_FUNCTION_11_39();
    if (v7)
    {
      v8 = v7;
      sub_1D7EB0890();
    }

    else
    {
      result = OUTLINED_FUNCTION_3_100();
    }

    if (*(&v15 + 1))
    {
      sub_1D8096970(&v14, sub_1D7F35CD4);
    }
  }

  return result;
}

uint64_t sub_1D7EB0B18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_104_0();
  sub_1D7E2DA70(v3, v4);
  OUTLINED_FUNCTION_74();
  return sub_1D8190ED4() & 1;
}

void sub_1D7EB0B9C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_1D7EB0D58();
  if (v4)
  {
    v5 = v4;
    v21 = a1;
    v6 = OUTLINED_FUNCTION_47_11();
    v7(v6, a2);
    v19 = *v20;
    sub_1D7EB13A4(&v19);

    v8 = *(&v19 + 1);
  }

  else
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v9 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v9, qword_1EDBC6048);
    v10 = a1;
    oslog = sub_1D818FE14();
    v11 = sub_1D81919C4();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = OUTLINED_FUNCTION_55_1();
      v13 = OUTLINED_FUNCTION_61();
      v20[0] = v13;
      *v12 = 136315138;
      *&v19 = v10;
      v14 = v10;
      OUTLINED_FUNCTION_14_32();
      v15 = sub_1D8190F94();
      v17 = sub_1D7E1C3D8(v15, v16, v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D7DFF000, oslog, v11, "Unable to update CardViewAppearance for view controller %s, no matching card item found", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_10_45();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7EB0D58()
{
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v2, v3, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26();
  sub_1D7EB0EF8();
  result = 0;
  if ((v10 & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    (*(v7 + 16))(v1, v0 + v11, v5);
    sub_1D818F9F4();
    v12 = OUTLINED_FUNCTION_14_0();
    v13(v12);
    return v14;
  }

  return result;
}

void sub_1D7EB0EF8()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v2, v3, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_45_11();
  v6(v5);
  OUTLINED_FUNCTION_3_93(&qword_1EDBB1FF0);
  OUTLINED_FUNCTION_18_28();
  sub_1D8191724();
  while (1)
  {
    OUTLINED_FUNCTION_18_28();
    sub_1D81917B4();
    if (v21[4] == v21[0])
    {
      break;
    }

    v7 = sub_1D81918F4();
    v9 = *v8;
    (v7)(v21, 0);
    LOBYTE(v7) = sub_1D7EB1310(v1);

    if (v7)
    {
      v19 = OUTLINED_FUNCTION_85();
      v20(v19);
      goto LABEL_11;
    }

    sub_1D81917C4();
  }

  v10 = OUTLINED_FUNCTION_85();
  v11(v10);
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v12 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v12, qword_1EDBC6048);
  v13 = v1;
  v14 = sub_1D818FE14();
  v15 = sub_1D81919E4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_55_1();
    v17 = OUTLINED_FUNCTION_10_43();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_1D7DFF000, v14, v15, "Unable to find card for view controller: %@", v16, 0xCu);
    sub_1D7E39F80(v17);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_10_45();
  }

LABEL_11:
  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintLayout.contains(indexPath:)()
{
  type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v0);
  if ((sub_1D818E974() & 0x8000000000000000) == 0)
  {
    v1 = sub_1D818E974();
    if (v1 < sub_1D8191414())
    {
      sub_1D818E974();
      sub_1D81914C4();
      if (sub_1D818E964() < 0)
      {
        v7 = OUTLINED_FUNCTION_14_0();
        v8(v7);
      }

      else
      {
        v2 = sub_1D818E964();
        swift_getWitnessTable();
        v3 = sub_1D8191834();
        v4 = OUTLINED_FUNCTION_14_0();
        v5(v4);
        if (v2 < v3)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D7EB12E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BlueprintLayoutSection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

BOOL sub_1D7EB1310(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController);
  if (sub_1D7E3A084(a1, v3))
  {
    return 1;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = [v5 visibleViewController]) != 0 && (v7 = v6, v6, v7 == a1))
  {
    return 1;
  }

  else
  {
    return v3 == a1;
  }
}

void sub_1D7EB13A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = [*(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentedWrapper) sheetPresentationController];
  if (v3)
  {
    if (v2)
    {
      v4 = v3;
      [v3 _setLargeBackground_];
      v3 = v4;
    }
  }
}

Swift::Int __swiftcall BlueprintLayoutSection.index(after:)(Swift::Int after)
{
  type metadata accessor for BlueprintLayoutItem();

  return sub_1D8191424();
}

uint64_t sub_1D7EB1484(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintInfiniteScroll();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  v6 = swift_projectBox();
  swift_unownedRetainStrong();
  sub_1D7E0E768(a1 + 16, v10);

  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 8))(v7, v8);
  swift_beginAccess();
  sub_1D7E33AB4(v6, v5);
  sub_1D818F124();

  sub_1D7E306A8(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

Swift::Void __swiftcall CardViewScrollViewCoordinator.didMove(toParent:)(UIViewController_optional *toParent)
{
  if (toParent && (toParent = UIViewController.cardContainerController.getter()) != 0)
  {

    OUTLINED_FUNCTION_2_81(v8, v9, v10, v11, v12, v13, v14, v15, 0, 0, 0, 0, 0, 0, v16);

    sub_1D7EB1A54(0);
  }

  else
  {
    OUTLINED_FUNCTION_2_81(toParent, v1, v2, v3, v4, v5, v6, v7, 1, 0, 0, 0, 0, 0, v16);
  }
}

uint64_t sub_1D7EB1678(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(type metadata accessor for BlueprintInfiniteScroll() + 20);
    v5 = OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_rangeCache;
    swift_beginAccess();
    v6 = sub_1D818E8B4();
    (*(*(v6 - 8) + 24))(v3 + v5, a1 + v4, v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D7EB1744(uint64_t a1)
{
  sub_1D7EB19A8(a1);
  v3 = v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);

  return sub_1D7EB179C();
}

uint64_t sub_1D7EB179C()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48) > 1u;
    ObjectType = swift_getObjectType();
    v6 = v4;
    (*(v3 + 16))(v0, &v6, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7EB19A8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    v6 = *(a1 + 48) > 1u;
    ObjectType = swift_getObjectType();
    v8 = v6;
    (*(v5 + 8))(v1, &v8, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7EB1A54(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  result = swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    if (!*(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48))
    {
      if ((a1 & 1) == 0)
      {
        return result;
      }

      v5 = 1;
      goto LABEL_8;
    }

    LOBYTE(v13[0]) = 0;
    result = sub_1D801B24C(v13);
    if (result & 1) != 0 || (a1)
    {
      v5 = a1 & 1;
LABEL_8:
      v6 = sub_1D801B1AC(v5);
      v8 = v7;
      [*(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView) adjustedContentInset];
      v13[0] = v6;
      v13[1] = v8;
      v13[2] = v9;
      v13[3] = v10;
      v13[4] = v11;
      v13[5] = v12;
      v14 = 0;
      return sub_1D7EB1744(v13);
    }
  }

  return result;
}

uint64_t sub_1D7EB1B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  sub_1D7EA76FC(a2, &v5);
  v3 = v5;
  swift_beginAccess();
  *(v2 + 16) = v3;
  sub_1D8190DB4();
}

uint64_t CardViewPresentationStateProviding<>.updateCardViewPresentation()(uint64_t a1, uint64_t a2)
{
  sub_1D7EB0890(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1D7F35C78(v7);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 16))(v2, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t Diff.updatedIndices.getter()
{
  OUTLINED_FUNCTION_30_16();
  type metadata accessor for Diff();
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_99();

  return v1(v0);
}

uint64_t Diff.updatedIndexPaths.getter()
{
  type metadata accessor for Diff();

  return sub_1D8190DB4();
}

uint64_t Diff.deletedIndexPaths.getter()
{
  type metadata accessor for Diff();

  return sub_1D8190DB4();
}

uint64_t Diff.insertedIndexPaths.getter()
{
  type metadata accessor for Diff();

  return sub_1D8190DB4();
}

uint64_t Diff.movedIndices.getter()
{
  type metadata accessor for Diff();

  return sub_1D8190DB4();
}

uint64_t Diff.movedIndexPaths.getter()
{
  type metadata accessor for Diff();

  return sub_1D8190DB4();
}

uint64_t sub_1D7EB1E2C()
{
  v1 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_15_15(v1);
  OUTLINED_FUNCTION_25_14();
  return sub_1D7EB1EFC(*(v0 + 64), v0 + v2, v0 + v3);
}

uint64_t sub_1D7EB1EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E2657C(result + 40, v9, &qword_1EDBB65A8, &qword_1EDBB65B0);

    v6 = v10;
    if (v10)
    {
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v8 = type metadata accessor for BlueprintPipelineUpdate();
      (*(v7 + 32))(a2 + *(v8 + 60), a3, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      return sub_1D7E2739C(v9, &qword_1EDBB65A8, &qword_1EDBB65B0);
    }
  }

  return result;
}

double sub_1D7EB2030()
{
  OUTLINED_FUNCTION_10_9();
  if (v1 && (v2 = sub_1D7E2AEC0(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_19_1(v2);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_6_3();
  }

  return result;
}

uint64_t sub_1D7EB2070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1D7EB20D0()
{
  if (!qword_1EDBB5C40)
  {
    sub_1D807B398();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB5C40);
    }
  }
}

uint64_t sub_1D7EB2128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.apply(bookmark:context:preparedContext:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = v3;
  v88 = a3;
  v6 = *v3;
  OUTLINED_FUNCTION_5_28();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_5_28();
  OUTLINED_FUNCTION_5_28();
  v10 = *(v9 + 96);
  v11 = *(v6 + 104);
  v92[0] = v8;
  v92[1] = v12;
  v86 = v11;
  v87 = v12;
  v92[2] = v10;
  v93 = v11;
  v13 = type metadata accessor for RestoreViewportBlueprintBookmarkApplicator.RestoreContext();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v85 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v80 - v16;
  v90 = v13;
  v84 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v89 = v80 - v19;
  memcpy(v97, a2, sizeof(v97));
  OUTLINED_FUNCTION_5_28();
  v83 = *(v20 + 112);
  BlueprintLayoutProviderType.layoutBlueprint.getter(v8, v10);
  v21 = OUTLINED_FUNCTION_9_16();
  v22 = OUTLINED_FUNCTION_9_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v91[0] = v21;
  *&v91[1] = v22;
  *&v91[2] = AssociatedConformanceWitness;
  *&v91[3] = v24;
  type metadata accessor for BlueprintLayout();
  OUTLINED_FUNCTION_1_54();
  swift_getWitnessTable();
  LOBYTE(v6) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  v26 = *(v25 + 8);
  v27 = v25 + 8;
  v28 = OUTLINED_FUNCTION_6_30();
  result = v26(v28);
  if ((v6 & 1) == 0)
  {
    sub_1D7EB2914(v88, v92, sub_1D7E2CEC0);
    if (v93)
    {
      v30 = v90;
      v31 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v17, v31 ^ 1u, 1, v30);
      if (__swift_getEnumTagSinglePayload(v17, 1, v30) != 1)
      {
        v80[1] = v27;
        v82 = v26;
        (*(v84 + 32))(v89, v17, v30);
        v88 = *(v4 + *(*v4 + 120));
        v33 = v86;
        v32 = v87;
        v35 = v86 + 56;
        v34 = *(v86 + 56);
        v36 = v34(v87, v86);
        [v36 contentOffset];
        v38 = v37;
        v40 = v39;

        v85 = v35;
        v81 = v34;
        v41 = v34(v32, v33);
        swift_getAssociatedTypeWitness();
        v42 = swift_getAssociatedConformanceWitness();
        v43 = *(v42 + 88);
        v44 = swift_checkMetadataState();
        v43(v95, v89, v44, v42);

        if (v96)
        {
          v45 = v42;
          v46 = v81;
          v80[0] = (v81)(v87, v86);
          OUTLINED_FUNCTION_2_54();
          v47 = v94;
          v48 = OUTLINED_FUNCTION_6_30();
          v82(v48);
          LOBYTE(v91[0]) = v47;
          v49 = v80[0];
          (*(v45 + 208))(v89, v91, 0, v44, v45);

          v50 = OUTLINED_FUNCTION_4_8();
          v51 = v46(v50);
          [v51 contentOffset];
          v38 = v52;
          v40 = v53;
        }

        else
        {
          v57 = *v95;
          v58 = *&v95[1];
          OUTLINED_FUNCTION_2_54();
          v59 = v94;
          v60 = OUTLINED_FUNCTION_6_30();
          v82(v60);
          v61 = (v81)(v87, v86);
          [v61 adjustedContentInset];
          v63 = v62;
          v65 = v64;

          if (v59)
          {
            v40 = v58 - v63;
          }

          else
          {
            v38 = v57 - v65;
          }
        }

        v66 = v89;
        OUTLINED_FUNCTION_2_54();
        v67 = v94;
        v68 = OUTLINED_FUNCTION_6_30();
        v82(v68);
        v69 = v90;
        if (v67)
        {
          memcpy(v91, v97, sizeof(v91));
          if (sub_1D7FA0BEC(v91) != 1)
          {
            v75 = v91[1] == v91[3] && v91[0] == v91[2];
            if (!v75 && v91[7] < 0.0)
            {
              v76 = OUTLINED_FUNCTION_4_8();
              v74 = v77(v76);
              v78 = -v91[12];
              [v74 contentOffset];
              [v74 setContentOffset_];
              goto LABEL_16;
            }
          }

          v40 = v40 - *&v66[*(v69 + 52)];
          v70 = OUTLINED_FUNCTION_4_8();
          v72 = v71(v70);
        }

        else
        {
          v38 = v38 - *&v66[*(v90 + 52)];
          v73 = OUTLINED_FUNCTION_4_8();
          v72 = v81(v73);
        }

        v74 = v72;
        [v72 setContentOffset_];
LABEL_16:

        v56 = *(v84 + 8);
        v54 = v66;
        v55 = v69;
        return v56(v54, v55);
      }
    }

    else
    {
      sub_1D7E7BAAC(v92);
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v90);
    }

    v54 = OUTLINED_FUNCTION_4_8();
    return v56(v54, v55);
  }

  return result;
}

uint64_t sub_1D7EB289C()
{
  result = sub_1D818E994();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7EB2914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7EB29A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D7EB2A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

void *BlueprintLayout<>.init(layoutOptions:layoutDirection:sections:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = OUTLINED_FUNCTION_5_78(a3);
  result = memcpy(v6, v7, 0x235uLL);
  *(a3 + 600) = a2;
  *(a3 + 565) = v5;
  return result;
}

void sub_1D7EB2A94()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_1D8190EE4();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_1D7EB2B38()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E0E768(result + 24, v4);

    v1 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v3 = MEMORY[0x1EEE9AC00](v2);
    (*(v1 + 8))(sub_1D7EB2CFC, v3);

    return __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return result;
}

uint64_t MemoryCacheAccessMainWriter.access(block:)(void (*a1)(uint64_t))
{
  v2 = sub_1D818EDB4();
  a1(v2);
  return sub_1D818EDC4();
}

uint64_t sub_1D7EB2D08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D818FC44();
  }

  return result;
}

uint64_t MemoryCacheAccessQueue.access(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D7E74D44;
  *(v7 + 24) = v6;
  v10[4] = sub_1D7E74D6C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D7E74D74;
  v10[3] = &block_descriptor_85;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7EB2F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 24);
    if (v6)
    {
      v7 = v6 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = 1 << *(a3 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(a3 + 64);
      v11 = (v8 + 63) >> 6;
      result = sub_1D8190DB4();
      v12 = 0;
      if (v10)
      {
        goto LABEL_15;
      }

      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
        }

        v10 = *(a3 + 64 + 8 * v13);
        ++v12;
        if (v10)
        {
          v12 = v13;
          do
          {
LABEL_15:
            v10 &= v10 - 1;
            v14 = swift_retain_n();
            sub_1D7EAFCA0(v14);
          }

          while (v10);
          continue;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t BlueprintLayoutCollectionRectResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EB30D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1D7EB3128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v12 = sub_1D818E8B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v43 = a7;
    v44 = a5;
    v18 = a4;
    v20 = a6[3];
    v19 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v20);
    (*(v19 + 40))(v20, v19);
    v21 = sub_1D818E874();
    (*(v13 + 8))(v15, v12);
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v26 = objc_opt_self();
      sub_1D7E0E768(a6, v45);
      v27 = swift_allocObject();
      *(v27 + 16) = v17;
      sub_1D7E05450(v45, v27 + 24);
      v28 = swift_allocObject();
      v22 = sub_1D7FE8468;
      *(v28 + 16) = sub_1D7FE8468;
      *(v28 + 24) = v27;
      v50 = sub_1D7EA8F68;
      v51 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1D7E74D74;
      v49 = &block_descriptor_68_0;
      v29 = _Block_copy(&aBlock);
      v30 = v17;

      [v26 performWithoutAnimation_];
      _Block_release(v29);
      LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

      if (v26)
      {
        __break(1u);
        return;
      }
    }

    v31 = a6[3];
    v32 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v31);
    v33 = *((*(v32 + 88))(v31, v32) + 16);

    if (v33)
    {
      v34 = [v17 dataSource];
      if (v34)
      {
        MEMORY[0x1EEE9AC00](v34);
        *&v42[-48] = v17;
        *&v42[-40] = a6;
        *&v42[-32] = a3;
        *&v42[-24] = v18;
        *&v42[-16] = v44;
        *&v42[-8] = v35;
        sub_1D817062C(v43 & 1, sub_1D7FE8474, &v42[-64]);
        swift_unknownObjectRelease();

        sub_1D7E0E10C(v22);
        return;
      }

      v36 = v22;
      if (a3)
      {
        LOBYTE(aBlock) = 2;
        BlueprintViewActionResponse.complete(apply:)(&aBlock);
      }

      v37 = [objc_opt_self() sharedApplication];
      v40 = swift_allocObject();
      *(v40 + 16) = v18;
      *(v40 + 24) = v44;
      v50 = sub_1D7EB38AC;
      v51 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1D7E64940;
      v49 = &block_descriptor_74_0;
      v41 = _Block_copy(&aBlock);

      [v37 ts:v41 installCACommitCompletionBlock:?];
      _Block_release(v41);
    }

    else
    {
      v36 = v22;
      if (a3)
      {
        LOBYTE(aBlock) = 2;
        BlueprintViewActionResponse.complete(apply:)(&aBlock);
      }

      v37 = [objc_opt_self() sharedApplication];
      v38 = swift_allocObject();
      *(v38 + 16) = v18;
      *(v38 + 24) = v44;
      v50 = sub_1D7EB38AC;
      v51 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1D7E64940;
      v49 = &block_descriptor_80;
      v39 = _Block_copy(&aBlock);

      [v37 ts:v39 installCACommitCompletionBlock:?];

      _Block_release(v39);
    }

    sub_1D7E0E10C(v36);
  }

  else
  {
    if (a3)
    {
      LOBYTE(aBlock) = 2;
      BlueprintViewActionResponse.complete(apply:)(&aBlock);
    }

    v23 = [objc_opt_self() sharedApplication];
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v50 = sub_1D7EB38AC;
    v51 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1D7E64940;
    v49 = &block_descriptor_58_0;
    v25 = _Block_copy(&aBlock);

    [v23 ts:v25 installCACommitCompletionBlock:?];
    _Block_release(v25);
  }
}

uint64_t sub_1D7EB37BC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t Diff.updatedSectionDescriptorIndices.getter()
{
  OUTLINED_FUNCTION_30_16();
  type metadata accessor for Diff();
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_99();

  return v1(v0);
}

uint64_t Diff.deferredUpdatedIndexPaths.getter()
{
  type metadata accessor for Diff();

  return sub_1D8190DB4();
}

double sub_1D7EB395C(_BYTE *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    return *(a5 + 16);
  }

  else
  {
    return *(a2 + 16) + a3;
  }
}

uint64_t sub_1D7EB39AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7E25380(a1, v8);
  sub_1D7E0631C(0, &qword_1EDBB50A0);
  sub_1D7E0631C(0, qword_1EDBB41F8);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v4 + 8))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    result = sub_1D7E7AD0C(v6, &qword_1EDBB41F0, qword_1EDBB41F8);
    *a2 = 1;
    *(a2 + 8) = 3;
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

uint64_t sub_1D7EB3AD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D7E25380(a1, v8);
  sub_1D7E0631C(0, &qword_1EDBB50A0);
  sub_1D7E0631C(0, qword_1EDBB41F8);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v4 + 16))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    result = sub_1D7E7AD0C(v6, &qword_1EDBB41F0, qword_1EDBB41F8);
    *a2 = 2;
  }

  return result;
}

void sub_1D7EB3BFC()
{
  if (*(v0 + 65) == 1)
  {
    v1.origin.x = OUTLINED_FUNCTION_2_6();
    CGRectGetWidth(v1);
    v2.origin.x = OUTLINED_FUNCTION_2_6();
    CGRectGetHeight(v2);
  }

  OUTLINED_FUNCTION_2_6();
}

id sub_1D7EB3C70(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = sub_1D8190EE4();

  v7 = sub_1D818E8E4();
  v8 = [swift_getObjCClassFromMetadata() *a4];

  sub_1D818E994();
  OUTLINED_FUNCTION_3_0();
  (*(v9 + 8))(a3);
  return v8;
}

uint64_t sub_1D7EB3D28(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7E79920(0, a3, a4);
  OUTLINED_FUNCTION_3_0();
  (*(v6 + 40))(a2, a1);
  return a2;
}

_BYTE *sub_1D7EB3D90@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  if (*result == 2)
  {
    goto LABEL_2;
  }

  if (a4 | a2)
  {
    type metadata accessor for BlueprintLayout();
    swift_getWitnessTable();
    result = sub_1D8191834();
    if (!__OFSUB__(result, 1))
    {
      if (result - 1 != a4)
      {
LABEL_2:
        v6 = 3;
LABEL_15:
        *a5 = v6;
        return result;
      }

      if (!__OFSUB__(a3, 1))
      {
        if (a3 - 1 == a2)
        {
          v6 = 1;
          goto LABEL_15;
        }

        goto LABEL_2;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  type metadata accessor for BlueprintLayout();
  swift_getWitnessTable();
  result = sub_1D8191834();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result != 1)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_15;
  }

  if (!__OFSUB__(a3, 1))
  {
    if (a3 == 1)
    {
      v6 = 2;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D7EB3EE0(char a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = type metadata accessor for BlueprintInfiniteScroll();
  v16 = *v7;
  if (v7[*(v15 + 32) + 8] & 1) == 0 && (a1)
  {
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v20 = a7;
    if ((*v7 & 1) == 0)
    {
      goto LABEL_21;
    }

    CGRectGetHeight(*&v17);
    OUTLINED_FUNCTION_0_60();
    if (v22 >= 0.0)
    {
      if (v21)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      v22 = 0.0;
    }

    if (v22 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_1_48();
    if (v23)
    {
      return;
    }

    __break(1u);
  }

  if (v16)
  {
    OUTLINED_FUNCTION_0_60();
    v25 = 0.0;
    if (a3 >= 0.0)
    {
      v25 = a3;
      if (v24)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if (v25 <= -9.22337204e18)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_1_48();
    if (v23)
    {
      return;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_0_60();
  v27 = 0.0;
  if (a2 >= 0.0)
  {
    v27 = a2;
    if (v26)
    {
      goto LABEL_29;
    }
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_48();
  if (v23)
  {
    return;
  }

  __break(1u);
LABEL_21:
  CGRectGetWidth(*&v17);
  OUTLINED_FUNCTION_0_60();
  if (v29 < 0.0)
  {
    v29 = 0.0;
    goto LABEL_24;
  }

  if (v28)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (v29 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_1_48();
  if (!v23)
  {
    goto LABEL_36;
  }
}

uint64_t OUTLINED_FUNCTION_37_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_37_4()
{

  sub_1D7EB8AF4();
}

uint64_t OUTLINED_FUNCTION_37_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1D818F5E4();
}

id OUTLINED_FUNCTION_37_9()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_37_11(uint64_t a1)
{

  return StateCommandValue.value(for:)(v1, a1, v2 - 88);
}

void OUTLINED_FUNCTION_37_14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{

  sub_1D80CC4AC(0, a2, a3, a4, v4);
}

unint64_t OUTLINED_FUNCTION_37_17()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  return sub_1D7E1C3D8(v2, v3, (v0 - 112));
}

void sub_1D7EB4228(uint64_t a1)
{
  v3 = 0;
  v4 = *(v1 + *(type metadata accessor for BlueprintInfiniteScroll() + 24));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v4 + 48 * v3);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    ++v3;
    v8 = v7 + 6;
    v9 = v7[8];
    v10 = v7[9];
    v11 = v9 > a1 || v10 < a1;
    v7 += 6;
    if (!v11)
    {
      v13 = *(v8 - 2);
      v12 = *(v8 - 1);
      v14 = *v8;
      v15 = v8[1];
      sub_1D8190DB4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EB4894();
      }

      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_1D7EB4894();
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + 48 * v16);
      v17[4] = v13;
      v17[5] = v12;
      v17[6] = v14;
      v17[7] = v15;
      v17[8] = v9;
      v17[9] = v10;
      goto LABEL_2;
    }
  }
}

uint64_t BlueprintLayoutCollection.add(supplementaryLayoutAttributes:for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D7E1AF20(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v40 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_0();
  v43 = (v13 - v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  OUTLINED_FUNCTION_15_45(v47);
  v18 = v47[153];
  OUTLINED_FUNCTION_15_45(v46);
  sub_1D7E6755C(v47, v48);
  v19 = sub_1D7E7D31C(a1);
  v21 = v20;
  memcpy(v48, v46, 0x4E8uLL);
  sub_1D7E598FC(v48);
  v22 = &a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
  *v22 = v19;
  v22[1] = v21;

  v23 = a1;
  MEMORY[0x1DA713500]();
  sub_1D7E2893C(*((v4[3] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  v24 = *(v18 + 16);
  v44 = a2;
  v41 = a3;
  if (v24 && (v25 = sub_1D7E11428(a2, a3), (v26 & 1) != 0))
  {
    v27 = *(*(v18 + 56) + 8 * v25);
    sub_1D8190DB4();
    v28 = v40;
  }

  else
  {
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
    OUTLINED_FUNCTION_2_147(&qword_1EDBBC6C0);
    v28 = v40;
    v27 = sub_1D8190D94();
  }

  v29 = [v23 indexPath];
  sub_1D818E924();

  v30 = v23;
  swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v27;
  sub_1D7E7D494();
  v31 = v42;
  v40 = *(v42 + 8);
  v40(v17, v28);
  swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v4[153];
  v32 = v44;
  v33 = v41;
  sub_1D7EB49B0();
  v4[153] = v46[0];
  v34 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  swift_beginAccess();
  sub_1D7E54838(&v30[v34], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v28) == 1)
  {
    sub_1D7E73334(v10);
  }

  else
  {
    v35 = v47[154];
    (*(v31 + 32))(v43, v10, v28);
    if (*(v35 + 16) && (sub_1D7E11428(v32, v33), (v36 & 1) != 0))
    {
      OUTLINED_FUNCTION_10_57();
    }

    else
    {
      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
      OUTLINED_FUNCTION_2_147(&qword_1EDBBC6C0);
      v35 = sub_1D8190D94();
    }

    v37 = v30;
    swift_isUniquelyReferenced_nonNull_native();
    v45 = v35;
    v38 = v43;
    sub_1D7E7D494();
    swift_isUniquelyReferenced_nonNull_native();
    v45 = v4[154];
    sub_1D7EB49B0();
    v4[154] = v45;
    v40(v38, v28);
  }

  sub_1D7E7D6B8(v30);
  result = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter();
  if (result)
  {
    return BlueprintLayoutCollectionPinAdjuster.track(layoutAttributes:)(v30);
  }

  return result;
}

void sub_1D7EB47D4()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_127(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5DDC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1D7EB48B4(char a1)
{
  result = 0x6E69727065756C62;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      v3 = 9;
      goto LABEL_7;
    case 4:
      result = 0x6C6C695777656976;
      break;
    case 5:
      v3 = 10;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D7EB49E0()
{
  if (!qword_1EDBB2DF8)
  {
    sub_1D7E7D610(255, &unk_1EDBB3470);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DF8);
    }
  }
}

id UICollectionView.cell(at:)()
{
  v1 = v0;
  v2 = sub_1D818E8E4();
  v3 = [v1 cellForItemAtIndexPath_];

  return v3;
}

void BlueprintImpressionManager.updateImpression(at:view:triggerSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v116 = v24;
  v101[4] = v25;
  v115 = v26;
  v27 = *v20;
  v28 = sub_1D818E994();
  v29 = OUTLINED_FUNCTION_1_65(v28, &a16);
  v103 = v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_14_1(v31);
  v32 = v27[11];
  v33 = v27[10];
  OUTLINED_FUNCTION_63_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_78();
  v36 = type metadata accessor for BlueprintItem();
  v37 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v102 = v38;
  OUTLINED_FUNCTION_44();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = v101 - v41;
  v114 = v36;
  v111 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_21_12();
  v112 = v45;
  OUTLINED_FUNCTION_63_2();
  v46 = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v108 = v46;
  v119 = v46;
  v120 = AssociatedTypeWitness;
  v105 = AssociatedTypeWitness;
  v107 = v47;
  v121 = v47;
  v122 = AssociatedConformanceWitness;
  v109 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_22_10();
  v48 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v110 = v49;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_94();
  v113 = v51;
  if (*v116 >= 0 == *(v23 + v27[19]) || (sub_1D7E481B0() & 1) == 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_39_5();
  v52 = v113;
  v53 = OUTLINED_FUNCTION_82_1();
  BlueprintProviderType.blueprint.getter(v53, v54);
  Blueprint.item(indexPath:)();
  v55 = v48;
  v56 = v114;
  OUTLINED_FUNCTION_43_0(v42, 1, v114);
  if (v78)
  {
    (*(v110 + 8))(v52, v55);
    v57 = OUTLINED_FUNCTION_11_23();
    v59 = v37;
LABEL_28:
    v58(v57, v59);
    goto LABEL_29;
  }

  v116 = v55;
  v60 = v111;
  OUTLINED_FUNCTION_30_8();
  v61();
  OUTLINED_FUNCTION_49_3();
  v119 = v33;
  v120 = v108;
  v62 = v105;
  v121 = v105;
  v122 = v32;
  v123 = v107;
  v124 = v109;
  OUTLINED_FUNCTION_22_10();
  v63 = type metadata accessor for BlueprintImpressionManager.Context();
  OUTLINED_FUNCTION_0_87();
  v66 = sub_1D7E2491C(v64, v65);
  v67 = v106;
  v102 = v66;
  sub_1D8190E24();
  v68 = v117;
  if (v117)
  {
    v101[1] = v63;
    swift_endAccess();
    OUTLINED_FUNCTION_3_52();
    v70 = *(v69 + 136);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_67_2();
    v71 = OUTLINED_FUNCTION_28_8();
    v72(v71);
    v73 = BlueprintItem.identifier.getter();
    v75 = v74;
    (*(v60 + 8))(v70, v56);
    v76 = v112;
    v78 = v73 == BlueprintItem.identifier.getter() && v75 == v77;
    if (v78)
    {
    }

    else
    {
      v79 = sub_1D8192634();

      if ((v79 & 1) == 0)
      {
        OUTLINED_FUNCTION_3_52();
LABEL_16:
        swift_unknownObjectWeakAssign();
        v81 = v106;
        OUTLINED_FUNCTION_38_6();
        v82(v104, v115, v81);
        v125 = v68;
        OUTLINED_FUNCTION_25_7();
        OUTLINED_FUNCTION_107();
        sub_1D8190E14();

        sub_1D8190E34();
        swift_endAccess();

        v80 = v116;
        v67 = v81;
        v62 = v105;
        goto LABEL_17;
      }
    }

    sub_1D7EA261C(v113, v76);
    OUTLINED_FUNCTION_3_52();
    OUTLINED_FUNCTION_70_3();
    goto LABEL_16;
  }

  swift_endAccess();
  v80 = v116;
LABEL_17:
  OUTLINED_FUNCTION_49_3();
  v119 = v33;
  v120 = v108;
  v121 = v62;
  v122 = v32;
  v123 = v107;
  v124 = v109;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for BlueprintImpressionManager.StagedContext();
  sub_1D8190E24();
  v83 = v118;
  if (v118)
  {
    swift_endAccess();
    OUTLINED_FUNCTION_41_4();
    v85 = *(v84 + 136);
    OUTLINED_FUNCTION_8_4();
    v86 = v111;
    v87 = OUTLINED_FUNCTION_28_8();
    v88 = v114;
    v89(v87);
    v90 = BlueprintItem.identifier.getter();
    v92 = v91;
    v111 = *(v86 + 8);
    (v111)(v85, v88);
    v93 = v112;
    if (v90 == BlueprintItem.identifier.getter() && v92 == v94)
    {
    }

    else
    {
      OUTLINED_FUNCTION_110();
      v96 = sub_1D8192634();

      if ((v96 & 1) == 0)
      {
        OUTLINED_FUNCTION_41_4();
        swift_unknownObjectWeakAssign();
        v97 = v113;
LABEL_27:
        OUTLINED_FUNCTION_46_7();
        v100(v104, v115, v67);
        v118 = v83;
        OUTLINED_FUNCTION_15_2();
        sub_1D8190E14();

        OUTLINED_FUNCTION_78_1();
        sub_1D8190E34();
        swift_endAccess();

        (v111)(v93, v114);
        v58 = *(v110 + 8);
        v57 = v97;
        v59 = v116;
        goto LABEL_28;
      }
    }

    v97 = v113;
    v98 = OUTLINED_FUNCTION_82_1();
    sub_1D7EA261C(v98, v99);
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_70_3();
    swift_unknownObjectWeakAssign();
    goto LABEL_27;
  }

  swift_endAccess();
  (*(v111 + 8))(v112, v114);
  (*(v110 + 8))(v113, v80);
LABEL_29:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EB5364(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 128);
  OUTLINED_FUNCTION_15_2();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8();
  (*(v6 + 24))(v2 + v5, a1);
  swift_endAccess();
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 136);
  OUTLINED_FUNCTION_15_2();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_8();
  (*(v9 + 24))(v2 + v8, a2);
  return swift_endAccess();
}

uint64_t sub_1D7EB54A4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v10 = *(a4 + 8);
  if (*a1)
  {
    if (*(v8 + 16))
    {
      if (v10 != 1)
      {
        MaxX = *(a3 + 16);
LABEL_14:
        MaxY = CGRectGetMaxY(*&a5);
        goto LABEL_15;
      }

      v11 = *a4;
      MaxX = *(a3 + 16);
LABEL_10:
      MaxY = *(a2 + 24) + v11;
LABEL_15:
      type metadata accessor for BlueprintLayoutCollectionSectionCursor();
      swift_allocObject();
      OUTLINED_FUNCTION_1_5();
      v29 = MaxX;
      v30 = MaxY;
      return sub_1D7E79998(v29, v30, v23, v24, v25, v26, v27, v28, v15, v16, v17, v18, v19, v20, v21, v22, v33, v34);
    }
  }

  else if (*(v8 + 16))
  {
    if (v10 != 1)
    {
      MaxX = *(a2 + 16);
      goto LABEL_14;
    }

    v11 = *a4;
    MaxX = *(a2 + 16);
    goto LABEL_10;
  }

  if (v10 != 1)
  {
    MaxX = CGRectGetMaxX(*&a5);
    MaxY = *(a2 + 24);
    goto LABEL_15;
  }

  v13 = *(a2 + 24);
  v14 = *(a2 + 16) + *a4;
  type metadata accessor for BlueprintLayoutCollectionSectionCursor();
  swift_allocObject();
  OUTLINED_FUNCTION_1_5();
  v29 = v14;
  v30 = v13;
  return sub_1D7E79998(v29, v30, v23, v24, v25, v26, v27, v28, v15, v16, v17, v18, v19, v20, v21, v22, v33, v34);
}