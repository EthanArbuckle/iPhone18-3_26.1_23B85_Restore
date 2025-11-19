uint64_t sub_1D80F6E80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v4 + 184) + 216))(a3, *(v4 + 128));
    return swift_unknownObjectRelease();
  }

  return result;
}

void BlueprintCompositionalListDiffableDataSourceProvider.handleDrop(sourceIndexPath:destinationIndexPath:)()
{
  OUTLINED_FUNCTION_120();
  v28[3] = v1;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  v16 = *(*(*(v2 + 144) + 8) + 8);
  v28[4] = MEMORY[0x1E69E6158];
  v28[5] = v3;
  v28[6] = MEMORY[0x1E69E6168];
  v28[7] = v16;
  v17 = sub_1D818FFF4();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v21 = v0[3];
  if (!v21)
  {
    goto LABEL_10;
  }

  v28[1] = v17;
  v28[2] = v19;
  v22 = v21;
  sub_1D8190184();
  v23 = sub_1D818E964();
  if (v23 < sub_1D818E964())
  {
    sub_1D8190114();
    OUTLINED_FUNCTION_7_4(v15);
    if (!v24)
    {
      sub_1D8190114();
      OUTLINED_FUNCTION_7_4(v12);
      if (!v24)
      {
        sub_1D818FFD4();
LABEL_9:
        v25 = *(*(v3 - 8) + 8);
        v25(v12, v3);
        v25(v15, v3);
        OUTLINED_FUNCTION_7();
        sub_1D8190174();

        v26 = OUTLINED_FUNCTION_85();
        v27(v26);
LABEL_10:
        OUTLINED_FUNCTION_100();
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1D8190114();
  OUTLINED_FUNCTION_7_4(v9);
  if (v24)
  {
    goto LABEL_12;
  }

  sub_1D8190114();
  OUTLINED_FUNCTION_7_4(v6);
  if (!v24)
  {
    sub_1D818FFC4();
    v12 = v6;
    v15 = v9;
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

uint64_t *BlueprintCompositionalListDiffableDataSourceProvider.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(v2 + 216));
  OUTLINED_FUNCTION_12();
  MEMORY[0x1DA715E30](v0 + *(v3 + 224));
  OUTLINED_FUNCTION_12();
  MEMORY[0x1DA715E30](v0 + *(v4 + 232));
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();
  sub_1D7E166A0(v0 + *(v5 + 248));
  return v0;
}

uint64_t BlueprintCompositionalListDiffableDataSourceProvider.__deallocating_deinit()
{
  BlueprintCompositionalListDiffableDataSourceProvider.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1D80F739C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCompositionalListDiffableDataSourceProvider.dragReorderDelegate.modify(v2);
  return sub_1D7F4150C;
}

void sub_1D80F7458(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a1;
  v12 = *a3;
  v13 = *(*(a11 + 8) + 8);
  v48 = MEMORY[0x1E69E6158];
  v49 = a5;
  v39 = a5;
  v50 = MEMORY[0x1E69E6168];
  v51 = v13;
  v14 = sub_1D818FFF4();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v38 - v15;
  v16 = *(v12 + 88);
  v40 = a3;
  v17 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v48 = AssociatedTypeWitness;
  v49 = v19;
  v50 = AssociatedConformanceWitness;
  v51 = v21;
  v22 = type metadata accessor for Blueprint();
  v44 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    swift_beginAccess();
    v27 = v26[3];
    if (v27)
    {
      v38 = v27;
      BlueprintProviderType.blueprint.getter(v17, v16);
      swift_getWitnessTable();
      v48 = AssociatedTypeWitness;
      v49 = v19;
      v50 = AssociatedConformanceWitness;
      v51 = v21;
      type metadata accessor for BlueprintSection();
      swift_getWitnessTable();
      sub_1D81918C4();
      (*(v44 + 8))(v24, v22);
      if (v47)
      {
      }

      else
      {
        v28 = v38;
        v29 = v46;
        swift_checkMetadataState();
        swift_getWitnessTable();
        v30 = sub_1D8191834();
        if (v30 < 0)
        {
          __break(1u);
        }

        else
        {
          v48 = 0;
          v49 = v30;
          MEMORY[0x1EEE9AC00](v30);
          *(&v38 - 2) = v29;
          *(&v38 - 1) = v26;
          sub_1D80F808C();
          v32 = v31;
          v33 = sub_1D80F80E4();
          sub_1D7E6CDC0(sub_1D80F806C, (&v38 - 4), v32, v39, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
          v35 = v41;
          sub_1D8190184();
          BlueprintSectionCollapsibleStateManager.state(for:)(&v46);
          if (v46 == 1)
          {
            v48 = BlueprintSection.identifier.getter();
            v49 = v36;
            v37 = v43;
            sub_1D818FF74();
          }

          else
          {
            v37 = v43;
            sub_1D818FF84();
          }

          sub_1D8190174();

          (*(v42 + 8))(v35, v37);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D80F7938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v5 = *a3;
  v36 = a2;
  v37 = v5;
  v6 = *(v5 + 152);
  v7 = *(v5 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for BlueprintItem();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v29 - v11;
  v34 = v6;
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v39 = v12;
  v40 = AssociatedTypeWitness;
  v33 = AssociatedTypeWitness;
  v41 = v13;
  v42 = AssociatedConformanceWitness;
  v14 = type metadata accessor for Blueprint();
  v15 = *(v14 - 8);
  v31 = v14;
  v32 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  v30 = sub_1D818E994();
  v22 = *(v30 - 8);
  v23 = MEMORY[0x1EEE9AC00](v30);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1DA710B40](*a1, v36, v23);
  BlueprintProviderType.blueprint.getter(v7, v34);
  v26 = v35;
  v27 = v31;
  Blueprint.subscript.getter();
  (*(v32 + 8))(v17, v27);
  (*(v22 + 8))(v25, v30);
  (*(v18 + 32))(v21, v26, v33);
  return swift_dynamicCast();
}

void sub_1D80F7CBC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {
    sub_1D7E0E870(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {

    sub_1D81925C4();
  }
}

uint64_t sub_1D80F7F08(uint64_t a1)
{
  OUTLINED_FUNCTION_124();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_124();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_85();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_85();
  swift_getAssociatedConformanceWitness();
  v3 = *(type metadata accessor for Blueprint() - 8);
  v4 = *(v1 + 136);
  v5 = v1 + ((*(v3 + 80) + 144) & ~*(v3 + 80));

  return sub_1D80F6E80(a1, v4, v5);
}

void sub_1D80F808C()
{
  if (!qword_1ECA0CF28)
  {
    v0 = sub_1D8191944();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0CF28);
    }
  }
}

unint64_t sub_1D80F80E4()
{
  result = qword_1ECA11288;
  if (!qword_1ECA11288)
  {
    sub_1D80F808C();
    sub_1D80F8164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11288);
  }

  return result;
}

unint64_t sub_1D80F8164()
{
  result = qword_1ECA11290;
  if (!qword_1ECA11290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11290);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1D80F81E8()
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  v2 = OUTLINED_FUNCTION_50(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  OUTLINED_FUNCTION_8_4();
  sub_1D7E699A8(v0 + v5, v4);
  v6 = type metadata accessor for SwipeActionState(0);
  v7 = __swift_getEnumTagSinglePayload(v4, 1, v6) != 1;
  sub_1D7E537D8(v4, qword_1EDBB1158, type metadata accessor for SwipeActionState);
  return v7;
}

id sub_1D80F82E4()
{
  v1 = v0;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v2 = sub_1D8191E44();
  sub_1D81919E4();
  OUTLINED_FUNCTION_21_34();
  sub_1D818FD44();

  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_panGestureRecognizer);
  [v3 setEnabled_];
  [v3 setEnabled_];
  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_tapGestureRecognizer);
  result = [v4 isEnabled];
  if (result)
  {
    [v4 setEnabled_];

    return [v4 setEnabled_];
  }

  return result;
}

uint64_t sub_1D80F83EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  OUTLINED_FUNCTION_8_4();
  v4 = type metadata accessor for SwipeActionState(0);
  v5 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1 + v3, 1, v4);
  v7 = sub_1D818E994();
  v8 = v7;
  if (!EnumTagSinglePayload)
  {
    (*(*(v7 - 8) + 16))(a1, v1 + v3, v7);
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v8);
}

void sub_1D80F84B4()
{
  OUTLINED_FUNCTION_98();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_206();
  sub_1D7E1D458(0, v4, v5, MEMORY[0x1E69E6720]);
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_0();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  v20 = v0 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  OUTLINED_FUNCTION_8_4();
  sub_1D7E699A8(v20, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v12) == 1)
  {
    OUTLINED_FUNCTION_0_206();
    sub_1D7E537D8(v0, v21, v22);
    if (qword_1EDBB17D8 != -1)
    {
      OUTLINED_FUNCTION_2_134();
    }

    sub_1D81919E4();
    sub_1D818FD44();
    goto LABEL_21;
  }

  sub_1D80FFE94(v0, v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDBB17D8 != -1)
    {
      OUTLINED_FUNCTION_2_134();
    }

    sub_1D81919E4();
    OUTLINED_FUNCTION_21_34();
    sub_1D818FD44();
    goto LABEL_19;
  }

  v24 = Strong;
  v96 = v16;
  v98 = v19;
  v25 = type metadata accessor for SwipeActionRestoreState();
  v26 = *(v25 + 20);
  v27 = sub_1D818E8E4();
  v28 = [v24 cellForItemAtIndexPath_];

  v97 = v28;
  if (!v28)
  {
    if (qword_1EDBB17D8 != -1)
    {
      OUTLINED_FUNCTION_2_134();
    }

    OUTLINED_FUNCTION_1_147();
    sub_1D7E1D458(0, v32, v33, MEMORY[0x1E69E6F90]);
    v34 = OUTLINED_FUNCTION_174();
    *(v34 + 16) = xmmword_1D819FAB0;
    sub_1D818E994();
    OUTLINED_FUNCTION_7_68();
    sub_1D7E2E658(v35, v36);
    v37 = sub_1D81925B4();
    v39 = v38;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = sub_1D7E13BF4();
    *(v34 + 32) = v37;
    *(v34 + 40) = v39;
    sub_1D81919E4();
    sub_1D818FD44();

    OUTLINED_FUNCTION_3_119();
    v41 = v98;
    goto LABEL_20;
  }

  v29 = *(v3 + *(v25 + 24));
  sub_1D80F9BB0(v3 + v26, v99, v29);
  if (!*(&v100 + 1))
  {
    sub_1D80FFCDC(v99);
    v19 = v98;
    if (qword_1EDBB17D8 != -1)
    {
      OUTLINED_FUNCTION_2_134();
    }

    OUTLINED_FUNCTION_1_147();
    sub_1D7E1D458(0, v42, v43, MEMORY[0x1E69E6F90]);
    v44 = OUTLINED_FUNCTION_174();
    *(v44 + 16) = xmmword_1D819FAB0;
    sub_1D818E994();
    OUTLINED_FUNCTION_7_68();
    sub_1D7E2E658(v45, v46);
    v47 = sub_1D81925B4();
    v49 = v48;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1D7E13BF4();
    *(v44 + 32) = v47;
    *(v44 + 40) = v49;
    sub_1D81919E4();
    sub_1D818FD44();

LABEL_19:
    OUTLINED_FUNCTION_3_119();
    v41 = v19;
LABEL_20:
    sub_1D80FFE3C(v41, v40);
    goto LABEL_21;
  }

  v92 = v26;
  v94 = v25;
  v101[0] = v99[0];
  v101[1] = v99[1];
  v101[2] = v100;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v12);
  v95 = v24;
  v93 = v3;
  if (EnumTagSinglePayload)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v20 + *(v12 + 56));
    v50 = v31;
  }

  v51 = v96;
  v52 = v98;
  [*&v98[*(v12 + 40)] removeFromSuperview];
  sub_1D80F928C(v52, 1);
  [*(v52 + *(v12 + 56)) removeFromSuperview];
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  sub_1D80F8EE8(v10);
  OUTLINED_FUNCTION_25_17();
  sub_1D80FFDA8(v10, v20);
  swift_endAccess();
  v53 = v93;
  v54 = v95;
  v55 = v97;
  v96 = v31;
  sub_1D80F9D08(v101, v95, v93 + v92, v97, v31, v51, v29);
  sub_1D80FA1E0();
  sub_1D80FFD48(v51, v10, type metadata accessor for SwipeActionState);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1D80F8EE8(v10);
  OUTLINED_FUNCTION_25_17();
  sub_1D80FFDA8(v10, v20);
  swift_endAccess();
  v56 = *(v1 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_panGestureRecognizer);
  v57 = [v56 state];
  if (v57 > 5)
  {
    v81 = v94;
    if (qword_1EDBB17D8 != -1)
    {
      OUTLINED_FUNCTION_2_134();
    }

    OUTLINED_FUNCTION_1_147();
    sub_1D7E1D458(0, v82, v83, MEMORY[0x1E69E6F90]);
    v84 = OUTLINED_FUNCTION_174();
    *(v84 + 16) = xmmword_1D819FAB0;
    v85 = *(v53 + *(v81 + 28));
    v86 = sub_1D81915A4();
    v88 = v87;
    *(v84 + 56) = MEMORY[0x1E69E6158];
    *(v84 + 64) = sub_1D7E13BF4();
    *(v84 + 32) = v86;
    *(v84 + 40) = v88;
    sub_1D81919E4();
    OUTLINED_FUNCTION_21_34();
    sub_1D818FD44();

    v89 = OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_9_45(v89, v85, v90);
    v63 = v96;
  }

  else if (((1 << v57) & 0x39) != 0)
  {
    v58 = OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_9_45(v58, v59, v60);
    [v56 velocityInView_];
    v62 = sub_1D80FB198(v51, v55, v61);
    v63 = v96;
    if (qword_1EDBB17D8 != -1)
    {
      OUTLINED_FUNCTION_2_134();
    }

    OUTLINED_FUNCTION_1_147();
    sub_1D7E1D458(0, v64, v65, MEMORY[0x1E69E6F90]);
    v66 = OUTLINED_FUNCTION_174();
    *(v66 + 16) = xmmword_1D819FAB0;
    *&v99[0] = 0;
    *(&v99[0] + 1) = 0xE000000000000000;
    v67 = v62;
    if (v62)
    {
      v68 = 1702195828;
    }

    else
    {
      v68 = 0x65736C6166;
    }

    if (v62)
    {
      v69 = 0xE400000000000000;
    }

    else
    {
      v69 = 0xE500000000000000;
    }

    MEMORY[0x1DA713260](v68, v69);

    v71 = *(&v99[0] + 1);
    v70 = *&v99[0];
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = sub_1D7E13BF4();
    *(v66 + 32) = __PAIR128__(v71, v70);
    sub_1D81919E4();
    sub_1D818FD44();

    sub_1D80F9A74(v67, v51, 1, 0, 0);
    v54 = v95;
    v55 = v97;
  }

  else
  {
    v63 = v96;
    if (qword_1EDBB17D8 != -1)
    {
      OUTLINED_FUNCTION_2_134();
    }

    OUTLINED_FUNCTION_1_147();
    sub_1D7E1D458(0, v72, v73, MEMORY[0x1E69E6F90]);
    v74 = OUTLINED_FUNCTION_174();
    *(v74 + 16) = xmmword_1D819FAB0;
    v75 = *(v53 + *(v94 + 28));
    v76 = sub_1D81915A4();
    v78 = v77;
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = sub_1D7E13BF4();
    *(v74 + 32) = v76;
    *(v74 + 40) = v78;
    sub_1D81919E4();
    OUTLINED_FUNCTION_21_34();
    sub_1D818FD44();

    v79 = OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_9_45(v79, v75, v80);
  }

  sub_1D80FFE3C(v51, type metadata accessor for SwipeActionState);
  sub_1D8008794(v101);
  sub_1D80FFE3C(v98, type metadata accessor for SwipeActionState);
LABEL_21:
  OUTLINED_FUNCTION_97();
}

id sub_1D80F8E80()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_isSwipeActionEnabled);
  if ((v1 & 1) == 0)
  {
    sub_1D80F82E4();
    sub_1D7E6931C();
  }

  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_panGestureRecognizer);

  return [v2 setEnabled_];
}

uint64_t sub_1D80F8EE8(uint64_t a1)
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E699A8(v1 + v9, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1D7E537D8(v5, qword_1EDBB1158, type metadata accessor for SwipeActionState);
  }

  sub_1D80FFE94(v5, v8);
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_tapGestureRecognizer) setEnabled_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong setAllowsSelection_];
    }

    sub_1D80F90D8(v8);
  }

  return sub_1D80FFE3C(v8, type metadata accessor for SwipeActionState);
}

void sub_1D80F90D8(uint64_t a1)
{
  v1 = *(*(a1 + *(type metadata accessor for SwipeActionState(0) + 40)) + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews);
  v2 = sub_1D7E36AB8(v1);
  sub_1D8190DB4();
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1DA714420](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v6 = sub_1D7F293FC();
  }
}

id sub_1D80F91D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v6 = type metadata accessor for SwipeActionState(0);
  [*(a2 + *(v6 + 40)) removeFromSuperview];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D80F928C(a2, 0);
  }

  result = [*(a2 + *(v6 + 56)) removeFromSuperview];
  if (a4)
  {
    return a4(result);
  }

  return result;
}

void sub_1D80F928C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v75 = a1;
  v81 = type metadata accessor for SwipeActionState.NeighborData(0);
  v5 = *(v81 - 8);
  v6 = MEMORY[0x1EEE9AC00](v81);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v73 - v9;
  v11 = type metadata accessor for SwipeActionState(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v73 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v83 = v4;
  v76 = v17;
  v77 = v14;
  if ((v4 & 1) != 0 || (v22 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState, swift_beginAccess(), __swift_getEnumTagSinglePayload(v3 + v22, 1, v11)))
  {
    v23 = v75;
    goto LABEL_5;
  }

  sub_1D80FFD48(v3 + v22, v19, type metadata accessor for SwipeActionState);
  v23 = v75;
  v68 = sub_1D818E914();
  if (v68)
  {
    sub_1D80FFE3C(v19, type metadata accessor for SwipeActionState);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v68);
    *(&v73 - 2) = v69;
    v71 = sub_1D7F8F248(sub_1D8100CD0, (&v73 - 4), v70);
    if (v71)
    {
      sub_1D80FFE3C(v19, type metadata accessor for SwipeActionState);
      v23 = v75;
    }

    else
    {
      v82 = &v73;
      MEMORY[0x1EEE9AC00](v71);
      v23 = v75;
      *(&v73 - 2) = v75;
      LODWORD(v80) = sub_1D7F8F248(sub_1D8100CFC, (&v73 - 4), v72);
      sub_1D80FFE3C(v19, type metadata accessor for SwipeActionState);
      if ((v80 & 1) == 0)
      {
LABEL_5:
        v24 = UICollectionView.cell(at:)();
        if (v24)
        {
          v25 = v24;
          v4 = [v24 layer];
          [v4 setZPosition_];

          LOBYTE(v4) = v83;
        }
      }
    }
  }

  v82 = v11;
  v26 = *(v23 + *(v11 + 20));
  v79 = *(v26 + 16);
  v80 = v3;
  v73 = v5;
  if (v79)
  {
    v27 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
    v28 = v5;
    v74 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v29 = v26 + v74;
    swift_beginAccess();
    v30 = 0;
    v31 = *(v28 + 72);
    v78 = v27;
    do
    {
      sub_1D80FFD48(v29 + v31 * v30, v10, type metadata accessor for SwipeActionState.NeighborData);
      if ((v4 & 1) == 0)
      {
        v32 = v31;
        v33 = v8;
        v34 = v29;
        v35 = v80;
        v36 = v78;
        if (__swift_getEnumTagSinglePayload(v80 + v78, 1, v82))
        {
          v29 = v34;
          v8 = v33;
          v31 = v32;
        }

        else
        {
          v40 = v35 + v36;
          v41 = v76;
          sub_1D80FFD48(v40, v76, type metadata accessor for SwipeActionState);
          if (sub_1D818E914())
          {
            v29 = v34;
            v8 = v33;
            v31 = v32;
LABEL_21:
            sub_1D80FFE3C(v76, type metadata accessor for SwipeActionState);
LABEL_22:
            LOBYTE(v4) = v83;
            goto LABEL_23;
          }

          v42 = *(v41 + *(v82 + 5));
          v43 = v42 + v74;
          v44 = *(v42 + 16) + 1;
          v29 = v34;
          v8 = v33;
          v31 = v32;
          while (--v44)
          {
            v45 = v43 + v32;
            v46 = sub_1D818E914();
            v43 = v45;
            if (v46)
            {
              goto LABEL_21;
            }
          }

          v4 = v76;
          MEMORY[0x1EEE9AC00](v43);
          *(&v73 - 2) = v10;
          if (sub_1D7F8F248(sub_1D8100CFC, (&v73 - 4), v47))
          {
            goto LABEL_21;
          }

          sub_1D80FFE3C(v4, type metadata accessor for SwipeActionState);
          LOBYTE(v4) = v83;
        }
      }

      v37 = UICollectionView.cell(at:)();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 layer];
        [v39 setZPosition_];

        goto LABEL_22;
      }

