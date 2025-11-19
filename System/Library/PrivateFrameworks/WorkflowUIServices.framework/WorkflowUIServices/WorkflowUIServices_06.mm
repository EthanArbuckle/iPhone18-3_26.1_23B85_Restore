uint64_t sub_1C83A04E8(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6978;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_434;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C83A069C(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6950;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_424;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C83A0850(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A69C4;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_454;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_1C83A0A04(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  v4 = *(a1 + *a2);
  CGAffineTransformMakeScale(&v6, a3, a4);
  return [v4 setTransform_];
}

uint64_t sub_1C83A0A94(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A699C;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_444;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_1C83A0C48(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WFIntelligencePromptView();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1)
  {
    return sub_1C83A0D54();
  }

  result = [a1 userInterfaceStyle];
  if (v4 != result)
  {
    return sub_1C83A0D54();
  }

  return result;
}

uint64_t sub_1C83A0D54()
{
  v1 = v0;
  v2 = sub_1C840B50C();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  v8 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v41 = sub_1C840B52C();
  OUTLINED_FUNCTION_5();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v41 - v20;
  sub_1C840B4FC();
  v21 = [v1 traitCollection];
  [v21 userInterfaceStyle];

  sub_1C840B4EC();
  v22 = *(v4 + 8);
  v22(v8, v2);
  sub_1C840B4DC();
  v22(v12, v2);
  sub_1C840B53C();
  v23 = v43;
  sub_1C840B51C();
  v42 = *(v14 + 8);
  v24 = v41;
  v42(v18, v41);
  v25 = MEMORY[0x1E69DC388];
  v45 = v24;
  v46 = MEMORY[0x1E69DC388];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v27 = *(v14 + 16);
  v27(boxed_opaque_existential_1, v23, v24);
  sub_1C840D24C();
  v45 = v24;
  v46 = v25;
  v28 = __swift_allocate_boxed_opaque_existential_1(v44);
  v27(v28, v23, v24);
  sub_1C840D24C();
  v29 = [*&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView] layer];
  v30 = [v1 traitCollection];
  v31 = [v30 userInterfaceStyle];

  if (v31 == 2)
  {
    v32 = 0.15;
  }

  else
  {
    v32 = 1.0;
  }

  SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, v32);
  v34 = sub_1C840CD9C();
  [v29 setValue:SRGB forKeyPath:v34];

  v35 = [*&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView] layer];
  v36 = [v1 traitCollection];
  v37 = [v36 userInterfaceStyle];

  if (v37 == 2)
  {
    v38 = 0.3;
  }

  else
  {
    v38 = 1.0;
  }

  CGColorCreateSRGB(1.0, 1.0, 1.0, v38);
  OUTLINED_FUNCTION_79_0();
  v39 = sub_1C840CD9C();
  [v35 setValue:v36 forKeyPath:v39];

  return (v42)(v43, v24);
}

uint64_t sub_1C83A11AC()
{
  v1 = v0;
  v110 = sub_1C840CC7C();
  OUTLINED_FUNCTION_5();
  v120 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3(v5 - v4);
  v119 = sub_1C840CC9C();
  OUTLINED_FUNCTION_5();
  v122 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v121 = sub_1C840CCBC();
  OUTLINED_FUNCTION_5();
  v118 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v105 - v11;
  v0[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderVisibilityUpdates] = 1;
  v0[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderLayout] = 1;
  v0[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseDetachedButtonVisibilityUpdates] = 1;
  v13 = sub_1C8312180(0, &qword_1EC29DAE0);
  sub_1C840CDDC();
  v14 = sub_1C8396C48();
  v15 = sub_1C840B30C();
  OUTLINED_FUNCTION_42_2();

  v16 = sub_1C840D02C();
  OUTLINED_FUNCTION_42_2();

  v17 = sub_1C840D02C();
  OUTLINED_FUNCTION_42_2();

  v18 = sub_1C840CD9C();
  [v14 setValue:v18 forKey:*MEMORY[0x1E6979BA0]];

  v19 = sub_1C840CD9C();
  OUTLINED_FUNCTION_42_2();

  v20 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v21 = *&v1[v20];
  if (v21)
  {
    v22 = [v21 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F060);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C8414660;
    *(v23 + 56) = v13;
    *(v23 + 32) = v14;
    v24 = v14;
    sub_1C83A6594(v23, v22, &selRef_setFilters_);
  }

  objc_opt_self();
  OUTLINED_FUNCTION_16_7();
  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  v127 = sub_1C83A5ACC;
  v128 = v25;
  v108 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v124 = 1107296256;
  v125 = sub_1C839ACE0;
  v126 = &block_descriptor_18;
  v26 = _Block_copy(&aBlock);
  v27 = v1;

  v127 = nullsub_1;
  v128 = 0;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_7_8();
  v125 = v28;
  v126 = &block_descriptor_21;
  v29 = _Block_copy(&aBlock);
  v30 = OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_56_1(v30, v31, v32);
  _Block_release(v29);
  _Block_release(v26);
  OUTLINED_FUNCTION_16_7();
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  v127 = sub_1C83A5AD4;
  v128 = v33;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_8_11();
  v125 = v34;
  v126 = &block_descriptor_27;
  v35 = _Block_copy(&aBlock);
  v36 = v27;
  OUTLINED_FUNCTION_82_1();
  v127 = nullsub_1;
  v128 = 0;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_7_8();
  v125 = v37;
  v126 = &block_descriptor_30;
  v38 = _Block_copy(&aBlock);
  v39 = OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_56_1(v39, v40, v41);
  _Block_release(v38);
  _Block_release(v35);
  OUTLINED_FUNCTION_16_7();
  v42 = swift_allocObject();
  *(v42 + 16) = v27;
  v127 = sub_1C83A5ADC;
  v128 = v42;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_8_11();
  v125 = v43;
  v126 = &block_descriptor_36;
  v44 = _Block_copy(&aBlock);
  v45 = v27;
  OUTLINED_FUNCTION_82_1();
  v127 = nullsub_1;
  v128 = 0;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_7_8();
  v125 = v46;
  v126 = &block_descriptor_39;
  v47 = _Block_copy(&aBlock);
  v48 = OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_56_1(v48, v49, v50);
  _Block_release(v47);
  _Block_release(v44);
  OUTLINED_FUNCTION_16_7();
  v51 = swift_allocObject();
  *(v51 + 16) = v27;
  v127 = sub_1C83A5AE4;
  v128 = v51;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_8_11();
  v125 = v52;
  v126 = &block_descriptor_45;
  v53 = _Block_copy(&aBlock);
  v54 = v27;

  v127 = nullsub_1;
  v128 = 0;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_7_8();
  v125 = v55;
  v126 = &block_descriptor_48;
  v56 = _Block_copy(&aBlock);
  v57 = OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_56_1(v57, v58, v59);
  _Block_release(v56);
  _Block_release(v53);
  v114 = sub_1C8312180(0, &unk_1ED7EE750);
  v60 = sub_1C840D1EC();
  v61 = v109;
  sub_1C840CCAC();
  v62 = v12;
  sub_1C840CCFC();
  v63 = v118 + 1;
  v113 = v118[1];
  v113(v61, v121);
  OUTLINED_FUNCTION_16_7();
  v64 = swift_allocObject();
  *(v64 + 16) = v54;
  v127 = sub_1C83A5AEC;
  v128 = v64;
  aBlock = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_8_11();
  v125 = v65;
  v126 = &block_descriptor_54;
  _Block_copy(&aBlock);
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_62_1(v54);
  sub_1C840CC8C();
  aBlock = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_29_2();
  v116 = sub_1C83A6688(v66, v67);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F070);
  v112 = sub_1C83A5A68();
  sub_1C840D37C();
  OUTLINED_FUNCTION_33_2();
  MEMORY[0x1CCA75BC0]();
  _Block_release(&selRef_addAction_forControlEvents_);

  v68 = *(v120 + 8);
  v120 += 8;
  v111 = v68;
  v69 = OUTLINED_FUNCTION_102();
  v70(v69);
  v71 = *(v122 + 8);
  v122 += 8;
  v115 = v71;
  v72 = OUTLINED_FUNCTION_70_1();
  v73(v72);
  v106 = v62;
  v74 = v121;
  v75 = v113;
  v118 = v63;
  v113(v62, v121);
  v76 = sub_1C840D1EC();
  sub_1C840CCAC();
  sub_1C840CCFC();
  v75(v61, v74);
  OUTLINED_FUNCTION_16_7();
  v77 = swift_allocObject();
  v78 = OUTLINED_FUNCTION_47_2(v77);
  v127 = sub_1C83A5AF4;
  v128 = v78;
  aBlock = MEMORY[0x1E69E9820];
  v124 = 1107296256;
  OUTLINED_FUNCTION_9_8();
  v125 = v79;
  v126 = &block_descriptor_60;
  _Block_copy(&aBlock);
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_62_1(v62);
  sub_1C840CC8C();
  OUTLINED_FUNCTION_18_5(MEMORY[0x1E69E7CC0]);
  v80 = v106;
  OUTLINED_FUNCTION_33_2();
  MEMORY[0x1CCA75BC0]();
  _Block_release(v75);

  v81 = OUTLINED_FUNCTION_102();
  v111(v81);
  v82 = OUTLINED_FUNCTION_70_1();
  v115(v82);
  v83 = v121;
  v84 = v118;
  v85 = v113;
  v113(v80, v121);
  v107 = sub_1C840D1EC();
  sub_1C840CCAC();
  sub_1C840CCFC();
  v85(v61, v83);
  OUTLINED_FUNCTION_16_7();
  v86 = swift_allocObject();
  v87 = OUTLINED_FUNCTION_47_2(v86);
  v127 = sub_1C83A5AFC;
  v128 = v87;
  aBlock = MEMORY[0x1E69E9820];
  v124 = 1107296256;
  OUTLINED_FUNCTION_9_8();
  v125 = v88;
  v126 = &block_descriptor_66;
  _Block_copy(&aBlock);
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_62_1(v85);
  sub_1C840CC8C();
  OUTLINED_FUNCTION_18_5(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_33_2();
  v89 = v107;
  MEMORY[0x1CCA75BC0]();
  _Block_release(v84);

  v90 = OUTLINED_FUNCTION_102();
  v111(v90);
  v91 = OUTLINED_FUNCTION_70_1();
  v115(v91);
  v92 = v80;
  v93 = v80;
  v94 = v121;
  v95 = v118;
  v96 = v113;
  v113(v92, v121);
  v97 = sub_1C840D1EC();
  sub_1C840CCAC();
  sub_1C840CCFC();
  v96(v61, v94);
  OUTLINED_FUNCTION_16_7();
  v98 = swift_allocObject();
  v99 = OUTLINED_FUNCTION_47_2(v98);
  v127 = sub_1C83A5B04;
  v128 = v99;
  aBlock = MEMORY[0x1E69E9820];
  v124 = 1107296256;
  OUTLINED_FUNCTION_9_8();
  v125 = v100;
  v126 = &block_descriptor_72;
  _Block_copy(&aBlock);
  OUTLINED_FUNCTION_74_1();
  v101 = v94;

  sub_1C840CC8C();
  OUTLINED_FUNCTION_18_5(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_33_2();
  MEMORY[0x1CCA75BC0]();
  _Block_release(v95);

  v102 = OUTLINED_FUNCTION_102();
  v111(v102);
  v103 = OUTLINED_FUNCTION_70_1();
  v115(v103);
  return (v96)(v93, v121);
}

uint64_t sub_1C83A1E30(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6C44;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_709;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_1C83A1FE4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView);
  result = [v1 delegate];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 textViewDidChange_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C83A2080(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6C3C;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_699;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_1C83A2234(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4)
  {
    CGAffineTransformMakeScale(&v5, 0.96, 0.93);
    return [v4 setTransform_];
  }

  return result;
}

uint64_t sub_1C83A22BC(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6C34;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_689;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_1C83A2470(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = [v3 layer];
    v5 = sub_1C840B30C();
    v6 = sub_1C840CD9C();
    [v4 setValue:v5 forKeyPath:v6];
  }
}

uint64_t sub_1C83A252C(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6C2C;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_679;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_1C83A26E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
  swift_beginAccess();
  result = *(a1 + v2);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_1C83A273C(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseDetachedButtonVisibilityUpdates) = 0;
  sub_1C839B914(0);
  *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseTextInput) = 0;
}

