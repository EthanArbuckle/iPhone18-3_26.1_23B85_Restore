uint64_t _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(void *a1, uint64_t a2)
{
  v42 = a2;
  v40 = a1;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D818E2D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39[1] = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v3;
  v7 = *((v4 & v3) + 0x68);
  v8 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v48[0] = AssociatedTypeWitness;
  v48[1] = v10;
  v48[2] = AssociatedConformanceWitness;
  v49 = v12;
  v13 = type metadata accessor for Blueprint();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - v15;
  v17 = type metadata accessor for BlueprintItem();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v39 - v22;
  v25 = v24;
  BlueprintProviderType.blueprint.getter(v8, v7);
  Blueprint.subscript.getter();
  (*(v14 + 8))(v16, v13);
  (*(v18 + 16))(v20, v23, v25);
  sub_1D7E0631C(0, qword_1EDBB65E0);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v45, v48);
    v26 = v49;
    v27 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v27 + 8))(&v43, v26, v27);
    if (v44)
    {
      sub_1D7E05450(&v43, &v45);
      v28 = sub_1D818E8E4();
      v29 = [v40 cellForItemAtIndexPath_];

      if (v29)
      {
        v30 = *(&v46 + 1);
        v31 = __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
        v32 = sub_1D818FD34();
        v42 = v25;
        v33 = MEMORY[0x1EEE9AC00](v32);
        (*(v35 + 16))(v39 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v30, v33);
        sub_1D7E9A940();
        v36 = sub_1D818FD24();
        v37 = [v29 contentView];
        sub_1D8191C64();

        (*(v18 + 8))(v23, v42);
      }

      else
      {
        (*(v18 + 8))(v23, v25);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
    }

    else
    {
      (*(v18 + 8))(v23, v25);
      sub_1D7E25DBC(&v43, &unk_1EDBBC730, &unk_1EDBBC740, MEMORY[0x1E6959DF8]);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    (*(v18 + 8))(v23, v25);
    return sub_1D7E25DBC(&v45, &unk_1EDBB65D0, qword_1EDBB65E0, &protocol descriptor for AppEntityAnnotationProviding);
  }
}

void BlueprintCollectionViewDelegate.collectionView(_:didDeselectItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v81 = v3;
  v79 = v4;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v76 = *MEMORY[0x1E69E7D40] & v5;
  v72 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_38_0(v9);
  sub_1D7EA0824();
  v68 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_38_0(v12);
  sub_1D7E3D564();
  v14 = OUTLINED_FUNCTION_50(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_24_1();
  v77 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21_12();
  v80 = v19;
  v20 = *((v6 & v5) + 0x68);
  v21 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_80_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_80_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_65();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_64();
  swift_getAssociatedConformanceWitness();
  v23 = OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  v25 = v24;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12_24();
  v27 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v78 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_60_0();
  v75 = v21;
  BlueprintProviderType.blueprint.getter(v21, v20);
  OUTLINED_FUNCTION_106_1();
  Blueprint.subscript.getter();
  v74 = v23;
  v73 = *(v25 + 8);
  v30 = v73(v1, v23);
  OUTLINED_FUNCTION_16_22(v30, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_10_19();
  v33 = (v2 + *(v32 + 312));
  v35 = *v33;
  v34 = v33[1];
  v36 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1D7E13BF4();
  *(v31 + 64) = v38;
  *(v31 + 32) = v35;
  *(v31 + 40) = v34;
  sub_1D8190DB4();
  v39 = BlueprintItem.identifier.getter();
  *(v31 + 96) = v36;
  *(v31 + 104) = v38;
  *(v31 + 72) = v39;
  *(v31 + 80) = v40;
  v41 = MEMORY[0x1DA710AD0]();
  *(v31 + 136) = v36;
  *(v31 + 144) = v38;
  *(v31 + 112) = v41;
  *(v31 + 120) = v42;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v43 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    BlueprintProviderType.blueprint.getter(v75, v20);
    (*(*(v76 + 120) + 64))(v1, AssociatedConformanceWitness, v81, *(v76 + 96));

    v73(v1, v74);
  }

  if (([v79 allowsMultipleSelection] & 1) == 0)
  {
    (*(v70 + 16))(v80, v81, v72);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v72);
    OUTLINED_FUNCTION_10_19();
    v50 = v2 + *(v49 + 192);
    OUTLINED_FUNCTION_8_4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v51 = *(v50 + 1);
      ObjectType = swift_getObjectType();
      v53 = v77;
      (*(v51 + 8))(ObjectType, v51);
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = v77;
      __swift_storeEnumTagSinglePayload(v77, 1, 1, v72);
    }

    v54 = *(v68 + 48);
    sub_1D7E54838(v80, v71);
    sub_1D7E54838(v53, v71 + v54);
    OUTLINED_FUNCTION_43_0(v71, 1, v72);
    if (v56)
    {
      sub_1D7E54AA4(v53, sub_1D7E3D564);
      sub_1D7E54AA4(v80, sub_1D7E3D564);
      OUTLINED_FUNCTION_43_0(v71 + v54, 1, v72);
      if (v56)
      {
        OUTLINED_FUNCTION_0_114();
        sub_1D7E54AA4(v71, v55);
LABEL_17:
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v63 = OUTLINED_FUNCTION_109_1();
          __swift_storeEnumTagSinglePayload(v63, v64, 1, v72);
          v65 = OUTLINED_FUNCTION_4_8();
          v66(v65);
          swift_unknownObjectRelease();
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_1D7E54838(v71, v69);
      OUTLINED_FUNCTION_43_0(v71 + v54, 1, v72);
      if (!v56)
      {
        (*(v70 + 32))(v67, v71 + v54, v72);
        sub_1D8008590();
        OUTLINED_FUNCTION_4_8();
        v59 = sub_1D8190ED4();
        v60 = *(v70 + 8);
        v61 = OUTLINED_FUNCTION_118_1();
        v60(v61);
        OUTLINED_FUNCTION_43_8();
        sub_1D7E54AA4(v77, v62);
        sub_1D7E54AA4(v80, v67);
        (v60)(v69, v72);
        sub_1D7E54AA4(v71, v67);
        if ((v59 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_49();
      sub_1D7E54AA4(v77, v57);
      sub_1D7E54AA4(v80, v80);
      (*(v70 + 8))(v69, v72);
    }

    OUTLINED_FUNCTION_12_26();
    sub_1D7E54AA4(v71, v58);
  }

LABEL_19:
  _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(v79, v81);
  (*(v78 + 8))(AssociatedConformanceWitness, v27);
  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.collectionView(_:didUpdateFocusIn:with:)(UICollectionView *_, UICollectionViewFocusUpdateContext didUpdateFocusIn, UIFocusAnimationCoordinator with)
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_97_1();
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v37 - v17;
  v19 = [v6 previouslyFocusedIndexPath];
  if (v19)
  {
    v20 = v19;
    sub_1D818E924();

    (*(v9 + 32))(v18, v14, v7);
    v21 = OUTLINED_FUNCTION_118_1();
    _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(v21, v22);
    v23 = OUTLINED_FUNCTION_106_1();
    v24(v23);
  }

  v25 = [v6 nextFocusedIndexPath];
  if (v25)
  {
    v26 = v25;
    sub_1D818E924();

    v27 = OUTLINED_FUNCTION_111();
    v28(v27);
    v29 = OUTLINED_FUNCTION_15_5();
    _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(v29, v30);
    v31 = OUTLINED_FUNCTION_54_1();
    v32(v31);
  }

  OUTLINED_FUNCTION_10_19();
  v34 = v4 + *(v33 + 192);
  OUTLINED_FUNCTION_8_4();
  if (!swift_unknownObjectWeakLoadStrong() || (v35 = *(v34 + 8), ObjectType = swift_getObjectType(), (*(v35 + 32))(v37, ObjectType, v35), swift_unknownObjectRelease(), (v37[0] & 1) == 0))
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_8_4();
    if (swift_weakLoadStrong())
    {
      KeyCommandManager.invalidate(clearState:)(1);
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7FFF950(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:didUpdateFocusIn:with:)(v8, v9, v11);
}

void BlueprintCollectionViewDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v62 = a2;
  OUTLINED_FUNCTION_3_7();
  v10 = *(v9 + 104);
  v13 = *((v12 & v11) + 0x50);
  OUTLINED_FUNCTION_33_0();
  v14 = OUTLINED_FUNCTION_139_1();
  OUTLINED_FUNCTION_33_0();
  v15 = OUTLINED_FUNCTION_139_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_105_1();
  v63 = v14;
  v64 = v15;
  v65 = AssociatedConformanceWitness;
  v66 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_118_0();
  v17 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_119();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v22 = v21;
  OUTLINED_FUNCTION_44();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  if ([a1 allowsSelection] && (objc_msgSend(a1, sel_isEditing) & 1) == 0 && (objc_msgSend(a1, sel_allowsMultipleSelection) & 1) == 0)
  {
    v61 = v22;
    type metadata accessor for SwipeActionCollectionView();
    if (swift_dynamicCastClass())
    {
      v60 = a1;
      if (sub_1D8082BB0())
      {

        return;
      }

      sub_1D80F82E4();
      sub_1D7E6931C();
    }

    v27 = [a1 hitTest:0 withEvent:{a3, a4}];
    if (!v27 || (v28 = v27, LODWORD(v60) = sub_1D802334C(), v28, (v60 & 1) == 0))
    {
      v29 = sub_1D818E8E4();
      v60 = [a1 cellForItemAtIndexPath_];

      BlueprintProviderType.blueprint.getter(v13, v10);
      v30 = v62;
      Blueprint.subscript.getter();
      v31 = v17;
      v32 = v60;
      (*(v19 + 8))(AssociatedConformanceWitness, v31);
      v33 = OUTLINED_FUNCTION_11_0();
      v34 = v30;
      v36 = sub_1D800000C(v33, v35, v30, a1);
      v37 = sub_1D8000710(v26, v34, v5, a1);
      v38 = sub_1D80012D4(v5, v32, v36, v37);
      v39 = OUTLINED_FUNCTION_11_0();
      v41 = sub_1D8001464(v39, v40, v34);
      if (!(sub_1D7E36AB8(v38) | v41))
      {
        if (!v36 || (, v42 = ContextMenu.activityItemConfiguration.getter(), , !v42))
        {

          goto LABEL_22;
        }
      }

      v62 = v37;
      OUTLINED_FUNCTION_8_4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v44 = Strong;
        v45 = [Strong view];

        if (!v45)
        {
          __break(1u);
          return;
        }

        v46 = [v45 window];

        if (v46)
        {
          v47 = [v46 rootViewController];

          if (v47)
          {
            v48 = [v47 presentedViewController];

            if (v48)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {

LABEL_22:
                v49 = OUTLINED_FUNCTION_88_2();
                v50(v49);
                return;
              }
            }
          }
        }
      }

      sub_1D7E0A1A8(0, &unk_1EDBAE4B0);
      BlueprintItem.identifier.getter();
      v51 = sub_1D8190EE4();

      v52 = swift_allocObject();
      *(v52 + 16) = v41;
      *(v52 + 24) = v32;
      OUTLINED_FUNCTION_0_8();
      v53 = v32;
      v54 = swift_allocObject();
      *(v54 + 16) = v38;
      v55 = v41;
      v56 = v53;
      sub_1D7F0DCE4(v51, sub_1D8008648, v52, sub_1D7F9DB78, v54);

      v57 = OUTLINED_FUNCTION_88_2();
      v58(v57);
    }
  }
}

uint64_t sub_1D800000C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v70 = a4;
  v76 = a3;
  v77 = a1;
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v78 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = v8;
  v69 = v7;
  v12 = swift_getAssociatedConformanceWitness();
  *&v83 = AssociatedTypeWitness;
  *(&v83 + 1) = v10;
  *&v84 = AssociatedConformanceWitness;
  *(&v84 + 1) = v12;
  v13 = type metadata accessor for Blueprint();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v58 - v14;
  v15 = sub_1D818E994();
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v6 & v5) + 0x70);
  v74 = a2;
  v18 = *((v6 & v5) + 0x58);
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v73 = v17;
  v22 = v18;
  v23 = v78;
  v24 = swift_getAssociatedConformanceWitness();
  *&v83 = v23;
  *(&v83 + 1) = v10;
  *&v84 = v19;
  *(&v84 + 1) = v20;
  v75 = v20;
  v71 = AssociatedConformanceWitness;
  v85 = AssociatedConformanceWitness;
  v86 = v12;
  v25 = v12;
  v87 = v21;
  v88 = v24;
  v26 = v24;
  v27 = type metadata accessor for ContextMenuContext();
  v66 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v65 = &v58 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  (*(v32 + 16))(&v58 - v31, v77, v10, v30);
  sub_1D7E0631C(0, &qword_1EDBB9540);
  v77 = v10;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    sub_1D7E25DBC(&v83, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
    return 0;
  }

  v62 = v19;
  sub_1D7E05450(&v83, v89);
  v34 = v90;
  v33 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  if ((*(v33 + 16))(v34, v33))
  {
    BlueprintLayoutProviderType.layoutBlueprint.getter(v22, v73);
    *&v79 = v62;
    *(&v79 + 1) = v75;
    v80 = v21;
    v81 = v26;
    v35 = type metadata accessor for BlueprintLayout();
    v36 = sub_1D81138E8(v76, v35);
    (*(*(v35 - 8) + 8))(&v83, v35);
    if ((v36 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      return 0;
    }
  }

  v37 = v90;
  v38 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  v39 = (*(v38 + 8))(v37, v38);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v59 = v91;
    v60 = v90;
    v61 = __swift_project_boxed_opaque_existential_1(v89, v90);
    (*(v63 + 16))(v72, v76, v64);
    v76 = v27;
    v41 = v67;
    BlueprintProviderType.blueprint.getter(v68, v69);
    BlueprintLayoutProviderType.layoutBlueprint.getter(v22, v73);
    v42 = type metadata accessor for RendererEnvironment();
    v43 = objc_allocWithZone(v42);
    v44 = v70;
    v45 = v70;
    v46 = RendererEnvironment.init(scrollView:testing:)(v44, 0);
    v81 = v42;
    v82 = &protocol witness table for RendererEnvironment;
    *&v79 = v46;
    v47 = v26;
    v57 = v26;
    v48 = v21;
    v49 = v71;
    v50 = v65;
    v51 = v41;
    v53 = v77;
    v52 = v78;
    v54 = v62;
    v55 = v75;
    sub_1D7FB0E2C(v72, v51, &v83, &v79, v65);
    v40 = (*(v59 + 32))(v50, v52, v53, v54, v55, v49, v25, v48, v47, v60, v59, v57);
    (*(v66 + 8))(v50, v76);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  return v40;
}

uint64_t sub_1D8000710(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v109 = a4;
  v105 = a2;
  v111 = a1;
  v5 = *a3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = v8;
  v107 = v7;
  v11 = swift_getAssociatedConformanceWitness();
  *&v122 = AssociatedTypeWitness;
  *(&v122 + 1) = v10;
  *&v123 = AssociatedConformanceWitness;
  *(&v123 + 1) = v11;
  v12 = type metadata accessor for Blueprint();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v85 - v13;
  v100 = sub_1D818E994();
  v112 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v113 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((v6 & v5) + 0x70);
  v97 = a3;
  v16 = *((v6 & v5) + 0x58);
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v98 = v16;
  v99 = v15;
  v20 = swift_getAssociatedConformanceWitness();
  v110 = AssociatedTypeWitness;
  *&v122 = AssociatedTypeWitness;
  *(&v122 + 1) = v10;
  v102 = v18;
  v103 = v17;
  *&v123 = v17;
  *(&v123 + 1) = v18;
  v124 = AssociatedConformanceWitness;
  v125 = v11;
  v108 = v11;
  v114 = v19;
  v126 = v19;
  v127 = v20;
  v101 = v20;
  v21 = type metadata accessor for ContextMenuContext();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v85 - v23;
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  sub_1D818EEE4();
  v29 = 0;
  if (sub_1D818EEC4())
  {
    (*(v25 + 16))(v28, v111, v10);
    sub_1D7E0631C(0, &qword_1EDBB9540);
    if (swift_dynamicCast())
    {
      sub_1D7E05450(&v122, v128);
      v93 = v130;
      v94 = v129;
      v95 = __swift_project_boxed_opaque_existential_1(v128, v129);
      v30 = *(v112 + 16);
      v112 += 16;
      v91 = v30;
      v30(v113, v105, v100);
      v31 = v97;
      v32 = MEMORY[0x1E69E7D40];
      v90 = *((*MEMORY[0x1E69E7D40] & *v97) + 0x88);
      v111 = v22;
      v33 = v104;
      BlueprintProviderType.blueprint.getter(v106, v107);
      v89 = *((*v32 & *v31) + 0x90);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v98, v99);
      v34 = type metadata accessor for RendererEnvironment();
      v35 = objc_allocWithZone(v34);
      v36 = v109;
      v88 = v109;
      v37 = RendererEnvironment.init(scrollView:testing:)(v36, 0);
      v120 = v34;
      v121 = &protocol witness table for RendererEnvironment;
      v92 = v34;
      *&v119 = v37;
      v38 = v101;
      v83 = v101;
      v96 = v21;
      v39 = v10;
      v40 = v108;
      v41 = AssociatedConformanceWitness;
      v42 = v33;
      v43 = v110;
      v45 = v102;
      v44 = v103;
      sub_1D7FB0E2C(v113, v42, &v122, &v119, v24);
      v46 = v93[5];
      v82 = v94;
      v94 = v39;
      v47 = v44;
      v48 = v111;
      v49 = v45;
      v50 = v96;
      v29 = v46(v24, v43, v39, v47, v49, v41, v40, v114, v38, v82, v93, v83);
      v53 = *(v48 + 8);
      v52 = v48 + 8;
      v51 = v53;
      v95 = v24;
      v53(v24, v50);
      v55 = v129;
      v54 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      if ((v54[3])(v55, v54))
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v57 = Strong;
          sub_1D805B770(&v122);

          if (*(&v123 + 1))
          {
            sub_1D7E05450(&v122, &v119);
            v86 = v121;
            v87 = v120;
            v93 = __swift_project_boxed_opaque_existential_1(&v119, v120);
            v111 = v52;
            v58 = v113;
            v91(v113, v105, v100);
            v59 = v104;
            BlueprintProviderType.blueprint.getter(v106, v107);
            BlueprintLayoutProviderType.layoutBlueprint.getter(v98, v99);
            v60 = v92;
            v61 = objc_allocWithZone(v92);
            v62 = v88;
            v63 = RendererEnvironment.init(scrollView:testing:)(v109, 0);
            v117 = v60;
            v118 = &protocol witness table for RendererEnvironment;
            *&v116 = v63;
            v64 = v101;
            v84 = v101;
            v109 = v51;
            v65 = v108;
            v112 = v29;
            v66 = AssociatedConformanceWitness;
            v67 = v95;
            v68 = v58;
            v69 = v59;
            v70 = v110;
            v71 = v94;
            v73 = v102;
            v72 = v103;
            sub_1D7FB0E2C(v68, v69, &v122, &v116, v95);
            v74 = v66;
            v75 = v112;
            v76 = (v86[5])(v67, v70, v71, v72, v73, v74, v65, v114, v64, v87, v86, v84);
            (v109)(v67, v50);
            if (v75)
            {
              if (v76)
              {
                sub_1D7EE5CC4();
                v77 = swift_allocObject();
                *(v77 + 16) = xmmword_1D819FAB0;
                type metadata accessor for ContextMenuGroup();

                v78 = sub_1D8125948(v75);
                v79 = sub_1D8125948(v76);
                *&v122 = v78;
                sub_1D7F0A988(v79);
                static ContextMenuGroup.debug(items:)(v122, (v77 + 32));

                type metadata accessor for ContextMenu();
                swift_allocObject();
                v80 = ContextMenu.init(groups:activityItemConfiguration:)(v77);

                v76 = v80;
              }

              else
              {
                v76 = v75;
              }
            }

            __swift_destroy_boxed_opaque_existential_1Tm(&v119);
            v29 = v76;
            goto LABEL_14;
          }
        }

        else
        {
          v124 = 0;
          v122 = 0u;
          v123 = 0u;
        }

        sub_1D7E25DBC(&v122, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
      }

LABEL_14:
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
      return v29;
    }

    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    sub_1D7E25DBC(&v122, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
    return 0;
  }

  return v29;
}

uint64_t sub_1D8001060(uint64_t a1, void *a2, void *a3)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *MEMORY[0x1E69E7D40] & *a2;
  HIBYTE(v27) = 2;
  sub_1D7E25380(a2 + *(v4 + 272), v24);
  v28 = 0u;
  v29 = 0u;
  LOBYTE(v30) = 1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v7 + 80);
  *(v9 + 24) = *(v7 + 88);
  *(v9 + 40) = *(v7 + 104);
  *(v9 + 48) = *(v7 + 112);
  *(v9 + 64) = *(v7 + 128);
  *(v9 + 72) = v8;
  type metadata accessor for CommandExecutionSource();
  v10 = swift_allocObject();
  v11 = v25;
  v12 = v26;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);

  v18 = a3;
  sub_1D7E3B938(&v27 + 7, v16, a3, &v28, 0, sub_1D8008954, v9, v10, v11, v12, v24[0], v24[1], v24[2], v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v21 = (a2 + *((*v3 & *a2) + 0xA0));
  v22 = ContextMenu.build(commandCenter:source:)(*v21, v21[1], v20);

  return v22;
}

uint64_t sub_1D80012D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDBBC648 != -1)
  {
    swift_once();
  }

  type metadata accessor for BlueprintCollectionViewDelegate();
  swift_getWitnessTable();
  sub_1D818EA44();
  if (!v13)
  {
    return sub_1D8001060(a3, a1, a2);
  }

  if (v13 == 1)
  {
    v8 = sub_1D8001060(a4, a1, a2);
    v9 = sub_1D8001060(a3, a1, a2);
    v12 = v8;
  }

  else
  {
    v11 = sub_1D8001060(a3, a1, a2);
    v9 = sub_1D8001060(a4, a1, a2);
    v12 = v11;
  }

  sub_1D7F0A724(v9);
  return v12;
}