LABEL_23:
      ++v30;
      sub_1D80FFE3C(v10, type metadata accessor for SwipeActionState.NeighborData);
    }

    while (v30 != v79);
  }

  v48 = *(v75 + *(v82 + 6));
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
    v51 = v73;
    v79 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v52 = v48 + v79;
    swift_beginAccess();
    v53 = 0;
    v54 = *(v51 + 72);
    while (1)
    {
      sub_1D80FFD48(v52 + v54 * v53, v8, type metadata accessor for SwipeActionState.NeighborData);
      if (v83)
      {
        goto LABEL_30;
      }

      v55 = v80;
      if (__swift_getEnumTagSinglePayload(v80 + v50, 1, v82))
      {
        goto LABEL_30;
      }

      v59 = v55 + v50;
      v60 = v77;
      sub_1D80FFD48(v59, v77, type metadata accessor for SwipeActionState);
      if ((sub_1D818E914() & 1) == 0)
      {
        v61 = *(v60 + *(v82 + 5));
        v62 = v61 + v79;
        v63 = *(v61 + 16) + 1;
        while (--v63)
        {
          v64 = v62 + v54;
          v65 = sub_1D818E914();
          v62 = v64;
          if (v65)
          {
            goto LABEL_38;
          }
        }

        v66 = v77;
        MEMORY[0x1EEE9AC00](v62);
        *(&v73 - 2) = v8;
        if (!sub_1D7F8F248(sub_1D8100CD0, (&v73 - 4), v67))
        {
          break;
        }
      }

LABEL_38:
      sub_1D80FFE3C(v77, type metadata accessor for SwipeActionState);
LABEL_39:
      ++v53;
      sub_1D80FFE3C(v8, type metadata accessor for SwipeActionState.NeighborData);
      if (v53 == v49)
      {
        goto LABEL_42;
      }
    }

    sub_1D80FFE3C(v66, type metadata accessor for SwipeActionState);
LABEL_30:
    v56 = UICollectionView.cell(at:)();
    if (v56)
    {
      v57 = v56;
      v58 = [v56 layer];
      [v58 setZPosition_];
    }

    goto LABEL_39;
  }

LABEL_42:
}

void sub_1D80F9A74(char a1, uint64_t a2, char a3, void (*a4)(void, void), uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v11 = sub_1D818E8E4();
    v12 = [v17 cellForItemAtIndexPath_];

    if (v12)
    {
      sub_1D80FF48C(v12);
      v14 = v13;
      v15 = *(a2 + *(type metadata accessor for SwipeActionState(0) + 28));
      if (a1)
      {
        v15 = v14 + v15;
      }

      sub_1D80FA5BC(v12, a2, a3 & 1, a4, a5, v15, 400.0);

      v16 = v12;
    }

    else
    {
      v16 = v17;
    }
  }
}

void sub_1D80F9BB0(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v8 = Strong;
  v9 = v3 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_dataSource;
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_11:
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return;
  }

  v10 = *(v9 + 8);
  v11 = [v8 effectiveUserInterfaceLayoutDirection];
  ObjectType = swift_getObjectType();
  (*(v10 + 8))(v17, v8, a1, ObjectType, v10);
  (*(v10 + 16))(v16, v8, a1, ObjectType, v10);
  swift_unknownObjectRelease();

  if (v11)
  {
    if (a3 <= 0.0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v17;
    }

    if (a3 <= 0.0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    if (a3 >= 0.0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v17;
    }

    if (a3 >= 0.0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v16;
    }
  }

  sub_1D80FFCDC(v13);
  v15 = v14[1];
  *a2 = *v14;
  a2[1] = v15;
  a2[2] = v14[2];
}

id sub_1D80F9D08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v68 = a1;
  v14 = sub_1D818E994();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v7;
  v18 = v7 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_dataSource;
  Strong = swift_unknownObjectWeakLoadStrong();
  v69 = v18;
  if (Strong)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 48))(&v71, a2, a3, ObjectType, v20);
    swift_unknownObjectRelease();
    v23 = v71;
    v22 = v72;
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v71 = v23;
  v72 = v22;
  v65 = v22;
  sub_1D8173114(a4, a2);
  v26 = v24;
  v27 = v25;
  v29 = v28;
  v31 = v30;
  v32 = a5;
  if (!a5)
  {
    v32 = sub_1D80FF074(a4, a2, v24, v25);
    v33 = v32;
  }

  (*(v15 + 16))(v17, a3, v14);
  sub_1D8100C28(v68, &v71);
  v34 = v32;
  v35 = a5;
  v36 = a2;
  sub_1D8111E94(v36, v17, a4, v32, &v71, a6, v26, v27, v29, v31, a7);
  if (v32)
  {
    [v36 addSubview_];
  }

  v64 = v34;
  v37 = *(a6 + *(type metadata accessor for SwipeActionState(0) + 40));
  v38 = v69;
  v39 = swift_unknownObjectWeakLoadStrong();
  v66 = v23;
  v67 = a3;
  v68 = v36;
  if (v39)
  {
    v40 = *(v38 + 8);
    v41 = swift_getObjectType();
    v42 = (*(v40 + 24))(v36, a3, v41, v40);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0;
  }

  [v37 setBackgroundColor_];

  v63 = v37;
  v43 = *&v37[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews];
  result = sub_1D7E36AB8(v43);
  v45 = result;
  for (i = 0; v45 != i; ++i)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA714420](i, v43);
    }

    else
    {
      if (i >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      result = *(v43 + 8 * i + 32);
    }

    v47 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v47;
    v50 = v47;
    v51 = sub_1D7FB685C(sub_1D8100C84, v49);
  }

  v52 = v69;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v53 = *(v52 + 8);
    v54 = swift_getObjectType();
    v55 = v67;
    v56 = (*(v53 + 40))(v68, v67, v54, v53);
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0;
    v55 = v67;
  }

  v57 = v66;
  v58 = v63;
  v63[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionEnabled] = v56 & 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v52 + 8);
    v60 = swift_getObjectType();
    (*(v59 + 32))(&v71, v68, v55, v60, v59);
    swift_unknownObjectRelease();
    v61 = v71;
  }

  else
  {
    v61 = 1;
  }

  v58[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_presentation] = v61;
  [v58 setAlpha_];

  return sub_1D8100C8C(v57);
}

void sub_1D80FA1E0()
{
  OUTLINED_FUNCTION_98();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v48 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = type metadata accessor for SwipeActionState.NeighborData(0);
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_28_0();
  v46 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for SwipeActionState(0);
  v20 = *(v6 + v19[10]);
  [v4 addSubview_];
  v49 = v4;
  [v4 setAllowsSelection_];
  [*(v0 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_tapGestureRecognizer) setEnabled_];
  v21 = *(v6 + v19[14]);
  v22 = &selRef_initWithDuration_dampingRatio_animations_;
  if (v21)
  {
    v23 = v2;
    v24 = [v21 layer];
    [v24 setZPosition_];

    v2 = v23;
    v22 = &selRef_initWithDuration_dampingRatio_animations_;
  }

  v25 = [v2 layer];
  [v25 v22[188]];

  v26 = [v20 layer];
  [v26 v22[188]];

  sub_1D80FD4E4(v49);
  v44 = v19;
  v45 = v6;
  v27 = *(*(v6 + v19[5]) + 16);
  if (v27)
  {
    OUTLINED_FUNCTION_15_42();
    v29 = *(v28 + 72);
    v30 = (v48 + 16);
    do
    {
      OUTLINED_FUNCTION_8_54();
      sub_1D80FFD48(v26, v18, v31);
      (*v30)(v12, v18, v7);
      sub_1D80FFE3C(v18, v0);
      v0 = v49;
      UICollectionView.cell(at:)();
      v32 = OUTLINED_FUNCTION_20_38();
      v33(v32);
      if (v0)
      {
        v34 = [v0 layer];

        [v34 setZPosition_];
      }

      v26 += v29;
      --v27;
    }

    while (v27);
  }

  v35 = *(*(v45 + v44[6]) + 16);
  v36 = v46;
  if (v35)
  {
    OUTLINED_FUNCTION_15_42();
    v38 = *(v37 + 72);
    v39 = (v48 + 16);
    do
    {
      OUTLINED_FUNCTION_8_54();
      sub_1D80FFD48(v26, v36, v40);
      (*v39)(v12, v36, v7);
      sub_1D80FFE3C(v36, v0);
      v0 = v49;
      UICollectionView.cell(at:)();
      v41 = OUTLINED_FUNCTION_20_38();
      v42(v41);
      if (v0)
      {
        v43 = [v0 layer];

        [v43 setZPosition_];
      }

      v26 += v38;
      --v35;
    }

    while (v35);
  }

  OUTLINED_FUNCTION_97();
}

void sub_1D80FA5BC(void *a1, uint64_t a2, char a3, void (*a4)(void, void), uint64_t a5, double a6, double a7)
{
  v151 = a7;
  v159 = a2;
  v13 = sub_1D818E994();
  v148 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v160 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v143 - v16;
  v18 = type metadata accessor for SwipeActionState.NeighborData(0);
  v147 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v163 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v143 - v21;
  v23 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v144 = a5;
    v146 = a4;
    if ((a3 & 1) != 0 && [objc_opt_self() areAnimationsEnabled])
    {
      [objc_opt_self() begin];
      v164 = 1;
    }

    else
    {
      v164 = 0;
    }

    v26 = *(v7 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_panGestureRecognizer);
    v27 = [v26 view];
    [v26 velocityInView_];
    v29 = v28;

    v30 = &selRef_attemptTransitionToState_animated_;
    v31 = [a1 contentView];
    v32 = [v31 layer];

    [v32 position];
    v34 = v33;

    v35 = 0.0;
    if (a6 - v34 != 0.0)
    {
      v35 = v29 / (a6 - v34);
    }

    v36 = fmin(v35, 50.0);
    v37 = *(v159 + v23[14]);
    v162 = a1;
    if (v37)
    {
      v38 = v37;
      v39 = v37;
    }

    else
    {
      v39 = [a1 contentView];
      v38 = 0;
    }

    v156 = v22;
    v40 = fmax(v36, -50.0);
    v41 = COERCE_DOUBLE(v38);
    [v39 bounds];
    v149 = v39;
    [v39 convertRect:Strong toCoordinateSpace:?];
    v43 = v42;
    v45 = v44;
    v158 = v23;
    v153 = v46;
    v152 = v47;
    v157 = v41;
    if (v164)
    {
      v48 = sub_1D80FF718(v40, v151);
      sub_1D80FFD48(v159, v25, type metadata accessor for SwipeActionState);
      v49 = objc_allocWithZone(type metadata accessor for SwipeActionAnimationDelegate());
      v50 = v7;
      v51 = v48;
      v52 = v146;
      v53 = v144;
      sub_1D7E19F24(v146);
      v23 = v158;
      v54 = sub_1D7FAD3CC(v25, v52, v53);
      [v51 setDelegate_];

      v30 = &selRef_attemptTransitionToState_animated_;
    }

    else
    {
      v48 = 0;
      v50 = v7;
    }

    v55 = [v162 v30[44]];
    v56 = v48;
    v161 = v50;
    sub_1D80FF850(v55, v48, a6);

    v145 = v56;
    v57 = v156;
    v58 = v159;
    if (v37)
    {
      v143 = v43;
      v59 = v45;
      v60 = (*(v159 + v23[16] + 8) - *(v159 + v23[16] + 24)) * 0.5 + a6;
      v61 = v162;
      v62 = [v162 contentView];
      [v62 frame];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      v166.origin.x = v64;
      v166.origin.y = v66;
      v166.size.width = v68;
      v166.size.height = v70;
      [v61 convertPoint:Strong toCoordinateSpace:{v60, CGRectGetMidY(v166)}];
      v72 = v71;
      if (v164)
      {
        v73 = sub_1D80FF718(v40, v151);
        v74 = v73;
      }

      else
      {
        v73 = 0;
      }

      v75 = v157;
      sub_1D80FF850(*&v157, v73, v72);

      v45 = v59;
      v43 = v143;
    }

    sub_1D80FFAB8(v58, v149, Strong, a6);
    v150 = v40;
    if (v164)
    {
      v80 = sub_1D80FF718(v40, v151);
      v81 = *&v152;
      v152 = *(v58 + v23[10]);
      sub_1D805A0EC(v80, v43, v45, *&v153, v81);
    }

    else
    {
      v152 = *(v58 + v23[10]);
      sub_1D805A494(v76, v77, v78, v79);
    }

    v82 = [v162 contentView];
    v83 = [v82 layer];

    [v83 position];
    v85 = v84;

    v86 = *(v58 + v23[7]);
    v157 = v85 - v86;
    v87 = *(v58 + v23[5]);
    v88 = *(v87 + 16);
    if (v88)
    {
      v89 = v87 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
      v162 = *(v147 + 72);
      v90 = (v148 + 16);
      v91 = sub_1D80FFB6C;
      if (v157 > 0.0)
      {
        v91 = sub_1D80FFB48;
      }

      v153 = v91;
      v154 = v17;
      v92 = v86 - a6;
      v93 = (v148 + 8);
      v155 = v13;
      do
      {
        sub_1D80FFD48(v89, v57, type metadata accessor for SwipeActionState.NeighborData);
        (*v90)(v17, v57, v13);
        sub_1D80FFE3C(v57, type metadata accessor for SwipeActionState.NeighborData);
        v94 = UICollectionView.cell(at:)();
        if (v94)
        {
          v95 = v94;
          objc_opt_self();
          v96 = swift_dynamicCastObjCClass();
          if (v96)
          {
            v97 = v96;
            v98 = v95;
            v99 = [v97 layer];
            [v99 frame];
            v101 = v100;
            v103 = v102;
            v105 = v104;
            v107 = v106;

            v167.origin.x = v101;
            v167.origin.y = v103;
            v167.size.width = v105;
            v167.size.height = v107;
            v108 = CGRectGetWidth(v167) * 0.5;
            v109 = [v97 layer];

            [v109 frame];
            v111 = v110;
            v113 = v112;
            v115 = v114;
            v117 = v116;

            v168.origin.x = v111;
            v168.origin.y = v113;
            v168.size.width = v115;
            v168.size.height = v117;
            Width = CGRectGetWidth(v168);
            v119 = v153(v108, (v157 + Width) * 0.5);
            v120 = 0;
            if (v164)
            {
              v120 = sub_1D80FF718(v150, v151);
            }

            v121 = [v97 contentView];
            v122 = v120;
            sub_1D80FF850(v121, v120, v119);

            v123 = vabdd_f64(*(v159 + v158[8]), v86);
            v124 = vabdd_f64(*(v159 + v158[9]), v86);
            if (v123 <= v124)
            {
              v123 = v124;
            }

            sub_1D80FFB90(v97, v164, 1.0 - fabs(v92 / v123));

            v17 = v154;
            v13 = v155;
            v57 = v156;
          }
        }

        (*v93)(v17, v13);
        v89 += v162;
        --v88;
      }

      while (v88);
    }

    v125 = *(v159 + v158[6]);
    v126 = *(v125 + 16);
    if (v126)
    {
      v127 = fmin(vabdd_f64(*(v159 + v158[9]), *(v159 + v158[8])), 10.0);
      v128 = v125 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
      v129 = *(v147 + 72);
      v130 = (v148 + 16);
      v131 = fabs(v157);
      v132 = (v148 + 8);
      v133 = v160;
      do
      {
        v134 = v163;
        sub_1D80FFD48(v128, v163, type metadata accessor for SwipeActionState.NeighborData);
        (*v130)(v133, v134, v13);
        sub_1D80FFE3C(v134, type metadata accessor for SwipeActionState.NeighborData);
        v135 = UICollectionView.cell(at:)();
        if (v135)
        {
          v136 = v135;
          objc_opt_self();
          v137 = swift_dynamicCastObjCClass();
          if (v137)
          {
            v138 = v137;
            v139 = v164;
            if (v127 <= v131)
            {
              sub_1D80FFB90(v152, v164, 1.0);
              v140 = 0.0;
            }

            else
            {
              sub_1D80FFB90(v152, v164, 0.0);
              v140 = 1.0;
            }

            sub_1D80FFB90(v138, v139, v140);
          }

          v133 = v160;
          (*v132)(v160, v13);
        }

        else
        {
          (*v132)(v133, v13);
        }

        v128 += v129;
        --v126;
      }

      while (v126);
    }

    else
    {
      [v152 setAlpha_];
    }

    if (v164)
    {
      [objc_opt_self() commit];
      v141 = v149;
      v142 = v145;
    }

    else
    {
      v141 = v149;
      v142 = v145;
      if (v146)
      {
        v146(1, v159);
      }
    }
  }
}

BOOL sub_1D80FB198(uint64_t a1, void *a2, double a3)
{
  v5 = sub_1D80FECB4(a2);
  v6 = type metadata accessor for SwipeActionState(0);
  v7 = *(*(a1 + v6[10]) + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated);
  v8 = (v7 ^ 1) & v5;
  if ((v7 & 1) == 0 && fabs(a3) > 50.0)
  {
    if (*(a1 + v6[7]) == *(a1 + v6[8]))
    {
      return a3 > 0.0;
    }

    else
    {
      return a3 < 0.0;
    }
  }

  return v8;
}

BOOL sub_1D80FB234(void *a1)
{
  OUTLINED_FUNCTION_0_206();
  v3 = MEMORY[0x1E69E6720];
  sub_1D7E1D458(0, v4, v5, MEMORY[0x1E69E6720]);
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57[-v8];
  OUTLINED_FUNCTION_6_84();
  sub_1D7E1D458(0, v10, v11, v3);
  v13 = OUTLINED_FUNCTION_50(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57[-v14];
  v16 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  sub_1D7E0A1A8(0, &qword_1EDBB2F40);
  v23 = *(v1 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_panGestureRecognizer);
  if (sub_1D8191CC4())
  {
    sub_1D80FB674(a1, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      OUTLINED_FUNCTION_6_84();
      sub_1D7E537D8(v15, v24, v25);
      return 0;
    }

    (*(v18 + 32))(v22, v15, v16);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      v37 = OUTLINED_FUNCTION_4_87();
      v38(v37);
      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v46 = OUTLINED_FUNCTION_4_87();
      v47(v46);
      swift_unknownObjectRelease();
      return 0;
    }

    v32 = Strong;
    type metadata accessor for SwipeActionCollectionView();
    if (swift_dynamicCastClass())
    {
      v33 = v32;
      v34 = sub_1D8082D10();

      if (v34)
      {
        v35 = OUTLINED_FUNCTION_4_87();
        v36(v35);
        swift_unknownObjectRelease();

        return 0;
      }
    }

    [v23 velocityInView_];
    if (fabs(v40) >= fabs(v39))
    {
      v48 = OUTLINED_FUNCTION_4_87();
      v49(v48);
      swift_unknownObjectRelease();

      return 0;
    }

    swift_getObjectType();
    v41 = OUTLINED_FUNCTION_11_49();
    v42(v41);
    if (v58)
    {
      OUTLINED_FUNCTION_14_44();
      if (*(v43 + 16))
      {
        v44 = OUTLINED_FUNCTION_4_87();
        v45(v44);
        swift_unknownObjectRelease();

        sub_1D8008794(v59);
        return 1;
      }

      sub_1D8008794(v59);
    }

    else
    {
      sub_1D80FFCDC(v57);
    }

    v51 = OUTLINED_FUNCTION_11_49();
    v52(v51);

    swift_unknownObjectRelease();
    v53 = OUTLINED_FUNCTION_4_87();
    v54(v53);
    if (!v58)
    {
      sub_1D80FFCDC(v57);
      return 0;
    }

    OUTLINED_FUNCTION_14_44();
    v56 = *(v55 + 16);
    sub_1D8008794(v59);
    return v56 != 0;
  }

  if ((sub_1D8191CC4() & 1) == 0)
  {
    return 0;
  }

  v26 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  OUTLINED_FUNCTION_8_4();
  sub_1D7E699A8(v1 + v26, v9);
  v27 = type metadata accessor for SwipeActionState(0);
  v28 = __swift_getEnumTagSinglePayload(v9, 1, v27) != 1;
  OUTLINED_FUNCTION_0_206();
  sub_1D7E537D8(v9, v29, v30);
  return v28;
}

void sub_1D80FB674(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7E1D458(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v41 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41[1] = v2;
    v42 = v7;
    v43 = a2;
    v44 = Strong;
    [a1 locationInView_];
    v10 = v9;
    v12 = v11;
    v13 = [v44 visibleCells];
    sub_1D7E0A1A8(0, &qword_1EDBB3110);
    v14 = sub_1D8191314();

    v45 = MEMORY[0x1E69E7CC0];
    v15 = sub_1D7E36AB8(v14);
    for (i = 0; v15 != i; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA714420](i, v14);
      }

      else
      {
        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = *(v14 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v32 = MEMORY[0x1DA714420](0, v14);
        goto LABEL_29;
      }

      v19 = [v17 contentView];
      v20 = [v18 contentView];
      [v20 convertPoint:v44 fromCoordinateSpace:{v10, v12}];
      v22 = v21;
      v24 = v23;

      LOBYTE(v20) = [v19 pointInside:0 withEvent:{v22, v24}];
      if (v20)
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }

      else
      {
      }
    }

    v14 = v45;
    v25 = sub_1D7E36AB8(v45);
    v26 = sub_1D7E36AB8(v14);
    v27 = v26;
    if (v25 > 1)
    {
      for (j = 0; v27 != j; ++j)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1DA714420](j, v14);
        }

        else
        {
          if (j >= *(v14 + 16))
          {
            goto LABEL_40;
          }

          v29 = *(v14 + 8 * j + 32);
        }

        v30 = v29;
        if (__OFADD__(j, 1))
        {
          goto LABEL_39;
        }

        if (sub_1D80FECB4(v29))
        {
          goto LABEL_30;
        }
      }

      goto LABEL_32;
    }

    if (!v26)
    {
LABEL_32:

      v39 = sub_1D818E994();
      __swift_storeEnumTagSinglePayload(v43, 1, 1, v39);
      v40 = v44;

      return;
    }

    sub_1D7E33DD8(0, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_41;
    }

    v32 = *(v14 + 32);