void sub_1C83A277C(_BYTE *a1)
{
  v2 = [*&a1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C840CDDC();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      a1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderVisibilityUpdates] = 0;
      v8 = sub_1C8312180(0, &qword_1EC29DAE0);
      sub_1C840CDDC();
      v9 = sub_1C8396C48();
      v10 = sub_1C840B30C();
      [v9 setValue:v10 forKey:*MEMORY[0x1E6979BA8]];

      v11 = sub_1C840D02C();
      [v9 setValue:v11 forKey:*MEMORY[0x1E6979B78]];

      v12 = sub_1C840D02C();
      [v9 setValue:v12 forKey:*MEMORY[0x1E6979B48]];

      v13 = sub_1C840CD9C();
      [v9 setValue:v13 forKey:*MEMORY[0x1E6979BA0]];

      v14 = sub_1C840CD9C();
      [v9 setValue:v14 forKey:*MEMORY[0x1E6979B60]];

      v15 = *&a1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel];
      v16 = [v15 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F060);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C8414660;
      *(v17 + 56) = v8;
      *(v17 + 32) = v9;
      v18 = v9;
      sub_1C83A6594(v17, v16, &selRef_setFilters_);

      [v15 setHidden_];
      [v15 setAlpha_];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *&v32.tx = sub_1C83A6BAC;
      *&v32.ty = v20;
      *&v32.a = MEMORY[0x1E69E9820];
      *&v32.b = 1107296256;
      *&v32.c = sub_1C839ACE0;
      *&v32.d = &block_descriptor_618;
      v21 = _Block_copy(&v32);
      v22 = a1;

      *&v32.tx = nullsub_1;
      v32.ty = 0.0;
      *&v32.a = MEMORY[0x1E69E9820];
      *&v32.b = 1107296256;
      *&v32.c = sub_1C839D568;
      *&v32.d = &block_descriptor_621;
      v23 = _Block_copy(&v32);
      [v19 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
      _Block_release(v23);
      _Block_release(v21);
      CGAffineTransformMakeScale(&v32, 0.98, 0.94);
      [v15 setTransform_];
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *&v32.tx = sub_1C83A6BB4;
      *&v32.ty = v24;
      *&v32.a = MEMORY[0x1E69E9820];
      *&v32.b = 1107296256;
      *&v32.c = sub_1C839ACE0;
      *&v32.d = &block_descriptor_627;
      v25 = _Block_copy(&v32);
      v26 = v22;

      *&v32.tx = nullsub_1;
      v32.ty = 0.0;
      *&v32.a = MEMORY[0x1E69E9820];
      *&v32.b = 1107296256;
      *&v32.c = sub_1C839D568;
      *&v32.d = &block_descriptor_630;
      v27 = _Block_copy(&v32);
      [v19 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
      _Block_release(v27);
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *&v32.tx = sub_1C83A6BBC;
      *&v32.ty = v28;
      *&v32.a = MEMORY[0x1E69E9820];
      *&v32.b = 1107296256;
      *&v32.c = sub_1C839ACE0;
      *&v32.d = &block_descriptor_636;
      v29 = _Block_copy(&v32);
      v30 = v26;

      *&v32.tx = nullsub_1;
      v32.ty = 0.0;
      *&v32.a = MEMORY[0x1E69E9820];
      *&v32.b = 1107296256;
      *&v32.c = sub_1C839D568;
      *&v32.d = &block_descriptor_639;
      v31 = _Block_copy(&v32);
      [v19 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
      _Block_release(v31);
      _Block_release(v29);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C83A2DA8(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6C10;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_669;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C83A2F5C(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6BEC;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_659;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C83A3148(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6BC4;
  *(v10 + 24) = v9;
  v17[4] = sub_1C83A6ED4;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C839D540;
  v17[3] = &block_descriptor_649;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_1C83A32FC(uint64_t a1, void *a2)
{
  v2 = [*(a1 + *a2) layer];
  v3 = sub_1C840B30C();
  v6 = sub_1C840CD9C();
  v4 = OUTLINED_FUNCTION_54_0();
  [v4 v5];
}

void sub_1C83A33A8(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel) layer];
  [v1 setFilters_];
}

void sub_1C83A340C(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderLayout] = 0;
  v2 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
  swift_beginAccess();
  v3 = *&a1[v2];
  *&a1[v2] = 0;

  v4 = *&a1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView];
  [v4 setHidden_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  [v4 setAlpha_];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  aBlock[4] = sub_1C83A6B90;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C839ACE0;
  aBlock[3] = &block_descriptor_612;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  [v5 animateWithDuration:v7 animations:0.3];
  _Block_release(v7);
}

uint64_t sub_1C83A359C()
{
  OUTLINED_FUNCTION_14_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_53_1();
    v1 = OUTLINED_FUNCTION_24_2();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C83A364C()
{
  OUTLINED_FUNCTION_14_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_53_1();
    v1 = OUTLINED_FUNCTION_24_2();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1C83A3740()
{
  [v0 bounds];
  [v0 sizeThatFits_];
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_35_3(OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_onSizeChanged);
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v5 = *v0;
  if (*v0)
  {

    v5(v6, v2, v4);
    sub_1C8381E78(v5);
  }

  return v2;
}

uint64_t sub_1C83A37EC()
{
  OUTLINED_FUNCTION_14_7();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_53_1();
    v0 = OUTLINED_FUNCTION_24_2();
    v2 = v1(v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1C83A38B0()
{
  OUTLINED_FUNCTION_14_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_53_1();
    v1 = OUTLINED_FUNCTION_24_2();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C83A3978()
{
  OUTLINED_FUNCTION_14_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_53_1();
    v1 = OUTLINED_FUNCTION_24_2();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C83A3A40(void *a1)
{
  v2 = v1;
  sub_1C8399B8C();
  [v1 invalidateIntrinsicContentSize];
  OUTLINED_FUNCTION_64_1();
  [v1 sizeThatFits_];
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_35_3(OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_onSizeChanged);
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v8 = *v1;
  if (*v1)
  {

    v8(v9, v5, v7);
    v10 = OUTLINED_FUNCTION_72_2();
    sub_1C8381E78(v10);
  }

  v11 = [v1 superview];
  [v11 setNeedsLayout];

  v12 = [v2 superview];
  [v12 layoutSubviews];

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
  v13 = [a1 selectedTextRange];
  if (v13)
  {
    v14 = v13;
    sub_1C8312180(0, &unk_1ED7EE740);
    v15 = [v14 end];
    v16 = [a1 endOfDocument];
    v17 = sub_1C840D26C();

    if (v17)
    {
      v18 = *&v2[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView];
      [v18 contentSize];
      v20 = v19;
      OUTLINED_FUNCTION_64_1();
      v22 = v20 - v21;
      [v18 contentInset];
      [a1 setContentOffset:0 animated:{0.0, v22 + v23}];
    }

    sub_1C8399EB8();
    v25 = v24 != *&v2[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_previousLineCount];
    *&v2[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_previousLineCount] = v24;
    sub_1C839B914(v25);
  }
}

id WFIntelligencePromptView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1C83A3E24(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakAssign();

  return v1;
}

void sub_1C83A3E6C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    OUTLINED_FUNCTION_80_1();
    return;
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v26 = Strong;
    sub_1C8312180(0, &qword_1EC29F118);
    v5 = OUTLINED_FUNCTION_41_2();
    sub_1C832F008();
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_60_1();
      v7 = v25;
    }

    *(v7 + 16) = v8 + 1;
    *(v7 + 8 * v8 + 32) = 0x3FF0000000000000;
    v9 = v8 + 5;
    v10 = -120;
    do
    {
      v11 = sin((v10 + 121) / 120.0 * 6.28318531 + -1.57079633);
      if (v9 - 4 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_60_1();
        v7 = v13;
      }

      *(v7 + 16) = v9 - 3;
      *(v7 + 8 * v9++) = (v11 + 1.0) * 0.02 * 0.5 + 1.0;
    }

    while (!__CFADD__(v10++, 1));
    sub_1C83A4108(v7);

    v14 = OUTLINED_FUNCTION_72_2();
    sub_1C83A6594(v14, v15, v16);
    v17 = v5;
    [v17 setDuration_];
    LODWORD(v18) = 2139095040;
    [v17 setRepeatCount_];
    v19 = [objc_opt_self() functionWithName_];
    v20 = OUTLINED_FUNCTION_78_1();
    [v20 v21];

    v22 = *(v1 + 24);
    *(v1 + 24) = v17;
    v23 = v17;

    *(v1 + 32) = CACurrentMediaTime();
    v24 = [v26 layer];
    sub_1C83A660C(v23, 0x65766157656E6973, 0xED0000656C616353, v24);

    *(v1 + 40) = 1;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_80_1();
}

uint64_t sub_1C83A4108(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C83A5350(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C83A5350(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1C8310F24(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C83A4204()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(v0 + 40) == 1)
    {
      v23 = Strong;
      v3 = [Strong layer];
      v4 = [v23 layer];
      v5 = [v4 presentationLayer];

      if (v5)
      {
        [v5 transform];
      }

      else
      {
        memcpy(__dst, MEMORY[0x1E69792E8], sizeof(__dst));
      }

      memcpy(aBlock, __dst, sizeof(aBlock));
      [v3 setTransform_];

      v6 = [v23 layer];
      v7 = sub_1C840CD9C();
      v8 = OUTLINED_FUNCTION_78_1();
      [v8 v9];

      objc_opt_self();
      OUTLINED_FUNCTION_16_7();
      v10 = swift_allocObject();
      *(v10 + 16) = v23;
      aBlock[4] = sub_1C83A651C;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C839ACE0;
      aBlock[3] = &block_descriptor_146;
      v11 = _Block_copy(aBlock);
      v12 = v23;

      v13 = OUTLINED_FUNCTION_77_1();
      [v13 v14];
      _Block_release(v11);
      sub_1C8312180(0, &qword_1EC29F110);
      v15 = OUTLINED_FUNCTION_41_2();
      v16 = sub_1C840B30C();
      v17 = OUTLINED_FUNCTION_77_1();
      [v17 v18];

      v19 = v15;
      [v19 setDuration_];
      v20 = [objc_opt_self() functionWithName_];
      v21 = OUTLINED_FUNCTION_77_1();
      [v21 v22];

      *(v1 + 40) = 0;
    }

    else
    {
    }
  }
}

void sub_1C83A44F4(void *a1)
{
  v1 = [a1 layer];
  memcpy(v2, MEMORY[0x1E69792E8], sizeof(v2));
  [v1 setTransform_];
}

id sub_1C83A4560(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C840CD9C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

uint64_t sub_1C83A45D0()
{
  MEMORY[0x1CCA77470](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

void sub_1C83A4610(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_style);
  *(v1 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_style) = *a1;

  sub_1C83A4C78();
}

id sub_1C83A464C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C841A790;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.588 blue:1.0 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.733 green:0.392 blue:1.0 alpha:1.0];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176 blue:0.333 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.576 blue:0.0 alpha:1.0];
  *(v0 + 56) = result;
  qword_1EC29EF20 = v0;
  return result;
}

uint64_t sub_1C83A4758()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_maskedView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_style;
  v4 = objc_opt_self();
  *&v0[v3] = [v4 labelColor];
  v5 = static IntelligenceSymbolUnderGlow.getEmitterCell()();
  *&v0[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_emitterCell] = v5;
  v6 = v5;
  v7 = static IntelligenceSymbolUnderGlow.getEmitterLayer(_:)(v6);

  *&v0[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_emitterLayer] = v7;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for WFIntelligenceSymbolView();
  v8 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_maskedView;
  v10 = *&v8[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_maskedView];
  v11 = v8;
  [v11 addSubview_];
  v34 = v9;
  v12 = [*&v8[v9] layer];
  [v12 addSublayer_];

  if (qword_1EC29CF40 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC29EF20;
  v14 = sub_1C836DAB4(qword_1EC29EF20);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
    v35 = MEMORY[0x1E69E7CC0];
    result = sub_1C840D46C();
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v32 = v8;
    v33 = v4;
    v18 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1CCA75DF0](v18, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = [v11 traitCollection];
      v22 = [v20 resolvedColorWithTraitCollection_];

      v23 = [v22 CGColor];
      sub_1C840D44C();
      sub_1C840D47C();
      sub_1C840D48C();
      sub_1C840D45C();
    }

    while (v16 != v18);
    v15 = v35;
    v8 = v32;
    v4 = v33;
  }

  v24 = *&v11[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_emitterCell];
  v25 = [v11 window];

  if (v25)
  {
    v26 = [v25 screen];

    [v26 scale];
    v28 = v27;
  }

  else
  {
    v28 = 3.0;
  }

  static IntelligenceSymbolUnderGlow.generateSprite(colors:cell:scale:)(v15, v24, v28);

  v29 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView;
  [*&v11[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView] setContentMode_];
  v30 = *&v11[v29];
  v31 = [v4 whiteColor];
  [v30 setTintColor_];

  [*&v11[v29] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [*&v8[v34] setMaskView_];
  [*&v8[v34] setClipsToBounds_];
  sub_1C83A4C78();

  return v11;
}

void sub_1C83A4B7C()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_maskedView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_style;
  *(v0 + v3) = [objc_opt_self() labelColor];
  sub_1C840D50C();
  __break(1u);
}

void sub_1C83A4C78()
{
  v1 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_style);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_emitterLayer);
    v4 = v1;
    [v2 setHidden_];
    [*(v0 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_maskedView) setBackgroundColor_];
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_emitterLayer) setHidden_];
    v3 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_maskedView);
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }
}

id sub_1C83A4D64()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for WFIntelligenceSymbolView();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_maskedView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_emitterLayer];
  [v0 bounds];
  v3 = CGRectGetWidth(v18) * -0.5;
  [v0 bounds];
  v4 = CGRectGetHeight(v19) * -0.5;
  [v0 bounds];
  Width = CGRectGetWidth(v20);
  v6 = Width + Width;
  [v0 bounds];
  Height = CGRectGetHeight(v21);
  [v2 setFrame_];
  [v2 frame];
  [v2 setEmitterSize_];
  [v0 bounds];
  v10 = CGRectGetWidth(v22);
  [v0 bounds];
  [v2 setEmitterPosition_];
  v11 = *&v0[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_emitterCell];
  v12 = [v0 traitCollection];
  [v12 displayScale];
  v14 = v13;

  [v0 bounds];
  [v11 setContentsScale_];
  v15 = *&v0[OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView];
  [v0 bounds];
  return [v15 setFrame_];
}

id sub_1C83A4FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIntelligenceSymbolView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1C83A50C4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

id sub_1C83A5104(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C839ACE0;
    v10[3] = &block_descriptor_739;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDuration:v7 dampingRatio:a3 animations:a4];
  _Block_release(v7);
  return v8;
}

id sub_1C83A51CC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1C840D67C();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

size_t sub_1C83A5310(size_t a1, int64_t a2, char a3)
{
  result = sub_1C83A5370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C83A5330(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C83A5524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C83A5350(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C83A562C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C83A5370(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F160);
  v10 = *(type metadata accessor for ParameterSummaryToolTemplate() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ParameterSummaryToolTemplate() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1C832F218(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1C83A5524(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_1C832F1E8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C83A562C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F060);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C832F2F4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C83A5730@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8317708();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD60);
    sub_1C840D4EC();

    v6 = *(v12 + 56);
    v7 = sub_1C840CADC();
    (*(*(v7 - 8) + 32))(a1, v6 + *(*(v7 - 8) + 72) * v5, v7);
    OUTLINED_FUNCTION_72_2();
    sub_1C840D4FC();
    *v1 = v12;
    v8 = a1;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = sub_1C840CADC();
    v8 = a1;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_1C83A5874()
{
  v1 = v0;
  v2 = sub_1C8317708();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD58);
  sub_1C840D4EC();

  v5 = *(*(v7 + 56) + 8 * v4);
  sub_1C840CCEC();
  sub_1C840D4FC();
  *v1 = v7;
  return v5;
}

uint64_t sub_1C83A5A1C(id *a1)
{
  v1 = *a1;

  return sub_1C83A6524(v1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C83A5A68()
{
  result = qword_1ED7EE768;
  if (!qword_1ED7EE768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29F070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE768);
  }

  return result;
}

uint64_t sub_1C83A6430(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C83A6480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1C83A64D4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C83A64EC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C83A6524(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C840CDDC();

  return v3;
}

void sub_1C83A6594(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_1C840CFCC();

  [a2 *a3];
}

void sub_1C83A660C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C840CD9C();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t sub_1C83A6688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C83A66D0(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

void sub_1C83A6C74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C840CD9C();

  [a3 setText_];
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_15_8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 272) = a1;

  return _Block_copy((v1 - 296));
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return sub_1C840CD9C();
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return sub_1C840CD9C();
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_1C840CCAC();
}

id OUTLINED_FUNCTION_84_1(void *a1)
{

  return [a1 (v1 + 2552)];
}

uint64_t Date.init(textValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = objc_allocWithZone(MEMORY[0x1E696AB60]);
  v13 = sub_1C83A844C(8);
  if (!v13)
  {

    v14 = 0;
LABEL_3:

LABEL_4:
    sub_1C840B1AC();
    OUTLINED_FUNCTION_5_12();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_5;
  }

  v14 = v13;
  v24 = sub_1C840CD9C();
  v37[1] = a2;
  v37[2] = 15;
  v37[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F1D0);
  sub_1C83A8594();
  sub_1C833644C();
  v25 = sub_1C840D29C();
  v27 = [v14 matchesInString:v24 options:0 range:{v25, v26}];

  sub_1C83A85F8();
  v28 = sub_1C840CFDC();

  if (!v28)
  {
    goto LABEL_3;
  }

  result = sub_1C836DAB4(v28);
  if (!result)
  {

    goto LABEL_4;
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1CCA75DF0](0, v28);
LABEL_13:
    v30 = v29;

    v31 = [v30 date];

    if (v31)
    {
      sub_1C840B19C();
    }

    v32 = sub_1C840B1AC();
    OUTLINED_FUNCTION_5_12();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_1C83A8524(v8, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v32) != 1)
    {
      (*(*(v32 - 8) + 32))(a3, v11, v32);
      goto LABEL_6;
    }

LABEL_5:
    sub_1C832D574(v11, &qword_1EC29D770);
    sub_1C840B1AC();
LABEL_6:
    OUTLINED_FUNCTION_5_12();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v28 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Date.textValue()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  v1 = sub_1C840B18C();
  v2 = [v0 stringFromDate_];

  v3 = sub_1C840CDDC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t Date.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83A75E8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1C840C9DC();
  v4 = swift_allocBox();
  v6 = v5;
  sub_1C840B1AC();
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(v6, v1);
  (*(*(v3 - 8) + 104))(v6, *MEMORY[0x1E69DADC8], v3);
  *v2 = v4;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 104))(v2, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1C83A7744(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C83A8654;

  return Date.typedValue()(a1);
}

void DateComponents.init(textValue:)()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v1;
  v4 = v3;
  v31 = v5;
  sub_1C840B28C();
  OUTLINED_FUNCTION_5();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1C840B26C();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D770);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_4_12();
  v19 = sub_1C840B1AC();
  OUTLINED_FUNCTION_5();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  Date.init(textValue:)(v4, v2, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v19) == 1)
  {
    sub_1C832D574(v0, &qword_1EC29D770);
    v26 = 1;
    v27 = v31;
  }

  else
  {
    (*(v21 + 32))(v25, v0, v19);
    sub_1C840B25C();
    sub_1C840B27C();
    v27 = v31;
    sub_1C840B24C();
    (*(v29 + 8))(v10, v30);
    (*(v13 + 8))(v17, v11);
    (*(v21 + 8))(v25, v19);
    v26 = 0;
  }

  v28 = sub_1C840B00C();
  __swift_storeEnumTagSinglePayload(v27, v26, 1, v28);
  OUTLINED_FUNCTION_27_0();
}