id sub_1D8001464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v35 = a3;
  v4 = *a2;
  v5 = *MEMORY[0x1E69E7D40];
  v37 = (*MEMORY[0x1E69E7D40] & *a2);
  v6 = *((v5 & v4) + 0x68);
  v7 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  *&v42 = AssociatedTypeWitness;
  *(&v42 + 1) = v9;
  *&v43 = swift_getAssociatedConformanceWitness();
  *(&v43 + 1) = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Blueprint();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v32 - v15, a1, v9, v14);
  sub_1D7E0631C(0, &qword_1EDBB9540);
  if (swift_dynamicCast())
  {
    v34 = a1;
    sub_1D7E05450(&v42, v45);
    v18 = v46;
    v17 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    if ((*(v17 + 16))(v18, v17))
    {
      BlueprintLayoutProviderType.layoutBlueprint.getter(v37[11], v37[14]);
      v19 = swift_getAssociatedTypeWitness();
      v20 = swift_getAssociatedTypeWitness();
      v33 = v10;
      v21 = v20;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v23 = swift_getAssociatedConformanceWitness();
      v38 = v19;
      v39 = v21;
      v40 = AssociatedConformanceWitness;
      v10 = v33;
      v41 = v23;
      v24 = type metadata accessor for BlueprintLayout();
      LOBYTE(AssociatedConformanceWitness) = sub_1D81138E8(v35, v24);
      (*(*(v24 - 8) + 8))(&v42, v24);
      if ((AssociatedConformanceWitness & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        return 0;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    a1 = v34;
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_1D7E25DBC(&v42, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  BlueprintProviderType.blueprint.getter(v7, v6);
  v27 = (*(v37[15] + 80))(v12, a1, v37[12]);

  (*(v36 + 8))(v12, v10);
  if (v27)
  {
    v38 = v27;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D7E0631C(0, &unk_1ECA0F3C0);
    v28 = v27;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    }

    else
    {
      swift_beginAccess();
      v29 = swift_unknownObjectWeakLoadStrong();
      v30 = objc_allocWithZone(type metadata accessor for PreviewViewController());
      return PreviewViewController.init(previewedViewController:triggeringViewController:)(v28, v29);
    }
  }

  return v27;
}

void *sub_1D8001A34(void *a1, void *a2)
{
  if (!a1)
  {
    if (a2 && (sub_1D7E0A1A8(0, &qword_1EDBB3110), sub_1D7E0631C(0, &unk_1ECA0F5A0), v4 = a2, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v10 + 1))
      {
        sub_1D7E05450(&v9, v12);
        v5 = v13;
        v6 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v6 + 8))(1, v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    sub_1D7E25DBC(&v9, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
  }

LABEL_8:
  v7 = a1;
  return a1;
}

id sub_1D8001B54(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_1D818E994();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v13 = a5;
  v14 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)(v13, v12, a2, a3);
  v16 = v15;

  (*(v10 + 8))(v12, v9);

  return v16;
}

id BlueprintCollectionViewDelegate.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, void *a2, void *a3)
{
  result = [a1 allowsSelection];
  if (result)
  {
    OUTLINED_FUNCTION_0_8();
    v7 = swift_allocObject();
    v8 = [a3 previewViewController];
    if (v8)
    {
      *(v7 + 16) = v8;
      [a3 setPreferredCommitStyle_];
      OUTLINED_FUNCTION_1_63();
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v3;
      v9[4] = a2;
      v13[4] = sub_1D8008650;
      v13[5] = v9;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_1D7E64940;
      v13[3] = &block_descriptor_40;
      v10 = _Block_copy(v13);

      v11 = v3;
      v12 = a2;

      [a3 addCompletion_];
      _Block_release(v10);
    }

    else
    {
      OUTLINED_FUNCTION_0_8();
      swift_deallocUninitializedObject();

      return sub_1D8001E0C(a2, v3);
    }
  }

  return result;
}

uint64_t sub_1D8001E0C(void *a1, void *a2)
{
  v54 = a1;
  v3 = *a2;
  v4 = *MEMORY[0x1E69E7D40];
  v46 = *MEMORY[0x1E69E7D40] & *a2;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D818E994();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v4 & v3) + 0x68);
  v53 = a2;
  v10 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v56 = AssociatedTypeWitness;
  v57 = v12;
  v58 = AssociatedConformanceWitness;
  v59 = v14;
  v15 = type metadata accessor for Blueprint();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  v19 = type metadata accessor for BlueprintItem();
  v20 = sub_1D8191E84();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = *(v19 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v51 = &v41 - v26;
  v55 = [v54 identifier];
  sub_1D7F9DB88();
  result = swift_dynamicCast();
  if (result)
  {
    v54 = v23;
    v44 = v7;
    v45 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x88);
    BlueprintProviderType.blueprint.getter(v10, v9);
    Blueprint.item(for:)();

    v29 = v16 + 8;
    v28 = *(v16 + 8);
    (v28)(v18, v15);
    if (__swift_getEnumTagSinglePayload(v22, 1, v19) == 1)
    {
      return v49[1](v22, v50);
    }

    else
    {
      v30 = v19;
      v31 = v54;
      v32 = v51;
      (*(v54 + 4))(v51, v22, v30);
      v49 = v28;
      v50 = v29;
      v42 = v10;
      v43 = v9;
      v33 = v9;
      v34 = v32;
      BlueprintProviderType.blueprint.getter(v10, v33);
      v35 = v52;
      Blueprint.indexPath(forItem:)();
      (v49)(v18, v15);
      v36 = v44;
      if (__swift_getEnumTagSinglePayload(v35, 1, v44) == 1)
      {
        (v31)[1](v34, v30);
        return sub_1D7E54AA4(v35, sub_1D7E3D564);
      }

      else
      {
        v41 = v30;
        v37 = v47;
        v38 = v48;
        (*(v48 + 32))(v47, v35, v36);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v40 = Strong;
          BlueprintProviderType.blueprint.getter(v42, v43);
          (*(*(v46 + 120) + 88))(v18, v34, v37, *(v46 + 96));

          (v49)(v18, v15);
        }

        (*(v38 + 8))(v37, v36);
        return (*(v54 + 1))(v34, v41);
      }
    }
  }

  return result;
}

void sub_1D8002454(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  type metadata accessor for PreviewViewController();
  if (swift_dynamicCastClass())
  {
    v7 = v6;
    v8 = sub_1D7F0E0A0();
    swift_beginAccess();
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;

    v10 = v8;
    setPreviewing(viewController:previewing:)(v10, 0);
  }

  v11 = sub_1D8002628(a2, &selRef_splitViewController);
  v12 = sub_1D8002628(a2, &selRef_tabBarController);
  v13 = v12;
  if (v11)
  {
    swift_beginAccess();
    [v11 showViewController:*(a1 + 16) sender:a2];
  }

  else if (v12)
  {
    swift_beginAccess();
    [v13 showViewController:*(a1 + 16) sender:a2];
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      swift_beginAccess();
      [v15 showViewController:*(a1 + 16) sender:a2];
    }
  }

  sub_1D8001E0C(a3, a2);
}

id sub_1D8002628(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = Strong, v5 = [Strong *a2], v4, !v5))
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 presentingViewController];

      v5 = [v8 *a2];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_1D800270C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(v8, v9, a5);

  swift_unknownObjectRelease();
}

UITargetedPreview_optional __swiftcall BlueprintCollectionViewDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v73 = v5;
  v75 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_79_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v64 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v65 = v10;
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_64();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_50(v11);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94();
  v63 = v13;
  OUTLINED_FUNCTION_52_0();
  sub_1D7E3D564();
  v15 = OUTLINED_FUNCTION_50(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v68 = v16;
  OUTLINED_FUNCTION_52_0();
  v69 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v67 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v66 = v19;
  OUTLINED_FUNCTION_71_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_71_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_80_3();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_64();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = OUTLINED_FUNCTION_101_1(v20);
  OUTLINED_FUNCTION_9();
  v72 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_46_5();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v71 = v25;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_94();
  v70 = v27;
  if ([v75 allowsSelection])
  {
    *&v77 = [v73 identifier];
    sub_1D7F9DB88();
    if (swift_dynamicCast())
    {
      v74 = v6;
      v28 = OUTLINED_FUNCTION_114_1();
      BlueprintProviderType.blueprint.getter(v28, v29);
      Blueprint.item(for:)();

      v30 = *(v72 + 8);
      v30(v3, v21);
      v31 = OUTLINED_FUNCTION_109_1();
      OUTLINED_FUNCTION_43_0(v31, v32, v74);
      if (v40)
      {
        v33 = OUTLINED_FUNCTION_4_8();
        v34(v33);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_15_5();
        v36(v35);
        v37 = OUTLINED_FUNCTION_114_1();
        BlueprintProviderType.blueprint.getter(v37, v38);
        Blueprint.indexPath(forItem:)();
        v39 = OUTLINED_FUNCTION_107_1();
        (v30)(v39);
        OUTLINED_FUNCTION_43_0(v68, 1, v69);
        if (v40)
        {
          (*(v71 + 8))(v70, v74);
          OUTLINED_FUNCTION_0_114();
          sub_1D7E54AA4(v68, v41);
        }

        else
        {
          (*(v67 + 32))(v66, v68, v69);
          v44 = sub_1D818E8E4();
          v45 = [v75 cellForItemAtIndexPath_];

          if (v45)
          {
            v46 = v45;
            v47 = [v46 window];
            if (v47)
            {

              v48 = OUTLINED_FUNCTION_110();
              BlueprintLayoutProviderType.layoutBlueprint.getter(v48, v49);
              OUTLINED_FUNCTION_16();
              v50 = swift_getAssociatedTypeWitness();
              OUTLINED_FUNCTION_111();
              OUTLINED_FUNCTION_65();
              v51 = swift_getAssociatedConformanceWitness();
              *&v77 = v50;
              *(&v77 + 1) = AssociatedTypeWitness;
              *&v78 = v51;
              *(&v78 + 1) = AssociatedConformanceWitness;
              OUTLINED_FUNCTION_118_0();
              v52 = type metadata accessor for BlueprintLayout();
              BlueprintLayout.subscript.getter(v66, v52);
              OUTLINED_FUNCTION_3_0();
              (*(v53 + 8))(v76, v52);
              (*(v64 + 32))(v65, v63, AssociatedTypeWitness);
              sub_1D7E0631C(0, &qword_1EDBB17D0);
              if ((swift_dynamicCast() & 1) == 0)
              {
                v79 = 0;
                v77 = 0u;
                v78 = 0u;
              }

              sub_1D7E0A1A8(0, &unk_1EDBAE520);
              sub_1D7E25620(&v77, v76, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
              sub_1D8184638(v46, v76);

              v54 = OUTLINED_FUNCTION_73();
              v55(v54);
              (*(v71 + 8))(v70, v74);
              v56 = OUTLINED_FUNCTION_83_2();
              sub_1D7E25DBC(v56, v57, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            }

            else
            {

              v60 = OUTLINED_FUNCTION_73();
              v61(v60);
              (*(v71 + 8))(v70);
            }
          }

          else
          {
            v58 = OUTLINED_FUNCTION_73();
            v59(v58);
            (*(v71 + 8))(v70, v74);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_100();
  result.value.super.isa = v42;
  result.is_nil = v43;
  return result;
}

id sub_1D8002FAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintCollectionViewDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

UITargetedPreview_optional __swiftcall BlueprintCollectionViewDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForDismissingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v141 = v3;
  v127 = v4;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v119 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v120 = v12;
  v117 = v8;
  v118 = v7;
  OUTLINED_FUNCTION_111();
  v13 = v2;
  v115 = OUTLINED_FUNCTION_140_1();
  v14 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_50(v14);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94();
  v116 = v16;
  OUTLINED_FUNCTION_52_0();
  sub_1D7E3D564();
  v18 = OUTLINED_FUNCTION_50(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23();
  v126 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21_12();
  v125 = v21;
  OUTLINED_FUNCTION_52_0();
  v136 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v128 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23();
  v123 = v24;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21_12();
  v122 = v26;
  v27 = *((v6 & v5) + 0x68);
  v28 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_71_1();
  v29 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_71_1();
  v30 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_65();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v139 = v28;
  OUTLINED_FUNCTION_80_3();
  v32 = swift_getAssociatedConformanceWitness();
  v142[0] = v29;
  v142[1] = v30;
  v142[2] = AssociatedConformanceWitness;
  v143 = v32;
  v33 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v140 = v34;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_124();
  v36 = type metadata accessor for BlueprintItem();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v130 = v38;
  v131 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v113 - v42;
  OUTLINED_FUNCTION_2();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23();
  v129 = v47;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_21_12();
  v124 = v49;
  *&v145 = [v141 identifier];
  v137 = sub_1D7F9DB88();
  v50 = swift_dynamicCast();
  v121 = AssociatedTypeWitness;
  v138 = v45;
  v135 = v27;
  v132 = v28;
  v133 = v33;
  if (v50)
  {
    v114 = v40;
    v113[1] = *((*MEMORY[0x1E69E7D40] & *v13) + 0x88);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_105_1();
    Blueprint.item(for:)();

    v51 = *(v140 + 8);
    v52 = OUTLINED_FUNCTION_128();
    v51(v52);
    v53 = OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_43_0(v53, v54, v36);
    if (v59)
    {
      (*(v130 + 8))(v43, v131);
    }

    else
    {
      v56 = v124;
      (*(v138 + 32))();
      v134 = v36;
      OUTLINED_FUNCTION_136_1();
      v57 = v125;
      OUTLINED_FUNCTION_54_1();
      Blueprint.indexPath(forItem:)();
      v58 = OUTLINED_FUNCTION_128();
      v51(v58);
      OUTLINED_FUNCTION_43_0(v57, 1, v136);
      if (v59)
      {
        v36 = v134;
        (*(v138 + 8))(v56, v134);
        OUTLINED_FUNCTION_0_114();
        sub_1D7E54AA4(v57, v60);
      }

      else
      {
        (*(v128 + 32))(v122, v57, v136);
        v61 = sub_1D818E8E4();
        [v127 deselectItemAtIndexPath:v61 animated:1];

        OUTLINED_FUNCTION_82_2();
        v62 = OUTLINED_FUNCTION_11_0();
        v63(v62);
        v36 = v134;
        (*(v138 + 8))(v56, v134);
      }
    }

    v55 = MEMORY[0x1E69E7D40];
    v40 = v114;
  }

  else
  {
    v55 = MEMORY[0x1E69E7D40];
  }

  *&v145 = [v141 identifier];
  if (swift_dynamicCast())
  {
    v64 = v40;
    v65 = *((*v55 & *v13) + 0x88);
    v134 = v36;
    v141 = v65;
    v66 = v132;
    v67 = v139;
    BlueprintProviderType.blueprint.getter(v139, v135);
    OUTLINED_FUNCTION_15_5();
    v68 = v133;
    Blueprint.item(for:)();
    v69 = v134;

    v71 = v140 + 8;
    v70 = *(v140 + 8);
    v70(v66, v68);
    OUTLINED_FUNCTION_43_0(v64, 1, v69);
    if (v59)
    {
      (*(v130 + 8))(v64, v131);
    }

    else
    {
      v140 = v71;
      v72 = v126;
      v73 = OUTLINED_FUNCTION_67();
      v74(v73);
      BlueprintProviderType.blueprint.getter(v67, v135);
      Blueprint.indexPath(forItem:)();
      v70(v66, v68);
      v75 = OUTLINED_FUNCTION_109_1();
      OUTLINED_FUNCTION_43_0(v75, v76, v136);
      if (v77)
      {
        v78 = OUTLINED_FUNCTION_67();
        v79(v78);
        OUTLINED_FUNCTION_0_114();
        sub_1D7E54AA4(v72, v80);
      }

      else
      {
        (*(v128 + 32))(v123, v72, v136);
        v83 = sub_1D818E8E4();
        v84 = [v127 cellForItemAtIndexPath_];

        if (v84)
        {
          v148 = v84;
          sub_1D7E0A1A8(0, &qword_1EDBB3110);
          sub_1D7E0631C(0, &unk_1ECA0F5A0);
          v85 = v84;
          if (OUTLINED_FUNCTION_100_1())
          {
            sub_1D7E05450(&v145, v142);
            v86 = v143;
            v87 = v144;
            __swift_project_boxed_opaque_existential_1(v142, v143);
            OUTLINED_FUNCTION_82_2();
            v88(0, v86, v87);
            __swift_destroy_boxed_opaque_existential_1Tm(v142);
          }

          else
          {
            v147 = 0;
            v145 = 0u;
            v146 = 0u;
            sub_1D7E25DBC(&v145, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
          }

          v93 = v121;
          v94 = v85;
          v95 = [v94 window];
          if (v95)
          {

            v96 = OUTLINED_FUNCTION_110();
            BlueprintLayoutProviderType.layoutBlueprint.getter(v96, v97);
            OUTLINED_FUNCTION_16();
            v98 = swift_getAssociatedTypeWitness();
            OUTLINED_FUNCTION_111();
            OUTLINED_FUNCTION_80_3();
            v99 = swift_getAssociatedConformanceWitness();
            *&v145 = v98;
            *(&v145 + 1) = v93;
            *&v146 = v99;
            *(&v146 + 1) = v115;
            v100 = type metadata accessor for BlueprintLayout();
            v101 = v116;
            v102 = OUTLINED_FUNCTION_73();
            BlueprintLayout.subscript.getter(v102, v103);
            OUTLINED_FUNCTION_3_0();
            (*(v104 + 8))(v142, v100);
            (*(v119 + 32))(v120, v101, v93);
            sub_1D7E0631C(0, &qword_1EDBB17D0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v147 = 0;
              v145 = 0u;
              v146 = 0u;
            }

            sub_1D7E0A1A8(0, &unk_1EDBAE520);
            sub_1D7E25620(&v145, v142, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            sub_1D8184638(v94, v142);

            v105 = OUTLINED_FUNCTION_89_2();
            v106(v105);
            v107 = OUTLINED_FUNCTION_92_2();
            v108(v107);
            sub_1D7E25DBC(&v145, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
          }

          else
          {

            v109 = OUTLINED_FUNCTION_89_2();
            v110(v109);
            v111 = OUTLINED_FUNCTION_92_2();
            v112(v111);
          }
        }

        else
        {
          v89 = OUTLINED_FUNCTION_89_2();
          v90(v89);
          v91 = OUTLINED_FUNCTION_92_2();
          v92(v91);
        }
      }
    }
  }

  OUTLINED_FUNCTION_100();
  result.value.super.isa = v81;
  result.is_nil = v82;
  return result;
}

id sub_1D8003B9C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintCollectionViewDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

void BlueprintCollectionViewDelegate.collectionView(_:willDisplayContextMenu:animator:)()
{
  OUTLINED_FUNCTION_120();
  v12 = v0;
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_75_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_3_7();
    v5 = OUTLINED_FUNCTION_110();
    BlueprintProviderType.blueprint.getter(v5, v6);
    v7 = OUTLINED_FUNCTION_126_0();
    v8(v7);

    v9 = OUTLINED_FUNCTION_68_0();
    v10(v9);
  }

  type metadata accessor for SwipeActionCollectionView();
  if (swift_dynamicCastClass())
  {
    v11 = v12;
    sub_1D8082C8C(0);
  }

  OUTLINED_FUNCTION_100();
}

void BlueprintCollectionViewDelegate.collectionView(_:willEndContextMenuInteraction:animator:)()
{
  OUTLINED_FUNCTION_120();
  v12 = v0;
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_75_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_3_7();
    v5 = OUTLINED_FUNCTION_110();
    BlueprintProviderType.blueprint.getter(v5, v6);
    v7 = OUTLINED_FUNCTION_126_0();
    v8(v7);

    v9 = OUTLINED_FUNCTION_68_0();
    v10(v9);
  }

  type metadata accessor for SwipeActionCollectionView();
  if (swift_dynamicCastClass())
  {
    v11 = v12;
    sub_1D8082C8C(1);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D8004068(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  a6(v9);

  swift_unknownObjectRelease();
}

void BlueprintCollectionViewDelegate.collectionView(_:shouldHighlightItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v45 = v1;
  v40 = v2;
  v42 = *v0;
  v43 = *MEMORY[0x1E69E7D40];
  v3 = OUTLINED_FUNCTION_139_1();
  OUTLINED_FUNCTION_9();
  v44 = v4;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94();
  v41 = v6;
  v54[0] = OUTLINED_FUNCTION_139_1();
  v54[1] = v3;
  v54[2] = swift_getAssociatedConformanceWitness();
  v54[3] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_118_0();
  v7 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_46();
  BlueprintProviderType.blueprint.getter(v14, v15);
  Blueprint.subscript.getter();
  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_55_6();
  v16();
  sub_1D7E0631C(0, qword_1EDBBB828);
  if (!swift_dynamicCast())
  {
    v24 = OUTLINED_FUNCTION_158();
    v25(v24);
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_1D7E25DBC(&v51, &unk_1ECA0F380, qword_1EDBBB828, &protocol descriptor for Highlightable);
    goto LABEL_16;
  }

  sub_1D7E05450(&v51, v54);
  v17 = v54[4];
  v18 = OUTLINED_FUNCTION_83_2();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v20 = OUTLINED_FUNCTION_6_1();
  v21(v20, v17);
  if (!v50)
  {
    v26 = OUTLINED_FUNCTION_158();
    v27(v26);
    goto LABEL_15;
  }

  if (v50 != 1)
  {
    v28 = sub_1D818E8E4();
    v29 = [v40 cellForItemAtIndexPath_];

    if (v29)
    {
      v46 = v29;
      sub_1D7E0A1A8(0, &qword_1EDBB3110);
      sub_1D7E0631C(0, qword_1EDBBA0F0);
      if (OUTLINED_FUNCTION_141_0())
      {
        if (*(&v48 + 1))
        {
          sub_1D7E05450(&v47, &v51);
          v30 = v53;
          __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
          v31 = OUTLINED_FUNCTION_6_1();
          v32(v31, v30);
          v33 = OUTLINED_FUNCTION_4_8();
          v34(v33);
          __swift_destroy_boxed_opaque_existential_1Tm(&v51);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          goto LABEL_16;
        }
      }

      else
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
      }

      v37 = OUTLINED_FUNCTION_4_8();
      v38(v37);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_4_8();
      v36(v35);
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    sub_1D7E25DBC(&v47, &unk_1EDBBA0E0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    goto LABEL_16;
  }

  v22 = OUTLINED_FUNCTION_4_8();
  v23(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
LABEL_16:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8004638(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_97_1();
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  sub_1D818E924();
  v11 = a3;
  v12 = v5;
  v13 = OUTLINED_FUNCTION_6_1();
  LOBYTE(a5) = a5(v13, v6);

  v14 = OUTLINED_FUNCTION_110();
  v15(v14);
  return a5 & 1;
}

uint64_t sub_1D800475C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_97_1();
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  sub_1D818E924();
  v11 = a3;
  v12 = v5;
  v13 = OUTLINED_FUNCTION_6_1();
  a5(v13, v6);

  v14 = OUTLINED_FUNCTION_110();
  return v15(v14);
}

void BlueprintCollectionViewDelegate.collectionView(_:didEndDisplaying:forItemAt:)(void *a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v8 = [a1 indexPathsForVisibleItems];
  OUTLINED_FUNCTION_46_5();
  sub_1D818E994();
  OUTLINED_FUNCTION_17_7();
  v9 = sub_1D8191314();

  v37 = a3;
  v10 = sub_1D7EB0860(sub_1D7EB0ED8, v36, v9);

  if (!v10)
  {
    OUTLINED_FUNCTION_10_19();
    LOBYTE(v43[0]) = 3;
    BlueprintImpressionManager.endImpression(at:view:triggerSource:)(a3, a2, v43, v11, v12, v13, v14, v15, v36[0], v36[1], v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43[0], v43[1]);
  }

  OUTLINED_FUNCTION_26_10();
  v17 = *(v16 + 208);
  OUTLINED_FUNCTION_8_4();
  v18 = *(v5 + v17);
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_26_10();
  v21 = *(v5 + *(v20 + 264));
  type metadata accessor for BlueprintViewportTransitionManager();
  OUTLINED_FUNCTION_1_63();
  swift_allocObject();
  sub_1D7EA2E4C(v18, Strong, v21);
  v42 = a2;
  sub_1D7E0A1A8(0, &qword_1EDBB3110);
  sub_1D7E0631C(0, qword_1EDBB8580);

  v22 = a2;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v39, v43);
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v23 = OUTLINED_FUNCTION_111();
    v25 = v24(v23);
    v26 = v25;
    if (v25)
    {
      v27 = [v25 view];

      if (!v27)
      {
        __break(1u);
        return;
      }

      v26 = [v27 superview];
    }

    v28 = [v22 contentView];

    if (v26)
    {
      swift_unknownObjectRelease();
      if (v28 == v26)
      {
        sub_1D7F35A9C(v43);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v43);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D7E25DBC(&v39, &qword_1EDBB8578, qword_1EDBB8580, &protocol descriptor for ViewControllerBackable);
  }

  OUTLINED_FUNCTION_26_10();
  v30 = *(v29 + 224);
  OUTLINED_FUNCTION_8_4();
  v31 = *(v5 + v30);
  if (v31)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v22))
    {
      v32 = v22;
      v33 = v31;
      OUTLINED_FUNCTION_158();
      BlueprintViewportMonitor.remove(observer:)();
      swift_getObjectType();
      v34 = OUTLINED_FUNCTION_128();
      v35(v34);
    }
  }
}

void BlueprintCollectionViewDelegate.collectionView(_:canEditItemAt:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_111();
  swift_getAssociatedConformanceWitness();
  v4 = OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_50(v4);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_16();
  v6 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  v17[0] = v6;
  v17[1] = AssociatedTypeWitness;
  v17[2] = swift_getAssociatedConformanceWitness();
  v18 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_111_1();
  v8 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v8, v9);
  OUTLINED_FUNCTION_122_0();
  Blueprint.subscript.getter();
  v10 = OUTLINED_FUNCTION_46();
  v11(v10);
  v12 = OUTLINED_FUNCTION_91_2();
  v13(v12, v0, AssociatedTypeWitness);
  sub_1D7E0631C(0, &qword_1EDBB0730);
  OUTLINED_FUNCTION_92();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_7();
    v14 = OUTLINED_FUNCTION_3_1();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7E25DBC(&v16, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8004E8C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:canEditItemAt:)();
  LOBYTE(a1) = v11;

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t BlueprintCollectionViewDelegate.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  OUTLINED_FUNCTION_3_7();
  v11 = (v4 + *(v10 + 232));
  OUTLINED_FUNCTION_8_4();
  if (*v11)
  {
    v12 = v11[1];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    swift_unknownObjectRetain();
    v14(a1, a3, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_3_7();
    v17 = dragItems<A>(from:at:)(v4 + *(v16 + 136), a2, *(v9 + 80), *(v9 + 104));
    v18 = sub_1D7E36AB8(v17);

    sub_1D818E994();
    OUTLINED_FUNCTION_8();
    if (v18)
    {
      v20 = a3;
    }

    else
    {
      v20 = a1;
    }

    return (*(v19 + 16))(a4, v20);
  }
}

id sub_1D8005110(void *a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v4 = sub_1D818E994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1D818E924();
  sub_1D818E924();
  sub_1D818E924();
  v17 = a3;
  v18 = v23;
  BlueprintCollectionViewDelegate.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v13, v10, v7, v16);

  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  v19(v13, v4);
  v20 = sub_1D818E8E4();
  v19(v16, v4);

  return v20;
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  OUTLINED_FUNCTION_3_7();
  v3 = v1 + *(v2 + 192);
  OUTLINED_FUNCTION_8_4();
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), (*(v4 + 32))(v6, ObjectType, v4), swift_unknownObjectRelease(), (v6[0] & 1) == 0))
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_8_4();
    if (swift_weakLoadStrong())
    {
      KeyCommandManager.invalidate(clearState:)(1);
    }
  }
}

void sub_1D80053F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintCollectionViewDelegate.scrollViewWillBeginDragging(_:)(v5);
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  if (!willDecelerate)
  {
    sub_1D7E499B0(_, 3u);
    OUTLINED_FUNCTION_3_7();
    BlueprintImpressionManager.updateImpressions(triggerSource:)();
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_55_7();
    v2();
  }
}

void sub_1D80054F0(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintCollectionViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  sub_1D7E499B0(a1, 3u);
  OUTLINED_FUNCTION_3_7();
  BlueprintImpressionManager.updateImpressions(triggerSource:)();
  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_55_7();
  v1();
}

void sub_1D80055FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintCollectionViewDelegate.scrollViewDidEndDecelerating(_:)(v4);
}

id BlueprintCollectionViewDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintCollectionViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8005710(uint64_t a1)
{
  OUTLINED_FUNCTION_48_0();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v5 + 8))(a1 + v6);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v7 + 168));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_weakDestroy();
  OUTLINED_FUNCTION_1();
  sub_1D7E166A0(a1 + *(v9 + 192));
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v10 + 200));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + *(v12 + 272));
  OUTLINED_FUNCTION_1();
  sub_1D7E25DBC(a1 + *(v13 + 280), &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
  OUTLINED_FUNCTION_1();
  sub_1D7E25DBC(a1 + *(v14 + 288), &qword_1EDBB8200, qword_1EDBB8208, &protocol descriptor for BlueprintPrefetcherType);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v15 + 296));
  OUTLINED_FUNCTION_1();
}