LABEL_29:
    v30 = v32;
LABEL_30:

    v33 = [v44 indexPathForCell_];
    if (v33)
    {
      v34 = v33;
      v35 = v42;
      sub_1D818E924();

      v36 = sub_1D818E994();
      v37 = 0;
    }

    else
    {

      v36 = sub_1D818E994();
      v37 = 1;
      v35 = v42;
    }

    v38 = v43;
    __swift_storeEnumTagSinglePayload(v35, v37, 1, v36);
    sub_1D8013D78(v35, v38);
  }

  else
  {
    v31 = sub_1D818E994();

    __swift_storeEnumTagSinglePayload(a2, 1, 1, v31);
  }
}

void sub_1D80FBB48(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      v5 = [a1 state];
      if ((v5 - 3) >= 3)
      {
        if (v5 == 2)
        {
          sub_1D80FC8A8(a1);
        }

        else if (v5 == 1)
        {
          sub_1D80FBC38(a1);
        }
      }

      else
      {
        sub_1D80FCC10(a1);
      }
    }
  }
}

void sub_1D80FBC38(void *a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v79 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  v85 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  sub_1D7E1D458(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], v3);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v79 - v20;
  v22 = sub_1D818E994();
  v86 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = Strong;
  v82 = v1;
  sub_1D80FB674(a1, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {

    v27 = &qword_1EDBBC690;
    v28 = MEMORY[0x1E6969C28];
LABEL_4:
    v29 = v28;
    v30 = v21;
LABEL_5:
    sub_1D7E537D8(v30, v27, v29);
    return;
  }

  v81 = v9;
  v31 = v86;
  (*(v86 + 32))(v24, v21, v22);
  v32 = sub_1D818E8E4();
  v33 = [v26 cellForItemAtIndexPath_];

  if (!v33)
  {
    (*(v31 + 8))(v24, v22);

    return;
  }

  v34 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  v35 = v82;
  swift_beginAccess();
  v80 = v34;
  sub_1D7E699A8(v35 + v34, v14);
  v36 = v85;
  if (__swift_getEnumTagSinglePayload(v14, 1, v85) == 1)
  {
    sub_1D7E537D8(v14, qword_1EDBB1158, type metadata accessor for SwipeActionState);
    v37 = v81;
    goto LABEL_15;
  }

  sub_1D80FFE94(v14, v18);
  sub_1D7E2E658(&qword_1EDBBC6B0, MEMORY[0x1E6969C28]);
  v38 = sub_1D8190ED4();
  v79 = v33;
  if ((v38 & 1) == 0 || (v39 = [v33 contentView], v40 = objc_msgSend(v39, sel_layer), v39, objc_msgSend(v40, sel_position), v42 = v41, v40, v42 == *&v18[*(v36 + 28)]))
  {
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D819FAB0;
    sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
    v44 = sub_1D81925B4();
    v46 = v45;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1D7E13BF4();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    sub_1D81919E4();
    sub_1D818FD44();

    sub_1D7E6931C();
    sub_1D80FFE3C(v18, type metadata accessor for SwipeActionState);
    v33 = v79;
    v37 = v81;
    v36 = v85;
LABEL_15:
    [a1 velocityInView_];
    v48 = v84;
    if (v47 == 0.0)
    {
      (*(v86 + 8))(v24, v22);
    }

    else
    {
      v49 = v47;
      v50 = v82;
      sub_1D7E699A8(v82 + v80, v6);
      if (__swift_getEnumTagSinglePayload(v6, 1, v36) != 1)
      {
        (*(v86 + 8))(v24, v22);

        v27 = qword_1EDBB1158;
        v29 = type metadata accessor for SwipeActionState;
        v30 = v6;
        goto LABEL_5;
      }

      sub_1D7E537D8(v6, qword_1EDBB1158, type metadata accessor for SwipeActionState);
      sub_1D80F9BB0(v24, v87, v49);
      if (*(&v88 + 1))
      {
        v89[0] = v87[0];
        v89[1] = v87[1];
        v89[2] = v88;
        sub_1D80F9D08(v89, v26, v24, v33, 0, v48, v49);
        sub_1D80FFD48(v48, v37, type metadata accessor for SwipeActionState);
        __swift_storeEnumTagSinglePayload(v37, 0, 1, v36);
        sub_1D80F8EE8(v37);
        v51 = v80;
        swift_beginAccess();
        sub_1D80FFDA8(v37, v50 + v51);
        swift_endAccess();
        v52 = v33;
        if (qword_1EDBB17D8 != -1)
        {
          swift_once();
        }

        v85 = qword_1EDBC6030;
        sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1D819FAC0;
        sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
        v54 = sub_1D81925B4();
        v56 = v55;
        v57 = MEMORY[0x1E69E6158];
        *(v53 + 56) = MEMORY[0x1E69E6158];
        v58 = sub_1D7E13BF4();
        *(v53 + 64) = v58;
        *(v53 + 32) = v54;
        *(v53 + 40) = v56;
        v59 = sub_1D81915A4();
        *(v53 + 96) = v57;
        *(v53 + 104) = v58;
        *(v53 + 72) = v59;
        *(v53 + 80) = v60;
        sub_1D81919E4();
        sub_1D818FD44();

        v61 = v84;
        sub_1D80FA1E0();

        sub_1D80FFE3C(v61, type metadata accessor for SwipeActionState);
        sub_1D8008794(v89);
        (*(v86 + 8))(v24, v22);
      }

      else
      {
        (*(v86 + 8))(v24, v22);

        sub_1D80FFCDC(v87);
      }
    }

    return;
  }

  if (qword_1EDBB17D8 != -1)
  {
    swift_once();
  }

  sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D819FAB0;
  sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
  v63 = sub_1D81925B4();
  v65 = v64;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  *(v62 + 64) = sub_1D7E13BF4();
  *(v62 + 32) = v63;
  *(v62 + 40) = v65;
  sub_1D81919E4();
  sub_1D818FD44();

  v66 = v82;
  v67 = v80;
  v21 = v83;
  sub_1D7E699A8(v82 + v80, v83);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v36);
  v69 = v36;
  v70 = v86;
  if (EnumTagSinglePayload)
  {
    v71 = v81;
    sub_1D7E699A8(v21, v81);
    sub_1D80F8EE8(v71);

    sub_1D80FFE3C(v18, type metadata accessor for SwipeActionState);
    (*(v70 + 8))(v24, v22);
    swift_beginAccess();
    sub_1D80FFDA8(v71, v66 + v67);
    swift_endAccess();
    v27 = qword_1EDBB1158;
    v28 = type metadata accessor for SwipeActionState;
    goto LABEL_4;
  }

  v72 = v79;
  v73 = [v79 contentView];
  v74 = [v73 layer];

  [v74 position];
  v76 = v75;

  v77 = v83;
  *&v83[*(v69 + 68)] = v76;
  sub_1D80F8EE8(v77);

  sub_1D80FFE3C(v18, type metadata accessor for SwipeActionState);
  (*(v70 + 8))(v24, v22);
  v78 = v80;
  swift_beginAccess();
  sub_1D80FFDA8(v77, v66 + v78);
  swift_endAccess();
}

void sub_1D80FC8A8(void *a1)
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v10 = sub_1D80FDB40();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
      swift_beginAccess();
      sub_1D7E699A8(v1 + v12, v5);
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
      {

        sub_1D7E537D8(v5, qword_1EDBB1158, type metadata accessor for SwipeActionState);
      }

      else
      {
        sub_1D80FFE94(v5, v8);
        [a1 translationInView_];
        if (v14 == 1.79769313e308 || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          if (qword_1EDBB17D8 != -1)
          {
            swift_once();
          }

          sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1D819FAB0;
          v17 = sub_1D81915A4();
          v19 = v18;
          *(v16 + 56) = MEMORY[0x1E69E6158];
          *(v16 + 64) = sub_1D7E13BF4();
          *(v16 + 32) = v17;
          *(v16 + 40) = v19;
          sub_1D81919E4();
          sub_1D818FD44();
        }

        else
        {
          v15 = sub_1D80FDD1C(v8, v14 + *&v8[*(v6 + 68)]);
          sub_1D80FA5BC(v11, v8, 1, 0, 0, v15, 200.0);
        }

        sub_1D80FFE3C(v8, type metadata accessor for SwipeActionState);
      }
    }

    else
    {
      v13 = v20;
    }
  }
}

id sub_1D80FCC10(void *a1)
{
  v2 = v1;
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D80FDB40();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
    swift_beginAccess();
    sub_1D7E699A8(v2 + v12, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {

      return sub_1D7E537D8(v6, qword_1EDBB1158, type metadata accessor for SwipeActionState);
    }

    sub_1D80FFE94(v6, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return sub_1D80FFE3C(v9, type metadata accessor for SwipeActionState);
    }

    v14 = Strong;
    if (*(*&v9[*(v7 + 40)] + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated))
    {
      v15 = sub_1D8059670();
      if (v15)
      {
        v16 = v15;
        memcpy(__dst, &v15[OBJC_IVAR____TtC5TeaUI15SwipeActionView_swipeAction], sizeof(__dst));
        memcpy(__src, &v16[OBJC_IVAR____TtC5TeaUI15SwipeActionView_swipeAction], sizeof(__src));
        sub_1D8008738(__dst, v45);
        sub_1D80FE18C(__src, v14);

        memcpy(v45, __src, sizeof(v45));
        sub_1D80332A0(v45);
        return sub_1D80FFE3C(v9, type metadata accessor for SwipeActionState);
      }
    }

    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDBC6030;
    sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
    v41 = v18;
    v19 = swift_allocObject();
    v40 = xmmword_1D819FAB0;
    *(v19 + 16) = xmmword_1D819FAB0;
    sub_1D818E994();
    sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
    v20 = sub_1D81925B4();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v39 = sub_1D7E13BF4();
    *(v19 + 64) = v39;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_1D81919E4();
    v42 = v17;
    sub_1D818FD44();

    v23 = [a1 view];
    [a1 velocityInView_];
    v25 = v24;

    v26 = sub_1D80FB198(v9, v11, v25);
    v27 = *(v2 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_tapGestureRecognizer);
    [v27 setEnabled_];
    if (v26)
    {
      v28 = 0xE400000000000000;
      v29 = 1702195828;
    }

    else
    {
      [v14 setAllowsSelection_];
      sub_1D80F90D8(v9);
      v29 = 0x65736C6166;
      v28 = 0xE500000000000000;
    }

    v30 = swift_allocObject();
    *(v30 + 16) = v40;
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    MEMORY[0x1DA713260](v29, v28);

    v31 = v45[0];
    v32 = v45[1];
    v33 = v39;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = v33;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    sub_1D81919E4();
    sub_1D818FD44();

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = v14;
    v35[4] = v27;

    v36 = v14;
    v37 = v27;
    sub_1D80F9A74(v26, v9, 1, sub_1D8100CC4, v35);

    sub_1D80FFE3C(v9, type metadata accessor for SwipeActionState);
  }

  return result;
}

void sub_1D80FD238(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1 && [a1 state] == 3)
    {
      sub_1D80FD2FC();
    }
  }
}

void sub_1D80FD2FC()
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E699A8(v0 + v4, v3);
  v5 = type metadata accessor for SwipeActionState(0);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v3, 1, v5);
  sub_1D7E537D8(v3, qword_1EDBB1158, type metadata accessor for SwipeActionState);
  if (v4 != 1)
  {
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    sub_1D81919E4();
    sub_1D818FD44();
    sub_1D7E6931C();
  }
}

void sub_1D80FD4E4(void *a1)
{
  v63 = sub_1D818E994();
  v2 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8190EE4();
  v65 = a1;
  v5 = [a1 visibleSupplementaryViewsOfKind_];

  sub_1D7E0A1A8(0, &qword_1EDBB3078);
  v6 = sub_1D8191314();

  v7 = sub_1D7E36AB8(v6);
  v8 = 0;
  v59 = 0;
  v54 = v6 & 0xC000000000000001;
  v55 = v7;
  v56 = v6;
  v53 = v6 + 32;
  v61 = (v2 + 8);
  while (1)
  {
    if (v8 == v55)
    {

      return;
    }

    v9 = v54;
    sub_1D7E33DD8(v8, v54 == 0, v56);
    v10 = v9 ? MEMORY[0x1DA714420](v8, v56) : *(v53 + 8 * v8);
    v11 = v10;
    v12 = __OFADD__(v8, 1);
    v13 = v8 + 1;
    if (v12)
    {
      break;
    }

    v14 = [v65 collectionViewLayout];
    [v11 frame];
    v15 = [v14 layoutAttributesForElementsInRect_];

    if (!v15)
    {

      return;
    }

    v58 = v11;
    sub_1D7E0A1A8(0, &qword_1EDBB3020);
    v16 = sub_1D8191314();

    v67 = MEMORY[0x1E69E7CC0];
    v17 = sub_1D7E36AB8(v16);
    for (i = 0; v17 != i; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA714420](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
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
        goto LABEL_58;
      }

      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
      v21 = swift_dynamicCastClass();
      if (v21 && (v22 = v21 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait, swift_beginAccess(), !*(v22 + 8)) && (v20 = v20, v66[0] = sub_1D8100B50(v20), v66[1] = v23, sub_1D7E09D14(0, &qword_1EDBB3400), v24 = sub_1D8191E74(), v20, , (v24 & 1) != 0))
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }

      else
      {
      }
    }

    v57 = v13;

    v25 = v67;
    v26 = MEMORY[0x1E69E7CC0];
    v66[0] = MEMORY[0x1E69E7CC0];
    v27 = sub_1D7E36AB8(v67);
    v28 = 0;
    v29 = v25 & 0xC000000000000001;
    v60 = v26;
    v30 = &selRef_attemptTransitionToState_animated_;
    v64 = v25 & 0xC000000000000001;
    while (v27 != v28)
    {
      if (v29)
      {
        v31 = MEMORY[0x1DA714420](v28, v25);
      }

      else
      {
        if (v28 >= *(v25 + 16))
        {
          goto LABEL_55;
        }

        v31 = *(v25 + 8 * v28 + 32);
      }

      v32 = v31;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_54;
      }

      v33 = sub_1D8100B50(v31);
      if (!v34)
      {
        goto LABEL_36;
      }

      v35 = v33;
      v36 = v34;
      v37 = [v32 representedElementCategory];
      if (v37 == 1)
      {
        v38 = [v32 indexPath];
        v39 = &selRef__visibleSupplementaryViewOfKind_atIndexPath_;
LABEL_31:
        v40 = v38;
        v41 = v62;
        sub_1D818E924();

        v42 = sub_1D818E8E4();
        (*v61)(v41, v63);
        v43 = sub_1D8100BB4(v35, v36, v42, v65, v39);

        v30 = &selRef_attemptTransitionToState_animated_;
        v29 = v64;
        if (!v43)
        {
          goto LABEL_37;
        }

        MEMORY[0x1DA713500]();
        if (*((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        sub_1D8191404();
        v60 = v66[0];
        ++v28;
      }

      else
      {
        if (v37 == 2)
        {
          v38 = [v32 indexPath];
          v39 = &selRef__visibleDecorationViewOfKind_atIndexPath_;
          goto LABEL_31;
        }

LABEL_36:

LABEL_37:
        ++v28;
      }
    }

    v44 = sub_1D8190DB4();
    v66[0] = sub_1D80E74E4(v44);
    v45 = v59;
    sub_1D80FFEF8(v66);
    v59 = v45;
    if (v45)
    {
      goto LABEL_59;
    }

    v46 = v66[0];
    v47 = sub_1D7E36AB8(v66[0]);
    v48 = 0;
    v8 = v57;
    while (v47 != v48)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1DA714420](v48, v46);
      }

      else
      {
        if (v48 >= *(v46 + 16))
        {
          goto LABEL_57;
        }

        v49 = *(v46 + 8 * v48 + 32);
      }

      v50 = v49;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_56;
      }

      v51 = [v49 v30[131]];
      [v51 setZPosition_];

      ++v48;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:

  __break(1u);
}

id sub_1D80FDB40()
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E699A8(v0 + v7, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1D7E537D8(v3, qword_1EDBB1158, type metadata accessor for SwipeActionState);
    return 0;
  }

  else
  {
    sub_1D80FFE94(v3, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_1D818E8E4();
      v8 = [v10 cellForItemAtIndexPath_];
    }

    else
    {
      v8 = 0;
    }

    sub_1D80FFE3C(v6, type metadata accessor for SwipeActionState);
  }

  return v8;
}

double sub_1D80FDD1C(uint64_t a1, double a2)
{
  v2 = a2;
  if (a2 == 1.79769313e308 || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D819FAB0;
    v23 = sub_1D81915A4();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D7E13BF4();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_1D81919E4();
    sub_1D818FD44();

    return 0.0;
  }

  else
  {
    v4 = type metadata accessor for SwipeActionState(0);
    v5 = *(a1 + v4[7]);
    if (v5 - v2 != 0.0)
    {
      v6 = *(a1 + v4[9]);
      v7 = vabdd_f64(v5, v2);
      if (v6 >= v2)
      {
        v27 = *(a1 + v4[8]);
        if (v27 > v2 && v5 - v27 != 0.0)
        {
          v28 = vabdd_f64(v5, v27);
          v29 = v28 * (log(v7 / v28) + 1.0);
          v30 = COERCE__INT64(fabs(v29)) > 0x7FEFFFFFFFFFFFFFLL;
          if (v29 == 1.79769313e308 || v30)
          {
            if (qword_1EDBB17D8 != -1)
            {
              swift_once();
            }

            sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_1D81A1B70;
            v33 = sub_1D81915A4();
            v35 = v34;
            v36 = MEMORY[0x1E69E6158];
            *(v32 + 56) = MEMORY[0x1E69E6158];
            v37 = sub_1D7E13BF4();
            *(v32 + 64) = v37;
            *(v32 + 32) = v33;
            *(v32 + 40) = v35;
            v38 = sub_1D81915A4();
            *(v32 + 96) = v36;
            *(v32 + 104) = v37;
            *(v32 + 72) = v38;
            *(v32 + 80) = v39;
            v40 = sub_1D81915A4();
            *(v32 + 136) = v36;
            *(v32 + 144) = v37;
            *(v32 + 112) = v40;
            *(v32 + 120) = v41;
            sub_1D81919E4();
            sub_1D818FD44();

            v29 = 0.0;
          }

          return v5 - v29;
        }
      }

      else if (v5 - v6 != 0.0)
      {
        v8 = vabdd_f64(v5, v6);
        v9 = v8 * (log(v7 / v8) * 0.8 + 1.0);
        v10 = COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL;
        if (v9 == 1.79769313e308 || v10)
        {
          if (qword_1EDBB17D8 != -1)
          {
            swift_once();
          }

          sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_1D81A1B70;
          v13 = sub_1D81915A4();
          v15 = v14;
          v16 = MEMORY[0x1E69E6158];
          *(v12 + 56) = MEMORY[0x1E69E6158];
          v17 = sub_1D7E13BF4();
          *(v12 + 64) = v17;
          *(v12 + 32) = v13;
          *(v12 + 40) = v15;
          v18 = sub_1D81915A4();
          *(v12 + 96) = v16;
          *(v12 + 104) = v17;
          *(v12 + 72) = v18;
          *(v12 + 80) = v19;
          v20 = sub_1D81915A4();
          *(v12 + 136) = v16;
          *(v12 + 144) = v17;
          *(v12 + 112) = v20;
          *(v12 + 120) = v21;
          sub_1D81919E4();
          sub_1D818FD44();

          v9 = 0.0;
        }

        return v5 + v9;
      }
    }
  }

  return v2;
}