void sub_1C83A7A9C()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1C840CA1C();
  v16 = *(v15 - 8);
  if ((*(v16 + 88))(v5, v15) != *MEMORY[0x1E69DAE70])
  {
    (*(v16 + 8))(v5, v15);
LABEL_6:
    v23 = v1(0);
    v20 = v7;
    v21 = 1;
    v22 = 1;
    goto LABEL_7;
  }

  (*(v16 + 96))(v5, v15);
  v17 = swift_projectBox();
  (*(v10 + 16))(v14, v17, v8);
  if ((*(v10 + 88))(v14, v8) != *v3)
  {
    (*(v10 + 8))(v14, v8);

    goto LABEL_6;
  }

  (*(v10 + 96))(v14, v8);
  v18 = v1(0);
  OUTLINED_FUNCTION_6();
  (*(v19 + 32))(v7, v14, v18);

  OUTLINED_FUNCTION_5_12();
LABEL_7:
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_27_0();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DateComponents.textValue()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  v1 = sub_1C840AFFC();
  v2 = [v0 stringFromDateComponents_];

  if (!v2)
  {
    sub_1C840CE2C();
    if (qword_1EC29CF30 != -1)
    {
      swift_once();
    }

    v3 = qword_1EC29EA60;
    v4 = sub_1C840CD9C();
    v5 = sub_1C840CD9C();

    v2 = [v3 localizedStringForKey:v4 value:v5 table:0];
  }

  v6 = sub_1C840CDDC();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DateComponents.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83A7E34()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1C840C9DC();
  v4 = swift_allocBox();
  v6 = v5;
  sub_1C840B00C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(v6, v1);
  (*(*(v3 - 8) + 104))(v6, *MEMORY[0x1E69DAD80], v3);
  *v2 = v4;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 104))(v2, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1C83A7F90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return DateComponents.typedValue()(a1);
}

void ParameterSummaryDateParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_4_12();
  v14 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  (*(v16 + 16))(v19 - v18, v12, v14);
  sub_1C83379C0(v2, v0);
  ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v20, v10, v8, v6, v4, v0);
  sub_1C832D574(v2, &qword_1EC29EAD0);
  (*(v16 + 8))(v12, v14);
  OUTLINED_FUNCTION_27_0();
}

void ParameterSummaryDateParameter.init(parameterDefinition:identifier:placeholder:value:)()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v1;
  v23 = v3;
  v24 = v4;
  v22 = v5;
  v7 = v6;
  v9 = v8;
  v10 = *(*v0 + 312);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  v14 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  (*(v16 + 16))(v19 - v18, v9, v14);
  (*(v11 + 16))(v13, v2, v10);
  ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:value:)(v20, v7, v22, v23, v24, v13);
  (*(v11 + 8))(v2, v10);
  (*(v16 + 8))(v9, v14);
  OUTLINED_FUNCTION_27_0();
}

uint64_t ParameterSummaryDateParameter.__deallocating_deinit()
{
  v0 = ParameterSummaryBaseParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1C83A844C(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C840B0EC();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1C83A8500(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C83A8524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C83A8594()
{
  result = qword_1EC29F1D8;
  if (!qword_1EC29F1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29F1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F1D8);
  }

  return result;
}

unint64_t sub_1C83A85F8()
{
  result = qword_1EC29F1E0[0];
  if (!qword_1EC29F1E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EC29F1E0);
  }

  return result;
}

double WFColor.perceivedDifference(to:)()
{
  v39 = WFColor.lab.getter();
  v1 = v0;
  v3 = v2;
  v4 = WFColor.lab.getter();
  v6 = v5;
  v8 = v7;
  v9 = v7 * v7;
  v10 = pow((sqrt(v1 * v1 + v3 * v3) + sqrt(v5 * v5 + v7 * v7)) * 0.5, 7.0);
  v11 = (1.0 - sqrt(v10 / (v10 + 6103515620.0))) * 0.5 + 1.0;
  v12 = v1 * v11;
  v13 = v6 * v11;
  v14 = sqrt(v3 * v3 + v12 * v12);
  v15 = sqrt(v9 + v13 * v13);
  if (v3 == 0.0 && v12 == 0.0)
  {
    v16 = 0.0;
    if (v8 != 0.0 || (v17 = 0.0, v13 != 0.0))
    {
LABEL_8:
      v17 = (atan2(v8, v13) + 6.28318531) * 57.2957795;
    }
  }

  else
  {
    v16 = (atan2(v3, v12) + 6.28318531) * 57.2957795;
    if (v8 != 0.0)
    {
      goto LABEL_8;
    }

    v17 = 0.0;
    if (v13 != 0.0)
    {
      goto LABEL_8;
    }
  }

  v18 = 0.0;
  if (v14 * v15 == 0.0)
  {
    goto LABEL_17;
  }

  v19 = v17 - v16;
  if (vabdd_f64(v17, v16) <= 180.0)
  {
    v18 = v17 - v16;
    goto LABEL_17;
  }

  if (v19 <= 180.0)
  {
    if (v19 >= -180.0)
    {
      goto LABEL_17;
    }

    v20 = 360.0;
  }

  else
  {
    v20 = -360.0;
  }

  v18 = v19 + v20;
LABEL_17:
  if (v17 * v16 == 0.0)
  {
    v21 = v17 + v16;
  }

  else
  {
    if (vabdd_f64(v16, v17) <= 180.0)
    {
      v24 = v17 + v16;
    }

    else
    {
      v22 = v17 + v16;
      v23 = 360.0;
      if (v22 >= 360.0)
      {
        v23 = -360.0;
      }

      v24 = v22 + v23;
    }

    v21 = v24 * 0.5;
  }

  v25 = sqrt(v14 * v15);
  v26 = (v14 + v15) * 0.5;
  v36 = (v39 + v4) * 0.5;
  v37 = v15 - v14;
  v38 = (v25 + v25) * sin(v18 * 0.5 * 0.0174532925);
  v40 = v4 - v39;
  v27 = cos((v21 + -30.0) * 0.0174532925);
  v28 = cos((v21 + v21) * 0.0174532925);
  v29 = cos((v21 * 3.0 + 6.0) * 0.0174532925);
  v30 = cos((v21 * 4.0 + -63.0) * 0.0174532925) * 0.2 * 57.2957795 + v28 * 0.24 * 57.2957795 + v27 * -0.17 * 57.2957795 + 1.0 + v29 * -0.32 * 57.2957795;
  v31 = exp(-((v21 + -275.0) / 25.0 * ((v21 + -275.0) / 25.0))) * 30.0;
  v32 = pow(v26, 7.0);
  v33 = sqrt(v32 / (v32 + 6103515620.0));
  v34 = (v36 + -50.0) * (v36 + -50.0) * 0.015 / sqrt((v36 + -50.0) * (v36 + -50.0) + 20.0) + 1.0;
  return sqrt(v40 / v34 * (v40 / v34) + v37 / (v26 * 0.045 + 1.0) * (v37 / (v26 * 0.045 + 1.0)) + v38 / (v26 * 0.015 * v30 + 1.0) * (v38 / (v26 * 0.015 * v30 + 1.0)) - v37 / (v26 * 0.045 + 1.0) * ((v33 + v33) * sin((v31 + v31) * 0.0174532925)) * (v38 / (v26 * 0.015 * v30 + 1.0)));
}

double sub_1C83A8A54()
{
  [v0 red];
  v2 = v1;
  [v0 green];
  [v0 blue];
  [v0 alpha];
  return v2;
}

double WFColor.xyz.getter()
{
  v0 = sub_1C83A8A54();
  v2 = v1;
  v4 = v3;
  if (v0 <= 0.04045)
  {
    v5 = v0 / 12.92;
  }

  else
  {
    v5 = pow((v0 + 0.055) / 1.055, 2.4);
  }

  if (v2 <= 0.04045)
  {
    v6 = v2 / 12.92;
  }

  else
  {
    v6 = pow((v2 + 0.055) / 1.055, 2.4);
  }

  if (v4 <= 0.04045)
  {
    v7 = v4 / 12.92;
  }

  else
  {
    v7 = pow((v4 + 0.055) / 1.055, 2.4);
  }

  return v5 * 100.0 * 0.4124 + v6 * 100.0 * 0.3576 + v7 * 100.0 * 0.1805;
}

double WFColor.lab.getter()
{
  v0 = WFColor.xyz.getter();
  v2 = v1;
  v4 = v3;
  v5 = v0 / 95.047;
  if (v5 > 0.008856)
  {
    pow(v5, 0.333333333);
  }

  v6 = v2 / 100.0;
  if (v2 / 100.0 <= 0.008856)
  {
    v7 = v6 * 7.787 + 0.137931034;
  }

  else
  {
    v7 = pow(v6, 0.333333333);
  }

  if (v4 / 108.883 > 0.008856)
  {
    pow(v4 / 108.883, 0.333333333);
  }

  return v7 * 116.0 + -16.0;
}

uint64_t sub_1C83A8D74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C840BB2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C83A9DCC(v2, &v14 - v9, &qword_1EC29E6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C840B5EC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C840D17C();
    v13 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C83A8F74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C840BB2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F268);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlatterBackground();
  sub_1C83A9DCC(v1 + *(v10 + 20), v9, &qword_1EC29F268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v4 + 32))(a1, v9, v3);
  }

  sub_1C840D17C();
  v12 = sub_1C840BD9C();
  sub_1C840B3CC();

  sub_1C840BB1C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlatterBackground.baseColor.getter()
{
  type metadata accessor for PlatterBackground();
}

uint64_t sub_1C83A91D8@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t *a3@<X8>, float a4@<S3>)
{
  sub_1C840B6CC();
  v9 = v8;
  v11 = v10;
  *a3 = sub_1C840C5FC();
  a3[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F2A0);
  return sub_1C83A933C(a1, a2, a3 + *(v13 + 44), v9, v11, a4);
}

uint64_t sub_1C83A9288@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PlatterBackground() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFFCLL) + 16);

  return sub_1C83A91D8(v1 + v4, v6, a1, v7);
}

uint64_t sub_1C83A933C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, float a6@<S5>)
{
  LODWORD(v78) = a2;
  v75 = a3;
  v10 = sub_1C840C27C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F2A8);
  MEMORY[0x1EEE9AC00](v70);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F2B0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v71 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v58 - v19;
  v20 = sub_1C840BB8C();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C840B5EC();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v58 - v28;
  v76 = type metadata accessor for PlatterBackground();
  v30 = *(a1 + *(v76 + 28));
  v72 = a4;
  if (v30)
  {
    v59 = v14;
    sub_1C83A8D74(v29);
    (*(v24 + 104))(v27, *MEMORY[0x1E697DBB8], v23);
    v31 = sub_1C840B5DC();
    v32 = *(v24 + 8);
    v32(v27, v23);
    v32(v29, v23);
    v33 = *MEMORY[0x1E697F468];
    if (v31)
    {
      *&v77 = a6;
      v58 = a5;
      v35 = v65;
      v34 = v66;
      v36 = v33;
      (*(v65 + 104))(v22);
      sub_1C840C01C();
      if (v78)
      {
        sub_1C840C2AC();
        v37 = sub_1C840C2DC();
      }

      else
      {
        sub_1C83A9B6C();
        v37 = sub_1C840C2DC();
      }

      v14 = v59;
      v63 = v80[10];
      v64 = v80[9];
      v61 = v80[12];
      v62 = v80[11];
      v60 = 0x402E000000000000;
      v77 = v37;
      v78 = v81;
      v38 = v36;
    }

    else
    {
      v63 = 0;
      v64 = 0;
      v61 = 0;
      v62 = 0;
      v77 = 0;
      v78 = 0;
      v60 = 0;
      v14 = v59;
      v35 = v65;
      v34 = v66;
      v38 = v33;
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v77 = 0;
    v78 = 0;
    v60 = 0;
    v38 = *MEMORY[0x1E697F468];
    v35 = v65;
    v34 = v66;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD30);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C8414650;
  sub_1C840C31C();
  sub_1C840C33C();
  sub_1C840C32C();
  (*(v68 + 104))(v67, *MEMORY[0x1E69814D8], v69);
  *(v39 + 32) = sub_1C840C35C();
  v40 = v76;
  *(v39 + 40) = *(a1 + *(v76 + 24));

  sub_1C840C65C();
  MEMORY[0x1CCA74FC0](v39);
  sub_1C840B79C();
  v41 = *(a1 + *(v40 + 32));
  v42 = &v13[*(v70 + 36)];
  v43 = sub_1C840B8AC();
  (*(v35 + 104))(&v42[*(v43 + 20)], v38, v34);
  *v42 = v41;
  *(v42 + 1) = v41;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7F0) + 36)] = 256;
  v44 = v83;
  *v13 = v82;
  *(v13 + 1) = v44;
  *(v13 + 4) = v84;
  sub_1C840C5FC();
  sub_1C840B69C();
  v45 = v71;
  sub_1C83A9D7C(v13, v71, &qword_1EC29F2A8);
  v46 = (v45 + *(v14 + 36));
  v47 = v86;
  *v46 = v85;
  v46[1] = v47;
  v46[2] = v87;
  v48 = v73;
  sub_1C83A9D7C(v45, v73, &qword_1EC29F2B0);
  v49 = v74;
  sub_1C83A9DCC(v48, v74, &qword_1EC29F2B0);
  v51 = v63;
  v50 = v64;
  v79[0] = v64;
  v79[1] = v63;
  v52 = v61;
  v53 = v62;
  v79[2] = v62;
  v79[3] = v61;
  v79[4] = v78;
  v79[5] = v77;
  v79[7] = 0;
  v79[8] = 0;
  v54 = v60;
  v79[6] = v60;
  v55 = v75;
  memcpy(v75, v79, 0x48uLL);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F2B8);
  sub_1C83A9DCC(v49, v55 + *(v56 + 48), &qword_1EC29F2B0);
  sub_1C83A9DCC(v79, v80, &qword_1EC29F2C0);
  sub_1C832D574(v48, &qword_1EC29F2B0);
  sub_1C832D574(v49, &qword_1EC29F2B0);
  v80[0] = v50;
  v80[1] = v51;
  v80[2] = v53;
  v80[3] = v52;
  v80[4] = v78;
  v80[5] = v77;
  v80[7] = 0;
  v80[8] = 0;
  v80[6] = v54;
  return sub_1C832D574(v80, &qword_1EC29F2C0);
}

uint64_t sub_1C83A9B6C()
{
  v0 = sub_1C840BB2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C83A8F74(v3);
  sub_1C840C2FC();
  (*(v1 + 8))(v3, v0);
  sub_1C840C31C();
  sub_1C840C33C();
  return sub_1C840C32C();
}

unint64_t sub_1C83A9D18()
{
  result = qword_1EC29F290;
  if (!qword_1EC29F290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29F298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F290);
  }

  return result;
}

uint64_t sub_1C83A9D7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_9(a1, a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_1C83A9DCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_9(a1, a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(v3, v4);
  return v3;
}

id sub_1C83A9E1C(uint64_t a1)
{
  v2 = v1;
  sub_1C832DBC8(a1, v1 + OBJC_IVAR___WFParameterSummaryToken_contentValue);
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 32);
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = objc_opt_self();

    v8 = [v7 clearBackground];
    v9 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
    v10 = sub_1C83AA0A4(v5, v4, v8);
    v11 = sub_1C840CD9C();
    v14.receiver = v2;
    v14.super_class = type metadata accessor for ParameterSummaryToken();
    v12 = objc_msgSendSuper2(&v14, sel_initWithDisplayName_icon_isAvailable_, v11, v10, 1);
  }

  else
  {
LABEL_6:
    v10 = sub_1C840CD9C();
    v15.receiver = v2;
    v15.super_class = type metadata accessor for ParameterSummaryToken();
    v12 = objc_msgSendSuper2(&v15, sel_initWithDisplayName_icon_isAvailable_, v10, 0, 1);
  }

  sub_1C832D840(a1);
  return v12;
}