uint64_t (*sub_1D80059C0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.delegate.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005A24(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.keyCommandManager.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005A88(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.selectionProvider.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005AE8(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.viewportMonitor.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005B48(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.dragReorderDelegate.modify();
  return sub_1D7F413B4;
}

void BlueprintCollectionViewDelegate.blueprintInfiniteScrollManager(_:didCompleteRequestForIdentifier:)()
{
  OUTLINED_FUNCTION_3_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1D7E499B0(Strong, 1u);
  }

  else
  {
    v2 = sub_1D81919C4();
    OUTLINED_FUNCTION_16_22(v2, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D819FAB0;
    OUTLINED_FUNCTION_3_7();
    v5 = (v0 + *(v4 + 312));
    v7 = *v5;
    v6 = v5[1];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1D7E13BF4();
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    sub_1D8190DB4();
    v9 = sub_1D8191E44();
    sub_1D818FD44();
  }
}

void sub_1D8005D94()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_64();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_64();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_24();
  v4 = OUTLINED_FUNCTION_4_8();
  BlueprintProviderType.blueprint.getter(v4, v5);
  OUTLINED_FUNCTION_122_0();
  Blueprint.contains(indexPath:)();
  v7 = v6;
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_46();
  v8(v9);
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v10, v11);
    OUTLINED_FUNCTION_122_0();
    Blueprint.subscript.getter();
    v12 = OUTLINED_FUNCTION_46();
    v8(v12);
    BlueprintItem.identifier.getter();
    v13 = OUTLINED_FUNCTION_88_2();
    v14(v13);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8006020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v71 = a4;
  v69 = a2;
  v74 = a1;
  v75 = a5;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x68);
  v9 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = v8;
  v66 = v9;
  v76 = swift_getAssociatedConformanceWitness();
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  *&v81 = AssociatedConformanceWitness;
  *(&v81 + 1) = v76;
  v13 = type metadata accessor for Blueprint();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v54 - v14;
  v15 = sub_1D818E994();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v7 & v6) + 0x70);
  v62 = a3;
  v18 = *((v7 & v6) + 0x58);
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v58 = v17;
  v22 = swift_getAssociatedConformanceWitness();
  v72 = AssociatedConformanceWitness;
  v73 = AssociatedTypeWitness;
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  v67 = v19;
  *&v81 = v19;
  *(&v81 + 1) = v20;
  v63 = v21;
  v64 = v20;
  v82 = AssociatedConformanceWitness;
  v83 = v76;
  v84 = v21;
  v85 = v22;
  v61 = v22;
  v23 = type metadata accessor for SwipeActionMenuContext();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v54 - v29, v74, v11, v28);
  sub_1D7E0631C(0, qword_1EDBB14D8);
  v31 = v11;
  if (swift_dynamicCast())
  {
    v74 = v26;
    sub_1D7E05450(&v80, v86);
    v32 = v87;
    v33 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (*(v33 + 8))(&v80, v32, v33);
    if (v80)
    {
      *v75 = v80;
    }

    else
    {
      v55 = v88;
      v56 = v87;
      v57 = __swift_project_boxed_opaque_existential_1(v86, v87);
      v35 = v65;
      (*(v59 + 16))(v65, v69, v60);
      v69 = v23;
      v60 = v24;
      v36 = v68;
      BlueprintProviderType.blueprint.getter(v66, v70);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v18, v58);
      v37 = type metadata accessor for RendererEnvironment();
      v38 = objc_allocWithZone(v37);
      v39 = v71;
      v40 = v71;
      v41 = RendererEnvironment.init(scrollView:testing:)(v39, 0);
      v78 = v37;
      v79 = &protocol witness table for RendererEnvironment;
      *&v77 = v41;
      v42 = v61;
      v53 = v61;
      v43 = v63;
      v44 = v76;
      v45 = v72;
      v46 = v73;
      v47 = v74;
      v48 = v35;
      v49 = v36;
      v50 = v31;
      v51 = v67;
      v52 = v64;
      sub_1D8180248(v48, v49, &v80, &v77, v74);
      (*(v55 + 16))(v47, v46, v50, v51, v52, v45, v44, v43, v42, v56, v55, v53);
      (*(v60 + 8))(v47, v69);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v86);
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    result = sub_1D7E25DBC(&v80, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
    *v75 = 0;
  }

  return result;
}

void sub_1D8006660()
{
  OUTLINED_FUNCTION_120();
  v51 = v1;
  v59 = v2;
  v62 = v3;
  v64 = v4;
  v65 = v5;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  OUTLINED_FUNCTION_81();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_80_3();
  swift_getAssociatedConformanceWitness();
  v55 = v8;
  v56 = v7;
  OUTLINED_FUNCTION_64();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_101_1(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  v53 = v11;
  v54 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94();
  v52 = v13;
  OUTLINED_FUNCTION_52_0();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v57 = v15;
  v58 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v63 = v17;
  v18 = OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_94();
  v61 = v22;
  OUTLINED_FUNCTION_67();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_46_5();
  OUTLINED_FUNCTION_105_1();
  v23 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_50(v23);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51();
  v60 = v0;
  v25 = OUTLINED_FUNCTION_68_0();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v25, v26);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  v28 = swift_getAssociatedConformanceWitness();
  *&v70 = AssociatedTypeWitness;
  *(&v70 + 1) = v18;
  *&v71 = v28;
  *(&v71 + 1) = &protocol requirements base descriptor for BlueprintLayoutProviderType;
  OUTLINED_FUNCTION_118_0();
  v29 = type metadata accessor for BlueprintLayout();
  v30 = v62;
  v31 = OUTLINED_FUNCTION_54_1();
  BlueprintLayout.subscript.getter(v31, v32);
  OUTLINED_FUNCTION_3_0();
  (*(v33 + 8))(v68, v29);
  (*(v20 + 32))(v61, v6, v18);
  sub_1D7E0631C(0, &qword_1EDBB0898);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
  }

  sub_1D7E25620(&v70, v68, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  if (v69)
  {
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v34 = OUTLINED_FUNCTION_85();
    v35(v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v37 = v63;
    v36 = v64;
    if (v67 == 1 && v66 == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1D7E25DBC(v68, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
    v37 = v63;
    v36 = v64;
  }

  v38 = v60;
  BlueprintProviderType.blueprint.getter(v55, v56);
  Blueprint.subscript.getter();
  (*(v53 + 8))(v52, v54);
  v59(v68, v37, v62, v60, v36);
  v39 = v68[0];
  if (!v68[0])
  {
    v45 = OUTLINED_FUNCTION_86_2();
    v46(v45);
LABEL_13:
    v49 = v65;
    v65[1] = 0u;
    v49[2] = 0u;
    *v49 = 0u;
    goto LABEL_14;
  }

  if (!*(v68[0] + 16))
  {
    v47 = OUTLINED_FUNCTION_86_2();
    v48(v47);

    goto LABEL_13;
  }

  v40 = v65;
  v41 = sub_1D7E25620(&v70, v65, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  MEMORY[0x1EEE9AC00](v41);
  *(&v50 - 4) = v38;
  *(&v50 - 3) = v36;
  *(&v50 - 2) = v30;
  v42 = sub_1D7FFB8F8(v51, (&v50 - 6), v39);

  v43 = OUTLINED_FUNCTION_86_2();
  v44(v43);
  *(v40 + 40) = v42;
LABEL_14:
  sub_1D7E25DBC(&v70, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8006C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v71 = a4;
  v69 = a2;
  v74 = a1;
  v75 = a5;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x68);
  v9 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = v8;
  v66 = v9;
  v76 = swift_getAssociatedConformanceWitness();
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  *&v81 = AssociatedConformanceWitness;
  *(&v81 + 1) = v76;
  v13 = type metadata accessor for Blueprint();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v54 - v14;
  v15 = sub_1D818E994();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v7 & v6) + 0x70);
  v62 = a3;
  v18 = *((v7 & v6) + 0x58);
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v58 = v17;
  v22 = swift_getAssociatedConformanceWitness();
  v72 = AssociatedConformanceWitness;
  v73 = AssociatedTypeWitness;
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  v67 = v19;
  *&v81 = v19;
  *(&v81 + 1) = v20;
  v63 = v21;
  v64 = v20;
  v82 = AssociatedConformanceWitness;
  v83 = v76;
  v84 = v21;
  v85 = v22;
  v61 = v22;
  v23 = type metadata accessor for SwipeActionMenuContext();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v54 - v29, v74, v11, v28);
  sub_1D7E0631C(0, qword_1EDBB14D8);
  v31 = v11;
  if (swift_dynamicCast())
  {
    v74 = v26;
    sub_1D7E05450(&v80, v86);
    v32 = v87;
    v33 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (*(v33 + 24))(&v80, v32, v33);
    if (v80)
    {
      *v75 = v80;
    }

    else
    {
      v55 = v88;
      v56 = v87;
      v57 = __swift_project_boxed_opaque_existential_1(v86, v87);
      v35 = v65;
      (*(v59 + 16))(v65, v69, v60);
      v69 = v23;
      v60 = v24;
      v36 = v68;
      BlueprintProviderType.blueprint.getter(v66, v70);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v18, v58);
      v37 = type metadata accessor for RendererEnvironment();
      v38 = objc_allocWithZone(v37);
      v39 = v71;
      v40 = v71;
      v41 = RendererEnvironment.init(scrollView:testing:)(v39, 0);
      v78 = v37;
      v79 = &protocol witness table for RendererEnvironment;
      *&v77 = v41;
      v42 = v61;
      v53 = v61;
      v43 = v63;
      v44 = v76;
      v45 = v72;
      v46 = v73;
      v47 = v74;
      v48 = v35;
      v49 = v36;
      v50 = v31;
      v51 = v67;
      v52 = v64;
      sub_1D8180248(v48, v49, &v80, &v77, v74);
      (*(v55 + 32))(v47, v46, v50, v51, v52, v45, v44, v43, v42, v56, v55, v53);
      (*(v60 + 8))(v47, v69);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v86);
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    result = sub_1D7E25DBC(&v80, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
    *v75 = 0;
  }

  return result;
}

uint64_t sub_1D8007290@<X0>(void *__src@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E7D40] & *a2;
  memcpy(v65, __src, sizeof(v65));
  v64 = 1;
  OUTLINED_FUNCTION_112_1();
  sub_1D7E25380(a2 + *(v11 + 272), v61);
  v12 = sub_1D818E8E4();
  v55 = [a3 cellForItemAtIndexPath_];

  memset(v66, 0, 32);
  v66[32] = 1;
  OUTLINED_FUNCTION_0_8();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_112_1();
  *(v16 + 16) = *(v15 + 80);
  *(v16 + 24) = *(v51 + 88);
  OUTLINED_FUNCTION_112_1();
  *(v18 + 40) = *(v17 + 104);
  *(v18 + 48) = *(v19 + 112);
  OUTLINED_FUNCTION_112_1();
  *(v21 + 64) = *(v20 + 128);
  *(v21 + 72) = v13;
  type metadata accessor for CommandExecutionSource();
  v22 = swift_allocObject();
  v23 = v62;
  v24 = v63;
  __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  (*(v29 + 16))(v27 - v26);
  sub_1D7E3B938(&v64, v28, v55, v66, 0, a5, v14, v22, v23, v24, v49, v51, a4, v55, a5, a6, a8, v61[0], v61[1], v61[2], v62, v63);
  v58 = v30;
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  OUTLINED_FUNCTION_94_0();
  v32 = (a2 + *(v31 + 160));
  v33 = *v32;
  v34 = v32[1];
  v35 = OUTLINED_FUNCTION_124_1();
  v56 = v36(v35);
  v37 = OUTLINED_FUNCTION_124_1();
  v54 = v38(v37);
  v39 = OUTLINED_FUNCTION_124_1();
  LOBYTE(v28) = v40(v39);
  v52 = BYTE1(v65[8]);
  v41 = v65[1];
  v50 = v65[0];
  v42 = v65[2];
  sub_1D8190DB4();
  v43 = OUTLINED_FUNCTION_124_1();
  v44 = v42(v43);
  v46 = v45;
  v47 = swift_allocObject();
  memcpy(v47 + 2, v65, 0x68uLL);
  v47[15] = v33;
  v47[16] = v34;
  v47[17] = v58;
  *a7 = v56;
  *(a7 + 8) = v54;
  *(a7 + 16) = v28 & 1;
  *(a7 + 17) = v52;
  *(a7 + 24) = v50;
  *(a7 + 32) = v41;
  *(a7 + 40) = v44;
  *(a7 + 48) = v46;
  *(a7 + 56) = v60;
  *(a7 + 64) = v47;
  sub_1D7FF3B0C(v65, v61);
  return swift_unknownObjectRetain();
}