uint64_t sub_1D80FE18C(void *__src, void *a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  dispatch_group_enter(*&v3[OBJC_IVAR____TtC5TeaUI18SwipeActionManager_deferGroup]);
  if ((__dst[17] & 1) == 0)
  {
    v6 = &v3[OBJC_IVAR____TtC5TeaUI18SwipeActionManager_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      memcpy(v13, __src, sizeof(v13));
      (*(v7 + 8))(a2, v13, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  v9 = swift_allocObject();
  v9[2] = v3;
  memcpy(v9 + 3, __dst, 0x48uLL);
  v9[12] = a2;
  v10 = v3;
  sub_1D8008738(__dst, v13);
  v11 = a2;
  sub_1D7E6931C();
}

void sub_1D80FE2CC(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  if ((a1 & 1) == 0)
  {
    if (qword_1EDBB17D8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v20 = sub_1D818E8E4();
  v21 = [a4 cellForItemAtIndexPath_];

  if (!v21)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
    sub_1D80F8EE8(v11);
    v27 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
    swift_beginAccess();
    sub_1D80FFDA8(v11, v19 + v27);
    swift_endAccess();
    if (qword_1EDBB17D8 == -1)
    {
LABEL_11:
      sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D819FAB0;
      sub_1D818E994();
      sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
      v29 = sub_1D81925B4();
      v31 = v30;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1D7E13BF4();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      sub_1D81919E4();
      sub_1D818FD44();

LABEL_12:

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  v22 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E699A8(v19 + v22, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1D7E537D8(v14, qword_1EDBB1158, type metadata accessor for SwipeActionState);
    [a5 setEnabled_];
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D819FAB0;
    sub_1D818E994();
    sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
    v24 = sub_1D81925B4();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D7E13BF4();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1D81919E4();
    sub_1D818FD44();

    goto LABEL_12;
  }

  sub_1D80FFE94(v14, v17);
  if (sub_1D818E914())
  {
    v32 = [v21 contentView];
    v33 = [v32 layer];

    [v33 position];
    v35 = v34;

    if (v35 == *(a2 + v15[7]))
    {
      v48 = v21;
      if (qword_1EDBB17D8 != -1)
      {
        swift_once();
      }

      sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D819FAB0;
      sub_1D818E994();
      sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
      v37 = sub_1D81925B4();
      v39 = v38;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1D7E13BF4();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      sub_1D81919E4();
      sub_1D818FD44();

      [*(a2 + v15[10]) removeFromSuperview];
      sub_1D80F928C(a2, 0);
      [*(a2 + v15[14]) removeFromSuperview];
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
      sub_1D80F8EE8(v11);

      sub_1D80FFE3C(v17, type metadata accessor for SwipeActionState);
      swift_beginAccess();
      sub_1D80FFDA8(v11, v19 + v22);
      swift_endAccess();
    }

    else
    {
      sub_1D80FFE3C(v17, type metadata accessor for SwipeActionState);
    }
  }

  else
  {
    v48 = v21;
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D819FAC0;
    sub_1D818E994();
    sub_1D7E2E658(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
    v41 = sub_1D81925B4();
    v43 = v42;
    v44 = MEMORY[0x1E69E6158];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v45 = sub_1D7E13BF4();
    *(v40 + 64) = v45;
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    v46 = sub_1D81925B4();
    *(v40 + 96) = v44;
    *(v40 + 104) = v45;
    *(v40 + 72) = v46;
    *(v40 + 80) = v47;
    sub_1D81919E4();
    sub_1D818FD44();

    sub_1D80FFE3C(v17, type metadata accessor for SwipeActionState);
  }
}

BOOL sub_1D80FECB4(void *a1)
{
  v3 = sub_1D818E994();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E699A8(v1 + v16, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    sub_1D80FFE94(v12, v15);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = [Strong indexPathForCell_];
      if (!v19)
      {
        sub_1D80FFE3C(v15, type metadata accessor for SwipeActionState);

        return 0;
      }

      v20 = v19;
      sub_1D818E924();

      (*(v4 + 32))(v9, v7, v3);
      if (sub_1D818E914())
      {
        [a1 frame];
        v21 = CGRectGetWidth(v30) * 0.5;
        v22 = [a1 contentView];
        v23 = [v22 layer];

        [v23 position];
        v25 = v24;

        sub_1D80FF48C(a1);
        v27 = v26;

        (*(v4 + 8))(v9, v3);
        sub_1D80FFE3C(v15, type metadata accessor for SwipeActionState);
        return fabs(v27 * 0.5) < vabdd_f64(v25, v21);
      }

      (*(v4 + 8))(v9, v3);
    }

    sub_1D80FFE3C(v15, type metadata accessor for SwipeActionState);
    return 0;
  }

  sub_1D7E537D8(v12, qword_1EDBB1158, type metadata accessor for SwipeActionState);
  return 0;
}

id sub_1D80FF074(void *a1, void *a2, double a3, double a4)
{
  [a1 setSelected_];
  v8 = sub_1D80FF338(a2);
  v9 = v8;
  v10 = (v8 >> 8) & 1;
  v11 = [a1 contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = UIEdgeInsetsInsetRect(v13, v15, v17, v19, a3, a4);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [a1 contentView];
  [a2 convertRect:v27 fromCoordinateSpace:{v20, v22, v24, v26}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = sub_1D80FF3BC(a1, v20, v22, v24, v26);
  [a2 setShowsVerticalScrollIndicator_];
  [a2 setShowsHorizontalScrollIndicator_];
  v37 = objc_allocWithZone(type metadata accessor for SwipeActionSnapshotView());
  v38 = v36;
  v39 = sub_1D807067C(v36);
  [v39 setFrame_];

  return v39;
}

void sub_1D80FF254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      memcpy(__dst, (a2 + OBJC_IVAR____TtC5TeaUI15SwipeActionView_swipeAction), sizeof(__dst));
      memcpy(v7, (a2 + OBJC_IVAR____TtC5TeaUI15SwipeActionView_swipeAction), sizeof(v7));
      sub_1D8008738(__dst, v9);
      sub_1D80FE18C(v7, v6);

      memcpy(v9, v7, sizeof(v9));
      sub_1D80332A0(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1D80FF338(void *a1)
{
  v2 = [a1 showsHorizontalScrollIndicator];
  v3 = [a1 showsVerticalScrollIndicator];
  [a1 setShowsHorizontalScrollIndicator_];
  [a1 setShowsVerticalScrollIndicator_];
  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v2;
}

id sub_1D80FF3BC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 layer];
  sub_1D7F2967C(a2, a3, a4, a5);
  v11 = v10;

  if (!v11)
  {
    return 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  return v13;
}

uint64_t sub_1D80FF48C(void *a1)
{
  [a1 frame];
  CGRectGetWidth(v5);
  v2 = [a1 contentView];
  v3 = [v2 layer];

  [v3 position];
  return type metadata accessor for SwipeActionState(0);
}

void sub_1D80FF560(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  dispatch_group_leave(*(a1 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_deferGroup));
  if (a2[17] == 1)
  {
    v6 = a1 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      memcpy(__dst, a2, sizeof(__dst));
      (*(v7 + 8))(a3, __dst, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

id sub_1D80FF718(double a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  v5 = *MEMORY[0x1E69797E8];
  v6 = v4;
  [v6 setFillMode_];
  v7 = ts_animationDragCoefficient();
  [v6 setMass_];
  [v6 setStiffness_];
  [v6 setDamping_];
  [v6 setInitialVelocity_];
  v8 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v9) = 1043925356;
  LODWORD(v10) = 1058273231;
  LODWORD(v11) = 1063980840;
  v12 = [v8 initWithControlPoints__:v9 :{0.0, v10, v11}];
  [v6 setTimingFunction_];

  [v6 settlingDuration];
  [v6 setDuration_];

  return v6;
}

void sub_1D80FF850(void *a1, void *a2, double a3)
{
  if (a3 == 1.79769313e308 || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    sub_1D7E1D458(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D819FAB0;
    v9 = sub_1D81915A4();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D7E13BF4();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1D81919E4();
    sub_1D818FD44();
  }

  else
  {
    v12 = [a1 layer];
    if (a2)
    {
      v5 = a2;
      [v12 position];
      sub_1D805B4E8(0x6E6F697469736F70, 0xEA0000000000782ELL, v5);
      v6 = sub_1D818ED14();
      [v5 setFromValue_];

      v7 = sub_1D818ED14();
      [v5 setToValue_];

      sub_1D80D7A40(v5, 0xD00000000000001CLL, 0x80000001D81D5B50, v12);
    }

    [v12 position];
    [v12 setPosition_];
  }
}

id sub_1D80FFAB8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for SwipeActionState(0);
  if (*(a1 + *(v8 + 28)) == a4)
  {
    return [*(a1 + *(v8 + 40)) frame];
  }

  [a2 bounds];
  return [a2 convertRect:a3 toCoordinateSpace:?];
}

double sub_1D80FFB48(double result, double a2)
{
  if (a2 >= result)
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      result = a2;
    }

    if ((~*&a2 & 0x7FF0000000000000) != 0)
    {
      return a2;
    }
  }

  return result;
}

double sub_1D80FFB6C(double result, double a2)
{
  if (result > a2)
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      result = a2;
    }

    if ((~*&a2 & 0x7FF0000000000000) != 0)
    {
      return a2;
    }
  }

  return result;
}

void sub_1D80FFB90(id a1, char a2, double a3)
{
  if (a2)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a3;
    v9[4] = sub_1D8100CB0;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1D7E64940;
    v9[3] = &block_descriptor_74;
    v7 = _Block_copy(v9);
    v8 = a1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }

  else
  {

    [a1 setAlpha_];
  }
}

uint64_t sub_1D80FFCDC(uint64_t a1)
{
  sub_1D7E09D14(0, &qword_1ECA0F390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D80FFD48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D80FFDA8(uint64_t a1, uint64_t a2)
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D80FFE3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D80FFE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeActionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D80FFEF8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7E76C38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D80FFF74(v6);
  return sub_1D8192284();
}

void sub_1D80FFF74(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1D81925A4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1D7FE74D4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1D8100180(v8, v9, a1, v5);
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
    sub_1D8100054(0, v3, 1, a1);
  }
}

void sub_1D8100054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v21 = v7;
      v22 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = [v10 layer];
        [v12 zPosition];
        v14 = v13;

        v15 = [v11 layer];
        [v15 zPosition];
        v17 = v16;

        if (v17 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v18;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v22 + 8;
      v7 = v21 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D8100180(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    v5 = v118;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v102 = v6 + 16;
      v103 = *(v6 + 2);
      while (v103 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v104 = v6;
        v6 += 16 * v103;
        v105 = *v6;
        v106 = &v102[2 * v103];
        v107 = *(v106 + 1);
        sub_1D8100898((*a3 + 8 * *v6), (*a3 + 8 * *v106), (*a3 + 8 * v107), v117);
        if (v5)
        {
          break;
        }

        if (v107 < v105)
        {
          goto LABEL_118;
        }

        if (v103 - 2 >= *v102)
        {
          goto LABEL_119;
        }

        *v6 = v105;
        *(v6 + 1) = v107;
        v108 = *v102 - v103;
        if (*v102 < v103)
        {
          goto LABEL_120;
        }

        v103 = *v102 - 1;
        sub_1D8120818(v106 + 16, v108, v106);
        *v102 = v103;
        v6 = v104;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v6 = sub_1D8120804(v6);
    goto LABEL_94;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v110 = v6;
      v8 = (*a3 + 8 * v7);
      v10 = *v8;
      v9 = v8 + 2;
      v6 = *(*a3 + 8 * v5);
      v11 = v10;
      v12 = [v6 layer];
      [v12 zPosition];
      v14 = v13;

      v15 = [v11 layer];
      [v15 zPosition];
      v17 = v16;

      v18 = v7 + 2;
      while (1)
      {
        v19 = v18;
        if (++v5 >= v4)
        {
          break;
        }

        LODWORD(v117) = v17 < v14;
        v20 = v4;
        v21 = *(v9 - 1);
        v6 = *v9;
        v22 = v21;
        v23 = [v6 layer];
        [v23 zPosition];
        v25 = v24;

        v4 = v20;
        v26 = [v22 layer];
        [v26 zPosition];
        v28 = v27;

        ++v9;
        v18 = v19 + 1;
        if (v17 < v14 == v28 >= v25)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v17 >= v14)
      {
        v6 = v110;
      }

      else
      {
        if (v5 < v7)
        {
          goto LABEL_124;
        }

        if (v7 >= v5)
        {
          v6 = v110;
        }

        else
        {
          if (v4 >= v19)
          {
            v29 = v19;
          }

          else
          {
            v29 = v4;
          }

          v30 = 8 * v29 - 8;
          v31 = v5;
          v32 = v7;
          v6 = v110;
          v33 = 8 * v7;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v35 = *(v34 + v33);
              *(v34 + v33) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v32;
            v30 -= 8;
            v33 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v36 = a3[1];
    if (v5 < v36)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_123;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v7)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v6 = v100;
    }

    v55 = *(v6 + 2);
    v56 = v55 + 1;
    if (v55 >= *(v6 + 3) >> 1)
    {
      sub_1D7EE4840();
      v6 = v101;
    }

    *(v6 + 2) = v56;
    v57 = v6 + 32;
    v58 = &v6[16 * v55 + 32];
    *v58 = v7;
    *(v58 + 1) = v5;
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v55)
    {
      while (1)
      {
        v59 = v56 - 1;
        v60 = &v57[16 * v56 - 16];
        v61 = &v6[16 * v56];
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v62 = *(v6 + 4);
          v63 = *(v6 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_59:
          if (v65)
          {
            goto LABEL_109;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_112;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_117;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v56 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v56 < 2)
        {
          goto LABEL_111;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_74:
        if (v80)
        {
          goto LABEL_114;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_116;
        }

        if (v87 < v79)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v59 - 1 >= v56)
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

        v91 = v5;
        v92 = &v57[16 * v59 - 16];
        v93 = *v92;
        v5 = v57;
        v94 = v59;
        v95 = &v57[16 * v59];
        v96 = *(v95 + 1);
        sub_1D8100898((*a3 + 8 * *v92), (*a3 + 8 * *v95), (*a3 + 8 * v96), v117);
        if (v118)
        {
          goto LABEL_102;
        }

        if (v96 < v93)
        {
          goto LABEL_104;
        }

        v97 = v6;
        v6 = *(v6 + 2);
        if (v94 > v6)
        {
          goto LABEL_105;
        }

        *v92 = v93;
        *(v92 + 1) = v96;
        if (v94 >= v6)
        {
          goto LABEL_106;
        }

        v98 = v94;
        v56 = (v6 - 1);
        sub_1D8120818(v95 + 16, &v6[-v98 - 1], v95);
        *(v97 + 2) = v6 - 1;
        v99 = v6 > 2;
        v6 = v97;
        v57 = v5;
        v5 = v91;
        if (!v99)
        {
          goto LABEL_88;
        }
      }

      v66 = &v57[16 * v56];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_107;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_108;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_110;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_113;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_121;
        }

        if (v64 < v90)
        {
          v59 = v56 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_92;
    }
  }

  v37 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_125;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v7)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v5 == v37)
  {
    goto LABEL_39;
  }

  v111 = v6;
  v112 = v7;
  v38 = *a3;
  v39 = *a3 + 8 * v5 - 8;
  v40 = v7 - v5;
  v114 = v37;
LABEL_32:
  v117 = v5;
  v41 = *(v38 + 8 * v5);
  v42 = v40;
  v115 = v39;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    v47 = [v45 layer];
    [v47 zPosition];
    v49 = v48;

    v50 = [v46 layer];
    [v50 zPosition];
    v52 = v51;

    if (v52 >= v49)
    {
LABEL_37:
      ++v5;
      v39 = v115 + 8;
      --v40;
      if ((v117 + 1) == v114)
      {
        v5 = v114;
        v6 = v111;
        v7 = v112;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v38)
    {
      break;
    }

    v53 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v53;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
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

uint64_t sub_1D8100898(void **a1, id *a2, id *a3, void **a4)
{
  v40 = a3;
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = a2 - a1;
  v8 = a3 - a2;
  if (v7 < v8)
  {
    sub_1D80E75B8(a1, a2 - a1, a4);
    v9 = &v4[v7];
    for (i = v9; ; v9 = i)
    {
      if (v4 >= v9 || v5 >= v40)
      {
        v5 = v6;
        goto LABEL_28;
      }

      v11 = *v4;
      v12 = *v5;
      v13 = v11;
      v14 = [v12 layer];
      [v14 zPosition];
      v16 = v15;

      v17 = [v13 layer];
      [v17 zPosition];
      v19 = v18;

      if (v19 >= v16)
      {
        break;
      }

      v20 = v5;
      v21 = v6 == v5++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
    }

    v20 = v4;
    v21 = v6 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v20;
    goto LABEL_13;
  }

  sub_1D80E75B8(a2, a3 - a2, a4);
  v9 = &v4[v8];
  v38 = v4;
LABEL_15:
  v22 = v5 - 1;
  --v40;
  while (v9 > v4 && v5 > v6)
  {
    v24 = v22;
    v25 = *v22;
    v26 = *(v9 - 1);
    v27 = v25;
    v28 = [v26 layer];
    [v28 zPosition];
    v30 = v29;

    v31 = [v27 layer];
    [v31 zPosition];
    v33 = v32;

    v34 = v40 + 1;
    if (v33 < v30)
    {
      v21 = v34 == v5;
      v5 = v24;
      v4 = v38;
      if (!v21)
      {
        *v40 = *v24;
        v5 = v24;
      }

      goto LABEL_15;
    }

    if (v9 != v34)
    {
      *v40 = *(v9 - 1);
    }

    --v40;
    --v9;
    v4 = v38;
    v22 = v24;
  }

LABEL_28:
  v35 = v9 - v4;
  if (v5 != v4 || v5 >= &v4[v35])
  {
    memmove(v5, v4, 8 * v35);
  }

  return 1;
}

uint64_t sub_1D8100B50(void *a1)
{
  v1 = [a1 representedElementKind];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

id sub_1D8100BB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v8 = sub_1D8190EE4();

  v9 = [a4 *a5];

  return v9;
}

unint64_t sub_1D8100C8C(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void *ShineImage.backgroundImage.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1D8100D60(uint64_t a1, char *a2, uint64_t a3, double a4, double a5)
{
  v6 = *a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 40) = v6;
  *(v5 + 48) = a3;
  return v5;
}

uint64_t sub_1D8100D7C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  type metadata accessor for ShineImage();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v0;
  *(result + 40) = 0;
  qword_1ECA112E0 = result;
  return result;
}

uint64_t static ShineImage.empty.getter()
{
  if (qword_1ECA0C3C0 != -1)
  {
    swift_once();
  }
}

uint64_t ShineImage.__deallocating_deinit()
{
  ShineImage.deinit();

  return swift_deallocClassInstance();
}

_OWORD *sub_1D8100EAC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *&v1[OBJC_IVAR___TSCardView_contentOverlayButtonView];
  if (v2 == 2)
  {
    [v3 setHidden_];
    v4 = *&v1[OBJC_IVAR___TSCardView_barView];
    OUTLINED_FUNCTION_0_207(&qword_1EDBB2BF0, MEMORY[0x1E69E7C98]);
    result = swift_allocObject();
    result[1] = xmmword_1D81A50A0;
    v6 = *&v1[OBJC_IVAR___TSCardView_expandAccessibilityAction];
    if (v6)
    {
      *(result + 4) = v6;
      v7 = v6;
      v8 = OUTLINED_FUNCTION_14_0();
      sub_1D81032D8(v8, v9);
      OUTLINED_FUNCTION_12_49();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      OUTLINED_FUNCTION_15_43();
      OUTLINED_FUNCTION_13_45();
LABEL_10:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_46();
LABEL_11:
      v18 = sub_1D818E514();
      v20 = v19;

      sub_1D810335C(v18, v20, v4);
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_20;
  }

  [v3 setHidden_];
  if (v2 - 4 >= 4)
  {
    if (v2 >= 2)
    {
      v4 = *&v1[OBJC_IVAR___TSCardView_barView];
      OUTLINED_FUNCTION_0_207(&qword_1EDBB2BF0, MEMORY[0x1E69E7C98]);
      result = swift_allocObject();
      result[1] = xmmword_1D81A5090;
      v21 = *&v1[OBJC_IVAR___TSCardView_expandAccessibilityAction];
      if (v21)
      {
        *(result + 4) = v21;
        v22 = *&v1[OBJC_IVAR___TSCardView_collapseAccessibilityAction];
        if (v22)
        {
          *(result + 5) = v22;
          v23 = v21;
          v24 = v22;
          v25 = OUTLINED_FUNCTION_14_0();
          sub_1D81032D8(v25, v26);
          OUTLINED_FUNCTION_12_49();
          v27 = swift_getObjCClassFromMetadata();
          ObjCClassFromMetadata = [objc_opt_self() bundleForClass_];
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_9_46();
          goto LABEL_11;
        }

LABEL_22:
        __break(1u);
        return result;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v4 = *&v1[OBJC_IVAR___TSCardView_barView];
    OUTLINED_FUNCTION_0_207(&qword_1EDBB2BF0, MEMORY[0x1E69E7C98]);
    result = swift_allocObject();
    result[1] = xmmword_1D81A50A0;
    v13 = *&v1[OBJC_IVAR___TSCardView_collapseAccessibilityAction];
    if (v13)
    {
      *(result + 4) = v13;
      v14 = v13;
      v15 = OUTLINED_FUNCTION_14_0();
      sub_1D81032D8(v15, v16);
      OUTLINED_FUNCTION_12_49();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      OUTLINED_FUNCTION_15_43();
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1D81032D8(MEMORY[0x1E69E7CC0], *&v1[OBJC_IVAR___TSCardView_barView]);
  if (v2 != 7)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 1;
LABEL_13:

  return [v1 setAccessibilityElementsHidden_];
}

Swift::Void __swiftcall CardView.focusGrabHandleForAccessibility()()
{
  v1 = *(v0 + OBJC_IVAR___TSCardView_barView);
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], v1);
  sub_1D8101350();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAC0;
  v3 = [v1 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D8190F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = [v1 accessibilityValue];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D8190F14();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v12;
  static Accessibility.Strings.delimitedString(_:_:)(8236, 0xE200000000000000, inited);
  v14 = v13;
  swift_setDeallocating();
  sub_1D7E5CCB0(&qword_1EDBB3400, MEMORY[0x1E69E6158]);
  v15 = *MEMORY[0x1E69DD888];
  if (v14)
  {
    OUTLINED_FUNCTION_14_0();
    v16 = sub_1D8190EE4();
  }

  else
  {
    v16 = 0;
  }

  UIAccessibilityPostNotification(v15, v16);
  swift_unknownObjectRelease();
}

void sub_1D8101350()
{
  if (!qword_1ECA112F8)
  {
    sub_1D7E5CDF0(255, &qword_1EDBB3400, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA112F8);
    }
  }
}

id sub_1D8101574(uint64_t a1, SEL *a2, char a3)
{
  OUTLINED_FUNCTION_155();
  v12 = v6(0);
  v7 = OUTLINED_FUNCTION_80();
  v10 = objc_msgSendSuper2(v8, v9, v7, v3, v12);
  [v10 *a2];
  return v10;
}

uint64_t sub_1D81016E8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D818E514();

  return v2;
}

uint64_t sub_1D81017E0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D818E514();

  return v2;
}

void sub_1D81018C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1D8190F14();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1D8101960()
{
  OUTLINED_FUNCTION_155();
  v6 = v1(0);
  v2 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1D81019F0(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2(0);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1D8101AB4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1D8101AF4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___TSCardView_onTap;
  OUTLINED_FUNCTION_2_135(qword_1EDBB38C0, MEMORY[0x1E69E7CA8]);
  v6 = v5;
  *&v1[v4] = [objc_allocWithZone(v5) init];
  v7 = OBJC_IVAR___TSCardView_onCloseTap;
  *&v1[v7] = [objc_allocWithZone(v6) init];
  v8 = &v1[OBJC_IVAR___TSCardView_expandAccessibilityActionHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v1[OBJC_IVAR___TSCardView_expandAccessibilityAction] = 0;
  v9 = &v1[OBJC_IVAR___TSCardView_collapseAccessibilityActionHandler];
  *v9 = 0;
  v9[1] = 0;
  *&v1[OBJC_IVAR___TSCardView_collapseAccessibilityAction] = 0;
  v10 = OBJC_IVAR___TSCardView_clippingView;
  v11 = objc_allocWithZone(type metadata accessor for CardView.ClippingView());
  *&v1[v10] = OUTLINED_FUNCTION_4(v11, sel_initWithFrame_);
  v12 = OBJC_IVAR___TSCardView_grabberView;
  v13 = objc_allocWithZone(type metadata accessor for CardView.GrabberView());
  *&v1[v12] = OUTLINED_FUNCTION_4(v13, sel_initWithFrame_);
  v14 = OBJC_IVAR___TSCardView_contentOverlayButtonView;
  v15 = objc_allocWithZone(type metadata accessor for CardView.ContentOverlayButtonView());
  *&v1[v14] = OUTLINED_FUNCTION_4(v15, sel_initWithFrame_);
  v16 = OBJC_IVAR___TSCardView_barView;
  v17 = objc_allocWithZone(type metadata accessor for CardView.BarView());
  *&v1[v16] = OUTLINED_FUNCTION_4(v17, sel_initWithFrame_);
  *&v1[OBJC_IVAR___TSCardView_titleView] = 0;
  v18 = &v1[OBJC_IVAR___TSCardView_layout];
  v19 = *MEMORY[0x1E69DEA68];
  v20 = *MEMORY[0x1E69DEA60];
  *v18 = xmmword_1D81BBD80;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  *&v1[OBJC_IVAR___TSCardView_contentView] = a1;
  v1[OBJC_IVAR___TSCardView_isFullscreen] = 0;
  v79 = a1;
  [v79 bounds];
  v82.receiver = v1;
  v82.super_class = ObjectType;
  v21 = ObjectType;
  v22 = objc_msgSendSuper2(&v82, sel_initWithFrame_);
  [v22 setAccessibilityContainerType_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v25 = [v24 bundleForClass_];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_46();
  v26 = sub_1D818E514();
  v28 = v27;

  v81 = v21;
  v80[0] = v22;
  v29 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
  v30 = v22;
  v31 = sub_1D8102FE8(v26, v28, v80, sel_expandCard_);
  v32 = *&v30[OBJC_IVAR___TSCardView_expandAccessibilityAction];
  *&v30[OBJC_IVAR___TSCardView_expandAccessibilityAction] = v31;

  v33 = [v24 bundleForClass_];
  OUTLINED_FUNCTION_13_45();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_46();
  v34 = sub_1D818E514();
  v36 = v35;

  v81 = v21;
  v80[0] = v30;
  v37 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
  v38 = sub_1D8102FE8(v34, v36, v80, sel_collapseCard_);
  v39 = *&v30[OBJC_IVAR___TSCardView_collapseAccessibilityAction];
  *&v30[OBJC_IVAR___TSCardView_collapseAccessibilityAction] = v38;

  v40 = OBJC_IVAR___TSCardView_clippingView;
  v41 = *&v30[OBJC_IVAR___TSCardView_clippingView];
  v42 = v30;
  [v42 addSubview_];
  [*&v30[v40] addSubview_];
  v43 = OBJC_IVAR___TSCardView_barView;
  [*&v30[v40] addSubview_];
  [*&v30[v40] addSubview_];
  v44 = OBJC_IVAR___TSCardView_contentOverlayButtonView;
  v78 = OBJC_IVAR___TSCardView_contentOverlayButtonView;
  [*&v30[v40] addSubview_];
  [*&v30[v40] setClipsToBounds_];
  v45 = [*&v30[v40] layer];
  v46 = *MEMORY[0x1E69796E8];
  [v45 setCornerCurve_];

  [*&v42[v43] setBackgroundColor_];
  [*&v42[v44] setBackgroundColor_];
  v47 = [v79 backgroundColor];
  [v42 setBackgroundColor_];

  v48 = OUTLINED_FUNCTION_7_69();
  [v48 setMasksToBounds_];

  v49 = OUTLINED_FUNCTION_7_69();
  [v49 setCornerCurve_];

  v50 = OUTLINED_FUNCTION_7_69();
  v51 = objc_opt_self();
  v52 = [v51 blackColor];
  v53 = [v52 colorWithAlphaComponent_];

  v54 = [v53 CGColor];
  [v50 setShadowColor_];

  v55 = OUTLINED_FUNCTION_7_69();
  [v55 setShadowOffset_];

  v56 = OUTLINED_FUNCTION_7_69();
  LODWORD(v57) = 1049247089;
  [v56 setShadowOpacity_];

  v58 = OUTLINED_FUNCTION_7_69();
  [v58 setShadowRadius_];

  v59 = OUTLINED_FUNCTION_7_69();
  v60 = [v51 blackColor];
  v61 = [v60 colorWithAlphaComponent_];

  v62 = [v61 CGColor];
  [v59 setBorderColor_];

  v63 = OUTLINED_FUNCTION_7_69();
  v64 = [objc_opt_self() mainScreen];
  [v64 scale];
  v66 = v65;

  [v63 setBorderWidth_];
  v67 = OBJC_IVAR___TSCardView_onTap;
  v68 = *&v42[v43];
  v69 = *&v42[OBJC_IVAR___TSCardView_onTap];
  v70 = v68;
  v71 = sub_1D7FC2BE4(v70, 1, 0);

  [v71 setDelegate_];
  v72 = *&v42[v67];
  v73 = *&v42[v78];
  v74 = v72;
  v75 = v73;
  v76 = sub_1D7FC2BE4(v75, 1, 0);

  [v76 setDelegate_];
  return v42;
}

id CardView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CardView.init(coder:)()
{
  v1 = OBJC_IVAR___TSCardView_onTap;
  OUTLINED_FUNCTION_2_135(qword_1EDBB38C0, MEMORY[0x1E69E7CA8]);
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR___TSCardView_onCloseTap;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  v5 = (v0 + OBJC_IVAR___TSCardView_expandAccessibilityActionHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___TSCardView_expandAccessibilityAction) = 0;
  v6 = (v0 + OBJC_IVAR___TSCardView_collapseAccessibilityActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___TSCardView_collapseAccessibilityAction) = 0;
  v7 = OBJC_IVAR___TSCardView_clippingView;
  v8 = objc_allocWithZone(type metadata accessor for CardView.ClippingView());
  *(v0 + v7) = OUTLINED_FUNCTION_4(v8, sel_initWithFrame_);
  v9 = OBJC_IVAR___TSCardView_grabberView;
  v10 = objc_allocWithZone(type metadata accessor for CardView.GrabberView());
  *(v0 + v9) = OUTLINED_FUNCTION_4(v10, sel_initWithFrame_);
  v11 = OBJC_IVAR___TSCardView_contentOverlayButtonView;
  v12 = objc_allocWithZone(type metadata accessor for CardView.ContentOverlayButtonView());
  *(v0 + v11) = OUTLINED_FUNCTION_4(v12, sel_initWithFrame_);
  v13 = OBJC_IVAR___TSCardView_barView;
  v14 = objc_allocWithZone(type metadata accessor for CardView.BarView());
  *(v0 + v13) = OUTLINED_FUNCTION_4(v14, sel_initWithFrame_);
  *(v0 + OBJC_IVAR___TSCardView_titleView) = 0;
  v15 = v0 + OBJC_IVAR___TSCardView_layout;
  v16 = *MEMORY[0x1E69DEA68];
  v17 = *MEMORY[0x1E69DEA60];
  *v15 = xmmword_1D81BBD80;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D81024F8()
{
  v1 = v0[OBJC_IVAR___TSCardView_isFullscreen];
  v2 = [*&v0[OBJC_IVAR___TSCardView_clippingView] layer];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = 0.0;
    [v2 setCornerRadius_];

    v5 = [v0 layer];
    [v5 setCornerRadius_];

    [*&v0[OBJC_IVAR___TSCardView_grabberView] setAlpha_];
  }

  else
  {
    v6 = &v0[OBJC_IVAR___TSCardView_layout];
    [v2 setCornerRadius_];

    v7 = [v0 layer];
    [v7 setCornerRadius_];

    v4 = 1.0;
    [*&v0[OBJC_IVAR___TSCardView_grabberView] setAlpha_];
  }

  result = *&v0[OBJC_IVAR___TSCardView_titleView];
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

Swift::Void __swiftcall CardView.layoutSubviews()()
{
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___TSCardView_grabberView];
  [v1 intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_16();
  Width = CGRectGetWidth(v36);
  v7 = &v0[OBJC_IVAR___TSCardView_layout];
  [v1 setFrame_];
  v8 = *&v0[OBJC_IVAR___TSCardView_clippingView];
  OUTLINED_FUNCTION_3_16();
  [v8 setFrame_];
  v9 = [v0 layer];
  v10 = objc_opt_self();
  v11 = [v0 layer];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [v0 layer];
  [v20 cornerRadius];
  v22 = v21;

  v23 = [v10 ts:v13 bezierPathWithPillRect:v15 cornerRadius:{v17, v19, v22}];
  v24 = [v23 CGPath];

  [v9 setShadowPath_];
  v25 = *&v0[OBJC_IVAR___TSCardView_contentView];
  OUTLINED_FUNCTION_3_16();
  [v25 setFrame_];
  v26 = *&v0[OBJC_IVAR___TSCardView_barView];
  OUTLINED_FUNCTION_3_16();
  [v26 setFrame_];
  v27 = OBJC_IVAR___TSCardView_titleView;
  v28 = *&v0[OBJC_IVAR___TSCardView_titleView];
  if (v28)
  {
    v29 = v28;
    [v25 layoutMargins];
    [v29 setLayoutMargins_];

    v30 = *&v0[v27];
    if (v30)
    {
      v31 = v30;
      OUTLINED_FUNCTION_3_16();
      [v31 setFrame_];
    }
  }

  v32 = *&v0[OBJC_IVAR___TSCardView_contentOverlayButtonView];
  [v26 frame];
  MaxY = CGRectGetMaxY(v39);
  OUTLINED_FUNCTION_3_16();
  v34 = CGRectGetWidth(v40);
  OUTLINED_FUNCTION_3_16();
  [v32 setFrame_];
}

id sub_1D8102A34(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D8190EE4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t CardView.accessibilityLabel.getter()
{
  v1 = [*(v0 + OBJC_IVAR___TSCardView_contentView) accessibilityLabel];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D8190F14();
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9_46();
    v3 = sub_1D818E514();
  }

  v5 = v3;

  return v5;
}

uint64_t (*CardView.accessibilityLabel.modify(uint64_t *a1))()
{
  *a1 = CardView.accessibilityLabel.getter();
  a1[1] = v2;
  return sub_1D7F3CB0C;
}

id CardView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id CardView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8102E14(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  if (!v3)
  {
    return 0;
  }

  LOBYTE(a1) = v3(a1);
  sub_1D7E0E10C(v3);
  return a1 & 1;
}

uint64_t sub_1D8102E8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_1D8102E14(v10, a4);

  sub_1D7E7BAAC(v10);
  return v8 & 1;
}

Swift::Bool __swiftcall CardView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  objc_opt_self();
  result = 1;
  if (swift_dynamicCastObjCClass())
  {
    v4 = [(objc_class *)shouldRecognizeSimultaneouslyWith.super.isa view];
    if (v4)
    {
      v5 = v4;

      if (v5 == v2)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1D8102FE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1D8190EE4();

  v8 = a3[3];
  if (v8)
  {
    v9 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1D8192614();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 initWithName:v7 target:v14 selector:a4];

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1D8103154()
{
  sub_1D81036C8();
  swift_arrayDestroy();
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D810326C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D810329C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

void sub_1D81032D8(uint64_t a1, void *a2)
{
  sub_1D7E0A1A8(0, &unk_1EDBB3040);
  v3 = sub_1D8191304();

  [a2 setAccessibilityCustomActions_];
}

void sub_1D810335C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setAccessibilityValue_];
}

uint64_t sub_1D81033C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_55();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v10);
  v13 = OBJC_IVAR___TSCardView_titleView;
  v14 = *&a2[OBJC_IVAR___TSCardView_titleView];
  if (v14)
  {
    [v14 removeFromSuperview];
  }

  v15 = (*(a4 + 8))(a3, a4);
  v16 = *&a2[OBJC_IVAR___TSCardView_grabberView];
  [*&a2[OBJC_IVAR___TSCardView_clippingView] insertSubview:v15 aboveSubview:v16];
  v17 = *&a2[v13];
  *&a2[v13] = v15;
  v18 = v15;

  type metadata accessor for CardViewTitleView();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    [*(v19 + OBJC_IVAR____TtC5TeaUI17CardViewTitleView_closeAffordanceButton) addTarget:*&a2[OBJC_IVAR___TSCardView_onCloseTap] action:sel_handleAction forControlEvents:64];
  }

  [v16 setHidden_];
  [a2 setNeedsLayout];

  return (*(v8 + 8))(v12, a3);
}

uint64_t sub_1D81035A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_55();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v10);
  v13 = *(a2 + OBJC_IVAR___TSCardView_barView);
  (*(a4 + 8))(v16, a3, a4);
  v14 = v16[0];

  [v13 setBackgroundColor_];
  return (*(v8 + 8))(v12, a3);
}

void sub_1D81036C8()
{
  if (!qword_1ECA11378)
  {
    sub_1D7E0A1A8(255, &qword_1ECA0ED10);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11378);
    }
  }
}

uint64_t FloatingTabBarSidebarImpression.sessionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_sessionIdentifier);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D81037BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v12 = *a4;
  v13 = *a5;
  *(v8 + 16) = a1;
  v14 = OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_startDate;
  v15 = sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v17 = *(v16 + 32);
  v17(v8 + v14, a2, v15);
  v17(v8 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_endDate, a3, v15);
  *(v8 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_startTrigger) = v12;
  *(v8 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_endTrigger) = v13;
  v18 = (v8 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_sessionIdentifier);
  *v18 = a6;
  v18[1] = a7;
  v19 = (v8 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_metadata);
  v20 = a8[1];
  *v19 = *a8;
  v19[1] = v20;
  return v8;
}