id sub_1C83A9F64(char a1)
{
  v3 = [objc_allocWithZone(WFSlotTextAttachment) initWithSlotTemplateToken_];
  [v3 setStandalone_];
  v4 = [objc_opt_self() attributedStringWithAttachment_];

  return v4;
}

id sub_1C83AA03C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterSummaryToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C83AA0A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C840CD9C();

  v6 = [v3 initWithSymbolName:v5 background:a3];

  return v6;
}

uint64_t sub_1C83AA108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1C83AAAE4(a3, v24 - v10);
  v12 = sub_1C840D08C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C83AAA7C(v11);
  }

  else
  {
    sub_1C840D07C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C840D03C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C840CE0C() + 32;
      OUTLINED_FUNCTION_4_13();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_4_13();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id WFDeferredMenuElementGroup.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_4_13();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1C83AA590;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C83AA884;
  v9[3] = &block_descriptor_2;
  v6 = _Block_copy(v9);

  v7 = [v4 initWithProvider_];

  _Block_release(v6);
  return v7;
}

uint64_t sub_1C83AA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1C840D08C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  v12[7] = a2;

  sub_1C83AA108(0, 0, v10, &unk_1C841AC40, v12);

  return sub_1C83AAA7C(v10);
}

uint64_t sub_1C83AA598(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_1C83AA684;

  return v10();
}

uint64_t sub_1C83AA684()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  *(v1 + 40) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C83AA77C, 0, 0);
}

uint64_t sub_1C83AA77C()
{
  OUTLINED_FUNCTION_130();
  sub_1C840D05C();
  *(v0 + 48) = sub_1C840D04C();
  v2 = sub_1C840D03C();

  return MEMORY[0x1EEE6DFA0](sub_1C83AA80C, v2, v1);
}

uint64_t sub_1C83AA80C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v2(v1);

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_1C83AA884(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1C83AA9A8, v4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C83AA930(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F330);
  v3 = sub_1C840CFCC();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1C83AA9B0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_0_14(v9);
  *v10 = v11;
  v10[1] = sub_1C837541C;

  return sub_1C83AA598(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_1C83AAA7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C83AAAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C83AAB54()
{
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_0_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_2(v1);

  return v4(v3);
}

uint64_t String.init(typedValue:)()
{
  v0 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = (v5 - v4);
  sub_1C840CA1C();
  v7 = OUTLINED_FUNCTION_103();
  if (v8(v7) != *MEMORY[0x1E69DAE70])
  {
    v17 = OUTLINED_FUNCTION_103();
    v18(v17);
    return 0;
  }

  v9 = OUTLINED_FUNCTION_103();
  v10(v9);
  v11 = swift_projectBox();
  (*(v2 + 16))(v6, v11, v0);
  v12 = OUTLINED_FUNCTION_26_1();
  if (v13(v12) != *MEMORY[0x1E69DADF0])
  {
    v19 = OUTLINED_FUNCTION_26_1();
    v20(v19);

    return 0;
  }

  v14 = OUTLINED_FUNCTION_26_1();
  v15(v14);
  v16 = *v6;

  return v16;
}

uint64_t String.typedValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83AAE84()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1C840C9DC();
  v4 = swift_allocBox();
  *v5 = v2;
  v5[1] = v1;
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 104))();
  *v3 = v4;
  v7 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6_0();
  (*(v8 + 104))(v3, v7);
  OUTLINED_FUNCTION_41();
  v11 = v9;

  return v11();
}

uint64_t sub_1C83AAF94@<X0>(uint64_t a1@<X0>, Swift::String_optional *a2@<X8>)
{
  v5 = String.init(textValue:)(*&a1);
  result = v5.value._countAndFlagsBits;
  *a2 = v5;
  return result;
}

uint64_t sub_1C83AAFBC@<X0>(uint64_t *a1@<X8>)
{
  result = String.init(typedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C83AAFE4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C8352DDC;

  return String.typedValue()(a1, v5, v4);
}

uint64_t AttributedString.init(textValue:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C840B07C();
  v3 = OUTLINED_FUNCTION_59(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  sub_1C840B06C();
  OUTLINED_FUNCTION_26_1();
  sub_1C840B05C();
  v4 = sub_1C840B04C();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AttributedString.textValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29F338);
  OUTLINED_FUNCTION_59(v0);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = sub_1C840B02C();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  sub_1C840B01C();
  sub_1C83AB260(v3);
  (*(v6 + 8))(v10, v4);
  v11 = sub_1C840CDEC();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1C83AB260@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F3C0);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = sub_1C840B03C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F3C8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F3D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1C840B02C();
  v17 = sub_1C83AC198(&qword_1EC29F3D8, MEMORY[0x1E6968678]);
  v33 = v16;
  v18 = v17;
  sub_1C840D10C();
  sub_1C83AC198(&qword_1EC29F3E0, MEMORY[0x1E69687E8]);
  result = sub_1C840CD8C();
  if (result)
  {
    sub_1C840D11C();
    sub_1C83AC198(&qword_1EC29F3E8, MEMORY[0x1E69687E8]);
    result = sub_1C840CD6C();
    if (result)
    {
      v29 = v1;
      v20 = *(v7 + 32);
      v20(v5, v15, v6);
      v27 = v10;
      v28 = v18;
      v21 = v7;
      v23 = v30;
      v22 = v31;
      v20(&v5[*(v31 + 48)], v9, v6);
      sub_1C83AC1E0(v5, v23, &qword_1EC29F3C0);
      v24 = *(v22 + 48);
      v20(v12, v23, v6);
      v25 = *(v21 + 8);
      v25(v23 + v24, v6);
      sub_1C83AC23C(v5, v23);
      v20(&v12[*(v27 + 36)], (v23 + *(v22 + 48)), v6);
      v25(v23, v6);
      sub_1C840D12C();
      return sub_1C83AC2AC(v12, &qword_1EC29F3C8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83AB690()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1C840C9DC();
  v3 = swift_allocBox();
  v5 = v4;
  sub_1C840B04C();
  OUTLINED_FUNCTION_6_0();
  (*(v6 + 16))(v5, v1);
  OUTLINED_FUNCTION_5_0();
  (*(v7 + 104))(v5);
  *v2 = v3;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 104))(v2, v8);
  OUTLINED_FUNCTION_41();

  return v10();
}

uint64_t sub_1C83AB7DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8352A6C;

  return AttributedString.typedValue()(a1);
}

uint64_t URL.init(textValue:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C8);
  OUTLINED_FUNCTION_59(v2);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  sub_1C840B12C();

  v6 = sub_1C840B13C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    sub_1C83AC2AC(v5, &qword_1EC29D4C8);
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    (*(v8 + 32))(a1, v5, v6);
    v7 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v6);
}

uint64_t sub_1C83AB9A8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1C840CA1C();
  v16 = *(v15 - 8);
  if ((*(v16 + 88))(a1, v15) != *MEMORY[0x1E69DAE70])
  {
    (*(v16 + 8))(a1, v15);
LABEL_6:
    v22 = a3(0);
    v20 = a4;
    v21 = 1;
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  }

  (*(v16 + 96))(a1, v15);
  v17 = swift_projectBox();
  (*(v10 + 16))(v14, v17, v8);
  if ((*(v10 + 88))(v14, v8) != *a2)
  {
    (*(v10 + 8))(v14, v8);

    goto LABEL_6;
  }

  (*(v10 + 96))(v14, v8);
  v18 = a3(0);
  OUTLINED_FUNCTION_5_0();
  (*(v19 + 32))(a4, v14, v18);

  v20 = a4;
  v21 = 0;
  v22 = v18;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t URL.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83ABC10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1C840C9DC();
  v3 = swift_allocBox();
  v5 = v4;
  sub_1C840B13C();
  OUTLINED_FUNCTION_6_0();
  (*(v6 + 16))(v5, v1);
  OUTLINED_FUNCTION_5_0();
  (*(v7 + 104))(v5);
  *v2 = v3;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 104))(v2, v8);
  OUTLINED_FUNCTION_41();

  return v10();
}

uint64_t sub_1C83ABD44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8352DDC;

  return URL.typedValue()(a1);
}

uint64_t ParameterSummaryTextParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v24 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  OUTLINED_FUNCTION_59(v10);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  (*(v16 + 16))(v19 - v18, a1, v14);
  sub_1C83AC1E0(a6, v13, &qword_1EC29EAD0);
  v21 = ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v20, a2, a3, v24, v25, v13);
  sub_1C83AC2AC(a6, &qword_1EC29EAD0);
  (*(v16 + 8))(a1, v14);
  return v21;
}

uint64_t ParameterSummaryTextParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v10 = *(*v6 + 312);
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, a1, v15);
  (*(v11 + 16))(v14, a6, v10);
  v22 = ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:value:)(v21, a2, v27, v28, v29, v14);
  v23 = OUTLINED_FUNCTION_103();
  v24(v23);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t ParameterSummaryTextParameter.__deallocating_deinit()
{
  v0 = ParameterSummaryBaseParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C83AC198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C83AC1E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_6_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C83AC23C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C83AC2AC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C83AC308(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1C83B7728(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1C83AC360@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1C8317708(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1C840C77C();
    OUTLINED_FUNCTION_6();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_5_13();
  }

  else
  {
    sub_1C840C77C();
    v10 = OUTLINED_FUNCTION_6_12();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_1C83AC404@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1C83B77C0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1C830E4A4(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t Calendar.RecurrenceRule.init(typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1C840CA1C();
  v12 = *(v11 - 8);
  if ((*(v12 + 88))(a1, v11) != *MEMORY[0x1E69DAE70])
  {
    (*(v12 + 8))(a1, v11);
LABEL_6:
    sub_1C840B23C();
    v16 = OUTLINED_FUNCTION_6_12();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  (*(v12 + 96))(a1, v11);
  v13 = swift_projectBox();
  (*(v6 + 16))(v10, v13, v4);
  if ((*(v6 + 88))(v10, v4) != *MEMORY[0x1E69DAD88])
  {
    (*(v6 + 8))(v10, v4);

    goto LABEL_6;
  }

  (*(v6 + 96))(v10, v4);
  v14 = sub_1C840B23C();
  OUTLINED_FUNCTION_6();
  (*(v15 + 32))(a2, v10, v14);

  v16 = OUTLINED_FUNCTION_5_13();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Calendar.RecurrenceRule.textValue()()
{
  v0 = sub_1C840B21C();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v65 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F3F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F3F8);
  v9 = *(*(v8 - 8) + 72);
  v10 = *(*(v8 - 8) + 80);
  v11 = ((v10 + 32) & ~v10);
  v58 = v11 + 6 * v9;
  v59 = v10;
  v61 = v7;
  v12 = swift_allocObject();
  v57 = xmmword_1C841AD90;
  *(v12 + 16) = xmmword_1C841AD90;
  v60 = v11;
  v13 = (v11 + v12 + *(v8 + 48));
  v14 = *MEMORY[0x1E6969948];
  v67 = v2;
  v15 = *(v2 + 104);
  v56 = v14;
  (v15)(v11 + v12);
  *v13 = 0x796C6574756E696DLL;
  v13[1] = 0xE800000000000000;
  OUTLINED_FUNCTION_3_14();
  v55 = *MEMORY[0x1E6969928];
  v15();
  *v11 = 0x796C72756F68;
  v11[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_3_14();
  v54 = *MEMORY[0x1E6969918];
  v15();
  *v11 = 0x796C696164;
  v11[1] = 0xE500000000000000;
  v53 = 3 * v9;
  OUTLINED_FUNCTION_3_14();
  v64 = *MEMORY[0x1E6969930];
  v15();
  *v11 = 0x796C6B656577;
  v11[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_3_14();
  v63 = *MEMORY[0x1E6969940];
  v15();
  *v11 = 0x796C68746E6F6DLL;
  v11[1] = 0xE700000000000000;
  v62 = v9;
  v52 = 5 * v9;
  v16 = v68;
  OUTLINED_FUNCTION_3_14();
  v51 = *MEMORY[0x1E6969938];
  v15();
  *v11 = 0x796C72616579;
  v11[1] = 0xE600000000000000;
  v17 = v0;
  v18 = sub_1C83AD1B8(&qword_1EC29F400);
  v69 = v17;
  v19 = sub_1C840CD3C();
  sub_1C840B22C();
  v20 = sub_1C83AC308(v16, v19);
  v22 = v21;

  if (!v22)
  {
    goto LABEL_12;
  }

  v50 = v20;
  v23 = sub_1C840B20C();
  if (v23 != 1)
  {
    v66 = v23;
    v49[1] = v18;
    v25 = v65;
    v26 = v69;
    (v15)(v65, v64, v69);
    sub_1C83AD1B8(&qword_1EC29F408);
    OUTLINED_FUNCTION_42();
    sub_1C840CF6C();
    v27 = v25;
    OUTLINED_FUNCTION_42();
    sub_1C840CF6C();
    v28 = v67;
    v49[0] = *(v67 + 8);
    (v49[0])(v27, v26);
    if (v70 == v72 || (v29 = v69, (v15)(v27, v63, v69), OUTLINED_FUNCTION_42(), sub_1C840CF6C(), OUTLINED_FUNCTION_42(), sub_1C840CF6C(), (v49[0])(v65, v29), v70 == v72))
    {
      if (v66 == 3)
      {
        v30 = 6910580;
        v31 = 0xE300000000000000;
        goto LABEL_14;
      }

      if (v66 == 2)
      {
        v30 = 26978;
        v31 = 0xE200000000000000;
LABEL_14:
        v70 = v30;
        v71 = v31;
        MEMORY[0x1CCA75890](v50, v22);

        v24 = v70;
        v22 = v71;
        v16 = v68;
        goto LABEL_15;
      }
    }

    v32 = v69;
    v33 = v62;
    v34 = (2 * v62);
    v65 = (4 * v62);

    v35 = swift_allocObject();
    *(v35 + 16) = v57;
    v36 = v60 + v35;
    v37 = (v60 + v35 + *(v8 + 48));
    (v15)(v60 + v35, v56, v32);
    *v37 = 0x736574756E696DLL;
    v37[1] = 0xE700000000000000;
    v38 = &v36[v33 + *(v8 + 48)];
    v15();
    *v38 = 0x7372756F68;
    *(v38 + 1) = 0xE500000000000000;
    OUTLINED_FUNCTION_3_14();
    v15();
    *v34 = 1937334628;
    v34[1] = 0xE400000000000000;
    OUTLINED_FUNCTION_3_14();
    v15();
    *v34 = 0x736B656577;
    v34[1] = 0xE500000000000000;
    v39 = &v65[v36 + *(v8 + 48)];
    v15();
    *v39 = 0x7368746E6F6DLL;
    *(v39 + 1) = 0xE600000000000000;
    v40 = &v36[v52 + *(v8 + 48)];
    v15();
    *v40 = 0x7372616579;
    *(v40 + 1) = 0xE500000000000000;
    v41 = sub_1C840CD3C();
    v16 = v68;
    v42 = sub_1C83AC308(v68, v41);
    v44 = v43;

    if (v44)
    {
      v72 = v66;
      v70 = sub_1C840D65C();
      v71 = v45;
      MEMORY[0x1CCA75890](32, 0xE100000000000000);
      MEMORY[0x1CCA75890](v42, v44);

      v24 = v70;
      v22 = v71;
      goto LABEL_11;
    }

LABEL_12:
    v22 = 0xE90000000000003ELL;
    v28 = v67;
    v24 = 0x6E776F6E6B6E753CLL;
    goto LABEL_15;
  }

  v24 = v50;
LABEL_11:
  v28 = v67;
LABEL_15:
  (*(v28 + 8))(v16, v69);
  v46 = v24;
  v47 = v22;
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t Calendar.RecurrenceRule.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C83ACE44, 0, 0);
}

uint64_t sub_1C83ACE44()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1C840C9DC();
  v4 = swift_allocBox();
  v6 = v5;
  sub_1C840B23C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(v6, v1);
  (*(*(v3 - 8) + 104))(v6, *MEMORY[0x1E69DAD88], v3);
  *v2 = v4;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 104))(v2, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1C83ACF9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return Calendar.RecurrenceRule.typedValue()(a1);
}

uint64_t ParameterSummaryRecurrenceRuleParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, a1, v15);
  sub_1C83379C0(a6, v14);
  v22 = sub_1C8337C04(v21, a2, a3, a4, a5, v14);
  sub_1C8371618(a6);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t sub_1C83AD1B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C840B21C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ParameterSummaryRecurrenceRuleParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1C840B23C();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = OUTLINED_FUNCTION_42();
  v25(v24);
  (*(v12 + 16))(v16, a6, v10);
  v26 = sub_1C83384AC(v23, a2, a3, a4, a5, v16);
  (*(v12 + 8))(a6, v10);
  (*(v19 + 8))(a1, v17);
  return v26;
}

uint64_t ParameterSummaryRecurrenceRuleParameter.__deallocating_deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ParameterSummaryRecurrenceRuleParameter()
{
  result = qword_1EC29F410;
  if (!qword_1EC29F410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static ToolIconRenderer.load(toolIcon:with:)(double a1, double a2)
{
  v4 = sub_1C840B4AC();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1C840C7DC();
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() loadIcon:v11 size:0 style:{a1, a2}];
  }

  else
  {
    sub_1C840B36C();
    v14 = sub_1C840B48C();
    v15 = sub_1C840D16C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C830A000, v14, v15, "Could not create WFIcon not rendering icon", v16, 2u);
      MEMORY[0x1CCA773B0](v16, -1, -1);
    }

    (*(v6 + 8))(v10, v4);
    return 0;
  }

  return v13;
}

uint64_t static SpotlightIconRenderer.loadIcon(from:with:)(double a1, double a2)
{
  sub_1C840B4AC();
  OUTLINED_FUNCTION_5();
  v51 = v5;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F420);
  OUTLINED_FUNCTION_5();
  v49 = v10;
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - v11;
  v12 = sub_1C840C7EC();
  OUTLINED_FUNCTION_5();
  v47 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F428);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v47 - v19;
  v21 = sub_1C840C68C();
  OUTLINED_FUNCTION_5();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v47 - v28;
  sub_1C840C67C();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1C83ADD88(v20);
    sub_1C840B36C();
    v30 = sub_1C840B48C();
    v31 = sub_1C840D16C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C830A000, v30, v31, "Could not decode tool icon from data", v32, 2u);
      MEMORY[0x1CCA773B0](v32, -1, -1);
    }

    (*(v51 + 8))(v8, v52);
    return 0;
  }

  (*(v23 + 32))(v29, v20, v21);
  (*(v23 + 16))(v26, v29, v21);
  v34 = (*(v23 + 88))(v26, v21);
  if (v34 == *MEMORY[0x1E69DA9D0])
  {
    v35 = OUTLINED_FUNCTION_2_10();
    v36(v35);
    v37 = v47;
    (*(v47 + 32))(v17, v26, v12);
    type metadata accessor for ToolIconRenderer();
    v33 = static ToolIconRenderer.load(toolIcon:with:)(a1, a2);
    (*(v37 + 8))(v17, v12);
LABEL_9:
    (*(v23 + 8))(v29, v21);
    return v33;
  }

  if (v34 == *MEMORY[0x1E69DA9D8])
  {
    v38 = OUTLINED_FUNCTION_2_10();
    v39(v38);
    v40 = v48;
    v41 = v49;
    v42 = v50;
    (*(v49 + 32))(v48, v26, v50);
    v43 = sub_1C840CA6C();
    v44 = objc_opt_self();
    v45 = [v43 icon];
    v33 = [v44 loadIcon:v45 size:0 style:{a1, a2}];

    (*(v41 + 8))(v40, v42);
    goto LABEL_9;
  }

  result = sub_1C840D68C();
  __break(1u);
  return result;
}