void sub_1D800760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_120();
  v22 = v21;
  v24 = v23;
  v37 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_75_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_8_4();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      v33 = OUTLINED_FUNCTION_110();
      BlueprintProviderType.blueprint.getter(v33, v34);
      (*(a21 + 176))(AssociatedTypeWitness, v37, v24, v22, a21);

      v35 = OUTLINED_FUNCTION_68_0();
      v36(v35);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80077F4()
{
  OUTLINED_FUNCTION_120();
  v18 = v1;
  OUTLINED_FUNCTION_79_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_55_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_120_1();
  v4 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_50(v4);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_24();
  v6 = OUTLINED_FUNCTION_74();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v6, v7);
  OUTLINED_FUNCTION_79_3();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22[0] = v8;
  v22[1] = AssociatedTypeWitness;
  v22[2] = AssociatedConformanceWitness;
  v23 = v0;
  OUTLINED_FUNCTION_118_0();
  v10 = type metadata accessor for BlueprintLayout();
  BlueprintLayout.subscript.getter(v18, v10);
  OUTLINED_FUNCTION_3_0();
  (*(v11 + 8))(&v21, v10);
  OUTLINED_FUNCTION_105_1();
  v12();
  sub_1D7E0631C(0, &qword_1EDBB0898);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v19, v22);
    v13 = v24;
    v14 = OUTLINED_FUNCTION_83_2();
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v16 = OUTLINED_FUNCTION_6_1();
    v17(v16, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1D7E25DBC(v19, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D8007AA8()
{
  OUTLINED_FUNCTION_120();
  v20 = v2;
  OUTLINED_FUNCTION_79_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v19 = v4;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94();
  v18 = v6;
  OUTLINED_FUNCTION_55_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_120_1();
  v7 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_79_3();
  v9 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  v22[0] = v9;
  v22[1] = AssociatedTypeWitness;
  v22[2] = swift_getAssociatedConformanceWitness();
  v23 = v1;
  v10 = OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_24();
  v14 = OUTLINED_FUNCTION_74();
  BlueprintProviderType.blueprint.getter(v14, v15);
  Blueprint.subscript.getter();
  (*(v12 + 8))(&protocol requirements base descriptor for BlueprintProviderType, v10);
  (*(v19 + 32))(v18, v0, AssociatedTypeWitness);
  sub_1D7E0631C(0, qword_1EDBB14D8);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_7();
    v16 = OUTLINED_FUNCTION_3_1();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7E25DBC(&v21, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
    *v20 = 1;
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D8007D70()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_111();
  swift_getAssociatedConformanceWitness();
  v4 = OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_50(v4);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_16();
  v6 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  v17[0] = v6;
  v17[1] = AssociatedTypeWitness;
  v17[2] = swift_getAssociatedConformanceWitness();
  v18 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_111_1();
  v8 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v8, v9);
  OUTLINED_FUNCTION_122_0();
  Blueprint.subscript.getter();
  v10 = OUTLINED_FUNCTION_46();
  v11(v10);
  v12 = OUTLINED_FUNCTION_91_2();
  v13(v12, v0, AssociatedTypeWitness);
  sub_1D7E0631C(0, qword_1EDBB14D8);
  OUTLINED_FUNCTION_92();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_7();
    v14 = OUTLINED_FUNCTION_3_1();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7E25DBC(&v16, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D800800C()
{
  OUTLINED_FUNCTION_120();
  v21 = v1;
  v22 = v2;
  v3 = OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_94();
  v20 = v7;
  OUTLINED_FUNCTION_67();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_46_5();
  v8 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_50(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51();
  v10 = OUTLINED_FUNCTION_68_0();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v10, v11);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  *&v23 = AssociatedTypeWitness;
  *(&v23 + 1) = v3;
  *&v24 = swift_getAssociatedConformanceWitness();
  *(&v24 + 1) = &protocol requirements base descriptor for BlueprintLayoutProviderType;
  v13 = type metadata accessor for BlueprintLayout();
  BlueprintLayout.subscript.getter(v21, v13);
  OUTLINED_FUNCTION_3_0();
  (*(v14 + 8))(&v26, v13);
  (*(v5 + 32))(v20, v0, v3);
  sub_1D7E0631C(0, &qword_1EDBB0898);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v23, v27);
    v15 = v27[4];
    v16 = OUTLINED_FUNCTION_83_2();
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v18 = OUTLINED_FUNCTION_6_1();
    v19(v18, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_1D7E25DBC(&v23, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
    *v22 = 0;
    v22[1] = 0;
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80082C0()
{
  v0 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8006660();
  if (v14)
  {
    v2 = OUTLINED_FUNCTION_93_1();
    sub_1D7F0AA4C(v2);
    sub_1D8008794(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_49_4(v1);
  }

  OUTLINED_FUNCTION_85();
  sub_1D8006660();
  if (v14)
  {
    v4 = OUTLINED_FUNCTION_93_1();
    sub_1D7F0AA4C(v4);
    sub_1D8008794(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_49_4(v3);
  }

  v5 = v16;
  v6 = *(v16 + 16);
  if (v6)
  {
    v15 = v0;
    sub_1D81922A4();
    v7 = 32;
    do
    {
      memcpy(__dst, (v5 + v7), 0x48uLL);
      v8 = __dst[0];
      OUTLINED_FUNCTION_115_1();
      v9 = swift_allocObject();
      memmove((v9 + 16), (v5 + v7), 0x48uLL);
      objc_allocWithZone(MEMORY[0x1E69DC5E8]);
      sub_1D8008738(__dst, v13);
      sub_1D8190DB4();
      v10 = v8;
      sub_1D80A446C();
      sub_1D8192274();
      sub_1D81922B4();
      OUTLINED_FUNCTION_110();
      sub_1D81922C4();
      sub_1D8192284();
      v7 += 72;
      --v6;
    }

    while (v6);

    v11 = v15;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (!sub_1D7E36AB8(v11))
  {

    return 0;
  }

  return v11;
}

unint64_t sub_1D8008590()
{
  result = qword_1EDBBC6B0;
  if (!qword_1EDBBC6B0)
  {
    sub_1D818E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC6B0);
  }

  return result;
}

void sub_1D80085E8()
{
  if (!qword_1ECA0F378)
  {
    type metadata accessor for SeparatorView();
    v0 = type metadata accessor for CollectionReusableView();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F378);
    }
  }
}

void sub_1D80086B4()
{
  if (!qword_1ECA0F390)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F390);
    }
  }
}

uint64_t sub_1D8008704()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    (*(v0 + 72))();
  }

  return v1 & 1;
}

double CGSize.with(aspectRatio:)(double a1, double a2, double a3)
{
  if (a2 / a3 > a1)
  {
    return a1 * a3;
  }

  return a2;
}

CGSize __swiftcall CGSize.smallerThan(maxSize:)(CGSize maxSize)
{
  width = maxSize.width;
  v4 = 0.0;
  if (v1 <= 0.0 || v2 <= 0.0 || width <= 0.0)
  {
    height = 0.0;
  }

  else
  {
    height = 0.0;
    if (maxSize.height > 0.0)
    {
      if (width < v1 || maxSize.height < v2)
      {
        if (width / maxSize.height >= v1 / v2)
        {
          height = maxSize.height;
          v4 = maxSize.height * v1 / v2;
        }

        else
        {
          v4 = width;
          height = width * v2 / v1;
        }
      }

      else
      {
        v4 = v1;
        height = v2;
      }
    }
  }

  v7 = height;
  result.height = v7;
  result.width = v4;
  return result;
}

uint64_t sub_1D8008AAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECA0F3D0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1D8190DB4();
}

id PickerView.items.setter(uint64_t a1)
{
  v3 = qword_1ECA0F3D0;
  swift_beginAccess();
  *&v1[v3] = a1;

  return [v1 reloadAllComponents];
}

id (*PickerView.items.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D8008C00;
}

id sub_1D8008C00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 reloadAllComponents];
  }

  return result;
}

uint64_t PickerView.selectedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (([v1 selectedRowInComponent_] & 0x8000000000000000) != 0)
  {
    v6 = *(v3 + 80);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 80);
    sub_1D81914C4();
    swift_endAccess();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }
}

uint64_t sub_1D8008D68(uint64_t a1)
{
  v2 = sub_1D8191E84();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return PickerView.selectedItem.setter(v5);
}

uint64_t PickerView.selectedItem.setter(uint64_t a1)
{
  v2 = sub_1D8191E84();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*PickerView.selectedItem.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D8191E84();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  PickerView.selectedItem.getter(v7);
  return sub_1D8008FB8;
}

void sub_1D8008FB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PickerView.selectedItem.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PickerView.selectedItem.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id PickerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PickerView.init(coder:)()
{
  v1 = qword_1ECA0F3D0;
  *(v0 + v1) = sub_1D81913C4();
  v2 = qword_1ECA0F3D8;
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  *(v0 + v2) = sub_1D81913C4();
  sub_1D81923A4();
  __break(1u);
}

id PickerView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id PickerView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = qword_1ECA0F3D0;
  *(v0 + v2) = sub_1D81913C4();
  v3 = qword_1ECA0F3D8;
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  *(v0 + v3) = sub_1D81913C4();
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  [v7 setDelegate_];
  [v7 setDataSource_];

  return v7;
}

Swift::Int __swiftcall PickerView.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  OUTLINED_FUNCTION_1_0();
  sub_1D8190DB4();
  v2 = sub_1D8191414();

  return v2;
}

Swift::Int sub_1D80093A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v7 = PickerView.pickerView(_:numberOfRowsInComponent:)(v5, v6);

  return v7;
}

Swift::String_optional __swiftcall PickerView.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](_);
  v9 = &v16 - v8;
  swift_beginAccess();
  sub_1D81914C4();
  swift_endAccess();
  v10 = (*(*((v5 & v4) + 0x58) + 8))(v6);
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = v10;
  v14 = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

id sub_1D8009548(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  object = PickerView.pickerView(_:titleForRow:forComponent:)(v7, a4, v8).value._object;

  if (object)
  {
    v10 = sub_1D8190EE4();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

Swift::Void __swiftcall PickerView.pickerView(_:didSelectRow:inComponent:)(UIPickerView *_, Swift::Int didSelectRow, Swift::Int inComponent)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  sub_1D8191484();
  sub_1D8190DB4();
  swift_getWitnessTable();
  sub_1D8191224();
}

uint64_t sub_1D80096D4(uint64_t a1, void *a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v7 = *v6;
  swift_beginAccess();
  sub_1D81914C4();
  swift_endAccess();
  v7(v5);
  return (*(v3 + 8))(v5, v2);
}

void sub_1D8009814(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v8 = a1;
  PickerView.pickerView(_:didSelectRow:inComponent:)(v8, a4, v7);
}

id PickerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D80098B4()
{
}

uint64_t PickerView.onSelect(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = swift_allocObject();
  v7[2] = *((v6 & v5) + 0x50);
  v7[3] = *((v6 & v5) + 0x58);
  v7[4] = a1;
  v7[5] = a2;
  swift_beginAccess();
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  sub_1D8191484();

  sub_1D8191434();
  return swift_endAccess();
}

uint64_t BlueprintSectionCollapsibleStateManager.state(for:)@<X0>(BOOL *a1@<X8>)
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_34_9();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintSection();
  v2 = BlueprintSection.identifier.getter();
  BlueprintSectionCollapsibleStateManager.state(for:)(v2, v3, a1);
}

uint64_t BlueprintSectionCollapsibleStateManager.onStateChange(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12();
  v6 = (v2 + *(v5 + 120));
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  sub_1D7E0E10C(v7);
}

uint64_t BlueprintSectionCollapsibleStateManager.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D8009CE0()
{
  sub_1D81927E4();
  BlueprintSectionCollapsibleStateManager.State.hash(into:)();
  return sub_1D8192824();
}

uint64_t BlueprintSectionCollapsibleStateManager.__allocating_init(blueprintProvider:collapsedSectionsKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlueprintSectionCollapsibleStateManager.init(blueprintProvider:collapsedSectionsKey:)(a1, a2, a3);
  return v6;
}

char *BlueprintSectionCollapsibleStateManager.init(blueprintProvider:collapsedSectionsKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[*(*v3 + 112)] = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_12();
  v8 = &v3[*(v7 + 120)];
  *v8 = 0;
  *(v8 + 1) = 0;
  OUTLINED_FUNCTION_12();
  v11 = *(v10 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v3[*(v9 + 104)], a1, v11);
  *(v3 + 2) = a2;
  *(v3 + 3) = a3;
  v13 = objc_opt_self();
  sub_1D8190DB4();
  v14 = [v13 standardUserDefaults];
  v15 = sub_1D8190EE4();

  v16 = [v14 stringArrayForKey_];

  if (v16)
  {
    v17 = sub_1D8191314();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1D7E919E0(v17);
  (*(v12 + 8))(a1, v11);
  OUTLINED_FUNCTION_12();
  v20 = *(v19 + 112);
  OUTLINED_FUNCTION_12_15();
  *&v3[v20] = v18;

  return v3;
}

Swift::Void __swiftcall BlueprintSectionCollapsibleStateManager.reset()()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 112);
  OUTLINED_FUNCTION_12_15();
  *(v0 + v2) = MEMORY[0x1E69E7CD0];

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1D8190EE4();
  [v3 removeObjectForKey_];
}

uint64_t BlueprintSectionCollapsibleStateManager.state(for:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v31 = *v2;
  v3 = v31[11];
  v4 = v31[10];
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v6 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v8 = swift_getAssociatedConformanceWitness();
  v30 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v34 = AssociatedTypeWitness;
  v35 = v6;
  v36 = AssociatedConformanceWitness;
  v37 = v8;
  v14 = type metadata accessor for BlueprintSection();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v28 = v16;
  v29 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  v27 = *(v14 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  v31 = v2;
  BlueprintProviderType.blueprint.getter(v4, v3);
  type metadata accessor for BlueprintItem();
  BlueprintItem.identifier.getter();
  v23 = v30;
  Blueprint.section(forItem:)();

  (*(v10 + 8))(v13, v23);
  if (__swift_getEnumTagSinglePayload(v19, 1, v14) == 1)
  {
    result = (*(v28 + 8))(v19, v29);
    *v33 = 1;
  }

  else
  {
    v25 = v27;
    (*(v27 + 32))(v22, v19, v14);
    BlueprintSectionCollapsibleStateManager.state(for:)(v33);
    return (*(v25 + 8))(v22, v14);
  }

  return result;
}

uint64_t BlueprintSectionCollapsibleStateManager.state(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 112);
  swift_beginAccess();
  v9 = *(v3 + v8);
  sub_1D8190DB4();
  LOBYTE(a2) = sub_1D7F28578(a1, a2, v9);

  *a3 = (a2 & 1) == 0;
  return result;
}

uint64_t BlueprintSectionCollapsibleStateManager.toggle(section:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[10];
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for BlueprintSection();
  v42 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v40 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v38 - v14;
  v48 = AssociatedTypeWitness;
  v49 = v8;
  v50 = AssociatedConformanceWitness;
  v51 = v10;
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v43 = v16;
  v44 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v41 = *(v11 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v39 = &v38 - v21;
  v22 = v4[14];
  swift_beginAccess();
  v23 = *(v2 + v22);
  sub_1D8190DB4();
  v46 = a1;
  v24 = BlueprintSection.identifier.getter();
  v26 = sub_1D7F28578(v24, v25, v23);

  BlueprintSection.identifier.getter();
  OUTLINED_FUNCTION_18_19();
  if (v26)
  {
    sub_1D800C0EC(v23, v26);
    swift_endAccess();
  }

  else
  {
    sub_1D7E91548(v47, v23, v26);
    swift_endAccess();
  }

  v27 = [objc_opt_self() standardUserDefaults];
  v28 = sub_1D8190DB4();
  sub_1D81329BC(v28);
  v29 = sub_1D8191304();

  v30 = sub_1D8190EE4();
  [v27 setObject:v29 forKey:v30];

  BlueprintProviderType.blueprint.getter(v6, v5);
  BlueprintSection.identifier.getter();
  v32 = v44;
  v31 = v45;
  Blueprint.subscript.getter();

  (*(v43 + 8))(v19, v32);
  if (__swift_getEnumTagSinglePayload(v31, 1, v11) == 1)
  {
    return (*(v40 + 8))(v31, v42);
  }

  v34 = v41;
  v35 = v39;
  (*(v41 + 32))(v39, v31, v11);
  v36 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v37 = *v36;
  if (*v36)
  {
    swift_endAccess();

    v37(v35);
    sub_1D7E0E10C(v37);
    return (*(v34 + 8))(v35, v11);
  }

  else
  {
    (*(v34 + 8))(v35, v11);
    return swift_endAccess();
  }
}

uint64_t BlueprintSectionCollapsibleStateManager.sanitize(diff:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v221 = v6;
  v222 = v5;
  OUTLINED_FUNCTION_111();
  v10 = swift_getAssociatedConformanceWitness();
  v220 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v193 - v14;
  v233[0] = AssociatedTypeWitness;
  v233[1] = v8;
  v233[2] = AssociatedConformanceWitness;
  v233[3] = v10;
  v218 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_0();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v230 = &v193 - v22;
  sub_1D7E98BE0();
  v217 = v23;
  OUTLINED_FUNCTION_9();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v27);
  v229 = &v193 - v28;
  v231 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v209 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_24_1();
  v226 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_24_1();
  v227 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_24_1();
  v228 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v193 - v43;
  v45 = sub_1D818E8B4();
  OUTLINED_FUNCTION_9();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v193 - v51;
  if (![objc_opt_self() isMainThread])
  {
    goto LABEL_87;
  }

  v197 = a2;
  v194 = v25;
  v195 = v16;
  v204 = v12;
  v216 = v20;
  sub_1D818E8A4();
  v53 = a1[3];
  v54 = a1[4];
  v199 = v52;
  v202 = a1;
  v55 = __swift_project_boxed_opaque_existential_1(a1, v53);
  v56 = *(v54 + 32);
  v57 = v215;
  v58 = v45;
  v210 = v55;
  v56(v53, v54);
  v59 = sub_1D818E874();
  v198 = v47;
  v60 = *(v47 + 8);
  v60(v57, v58);
  v223 = v47 + 8;
  v224 = v60;
  v196 = v58;
  if (v59)
  {
    v20 = 0;
  }

  else
  {
    v61 = v212;
    v56(v53, v54);
    v62 = v215;
    v20 = 0;
    sub_1D818E7E4();
    v60(v61, v58);
    v63 = v199;
    v60(v199, v58);
    (*(v198 + 32))(v63, v62, v58);
  }

  OUTLINED_FUNCTION_16_23();
  v64 = *(v58 + 24);
  v47 = *(v58 + 32);
  __swift_project_boxed_opaque_existential_1(v58, v64);
  v65 = OUTLINED_FUNCTION_21_15();
  v67 = *(v66(v65) + 16);

  v68 = v209;
  if (!v67)
  {
    v201 = MEMORY[0x1E69E7CC0];
    v72 = v224;
    goto LABEL_18;
  }

  v47 = *(v58 + 32);
  __swift_project_boxed_opaque_existential_1(v58, *(v58 + 24));
  v69 = OUTLINED_FUNCTION_21_15();
  v64 = v70(v69);
  OUTLINED_FUNCTION_15_21();
  v212 = v71;
  OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
  while (1)
  {
    v72 = v224;
    if (v56 == v58)
    {

      OUTLINED_FUNCTION_16_23();
LABEL_18:
      OUTLINED_FUNCTION_2_80();
      v80 = OUTLINED_FUNCTION_5_43();
      v82 = *(v81(v80) + 16);

      if (v82)
      {
        OUTLINED_FUNCTION_2_80();
        v83 = OUTLINED_FUNCTION_5_43();
        v44 = v84(v83);
        OUTLINED_FUNCTION_15_21();
        v214 = v85;
        OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
        while (v56 != v58)
        {
          if (v58 >= *(v44 + 2))
          {
            goto LABEL_84;
          }

          OUTLINED_FUNCTION_3_74();
          v86 = v228;
          v87(v228);
          if (sub_1D7EC58A4(v86, v67))
          {
            v212 = *v214;
            (v212)(v213, v228, v231);
            v88 = v200;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v233[0] = v88;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_6_50();
              v67 = v225;
              v88 = v233[0];
            }

            v91 = *(v88 + 16);
            v90 = *(v88 + 24);
            v92 = (v91 + 1);
            if (v91 >= v90 >> 1)
            {
              OUTLINED_FUNCTION_13_26(v90);
              v210 = v93;
              v203 = v94;
              sub_1D7EB0144();
              v92 = v210;
              v67 = v225;
              v88 = v233[0];
            }

            ++v58;
            *(v88 + 16) = v92;
            v200 = v88;
            OUTLINED_FUNCTION_27_12();
            v212();
          }

          else
          {
            (*v47)(v228, v231);
            ++v58;
          }
        }

        OUTLINED_FUNCTION_16_23();
        v72 = v224;
      }

      else
      {
        v200 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_2_80();
      v95 = OUTLINED_FUNCTION_5_43();
      v97 = *(v96(v95) + 16);

      if (v97)
      {
        OUTLINED_FUNCTION_2_80();
        v98 = OUTLINED_FUNCTION_5_43();
        v44 = v99(v98);
        v58 = 0;
        v100 = *(v44 + 2);
        v228 = v68 + 16;
        v215 = (v68 + 32);
        OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
        while (v100 != v58)
        {
          if (v58 >= *(v44 + 2))
          {
            goto LABEL_85;
          }

          OUTLINED_FUNCTION_3_74();
          v47 = v227;
          v101(v227);
          if (sub_1D7EC58A4(v47, v67))
          {
            v214 = *v215;
            (v214)(v211, v227, v231);
            v47 = v212;
            v102 = swift_isUniquelyReferenced_nonNull_native();
            v233[0] = v47;
            if ((v102 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_50();
              OUTLINED_FUNCTION_24_11();
            }

            v104 = *(v47 + 16);
            v103 = *(v47 + 24);
            v105 = v104 + 1;
            if (v104 >= v103 >> 1)
            {
              OUTLINED_FUNCTION_13_26(v103);
              v47 = v106;
              v213 = v107;
              sub_1D7EB0144();
              OUTLINED_FUNCTION_24_11();
            }

            ++v58;
            *(v47 + 16) = v105;
            v212 = v47;
            OUTLINED_FUNCTION_27_12();
            v214();
          }

          else
          {
            (*(v68 + 8))(v227, v231);
            ++v58;
          }
        }

        OUTLINED_FUNCTION_16_23();
        v72 = v224;
      }

      else
      {
        v212 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_2_80();
      v108 = OUTLINED_FUNCTION_5_43();
      v110 = *(v109(v108) + 16);

      if (v110)
      {
        OUTLINED_FUNCTION_2_80();
        v111 = OUTLINED_FUNCTION_5_43();
        v44 = v112(v111);
        v58 = 0;
        v113 = *(v44 + 2);
        v227 = (v68 + 32);
        v228 = v68 + 16;
        OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
        while (v113 != v58)
        {
          if (v58 >= *(v44 + 2))
          {
            goto LABEL_86;
          }

          OUTLINED_FUNCTION_3_74();
          v47 = v226;
          v114(v226);
          if (sub_1D7EC58A4(v47, v67))
          {
            v215 = *v227;
            (v215)(v205, v226, v231);
            v47 = v210;
            v115 = swift_isUniquelyReferenced_nonNull_native();
            v233[0] = v47;
            if ((v115 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_50();
              OUTLINED_FUNCTION_24_11();
            }

            v117 = *(v47 + 16);
            v116 = *(v47 + 24);
            v118 = v117 + 1;
            if (v117 >= v116 >> 1)
            {
              OUTLINED_FUNCTION_13_26(v116);
              v47 = v119;
              v214 = v120;
              sub_1D7EB0144();
              OUTLINED_FUNCTION_24_11();
            }

            ++v58;
            *(v47 + 16) = v118;
            v210 = v47;
            OUTLINED_FUNCTION_27_12();
            v215();
          }

          else
          {
            (*(v68 + 8))(v226, v231);
            ++v58;
          }
        }

        OUTLINED_FUNCTION_16_23();
        v72 = v224;
      }

      else
      {
        v210 = MEMORY[0x1E69E7CC0];
      }

      v121 = *(v58 + 24);
      v122 = *(v58 + 32);
      __swift_project_boxed_opaque_existential_1(v58, v121);
      v123 = (*(v122 + 80))(v121, v122);
      v124 = *(v123 + 16);
      if (!v124)
      {

        v211 = MEMORY[0x1E69E7CC0];
LABEL_82:
        OUTLINED_FUNCTION_22_12();
        v180 = *(v64 + 16);
        v181 = type metadata accessor for Diff();
        v182 = v197;
        v197[3] = v181;
        v182[4] = sub_1D7E2DB00(&qword_1EDBB3F18, type metadata accessor for Diff);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v182);
        v184 = OUTLINED_FUNCTION_111();
        v180(v184);
        OUTLINED_FUNCTION_22_12();
        v185 = OUTLINED_FUNCTION_111();
        v186(v185);
        v187 = v199;
        v188 = v196;
        (*(v198 + 16))(boxed_opaque_existential_0 + v181[6], v199, v196);
        OUTLINED_FUNCTION_22_12();
        v189 = OUTLINED_FUNCTION_111();
        v191 = v190(v189);
        sub_1D818E8A4();
        *(boxed_opaque_existential_0 + v181[8]) = v191;
        OUTLINED_FUNCTION_19_17(v181[9]);
        OUTLINED_FUNCTION_19_17(v181[10]);
        OUTLINED_FUNCTION_19_17(v181[11]);
        OUTLINED_FUNCTION_19_17(v181[12]);
        OUTLINED_FUNCTION_19_17(v181[13]);
        return v72(v187, v188);
      }

      v215 = *(*v225 + 104);
      v125 = (*(v194 + 80) + 32) & ~*(v194 + 80);
      v193 = v123;
      v203 = v125;
      v126 = v123 + v125;
      v226 = *(v194 + 72);
      v214 = (v204 + 8);
      v213 = (v195 + 8);
      v205 = (v68 + 16);
      v204 = v68 + 32;
      v211 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v227 = v126;
        v228 = v124;
        v64 = v229;
        sub_1D800C244(v126, v229);
        v127 = v219;
        v128 = v221;
        v129 = v222;
        BlueprintProviderType.blueprint.getter(v221, v222);
        sub_1D818E974();
        v130 = v220;
        Blueprint.subscript.getter();
        v131 = *v214;
        (*v214)(v127, v130);
        BlueprintProviderType.blueprint.getter(v128, v129);
        v132 = *(v217 + 36);
        sub_1D818E974();
        Blueprint.subscript.getter();
        (v131)(v127, v130);
        BlueprintSectionCollapsibleStateManager.state(for:)(v233);
        LOBYTE(v131) = v233[0];
        BlueprintSectionCollapsibleStateManager.state(for:)(&v232);
        if (v131)
        {
          v133 = v212;
          v64 = v211;
          if (v232)
          {
            sub_1D800C244(v229, v208);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v158 = OUTLINED_FUNCTION_17_18();
              sub_1D7EE5484(v158, v159, v160, v64);
              v64 = v161;
            }

            v135 = *(v64 + 16);
            v134 = *(v64 + 24);
            if (v135 >= v134 >> 1)
            {
              v162 = OUTLINED_FUNCTION_12_27(v134);
              sub_1D7EE5484(v162, v163, v164, v64);
              v64 = v165;
            }

            v136 = *v213;
            v137 = OUTLINED_FUNCTION_11_30();
            v136(v137);
            v138 = OUTLINED_FUNCTION_23_10();
            v136(v138);
            sub_1D7FE84DC(v229);
            *(v64 + 16) = v135 + 1;
            v211 = v64;
            sub_1D800C2A8(v208, v64 + v203 + v135 * v226);
            goto LABEL_79;
          }

          (*v205)(v207, v229, v231);
          v149 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v209;
          if ((v149 & 1) == 0)
          {
            v173 = OUTLINED_FUNCTION_17_18();
            sub_1D7EAEB70(v173, v174, v175, v133);
            v133 = v176;
          }

          v150 = *(v133 + 24);
          if (*(v133 + 16) >= v150 >> 1)
          {
            v177 = OUTLINED_FUNCTION_12_27(v150);
            sub_1D7EAEB70(v177, v178, v179, v133);
          }

          v151 = *v213;
          v152 = OUTLINED_FUNCTION_11_30();
          v151(v152);
          v153 = OUTLINED_FUNCTION_23_10();
          v151(v153);
          sub_1D7FE84DC(v229);
          OUTLINED_FUNCTION_25_9();
          v146 = OUTLINED_FUNCTION_20_16(v154);
          v148 = &v235;
        }

        else
        {
          if (!v232)
          {
            v155 = *v213;
            v156 = OUTLINED_FUNCTION_11_30();
            v155(v156);
            v157 = OUTLINED_FUNCTION_23_10();
            v155(v157);
            sub_1D7FE84DC(v229);
            goto LABEL_79;
          }

          (*v205)(v206, v229 + v132, v231);
          v139 = v210;
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v209;
          if ((v140 & 1) == 0)
          {
            v166 = OUTLINED_FUNCTION_17_18();
            sub_1D7EAEB70(v166, v167, v168, v139);
            v139 = v169;
          }

          v141 = *(v139 + 24);
          if (*(v139 + 16) >= v141 >> 1)
          {
            v170 = OUTLINED_FUNCTION_12_27(v141);
            sub_1D7EAEB70(v170, v171, v172, v139);
          }

          v142 = *v213;
          v143 = OUTLINED_FUNCTION_11_30();
          v142(v143);
          v144 = OUTLINED_FUNCTION_23_10();
          v142(v144);
          sub_1D7FE84DC(v229);
          OUTLINED_FUNCTION_25_9();
          v146 = OUTLINED_FUNCTION_20_16(v145);
          v148 = &v234;
        }

        v147(v146, *(v148 - 32), v231);
LABEL_79:
        v126 = v227 + v226;
        v124 = v228 - 1;
        if (v228 == 1)
        {

          v72 = v224;
          OUTLINED_FUNCTION_16_23();
          goto LABEL_82;
        }
      }
    }

    if (v58 >= *(v64 + 16))
    {
      break;
    }

    (*(v68 + 16))(v44, v64 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v58, v231);
    if (sub_1D7EC58A4(v44, v67))
    {
      v210 = *v212;
      (v210)(v214, v44, v231);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v201;
      v233[0] = v201;
      if ((v73 & 1) == 0)
      {
        OUTLINED_FUNCTION_6_50();
        v67 = v225;
        v74 = v233[0];
      }

      v76 = *(v74 + 16);
      v75 = *(v74 + 24);
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        OUTLINED_FUNCTION_13_26(v75);
        v203 = v78;
        v201 = v79;
        sub_1D7EB0144();
        v77 = v203;
        v67 = v225;
        v74 = v233[0];
      }

      ++v58;
      *(v74 + 16) = v77;
      v201 = v74;
      OUTLINED_FUNCTION_27_12();
      v210();
    }

    else
    {
      (*v47)(v44, v231);
      ++v58;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);

  (*v47)(v44, v231);

  __break(1u);
  return result;
}