uint64_t FloatingTabBarSidebarImpression.deinit()
{
  v1 = OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_startDate;
  v2 = sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_endDate, v2);

  sub_1D7E7BAAC(v0 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_metadata);
  return v0;
}

double BlueprintImpression.init(blueprint:item:impression:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8();
  (*(v8 + 32))(a4, a1);
  v9 = type metadata accessor for BlueprintImpression();
  v10 = v9[13];
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_8();
  (*(v11 + 32))(a4 + v10, a2);
  v12 = OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_startDate;
  v13 = v9[14];
  v14 = sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v16 = *(v15 + 16);
  v16(a4 + v13, a3 + v12, v14);
  v16(a4 + v9[15], a3 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_endDate, v14);
  *(a4 + v9[16]) = *(a3 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_startTrigger);
  *(a4 + v9[17]) = *(a3 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_endTrigger);
  v18 = *(a3 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_sessionIdentifier);
  v17 = *(a3 + OBJC_IVAR____TtC5TeaUI31FloatingTabBarSidebarImpression_sessionIdentifier + 8);
  sub_1D8190DB4();

  v19 = (a4 + v9[18]);
  *v19 = v18;
  v19[1] = v17;
  v20 = (a4 + v9[19]);
  result = 0.0;
  *v20 = 0u;
  v20[1] = 0u;
  return result;
}

uint64_t sub_1D8103BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t FloatingTabBarSidebarActiveImpression.sessionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_sessionIdentifier);
  sub_1D8190DB4();
  return v1;
}

uint64_t FloatingTabBarSidebarActiveImpression.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata;
  swift_beginAccess();
  return sub_1D7E7B91C(v1 + v3, a1);
}

uint64_t FloatingTabBarSidebarActiveImpression.metadata.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata;
  OUTLINED_FUNCTION_2_136();
  sub_1D7E5C8DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D8103D5C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v12 = (v6 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata);
  *v12 = 0u;
  v12[1] = 0u;
  *(v6 + 16) = a1;
  v13 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_startDate;
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  (*(v14 + 32))(v6 + v13, a2);
  *(v6 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_startTrigger) = v11;
  v15 = (v6 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_sessionIdentifier);
  *v15 = a4;
  v15[1] = a5;
  v16 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata;
  OUTLINED_FUNCTION_2_136();
  sub_1D7E5C8DC(a6, v6 + v16);
  swift_endAccess();
  return v6;
}

uint64_t FloatingTabBarSidebarActiveImpression.deinit()
{
  v1 = OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_startDate;
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  (*(v2 + 8))(v0 + v1);

  sub_1D7E7BAAC(v0 + OBJC_IVAR____TtC5TeaUI37FloatingTabBarSidebarActiveImpression_metadata);
  return v0;
}

uint64_t sub_1D8103ED8(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8103F5C()
{
  result = sub_1D818E754();
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

uint64_t sub_1D810405C()
{
  result = sub_1D818E754();
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

uint64_t sub_1D810413C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 401))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1D810417C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 400) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 401) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 401) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*DownloadButton.handler.modify(void *a1))(void **, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_13_0(v3, OBJC_IVAR____TtC5TeaUI14DownloadButton_handler);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D81042C4;
}

uint64_t sub_1D81042C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_56();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D8104334(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_56();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DownloadButton.delegate.modify(void *a1))(void **, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_13_0(v3, OBJC_IVAR____TtC5TeaUI14DownloadButton_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D81068B4;
}

uint64_t sub_1D8104454@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_8_4();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1D81044A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return DownloadButton.dataProvider.setter(v2, v1);
}

uint64_t DownloadButton.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI14DownloadButton_dataProvider;
  OUTLINED_FUNCTION_56();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D8104544();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8104544()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC5TeaUI14DownloadButton_dataProvider];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    v6(ObjectType, v4);
    sub_1D818F1A4();

    sub_1D8104888(v17[0]);
    v6(ObjectType, v4);
    sub_1D7E11E0C();
    v7 = sub_1D8191AB4();
    *(swift_allocObject() + 16) = v1;
    v8 = v1;
    sub_1D818F1B4();

    sub_1D7E0E768(v17, v16);
    v9 = OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadProgressDisposable;
    swift_beginAccess();
    sub_1D8106828(v16, v8 + v9);
    swift_endAccess();
    v10 = *(v4 + 8);
    v10(ObjectType, v4);
    sub_1D818F1A4();

    v11 = *&v16[0];
    if (*&v16[0] >> 62)
    {
      if (*&v16[0] >> 62 != 1 && *&v16[0] != 0x8000000000000000)
      {
        [v8 setHidden_];
        *(v8 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) = 0;
        sub_1D8105090();
        goto LABEL_8;
      }

      [v8 setHidden_];
      *(v8 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) = 0;
    }

    else
    {
      [v8 setHidden_];
      *(v8 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) = 1;
    }

    sub_1D8105090();
    sub_1D8106894(v11);
LABEL_8:
    v10(ObjectType, v4);
    v12 = sub_1D8191AB4();
    *(swift_allocObject() + 16) = v8;
    v13 = v8;
    sub_1D818F1B4();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    sub_1D7E17C84(v16, v15);
    v14 = OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadStateDisposable;
    swift_beginAccess();
    sub_1D8106828(v15, v13 + v14);
    return swift_endAccess();
  }

  return result;
}

id sub_1D8104888(double a1)
{
  if (a1 >= 1.0)
  {
    return [*(v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer) setStrokeEnd_];
  }

  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  return [*(v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer) setStrokeEnd_];
}

id sub_1D81048F8(void *a1, id a2)
{
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1 || *a1 == 0x8000000000000000)
    {
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  [a2 setHidden_];
  *(a2 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) = v5;
  return sub_1D8105090();
}

void (*DownloadButton.dataProvider.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_13_0(v3, OBJC_IVAR____TtC5TeaUI14DownloadButton_dataProvider);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D81049EC;
}

void sub_1D81049EC(void **a1, char a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_19_0();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1D8104544();
  }

  free(v3);
}