id static SpotlightIconRenderer.emptyCache()()
{
  if (qword_1EC29CF70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC29FB88;

  return [v1 removeAllObjects];
}

id SpotlightIconRenderer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightIconRenderer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpotlightIconRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C83ADD88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C83ADE50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C840BB2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C83AE898(v2, &v14 - v9, &qword_1EC29E6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C840B5EC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C840D17C();
    v13 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C83AE050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C840BB2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C83AE898(v2 + *(a1 + 36), &v15 - v10, &qword_1EC29D5A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C840BB9C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C840D17C();
    v14 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t GradientColorResolverView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1C840BB9C();
  OUTLINED_FUNCTION_0();
  v31 = v5;
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C840B5EC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = (v2 + *(a1 + 44));
  v23 = *v22;
  v28 = v22[1];
  v29 = v23;
  sub_1C83ADE50(v12);
  sub_1C83AE050(a1, v7);
  v24 = sub_1C83AE4F0(v12, v7);
  (*(v31 + 8))(v7, v32);
  (*(v9 + 8))(v12, v30);
  v29(v24);

  v25 = *(a1 + 24);
  sub_1C8317B60(v18, v13, v25);
  v26 = *(v15 + 8);
  v26(v18, v13);
  sub_1C8317B60(v21, v13, v25);
  return (v26)(v21, v13);
}

id sub_1C83AE4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F438);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v10 = *(v9 + 56);
  v11 = sub_1C840B5EC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  v13 = sub_1C840BB9C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v8[v10], a2, v13);
  v15 = (*(v12 + 88))(v8, v11);
  if (v15 == *MEMORY[0x1E697DBB8])
  {
    v16 = (*(v14 + 88))(&v8[v10], v13);
    if (v16 == *MEMORY[0x1E697F600])
    {
      v17 = [v3 baseColor];
LABEL_11:
      v19 = v17;
      (*(v12 + 8))(v8, v11);
      return v19;
    }

    if (v16 == *MEMORY[0x1E697F608])
    {
      v17 = [v3 accessibilityBaseColor];
      goto LABEL_11;
    }
  }

  else if (v15 == *MEMORY[0x1E697DBA8])
  {
    v18 = (*(v14 + 88))(&v8[v10], v13);
    if (v18 == *MEMORY[0x1E697F600])
    {
      v17 = [v3 darkBaseColor];
      goto LABEL_11;
    }

    if (v18 == *MEMORY[0x1E697F608])
    {
      v17 = [v3 darkAccessibilityBaseColor];
      goto LABEL_11;
    }
  }

  v21 = [v3 baseColor];
  sub_1C83AE830(v8);
  return v21;
}

uint64_t sub_1C83AE830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C83AE898(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void __swiftcall NSDecimal.init(textValue:)(NSDecimal_optional *__return_ptr retstr, Swift::String textValue)
{
  v2 = sub_1C83B1C04(textValue._countAndFlagsBits, textValue._object);

  if (v2)
  {
    MEMORY[0x1CCA75CD0](v3, 0.0);
  }
}

uint64_t Int.typedValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83AE9B8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C840C9DC();
  v3 = swift_allocBox();
  *v4 = v2;
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 104))();
  *v1 = v3;
  v6 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6_0();
  (*(v7 + 104))(v1, v6);
  OUTLINED_FUNCTION_19_2();

  return v8();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Int.textValue()()
{
  sub_1C83B1CFC();
  v0 = sub_1C840D34C();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_1C83AEAEC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C840D0FC();

  *a2 = v4;
}

uint64_t sub_1C83AEB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = Int.init(typedValue:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C83AEB74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C83B1FD0;

  return Int.typedValue()(a1, v4);
}

uint64_t sub_1C83AEC20(uint64_t a1, _DWORD *a2)
{
  v4 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  v11 = sub_1C840CA1C();
  v12 = *(v11 - 8);
  if ((*(v12 + 88))(a1, v11) != *MEMORY[0x1E69DAE70])
  {
    (*(v12 + 8))(a1, v11);
    return 0;
  }

  (*(v12 + 96))(a1, v11);
  v13 = swift_projectBox();
  (*(v6 + 16))(v10, v13, v4);
  if ((*(v6 + 88))(v10, v4) != *a2)
  {
    (*(v6 + 8))(v10, v4);

    return 0;
  }

  (*(v6 + 96))(v10, v4);
  v14 = *v10;

  return v14;
}

uint64_t Double.typedValue()(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83AEE20()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1C840C9DC();
  v3 = swift_allocBox();
  *v4 = v1;
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 104))();
  *v2 = v3;
  v6 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6_0();
  (*(v7 + 104))(v2, v6);
  OUTLINED_FUNCTION_19_2();

  return v8();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.textValue()()
{
  sub_1C83B1D50();
  v0 = sub_1C840CD0C();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_1C83AEF58(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C840D0BC();
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_1C83AEF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = Double.init(typedValue:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C83AEFE0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8363938;

  return Double.typedValue()(a1, v4);
}

uint64_t NSDecimal.init(typedValue:)(uint64_t a1)
{
  v2 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  if ((*(v10 + 88))(a1, v9) != *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 8))(a1, v9);
    return 0;
  }

  (*(v10 + 96))(a1, v9);
  v11 = swift_projectBox();
  (*(v4 + 16))(v8, v11, v2);
  v12 = OUTLINED_FUNCTION_26_1();
  if (v13(v12) != *MEMORY[0x1E69DADF8])
  {
    v17 = OUTLINED_FUNCTION_26_1();
    v18(v17);

    return 0;
  }

  v14 = OUTLINED_FUNCTION_26_1();
  v15(v14);
  v16 = *v8;

  return v16;
}

uint64_t NSDecimal.typedValue()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_3_13();
}