uint64_t sub_1D800BD64(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v2 = *(*a2 + 88);
  v3 = *(*a2 + 80);
  v13[0] = swift_getAssociatedTypeWitness();
  v13[1] = swift_getAssociatedTypeWitness();
  v13[2] = swift_getAssociatedConformanceWitness();
  v13[3] = swift_getAssociatedConformanceWitness();
  v12[0] = type metadata accessor for BlueprintSection();
  v4 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v6 = v12 - v5;
  v7 = type metadata accessor for Blueprint();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  BlueprintProviderType.blueprint.getter(v3, v2);
  Blueprint.subscript.getter();
  (*(v8 + 8))(v10, v7);
  BlueprintSectionCollapsibleStateManager.state(for:)(v13);
  (*(v4 + 8))(v6, v12[0]);
  return LOBYTE(v13[0]);
}

char *BlueprintSectionCollapsibleStateManager.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();
  sub_1D7E0E10C(*&v0[*(v3 + 120)]);
  return v0;
}

uint64_t BlueprintSectionCollapsibleStateManager.__deallocating_deinit()
{
  BlueprintSectionCollapsibleStateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D800C0EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D81927E4();
  sub_1D8190FF4();
  v6 = sub_1D8192824();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1D8192634() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D7F5C484(isUniquelyReferenced_nonNull_native);
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1D800C718(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_1D800C244(uint64_t a1, uint64_t a2)
{
  sub_1D7E98BE0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D800C2A8(uint64_t a1, uint64_t a2)
{
  sub_1D7E98BE0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1D800C354(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D800C438(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    sub_1D81927E4();
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    sub_1D8190FF4();
    v10 = sub_1D8192824();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = *(v13 + 16) == v8 && *(v13 + 24) == v9;
      if (v14 || (sub_1D8192634() & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D7F5C83C();
          v16 = v18;
        }

        v7 = *(*(v16 + 48) + 8 * v12);
        sub_1D800C8D0(v12);
        *v2 = v18;
        return v7;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1D8190DB4();

  v6 = sub_1D81920E4();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_1D800C5B8(v5, a1);

  return v7;
}

uint64_t sub_1D800C5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = sub_1D81920A4();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1D7F5A534(v6, v5);
  v18 = v7;
  sub_1D81927E4();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  sub_1D8190FF4();
  v10 = sub_1D8192824();
  v11 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v12 = v10 & v11;
    if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      break;
    }

    v13 = *(*(v7 + 48) + 8 * v12);
    v14 = *(v13 + 16) == v8 && *(v13 + 24) == v9;
    if (v14 || (sub_1D8192634() & 1) != 0)
    {

      v15 = *(*(v7 + 48) + 8 * v12);
      sub_1D800C8D0(v12);
      v16 = v8 == *(v15 + 16) && v9 == *(v15 + 24);
      if (v16 || (sub_1D8192634() & 1) != 0)
      {
        *v3 = v18;
        return v15;
      }

      __break(1u);
      break;
    }

    v10 = v12 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D800C718(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D8192024();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D81927E4();
        sub_1D8190DB4();
        sub_1D8190FF4();
        v10 = sub_1D8192824();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D800C8D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D8192024();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D81927E4();

        sub_1D8190FF4();
        v10 = sub_1D8192824();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D800CAF0()
{
  result = qword_1ECA0F520;
  if (!qword_1ECA0F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F520);
  }

  return result;
}

unint64_t sub_1D800CB48()
{
  result = qword_1ECA0F528;
  if (!qword_1ECA0F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardSplitViewPresentation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1C)
  {
    if (a2 + 228 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 228) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 229;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v5 >= 0x1B)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for CardSplitViewPresentation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 228 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 228) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1C)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1B)
  {
    v6 = ((a2 - 28) >> 8) + 1;
    *result = a2 - 28;
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
          *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D800CD08(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 5;
  }

  else
  {
    return (v1 & 7u) + 4;
  }
}

_BYTE *sub_1D800CD40(_BYTE *result, unsigned int a2, unsigned int a3)
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

void __swiftcall UIViewController.findSourceView(identifier:)(UIView_optional *__return_ptr retstr, Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  sub_1D7E194D0();
  sub_1D800D034();
  v5 = v2;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v25, v27);
    v6 = v28;
    v7 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v8 = (*(v7 + 8))(countAndFlagsBits, object, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    if (v8)
    {
      return;
    }
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1D800D090(v25);
  }

  v9 = [v5 presentedViewController];
  if (!v9 || (v11 = v9, v12._countAndFlagsBits = countAndFlagsBits, v12._object = object, UIViewController.findSourceView(identifier:)(v10, v12), v14 = v13, v11, !v14))
  {
    v15 = [v5 childViewControllers];
    v16 = sub_1D8191314();

    v17 = sub_1D7E36AB8(v16);
    for (i = 0; ; ++i)
    {
      if (v17 == i)
      {

        return;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA714420](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v21 = v19;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v22._countAndFlagsBits = countAndFlagsBits;
      v22._object = object;
      UIViewController.findSourceView(identifier:)(v20, v22);
      v24 = v23;

      if (v24)
      {

        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

unint64_t sub_1D800D034()
{
  result = qword_1EDBB6100;
  if (!qword_1EDBB6100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB6100);
  }

  return result;
}

uint64_t sub_1D800D090(uint64_t a1)
{
  sub_1D800D0EC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D800D0EC()
{
  if (!qword_1EDBB60F8)
  {
    sub_1D800D034();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB60F8);
    }
  }
}

id BackBarButtonItem.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1D7E471D0();
  v6 = [objc_opt_self() configurationWithWeight_];
  v7 = sub_1D7E6FE24(0xD000000000000010, 0x80000001D81CEB50, v6);
  v8 = [v5 initWithImage:v7 style:0 target:a1 action:a2];

  [v8 setWidth_];
  return v8;
}

id BackBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackBarButtonItem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BackBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BackBarButtonItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id BackBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D800D404(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D800D458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D800D4B8(uint64_t result)
{
  v1 = *result;
  if (*result != _TtC5TeaUI20JSONSchemaValueArray)
  {
    if (v1 == _TtC5TeaUI19JSONSchemaValueBool)
    {
      return result | 0x2000000000000000;
    }

    else if (v1 == _TtC5TeaUI22JSONSchemaValueInteger)
    {
      return result | 0x4000000000000000;
    }

    else if (v1 == _TtC5TeaUI21JSONSchemaValueNumber)
    {
      return result | 0x6000000000000000;
    }

    else if (v1 == _TtC5TeaUI21JSONSchemaValueString)
    {
      return result | 0x8000000000000000;
    }

    else if (v1 == _TtC5TeaUI21JSONSchemaValueObject)
    {
      return result | 0xA000000000000000;
    }

    else
    {

      result = sub_1D81923A4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D800D5C8(void *a1, unint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1D81928B4();
  switch(a2 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21[0], v22, v23, v24);
      v17 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueBool(v17);
      v12 = &unk_1ECA0F550;
      v13 = type metadata accessor for JSONSchemaValueBool;
      break;
    case 2uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21[0], v22, v23, v24);
      v15 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueInteger(v15);
      v12 = &unk_1ECA0F548;
      v13 = type metadata accessor for JSONSchemaValueInteger;
      break;
    case 3uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21[0], v22, v23, v24);
      v16 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueNumber(v16);
      v12 = &unk_1ECA0F540;
      v13 = type metadata accessor for JSONSchemaValueNumber;
      break;
    case 4uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21[0], v22, v23, v24);
      v14 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueString(v14);
      v12 = &unk_1ECA0F538;
      v13 = type metadata accessor for JSONSchemaValueString;
      break;
    case 5uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21[0], v22, v23, v24);
      v18 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueObject(v18);
      v12 = &unk_1ECA0F530;
      v13 = type metadata accessor for JSONSchemaValueObject;
      break;
    default:
      v25 = a2;
      __swift_mutable_project_boxed_opaque_existential_1(v21, v24);
      v11 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueArray(v11);
      v12 = &unk_1ECA0F558;
      v13 = type metadata accessor for JSONSchemaValueArray;
      break;
  }

  sub_1D800D7AC(v12, v13);
  sub_1D8192694();
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

uint64_t sub_1D800D7AC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D800D834(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PassthroughView();
  result = objc_msgSendSuper2(&v9, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    v8 = result == v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    return 0;
  }

  return result;
}

id PassthroughView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id PassthroughView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double PillSize.cornerRadius(for:)(double a1, double a2, double a3, double a4)
{
  v5 = 14.0;
  if (*(v4 + 32) <= 1u)
  {
    return CGRectGetHeight(*&a1) * 0.5;
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for PillSize(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PillSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

BOOL sub_1D800DB84()
{
  sub_1D818E994();
  sub_1D8014214();
  sub_1D8191724();
  sub_1D81917B4();
  return v2 == v1;
}

uint64_t BlueprintCollectionViewDragDelegate.collectionView(_:itemsForBeginning:at:)()
{
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_3_7();
  v1 = sub_1D818E8E4();
  v2 = OUTLINED_FUNCTION_48_7();
  [v2 v3];

  v4 = sub_1D818E8E4();
  v5 = [v0 cellForItemAtIndexPath_];

  if (!v5 || (sub_1D7E0A1A8(0, &qword_1EDBB3110), sub_1D7E0631C(0, &unk_1ECA0F568), (OUTLINED_FUNCTION_1_13() & 1) == 0))
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_7;
  }

  if (!v16)
  {
LABEL_7:
    sub_1D7FBDB74(&v15, &qword_1ECA0F560, &unk_1ECA0F568);
    goto LABEL_8;
  }

  sub_1D7E05450(&v15, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v6 = OUTLINED_FUNCTION_14_20();
  v8 = v7(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  OUTLINED_FUNCTION_66();
  v11 = OUTLINED_FUNCTION_34_10(*(v10 + 112));
  return dragItems<A>(from:at:)(v11, v12, v13, v14);
}

id sub_1D800DDD4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a1;
  BlueprintCollectionViewDragDelegate.collectionView(_:itemsForBeginning:at:)();

  swift_unknownObjectRelease();
  (*(v6 + 8))(v8, v5);
  sub_1D7E0A1A8(0, &qword_1ECA0F6B0);
  v11 = sub_1D8191304();

  return v11;
}

uint64_t BlueprintCollectionViewDragDelegate.collectionView(_:itemsForAddingTo:at:point:)()
{
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_3_7();
  v1 = sub_1D818E8E4();
  v2 = OUTLINED_FUNCTION_48_7();
  [v2 v3];

  v4 = sub_1D818E8E4();
  v5 = [v0 cellForItemAtIndexPath_];

  if (!v5 || (sub_1D7E0A1A8(0, &qword_1EDBB3110), sub_1D7E0631C(0, &unk_1ECA0F568), (OUTLINED_FUNCTION_1_13() & 1) == 0))
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_7;
  }

  if (!v16)
  {
LABEL_7:
    sub_1D7FBDB74(&v15, &qword_1ECA0F560, &unk_1ECA0F568);
    goto LABEL_8;
  }

  sub_1D7E05450(&v15, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v6 = OUTLINED_FUNCTION_14_20();
  v8 = v7(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  OUTLINED_FUNCTION_66();
  v11 = OUTLINED_FUNCTION_34_10(*(v10 + 112));
  return dragItems<A>(from:at:)(v11, v12, v13, v14);
}

void BlueprintCollectionViewDragDelegate.collectionView(_:dragPreviewParametersForItemAt:)()
{
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_67();
  swift_getAssociatedConformanceWitness();
  v2 = OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_50(v2);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_75_5();
  v5 = OUTLINED_FUNCTION_48_7();
  v7 = [v5 v6];

  v49 = v7;
  if (v7)
  {
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_74_6();
    OUTLINED_FUNCTION_85_0();
    v8 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_64();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = OUTLINED_FUNCTION_73_3(AssociatedConformanceWitness);
    OUTLINED_FUNCTION_55_8(v10);
    MEMORY[0x801D0FEDE5](&v52, &protocol requirements base descriptor for BlueprintLayoutProviderType);
    v11 = OUTLINED_FUNCTION_47_6();
    v12(v11);
    sub_1D7E0631C(0, &qword_1EDBB17D0);
    if (OUTLINED_FUNCTION_51_5())
    {
      sub_1D7E05450(v50, v53);
      v13 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
      OUTLINED_FUNCTION_30_11();
      v14 = *(v8 + 8);
      v15 = v13;
      v16 = OUTLINED_FUNCTION_60_5();
      v17 = v14(v16);
      [AssociatedTypeWitness setBackgroundColor_];

      OUTLINED_FUNCTION_30_11();
      v18 = OUTLINED_FUNCTION_6_1();
      v19(v18, v8);
      OUTLINED_FUNCTION_46_9();
      [v49 bounds];
      v20 = 0;
      switch(v8)
      {
        case 1:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v31, v32, v33, v34, v35, v36);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v37 = OUTLINED_FUNCTION_5_13();
          v30 = [v38 v39];
          goto LABEL_9;
        case 2:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v40, v41, v42, v43, v44, v45);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v46 = OUTLINED_FUNCTION_5_13();
          v30 = [v47 v48];
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        default:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v21, v22, v23, v24, v25, v26);
          OUTLINED_FUNCTION_9_0();
          objc_opt_self();
          v27 = OUTLINED_FUNCTION_8_0();
          v30 = [v28 v29];
LABEL_9:
          v20 = v30;
LABEL_10:
          [AssociatedTypeWitness setVisiblePath_];

          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          break;
      }
    }

    else
    {

      v51 = 0;
      memset(v50, 0, sizeof(v50));
      sub_1D7FBDB74(v50, &qword_1EDBB17C0, &qword_1EDBB17D0);
    }
  }

  OUTLINED_FUNCTION_3_48();
}

id BlueprintCollectionViewDragDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D800E578(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_10_2();
  v7 = *(v6 + 8);

  return v7(a1 + v5);
}

uint64_t sub_1D800E658()
{
  v1 = OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath;
  v2 = sub_1D818E994();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t BlueprintCollectionViewDragDelegate2.delegate.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

uint64_t BlueprintCollectionViewDragDelegate2.registerDiffableDropDelegate(_:)(uint64_t a1)
{
  sub_1D7E0E768(a1, v5);
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 152);
  swift_beginAccess();
  sub_1D800E830(v5, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D800E830(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1ECA0F578, &qword_1ECA0F580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void BlueprintCollectionViewDragDelegate2.targetIndexPathToReorderItem(from:to:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v52 = v2;
  v53 = v3;
  v51 = v4;
  v5 = *MEMORY[0x1E69E7D40];
  v47 = *v0;
  v48 = v5;
  v6 = *((v5 & v47) + 0x68);
  v7 = *((v5 & v47) + 0x50);
  v8 = OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_9();
  v50 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_94();
  v49 = v11;
  v12 = OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_85_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v46 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_43();
  v57[0] = v8;
  v57[1] = v12;
  v57[2] = AssociatedConformanceWitness;
  v58 = v14;
  v18 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v48 = *((v48 & v47) + 0x88);
  BlueprintProviderType.blueprint.getter(v7, v6);
  sub_1D818E974();
  Blueprint.subscript.getter();
  (*(v20 + 8))(v23, v18);
  (*(v50 + 16))(v49, &protocol requirements base descriptor for BlueprintProviderType, v8);
  (*(v16 + 8))(&protocol requirements base descriptor for BlueprintProviderType, v46);
  sub_1D7E0631C(0, &qword_1ECA0F588);
  if (swift_dynamicCast())
  {
    v24 = v51;
    sub_1D7E05450(&v54, v57);
    v25 = v1 + v48;
    v26 = v52;
    v27 = dragItems<A>(from:at:)(v25, v52, v7, v6);
    v28 = sub_1D7E36AB8(v27);

    if (v28)
    {
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v29 = OUTLINED_FUNCTION_31();
      v30(v29);
      v31 = v54;
      if (v55 == 1)
      {
        v32 = v53;
        if (v54 != 0)
        {
          if (!(v54 ^ 1 | *(&v54 + 1)))
          {
            sub_1D818E994();
            OUTLINED_FUNCTION_8();
            v34 = *(v33 + 16);
LABEL_21:
            v41 = v24;
            v42 = v32;
            goto LABEL_17;
          }

          v43 = sub_1D818E974();
          v44 = sub_1D818E974();
          sub_1D818E994();
          OUTLINED_FUNCTION_8();
          v34 = *(v45 + 16);
          if (v43 == v44)
          {
            goto LABEL_21;
          }

LABEL_16:
          v41 = v24;
          v42 = v26;
LABEL_17:
          v34(v41, v42);
          goto LABEL_18;
        }
      }

      else
      {
        v36 = sub_1D818E974();
        v37 = v53;
        if (v36 == sub_1D818E974())
        {
          v38 = sub_1D818E964();
          if (v38 < v31 || *(&v31 + 1) < v38)
          {
            sub_1D818E994();
            OUTLINED_FUNCTION_8();
            (*(v40 + 16))(v24, v37);
LABEL_18:
            __swift_destroy_boxed_opaque_existential_1Tm(v57);
            goto LABEL_19;
          }
        }
      }
    }

    v34 = *(*(sub_1D818E994() - 8) + 16);
    goto LABEL_16;
  }

  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  sub_1D7FBDB74(&v54, &qword_1ECA0F590, &qword_1ECA0F588);
  sub_1D818E994();
  OUTLINED_FUNCTION_8();
  (*(v35 + 16))(v51, v52);
LABEL_19:
  OUTLINED_FUNCTION_100();
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dragSessionWillBegin:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_3_7();
  v5 = v4;
  v8 = *((v7 & v6) + 0x68);
  v9 = *((v7 & v6) + 0x50);
  OUTLINED_FUNCTION_64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_64();
  *&v40 = AssociatedTypeWitness;
  *(&v40 + 1) = swift_getAssociatedTypeWitness();
  *&v41 = swift_getAssociatedConformanceWitness();
  *(&v41 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v35 = v12;
  v36 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  if ([v1 localContext])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v40 = v37;
  v41 = v38;
  if (*(&v38 + 1))
  {
    type metadata accessor for DragSessionData();
    if (swift_dynamicCast())
    {
      v34 = v5;
      (*(v18 + 16))(v22, v43 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath, v16);
      v23 = sub_1D818E8E4();
      (*(v18 + 8))(v22, v16);
      v24 = [v3 cellForItemAtIndexPath_];

      if (v24)
      {
        v43 = v24;
        sub_1D7E0A1A8(0, &qword_1EDBB3110);
        sub_1D7E0631C(0, &unk_1ECA0F5A0);
        v25 = v24;
        if (swift_dynamicCast())
        {
          sub_1D7E05450(&v37, &v40);
          v26 = *(&v41 + 1);
          v27 = v42;
          __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
          (*(v27 + 8))(0, v26, v27);
          __swift_destroy_boxed_opaque_existential_1Tm(&v40);
        }

        else
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          sub_1D7FBDB74(&v37, &unk_1ECA0E630, &unk_1ECA0F5A0);
        }

        v29 = v34;
        v30 = [objc_opt_self() defaultCenter];
        [v30 postNotificationName:@"TUBlueprintDidBeginItemDraggingNotification" object:0];

        OUTLINED_FUNCTION_10_19();
        OUTLINED_FUNCTION_8_4();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          OUTLINED_FUNCTION_10_19();
          BlueprintProviderType.blueprint.getter(v9, v8);
          (*(*(v29 + 120) + 184))(v15, *(v29 + 96));

          (*(v35 + 8))(v15, v36);
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

  else
  {
    OUTLINED_FUNCTION_17_19();
    sub_1D7E70DEC(&v40, v28);
  }

  OUTLINED_FUNCTION_100();
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dragSessionDidEnd:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_3_7();
  v1 = v0;
  v4 = *((v3 & v2) + 0x68);
  v5 = *((v3 & v2) + 0x50);
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_20();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_27_5();
  v12 = [objc_opt_self() defaultCenter];
  [v12 postNotificationName:@"TUBlueprintDidEndItemDraggingNotification" object:0];

  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_42_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    OUTLINED_FUNCTION_3_7();
    BlueprintProviderType.blueprint.getter(v5, v4);
    (*(*(v1 + 120) + 192))(AssociatedTypeWitness, *(v1 + 96));

    (*(v10 + 8))(AssociatedTypeWitness, v8);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D800F4F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  BlueprintCollectionViewDragDelegate2.collectionView(_:dragSessionDidEnd:)();

  swift_unknownObjectRelease();
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:itemsForBeginning:at:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v25 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_3_7();
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = sub_1D818E8E4();
  [v4 deselectItemAtIndexPath:v12 animated:0];

  v13 = sub_1D818E8E4();
  v14 = [v4 cellForItemAtIndexPath_];

  if (v14 && (sub_1D7E0A1A8(0, &qword_1EDBB3110), sub_1D7E0631C(0, &unk_1ECA0F568), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v27 + 1))
    {
      sub_1D7E05450(&v26, v29);
      v15 = v30;
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  sub_1D7FBDB74(&v26, &qword_1ECA0F560, &unk_1ECA0F568);
LABEL_8:
  (*(v7 + 16))(v11, v1, v5);
  type metadata accessor for DragSessionData();
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath, v11, v5);
  *(v18 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_sourceView) = v4;
  v19 = v4;
  [v25 setLocalContext_];

  OUTLINED_FUNCTION_66();
  v21 = OUTLINED_FUNCTION_34_10(*(v20 + 136));
  dragItems<A>(from:at:)(v21, v22, v23, v24);
LABEL_9:
  OUTLINED_FUNCTION_100();
}

id sub_1D800F83C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a1;
  BlueprintCollectionViewDragDelegate2.collectionView(_:itemsForBeginning:at:)();

  swift_unknownObjectRelease();
  (*(v6 + 8))(v8, v5);
  sub_1D7E0A1A8(0, &qword_1ECA0F6B0);
  v11 = sub_1D8191304();

  return v11;
}

uint64_t BlueprintCollectionViewDragDelegate2.collectionView(_:itemsForAddingTo:at:point:)()
{
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_3_7();
  v1 = sub_1D818E8E4();
  v2 = OUTLINED_FUNCTION_48_7();
  [v2 v3];

  v4 = sub_1D818E8E4();
  v5 = [v0 cellForItemAtIndexPath_];

  if (!v5 || (sub_1D7E0A1A8(0, &qword_1EDBB3110), sub_1D7E0631C(0, &unk_1ECA0F568), (OUTLINED_FUNCTION_1_13() & 1) == 0))
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_7;
  }

  if (!v16)
  {
LABEL_7:
    sub_1D7FBDB74(&v15, &qword_1ECA0F560, &unk_1ECA0F568);
    goto LABEL_8;
  }

  sub_1D7E05450(&v15, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v6 = OUTLINED_FUNCTION_14_20();
  v8 = v7(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  OUTLINED_FUNCTION_66();
  v11 = OUTLINED_FUNCTION_34_10(*(v10 + 136));
  return dragItems<A>(from:at:)(v11, v12, v13, v14);
}

id sub_1D800FB60(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id))
{
  v9 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_1D818E924();
  v16 = a3;
  swift_unknownObjectRetain();
  v17 = a1;
  a6(v16);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v15, v9);
  sub_1D7E0A1A8(0, &qword_1ECA0F6B0);
  v18 = sub_1D8191304();

  return v18;
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dragPreviewParametersForItemAt:)()
{
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_67();
  swift_getAssociatedConformanceWitness();
  v2 = OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_50(v2);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_75_5();
  v5 = OUTLINED_FUNCTION_48_7();
  v7 = [v5 v6];

  v49 = v7;
  if (v7)
  {
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_74_6();
    OUTLINED_FUNCTION_85_0();
    v8 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_64();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = OUTLINED_FUNCTION_73_3(AssociatedConformanceWitness);
    OUTLINED_FUNCTION_55_8(v10);
    MEMORY[0x801D0FEDE5](&v52, &protocol requirements base descriptor for BlueprintLayoutProviderType);
    v11 = OUTLINED_FUNCTION_47_6();
    v12(v11);
    sub_1D7E0631C(0, &qword_1EDBB17D0);
    if (OUTLINED_FUNCTION_51_5())
    {
      sub_1D7E05450(v50, v53);
      v13 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
      OUTLINED_FUNCTION_30_11();
      v14 = *(v8 + 8);
      v15 = v13;
      v16 = OUTLINED_FUNCTION_60_5();
      v17 = v14(v16);
      [AssociatedTypeWitness setBackgroundColor_];

      OUTLINED_FUNCTION_30_11();
      v18 = OUTLINED_FUNCTION_6_1();
      v19(v18, v8);
      OUTLINED_FUNCTION_46_9();
      [v49 bounds];
      v20 = 0;
      switch(v8)
      {
        case 1:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v31, v32, v33, v34, v35, v36);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v37 = OUTLINED_FUNCTION_5_13();
          v30 = [v38 v39];
          goto LABEL_9;
        case 2:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v40, v41, v42, v43, v44, v45);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v46 = OUTLINED_FUNCTION_5_13();
          v30 = [v47 v48];
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        default:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v21, v22, v23, v24, v25, v26);
          OUTLINED_FUNCTION_9_0();
          objc_opt_self();
          v27 = OUTLINED_FUNCTION_8_0();
          v30 = [v28 v29];
LABEL_9:
          v20 = v30;
LABEL_10:
          [AssociatedTypeWitness setVisiblePath_];

          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          break;
      }
    }

    else
    {

      v51 = 0;
      memset(v50, 0, sizeof(v50));
      sub_1D7FBDB74(v50, &qword_1EDBB17C0, &qword_1EDBB17D0);
    }
  }

  OUTLINED_FUNCTION_3_48();
}

id sub_1D80100C0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_1D818E924();
  v16 = a3;
  v17 = a1;
  v18 = OUTLINED_FUNCTION_6_1();
  v19 = a5(v18, v15);

  (*(v11 + 8))(v15, v9);

  return v19;
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v78 = v2;
  v84 = v3;
  v82 = v4;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v76 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v10);
  OUTLINED_FUNCTION_40_7();
  v11 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_16();
  v13 = swift_getAssociatedConformanceWitness();
  v75 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v74 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v16);
  sub_1D7E3D564();
  v18 = OUTLINED_FUNCTION_50(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v83 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v81 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v26);
  *&v90 = AssociatedTypeWitness;
  *(&v90 + 1) = v11;
  *&v91 = AssociatedConformanceWitness;
  *(&v91 + 1) = v13;
  v27 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v80 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v64 - v33;
  OUTLINED_FUNCTION_42_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v36 = [v84 localDragSession];
  if (!v36)
  {
    goto LABEL_12;
  }

  v37 = v36;
  if ([v36 localContext])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  v90 = v87;
  v91 = v88;
  if (!*(&v88 + 1))
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_17_19();
    sub_1D7E70DEC(&v90, v39);
    goto LABEL_12;
  }

  type metadata accessor for DragSessionData();
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v38 = v85;
  if (*(v85 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_sourceView) != v82)
  {
    swift_unknownObjectRelease();

LABEL_12:
    [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
    goto LABEL_13;
  }

  v82 = v37;
  v69 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  BlueprintProviderType.blueprint.getter(v6, v5);
  v40 = *(v81 + 16);
  v84 = v38;
  v66 = OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath;
  v41 = v79;
  v68 = v81 + 16;
  v67 = v40;
  (v40)(v79, &v38[OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath], v83);
  Blueprint.contains(indexPath:)();
  v71 = v42;
  v43 = v81 + 8;
  v70 = *(v81 + 8);
  v70(v41, v83);
  v44 = *(v80 + 8);
  v80 += 8;
  v65 = v44;
  v44(v34, v27);
  if ((v71 & 1) != 0 && (v45 = v79, (v67)(v79, &v84[v66], v83), OUTLINED_FUNCTION_50_5(), v47 = dragItems<A>(from:at:)(v1 + v46, v45, v6, v5), v70(v45, v83), v48 = sub_1D7E36AB8(v47), , v48))
  {
    sub_1D7E54838(v78, v21);
    v49 = v83;
    if (__swift_getEnumTagSinglePayload(v21, 1, v83) != 1)
    {
      v78 = v43;
      (*(v81 + 32))(v77, v21, v49);
      if (sub_1D800DB84())
      {
        [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
      }

      else
      {
        OUTLINED_FUNCTION_50_5();
        BlueprintProviderType.blueprint.getter(v6, v5);
        sub_1D818E974();
        v51 = v73;
        Blueprint.subscript.getter();
        v65(v31, v27);
        v52 = OUTLINED_FUNCTION_31();
        v53(v52);
        OUTLINED_FUNCTION_14_15();
        v54(v51, v75);
        sub_1D7E0631C(0, &qword_1ECA0F588);
        if (swift_dynamicCast())
        {
          sub_1D7E05450(&v87, &v90);
          sub_1D7E0A1A8(0, &qword_1ECA0F5C0);
          v55 = v49;
          v56 = *(&v91 + 1);
          v57 = v92;
          __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
          (*(v57 + 8))(&v87, v56, v57);
          v85 = v87;
          v86 = v88;
          v58 = v79;
          v59 = v67;
          (v67)(v79, &v84[v66], v55);
          v60 = v72;
          v61 = OUTLINED_FUNCTION_35_11();
          v59(v61);
          sub_1D80DE4FC(&v85, v58, v60);
          OUTLINED_FUNCTION_54_3();

          OUTLINED_FUNCTION_58_6();
          v62();
          __swift_destroy_boxed_opaque_existential_1Tm(&v90);
          goto LABEL_13;
        }

        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        sub_1D7FBDB74(&v87, &qword_1ECA0F590, &qword_1ECA0F588);
        [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:3 intent:0];
      }

      OUTLINED_FUNCTION_54_3();

      OUTLINED_FUNCTION_58_6();
      v63();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_118();
    sub_1D7E70DEC(v21, v50);
    [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:3 intent:0];
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
  }

  OUTLINED_FUNCTION_54_3();

LABEL_13:
  OUTLINED_FUNCTION_100();
}

id sub_1D8010B2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    sub_1D818E924();
    v11 = sub_1D818E994();
    v12 = 0;
  }

  else
  {
    v11 = sub_1D818E994();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = a1;
  BlueprintCollectionViewDragDelegate2.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)();
  v16 = v15;

  swift_unknownObjectRelease();
  sub_1D7E70DEC(v10, sub_1D7E3D564);

  return v16;
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:performDropWith:)()
{
  OUTLINED_FUNCTION_20_17();
  v1 = v0;
  v3 = v2;
  v120 = v4;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v115 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v10);
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v114 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v113 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v16);
  v117 = AssociatedTypeWitness;
  v127[0] = AssociatedTypeWitness;
  v127[1] = v11;
  v127[2] = AssociatedConformanceWitness;
  v128 = v13;
  v111 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v110 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v19);
  sub_1D7E3D564();
  v21 = OUTLINED_FUNCTION_50(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v23);
  v24 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v123 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v103 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v103 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_12();
  v122 = v34;
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_41;
  }

  v36 = Strong;
  v118 = v24;
  v37 = [v3 items];
  sub_1D8013D1C();
  v38 = sub_1D8191314();

  if (!sub_1D7E36AB8(v38))
  {

LABEL_13:

LABEL_41:
    OUTLINED_FUNCTION_3_48();
    return;
  }

  sub_1D7E33DD8(0, (v38 & 0xC000000000000001) == 0, v38);
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1DA714420](0, v38);
  }

  else
  {
    v39 = *(v38 + 32);
    swift_unknownObjectRetain();
  }

  v40 = [v3 destinationIndexPath];
  if (!v40)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v41 = v40;
  v106 = v39;
  v107 = v36;
  v105 = v29;
  sub_1D818E924();

  v42 = *(v123 + 32);
  v43 = v118;
  v103[1] = v123 + 32;
  v103[0] = v42;
  v42(v122, v32, v118);
  v104 = v3;
  v44 = [v3 items];
  v45 = sub_1D8191314();

  if (!sub_1D7E36AB8(v45))
  {

    OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_50_5();

    v54 = OUTLINED_FUNCTION_35_11();
    v55(v54);
    v46 = v121;
    v56 = OUTLINED_FUNCTION_61_4();
    __swift_storeEnumTagSinglePayload(v56, v57, 1, v43);
LABEL_18:
    OUTLINED_FUNCTION_0_118();
    sub_1D7E70DEC(v46, v63);
    goto LABEL_41;
  }

  sub_1D7E33DD8(0, (v45 & 0xC000000000000001) == 0, v45);
  v46 = v121;
  if ((v45 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x1DA714420](0, v45);
  }

  else
  {
    v47 = *(v45 + 32);
    swift_unknownObjectRetain();
  }

  v48 = v122;
  v49 = v107;

  v50 = [v47 sourceIndexPath];
  swift_unknownObjectRelease();
  v51 = v119;
  if (v50)
  {
    sub_1D818E924();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v58 = v118;
  v59 = v123;
  v60 = v120;
  __swift_storeEnumTagSinglePayload(v51, v52, 1, v118);
  sub_1D8013D78(v51, v46);
  v61 = OUTLINED_FUNCTION_61_4();
  if (__swift_getEnumTagSinglePayload(v61, v62, v58) == 1)
  {
    (*(v59 + 8))(v48, v58);
    OUTLINED_FUNCTION_77_4();

    goto LABEL_18;
  }

  (v103[0])(v105, v46, v58);
  v123 = swift_allocBox();
  v65 = v64;
  v66 = v58;
  v67 = v48;
  (*(v59 + 16))(v64, v48, v66);
  v68 = [v60 collectionViewLayout];
  v69 = sub_1D8190EE4();
  v70 = sub_1D818E8E4();
  v71 = [v68 layoutAttributesForSupplementaryViewOfKind:v69 atIndexPath:v70];

  v72 = v120;
  v73 = v104;
  if (!v71 || ([v71 frame], OUTLINED_FUNCTION_9_0(), v71, objc_msgSend(objc_msgSend(v73, sel_session), sel_locationInView_, v72), v75 = v74, swift_unknownObjectRelease(), v130.origin.x = OUTLINED_FUNCTION_8_0(), v75 >= CGRectGetMidY(v130)) || sub_1D818E974() < 1)
  {
LABEL_24:
    OUTLINED_FUNCTION_66();
    v80 = v109;
    BlueprintProviderType.blueprint.getter(v6, v5);
    sub_1D818E974();
    v81 = v112;
    v82 = v111;
    Blueprint.subscript.getter();
    OUTLINED_FUNCTION_14_15();
    v83(v80, v82);
    (*(v115 + 16))(v116, v81, v117);
    OUTLINED_FUNCTION_14_15();
    v84(v81, v114);
    sub_1D7E0631C(0, &qword_1ECA0F588);
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_77_4();
      OUTLINED_FUNCTION_50_5();

      v94 = *(v59 + 8);
      v95 = v118;
      v94(v105, v118);
      v94(v67, v95);
      v126 = 0;
      v124 = 0u;
      v125 = 0u;
      sub_1D7FBDB74(&v124, &qword_1ECA0F590, &qword_1ECA0F588);
LABEL_40:

      goto LABEL_41;
    }

    sub_1D7E05450(&v124, v127);
    v85 = v128;
    v86 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v86 + 8))(&v124, v85, v86);
    v87 = v124;
    v88 = v118;
    if (v125 == 1)
    {
      v89 = v105;
      v90 = v123;
      if (v124 == 0)
      {
        goto LABEL_39;
      }

      if (v124 ^ 1 | *(&v124 + 1))
      {
        v91 = sub_1D818E974();
        v92 = sub_1D818E974();
        v89 = v105;
        if (v91 != v92)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v96 = sub_1D818E974();
      v97 = sub_1D818E974();
      v90 = v123;
      if (v96 != v97)
      {
        goto LABEL_39;
      }

      v98 = sub_1D818E964();
      v89 = v105;
      if (v98 >= v87 && *(&v87 + 1) >= v98)
      {
        goto LABEL_39;
      }
    }

    sub_1D8011750(v1, v89, v90, v107, v104, v106);
LABEL_39:
    OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_50_5();

    v101 = *(v59 + 8);
    v102 = OUTLINED_FUNCTION_35_11();
    v101(v102);
    (v101)(v67, v88);
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    goto LABEL_40;
  }

  v76 = sub_1D818E974();
  v77 = v76 - 1;
  if (!__OFSUB__(v76, 1))
  {
    v78 = [v72 numberOfItemsInSection_];
    v79 = v108;
    MEMORY[0x1DA710B60](v78, v77);
    (*(v59 + 40))(v65, v79, v118);
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1D8011750(uint64_t *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v77 = a6;
  v78 = a5;
  v76 = a4;
  v79 = a3;
  v71 = a2;
  v7 = *a1;
  v8 = *MEMORY[0x1E69E7D40];
  v75 = (*MEMORY[0x1E69E7D40] & *a1);
  v72 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v8 & v7) + 0x68);
  v11 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = type metadata accessor for BlueprintItem();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v61 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v82 = v10;
  v70 = v11;
  v18 = swift_getAssociatedConformanceWitness();
  v88[0] = v17;
  v88[1] = AssociatedTypeWitness;
  v68 = AssociatedTypeWitness;
  v88[2] = v18;
  v89 = AssociatedConformanceWitness;
  v66 = AssociatedConformanceWitness;
  v84 = type metadata accessor for Blueprint();
  v73 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v69 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = sub_1D818E994();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_projectBox();
  v28 = *((v8 & v7) + 0x98);
  swift_beginAccess();
  sub_1D8014070(a1 + v28, &v86);
  v65 = v26;
  v79 = v27;
  if (v87)
  {
    sub_1D7E05450(&v86, v88);
    v30 = v89;
    v29 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    swift_beginAccess();
    (*(v24 + 16))(v26, v27, v23);
    v31 = v71;
    (*(v29 + 8))(v71, v26, v30, v29);
    (*(v24 + 8))(v26, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
  }

  else
  {
    sub_1D7FBDB74(&v86, &qword_1ECA0F578, &qword_1ECA0F580);
    v31 = v71;
  }

  v32 = v23;
  v63 = v23;
  v33 = v70;
  BlueprintProviderType.blueprint.getter(v70, v82);
  v34 = v85;
  Blueprint.subscript.getter();
  v68 = type metadata accessor for BlueprintViewActionRequest();
  v35 = v31;
  (*(v81 + 16))(v83, v34, v80);
  sub_1D7F9E3F0();
  v37 = *(v36 + 48);
  v64 = v24;
  v38 = *(v24 + 16);
  v39 = v22;
  v62 = v22;
  v40 = v74;
  v38(v74, v35, v32);
  v71 = v38;
  v41 = v79;
  swift_beginAccess();
  v38((v40 + v37), v41, v32);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v86) = 4;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v73;
  v44 = v69;
  v45 = v84;
  (*(v73 + 16))(v69, v39, v84);
  v46 = (*(v43 + 80) + 72) & ~*(v43 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v33;
  v48 = v75;
  *(v47 + 3) = v75[11];
  v49 = v48[12];
  v50 = v82;
  *(v47 + 4) = v49;
  *(v47 + 5) = v50;
  *(v47 + 6) = v48[14];
  v51 = v48[15];
  *(v47 + 7) = v51;
  *(v47 + 8) = v42;
  (*(v43 + 32))(&v47[v46], v44, v45);
  v52 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v83, v40, &v86, 0, sub_1D80140EC, v47);
  v53 = v62;
  (*(v51 + 208))(v62, v49, v51);
  (*(v51 + 72))(v53, v52, v49, v51);
  v54 = [v77 dragItem];
  v55 = v79;
  swift_beginAccess();
  v56 = v65;
  v57 = v63;
  v71(v65, v55, v63);
  v58 = sub_1D818E8E4();
  (*(v64 + 8))(v56, v57);
  v59 = [v78 dropItem:v54 toItemAtIndexPath:v58];

  swift_unknownObjectRelease();

  (*(v81 + 8))(v85, v80);
  return (*(v43 + 8))(v53, v45);
}