id DownloadButton.imageTintColor.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14DownloadButton_imageTintColor;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);

  return v2;
}

id sub_1D8104AB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI14DownloadButton_imageTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void DownloadButton.imageTintColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI14DownloadButton_imageTintColor;
  OUTLINED_FUNCTION_56();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1D8104BA8();
}

void sub_1D8104BA8()
{
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC5TeaUI14DownloadButton_imageTintColor;
    swift_beginAccess();
    [v2 setTintColor_];
  }
}

void (*DownloadButton.imageTintColor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D8104C7C;
}

void sub_1D8104C7C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D8104BA8();
  }
}

id DownloadButton.progressTintColor.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressTintColor;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);

  return v2;
}

id sub_1D8104CF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1D8104D9C(void *a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  OUTLINED_FUNCTION_56();
  v8 = *(v3 + v7);
  *(v3 + v7) = a1;
  v9 = a1;

  sub_1D8104FB0(a3, a2);
}

void (*DownloadButton.progressTintColor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D8104E64;
}

void sub_1D8104E78(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D8104FB0(a3, a4);
  }
}

id DownloadButton.trackTintColor.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14DownloadButton_trackTintColor;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);

  return v2;
}

id sub_1D8104F08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI14DownloadButton_trackTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1D8104FB0(void *a1, uint64_t *a2)
{
  v3 = *(v2 + *a1);
  v4 = *a2;
  OUTLINED_FUNCTION_8_4();
  v5 = [*(v2 + v4) CGColor];
  [v3 setStrokeColor_];
}

void (*DownloadButton.trackTintColor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D810507C;
}

id sub_1D8105090()
{
  if (v0[OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState])
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = &OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadingImage;
  if (!v0[OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState])
  {
    v2 = &OBJC_IVAR____TtC5TeaUI14DownloadButton_notDownloadingImage;
  }

  [v0 setImage:*&v0[*v2] forState:0];
  *&v3 = v1;
  [*&v0[OBJC_IVAR____TtC5TeaUI14DownloadButton_progressBackgroundLayer] setOpacity_];
  v4 = *&v0[OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer];
  *&v5 = v1;

  return [v4 setOpacity_];
}

id DownloadButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *DownloadButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  swift_getObjectType();
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI14DownloadButton_handler);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI14DownloadButton_delegate);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI14DownloadButton_dataProvider);
  v1 = OBJC_IVAR____TtC5TeaUI14DownloadButton_imageTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 grayColor];
  v3 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressTintColor;
  *(v0 + v3) = [v2 grayColor];
  v4 = OBJC_IVAR____TtC5TeaUI14DownloadButton_trackTintColor;
  v5 = [v2 grayColor];
  v6 = [v5 colorWithAlphaComponent_];

  *(v0 + v4) = v6;
  v7 = OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadingImage;
  if (qword_1ECA0C360 != -1)
  {
    OUTLINED_FUNCTION_3_120();
    swift_once();
  }

  v8 = qword_1ECA2C550;
  *(v0 + v7) = qword_1ECA2C550;
  v9 = OBJC_IVAR____TtC5TeaUI14DownloadButton_notDownloadingImage;
  v10 = qword_1ECA0C358;
  v11 = v8;
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_2_137();
    swift_once();
  }

  v12 = qword_1ECA2C548;
  *(v0 + v9) = qword_1ECA2C548;
  v13 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressBackgroundLayer;
  v14 = objc_allocWithZone(MEMORY[0x1E69794A0]);
  v15 = v12;
  *(v0 + v13) = [v14 init];
  v16 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) = 0;
  v17 = v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadProgressDisposable;
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadStateDisposable;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = OUTLINED_FUNCTION_80();
  v22 = objc_msgSendSuper2(v20, v21, v19);
  v23 = *&v22[OBJC_IVAR____TtC5TeaUI14DownloadButton_notDownloadingImage];
  v24 = v22;
  [v24 setImage:v23 forState:0];
  [v24 addTarget:v24 action:sel_startingButtonTappedWithSender_ forControlEvents:64];
  v25 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressBackgroundLayer;
  v26 = *&v24[OBJC_IVAR____TtC5TeaUI14DownloadButton_progressBackgroundLayer];
  [v24 bounds];
  [v26 setFrame_];

  [*&v24[v25] setLineWidth_];
  v27 = *&v24[v25];
  v28 = [v2 clearColor];
  v29 = [v28 CGColor];

  [v27 setFillColor_];
  v30 = *&v24[v25];
  v31 = OBJC_IVAR____TtC5TeaUI14DownloadButton_trackTintColor;
  OUTLINED_FUNCTION_8_4();
  v32 = *&v24[v31];
  v33 = v30;
  v34 = [v32 CGColor];
  [v33 setStrokeColor_];

  [*&v24[v25] setOpacity_];
  v35 = *MEMORY[0x1E6979E78];
  [*&v24[v25] setLineCap_];
  v36 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer;
  v37 = *&v24[OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer];
  [v24 bounds];
  [v37 setFrame_];

  [*&v24[v36] setLineWidth_];
  v38 = *&v24[v36];
  v39 = [v2 clearColor];
  v40 = [v39 CGColor];

  [v38 setFillColor_];
  v41 = *&v24[v36];
  v42 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressTintColor;
  OUTLINED_FUNCTION_8_4();
  v43 = *&v24[v42];
  v44 = v41;
  v45 = [v43 CGColor];
  [v44 setStrokeColor_];

  [*&v24[v36] setOpacity_];
  [*&v24[v36] setLineCap_];
  [*&v24[v36] setStrokeEnd_];
  v46 = [v24 layer];
  [v46 addSublayer_];

  v47 = [v24 layer];
  [v47 addSublayer_];

  return v24;
}

void sub_1D810576C()
{
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI14DownloadButton_handler);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI14DownloadButton_delegate);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI14DownloadButton_dataProvider);
  v1 = OBJC_IVAR____TtC5TeaUI14DownloadButton_imageTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 grayColor];
  v3 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressTintColor;
  *(v0 + v3) = [v2 grayColor];
  v4 = OBJC_IVAR____TtC5TeaUI14DownloadButton_trackTintColor;
  v5 = [v2 grayColor];
  v6 = [v5 colorWithAlphaComponent_];

  *(v0 + v4) = v6;
  v7 = OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadingImage;
  if (qword_1ECA0C360 != -1)
  {
    OUTLINED_FUNCTION_3_120();
    swift_once();
  }

  v8 = qword_1ECA2C550;
  *(v0 + v7) = qword_1ECA2C550;
  v9 = OBJC_IVAR____TtC5TeaUI14DownloadButton_notDownloadingImage;
  v10 = qword_1ECA0C358;
  v11 = v8;
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_2_137();
    swift_once();
  }

  v12 = qword_1ECA2C548;
  *(v0 + v9) = qword_1ECA2C548;
  v13 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressBackgroundLayer;
  v14 = objc_allocWithZone(MEMORY[0x1E69794A0]);
  v15 = v12;
  *(v0 + v13) = [v14 init];
  v16 = OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) = 0;
  v17 = v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadProgressDisposable;
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadStateDisposable;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D81059CC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_handler;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = *(v2 + 8);
  v5 = v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_dataProvider;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return swift_unknownObjectRelease();
  }

  v6 = *(v5 + 8);
  v7 = OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState;
  if ((*(v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) & 1) == 0)
  {
    swift_getObjectType();
    ObjectType = swift_getObjectType();
    v30 = *(v6 + 24);
    v15 = v30();
    v16 = (*(v4 + 8))(v15);
    v18 = v17;

    if (v18)
    {
      v19 = v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        v21 = swift_getObjectType();
        (*(v20 + 8))(v1, v16, v21, v20);
        swift_unknownObjectRelease();
      }

      sub_1D7FCB664(v16, 1);
      goto LABEL_13;
    }

    *(v1 + v7) = 1;
    sub_1D8105090();
    v22 = v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_13:
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v23 = *(v22 + 8);
    v24 = swift_getObjectType();
    v25 = (v30)(ObjectType, v6);
    (*(v23 + 16))(v1, v25, v26, v24, v23);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_buttonState) = 0;
  sub_1D8105090();
  v8 = v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    v29 = swift_getObjectType();
    v10 = swift_getObjectType();
    v11 = *(v6 + 24);
    v12 = v11(v10, v6);
    (*(v9 + 24))(v1, v12, v13, v29, v9);

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v6 + 24);
  }

  swift_getObjectType();
  v27 = swift_getObjectType();
  v28 = v11(v27, v6);
  (*(v4 + 16))(v28);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DownloadButton.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = sub_1D8105EF4();
  v2 = [v1 CGPath];

  v3 = [v0 imageView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setBounds_];
  }

  v5 = *&v0[OBJC_IVAR____TtC5TeaUI14DownloadButton_progressLayer];
  [v0 bounds];
  [v5 setFrame_];
  v6 = v2;
  [v5 setPath_];
  [v5 strokeEnd];
  [v5 setStrokeEnd_];
  v7 = *&v0[OBJC_IVAR____TtC5TeaUI14DownloadButton_progressBackgroundLayer];
  [v0 bounds];
  [v7 setFrame_];
  [v7 setPath_];
}

id sub_1D8105EF4()
{
  [v0 bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);
  [v0 bounds];
  v7 = CGRectGetWidth(v13) / 2.2;
  v8 = [objc_opt_self() bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v7 clockwise:{-1.57079633, 4.71238898}];

  return v8;
}

Swift::Void __swiftcall DownloadButton.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_tintColorDidChange);
  sub_1D8105090();
}

uint64_t sub_1D8106104()
{
  sub_1D7E166A0(v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_handler);
  sub_1D7E166A0(v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_delegate);
  sub_1D7E166A0(v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_dataProvider);

  sub_1D8106710(v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadProgressDisposable);
  v1 = v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadStateDisposable;

  return sub_1D8106710(v1);
}

id DownloadButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DownloadButton.prepareForReuse()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadProgressDisposable;
  OUTLINED_FUNCTION_8_4();
  if (*(v2 + 24))
  {
    v3 = OUTLINED_FUNCTION_12_3();
    sub_1D7E0E768(v3, v4);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1D818ED94();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v5 = v1 + OBJC_IVAR____TtC5TeaUI14DownloadButton_downloadStateDisposable;
  OUTLINED_FUNCTION_8_4();
  if (*(v5 + 24))
  {
    sub_1D7E0E768(v5, v6);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1D818ED94();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }
}

unint64_t get_enum_tag_for_layout_string_5TeaUI14DownloadButtonC0C5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D8106500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1D8106554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D81065A4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DownloadButton.ButtonState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D81066BC()
{
  result = qword_1ECA113E8;
  if (!qword_1ECA113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA113E8);
  }

  return result;
}

uint64_t sub_1D8106710(uint64_t a1)
{
  sub_1D810676C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D810676C()
{
  if (!qword_1EDBBC550)
  {
    sub_1D81067C4();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC550);
    }
  }
}

unint64_t sub_1D81067C4()
{
  result = qword_1EDBBC558;
  if (!qword_1EDBBC558)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBC558);
  }

  return result;
}

uint64_t sub_1D8106828(uint64_t a1, uint64_t a2)
{
  sub_1D810676C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D8106894(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

double DurationType.duration.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E754();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  (*(a2 + 16))(a1, a2);
  sub_1D818E724();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v10, v4);
  (*(a2 + 8))(a1, a2);
  sub_1D818E724();
  v15 = v14;
  v13(v8, v4);
  return v12 - v15;
}

uint64_t == infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = sub_1D8190F14();
  v6 = v5;

  v7 = [a2 path];
  v8 = sub_1D8190F14();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8192634();
  }

  return v12 & 1;
}

uint64_t MastheadViewLayoutOptions.FloatingTabBarOptions.init(isSidebarVisible:titleViewLayout:floatingTabBarHeight:navigationBarHeightExtended:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *a2;
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a3;
  *(a4 + 17) = v5;
  return result;
}

__n128 MastheadViewLayoutOptions.floatingTabBarOptions.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[18].n128_u16[0];
  result = v1[17];
  *a1 = result;
  a1[1].n128_u16[0] = v2;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for MastheadViewLayoutOptions.FloatingTabBarOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__C::UIRectCorner __swiftcall UIRectCorner.init(_:)(__C::CACornerMask a1)
{
  if ((a1.rawValue & 8) == 0)
  {
    if ((a1.rawValue & 2) != 0)
    {
      v1.rawValue = 2;
      if ((a1.rawValue & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v1.rawValue = 0;
    if ((a1.rawValue & 4) != 0)
    {
LABEL_12:
      v1.rawValue |= 4;
      goto LABEL_13;
    }

LABEL_7:
    if ((a1.rawValue & 1) == 0)
    {
      return v1;
    }

    return (v1.rawValue | 1);
  }

  if ((a1.rawValue & 2) == 0)
  {
    v1.rawValue = 8;
    if ((a1.rawValue & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v1.rawValue = 10;
  if ((a1.rawValue & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((a1.rawValue & 1) != 0 && (v1.rawValue & 1) == 0)
  {
    return (v1.rawValue | 1);
  }

  return v1;
}

double sub_1D8106DB4()
{
  result = *MEMORY[0x1E69DEA60];
  qword_1ECA113F0 = *MEMORY[0x1E69DEA60];
  return result;
}

uint64_t DockContainerViewController.rootViewController.getter()
{
  OUTLINED_FUNCTION_10();

  sub_1D818F534();

  return v1;
}

uint64_t sub_1D8106E4C(void *a1)
{
  OUTLINED_FUNCTION_10();

  v2 = a1;
  sub_1D818F544();
}

uint64_t DockContainerViewController.$rootViewController.getter()
{
  OUTLINED_FUNCTION_10();

  v0 = sub_1D818F554();

  return v0;
}

void sub_1D8106F0C(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1D818F834();
  if (v7)
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(ObjectType, v8);

    sub_1D803ABD8();
    sub_1D818F184();
  }

  v4 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode;
  LOBYTE(v7) = *(v1 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode);
  sub_1D8107018(&v7);
  if (v2 == 2 && *(v1 + v4) == 1)
  {
    v5 = *MEMORY[0x1E69DD8E8];
    v6 = sub_1D81070CC();
    UIAccessibilityPostNotification(v5, v6);
  }
}

void sub_1D8107018(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_1D81070CC();
  [(UIView *)v2 setAccessibilityElementsHidden:v1 == 2];

  v3 = DockContainerViewController.rootViewController.getter();
  v4 = [v3 view];

  if (v4)
  {
    [v4 setAccessibilityElementsHidden_];
  }

  else
  {
    __break(1u);
  }
}

UIView *sub_1D81070CC()
{
  v1 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView);
  }

  else
  {
    v4 = v0;
    v5 = sub_1D8108368();
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 8))(ObjectType, v7);

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1D8108DB8(v11);
    }

    else
    {
      DockContainerViewController.configureLegacyDockGestures(on:)(v9);
    }

    v13 = [(UIView *)v9 layer];
    [(CALayer *)v13 setMasksToBounds:1];

    v14 = [(UIView *)v9 layer];
    [(CALayer *)v14 setMaskedCorners:3];

    v15 = [(UIView *)v9 layer];
    if (qword_1ECA0C3C8 != -1)
    {
      swift_once();
    }

    [(CALayer *)v15 setCornerRadius:*&qword_1ECA113F0];

    v16 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

void sub_1D810727C(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode);
  *(v1 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode) = *a1;
  v3 = v2;
  sub_1D8106F0C(&v3);
}

id sub_1D81072B8()
{
  v1 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController_dockView) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id DockContainerViewController.init(rootViewController:lazyDockableViewController:commandCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode] = 0;
  v11 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController_dockView;
  *&v5[v11] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  *&v5[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView] = 0;
  v12 = &v5[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___expandedViewController];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController__rootViewController;
  swift_beginAccess();
  v19 = a1;
  sub_1D8107514();
  swift_allocObject();
  v14 = a1;
  *&v5[v13] = sub_1D818F514();
  swift_endAccess();
  *&v5[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_lazyDockableViewController] = a2;
  v15 = &v5[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_commandCenter];
  *v15 = a3;
  v15[1] = a4;
  v18.receiver = v5;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);

  return v16;
}

void sub_1D8107514()
{
  if (!qword_1EDBBC488)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31B0);
    v0 = sub_1D818F564();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC488);
    }
  }
}

void sub_1D810757C()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController_dockView;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___expandedViewController);
  *v2 = 0;
  v2[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall DockContainerViewController.viewDidLoad()()
{
  v53.receiver = v0;
  v53.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v53, sel_viewDidLoad);
  v1 = OUTLINED_FUNCTION_10_55();
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = OUTLINED_FUNCTION_10_55();
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v5 setOpaque_];

  v7 = *&v0[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_dockView];
  v8 = [v3 blackColor];
  [v7 setBackgroundColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = OUTLINED_FUNCTION_10_55();
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v9 addSubview_];

  v11 = sub_1D81072B8();
  [v11 setActive_];

  v12 = [v7 widthAnchor];
  v13 = OUTLINED_FUNCTION_10_55();
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v13 widthAnchor];

  v16 = OUTLINED_FUNCTION_13_46();
  OUTLINED_FUNCTION_14_3();

  v17 = [v7 leadingAnchor];
  v18 = OUTLINED_FUNCTION_10_55();
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = OUTLINED_FUNCTION_13_46();
  OUTLINED_FUNCTION_14_3();

  v22 = [v7 bottomAnchor];
  v23 = OUTLINED_FUNCTION_10_55();
  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = v23;
  v25 = [v23 bottomAnchor];

  v26 = OUTLINED_FUNCTION_13_46();
  OUTLINED_FUNCTION_14_3();

  v27 = DockContainerViewController.rootViewController.getter();
  [v0 addChildViewController_];

  v28 = DockContainerViewController.rootViewController.getter();
  [v28 didMoveToParentViewController_];

  v29 = DockContainerViewController.rootViewController.getter();
  v30 = [v29 view];

  if (!v30)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = OUTLINED_FUNCTION_10_55();
  if (!v31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = v31;
  [v31 addSubview_];

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = [v30 leadingAnchor];
  v34 = OUTLINED_FUNCTION_10_55();
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = OUTLINED_FUNCTION_12_50();
  OUTLINED_FUNCTION_9_47();

  v38 = [v30 topAnchor];
  v39 = OUTLINED_FUNCTION_10_55();
  if (!v39)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v39;
  v41 = [v39 topAnchor];

  v42 = OUTLINED_FUNCTION_12_50();
  OUTLINED_FUNCTION_9_47();

  v43 = [v30 trailingAnchor];
  v44 = OUTLINED_FUNCTION_10_55();
  if (v44)
  {
    v45 = v44;
    v46 = [v44 trailingAnchor];

    v47 = OUTLINED_FUNCTION_12_50();
    OUTLINED_FUNCTION_9_47();

    v48 = [v30 bottomAnchor];
    v49 = [v7 topAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    OUTLINED_FUNCTION_9_47();
    v51 = [v30 layer];
    [v51 setMasksToBounds_];

    v52 = [v30 layer];
    [v52 setMaskedCorners_];

    sub_1D8107C08();
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1D8107C08()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController_commandCenter + 8);
  ObjectType = swift_getObjectType();
  if (qword_1EDBB3738 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBB3740;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  CommandCenterType.registerHandler<A>(for:handle:)(v3, sub_1D810A3F0, v4, ObjectType, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (qword_1EDBB3720 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDBB3728;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  CommandCenterType.registerHandler<A>(for:handle:)(v5, sub_1D810A42C, v6, ObjectType, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (qword_1EDBB3748 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDBB3750;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  CommandCenterType.registerHandler<A>(for:handle:)(v7, sub_1D810A468, v8, ObjectType, v1);

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

id DockContainerViewController.shouldAutorotate.getter()
{
  v0 = DockContainerViewController.rootViewController.getter();
  v1 = [v0 shouldAutorotate];

  return v1;
}

Swift::Void __swiftcall DockContainerViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  sub_1D8107FD4();
  v1 = DockContainerViewController.rootViewController.getter();
  v2 = [v1 view];

  if (v2)
  {
    v3 = [v2 layer];

    v4 = sub_1D81072B8();
    [v4 constant];
    v6 = v5;

    v7 = *MEMORY[0x1E69DEA60];
    if (v6 <= 0.0)
    {
      v7 = 0.0;
    }

    [v3 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D8107FD4()
{
  if (!v0[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode])
  {
    return;
  }

  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  _UISheetPageSize();
  v4 = v3;

  v5 = [v0 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  Width = CGRectGetWidth(v32);
  v30 = sub_1D81070CC();
  v16 = [v0 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v17 = v16;
  if (Width < v4)
  {
    v4 = Width;
  }

  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v33.origin.x = v19;
  v33.origin.y = v21;
  v33.size.width = v23;
  v33.size.height = v25;
  v26 = (CGRectGetWidth(v33) - v4) * 0.5;
  sub_1D8108900();
  v28 = v27;
  sub_1D8108998();
  [(UIView *)v30 setFrame:v26, v28, v4, v29];
}

void DockContainerViewController.present(_:animated:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_1D7E0A1A8(0, &qword_1EDBB2F40);
  v11 = sub_1D8108368();
  v12 = sub_1D8191CC4();

  if (v12)
  {
    if (a3)
    {
      v23 = a3;
      v24 = a4;
      OUTLINED_FUNCTION_1_70();
      v20 = 1107296256;
      OUTLINED_FUNCTION_17();
      v21 = v13;
      v22 = &block_descriptor_3_1;
      v14 = _Block_copy(aBlock);
    }

    else
    {
      v14 = 0;
    }

    v18.receiver = v5;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, sel_presentViewController_animated_completion_, a1, a2 & 1, v14);
    _Block_release(v14);
  }

  else
  {
    v15 = DockContainerViewController.rootViewController.getter();
    if (a3)
    {
      v23 = a3;
      v24 = a4;
      OUTLINED_FUNCTION_1_70();
      v20 = 1107296256;
      OUTLINED_FUNCTION_17();
      v21 = v16;
      v22 = &block_descriptor_75;
      v17 = _Block_copy(aBlock);
    }

    else
    {
      v17 = 0;
    }

    [v15 presentViewController:a1 animated:a2 & 1 completion:v17];
    _Block_release(v17);
  }
}

id sub_1D8108368()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___expandedViewController;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___expandedViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___expandedViewController);
  }

  else
  {
    v4 = sub_1D8108EF0(v0);
    v5 = *v1;
    *v1 = v4;
    *(v1 + 8) = v6;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1D81084E4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = DockContainerViewController.rootViewController.getter();
  sub_1D7E7B91C(a2, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1D8192614();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v13 = 0;
  }

  [v6 *a3];

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8108658(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, _OWORD *))
{
  if (a4)
  {
    v8 = a3;
    v9 = a1;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v10 = a3;
    v11 = a1;
  }

  a5(a3, v13);

  return sub_1D7E7BAAC(v13);
}

void DockContainerViewController.dismiss(animated:completion:)(char a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = [v3 presentedViewController];
  if (v8)
  {

    if (a2)
    {
      v18 = a2;
      v19 = a3;
      OUTLINED_FUNCTION_1_70();
      v15 = 1107296256;
      OUTLINED_FUNCTION_17();
      v16 = v9;
      v17 = &block_descriptor_9_2;
      a2 = _Block_copy(aBlock);
    }

    v13.receiver = v3;
    v13.super_class = ObjectType;
    objc_msgSendSuper2(&v13, sel_dismissViewControllerAnimated_completion_, a1 & 1, a2);
    _Block_release(a2);
  }

  else
  {
    v10 = DockContainerViewController.rootViewController.getter();
    if (a2)
    {
      v18 = a2;
      v19 = a3;
      OUTLINED_FUNCTION_1_70();
      v15 = 1107296256;
      OUTLINED_FUNCTION_17();
      v16 = v11;
      v17 = &block_descriptor_6_3;
      v12 = _Block_copy(aBlock);
    }

    else
    {
      v12 = 0;
    }

    [v10 dismissViewControllerAnimated:a1 & 1 completion:v12];
    _Block_release(v12);
  }
}

void sub_1D8108900()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetMaxY(v11);
    sub_1D8108998();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D8108998()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 safeAreaInsets];
  v4 = v3;

  if (v4 == 0.0)
  {
    return;
  }

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 safeAreaInsets];
}

void sub_1D8108A4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v2 setModalPresentationStyle_];
  v6 = sub_1D8108368();
  v7 = [v6 presentationController];

  v8 = &unk_1ECA11000;
  if (v7)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      if (qword_1ECA0C3C8 != -1)
      {
        swift_once();
      }

      [v10 _setCornerRadiusForPresentationAndDismissal_];
      v11 = *&v3[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___expandedViewController];
      v12 = *&v3[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___expandedViewController + 8];
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 24);
      v15 = v11;
      v14(v10, ObjectType, v12);
      v8 = &unk_1ECA11000;
    }

    else
    {
    }
  }

  v16 = *&v3[v8[132]];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v18 = v16;
  v19 = v3;
  sub_1D7E38808(a1);
  DockContainerViewController.present(_:animated:completion:)(v18, 1, sub_1D810A3E4, v17);

  v20 = 2;
  sub_1D810727C(&v20);
}