uint64_t sub_1C83AF29C()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1C840C9DC();
  v5 = swift_allocBox();
  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  OUTLINED_FUNCTION_5_0();
  (*(v7 + 104))();
  *v4 = v5;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 104))(v4, v8);
  OUTLINED_FUNCTION_19_2();

  return v10();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal.textValue()()
{
  v0 = sub_1C840D2CC();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_1C83AF41C(NSNumber a1@<X0>, uint64_t a2@<X8>)
{
  NSDecimal.init(_:)(a2, a1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_1C83AF4B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v7 = v1;
  v5 = *v1;
  v6 = *(v7 + 8);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C83B1FD0;

  return NSDecimal.typedValue()(a1, v5, v6, v4);
}

void sub_1C83AF56C()
{
  OUTLINED_FUNCTION_26_4();
  v99 = v0;
  v100 = v1;
  v3 = v2;
  v103 = v4;
  v101 = v5;
  v102 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_5();
  v92 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_6();
  v91 = v10;
  v107 = v3;
  v93 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22_6();
  v97 = v13;
  OUTLINED_FUNCTION_17();
  v119 = sub_1C840CB0C();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v96 = (v18 - v17);
  OUTLINED_FUNCTION_17();
  v19 = sub_1C840CB1C();
  OUTLINED_FUNCTION_5();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_22();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_22_6();
  v117 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC28);
  v29 = OUTLINED_FUNCTION_59(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v89 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v89 - v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_22_6();
  v106 = v38;
  v39 = sub_1C840CA4C();
  v40 = v39 + 56;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  v115 = v21 + 32;
  v116 = (v21 + 16);
  v114 = v21 + 88;
  v113 = *MEMORY[0x1E69DB140];
  v110 = (v21 + 96);
  v111 = (v21 + 8);
  v108 = v15;
  v112 = (v15 + 32);
  v118 = v39;

  v45 = 0;
  v109 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v46 = v45;
    if (!v43)
    {
      break;
    }

LABEL_8:
    v47 = v117;
    (*(v21 + 16))(v117, v118[6] + *(v21 + 72) * (__clz(__rbit64(v43)) | (v45 << 6)), v19);
    (*(v21 + 32))(v25, v47, v19);
    v48 = (*(v21 + 88))(v25, v19);
    if (v48 == v113)
    {
      (*v110)(v25, v19);
      v49 = v119;
      (*v112)(v32, v25, v119);
      v50 = 0;
    }

    else
    {
      (*v111)(v25, v19);
      v50 = 1;
      v49 = v119;
    }

    v43 &= v43 - 1;
    __swift_storeEnumTagSinglePayload(v32, v50, 1, v49);
    sub_1C838FC3C(v32, v35);
    if (__swift_getEnumTagSinglePayload(v35, 1, v49) == 1)
    {
      sub_1C83AC2AC(v35, &qword_1EC29EC28);
    }

    else
    {
      v51 = *v112;
      (*v112)(v96, v35, v119);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C832EC24();
        v109 = v56;
      }

      v52 = *(v109 + 16);
      v53 = v52 + 1;
      if (v52 >= *(v109 + 24) >> 1)
      {
        v90 = v52 + 1;
        v89 = v52;
        sub_1C832EC24();
        v53 = v90;
        v52 = v89;
        v109 = v57;
      }

      v54 = v108;
      v55 = v109;
      *(v109 + 16) = v53;
      v51((v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52), v96, v119);
    }
  }

  while (1)
  {
    v45 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v45 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v45);
    ++v46;
    if (v43)
    {
      goto LABEL_8;
    }
  }

  v58 = v106;
  sub_1C83BB350(v109, v106);

  v59 = v104;
  sub_1C83AC1E0(v58, v104, &qword_1EC29EC28);
  v60 = OUTLINED_FUNCTION_29_1();
  v61 = v119;
  if (__swift_getEnumTagSinglePayload(v60, v62, v119) == 1)
  {
    sub_1C83AC2AC(v59, &qword_1EC29EC28);
    v63 = 0;
  }

  else
  {
    v63 = sub_1C840CAEC();
    (*(v108 + 8))(v59, v61);
  }

  v64 = v107;
  v65 = v105;
  sub_1C83AC1E0(v58, v105, &qword_1EC29EC28);
  v66 = OUTLINED_FUNCTION_29_1();
  if (__swift_getEnumTagSinglePayload(v66, v67, v61) != 1)
  {
    v68 = sub_1C840CAFC();
    (*(v108 + 8))(v65, v61);
    if (!v63)
    {
LABEL_30:
      if (!v68)
      {
        goto LABEL_33;
      }

      v84 = *(v99 + 16);
      OUTLINED_FUNCTION_6_13();
      *(&v122 + 1) = sub_1C840D52C();
      WitnessTable = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(&v121);
      v85 = v68;
      v84();
      OUTLINED_FUNCTION_25_7();
      v86 = sub_1C840CD8C();

      if ((v86 & 1) == 0)
      {
        __break(1u);
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (!v68)
    {
      goto LABEL_28;
    }

    v69 = *(v99 + 16);
    v70 = v63;
    v71 = v97;
    v119 = v70;
    v69();
    v118 = v68;
    v69();
    OUTLINED_FUNCTION_6_13();
    *(&v122 + 1) = sub_1C840CD7C();
    v117 = *(&v122 + 1);
    WitnessTable = swift_getWitnessTable();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v121);
    OUTLINED_FUNCTION_25_7();
    if (sub_1C840CD6C())
    {
      v73 = v93;
      v74 = *(v93 + 16);
      v75 = v91;
      (v74)(v91, v71, v64);
      v76 = TupleTypeMetadata2;
      OUTLINED_FUNCTION_25_7();
      v74();
      v77 = v92;
      v78 = v95;
      (*(v92 + 16))(v95, v75, v76);
      v115 = *(v76 + 48);
      v79 = *(v73 + 32);
      OUTLINED_FUNCTION_25_7();
      v79();
      v116 = boxed_opaque_existential_1;
      v80 = *(v73 + 8);
      v80(v78 + v115, v64);
      (*(v77 + 32))(v78, v75, v76);
      (v79)(v116 + *(v117 + 36), v78 + *(v76 + 48), v64);

      v80(v98, v64);
      v80(v97, v64);
      v80(v78, v64);
      goto LABEL_34;
    }

LABEL_38:
    __break(1u);
    return;
  }

  sub_1C83AC2AC(v65, &qword_1EC29EC28);
  if (!v63)
  {
LABEL_33:
    WitnessTable = 0;
    v121 = 0u;
    v122 = 0u;
    goto LABEL_34;
  }

LABEL_28:
  v81 = *(v99 + 16);
  OUTLINED_FUNCTION_6_13();
  *(&v122 + 1) = sub_1C840D4DC();
  WitnessTable = swift_getWitnessTable();
  v68 = __swift_allocate_boxed_opaque_existential_1(&v121);
  v82 = v63;
  v81();
  v83 = sub_1C840CD8C();

  if ((v83 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_34:
  v87 = v122;
  v88 = v102;
  *v102 = v121;
  v88[1] = v87;
  *(v88 + 4) = WitnessTable;
  if (v103)
  {
    *&v121 = v101;
    *(&v121 + 1) = v103;
    sub_1C83B0084(&v121, v58, &v120);
  }

  sub_1C83AC2AC(v58, &qword_1EC29EC28);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83B0084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC28);
  v7 = OUTLINED_FUNCTION_59(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v15 = *a1;
  v14 = a1[1];
  sub_1C83AC1E0(a2, &v46 - v12, &qword_1EC29EC28);
  v16 = sub_1C840CB0C();
  v17 = OUTLINED_FUNCTION_29_1();
  if (__swift_getEnumTagSinglePayload(v17, v18, v16) == 1)
  {
    sub_1C83AC2AC(v13, &qword_1EC29EC28);
    v19 = 0;
  }

  else
  {
    v19 = sub_1C840CAEC();
    OUTLINED_FUNCTION_5_0();
    (*(v20 + 8))(v13, v16);
  }

  sub_1C83AC1E0(a2, v10, &qword_1EC29EC28);
  if (__swift_getEnumTagSinglePayload(v10, 1, v16) == 1)
  {
    sub_1C83AC2AC(v10, &qword_1EC29EC28);
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v21 = sub_1C840CAFC();
  OUTLINED_FUNCTION_5_0();
  (*(v22 + 8))(v10, v16);
  if (!v19)
  {
    if (!v21)
    {
LABEL_19:

      goto LABEL_20;
    }

    sub_1C840CE2C();
    if (qword_1EC29CF30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v39 = qword_1EC29EA60;
    v40 = sub_1C840CD9C();
    v41 = sub_1C840CD9C();

    v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

    sub_1C840CDDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D680);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1C8414660;
    *(v43 + 56) = sub_1C83B1F34();
    *(v43 + 64) = sub_1C83B1F78();
    *(v43 + 32) = v21;
    v38 = v21;
    goto LABEL_17;
  }

  if (!v21)
  {
LABEL_10:
    sub_1C840CE2C();
    if (qword_1EC29CF30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v33 = qword_1EC29EA60;
    v34 = sub_1C840CD9C();
    v35 = sub_1C840CD9C();

    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    sub_1C840CDDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D680);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C8414660;
    *(v37 + 56) = sub_1C83B1F34();
    *(v37 + 64) = sub_1C83B1F78();
    *(v37 + 32) = v19;
    v38 = v19;
LABEL_17:
    v32 = sub_1C840CDAC();
    v31 = v44;

    goto LABEL_18;
  }

  v23 = [v19 description];
  v24 = sub_1C840CDDC();
  v26 = v25;

  v46 = v24;
  v47 = v26;
  MEMORY[0x1CCA75890](2108704, 0xE300000000000000);
  v27 = [v21 description];
  v28 = sub_1C840CDDC();
  v30 = v29;

  MEMORY[0x1CCA75890](v28, v30);

  v32 = v46;
  v31 = v47;
LABEL_18:
  v46 = v15;
  v47 = v14;

  MEMORY[0x1CCA75890](10272, 0xE200000000000000);
  MEMORY[0x1CCA75890](v32, v31);

  result = MEMORY[0x1CCA75890](41, 0xE100000000000000);
  v15 = v46;
  v14 = v47;
LABEL_20:
  *a3 = v15;
  a3[1] = v14;
  return result;
}

void ParameterSummaryNumberParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)()
{
  OUTLINED_FUNCTION_26_4();
  v33 = v0;
  v34 = v1;
  v32 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  OUTLINED_FUNCTION_59(v5);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  OUTLINED_FUNCTION_17();
  v31 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v36 = v13 - v12;
  OUTLINED_FUNCTION_17();
  v14 = sub_1C840CA5C();
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v35 = v4;
  MEMORY[0x1CCA75550]();
  sub_1C83AF56C();
  v22 = v21;
  v24 = v23;

  (*(v16 + 8))(v20, v14);
  v40[0] = v22;
  v40[1] = v24;
  if (v39)
  {
    OUTLINED_FUNCTION_29_3();
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
  }

  OUTLINED_FUNCTION_15_9(&qword_1EC29DFB8, v37);

  v25 = OUTLINED_FUNCTION_19_7(qword_1EC2A9D40);
  v26 = v35;
  v27 = v31;
  (*(v10 + 16))(v36, v35, v31, v25);
  if (v39)
  {
    OUTLINED_FUNCTION_29_3();
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
  }

  OUTLINED_FUNCTION_15_9(&qword_1EC29DFB8, v37);
  v28 = v37[5];
  v29 = v37[6];
  v30 = v34;
  sub_1C83AC1E0(v34, v8, &qword_1EC29EAD0);
  ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v36, v32, v33, v28, v29, v8);
  sub_1C83AC2AC(v30, &qword_1EC29EAD0);
  (*(v10 + 8))(v26, v27);
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  sub_1C83AC2AC(v40, &qword_1EC29DFB8);
  if (v37[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  OUTLINED_FUNCTION_27_0();
}

void ParameterSummaryNumberParameter.init(parameterDefinition:identifier:placeholder:value:)()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v38 = v4;
  v37 = v5;
  v7 = v6;
  v8 = *(*v1 + 312);
  v39 = *(v8 - 8);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  OUTLINED_FUNCTION_17();
  v36 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v43 = v16 - v15;
  OUTLINED_FUNCTION_17();
  v17 = sub_1C840CA5C();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v42 = v7;
  MEMORY[0x1CCA75550]();
  v40 = v8;
  sub_1C83AF56C();
  v25 = v24;
  v27 = v26;

  (*(v19 + 8))(v23, v17);
  v47[0] = v25;
  v47[1] = v27;
  if (v46)
  {
    OUTLINED_FUNCTION_29_3();
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
  }

  OUTLINED_FUNCTION_15_9(&qword_1EC29DFB8, v44);

  v28 = OUTLINED_FUNCTION_19_7(qword_1EC2A9D40);
  v29 = v42;
  v30 = v36;
  (*(v13 + 16))(v43, v42, v36, v28);
  if (v46)
  {
    OUTLINED_FUNCTION_29_3();
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
  }

  OUTLINED_FUNCTION_15_9(&qword_1EC29DFB8, v44);
  v31 = v44[5];
  v32 = v44[6];
  v34 = v39;
  v33 = v40;
  v35 = v41;
  (*(v39 + 16))(v11, v41, v40);
  ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:value:)(v43, v37, v38, v31, v32, v11);
  (*(v34 + 8))(v35, v33);
  (*(v13 + 8))(v29, v30);
  if (v46)
  {
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  sub_1C83AC2AC(v47, &qword_1EC29DFB8);
  if (v44[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83B0CB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v2);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = sub_1C840D08C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1C840D05C();

  v7 = sub_1C840D04C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_1C83B11B8();
}

uint64_t sub_1C83B0DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  v4[4] = swift_task_alloc();
  v4[5] = sub_1C840D05C();
  v4[6] = sub_1C840D04C();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1C83B0EAC;

  return sub_1C83BC174();
}

uint64_t sub_1C83B0EAC()
{
  OUTLINED_FUNCTION_10_0();
  *(*v1 + 64) = v0;

  v3 = sub_1C840D03C();
  if (v0)
  {
    v4 = sub_1C83B1154;
  }

  else
  {
    v4 = sub_1C83B1000;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1C83B1000()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  sub_1C83B170C(v2);
  if (!v1)
  {
    sub_1C83AC2AC(*(v0 + 32), &qword_1EC29EAD0);
    goto LABEL_6;
  }

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E918);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 32);
    if (*(v0 + 72) == 1)
    {

      sub_1C83BE1AC(1);
      sub_1C83AC2AC(v4, &qword_1EC29EAD0);

LABEL_6:

      OUTLINED_FUNCTION_19_2();
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(v0 + 32);
  }

  sub_1C83AC2AC(v4, &qword_1EC29EAD0);

  OUTLINED_FUNCTION_41();
LABEL_9:

  return v5();
}

uint64_t sub_1C83B1154()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

void sub_1C83B11B8()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v6);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  sub_1C83AC1E0(v3, v21 - v8, &qword_1EC29DF08);
  v10 = sub_1C840D08C();
  v11 = OUTLINED_FUNCTION_29_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C83AC2AC(v9, &qword_1EC29DF08);
  }

  else
  {
    sub_1C840D07C();
    OUTLINED_FUNCTION_5_0();
    (*(v14 + 8))(v9, v10);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C840D03C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v19 = sub_1C840CE0C() + 32;

      if (v18 | v16)
      {
        v22[0] = 0;
        v22[1] = 0;
        v20 = v22;
        v22[2] = v16;
        v22[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v21[1] = 7;
      v21[2] = v20;
      v21[3] = v19;
      OUTLINED_FUNCTION_26_6();

      sub_1C83AC2AC(v3, &qword_1EC29DF08);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_1C83AC2AC(v3, &qword_1EC29DF08);
  if (v18 | v16)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v16;
    v22[7] = v18;
  }

  OUTLINED_FUNCTION_26_6();
LABEL_14:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83B1408()
{
  OUTLINED_FUNCTION_10_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = sub_1C840D05C();
  v1[5] = sub_1C840D04C();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1C83B14C8;

  return sub_1C83BC174();
}

uint64_t sub_1C83B14C8()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_95();
  *v3 = v2;
  *(v4 + 56) = v0;

  v6 = sub_1C840D03C();
  if (v0)
  {
    v7 = sub_1C83B16B0;
  }

  else
  {
    v7 = sub_1C83B1618;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C83B1618()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  sub_1C83B170C(v2);
  if (v1)
  {
    sub_1C83AC2AC(*(v0 + 16), &qword_1EC29EAD0);
    OUTLINED_FUNCTION_41();
  }

  else
  {
    OUTLINED_FUNCTION_19_2();
  }

  return v3();
}

uint64_t sub_1C83B16B0()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C83B170C(uint64_t a1)
{
  v39 = *v1;
  v40 = a1;
  v2 = *(v39 + 312);
  sub_1C840D2FC();
  OUTLINED_FUNCTION_5();
  v36 = v4;
  v37 = v3;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v38 = *(v2 - 8);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  OUTLINED_FUNCTION_59(v11);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_22();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - v23;
  result = v1 + qword_1EC2A9D40;
  if (*(v1 + qword_1EC2A9D40 + 24))
  {
    result = sub_1C832DE28(result, &v41);
  }

  else
  {
    v26 = *(result + 16);
    v41 = *result;
    v42 = v26;
    v43 = *(result + 32);
  }

  if (*(&v42 + 1))
  {
    sub_1C830D408(&v41, v44);
    sub_1C83AC1E0(v40, v14, &qword_1EC29EAD0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1C83AC2AC(v14, &qword_1EC29EAD0);
    }

    else
    {
      (*(v17 + 32))(v24, v14, v15);
      (*(v17 + 16))(v21, v24, v15);
      (*(*(*(v39 + 328) + 8) + 16))(v21, v2);
      if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
      {
        v27 = OUTLINED_FUNCTION_18_6();
        v28(v27);
        (*(v36 + 8))(v7, v37);
      }

      else
      {
        v29 = v38;
        (*(v38 + 32))(v10, v7, v2);
        __swift_project_boxed_opaque_existential_1(v44, v44[3]);
        if ((sub_1C840CF5C() & 1) == 0)
        {
          sub_1C832E7A0();
          swift_allocError();
          *v32 = 1;
          swift_willThrow();
          (*(v29 + 8))(v10, v2);
          v33 = OUTLINED_FUNCTION_18_6();
          v34(v33);
          return __swift_destroy_boxed_opaque_existential_1(v44);
        }

        (*(v29 + 8))(v10, v2);
        v30 = OUTLINED_FUNCTION_18_6();
        v31(v30);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

uint64_t sub_1C83B1B54()
{
  result = v0 + qword_1EC2A9D40;
  if (*(v0 + qword_1EC2A9D40 + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t ParameterSummaryNumberParameter.deinit()
{
  v0 = ParameterSummaryBaseParameter.deinit();
  if (*(v0 + qword_1EC2A9D40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EC2A9D40);
  }

  return v0;
}

uint64_t ParameterSummaryNumberParameter.__deallocating_deinit()
{
  v0 = ParameterSummaryNumberParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL sub_1C83B1C04(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1C840D3CC();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

unint64_t sub_1C83B1CFC()
{
  result = qword_1EC29F440;
  if (!qword_1EC29F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F440);
  }

  return result;
}

unint64_t sub_1C83B1D50()
{
  result = qword_1EC29F448[0];
  if (!qword_1EC29F448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC29F448);
  }

  return result;
}

uint64_t sub_1C83B1DA4()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C8363938;

  return sub_1C83B0DB0(v3, v4, v5, v6);
}

unint64_t sub_1C83B1F34()
{
  result = qword_1EC29D5B8;
  if (!qword_1EC29D5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29D5B8);
  }

  return result;
}

unint64_t sub_1C83B1F78()
{
  result = qword_1EC29F4D0;
  if (!qword_1EC29F4D0)
  {
    sub_1C83B1F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F4D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_9@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_1C83AC1E0(v2 - 104, a2 + 40, a1);
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 20) = BYTE4(a3) & 1;
  return result;
}

uint64_t sub_1C83B2004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C83B2058()
{
  sub_1C840CE4C();
}

uint64_t sub_1C83B2114()
{
  sub_1C840CE4C();
}

uint64_t sub_1C83B2188()
{
  sub_1C840CE4C();
}

uint64_t sub_1C83B2218()
{
  sub_1C840CE4C();
}

uint64_t sub_1C83B22DC()
{
  sub_1C840CE4C();
}

uint64_t sub_1C83B23AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C840BB2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F268);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C832D46C(v2 + *(a1 + 36), &v14 - v10, &qword_1EC29F268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v11, v5);
  }

  sub_1C840D17C();
  v13 = sub_1C840BD9C();
  sub_1C840B3CC();

  sub_1C840BB1C();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t *sub_1C83B2590()
{
  if (qword_1EC29CF58 != -1)
  {
    OUTLINED_FUNCTION_3_15();
  }

  return &qword_1EC29F4D8;
}

uint64_t static PrefetchableImage.Coordinator.current.setter(uint64_t a1)
{
  if (qword_1EC29CF58 != -1)
  {
    OUTLINED_FUNCTION_3_15();
  }

  qword_1EC29F4D8 = a1;

  sub_1C840D81C();
  sub_1C83B28EC();
}

uint64_t (*static PrefetchableImage.Coordinator.current.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (qword_1EC29CF58 != -1)
  {
    OUTLINED_FUNCTION_3_15();
  }

  *a1 = qword_1EC29F4D8;

  return sub_1C83B26BC;
}

uint64_t sub_1C83B26BC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return static PrefetchableImage.Coordinator.current.setter(*a1);
  }

  static PrefetchableImage.Coordinator.current.setter(v2);
}

uint64_t sub_1C83B2714@<X0>(void *a1@<X8>)
{
  sub_1C83B2590();
  *a1 = qword_1EC29F4D8;
}

void sub_1C83B2774()
{
  OUTLINED_FUNCTION_60_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v4);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v6 = *(v1 + 176);
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));
  if (v7 == 1)
  {
    v8 = sub_1C840D08C();
    OUTLINED_FUNCTION_69_0(v3, v9, v10, v8);
    OUTLINED_FUNCTION_77_2();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v1;
    v11[5] = v2;
    v11[6] = v0;

    OUTLINED_FUNCTION_20_7();
    sub_1C83BE2BC();
  }
}

uint64_t sub_1C83B286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C83B2890, a4, 0);
}