void sub_1D8011FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      (*(a9 + 216))(a3, a6);
    }
  }
}

void sub_1D80120C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1D8012188(char *a1)
{
  MEMORY[0x1DA715E30](&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v4 + 8))(&a1[v5]);
  OUTLINED_FUNCTION_2_5();
  return sub_1D7FBDB74(&a1[*(v6 + 152)], &qword_1ECA0F578, &qword_1ECA0F580);
}

uint64_t sub_1D80122A8@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D8012314()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0();
  return swift_unknownObjectWeakAssign();
}

uint64_t _s5TeaUI36BlueprintCollectionViewDragDelegate2C8delegateq0_Sgvg_0()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintCollectionViewDragDelegate3.delegate.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

void BlueprintCollectionViewDragDelegate3.init(blueprintProvider:blueprintLayoutProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_30_3();
  a20 = v23;
  a21 = v24;
  v25 = OUTLINED_FUNCTION_72_4();
  v26 = *v22;
  v27 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_75();
  v29 = *(v28 + 152);
  v30 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(v22 + v29, 1, 1, v30);
  OUTLINED_FUNCTION_3_75();
  *(v22 + *(v31 + 160)) = 0;
  OUTLINED_FUNCTION_3_75();
  v32 = *((v27 & v26) + 0x50);
  OUTLINED_FUNCTION_48_0();
  v34 = v33;
  v36 = OUTLINED_FUNCTION_34_10(v35);
  v37(v36);
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_48_0();
  v39 = OUTLINED_FUNCTION_64_5(v38);
  v40(v39);
  a9.receiver = v22;
  a9.super_class = v25;
  objc_msgSendSuper2(&a9, sel_init);
  v41 = OUTLINED_FUNCTION_35_11();
  v42(v41);
  (*(v34 + 8))(v21, v32);
  OUTLINED_FUNCTION_29();
}