void sub_1D8108C2C(uint64_t a1, void (*a2)(void))
{
  v3 = sub_1D8108368();
  v5 = v4;
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);

  if (a2)
  {
    a2();
  }
}

void sub_1D8108D04()
{
  v1 = sub_1D8108368();
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v0, ObjectType, v3);
}

void sub_1D8108DB8(void *a1)
{
  [a1 addTarget:v1 action:sel_dockedViewTapped forControlEvents:64];
  if (![a1 isContextMenuInteractionEnabled] || objc_msgSend(a1, sel_showsMenuAsPrimaryAction))
  {
    v3 = sub_1D8108FB4(v1);
    [a1 addGestureRecognizer_];
  }
}

Swift::Void __swiftcall DockContainerViewController.configureLegacyDockGestures(on:)(UIView *on)
{
  v4 = sub_1D810A244(v1);
  v3 = sub_1D810A2C8(v1, v4);
  [(UIView *)on addGestureRecognizer:v3];

  [(UIView *)on addGestureRecognizer:v4];
}

void *sub_1D8108EF0(uint64_t a1)
{
  sub_1D818F844();
  [v3 setTransitioningDelegate_];
  return v3;
}

void sub_1D8108F54(char a1)
{
  v3 = sub_1D81072B8();
  v2 = 0.0;
  if (a1)
  {
    sub_1D8108998();
  }

  [v3 setConstant_];
}

id sub_1D8108FB4(void *a1)
{
  v5[3] = swift_getObjectType();
  v5[0] = a1;
  objc_allocWithZone(MEMORY[0x1E69DCC48]);
  v2 = a1;
  v3 = sub_1D7FB6EA8(v5, sel_dockedViewLongPressed);
  [v3 setDelaysTouchesBegan_];
  return v3;
}

void DockContainerViewController.handle(command:with:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  type metadata accessor for Commands();
  if (qword_1EDBB3738 != -1)
  {
    swift_once();
  }

  if ((static Commands.~= infix(_:_:)(qword_1EDBB3740, a1) & 1) == 0)
  {
    if (qword_1EDBB3720 != -1)
    {
      swift_once();
    }

    if ((static Commands.~= infix(_:_:)(qword_1EDBB3728, a1) & 1) == 0)
    {
      if (qword_1EDBB3748 != -1)
      {
        swift_once();
      }

      if ((static Commands.~= infix(_:_:)(qword_1EDBB3750, a1) & 1) == 0)
      {
        goto LABEL_27;
      }

      v40 = v2[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode];
      if (v40 != 1)
      {
        if (v40 != 2)
        {
          v41 = sub_1D8108368();
          swift_getObjectType();
          OUTLINED_FUNCTION_11_50();
          v42();

          OUTLINED_FUNCTION_0_8();
          v43 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1D8108A4C(sub_1D810A35C, v43);
        }

        goto LABEL_27;
      }

      OUTLINED_FUNCTION_7_70();

      sub_1D8108A4C(v51, v52);
      return;
    }

    if (v2[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode])
    {
LABEL_27:
      OUTLINED_FUNCTION_7_70();
      return;
    }

    LOBYTE(v54) = 1;
    sub_1D810727C(&v54);
    v13 = [v2 view];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1D81070CC();
      [v14 addSubview_];

      sub_1D8107FD4();
      v16 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView;
      [*&v3[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView] layoutIfNeeded];
      v17 = sub_1D8108368();
      swift_getObjectType();
      OUTLINED_FUNCTION_11_50();
      v18();

      v19 = *&v3[v16];
      [v19 frame];
      MinX = CGRectGetMinX(v60);
      v21 = [v3 view];
      if (v21)
      {
        v22 = v21;
        [v21 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v61.origin.x = v24;
        v61.origin.y = v26;
        v61.size.width = v28;
        v61.size.height = v30;
        MaxY = CGRectGetMaxY(v61);
        [*&v3[v16] frame];
        Width = CGRectGetWidth(v62);
        [*&v3[v16] frame];
        [v19 setFrame_];

        OUTLINED_FUNCTION_0_8();
        v33 = swift_allocObject();
        *(v33 + 16) = v3;
        if (v5)
        {
          v34 = objc_opt_self();
          v58 = sub_1D810A364;
          v59 = v33;
          v54 = MEMORY[0x1E69E9820];
          v55 = 1107296256;
          v56 = sub_1D7E64940;
          v57 = &block_descriptor_15_3;
          v35 = _Block_copy(&v54);
          v36 = v3;

          OUTLINED_FUNCTION_0_8();
          v37 = swift_allocObject();
          *(v37 + 16) = v36;
          v58 = sub_1D810A36C;
          v59 = v37;
          v54 = MEMORY[0x1E69E9820];
          v55 = 1107296256;
          v56 = sub_1D7EB30D4;
          v57 = &block_descriptor_21_4;
          v38 = _Block_copy(&v54);
          v39 = v36;

          [v34 animateWithDuration:v35 animations:v38 completion:0.3];

          _Block_release(v38);
          _Block_release(v35);
          goto LABEL_27;
        }

        v47 = v3;
        sub_1D8107FD4();
        sub_1D8108F54(1);
        v48 = [v47 view];
        if (v48)
        {
          v49 = v48;
          [v48 layoutIfNeeded];

          LODWORD(v49) = *MEMORY[0x1E69DD8E8];
          v50 = *&v3[v16];
          UIAccessibilityPostNotification(v49, v50);

          goto LABEL_26;
        }

LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (!v2[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode])
  {
    goto LABEL_27;
  }

  LOBYTE(v54) = 0;
  sub_1D810727C(&v54);
  sub_1D8108F54(0);
  OUTLINED_FUNCTION_0_8();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  if (v5)
  {
    v8 = objc_opt_self();
    v58 = sub_1D810A374;
    v59 = v6;
    v54 = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1D7E64940;
    v57 = &block_descriptor_30_0;
    v9 = _Block_copy(&v54);
    v10 = v3;

    v58 = sub_1D810A37C;
    v59 = v7;
    v54 = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1D7EB30D4;
    v57 = &block_descriptor_33_2;
    v11 = _Block_copy(&v54);

    [v8 animateWithDuration:v9 animations:v11 completion:0.3];
    _Block_release(v11);
    _Block_release(v9);
    v12 = sub_1D8108368();
    [v12 dismissViewControllerAnimated:1 completion:0];

LABEL_26:

    goto LABEL_27;
  }

  sub_1D8109E64(v2);
  v44 = sub_1D81070CC();
  [(UIView *)v44 removeFromSuperview];

  v45 = sub_1D8108368();
  [v45 dismissViewControllerAnimated:0 completion:0];

  OUTLINED_FUNCTION_7_70();
}

void sub_1D8109794(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v7 = *a1;
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (*a4 != -1)
    {
      swift_once();
    }

    v10 = *a5;
    v11[0] = v7;
    DockContainerViewController.handle(command:with:)(v10, v11);
  }
}

id DockContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DockContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DockContainerViewController.animationController(forDismissed:)(void *a1)
{
  if (!v1[OBJC_IVAR____TtC5TeaUI27DockContainerViewController_presentationMode])
  {
    return 0;
  }

  v2 = v1;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  v6 = [result window];

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 presentationController];
  if (!v7 || (v8 = v7, v9 = [v7 presentedView], v8, !v9))
  {

    return 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DD6F0]) init];
  [v10 setIsReversed_];
  result = OUTLINED_FUNCTION_17_36();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  [result frame];
  OUTLINED_FUNCTION_9_0();

  v12 = OUTLINED_FUNCTION_17_36();
  v13 = OUTLINED_FUNCTION_8_0();
  [v14 v15];
  OUTLINED_FUNCTION_9_0();

  v40.origin.x = OUTLINED_FUNCTION_8_0();
  CGRectGetMinX(v40);
  sub_1D8108900();
  v41.origin.x = OUTLINED_FUNCTION_8_0();
  CGRectGetWidth(v41);
  v42.origin.x = OUTLINED_FUNCTION_8_0();
  CGRectGetHeight(v42);
  OUTLINED_FUNCTION_16_43(v10, sel_setSourceFrame_);
  v16 = sub_1D81070CC();
  OUTLINED_FUNCTION_16_43(v16, sel_setFrame_);

  v17 = sub_1D8108368();
  v19 = v18;
  ObjectType = swift_getObjectType();
  v36 = v17;
  (*(v19 + 40))(ObjectType, v19);

  v21 = [*&v2[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView] snapshotViewAfterScreenUpdates_];
  if (!v21)
  {
LABEL_10:
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v2;
    OUTLINED_FUNCTION_4_88();
    v37 = 1107296256;
    v38 = sub_1D7EB30D4;
    v39 = &block_descriptor_39_0;
    v34 = _Block_copy(&v36);
    v35 = v2;

    [v10 setNoninteractiveCompletion_];

    _Block_release(v34);
    return v10;
  }

  v22 = v21;
  [v9 addSubview_];
  result = OUTLINED_FUNCTION_17_36();
  if (result)
  {
    v23 = result;
    [result frame];
    OUTLINED_FUNCTION_9_0();

    v24 = OUTLINED_FUNCTION_17_36();
    v25 = OUTLINED_FUNCTION_8_0();
    [v26 v27];
    OUTLINED_FUNCTION_9_0();

    v28 = OUTLINED_FUNCTION_8_0();
    [v29 v30];
    [v22 setAlpha_];
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v22;
    OUTLINED_FUNCTION_4_88();
    v37 = 1107296256;
    OUTLINED_FUNCTION_17();
    v38 = v31;
    v39 = &block_descriptor_45_2;
    v32 = _Block_copy(&v36);
    v33 = v22;

    [v10 setNoninteractiveAnimations_];
    _Block_release(v32);

    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1D8109DC4(char a1)
{
  if (a1)
  {
    v1 = 1;
    sub_1D810727C(&v1);
  }
}

void sub_1D8109E64(char *a1)
{
  v2 = sub_1D81070CC();
  v3 = OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView;
  [*&a1[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView] frame];
  MinX = CGRectGetMinX(v20);
  v5 = [a1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  MaxY = CGRectGetMaxY(v21);
  [*&a1[v3] frame];
  Width = CGRectGetWidth(v22);
  [*&a1[v3] frame];
  [(UIView *)v2 setFrame:MinX, MaxY, Width, CGRectGetHeight(v23)];

  v17 = [a1 view];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 layoutIfNeeded];
}

void sub_1D8109FC0()
{
  v0 = sub_1D81070CC();
  [(UIView *)v0 removeFromSuperview];
}

void sub_1D810A010(void *a1)
{
  sub_1D8107FD4();
  sub_1D8108F54(1);
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D810A088()
{
  v0 = *MEMORY[0x1E69DD8E8];
  v1 = sub_1D81070CC();
  UIAccessibilityPostNotification(v0, v1);
}

void sub_1D810A0E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1D81070CC();
      [v3 addSubview_];

      sub_1D8107FD4();
      sub_1D8108F54(1);
      [*&v1[OBJC_IVAR____TtC5TeaUI27DockContainerViewController____lazy_storage___dockedView] layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Bool __swiftcall DockContainerViewController.accessibilityPerformMagicTap()()
{
  v1 = sub_1D8108368();
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 56))(v0, ObjectType, v3);

  return 1;
}

id sub_1D810A244(void *a1)
{
  v5[3] = swift_getObjectType();
  v5[0] = a1;
  objc_allocWithZone(MEMORY[0x1E69DCC48]);
  v2 = a1;
  v3 = sub_1D7FB6EA8(v5, sel_dockedViewLongPressed);
  [v3 setDelegate_];
  return v3;
}

id sub_1D810A2C8(void *a1, uint64_t a2)
{
  v7[3] = type metadata accessor for DockContainerViewController();
  v7[0] = a1;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v4 = a1;
  v5 = sub_1D7E40E74(v7, sel_dockedViewTapped);
  [v5 requireGestureRecognizerToFail_];
  return v5;
}

uint64_t DefaultIntentProvider.__allocating_init(widgetKind:fallback:defaultIntentsPromise:)()
{
  OUTLINED_FUNCTION_2_7();
  v0 = swift_allocObject();
  DefaultIntentProvider.init(widgetKind:fallback:defaultIntentsPromise:)();
  return v0;
}

uint64_t DefaultIntentProvider.init(widgetKind:fallback:defaultIntentsPromise:)()
{
  OUTLINED_FUNCTION_2_7();
  v5 = qword_1EDBC6010;
  *(v1 + qword_1EDBC6010) = 9;
  v6 = *MEMORY[0x1E69E7F48];
  v7 = sub_1D8190BB4();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  *(v1 + qword_1EDBB0B28) = v0;
  *(v1 + qword_1EDBB0B20) = v2;
  v8 = (v1 + qword_1EDBB0B30);
  *v8 = v4;
  v8[1] = v3;
  return v1;
}

id DefaultIntentProvider.defaultIntent()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D8190C64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  sub_1D8190C54();
  MEMORY[0x1DA712E90](v6, v1 + qword_1EDBC6010);
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_1D810A84C();
  v11 = *(v2 + 80);
  sub_1D8191484();
  v12 = sub_1D818FA14();
  sub_1D818FA04();

  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = *(v2 + 88);
  v13[4] = sub_1D810AB7C;
  v13[5] = v1;

  v14 = sub_1D818FA14();
  sub_1D818FAB4();

  v17[0] = *(v1 + qword_1EDBB0B20);
  v15 = v17[0];
  sub_1D818FAF4();

  v10(v9, v3);
  return v17[1];
}

uint64_t sub_1D810A84C()
{
  sub_1D7E13588();
  v0 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  sub_1D810B21C(0);
  sub_1D818FC24();
  sub_1D8191484();

  v1 = sub_1D818FA14();
  v2 = sub_1D818FAB4();

  return v2;
}

uint64_t sub_1D810A958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8191484();
  swift_getWitnessTable();
  sub_1D81911C4();
  if (v11)
  {
    v4 = v11;
  }

  else
  {
    v4 = *(a3 + qword_1EDBB0B20);
  }

  sub_1D7E137B4(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D819FAB0;
  v6 = v11;
  swift_getWitnessTable();
  sub_1D8192604();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D7E13BF4();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D7E13588();
  v7 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  sub_1D818FBB4();
  v8 = v4;
  v9 = sub_1D818FB34();

  return v9;
}

BOOL sub_1D810AB84()
{
  sub_1D8191484();
  swift_getWitnessTable();
  return (sub_1D8191234() & 1) == 0;
}

uint64_t sub_1D810AC5C()
{
  sub_1D8190CF4();
  sub_1D8190CE4();
  sub_1D7E137B4(0, &qword_1EDBB1F98, sub_1D810B21C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0 = sub_1D818FBA4();

  return v0;
}

uint64_t sub_1D810AD10()
{
  sub_1D810B21C(0);
  sub_1D810B288();
  sub_1D8191184();
  sub_1D7E137B4(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D819FAB0;
  sub_1D8191484();
  swift_getWitnessTable();
  sub_1D8192604();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D7E13BF4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D7E13588();
  v1 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  sub_1D818FBB4();
  return sub_1D818FB34();
}

uint64_t sub_1D810AEDC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (sub_1D8190CC4() == *(a1 + qword_1EDBB0B30) && v4 == *(a1 + qword_1EDBB0B30 + 8))
  {
  }

  else
  {
    v6 = sub_1D8192634();

    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  result = sub_1D8190CB4();
  if (result)
  {
    v8 = result;
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {

LABEL_11:
      result = 0;
    }
  }

  *a2 = result;
  return result;
}

uint64_t DefaultIntentProvider.deinit()
{
  v1 = qword_1EDBC6010;
  v2 = sub_1D8190BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DefaultIntentProvider.__deallocating_deinit()
{
  DefaultIntentProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D810B0B4()
{
  result = sub_1D8190BB4();
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

unint64_t sub_1D810B288()
{
  result = qword_1EDBAE5C0;
  if (!qword_1EDBAE5C0)
  {
    sub_1D810B21C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAE5C0);
  }

  return result;
}

uint64_t sub_1D810B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1D7F14DC8;
  v9[3] = v8;
  v9[4] = a3;
  v9[5] = a4;

  sub_1D8190CD4();
}

uint64_t sub_1D810B3B4(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(v2 + 32))();
  }

  else
  {
    return (*(v2 + 16))();
  }
}

id sub_1D810B404(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5TeaUI21GutterViewContentView_internalGutterView] = a1;
  *&v2[OBJC_IVAR____TtC5TeaUI21GutterViewContentView_contentView] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 addSubview_];

  return v8;
}

id sub_1D810B524()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI21GutterViewContentView_contentView];
  [v0 bounds];
  return [v1 setFrame_];
}

id static Transition.default.getter()
{
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = 0;
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = 0;
  v1 = objc_allocWithZone(v0);
  return Transition.init(presentationTransitionFactory:dismissalTransitionFactory:presentationControllerFactory:)();
}

id Transition.__allocating_init(presentationTransition:dismissalTransition:presentationControllerFactory:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = a1;
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = a2;
  v5 = objc_allocWithZone(v2);
  return Transition.init(presentationTransitionFactory:dismissalTransitionFactory:presentationControllerFactory:)();
}

id Transition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Transition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *Transition.interactionControllerForDismissal(using:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI10Transition_interactiveTransition);
  v2 = v1;
  return v1;
}

void __swiftcall Transition.presentationController(forPresented:presenting:source:)(UIPresentationController_optional *__return_ptr retstr, UIViewController *forPresented, UIViewController_optional *presenting, UIViewController *source)
{
  v5 = *(v4 + OBJC_IVAR____TtC5TeaUI10Transition_presentationControllerFactory);
  if (v5)
  {
    v5(forPresented, presenting, source);
  }
}