uint64_t sub_1C83B2890()
{
  OUTLINED_FUNCTION_130();
  sub_1C8315BF0(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_41();

  return v1();
}

void sub_1C83B28EC()
{
  OUTLINED_FUNCTION_26_4();
  v3 = v0;
  OUTLINED_FUNCTION_47_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v4);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  if (qword_1EC29CF48 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v8 = sub_1C840B4AC();
  OUTLINED_FUNCTION_36_3(v8, qword_1EC2A9D48);

  v9 = sub_1C840B48C();
  v10 = sub_1C840D18C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_58_2();
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1C830E180(*(v3 + 112), *(v3 + 120), &v20);
    *(v11 + 12) = 2080;
    OUTLINED_FUNCTION_25_8();
    v12 = sub_1C840D80C();
    v14 = sub_1C830E180(v12, v13, &v20);

    *(v11 + 14) = v14;
    _os_log_impl(&dword_1C830A000, v9, v10, "[%s] Deactivate after:%s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  v15 = sub_1C840D08C();
  OUTLINED_FUNCTION_69_0(v7, v16, v17, v15);
  OUTLINED_FUNCTION_77_2();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v18[5] = v1;
  v18[6] = v3;

  OUTLINED_FUNCTION_20_7();
  sub_1C83B11B8();

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83B2AF0()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t PrefetchableImage.UserDefaultsPersistence.__allocating_init(key:)()
{
  OUTLINED_FUNCTION_60_0();
  swift_allocObject();
  OUTLINED_FUNCTION_28_3();
  PrefetchableImage.UserDefaultsPersistence.init(key:)();
  return v0;
}

uint64_t sub_1C83B2B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7942736567616D69 && a2 == 0xED00006567617453)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C840D69C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C83B2C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83B2B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C83B2C8C(uint64_t a1)
{
  v2 = sub_1C830F51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B2CC8(uint64_t a1)
{
  v2 = sub_1C830F51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B2D2C()
{
  OUTLINED_FUNCTION_34();
  v16 = v0;
  v1 = *(v0 + 88);
  if (qword_1EC29CF48 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = *(v0 + 32);
  v3 = sub_1C840B4AC();
  __swift_project_value_buffer(v3, qword_1EC2A9D48);
  OUTLINED_FUNCTION_28_3();

  v4 = v1;
  v5 = sub_1C840B48C();
  sub_1C840D16C();
  OUTLINED_FUNCTION_71_2();

  if (OUTLINED_FUNCTION_88_1())
  {
    v6 = *(v0 + 32);
    OUTLINED_FUNCTION_58_2();
    v7 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_18_7();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v2 = 136315394;
    v9 = sub_1C830E180(*(v6 + 112), *(v6 + 120), &v15);
    OUTLINED_FUNCTION_33_3(v9);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v10;
    *v7 = v10;
    OUTLINED_FUNCTION_32_2(&dword_1C830A000, v11, v12, "[%s] Failed to load coordinator state: %@");
    sub_1C832D574(v7, &qword_1EC29E910);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  else
  {
  }

  sub_1C83155E8();

  OUTLINED_FUNCTION_41();

  return v13();
}

uint64_t sub_1C83B2EF0()
{
  OUTLINED_FUNCTION_34();
  v18 = v0;
  if (qword_1EC29CF48 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = sub_1C840B4AC();
  __swift_project_value_buffer(v3, qword_1EC2A9D48);
  OUTLINED_FUNCTION_28_3();

  v4 = v1;
  v5 = sub_1C840B48C();
  sub_1C840D16C();
  OUTLINED_FUNCTION_71_2();

  v6 = OUTLINED_FUNCTION_88_1();
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = *(v0 + 56);
    OUTLINED_FUNCTION_58_2();
    v9 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_18_7();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v2 = 136315394;
    v11 = sub_1C830E180(*(v8 + 112), *(v8 + 120), &v17);
    OUTLINED_FUNCTION_33_3(v11);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v12;
    *v9 = v12;
    OUTLINED_FUNCTION_32_2(&dword_1C830A000, v13, v14, "[%s] Failed to save coordinator state: %@");
    sub_1C832D574(v9, &qword_1EC29E910);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  else
  {
  }

  sub_1C83155E8();

  OUTLINED_FUNCTION_41();

  return v15();
}

uint64_t PrefetchableImage.Coordinator.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  sub_1C832D574(v0 + OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_environment, &qword_1EC29F4F0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PrefetchableImage.Coordinator.__deallocating_deinit()
{
  PrefetchableImage.Coordinator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C83B3190(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

unint64_t sub_1C83B31AC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B3190(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C83B3298(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1C83B33A8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B3298(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1C83B3484(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a2))
  {
    if (HIBYTE(a2) == 1)
    {
      if (HIBYTE(a4) != 1 || *&a1 != *&a3)
      {
        return 0;
      }

      v5 = a4;
      if (a2 != 9)
      {
        return a4 != 9 && a4 == a2;
      }

      return v5 == 9;
    }

    if (HIBYTE(a4) != 2 || a3 != a1)
    {
      return 0;
    }

    if ((a1 & 0xFF00) == 0x400)
    {
      if (BYTE1(a3) != 4)
      {
        return 0;
      }

LABEL_26:
      v5 = BYTE2(a3);
      if ((a1 & 0xFF0000) != 0x90000)
      {
        return BYTE2(a3) != 9 && ((a3 ^ a1) & 0xFF0000) == 0;
      }

      return v5 == 9;
    }

    v6 = 0;
    if (BYTE1(a3) != 4 && ((a3 ^ a1) & 0xFF00) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    return !HIBYTE(a4) && a3 == a1;
  }

  return v6;
}

uint64_t sub_1C83B3570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C840D69C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C83B3634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6769736564 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C840D69C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C840D69C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C83B3740(char a1)
{
  if (!a1)
  {
    return 0x656C797473;
  }

  if (a1 == 1)
  {
    return 0x6E6769736564;
  }

  return 0x746867696577;
}

uint64_t sub_1C83B378C(void *a1, uint64_t a2, int a3)
{
  v34 = a2;
  v38 = a3;
  v4 = BYTE1(a3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F7C0);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F7C8);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F7D0);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F7D8);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8311F00();
  sub_1C840D7FC();
  if (!v4)
  {
    LOBYTE(v37) = 0;
    sub_1C83B758C();
    v21 = v35;
    sub_1C840D5EC();
    LOBYTE(v37) = v34;
    sub_1C83B7490();
    sub_1C840D64C();
    (*(v27 + 8))(v12, v10);
    return (*(v36 + 8))(v16, v21);
  }

  if (v4 != 1)
  {
    LOBYTE(v37) = 2;
    sub_1C83B743C();
    v22 = v30;
    v21 = v35;
    sub_1C840D5EC();
    v23 = v34;
    LOBYTE(v37) = v34;
    v39 = 0;
    sub_1C83B7490();
    v25 = v32;
    v24 = v33;
    sub_1C840D64C();
    if (!v24)
    {
      LOBYTE(v37) = BYTE1(v23);
      v39 = 1;
      sub_1C83B74E4();
      sub_1C840D5FC();
      LOBYTE(v37) = BYTE2(v23);
      v39 = 2;
      sub_1C83B6468();
      sub_1C840D5FC();
    }

    (*(v31 + 8))(v22, v25);
    return (*(v36 + 8))(v16, v21);
  }

  LOBYTE(v37) = 1;
  sub_1C8314CCC();
  v17 = v35;
  sub_1C840D5EC();
  v37 = v34;
  v39 = 0;
  sub_1C83B7538();
  v18 = v29;
  v19 = v33;
  sub_1C840D64C();
  if (!v19)
  {
    LOBYTE(v37) = v38;
    v39 = 1;
    sub_1C83B6468();
    sub_1C840D5FC();
  }

  (*(v28 + 8))(v9, v18);
  return (*(v36 + 8))(v16, v17);
}

uint64_t sub_1C83B3C9C(uint64_t a1, __int16 a2)
{
  sub_1C840D77C();
  sub_1C83231A8(v5, a1, a2);
  return sub_1C840D7CC();
}

uint64_t sub_1C83B3CEC(uint64_t a1)
{
  v2 = sub_1C8311F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B3D28(uint64_t a1)
{
  v2 = sub_1C8311F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B3D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83B3570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C83B3D8C(uint64_t a1)
{
  v2 = sub_1C8314CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B3DC8(uint64_t a1)
{
  v2 = sub_1C8314CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B3E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83B3634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C83B3E34(uint64_t a1)
{
  v2 = sub_1C83B743C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B3E70(uint64_t a1)
{
  v2 = sub_1C83B743C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B3EC8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_25();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C83B3EF4(uint64_t a1)
{
  v2 = sub_1C83B758C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B3F30(uint64_t a1)
{
  v2 = sub_1C83B758C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B3F84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C840D77C();
  sub_1C83231A8(v4, v1, v2);
  return sub_1C840D7CC();
}

uint64_t static PrefetchableImage.Font.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 10);
  v3 = *(a1 + 11);
  v4 = *(a2 + 10);
  v5 = *(a2 + 11);
  if (!sub_1C83B3484(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  if (v2 == 9)
  {
    if (v4 != 9)
    {
      return 0;
    }
  }

  else if (v4 == 9 || v2 != v4)
  {
    return 0;
  }

  if (v3 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || v3 != v5)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1C83B40A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C840D69C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C840D69C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C83B41B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83B40A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C83B41DC(uint64_t a1)
{
  v2 = sub_1C8313EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B4218(uint64_t a1)
{
  v2 = sub_1C8313EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PrefetchableImage.Font.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F510);
  OUTLINED_FUNCTION_5();
  v4 = v3;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v6 = OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_52_1(v6, v7);
  sub_1C8313EBC();
  OUTLINED_FUNCTION_75_2();
  sub_1C840D7FC();
  sub_1C83B6414();
  OUTLINED_FUNCTION_40_3();
  sub_1C840D64C();
  if (!v0)
  {
    sub_1C83B6468();
    OUTLINED_FUNCTION_40_3();
    sub_1C840D5FC();
    sub_1C83B64BC();
    OUTLINED_FUNCTION_40_3();
    sub_1C840D5FC();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_29_0();
}

uint64_t PrefetchableImage.Font.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 10);
  v3 = *(v1 + 11);
  sub_1C83231A8(a1, *v1, *(v1 + 8));
  sub_1C840D79C();
  if (v2 != 9)
  {
    MEMORY[0x1CCA76180](v2);
  }

  if (v3 == 3)
  {
    return sub_1C840D79C();
  }

  sub_1C840D79C();
  return MEMORY[0x1CCA76180](v3);
}

uint64_t PrefetchableImage.Font.hashValue.getter()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_9();
  v12 = OUTLINED_FUNCTION_81_1(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  sub_1C83231A8(v12, v13, v3);
  sub_1C840D79C();
  if (v1 != 9)
  {
    MEMORY[0x1CCA76180](v1);
  }

  sub_1C840D79C();
  if (v2 != 3)
  {
    MEMORY[0x1CCA76180](v2);
  }

  return sub_1C840D7CC();
}

uint64_t sub_1C83B4538()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v4 = *(v0 + 8);
  sub_1C840D77C();
  sub_1C83231A8(v6, v1, v4);
  sub_1C840D79C();
  if (v2 != 9)
  {
    MEMORY[0x1CCA76180](v2);
  }

  sub_1C840D79C();
  if (v3 != 3)
  {
    MEMORY[0x1CCA76180](v3);
  }

  return sub_1C840D7CC();
}

uint64_t sub_1C83B4608()
{
  sub_1C840BFEC();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_82_2();

  return v1(v0);
}

uint64_t sub_1C83B4678(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_3_1();
  }

  if ((a6 & 1) == 0)
  {
    return OUTLINED_FUNCTION_3_1();
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1C840D69C();
  }
}

uint64_t sub_1C83B46AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C840D69C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C83B471C()
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x1CCA76180](0);
  return sub_1C840D7CC();
}

void sub_1C83B4758()
{
  OUTLINED_FUNCTION_28_1();
  v27 = v2;
  v28 = v0;
  v29 = v3;
  v26 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F868);
  OUTLINED_FUNCTION_5();
  v24 = v8;
  v25 = v7;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F870);
  OUTLINED_FUNCTION_5();
  v23 = v13;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F878);
  OUTLINED_FUNCTION_5();
  v17 = v16;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - v19;
  OUTLINED_FUNCTION_52_1(v6, v6[3]);
  sub_1C8313554();
  sub_1C840D7FC();
  v21 = (v17 + 8);
  if (v29)
  {
    OUTLINED_FUNCTION_78_2();
    sub_1C830FD0C();
    sub_1C840D5EC();
    v22 = v25;
    sub_1C840D60C();
    (*(v24 + 8))(v11, v22);
  }

  else
  {
    sub_1C83B7E4C();
    sub_1C840D5EC();
    sub_1C840D60C();
    (*(v23 + 8))(v1, v12);
  }

  (*v21)(v20, v15);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_1C83B49F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x1CCA76180](a4 & 1);
  OUTLINED_FUNCTION_15();

  return sub_1C840CE4C();
}

uint64_t sub_1C83B4A48(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_9();
  v4 = MEMORY[0x1CCA76180](a3 & 1);
  OUTLINED_FUNCTION_81_1(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  sub_1C840CE4C();
  return sub_1C840D7CC();
}

unint64_t sub_1C83B4AA0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1C83B4AB8(uint64_t a1)
{
  v2 = sub_1C8313554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B4AF4(uint64_t a1)
{
  v2 = sub_1C8313554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B4B30(uint64_t a1)
{
  v2 = sub_1C830FD0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B4B6C(uint64_t a1)
{
  v2 = sub_1C830FD0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B4BA8(uint64_t a1)
{
  v2 = sub_1C83B7E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B4BE4(uint64_t a1)
{
  v2 = sub_1C83B7E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B4C38()
{
  v1 = *(v0 + 16);
  sub_1C840D77C();
  MEMORY[0x1CCA76180](v1);
  sub_1C840CE4C();
  return sub_1C840D7CC();
}

uint64_t sub_1C83B4E34(__int16 a1)
{
  v1 = HIBYTE(a1);
  if (a1 != 3)
  {
    v2 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v2);

    MEMORY[0x1CCA75890](46, 0xE100000000000000);
  }

  if (v1)
  {
    v3 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v3);
  }

  return 0;
}

uint64_t sub_1C83B4F08(int a1)
{
  v1 = a1;
  if ((byte_1EC29F4E0 & ~a1) == 0)
  {
    MEMORY[0x1CCA75890](0x6C6C69662ELL, 0xE500000000000000);
  }

  if ((byte_1EC29F4E1 & ~v1) == 0)
  {
    MEMORY[0x1CCA75890](0x6873616C732ELL, 0xE600000000000000);
  }

  if ((byte_1EC29F4E2 & ~v1) == 0)
  {
    MEMORY[0x1CCA75890](0x6F72676B6361622ELL, 0xEB00000000646E75);
  }

  return 0;
}

uint64_t sub_1C83B4FC0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = nullsub_1(*a1, a3, a4);
  *a2 = result;
  return result;
}

uint64_t sub_1C83B50BC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_3_1();
  *a1 = result;
  return result;
}

uint64_t sub_1C83B50E4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B5114(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C83B511C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83A50BC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C83B514C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B517C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C83B518C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B51C0(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1C83B51C0(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_1C83B51F0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B5224(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1C83B5224(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_1C83B5274@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B52A4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C83B531C(__int16 a1, __int16 a2)
{
  if (a1 != 3)
  {
    v2 = a2 ^ a1;
    if (a2 == a1)
    {
      return v2 < 0x100u;
    }

    return OUTLINED_FUNCTION_3_1();
  }

  if (a2 != 3)
  {
    return OUTLINED_FUNCTION_3_1();
  }

  v2 = a2 ^ a1;
  return v2 < 0x100u;
}

uint64_t sub_1C83B535C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C840D69C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C83B5424(char a1)
{
  if (a1)
  {
    return 0x7367616C66;
  }

  else
  {
    return 0x6570616873;
  }
}

uint64_t sub_1C83B544C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F8A0);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_52_1(a1, a1[3]);
  sub_1C83B7EF4();
  OUTLINED_FUNCTION_75_2();
  sub_1C840D7FC();
  sub_1C83B7F48();
  OUTLINED_FUNCTION_40_3();
  sub_1C840D5FC();
  if (!v1)
  {
    sub_1C83B7F9C();
    OUTLINED_FUNCTION_40_3();
    sub_1C840D64C();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C83B55B4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 3)
  {
    sub_1C840D79C();
  }

  else
  {
    sub_1C840D79C();
    MEMORY[0x1CCA76180](a2);
  }

  return sub_1C840D79C();
}

uint64_t sub_1C83B5608(unsigned __int8 a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_9();
  sub_1C840D79C();
  if (v2 != 3)
  {
    MEMORY[0x1CCA76180](a1);
  }

  sub_1C840D79C();
  return sub_1C840D7CC();
}

uint64_t sub_1C83B567C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F8D8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_52_1(a1, a1[3]);
  sub_1C83B7EF4();
  OUTLINED_FUNCTION_65_2();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1C83B7FF0();
  OUTLINED_FUNCTION_76_2();
  sub_1C840D57C();
  sub_1C83B8044();
  OUTLINED_FUNCTION_76_2();
  sub_1C840D5CC();
  v4 = OUTLINED_FUNCTION_23_5();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8 | (v7 << 8);
}

uint64_t sub_1C83B57F8@<X0>(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = nullsub_1(*a1, a3, a4);
  *a2 = result;
  return result;
}

uint64_t sub_1C83B5834@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B2004(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C83B5864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83B535C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C83B588C(uint64_t a1)
{
  v2 = sub_1C83B7EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B58C8(uint64_t a1)
{
  v2 = sub_1C83B7EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C83B5914()
{
  v1 = *v0;
  sub_1C840D77C();
  sub_1C840D79C();
  if (v1 != 3)
  {
    MEMORY[0x1CCA76180](v1);
  }

  sub_1C840D79C();
  return sub_1C840D7CC();
}

uint64_t sub_1C83B5990@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1C83B567C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static PrefetchableImage.Image.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 17);
  v5 = *(a1 + 9);
  v6 = a1[3];
  v7 = *(a1 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 18);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    v12 = v3 == *a2 && a1[1] == *(a2 + 8);
    if (!v12 && (sub_1C840D69C() & 1) == 0)
    {
      return 0;
    }

    if (v4 == 3)
    {
      if (v8 != 3)
      {
        return 0;
      }
    }

    else if (v8 == 3 || v4 != v8)
    {
      return 0;
    }

    if (v5 == 4)
    {
      if (v9 != 4)
      {
        return 0;
      }
    }

    else if (v9 == 4 || (sub_1C83B531C(v5, v9) & 1) == 0)
    {
      return 0;
    }

    if ((~v7 & 0xFF00) != 0)
    {
      v17 = v6;
      v18 = v7;
      if ((~v11 & 0xFF00) == 0)
      {
        return 0;
      }

      v15 = v10;
      v16 = v11;
      if ((static PrefetchableImage.Font.== infix(_:_:)(&v17, &v15) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((~v11 & 0xFF00) != 0)
    {
      return 0;
    }

    return 1;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1C83B5B44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6163536567616D69 && a2 == 0xEA0000000000656CLL;
    if (v6 || (sub_1C840D69C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61566C6F626D7973 && a2 == 0xED0000746E616972;
      if (v7 || (sub_1C840D69C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953394534 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C840D69C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C83B5CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83B5B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C83B5CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C83B5CAC();
  *a1 = result;
  return result;
}

uint64_t sub_1C83B5D04(uint64_t a1)
{
  v2 = sub_1C831191C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C83B5D40(uint64_t a1)
{
  v2 = sub_1C831191C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PrefetchableImage.Image.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F558);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = v3[3];
  v8 = v3;
  v10 = v9;
  OUTLINED_FUNCTION_52_1(v8, v7);
  OUTLINED_FUNCTION_102();
  sub_1C83150F0();
  sub_1C831191C();
  OUTLINED_FUNCTION_75_2();
  sub_1C840D7FC();
  sub_1C83B6510();
  OUTLINED_FUNCTION_11_10();
  sub_1C840D64C();
  OUTLINED_FUNCTION_102();
  sub_1C83150F8();
  if (!v0)
  {
    OUTLINED_FUNCTION_78_2();
    sub_1C83B6564();
    OUTLINED_FUNCTION_11_10();
    sub_1C840D5FC();
    sub_1C83B65B8();
    OUTLINED_FUNCTION_11_10();
    sub_1C840D5FC();
    sub_1C83B660C();
    OUTLINED_FUNCTION_11_10();
    sub_1C840D5FC();
  }

  (*(v5 + 8))(v1, v10);
  OUTLINED_FUNCTION_29_0();
}

uint64_t PrefetchableImage.Image.hashValue.getter()
{
  OUTLINED_FUNCTION_9();
  PrefetchableImage.Image.hash(into:)();
  return sub_1C840D7CC();
}

uint64_t sub_1C83B5FF0()
{
  sub_1C840D77C();
  PrefetchableImage.Image.hash(into:)();
  return sub_1C840D7CC();
}

uint64_t PrefetchableImage.UserDefaultsPersistence.init(key:)()
{
  OUTLINED_FUNCTION_60_0();
  swift_defaultActor_initialize();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  v3 = objc_opt_self();

  v4 = [v3 standardUserDefaults];
  *(v1 + 128) = xmmword_1C841B140;
  *(v1 + 144) = v4;
  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return v1;
}

uint64_t sub_1C83B60F8()
{
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_64_0();
  sub_1C83B61F4(v1, v0);
  return swift_endAccess();
}

void *PrefetchableImage.UserDefaultsPersistence.deinit()
{

  v1 = v0[18];
  sub_1C8315114(v0[16], v0[17]);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PrefetchableImage.UserDefaultsPersistence.__deallocating_deinit()
{
  PrefetchableImage.UserDefaultsPersistence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C83B61CC@<X0>(uint64_t *a1@<X8>)
{
  result = PrefetchableImage.UserDefaultsPersistence.__allocating_init(key:)();
  *a1 = result;
  return result;
}

void sub_1C83B61F4(uint64_t a1, unint64_t a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F968);
  v13 = &off_1F480A318;
  v10 = a1;
  v11 = a2;
  if (__swift_project_boxed_opaque_existential_1(&v10, v12)[1] >> 60 == 15)
  {
    v5 = *(v2 + 16);
    v6 = sub_1C840CD9C();
    [v5 removeObjectForKey_];

    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    sub_1C83B80EC(a1, a2);
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v7 = *(v2 + 16);
    v10 = a1;
    v11 = a2;
    v8 = sub_1C840D6BC();
    v9 = sub_1C840CD9C();
    [v7 setObject:v8 forKey:v9];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C83B6304()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C83B6368()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_80_2();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_0_14(v4);
  *v5 = v6;
  v5[1] = sub_1C838C18C;
  v7 = OUTLINED_FUNCTION_33_0();

  return sub_1C83B286C(v7, v8, v9, v1, v2, v3);
}

unint64_t sub_1C83B6414()
{
  result = qword_1EC29F520;
  if (!qword_1EC29F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F520);
  }

  return result;
}

unint64_t sub_1C83B6468()
{
  result = qword_1EC29F528;
  if (!qword_1EC29F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F528);
  }

  return result;
}

unint64_t sub_1C83B64BC()
{
  result = qword_1EC29F530;
  if (!qword_1EC29F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F530);
  }

  return result;
}

unint64_t sub_1C83B6510()
{
  result = qword_1EC29F568;
  if (!qword_1EC29F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F568);
  }

  return result;
}

unint64_t sub_1C83B6564()
{
  result = qword_1EC29F570;
  if (!qword_1EC29F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F570);
  }

  return result;
}

unint64_t sub_1C83B65B8()
{
  result = qword_1EC29F578;
  if (!qword_1EC29F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F578);
  }

  return result;
}

unint64_t sub_1C83B660C()
{
  result = qword_1EC29F580;
  if (!qword_1EC29F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F580);
  }

  return result;
}

unint64_t sub_1C83B6664()
{
  result = qword_1EC29F5B0;
  if (!qword_1EC29F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F5B0);
  }

  return result;
}

uint64_t dispatch thunk of PrefetchableImage.Coordinator.deactivate()()
{
  OUTLINED_FUNCTION_10_0();
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C837541C;

  return v4();
}

uint64_t getEnumTagSinglePayload for PrefetchableImage.Font(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 12))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 9);
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

uint64_t sub_1C83B689C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 36))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1C83B68DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of PrefetchableImage.Persistence.load()()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_72(v3, v4, v5);
  OUTLINED_FUNCTION_45_3();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_0_14(v7);
  *v8 = v9;
  v8[1] = sub_1C838C18C;

  return v11(v2, v1, v0);
}

uint64_t dispatch thunk of PrefetchableImage.Persistence.save(state:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_72(v4, v5, v6);
  OUTLINED_FUNCTION_45_3();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C838C18C;

  return v10(v3, v1, v0);
}

uint64_t sub_1C83B6BF0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C83B6D34(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C83B6F10(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for PrefetchableImage.Image.SymbolVariants(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65284;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t sub_1C83B7018(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1C83B7058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrefetchableImage.Font.Base(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 9);
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

uint64_t storeEnumTagSinglePayload for PrefetchableImage.Font.Base(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C83B7180()
{
  result = qword_1EC29F760;
  if (!qword_1EC29F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F760);
  }

  return result;
}

unint64_t sub_1C83B71D8()
{
  result = qword_1EC29F768;
  if (!qword_1EC29F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F768);
  }

  return result;
}

unint64_t sub_1C83B7230()
{
  result = qword_1EC29F770;
  if (!qword_1EC29F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F770);
  }

  return result;
}

unint64_t sub_1C83B7288()
{
  result = qword_1EC29F778;
  if (!qword_1EC29F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F778);
  }

  return result;
}

unint64_t sub_1C83B72E0()
{
  result = qword_1EC29F780;
  if (!qword_1EC29F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F780);
  }

  return result;
}

unint64_t sub_1C83B7338()
{
  result = qword_1EC29F788;
  if (!qword_1EC29F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F788);
  }

  return result;
}

unint64_t sub_1C83B7390()
{
  result = qword_1EC29F790;
  if (!qword_1EC29F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F790);
  }

  return result;
}

unint64_t sub_1C83B73E8()
{
  result = qword_1EC29F798;
  if (!qword_1EC29F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F798);
  }

  return result;
}

unint64_t sub_1C83B743C()
{
  result = qword_1EC29F7E8;
  if (!qword_1EC29F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7E8);
  }

  return result;
}

unint64_t sub_1C83B7490()
{
  result = qword_1EC29F7F0;
  if (!qword_1EC29F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7F0);
  }

  return result;
}

unint64_t sub_1C83B74E4()
{
  result = qword_1EC29F7F8;
  if (!qword_1EC29F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7F8);
  }

  return result;
}

unint64_t sub_1C83B7538()
{
  result = qword_1EC29F808;
  if (!qword_1EC29F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F808);
  }

  return result;
}

unint64_t sub_1C83B758C()
{
  result = qword_1EC29F810;
  if (!qword_1EC29F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F810);
  }

  return result;
}

unint64_t sub_1C83B75E0()
{
  result = qword_1EC29F820;
  if (!qword_1EC29F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F820);
  }

  return result;
}

char *sub_1C83B7634(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1C83B7728(uint64_t a1)
{
  sub_1C840B21C();
  sub_1C83251B0(&qword_1EC29F400, MEMORY[0x1E6969950]);
  v2 = sub_1C840CD5C();

  return sub_1C83B7850(a1, v2);
}

unint64_t sub_1C83B77C0(uint64_t a1)
{
  sub_1C840CDDC();
  v2 = sub_1C840D77C();
  OUTLINED_FUNCTION_81_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_1C840CE4C();
  v10 = sub_1C840D7CC();

  return sub_1C83B7A0C(a1, v10);
}

unint64_t sub_1C83B7850(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1C840B21C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1C83251B0(qword_1EC29F9B0, MEMORY[0x1E6969950]);
    v10 = sub_1C840CD8C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C83B7A0C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1C840CDDC();
    v7 = v6;
    if (v5 == sub_1C840CDDC() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1C840D69C();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1C83B7B04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_39_2(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  sub_1C840CADC();
  OUTLINED_FUNCTION_6();
  result = (*(v10 + 32))(v9 + *(v10 + 72) * a1, a4);
  v12 = *(a5 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }

  return result;
}

unint64_t sub_1C83B7B88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_39_2(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_1C83B7BBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C841B160;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1C83B7C20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F960);
  v2 = *v0;
  v3 = sub_1C840D39C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        v24 = *(v18 + 24);
        LODWORD(v18) = *(v18 + 32);
        v25 = *(v4 + 48) + 8 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 17) = v22;
        *(v25 + 18) = v23;
        *(v25 + 24) = v24;
        *(v25 + 32) = v18;
        result = sub_1C83150F0();
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_1C83B7DA4()
{
  result = qword_1EC29F850;
  if (!qword_1EC29F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F850);
  }

  return result;
}

unint64_t sub_1C83B7DF8()
{
  result = qword_1EC29F858;
  if (!qword_1EC29F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F858);
  }

  return result;
}

unint64_t sub_1C83B7E4C()
{
  result = qword_1EC29F890;
  if (!qword_1EC29F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F890);
  }

  return result;
}