Swift::Void __swiftcall BlueprintCollectionViewDragDelegate3.register(in:)(UICollectionView *in)
{
  v5[3] = swift_getObjectType();
  v5[0] = v1;
  objc_allocWithZone(MEMORY[0x1E69DCC48]);
  v3 = v1;
  v4 = sub_1D7FB6EA8(v5, sel_handleLongPressWithGestureRecognizer_);
  [(UICollectionView *)in addGestureRecognizer:v4];
}

void BlueprintCollectionViewDragDelegate3.targetIndexPathToReorderItem(from:to:)()
{
  OUTLINED_FUNCTION_120();
  v75 = v1;
  v68 = v2;
  v76 = v3;
  v65 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & v65) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & v65) + 0x50);
  v7 = OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_9();
  v71 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v73 = v10;
  v11 = OUTLINED_FUNCTION_78_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v6;
  v70 = v5;
  v13 = swift_getAssociatedConformanceWitness();
  v67 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v66 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v64 - v16;
  v80[0] = v7;
  v80[1] = v11;
  v80[2] = AssociatedConformanceWitness;
  v81 = v13;
  v64[1] = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_43();
  sub_1D7E3D564();
  v20 = OUTLINED_FUNCTION_50(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  v24 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v30 = v29 - v28;
  v31 = *((v4 & v65) + 0x98);
  OUTLINED_FUNCTION_42_0();
  v32 = v0 + v31;
  v33 = v24;
  sub_1D7E54838(v32, v23);
  v34 = OUTLINED_FUNCTION_61_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, v35, v24);
  v74 = v24;
  v72 = v30;
  if (EnumTagSinglePayload == 1)
  {
    (*(v26 + 16))(v30, v68, v24);
    v37 = OUTLINED_FUNCTION_61_4();
    v39 = v26;
    if (__swift_getEnumTagSinglePayload(v37, v38, v33) != 1)
    {
      OUTLINED_FUNCTION_0_118();
      sub_1D7E70DEC(v23, v40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_85_0();
    v41();
    v39 = v26;
  }

  OUTLINED_FUNCTION_3_7();
  BlueprintProviderType.blueprint.getter(v69, v70);
  v42 = v75;
  sub_1D818E974();
  Blueprint.subscript.getter();
  v43 = OUTLINED_FUNCTION_31();
  v44(v43);
  (*(v71 + 16))(v73, v17, v7);
  OUTLINED_FUNCTION_14_15();
  v45(v17, v67);
  sub_1D7E0631C(0, &qword_1ECA0F588);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v77, v80);
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v46 = OUTLINED_FUNCTION_31();
    v47(v46);
    v48 = v77;
    if (v78 == 1)
    {
      if (v77 != 0)
      {
        v49 = v74;
        if (v77 ^ 1 | *(&v77 + 1))
        {
          v58 = sub_1D818E974();
          v59 = v72;
          if (v58 != sub_1D818E974())
          {
            (*(v39 + 32))(v76);
            goto LABEL_23;
          }

          (*(v39 + 8))(v59, v49);
        }

        else
        {
          (*(v39 + 8))(v72, v74);
        }

        OUTLINED_FUNCTION_85_0();
        v63(v60, v61, v62);
LABEL_23:
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        goto LABEL_24;
      }
    }

    else
    {
      v52 = sub_1D818E974();
      if (v52 == sub_1D818E974())
      {
        v53 = sub_1D818E964();
        if (v53 < v48 || *(&v48 + 1) < v53)
        {
          v55 = v74;
          (*(v39 + 8))(v72, v74);
          (*(v39 + 16))(v76, v42, v55);
          goto LABEL_23;
        }
      }
    }

    v56 = OUTLINED_FUNCTION_65_6();
    v57(v56);
    goto LABEL_23;
  }

  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_1D7FBDB74(&v77, &qword_1ECA0F590, &qword_1ECA0F588);
  v50 = OUTLINED_FUNCTION_65_6();
  v51(v50);
LABEL_24:
  OUTLINED_FUNCTION_100();
}

void sub_1D8012D08()
{
  OUTLINED_FUNCTION_120();
  v49 = v1;
  v48 = v2;
  v47 = v3;
  v41 = v4;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v38[0] = *MEMORY[0x1E69E7D40] & *v0;
  v45 = type metadata accessor for BlueprintViewAction.Action(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v43 = v9 - v8;
  v10 = *((v6 & v5) + 0x68);
  v11 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_40_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = AssociatedConformanceWitness;
  v50 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v39 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23();
  v40 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  OUTLINED_FUNCTION_40_7();
  v20 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  v21 = swift_getAssociatedConformanceWitness();
  v51[0] = v20;
  v51[1] = AssociatedTypeWitness;
  v51[2] = v21;
  v51[3] = AssociatedConformanceWitness;
  v22 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v42 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_43();
  v25 = v39;
  BlueprintProviderType.blueprint.getter(v11, v10);
  v26 = v41;
  v44 = v22;
  Blueprint.subscript.getter();
  v38[1] = type metadata accessor for BlueprintViewActionRequest();
  v27 = *(v25 + 16);
  v28 = v40;
  v46 = v19;
  v27(v40, v19, v50);
  sub_1D7F9E3F0();
  v30 = *(v29 + 48);
  v31 = sub_1D818E994();
  OUTLINED_FUNCTION_8();
  v33 = *(v32 + 16);
  v34 = v43;
  v33(v43, v26, v31);
  v33(v34 + v30, v47, v31);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v51[0]) = v48;
  v35 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v28, v34, v51, 0, v49, 0);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_42_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    (*(*(v38[0] + 120) + 72))(&protocol requirements base descriptor for BlueprintProviderType, v35, *(v38[0] + 96));
  }

  else
  {
  }

  (*(v25 + 8))(v46, v50);
  (*(v42 + 8))(&protocol requirements base descriptor for BlueprintProviderType, v44);
  OUTLINED_FUNCTION_100();
}

void sub_1D8013120()
{
  OUTLINED_FUNCTION_20_17();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  sub_1D7E3D564();
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v108 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v96 - v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_12();
  v106 = v12;
  v13 = *((v5 & v4) + 0x68);
  v14 = *((v5 & v4) + 0x50);
  OUTLINED_FUNCTION_64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v103 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v18);
  OUTLINED_FUNCTION_64();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v113 = AssociatedTypeWitness;
  v114 = v19;
  v115 = AssociatedConformanceWitness;
  v116 = v21;
  v102 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v101 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v24);
  v113 = AssociatedTypeWitness;
  v114 = v19;
  v115 = AssociatedConformanceWitness;
  v116 = v21;
  v25 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v99 = v26;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v96 - v28;
  v109 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v36);
  v37 = [v3 view];
  if (!v37)
  {
    goto LABEL_30;
  }

  v38 = v37;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
    goto LABEL_13;
  }

  v97 = v31;
  v40 = v39;
  v38 = v38;
  [v3 locationInView_];
  v42 = v41;
  v98 = v40;
  [v40 bounds];
  OUTLINED_FUNCTION_0_99();

  v118.origin.x = OUTLINED_FUNCTION_5_13();
  MidX = CGRectGetMidX(v118);
  v44 = [v3 state];
  if ((v44 - 3) >= 2)
  {
    if (v44 != 2)
    {
      if (v44 == 1)
      {
        v108 = v38;
        v45 = [v98 indexPathForItemAtPoint_];
        if (v45)
        {
          v46 = v45;
          sub_1D818E924();

          v47 = v97;
          v48 = v105;
          v49 = v34;
          v50 = v109;
          (*(v97 + 32))(v105, v49, v109);
          OUTLINED_FUNCTION_10_19();
          BlueprintProviderType.blueprint.getter(v14, v13);
          sub_1D818E974();
          v51 = v100;
          Blueprint.subscript.getter();
          OUTLINED_FUNCTION_14_15();
          v52(v29, v25);
          (*(v103 + 16))(v104, v51, AssociatedTypeWitness);
          OUTLINED_FUNCTION_14_15();
          v53(v51, v102);
          sub_1D7E0631C(0, &qword_1ECA0F588);
          if (swift_dynamicCast())
          {
            sub_1D7E05450(&v110, &v113);
            v54 = v117;
            __swift_project_boxed_opaque_existential_1(&v113, v116);
            v55 = OUTLINED_FUNCTION_6_1();
            v56(v55, v54);
            if (v111 == 1 && v110 == 0 || (v57 = v98, v58 = UICollectionView.cell(at:)(), v59 = v109, !v58))
            {
              (*(v47 + 8))(v48, v109);
            }

            else
            {
              v107 = v58;
              v60 = [v57 collectionViewLayout];
              swift_getObjectType();
              if (dynamic_cast_existential_1_conditional(v60))
              {
                v62 = v61;
                ObjectType = swift_getObjectType();
                v64 = *(v97 + 16);
                v65 = v106;
                v66 = v105;
                v64(v106, v105, v59);
                OUTLINED_FUNCTION_70_5();
                v67 = ObjectType;
                v47 = v97;
                (*(v62 + 16))(v65, v67, v62);
              }

              else
              {

                v64 = *(v47 + 16);
                v65 = v106;
                v66 = v105;
              }

              v64(v65, v66, v59);
              OUTLINED_FUNCTION_70_5();
              OUTLINED_FUNCTION_10_19();
              v91 = *(v90 + 152);
              swift_beginAccess();
              sub_1D7E55614(v65, v1 + v91);
              swift_endAccess();
              v92 = v107;
              [v107 center];
              OUTLINED_FUNCTION_10_19();
              *(v1 + *(v93 + 160)) = v94;
              v95 = sub_1D818E8E4();
              [v98 beginInteractiveMovementForItemAtIndexPath_];

              (*(v47 + 8))(v66, v59);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(&v113);
          }

          else
          {
            (*(v47 + 8))(v48, v50);

            v112 = 0;
            v110 = 0u;
            v111 = 0u;
            sub_1D7FBDB74(&v110, &qword_1ECA0F590, &qword_1ECA0F588);
          }
        }

        else
        {
        }

        goto LABEL_30;
      }

LABEL_13:

      goto LABEL_30;
    }

    v76 = v38;
    OUTLINED_FUNCTION_10_19();
    v78 = *(v77 + 152);
    OUTLINED_FUNCTION_8_4();
    v79 = v1 + v78;
    v80 = v107;
    sub_1D7E54838(v79, v107);
    if (__swift_getEnumTagSinglePayload(v80, 1, v109) != 1)
    {
      OUTLINED_FUNCTION_0_118();
      sub_1D7E70DEC(v80, v88);
      OUTLINED_FUNCTION_2_5();
      [v98 updateInteractiveMovementTargetPosition_];

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_0_118();
    v75 = v80;
LABEL_18:
    sub_1D7E70DEC(v75, v74);
    goto LABEL_30;
  }

  v68 = v38;
  OUTLINED_FUNCTION_10_19();
  v70 = *(v69 + 152);
  OUTLINED_FUNCTION_8_4();
  v71 = v1 + v70;
  v72 = v108;
  sub_1D7E54838(v71, v108);
  v73 = v109;
  if (__swift_getEnumTagSinglePayload(v72, 1, v109) == 1)
  {

    OUTLINED_FUNCTION_0_118();
    v75 = v72;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_118();
  sub_1D7E70DEC(v72, v81);
  v82 = v98;
  [v98 endInteractiveMovement];
  v83 = [v82 collectionViewLayout];
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v83))
  {
    v85 = v84;
    v86 = swift_getObjectType();
    v87 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v73);
    (*(v85 + 16))(v87, v86, v85);
  }

LABEL_30:
  OUTLINED_FUNCTION_3_48();
}

void sub_1D8013B0C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D8013120();
}

uint64_t sub_1D8013BB4(char *a1)
{
  MEMORY[0x1DA715E30](&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v4 + 8))(&a1[v5]);
  OUTLINED_FUNCTION_2_5();
  return sub_1D7E70DEC(&a1[*(v6 + 152)], sub_1D7E3D564);
}

uint64_t type metadata accessor for DragSessionData()
{
  result = qword_1ECA0F640;
  if (!qword_1ECA0F640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8013D1C()
{
  result = qword_1ECA0F5C8;
  if (!qword_1ECA0F5C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0F5C8);
  }

  return result;
}

uint64_t sub_1D8013D78(uint64_t a1, uint64_t a2)
{
  sub_1D7E3D564();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8013E28()
{
  result = sub_1D818E994();
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

void sub_1D8013F08()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1D7E3D564();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1D8014070(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1ECA0F578, &qword_1ECA0F580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80140EC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[7];
  v9 = v1[6];
  v10 = v1[4];
  OUTLINED_FUNCTION_23_11();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_11();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_68();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_50(v7);
  sub_1D8011FD8(a1, v1[8], v1 + ((*(v8 + 80) + 72) & ~*(v8 + 80)), v3, v4, v10, v5, v9, v6);
}

unint64_t sub_1D8014214()
{
  result = qword_1ECA0F6B8[0];
  if (!qword_1ECA0F6B8[0])
  {
    sub_1D818E994();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA0F6B8);
  }

  return result;
}

uint64_t KeyCommandTraverseProvider.invalidator.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t KeyCommandTraverseProvider.invalidator.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_25();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*KeyCommandTraverseProvider.invalidator.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F5FE58;
}

uint64_t sub_1D80143A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D80143F8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t KeyCommandTraverseProvider.delegate.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t KeyCommandTraverseProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_25();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*KeyCommandTraverseProvider.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D801455C;
}

void sub_1D801455C()
{
  OUTLINED_FUNCTION_3_5();
  *(v2 + 40) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t KeyCommandTraverseProvider.traverseDirections.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *a1 = *(v1 + 48);
  return result;
}

uint64_t KeyCommandTraverseProvider.traverseDirections.setter(uint64_t *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + 48) = v2;
  return result;
}

uint64_t KeyCommandTraverseProvider.traverseBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *a1 = *(v1 + 56);
  return result;
}

uint64_t KeyCommandTraverseProvider.traverseBehavior.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + 56) = v2;
  return result;
}

uint64_t KeyCommandTraverseProvider.startBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *a1 = *(v1 + 57);
  return result;
}

uint64_t KeyCommandTraverseProvider.startBehavior.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + 57) = v2;
  return result;
}

uint64_t KeyCommandTraverseProvider.scrollToItemWhileTraversing.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + 58);
}

uint64_t KeyCommandTraverseProvider.scrollToItemWhileTraversing.setter(char a1)
{
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + 58) = a1;
  return result;
}

uint64_t KeyCommandTraverseProvider.StartBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D8014938()
{
  sub_1D81927E4();
  KeyCommandTraverseProvider.StartBehavior.hash(into:)();
  return sub_1D8192824();
}

uint64_t KeyCommandTraverseProvider.__allocating_init(traverseCollectionProvider:viewProvider:commandCenter:tracker:)()
{
  OUTLINED_FUNCTION_1_33();
  v0 = swift_allocObject();
  KeyCommandTraverseProvider.init(traverseCollectionProvider:viewProvider:commandCenter:tracker:)();
  return v0;
}

uint64_t *KeyCommandTraverseProvider.init(traverseCollectionProvider:viewProvider:commandCenter:tracker:)()
{
  OUTLINED_FUNCTION_1_33();
  v6 = *v1;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[6] = 15;
  *(v1 + 28) = 0;
  *(v1 + 58) = 1;
  OUTLINED_FUNCTION_12();
  *(v1 + *(v7 + 192)) = v8;
  OUTLINED_FUNCTION_12();
  *(v1 + *(v9 + 200)) = 0;
  OUTLINED_FUNCTION_12();
  v11 = *(v10 + 208);
  v12 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  OUTLINED_FUNCTION_12();
  (*(*(*(v6 + 80) - 8) + 32))(v1 + *(v13 + 160), v5);
  OUTLINED_FUNCTION_12();
  *(v1 + *(v14 + 168)) = v4;
  OUTLINED_FUNCTION_12();
  v16 = (v1 + *(v15 + 176));
  *v16 = v3;
  v16[1] = v2;
  OUTLINED_FUNCTION_12();
  v18 = v1 + *(v17 + 184);
  *(v18 + 32) = *(v0 + 32);
  v19 = *(v0 + 16);
  *v18 = *v0;
  *(v18 + 16) = v19;
  return v1;
}

uint64_t KeyCommandTraverseProvider.selectedIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 208);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return sub_1D7E54838(v1 + v4, a1);
}

uint64_t sub_1D8014B9C(uint64_t a1)
{
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D7E54838(a1, &v6 - v3);
  return KeyCommandTraverseProvider.selectedIndexPath.setter(v4);
}

uint64_t KeyCommandTraverseProvider.selectedIndexPath.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  v4 = OUTLINED_FUNCTION_50(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 192);
  *(v1 + v8) = 0;
  sub_1D7E54838(a1, v6);
  sub_1D8014CE4(v6);
  result = sub_1D7E73334(a1);
  *(v1 + v8) = 1;
  return result;
}

uint64_t sub_1D8014CE4(uint64_t a1)
{
  sub_1D8014F60();
  v3 = *(*v1 + 208);
  swift_beginAccess();
  sub_1D8019D44(a1, v1 + v3);
  swift_endAccess();
  sub_1D8015554();
  return sub_1D7E73334(a1);
}

void (*KeyCommandTraverseProvider.selectedIndexPath.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  OUTLINED_FUNCTION_50(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  KeyCommandTraverseProvider.selectedIndexPath.getter(v6);
  return sub_1D8014DF0;
}

void sub_1D8014DF0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D7E54838(v3, v2);
    KeyCommandTraverseProvider.selectedIndexPath.setter(v2);
    sub_1D7E73334(v3);
  }

  else
  {
    KeyCommandTraverseProvider.selectedIndexPath.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t KeyCommandTraverseProvider.selectionBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 200);
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *a1 = *(v1 + v4);
  return result;
}