id static Transition.factory(_:)(uint64_t a1)
{
  sub_1D7E0E768(a1, v8);
  OUTLINED_FUNCTION_8_8();
  v3 = swift_allocObject();
  sub_1D7E05450(v8, v3 + 16);
  sub_1D7E0E768(a1, v8);
  OUTLINED_FUNCTION_8_8();
  v4 = swift_allocObject();
  sub_1D7E05450(v8, v4 + 16);
  sub_1D7E0E768(a1, v8);
  OUTLINED_FUNCTION_8_8();
  v5 = swift_allocObject();
  sub_1D7E05450(v8, v5 + 16);
  v6 = objc_allocWithZone(v1);
  return Transition.init(presentationTransitionFactory:dismissalTransitionFactory:presentationControllerFactory:)();
}

uint64_t sub_1D810BC98(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D810BCF0(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_1D810BD54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4[3];
  v8 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v7);
  return (*(v8 + 24))(a1, a2, a3, v7, v8);
}

uint64_t sub_1D810BE54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_1EDBC6068;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D810BEB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return BlueprintCompositionalListLayoutConfigProvider.delegate.setter(v2, v1);
}

uint64_t sub_1D810BEEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + qword_1EDBC6068;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);

      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D810BFB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + qword_1EDBC6068;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);

      ObjectType = swift_getObjectType();
      (*(v2 + 16))(ObjectType, v2);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void (*BlueprintCompositionalListLayoutConfigProvider.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = qword_1EDBC6068;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D810C100;
}

void sub_1D810C100(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1D7E359E8();
  }

  free(v3);
}

uint64_t *BlueprintCompositionalListLayoutConfigProvider.__allocating_init(listConfiguration:itemSeparatorProvider:swipeActionsProvider:sectionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D8190294();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, a1, v10);
  v17 = sub_1D7E22978(v16, a2, a3, a4, a5, MEMORY[0x1E69E7CC0]);
  (*(v12 + 8))(a1, v10);
  return v17;
}

uint64_t *BlueprintCompositionalListLayoutConfigProvider.__allocating_init(listConfiguration:itemSeparatorProvider:swipeActionsProvider:boundarySupplementaryItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D8190294();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, a1, v8);
  v15 = sub_1D7E22978(v14, a2, a3, 0, 0, a4);
  (*(v10 + 8))(a1, v8);
  return v15;
}

uint64_t BlueprintCompositionalListLayoutConfigProvider.deinit()
{
  sub_1D7E0E10C(*(v0 + 16));
  sub_1D7E166A0(v0 + 32);
  v1 = qword_1EDBB4090;
  v2 = sub_1D8190294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D7E166A0(v0 + qword_1EDBC6068);
  return v0;
}

uint64_t BlueprintCompositionalListLayoutConfigProvider.__deallocating_deinit()
{
  BlueprintCompositionalListLayoutConfigProvider.deinit();

  return swift_deallocClassInstance();
}

double sub_1D810C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v10 = sub_1D8190F14();
  v12 = v11;
  v19[0] = a1;
  v19[1] = a2;
  sub_1D8190DB4();
  MEMORY[0x1DA713260](v10, v12);

  if (qword_1EDBB0740 != -1)
  {
    v13 = swift_once();
  }

  v14 = qword_1EDBB0748;
  MEMORY[0x1EEE9AC00](v13);
  os_unfair_lock_lock((v14 + 24));
  sub_1D7E6EB40(v14 + 16, v19);
  os_unfair_lock_unlock((v14 + 24));
  if (v20)
  {
    v15 = a6(v21, a5);
    v17 = v16;
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock((v14 + 24));
    sub_1D7E70994((v14 + 16));
    os_unfair_lock_unlock((v14 + 24));
  }

  else
  {
    v17 = *v19;
  }

  return v17;
}

uint64_t sub_1D810C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 24))(a2, a3);
  if (v3)
  {
    v4 = v3;
    if (v3 == 1)
    {
      return v4;
    }

    if (v3 == -1)
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 2;
  }

  if ((sub_1D8191B84() & 1) == 0)
  {
    return v4;
  }

  if (sub_1D8191B94())
  {
    v5 = 1;
  }

  else
  {
    v7 = sub_1D8191B94();
    v5 = 2;
    if ((v7 & 1) == 0)
    {
      v5 = 3;
    }
  }

  if (v5 >= v4)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

CGSize __swiftcall BlueprintBodySystemSymbolImageCellAccessory.computeAccessorySize(contentSizeCategory:)(__C::UIContentSizeCategory contentSizeCategory)
{
  v2 = sub_1D7E6DB24(v1, contentSizeCategory._rawValue, sub_1D810C93C);
  result.height = v3;
  result.width = v2;
  return result;
}

void sub_1D810C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  v10 = sub_1D810C6E8(a3, a5, a6);
  v11 = [objc_opt_self() configurationWithFont:v9 scale:v10];

  sub_1D7E471D0();
  v12 = (*(a6 + 16))(a5, a6);
  v14 = v13;
  v15 = v11;
  v16 = sub_1D7E6FE24(v12, v14, v11);
  if (v16)
  {
    v17 = v16;
    [v16 size];
  }

  else
  {
    __break(1u);
  }
}

TeaUI::CellDeletionButtonAccessory __swiftcall CellDeletionButtonAccessory.init()()
{
  OUTLINED_FUNCTION_3_121();
  OUTLINED_FUNCTION_0_209(v0);
  result.systemSymbolName._object = v4;
  result.systemSymbolName._countAndFlagsBits = v3;
  result.identifier._object = v2;
  result.identifier._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_1D810CA20(uint64_t a1)
{
  result = sub_1D810CA48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D810CA48()
{
  result = qword_1ECA11470;
  if (!qword_1ECA11470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11470);
  }

  return result;
}

unint64_t sub_1D810CA9C(uint64_t a1)
{
  result = sub_1D810CAC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D810CAC4()
{
  result = qword_1ECA11478;
  if (!qword_1ECA11478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11478);
  }

  return result;
}

unint64_t sub_1D810CB18(uint64_t a1)
{
  result = sub_1D810CB40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D810CB40()
{
  result = qword_1ECA11480;
  if (!qword_1ECA11480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11480);
  }

  return result;
}

uint64_t ModalHostViewControllerFactory.__allocating_init(sceneStateManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D7E05450(a1, v2 + 16);
  return v2;
}

char *ModalHostViewControllerFactory.createViewController(with:)(void *a1)
{
  v2 = v1;
  v10[0] = [objc_opt_self() systemBackgroundColor];
  v10[1] = 0;
  objc_allocWithZone(type metadata accessor for ModalHostViewController());
  v4 = v10[0];
  v5 = ModalHostViewController.init(viewController:styler:delegate:)(a1, v10, 0, 0);
  v6 = [v5 presentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setDelegate_];
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_1D810D07C();
  v8 = v5;
  sub_1D818F624();

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

void *ModalHostViewControllerFactory.createViewController(with:effect:)(void *a1, void *a2)
{
  v4 = v2;
  v16[0] = [objc_opt_self() systemBackgroundColor];
  v16[1] = a2;
  objc_allocWithZone(type metadata accessor for ModalHostViewController());
  v7 = v16[0];
  v8 = a2;
  v9 = v7;
  v10 = v8;
  v11 = ModalHostViewController.init(viewController:styler:delegate:)(a1, v16, 0, 0);
  v12 = [v11 presentationController];
  if (v12)
  {
    v13 = v12;
    [v12 setDelegate_];
  }

  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_1D810D07C();
  v14 = v11;
  OUTLINED_FUNCTION_0_210();
  sub_1D818F624();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v3;
}

void *ModalHostViewControllerFactory.createViewController(with:config:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *(a2 + 8);
  v15[0] = *a2;
  v15[1] = v6;
  objc_allocWithZone(type metadata accessor for ModalHostViewController());
  v7 = v6;
  v8 = v15[0];
  v9 = v7;
  v10 = a1;
  v11 = v8;
  v12 = ModalHostViewController.init(viewController:styler:delegate:)(v10, v15, 0, 0);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_1D810D07C();
  v13 = v12;
  OUTLINED_FUNCTION_0_210();
  sub_1D818F624();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v3;
}

uint64_t ModalHostViewControllerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1D810D07C()
{
  result = qword_1EDBB05B8;
  if (!qword_1EDBB05B8)
  {
    type metadata accessor for ModalHostViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB05B8);
  }

  return result;
}

uint64_t CommandExecutionLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D810D1F4()
{
  sub_1D81927E4();
  CommandExecutionLocation.hash(into:)();
  return sub_1D8192824();
}

unint64_t sub_1D810D240()
{
  result = qword_1ECA11488;
  if (!qword_1ECA11488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11488);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommandExecutionLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

id sub_1D810D398()
{
  [*(v0 + 16) cancelAllOperations];
  v1 = *(v0 + 24);

  return [v1 cancelAllOperations];
}

uint64_t sub_1D810D414()
{
  sub_1D810D3DC();

  return swift_deallocClassInstance();
}

void (*KeyCommandFocusSelectionProvider.invalidator.modify(void *a1))()
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

void (*KeyCommandFocusSelectionProvider.delegate.modify(void *a1))()
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

uint64_t KeyCommandFocusSelectionProvider.__allocating_init(viewProvider:traverseCollectionProvider:commandCenter:tracker:)()
{
  OUTLINED_FUNCTION_1_33();
  v0 = swift_allocObject();
  KeyCommandFocusSelectionProvider.init(viewProvider:traverseCollectionProvider:commandCenter:tracker:)();
  return v0;
}

uint64_t sub_1D810D608(uint64_t result, uint64_t a2)
{
  v2 = (a2 + *(*a2 + 144));
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    v5 = v2[1];
    sub_1D7E62C7C(a2 + *(*a2 + 152), __src);
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

uint64_t sub_1D810D828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 88);
  HIBYTE(v20) = 8;
  sub_1D7E0E768(a4, v17);
  v21 = 0u;
  v22 = 0u;
  LOBYTE(v23) = 1;
  type metadata accessor for CommandExecutionSource();
  v7 = swift_allocObject();
  v8 = v18;
  v9 = v19;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  sub_1D7E3B938(&v20 + 7, v12, 0, &v21, 0, 0, 0, v7, v8, v9, v17[0], v17[1], v17[2], v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v6(a2, a3, v15);
}

Swift::Void __swiftcall KeyCommandFocusSelectionProvider.clearState()()
{
  OUTLINED_FUNCTION_10();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

char *KeyCommandFocusSelectionProvider.deinit()
{
  v1 = *v0;
  sub_1D7E166A0((v0 + 16));
  sub_1D7E166A0((v0 + 32));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v2 + 136)]);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  sub_1D7E9DD24(&v0[*(v3 + 152)], &qword_1EDBBB508, &qword_1EDBBB510);
  return v0;
}

uint64_t KeyCommandFocusSelectionProvider.__deallocating_deinit()
{
  KeyCommandFocusSelectionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D810DB38(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = KeyCommandFocusSelectionProvider.invalidator.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t sub_1D810DB98(uint64_t a1)
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E54838(a1, v4);
  return KeyCommandFocusSelectionProvider.selectedIndexPath.setter(v4);
}

void (*KeyCommandFocusSelectionProvider.selectedIndexPath.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1D7E3D564();
  v4 = *(*(v3 - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  a1[2] = v5;
  _s5TeaUI32KeyCommandFocusSelectionProviderC17selectedIndexPath10Foundation0iJ0VSgvg_0(v5);
  return sub_1D810DCA4;
}

void sub_1D810DCA4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D7E54838(v3, v2);
    KeyCommandFocusSelectionProvider.selectedIndexPath.setter(v2);
    sub_1D7E73334(v3);
  }

  else
  {
    KeyCommandFocusSelectionProvider.selectedIndexPath.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t (*sub_1D810DD10(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = KeyCommandFocusSelectionProvider.selectedIndexPath.modify(v2);
  return sub_1D7F413B4;
}

uint64_t sub_1D810DE04()
{
  OUTLINED_FUNCTION_14_45();
  v13[47] = *(v1 + 88);
  sub_1D7E0E768(v1 + 96, v13);
  OUTLINED_FUNCTION_9_48();
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 136);
  OUTLINED_FUNCTION_5_76();
  v4 = swift_allocObject();
  v5 = v0;
  sub_1D8190DB4();

  v6 = OUTLINED_FUNCTION_4_90();
  CommandExecutionSource.init(identifier:location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(v6, v7, v8, v9, v0, v10, Strong, v3, v12);
  return v4;
}

uint64_t sub_1D810DEDC()
{
  OUTLINED_FUNCTION_14_45();
  v12[47] = *(v1 + 88);
  sub_1D7E0E768(v1 + 96, v12);
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_9_48();
  v3 = *(v1 + 136);
  OUTLINED_FUNCTION_5_76();
  v4 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1D8190DB4();

  v5 = OUTLINED_FUNCTION_4_90();
  CommandExecutionSource.init(identifier:location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(v5, v6, v7, v8, Strong, v9, v0, v3, v11);
  return v4;
}

uint64_t CommandExecutionSource.identifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D810DFE8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

__n128 CommandExecutionSource.sourceRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1D810E0C4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t CommandExecutionSource.__allocating_init(identifier:location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_5_76();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_7_71();
  CommandExecutionSource.init(identifier:location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(v13, v14, v15, v16, v17, v10, v9, a8, a9);
  return v12;
}

uint64_t CommandExecutionSource.init(identifier:location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(uint64_t a1, uint64_t a2, char *a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *a3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 88) = v17;
  sub_1D7E05450(a4, v9 + 96);
  OUTLINED_FUNCTION_56();
  swift_unknownObjectWeakAssign();
  v18 = *(a6 + 16);
  *(v9 + 40) = *a6;
  *(v9 + 56) = v18;
  *(v9 + 72) = *(a6 + 32);
  if (a7)
  {
  }

  OUTLINED_FUNCTION_56();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  if (a8)
  {
    OUTLINED_FUNCTION_0_32();
    v19 = swift_allocObject();
    *(v19 + 16) = a8;
    *(v19 + 24) = a9;
    v20 = sub_1D810E8D8;
  }

  else
  {
    v20 = nullsub_1;
    v19 = 0;
  }

  OUTLINED_FUNCTION_0_32();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  *(v9 + 136) = sub_1D810E8A0;
  *(v9 + 144) = v21;
  return v9;
}

uint64_t sub_1D810E38C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v17 = *(v2 + 88);
  sub_1D7E62C7C(a1, &v13);
  if (*(&v14 + 1))
  {
    sub_1D7E05450(&v13, v16);
    sub_1D8190DB4();
  }

  else
  {
    sub_1D7E0E768(v2 + 96, v16);
    v5 = *(&v14 + 1);
    sub_1D8190DB4();
    if (v5)
    {
      sub_1D7E64060(&v13);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v2 + 56);
  v13 = *(v2 + 40);
  v14 = v7;
  v15 = *(v2 + 72);
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  v10 = *(v2 + 136);
  v9 = *(v2 + 144);
  OUTLINED_FUNCTION_5_76();
  v11 = swift_allocObject();

  CommandExecutionSource.init(identifier:location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(v3, v4, &v17, v16, Strong, &v13, v8, v10, v9);
  return v11;
}

void sub_1D810E4EC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_3_122();
  v4 = *(v3 + 88);
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = OUTLINED_FUNCTION_1_149(v9, v13);
  v11(v10);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    (*(v7 + 8))(v2, v5);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v2, v4);
  }

  OUTLINED_FUNCTION_11_51();
  v1(v0, v15);
  sub_1D7F0E984(v15);
  OUTLINED_FUNCTION_100();
}

void sub_1D810E638()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_3_122();
  v4 = *(v3 + 136);
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = OUTLINED_FUNCTION_1_149(v9, v13);
  v11(v10);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    (*(v7 + 8))(v2, v5);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v2, v4);
  }

  OUTLINED_FUNCTION_11_51();
  v1(v0, v15);
  sub_1D7F0E984(v15);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D810E8A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t dispatch thunk of CommandExecutionSource.__allocating_init(location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 136);
  v6 = *(a4 + 32);
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = v6;
  return v5(a1, a2, a3, v9);
}

uint64_t dispatch thunk of CommandExecutionSource.__allocating_init(identifier:location:tracker:sourceView:sourceRect:sourceItem:onExecute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 144);
  v8 = *(a6 + 32);
  v9 = *(a6 + 16);
  v11[0] = *a6;
  v11[1] = v9;
  v12 = v8;
  return v7(a1, a2, a3, a4, a5, v11);
}

id static CubicTimingSettings.timingParameters.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  _s5TeaUI21ConfigurableSingletonCMa_0();
  swift_initStaticObject();
  sub_1D810EB3C();
  sub_1D818EA44();

  v2 = OUTLINED_FUNCTION_1_150();
  v3(v2);
  OUTLINED_FUNCTION_0_213();

  v4 = OUTLINED_FUNCTION_1_150();
  v5(v4);
  OUTLINED_FUNCTION_0_213();

  v6 = OUTLINED_FUNCTION_1_150();
  v7(v6);
  OUTLINED_FUNCTION_0_213();

  return [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:v9 controlPoint2:{v9, v9, v9}];
}

unint64_t sub_1D810EB3C()
{
  result = qword_1ECA11490;
  if (!qword_1ECA11490)
  {
    _s5TeaUI21ConfigurableSingletonCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11490);
  }

  return result;
}

double static CubicTimingSettings.durationParameter.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  _s5TeaUI21ConfigurableSingletonCMa_0();
  swift_initStaticObject();
  sub_1D810EB3C();
  sub_1D818EA44();

  return v3;
}

uint64_t sub_1D810EC84(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v62 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v61 = v17 - v16;
  v18 = sub_1D8190BE4();
  OUTLINED_FUNCTION_9();
  v60 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  *(swift_allocObject() + 16) = a3;
  if (*(a1 + 64) > 0.0 && *(a1 + 72) > 0.0)
  {
    v59 = v6;
    v57 = v13;
    v58 = v8;
    v24 = a3;
    sub_1D818EDB4();
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    aBlock[0] = v25;
    aBlock[1] = v26;

    sub_1D8190DB4();
    sub_1D818FCA4();

    v27 = v64;
    if (v64)
    {
      sub_1D818EDC4();
      OUTLINED_FUNCTION_1_63();
      swift_allocObject();
      OUTLINED_FUNCTION_0_214();
      v28[2] = v29;
      v28[3] = v25;
      v28[4] = v27;

      sub_1D818FD04();
    }

    else
    {
      v56 = v24;
      swift_beginAccess();
      v33 = sub_1D7E18740(v25, v26, *(a2 + 32));
      if (v33)
      {
        v34 = v33;
        swift_endAccess();
        if (*(v34 + 16))
        {
          OUTLINED_FUNCTION_0_32();
          v35 = swift_allocObject();
          OUTLINED_FUNCTION_0_214();
          *(v36 + 16) = v37;
          *(v36 + 24) = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_46();
            v34 = v54;
          }

          v39 = *(v34 + 16);
          v38 = *(v34 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1D7EE569C(v38 > 1, v39 + 1, 1, v34);
            v34 = v55;
          }

          *(v34 + 16) = v39 + 1;
          v40 = v34 + 16 * v39;
          *(v40 + 32) = sub_1D8111E60;
          *(v40 + 40) = v35;
          OUTLINED_FUNCTION_10_56();
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_8_56(*(a2 + 32));
          sub_1D7EF6540();
          *(a2 + 32) = v64;
          swift_endAccess();
          sub_1D818EDC4();
        }
      }

      else
      {
        swift_endAccess();
      }

      OUTLINED_FUNCTION_6_85();
      sub_1D8111AB8(0, v41, v42, MEMORY[0x1E69E6F90]);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1D819FAB0;
      OUTLINED_FUNCTION_0_32();
      swift_allocObject();
      OUTLINED_FUNCTION_0_214();
      *(v44 + 16) = v45;
      *(v44 + 24) = v25;
      *(v43 + 32) = sub_1D8111E60;
      *(v43 + 40) = v44;
      OUTLINED_FUNCTION_10_56();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_8_56(*(a2 + 32));
      sub_1D7EF6540();
      *(a2 + 32) = v64;
      swift_endAccess();
      sub_1D818EDC4();
      sub_1D7E11E0C();
      (*(v60 + 104))(v23, *MEMORY[0x1E69E7F88], v18);
      v46 = sub_1D8191AF4();
      (*(v60 + 8))(v23, v18);
      OUTLINED_FUNCTION_0_32();
      v47 = swift_allocObject();
      *(v47 + 16) = a2;
      *(v47 + 24) = a1;
      OUTLINED_FUNCTION_3_123(v47);
      OUTLINED_FUNCTION_4_91(COERCE_DOUBLE(1107296256));
      aBlock[2] = v48;
      aBlock[3] = &block_descriptor_101;
      v49 = _Block_copy(aBlock);

      sub_1D8190BF4();
      v64 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_5_77();
      sub_1D7E28784(v50, v51);
      sub_1D7E2885C();
      OUTLINED_FUNCTION_7_72();
      sub_1D7E28784(v52, v53);
      sub_1D8192004();
      MEMORY[0x1DA713CE0](0, v61, v12, v49);
      _Block_release(v49);

      (*(v58 + 8))(v12, v59);
      (*(v62 + 8))(v61, v57);
    }
  }

  v30 = qword_1ECA0C3C0;
  v31 = a3;
  if (v30 != -1)
  {
    OUTLINED_FUNCTION_9_49();
  }

  dispatch_group_leave(v31);
}