unint64_t sub_1C83B7EA0()
{
  result = qword_1EC29F898;
  if (!qword_1EC29F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F898);
  }

  return result;
}

unint64_t sub_1C83B7EF4()
{
  result = qword_1EC29F8A8;
  if (!qword_1EC29F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F8A8);
  }

  return result;
}

unint64_t sub_1C83B7F48()
{
  result = qword_1EC29F8B0;
  if (!qword_1EC29F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F8B0);
  }

  return result;
}

unint64_t sub_1C83B7F9C()
{
  result = qword_1EC29F8B8;
  if (!qword_1EC29F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F8B8);
  }

  return result;
}

unint64_t sub_1C83B7FF0()
{
  result = qword_1EC29F8E0;
  if (!qword_1EC29F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F8E0);
  }

  return result;
}

unint64_t sub_1C83B8044()
{
  result = qword_1EC29F8E8;
  if (!qword_1EC29F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F8E8);
  }

  return result;
}

unint64_t sub_1C83B8098()
{
  result = qword_1EC29F948;
  if (!qword_1EC29F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F948);
  }

  return result;
}

uint64_t sub_1C83B80EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C8380094(a1, a2);
  }

  return a1;
}

uint64_t sub_1C83B8110(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C83B824C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C83B8470(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_1();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_63(a1);
}

_BYTE *_s18WorkflowUIServices17PrefetchableImageVwst_0_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrefetchableImage.Font.TextStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrefetchableImage.Font.TextStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C83B86EC()
{
  result = qword_1EC29FA38;
  if (!qword_1EC29FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA38);
  }

  return result;
}

unint64_t sub_1C83B8744()
{
  result = qword_1EC29FA40;
  if (!qword_1EC29FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA40);
  }

  return result;
}

unint64_t sub_1C83B879C()
{
  result = qword_1EC29FA48;
  if (!qword_1EC29FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA48);
  }

  return result;
}

unint64_t sub_1C83B87F0()
{
  result = qword_1EC29FA50;
  if (!qword_1EC29FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA50);
  }

  return result;
}

unint64_t sub_1C83B8848()
{
  result = qword_1EC29FA58;
  if (!qword_1EC29FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA58);
  }

  return result;
}

unint64_t sub_1C83B88A0()
{
  result = qword_1EC29FA60;
  if (!qword_1EC29FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA60);
  }

  return result;
}

unint64_t sub_1C83B88F8()
{
  result = qword_1EC29FA68;
  if (!qword_1EC29FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA68);
  }

  return result;
}

unint64_t sub_1C83B8950()
{
  result = qword_1EC29FA70;
  if (!qword_1EC29FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA70);
  }

  return result;
}