uint64_t KeyCommandTraverseProvider.selectionBehavior.setter(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 200);
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*KeyCommandTraverseProvider.selectionBehavior.modify())()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_4();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8014F60()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1D818E994();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[26];
  swift_beginAccess();
  sub_1D7E54838(v1 + v13, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1D7E73334(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((*(v2[12] + 16))(v12, v2[10]))
  {
    (*(v10 + 16))(v5, v12, v9);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    sub_1D80151D8(v5);
    sub_1D7E73334(v5);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D80151D8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1D818E994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E54838(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1D7E73334(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (*(v2 + *(*v2 + 192)) == 1 && ((*(v4[12] + 16))(v11, v4[10]) & 1) != 0)
  {
    v13 = *(v2 + *(*v2 + 168));
    v14 = v4[13];
    v15 = *(v14 + 56);
    v16 = v4[11];
    v27 = v13;
    v28 = v14 + 56;
    v26 = v15;
    v17 = v15(v16, v14);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(AssociatedConformanceWitness + 120);
    v20 = swift_checkMetadataState();
    v21 = v19(v20, AssociatedConformanceWitness);

    if ((v21 & 1) == 0)
    {
      v22 = v26(v16, v14);
      v23 = (*(AssociatedConformanceWitness + 136))(v20, AssociatedConformanceWitness);

      if ((v23 & 1) == 0)
      {
        v24 = v26(v16, v14);
        (*(AssociatedConformanceWitness + 192))(v11, 0, v20, AssociatedConformanceWitness);
      }
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D8015554()
{
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-v2];
  v4 = *(*v0 + 208);
  swift_beginAccess();
  sub_1D7E54838(v0 + v4, v3);
  sub_1D8015678(v3, 1);
  sub_1D7E73334(v3);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8015678(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_1D818E994();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E54838(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_1D7E73334(v12);
  }

  (*(v14 + 32))(v16, v12, v13);
  if (v3[*(*v3 + 192)] == 1 && ((*(v6[12] + 16))(v16, v6[10]) & 1) != 0)
  {
    v18 = v6[13];
    v19 = *(v18 + 56);
    v20 = v6[11];
    v30 = *&v3[*(*v3 + 168)];
    v31 = v18 + 56;
    v29 = v19;
    v21 = v19(v20, v18);
    (*(v14 + 16))(v9, v16, v13);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
    swift_getAssociatedTypeWitness();
    v26 = v18;
    v28 = v20;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = a2;
    v23 = *(AssociatedConformanceWitness + 184);
    v24 = swift_checkMetadataState();
    v27 = AssociatedConformanceWitness;
    v23(v9, 0, v24, AssociatedConformanceWitness);

    sub_1D7E73334(v9);
    if (v32)
    {
      swift_beginAccess();
      if (v3[58] == 1)
      {
        v25 = v29(v28, v26);
        (*(v27 + 200))(v16, 1, v24);
      }
    }
  }

  return (*(v14 + 8))(v16, v13);
}

void KeyCommandTraverseProvider.register(in:)(uint64_t a1)
{
  v3 = v1;
  v134 = a1;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_0();
  v127 = v8 - v9;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_1();
  v128 = v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_24_1();
  v129 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_0();
  v125 = v19 - v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24_1();
  v126 = v22;
  OUTLINED_FUNCTION_77();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v131 = v116 - v25;
  v26 = *(v1 + v4[21]);
  v27 = v4[13];
  v28 = *(v27 + 56);
  v29 = v4[11];
  v130 = v26;
  v132 = v28;
  v30 = (v28)(v29, v27, v24);
  v133 = [v30 window];

  if (!v133)
  {
    goto LABEL_30;
  }

  if (![v133 isKeyWindow])
  {
    OUTLINED_FUNCTION_100();

    return;
  }

  v121 = v27 + 56;
  v119 = v17;
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v31 = swift_allocObject();
  v124 = v15;
  v120 = v2;
  v32 = v27;
  v33 = v29;
  v34 = v5[10];
  v31[2] = v34;
  v31[3] = v33;
  v35 = v5[12];
  v31[4] = v35;
  v31[5] = v32;
  v31[6] = v3;
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_27_13();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_31_8(v36);
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_27_13();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_31_8(v37);
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_27_13();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v38 = swift_allocObject();
  v122 = v35;
  v123 = v34;
  v38[2] = v34;
  v39 = v33;
  v40 = v32;
  v41 = v120;
  v38[3] = v39;
  v38[4] = v35;
  v38[5] = v40;
  v38[6] = v3;
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  v42 = *(*v3 + 208);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v3 + v42, v41);
  OUTLINED_FUNCTION_3_9(v41);
  if (v43)
  {

    sub_1D7E73334(v41);
    goto LABEL_30;
  }

  v46 = v119 + 32;
  v47 = v131;
  OUTLINED_FUNCTION_29_9();
  v116[0] = v48;
  v48(v49);
  v50 = *(v122 + 8);
  v116[1] = *(*v3 + 160);
  v116[2] = v50;
  v116[3] = v122 + 8;
  v50(v135, v123);
  v51 = v137;
  v117 = __swift_project_boxed_opaque_existential_1(v135, v136);
  v52 = v132(v39, v40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = v40;
  v116[4] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = *(v51 + 56);
  v120 = AssociatedConformanceWitness;
  v55(&v139, v47, v52);

  if (!*(&v140 + 1))
  {
    v134 = v46;
    sub_1D7E9DD24(&v139, &qword_1ECA0DA98, qword_1EDBB7610);
    __swift_destroy_boxed_opaque_existential_1Tm(v135);
    v71 = OUTLINED_FUNCTION_22_13();
    v72(v71);
    v73 = v136;
    v74 = v137;
    v117 = __swift_project_boxed_opaque_existential_1(v135, v136);
    v75 = v118;
    v76 = v132(v39, v118);
    v77 = v128;
    (*(v74 + 40))(v131, 1, v76, v120, v73, v74);

    v78 = v124;
    OUTLINED_FUNCTION_43_0(v77, 1, v124);
    if (v43)
    {
      sub_1D7E73334(v77);
      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      v79 = OUTLINED_FUNCTION_22_13();
      v80(v79);
      v81 = v136;
      v82 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v83 = v132(v39, v75);
      v84 = v127;
      v85 = v131;
      v86 = v81;
      v87 = v124;
      (*(v82 + 48))(v131, 1, v83, v120, v86, v82);

      OUTLINED_FUNCTION_3_9(v84);
      if (!v43)
      {
        v109 = v125;
        (v116[0])(v125, v84, v87);
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        OUTLINED_FUNCTION_21_16();
        v110 = v129;
        OUTLINED_FUNCTION_29_9();
        v111();
        v112 = OUTLINED_FUNCTION_24_0();
        __swift_storeEnumTagSinglePayload(v112, v113, v114, v87);
        sub_1D8014CE4(v110);

        v115 = *(v82 + 8);
        v115(v109, v87);
        v115(v85, v87);
        goto LABEL_30;
      }

      (*(v119 + 8))(v85, v87);

      sub_1D7E73334(v84);
      v88 = v135;
      goto LABEL_28;
    }

    v102 = v126;
    OUTLINED_FUNCTION_29_9();
    (v116[0])();
    __swift_destroy_boxed_opaque_existential_1Tm(v135);
    OUTLINED_FUNCTION_21_16();
    v103 = v129;
    v104(v129, v102, v78);
    v105 = OUTLINED_FUNCTION_24_0();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v78);
    sub_1D8014CE4(v103);

    v108 = *(v74 + 8);
    v108(v102, v78);
    v108(v131, v78);
LABEL_30:
    OUTLINED_FUNCTION_100();
    return;
  }

  sub_1D7E05450(&v139, v142);
  __swift_destroy_boxed_opaque_existential_1Tm(v135);
  OUTLINED_FUNCTION_25_10();
  v56 = OUTLINED_FUNCTION_6_1();
  v58 = v57(v56, v47);
  v59 = v132;
  v60 = v118;
  if ((v58 & 1) == 0)
  {
LABEL_23:
    v89 = v59(v39, v60);
    v90 = v120;
    v91 = v120 + 80;
    v92 = *(v120 + 80);
    v93 = swift_checkMetadataState();
    v94 = v131;
    v95 = v92(v131, v93, v90);

    if (v95)
    {
      v138 = v95;
      v91 = sub_1D7F9F0F0();
      sub_1D7E0631C(0, &qword_1EDBB6760);
      v96 = v95;
      if (swift_dynamicCast())
      {
        sub_1D7E05450(&v139, v135);
        v97 = v136;
        v98 = v137;
        __swift_project_boxed_opaque_existential_1(v135, v136);
        v91 = (*(v98 + 8))(v97, v98);
        sub_1D7F04980(v91);

        __swift_destroy_boxed_opaque_existential_1Tm(v135);
      }

      else
      {

        v141 = 0;
        v139 = 0u;
        v140 = 0u;
        sub_1D7E9DD24(&v139, &qword_1EDBB6758, &qword_1EDBB6760);
      }
    }

    OUTLINED_FUNCTION_21_16();
    v99 = v129;
    v100 = v124;
    v101(v129, v94, v124);
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v100);
    sub_1D8015678(v99, 0);

    sub_1D7E73334(v99);
    (*(v91 + 8))(v94, v100);
    v88 = v142;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    goto LABEL_30;
  }

  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_30_12(v61);
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0();
  OUTLINED_FUNCTION_6_1();

  swift_unownedRelease();
  OUTLINED_FUNCTION_25_10();
  v62 = OUTLINED_FUNCTION_6_1();
  if (v63(v62, v47))
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    OUTLINED_FUNCTION_8_8();
    v64 = swift_allocObject();
    OUTLINED_FUNCTION_30_12(v64);
    OUTLINED_FUNCTION_4_52();
    sub_1D7E3DAB0();
    OUTLINED_FUNCTION_6_1();

    swift_unownedRelease();
  }

  OUTLINED_FUNCTION_25_10();
  v65 = OUTLINED_FUNCTION_6_1();
  v67 = v66(v65, v47);
  v68 = 0;
  v69 = *(v67 + 16);
  for (i = v67 + 32; ; i += 136)
  {
    if (v69 == v68)
    {

      v59 = v132;
      goto LABEL_23;
    }

    if (v68 >= *(v67 + 16))
    {
      break;
    }

    sub_1D801991C(i, v135);
    sub_1D8017F7C(v135, v3);
    ++v68;
    sub_1D8019978(v135);
  }

  __break(1u);

  sub_1D8019978(v135);
  __break(1u);
}

uint64_t sub_1D80166DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if ((v13 & 2) != 0)
  {
    KeyCommandTraverseProvider.traverse(_:)(0);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 0, a2, a3, a4, a5, v15, v14);

      return swift_unknownObjectRelease();
    }
  }
}

void KeyCommandTraverseProvider.traverse(_:)(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_12();
  v6 = v5;
  OUTLINED_FUNCTION_0_119(v7, &qword_1EDBBC690);
  v9 = OUTLINED_FUNCTION_50(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_0();
  v169 = v10 - v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v151 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v151 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_1();
  v170 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_24_1();
  v167 = v21;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24_1();
  v168 = v23;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_24_1();
  v171 = v25;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v151 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_9();
  v172 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_24_1();
  v35 = v34;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v37);
  if (a1 == 1)
  {
    v168 = v39;
    v170 = 1;
    v41 = v6[26];
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_1D7E54838(v3 + v41, v14);
    OUTLINED_FUNCTION_3_9(v14);
    if (v72)
    {
      sub_1D7E73334(v14);
      OUTLINED_FUNCTION_39_5();
      v42 = OUTLINED_FUNCTION_20_18();
      v43(v42);
      OUTLINED_FUNCTION_10_35();
      v44 = v171;
      v45 = OUTLINED_FUNCTION_6_1();
      v46(v45, v41);
      sub_1D8014CE4(v44);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    else
    {
      v54 = *(v172 + 32);
      v55 = v35;
      v162 = v172 + 32;
      v161 = v54;
      v54(v35, v14, v30);
      OUTLINED_FUNCTION_39_5();
      v56 = OUTLINED_FUNCTION_24_12();
      v155 = v57;
      v164 = v56;
      v165 = v58;
      v156 = v59;
      v154 = v60;
      v60();
      v61 = v175;
      v166 = __swift_project_boxed_opaque_existential_1(v173, v174);
      OUTLINED_FUNCTION_39_5();
      v63 = v6[13];
      v64 = v30;
      v65 = *(v63 + 56);
      v66 = v6[11];
      v160 = *(v3 + *(v62 + 168));
      v159 = v65;
      v67 = v65(v66, v63);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v163 = v66;
      v158 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v70 = *(v61 + 48);
      v71 = v169;
      v167 = v55;
      v157 = AssociatedConformanceWitness;
      v70(v55, 0, v67);

      OUTLINED_FUNCTION_43_0(v71, 1, v64);
      if (v72)
      {
        sub_1D7E73334(v71);
        __swift_destroy_boxed_opaque_existential_1Tm(v173);
        v73 = v163;
        v74 = v159(v163, v63);
        v75 = v167;
        v76 = sub_1D818E974();
        v77 = v157;
        v78 = v157 + 112;
        v79 = *(v157 + 112);
        v80 = swift_checkMetadataState();
        v81 = v79(v76, v80, v77);

        if (v81 < 1)
        {
          (v154)(v173, v164, v165);
          OUTLINED_FUNCTION_10_35();
          v138 = v171;
          v139 = OUTLINED_FUNCTION_6_1();
          v140(v139, v78);
          sub_1D8014CE4(v138);
          __swift_destroy_boxed_opaque_existential_1Tm(v173);
          a1 = v170;
          v82 = v172;
        }

        else
        {
          v82 = v172;
          v83 = OUTLINED_FUNCTION_28_10();
          v84(v83, v75, v64);
          v85 = OUTLINED_FUNCTION_24_0();
          __swift_storeEnumTagSinglePayload(v85, v86, v87, v64);
          OUTLINED_FUNCTION_34_11();
          a1 = v170;
        }

        OUTLINED_FUNCTION_7();
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v141 = OUTLINED_FUNCTION_32_7();
          v142(v141, 1, v164, v73, v165, v63);
          swift_unknownObjectRelease();
        }

        (*(v82 + 8))(v75, v64);
        goto LABEL_22;
      }

      v121 = v168;
      v161(v168, v71, v64);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
      v122 = v172;
      v123 = OUTLINED_FUNCTION_28_10();
      v124(v123, v121, v64);
      v125 = OUTLINED_FUNCTION_24_0();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v64);
      OUTLINED_FUNCTION_34_11();
      v128 = *(v122 + 8);
      v128(v121, v64);
      v128(v167, v64);
    }
  }

  else
  {
    v166 = v40;
    v169 = v30;
    if (a1)
    {
      v173[0] = a1;
      sub_1D81926E4();
      __break(1u);
      return;
    }

    v47 = &v151 - v38;
    v48 = v6[26];
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_1D7E54838(v3 + v48, v2);
    v49 = v169;
    OUTLINED_FUNCTION_43_0(v2, 1, v169);
    if (v72)
    {
      sub_1D7E73334(v2);
      sub_1D8018E98(v17);
      OUTLINED_FUNCTION_3_9(v17);
      if (v72)
      {
        OUTLINED_FUNCTION_39_5();
        v50 = OUTLINED_FUNCTION_20_18();
        v51(v50);
        OUTLINED_FUNCTION_10_35();
        v129 = v170;
        v52 = OUTLINED_FUNCTION_6_1();
        v53(v52, v28);
        __swift_destroy_boxed_opaque_existential_1Tm(v173);
        OUTLINED_FUNCTION_43_0(v17, 1, v49);
        if (!v72)
        {
          sub_1D7E73334(v17);
        }
      }

      else
      {
        v129 = v170;
        (*(v172 + 32))(v170, v17, v49);
        __swift_storeEnumTagSinglePayload(v129, 0, 1, v49);
      }

      sub_1D8014CE4(v129);
      goto LABEL_22;
    }

    v170 = 0;
    v88 = (v172 + 32);
    OUTLINED_FUNCTION_29_9();
    v160 = v89;
    v89();
    OUTLINED_FUNCTION_39_5();
    v90 = OUTLINED_FUNCTION_24_12();
    v153 = v91;
    v155 = v90;
    v156 = v92;
    v154 = v93;
    v152 = v94;
    v94();
    v164 = v174;
    v162 = v175;
    v163 = __swift_project_boxed_opaque_existential_1(v173, v174);
    OUTLINED_FUNCTION_39_5();
    v96 = v6[13];
    v97 = *(v96 + 56);
    v98 = v6[11];
    v159 = *(v3 + *(v95 + 168));
    v158 = v97;
    v99 = v97(v98, v96);
    v100 = swift_getAssociatedTypeWitness();
    v161 = v98;
    v157 = v100;
    v101 = swift_getAssociatedConformanceWitness();
    v102 = *(v162 + 40);
    v165 = v47;
    v102(v47, 0, v99, v101, v164);

    OUTLINED_FUNCTION_3_9(v28);
    if (v103)
    {
      v166 = v88;
      sub_1D7E73334(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
      v104 = v161;
      v105 = v158(v161, v96);
      v106 = v165;
      v107 = sub_1D818E974();
      v108 = v101;
      v109 = *(v101 + 112);
      v110 = swift_checkMetadataState();
      v111 = v109(v107, v110, v108);

      v112 = v96;
      if (v111 < 1)
      {
        v171 = v96;
        v143 = v167;
        sub_1D8018E98(v167);
        v116 = v169;
        OUTLINED_FUNCTION_43_0(v143, 1, v169);
        a1 = v170;
        v114 = v172;
        if (v72)
        {
          (v152)(v173, v155, v156);
          OUTLINED_FUNCTION_10_35();
          v144 = OUTLINED_FUNCTION_6_1();
          v145(v144, v112);
          __swift_destroy_boxed_opaque_existential_1Tm(v173);
          OUTLINED_FUNCTION_43_0(v143, 1, v116);
          if (!v72)
          {
            sub_1D7E73334(v143);
          }
        }

        else
        {
          (v160)(v168, v143, v116);
          v146 = OUTLINED_FUNCTION_24_0();
          __swift_storeEnumTagSinglePayload(v146, v147, v148, v116);
        }

        v112 = v171;
        v113 = v161;
      }

      else
      {
        v113 = v104;
        v114 = v172;
        v115 = OUTLINED_FUNCTION_28_10();
        v116 = v169;
        v117(v115, v106, v169);
        v118 = OUTLINED_FUNCTION_24_0();
        __swift_storeEnumTagSinglePayload(v118, v119, v120, v116);
        a1 = v170;
      }

      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_7();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v149 = OUTLINED_FUNCTION_32_7();
        v150(v149, 0, v155, v113, v156, v112);
        swift_unknownObjectRelease();
      }

      (*(v114 + 8))(v106, v116);
      goto LABEL_22;
    }

    v130 = v166;
    (v160)(v166, v28, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v173);
    v131 = v172;
    v132 = OUTLINED_FUNCTION_28_10();
    v133(v132, v130, v49);
    v134 = OUTLINED_FUNCTION_24_0();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v49);
    OUTLINED_FUNCTION_34_11();
    v137 = *(v131 + 8);
    v137(v130, v49);
    v137(v165, v49);
  }

  a1 = v170;
LABEL_22:
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*(v3 + 56) == 1)
  {
    sub_1D8017A30();
  }

  sub_1D8018AFC(a1);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8017520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if ((v13 & 8) != 0)
  {
    KeyCommandTraverseProvider.traverse(_:)(0);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 0, a2, a3, a4, a5, v15, v14);

      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D80176D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if (v13)
  {
    KeyCommandTraverseProvider.traverse(_:)(1);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 1, a2, a3, a4, a5, v15, v14);

      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D8017880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if ((v13 & 4) != 0)
  {
    KeyCommandTraverseProvider.traverse(_:)(1);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 1, a2, a3, a4, a5, v15, v14);

      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D8017A30()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v2[26];
  swift_beginAccess();
  sub_1D7E54838(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1D7E73334(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = v3[12];
  v14 = v3[10];
  if ((*(v13 + 16))(v10, v14, v13))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v1[5];
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(v1, v10, v14, v3[11], v13, v3[13], ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8017CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v7 = swift_unownedRetainStrong();
  a6(v7);
}

uint64_t sub_1D8017CF8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v2[26];
  swift_beginAccess();
  sub_1D7E54838(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1D7E73334(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = v3[12];
  v14 = v3[10];
  if ((*(v13 + 16))(v10, v14, v13))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v1[5];
      ObjectType = swift_getObjectType();
      (*(v15 + 16))(v1, v10, v14, v3[11], v13, v3[13], ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8017F7C(uint64_t result, uint64_t a2)
{
  v2 = (a2 + *(*a2 + 176));
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    v5 = v2[1];
    sub_1D7E62C7C(a2 + *(*a2 + 184), __src);
    if (*&__src[24])
    {
      sub_1D7E05450(__src, v11);
      v6 = *(v4 + 104);
      v7 = swift_unknownObjectRetain();
      if (v6(v7, v5))
      {
        v12 = *(v4 + 40);
        sub_1D8190DB4();
        (*(v4 + 120))(v3, v5);
        sub_1D801991C(v4, __src);
        sub_1D7E0E768(v11, v9);
        v8 = swift_allocObject();
        memcpy(v8 + 2, __src, 0x88uLL);
        v8[19] = v3;
        v8[20] = v5;
        sub_1D7E05450(v9, (v8 + 21));
        swift_unknownObjectRetain();
        sub_1D7E3DAB0();
        swift_unknownObjectRelease();

        return __swift_destroy_boxed_opaque_existential_1Tm(v11);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return sub_1D7E9DD24(__src, &qword_1EDBBB508, &qword_1EDBBB510);
    }
  }

  return result;
}

uint64_t sub_1D801819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 88);
  HIBYTE(v21) = 8;
  sub_1D7E0E768(a4, v18);
  v22 = 0u;
  v23 = 0u;
  LOBYTE(v24) = 1;
  type metadata accessor for CommandExecutionSource();
  v7 = swift_allocObject();
  v8 = v19;
  v9 = v20;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_1D7E3B938(&v21 + 7, v13, 0, &v22, 0, 0, 0, v7, v8, v9, v18[0], v18[1], v18[2], v19, v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v6(a2, a3, v16);
}

void KeyCommandTraverseProvider.shouldForceClearState.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  v5 = OUTLINED_FUNCTION_50(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[26];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v2 + v18, v11);
  OUTLINED_FUNCTION_3_9(v11);
  if (v19)
  {
    sub_1D7E73334(v11);
  }

  else
  {
    (*(v14 + 32))(v17, v11, v12);
    v20 = v3[12];
    v21 = v3[10];
    if ((*(v3[12] + 16))(v17, v3[10], v3[12]))
    {
      (*(v20 + 8))(v26, v21, v20);
      v22 = v27;
      v23 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      sub_1D7E1AD50(0, &qword_1EDBB2D08, MEMORY[0x1E69E6F90]);
      v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D819FAB0;
      (*(v14 + 16))(v25 + v24, v17, v12);
      (*(v23 + 64))(v25, v22, v23);

      (*(v14 + 8))(v17, v12);
      OUTLINED_FUNCTION_3_9(v8);
      sub_1D7E73334(v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    else
    {
      (*(v14 + 8))(v17, v12);
    }
  }

  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall KeyCommandTraverseProvider.clearState()()
{
  v3 = v1;
  v4 = *v1;
  OUTLINED_FUNCTION_0_119(v0, &qword_1EDBBC690);
  v6 = OUTLINED_FUNCTION_50(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v4[26];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v3 + v17, v2);
  OUTLINED_FUNCTION_43_0(v2, 1, v11);
  if (v18)
  {
    sub_1D7E73334(v2);
  }

  else
  {
    (*(v13 + 32))(v16, v2, v11);
    OUTLINED_FUNCTION_39_5();
    if (((*(v4[12] + 16))(v16, v4[10]) & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
      sub_1D8014CE4(v9);
    }

    (*(v13 + 8))(v16, v11);
  }

  OUTLINED_FUNCTION_39_5();
  v20 = *(v19 + 200);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if ((*(v3 + v20) & 1) == 0)
  {
    sub_1D7E54838(v3 + v17, v9);
    sub_1D80151D8(v9);
    sub_1D7E73334(v9);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
    sub_1D8014CE4(v9);
  }
}

uint64_t KeyCommandTraverseProvider.startTraversing(direction:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(v4 + 208);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v1 + v14, v13);
  v15 = sub_1D818E994();
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v13, 1, v15);
  sub_1D7E73334(v13);
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_39_5();
    v19 = (*(*(v5 + 104) + 56))(*(v5 + 88), *(v5 + 104));
    sub_1D7E54838(v2 + v14, v10);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = *(AssociatedConformanceWitness + 184);
    v22 = swift_checkMetadataState();
    v21(v10, 0, v22, AssociatedConformanceWitness);

    sub_1D7E73334(v10);
    return sub_1D8018AFC(a1);
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v16 = *(v1 + 57);
  v17 = *(v5 + 96);
  v24[0] = *(v5 + 80);
  v24[1] = v17;
  type metadata accessor for KeyCommandTraverseProvider.StartBehavior();
  if (!a1)
  {
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    if (v16)
    {
      v18 = 1;
LABEL_8:
      KeyCommandTraverseProvider.traverse(_:)(v18);
      return sub_1D8018AFC(a1);
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  swift_getTupleTypeMetadata2();
  result = sub_1D8192624();
  __break(1u);
  return result;
}