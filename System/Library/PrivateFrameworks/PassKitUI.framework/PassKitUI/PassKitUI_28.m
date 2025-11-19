uint64_t sub_1BD32AB8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD32ABC8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t NearbyPeerPaymentReceiverVFXViewController.setState(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v6 = sub_1BE04D214();
  v118 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v111[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v121, v10);
  v119 = &v111[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v111[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v111[-v18];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v111[-v22];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v111[-v26];
  v28 = OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_state;
  swift_beginAccess();
  v116 = v28;
  v29 = v3 + v28;
  v30 = v3;
  sub_1BD26681C(v29, v27);
  sub_1BE04D094();
  v120 = v27;
  sub_1BD26681C(v27, v23);
  sub_1BD26681C(a1, v19);
  v117 = v9;
  v31 = sub_1BE04D204();
  v32 = sub_1BE052C54();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v114 = a2;
    v34 = v33;
    v35 = swift_slowAlloc();
    v122[0] = v35;
    *v34 = 136315394;
    v112 = v32;
    v36 = NearbyPeerPaymentReceiverState.description.getter();
    v113 = v6;
    v37 = v15;
    v38 = a1;
    v39 = v30;
    v41 = v40;
    sub_1BD32E45C(v23);
    v42 = sub_1BD123690(v36, v41, v122);
    v30 = v39;
    a1 = v38;
    v15 = v37;

    *(v34 + 4) = v42;
    *(v34 + 12) = 2080;
    v43 = NearbyPeerPaymentReceiverState.description.getter();
    v45 = v44;
    sub_1BD32E45C(v19);
    v46 = sub_1BD123690(v43, v45, v122);

    *(v34 + 14) = v46;
    _os_log_impl(&dword_1BD026000, v31, v112, "NearbyPeerPayment/VFX: Receiver state changed from: %s to: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v35, -1, -1);
    v47 = v34;
    a2 = v114;
    MEMORY[0x1BFB45F20](v47, -1, -1);

    (*(v118 + 8))(v117, v113);
  }

  else
  {

    sub_1BD32E45C(v19);
    sub_1BD32E45C(v23);
    (*(v118 + 8))(v117, v6);
  }

  v48 = v116;
  swift_beginAccess();
  sub_1BD32E4B8(a1, v30 + v48);
  swift_endAccess();
  sub_1BD26681C(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1BD32E45C(v15);
        v53 = MEMORY[0x1E69E7CC0];
        goto LABEL_34;
      }

      v118 = a1;
      sub_1BD32E45C(v15);
      v50 = swift_allocObject();
      *(v50 + 16) = v30;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1BD330624;
      *(v51 + 24) = v50;
      v52 = v30;
      v53 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v55 = v53[2];
      v54 = v53[3];
      v56 = v55 + 1;
      v57 = a2;
      if (v55 >= v54 >> 1)
      {
        v53 = sub_1BD1D7BB0((v54 > 1), v55 + 1, 1, v53);
      }

      v53[2] = v56;
      v58 = &v53[2 * v55];
      v58[4] = sub_1BD330914;
      v58[5] = v51;
      v59 = swift_allocObject();
      *(v59 + 16) = v52;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_1BD33062C;
      *(v60 + 24) = v59;
      v61 = v53[3];
      v62 = v52;
      if (v56 >= v61 >> 1)
      {
        v53 = sub_1BD1D7BB0((v61 > 1), v55 + 2, 1, v53);
      }

      a2 = v57;
      v53[2] = v55 + 2;
      v63 = &v53[2 * v56];
      v63[4] = sub_1BD330914;
      v63[5] = v60;
      v64 = swift_allocObject();
      *(v64 + 16) = v62;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_1BD330634;
      *(v65 + 24) = v64;
      v66 = v53[2];
      v67 = v53[3];
      v68 = v62;
      if (v66 >= v67 >> 1)
      {
        v53 = sub_1BD1D7BB0((v67 > 1), v66 + 1, 1, v53);
      }

      v53[2] = v66 + 1;
      v69 = &v53[2 * v66];
      v69[4] = sub_1BD330914;
      v69[5] = v65;
    }

    else
    {
      v118 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);
      v117 = v15;

      v74 = swift_allocObject();
      *(v74 + 16) = v30;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_1BD330658;
      *(v75 + 24) = v74;
      v76 = v30;
      v53 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v78 = v53[2];
      v77 = v53[3];
      v79 = v78 + 1;
      v80 = a2;
      if (v78 >= v77 >> 1)
      {
        v53 = sub_1BD1D7BB0((v77 > 1), v78 + 1, 1, v53);
      }

      v53[2] = v79;
      v81 = &v53[2 * v78];
      v81[4] = sub_1BD330914;
      v81[5] = v75;
      v82 = swift_allocObject();
      *(v82 + 16) = v76;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_1BD33067C;
      *(v83 + 24) = v82;
      v84 = v53[3];
      v85 = v76;
      if (v79 >= v84 >> 1)
      {
        v53 = sub_1BD1D7BB0((v84 > 1), v78 + 2, 1, v53);
      }

      a2 = v80;
      v53[2] = v78 + 2;
      v86 = &v53[2 * v79];
      v86[4] = sub_1BD330914;
      v86[5] = v83;
      sub_1BD0DE53C(v117, &unk_1EBD3F690);
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v118 = a1;
    if (EnumCaseMultiPayload == 4)
    {
      v70 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      v53 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v72 = v53[2];
      v71 = v53[3];
      if (v72 >= v71 >> 1)
      {
        v53 = sub_1BD1D7BB0((v71 > 1), v72 + 1, 1, v53);
      }

      v53[2] = v72 + 1;
      v73 = &v53[2 * v72];
      v73[4] = sub_1BD3306A0;
      v73[5] = v70;
    }

    else
    {
      v95 = swift_allocObject();
      *(v95 + 16) = v30;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_1BD3305F8;
      *(v96 + 24) = v95;
      v97 = v30;
      v53 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v99 = v53[2];
      v98 = v53[3];
      v100 = v99 + 1;
      v101 = a2;
      if (v99 >= v98 >> 1)
      {
        v53 = sub_1BD1D7BB0((v98 > 1), v99 + 1, 1, v53);
      }

      v53[2] = v100;
      v102 = &v53[2 * v99];
      v102[4] = sub_1BD330914;
      v102[5] = v96;
      v103 = swift_allocObject();
      *(v103 + 16) = v97;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_1BD330600;
      *(v104 + 24) = v103;
      v105 = v53[3];
      v106 = v97;
      if (v100 >= v105 >> 1)
      {
        v53 = sub_1BD1D7BB0((v105 > 1), v99 + 2, 1, v53);
      }

      a2 = v101;
      v53[2] = v99 + 2;
      v107 = &v53[2 * v100];
      v107[4] = sub_1BD330914;
      v107[5] = v104;
    }

LABEL_33:
    a1 = v118;
    goto LABEL_34;
  }

  v87 = v15;
  v88 = a1;
  v89 = swift_allocObject();
  *(v89 + 16) = v30;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1BD32E51C;
  *(v90 + 24) = v89;
  v91 = v30;
  v53 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v93 = v53[2];
  v92 = v53[3];
  if (v93 >= v92 >> 1)
  {
    v53 = sub_1BD1D7BB0((v92 > 1), v93 + 1, 1, v53);
  }

  v53[2] = v93 + 1;
  v94 = &v53[2 * v93];
  v94[4] = sub_1BD32E540;
  v94[5] = v90;
  __swift_destroy_boxed_opaque_existential_0(v87);
  a1 = v88;
LABEL_34:
  v108 = a1;
  v109 = v119;
  sub_1BD26681C(v108, v119);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    __swift_destroy_boxed_opaque_existential_0(v109);
    sub_1BD51228C(v53, a2, v115);
  }

  else
  {
    sub_1BD32E45C(v109);
    sub_1BD5114BC(v53, a2, v115);
  }

  return sub_1BD32E45C(v120);
}

uint64_t NearbyPeerPaymentReceiverVFXViewController.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_state;
  swift_beginAccess();
  return sub_1BD26681C(v1 + v3, a1);
}

uint64_t NearbyPeerPaymentReceiverVFXViewController.animationDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyPeerPaymentReceiverVFXViewController.animationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD317324;
}

id NearbyPeerPaymentReceiverVFXViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NearbyPeerPaymentReceiverVFXViewController.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for NearbyPeerPaymentReceiverState(0);
  swift_storeEnumTagMultiPayload();
  *&v0[OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v6, sel_init);
  v3 = *&v2[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA];
  v4 = v2;
  [v3 removeFromParentNode];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB] removeFromParentNode];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferStatusParticles] removeFromParentNode];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles] removeFromParentNode];
  sub_1BD32BA44();
  sub_1BD632BE4();

  return v4;
}

void sub_1BD32BA44()
{
  v14 = 53;
  v13 = MEMORY[0x1E69E6448];
  v1 = MEMORY[0x1E69E6448];
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 54;
  v13 = v1;
  v2 = v1;
  LODWORD(v12[0]) = 1032134328;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 39;
  v3 = objc_opt_self();
  v4 = [v3 valueWithVFXFloat2_];
  v5 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  v13 = v5;
  v12[0] = v4;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 49;
  v13 = v2;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 16;
  v11 = v3;
  v6 = [v3 valueWithVFXFloat2_];
  v13 = v5;
  v12[0] = v6;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 16;
  v7 = [v3 valueWithVFXFloat2_];
  v13 = v5;
  v12[0] = v7;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 2;
  v8 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E6448];
  LODWORD(v12[0]) = 1133903872;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 22;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 1;
  v13 = v8;
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 37;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 48;
  v13 = v8;
  LODWORD(v12[0]) = 0x40000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 33;
  v13 = v8;
  LODWORD(v12[0]) = 1058642330;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 34;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 38;
  v13 = MEMORY[0x1E69E63B0];
  v12[0] = 0x3FF0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 2;
  v13 = v8;
  LODWORD(v12[0]) = 1114636288;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 5;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 6;
  v13 = v8;
  LODWORD(v12[0]) = -1090519040;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 7;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 26;
  v13 = v8;
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 35;
  v13 = v8;
  LODWORD(v12[0]) = 1041865114;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 27;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing);
  [v9 setHidden_];
  [v9 setPaused_];
  v14 = 52;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 41;
  v13 = v8;
  LODWORD(v12[0]) = 1071225242;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 50;
  v13 = v8;
  LODWORD(v12[0]) = 1075838976;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 42;
  v10 = [v11 valueWithVFXFloat2_];
  v13 = v5;
  v12[0] = v10;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 56;
  v13 = v8;
  LODWORD(v12[0]) = 1045220557;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 55;
  v13 = v8;
  LODWORD(v12[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  v14 = 51;
  v13 = v8;
  LODWORD(v12[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v14, v12);
  sub_1BD0DE53C(v12, &qword_1EBD3EC90);
  NearbyPeerPaymentReceiverVFXViewController.restartEmitters()();
}

Swift::Void __swiftcall NearbyPeerPaymentReceiverVFXViewController.restartEmitters()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ambientEmitter);
  v2 = [v1 particleEmitter];
  [v2 killParticles];

  v3 = [v1 particleEmitter];
  [v3 restart];

  v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings);
  v5 = [v4 particleEmitter];
  [v5 killParticles];

  v6 = [v4 particleEmitter];
  [v6 restart];

  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_unknownAmountEmitter);
  v8 = [v7 particleEmitter];
  [v8 killParticles];

  v9 = [v7 particleEmitter];
  [v9 restart];

  v10 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (v11 >> 62)
  {
    v12 = sub_1BE053704();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v21 = v4;
  sub_1BE048C84();
  v13 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB40900](v13, v11);
    }

    else
    {
      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = [v14 particleEmitter];
    [v16 killParticles];

    v17 = [v15 particleEmitter];
    [v17 restart];
  }

  while (v12 != v13);

LABEL_10:
  v24 = 47;
  v18 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  swift_beginAccess();
  v19 = *(v0 + v18);
  if (v19 >> 62)
  {
    v20 = sub_1BE053704();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E6448];
  v22[0] = 4000.0 / v20;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, v22);
  sub_1BD0DE53C(v22, &qword_1EBD3EC90);
}

uint64_t sub_1BD32C424(uint64_t (**a1)(void))
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD32BA44();
  }

  return v1();
}

uint64_t sub_1BD32C490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v50 = a1;
  v4 = sub_1BE051F54();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BE051FA4();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE051FC4();
  v54 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v9);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = &v47 - v13;
  v68[0] = 20;
  v14 = objc_opt_self();
  v15 = [v14 valueWithVFXFloat3_];
  v16 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  v65 = v16;
  aBlock = v15;
  VFXNode.setBehaviorGraphValue(key:value:)(v68, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v68[0] = 49;
  v17 = MEMORY[0x1E69E6448];
  v65 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v68, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v68[0] = 36;
  v65 = v17;
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v68, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v68[0] = 38;
  v65 = MEMORY[0x1E69E63B0];
  aBlock = 0x4011000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v68, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v68[0] = 40;
  v18 = [v14 valueWithVFXFloat2_];
  v65 = v16;
  aBlock = v18;
  VFXNode.setBehaviorGraphValue(key:value:)(v68, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v69[0] = 37;
  v19 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes;
  swift_beginAccess();
  v20 = *&v2[v19];
  if (v20 >> 62)
  {
    v21 = sub_1BE053704();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x1E69E6448];
  v65 = MEMORY[0x1E69E6448];
  *&aBlock = 5000.0 / v21;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v23 = objc_opt_self();
  [v23 begin];
  [v23 setAnimationDuration_];
  v24 = *MEMORY[0x1E6979ED0];
  v48 = objc_opt_self();
  v49 = v24;
  v25 = [v48 functionWithName_];
  [v23 setAnimationTimingFunction_];

  v69[0] = 40;
  v26 = [v14 valueWithVFXFloat2_];
  v65 = v16;
  aBlock = v26;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v69[0] = 33;
  v65 = MEMORY[0x1E69E63B0];
  aBlock = 0x3FE3333333333333;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v69[0] = 2;
  v65 = v22;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v69[0] = 48;
  v65 = v22;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v69[0] = 2;
  v65 = v22;
  LODWORD(aBlock) = 1120403456;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v69[0] = 37;
  v27 = *&v3[v19];
  if (v27 >> 62)
  {
    v28 = sub_1BE053704();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = MEMORY[0x1E69E6448];
  *&aBlock = 3600.0 / v28;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  v66 = sub_1BD3307F0;
  v67 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1BD126964;
  v65 = &block_descriptor_88;
  v30 = _Block_copy(&aBlock);
  v31 = v3;

  [v23 setCompletionBlock_];
  _Block_release(v30);
  [v23 commit];
  [v23 begin];
  [v23 setAnimationDuration_];
  v32 = v48;
  v33 = [v48 functionWithName_];
  [v23 setAnimationTimingFunction_];

  v69[0] = 38;
  v65 = MEMORY[0x1E69E63B0];
  aBlock = 0x3FF0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  [v23 commit];
  sub_1BD32E660(v31, v50, v51);
  [v23 begin];
  [v23 setAnimationDuration_];
  v34 = [v32 functionWithName_];
  [v23 setAnimationTimingFunction_];

  v69[0] = 22;
  v65 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1042536202;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v35 = swift_allocObject();
  *(v35 + 16) = v31;
  v66 = sub_1BD3307F8;
  v67 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1BD126964;
  v65 = &block_descriptor_94;
  v36 = _Block_copy(&aBlock);
  v37 = v31;

  [v23 setCompletionBlock_];
  _Block_release(v36);
  [v23 commit];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v38 = sub_1BE052D54();
  v39 = v52;
  sub_1BE051FB4();
  v40 = v53;
  sub_1BE051FF4();
  v54 = *(v54 + 8);
  (v54)(v39, v61);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = sub_1BD330800;
  v67 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1BD126964;
  v65 = &block_descriptor_98;
  v42 = _Block_copy(&aBlock);

  v43 = v55;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v44 = v57;
  v45 = v60;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v40, v43, v44, v42);
  _Block_release(v42);

  (*(v59 + 8))(v44, v45);
  (*(v56 + 8))(v43, v58);
  return (v54)(v40, v61);
}

uint64_t sub_1BD32CFB0(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_1BE048964();
  a2(sub_1BD1839E0, v5);
}

uint64_t sub_1BD32D040(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_1BE051F54();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FC4();
  v29 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v20 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v28 = *(v12 + 8);
  v28(v15, v11);
  v21 = swift_allocObject();
  v22 = v30;
  v23 = v31;
  v21[2] = v2;
  v21[3] = v22;
  v21[4] = v23;
  aBlock[4] = sub_1BD3307E4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_60;
  v24 = _Block_copy(aBlock);
  v25 = v2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v19, v10, v6, v24);
  _Block_release(v24);

  (*(v34 + 8))(v6, v3);
  (*(v32 + 8))(v10, v33);
  return (v28)(v19, v29);
}

uint64_t sub_1BD32D3CC(uint64_t (*a1)(uint64_t))
{
  v5 = 38;
  v4[3] = MEMORY[0x1E69E63B0];
  v4[0] = 0x3FF3333333333333;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v4);
  v2 = sub_1BD0DE53C(v4, &qword_1EBD3EC90);
  return a1(v2);
}

uint64_t sub_1BD32D460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD32D4FC(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_1BE051F54();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v20 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v27 = *(v12 + 8);
  v27(v15, v11);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v23 = v28;
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = a2;
  aBlock[4] = sub_1BD33086C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_127;
  v24 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v19, v10, v6, v24);
  _Block_release(v24);

  (*(v31 + 8))(v6, v3);
  (*(v29 + 8))(v10, v30);
  return (v27)(v19, v11);
}

id sub_1BD32D8B0(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_1BE051F54();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FC4();
  v28 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v20 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v27 = *(v12 + 8);
  v27(v15, v11);
  v21 = swift_allocObject();
  v22 = v30;
  v21[2] = v29;
  v21[3] = a2;
  v21[4] = v22;
  v37 = sub_1BD330878;
  v38 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v36 = &block_descriptor_136;
  v23 = _Block_copy(aBlock);
  sub_1BE048964();
  v22;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v19, v10, v6, v23);
  _Block_release(v23);

  (*(v33 + 8))(v6, v3);
  (*(v31 + 8))(v10, v32);
  v27(v19, v28);
  v24 = objc_opt_self();
  [v24 begin];
  [v24 setAnimationDuration_];
  v25 = [objc_opt_self() functionWithName_];
  [v24 setAnimationTimingFunction_];

  v34 = 55;
  v36 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v34, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v24 commit];
  return sub_1BD32FBD0();
}

uint64_t sub_1BD32DD2C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v35 = a1;
  v3 = sub_1BE051F54();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v36 = &v34 - v15;
  v50[0] = 37;
  v16 = MEMORY[0x1E69E6448];
  v47 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 2;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = objc_opt_self();
  [v17 begin];
  [v17 setAnimationDuration_];
  v50[0] = 17;
  v18 = MEMORY[0x1E69E63B0];
  v47 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0x3FEEB851EB851EB8;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 26;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 49;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 1;
  v47 = v18;
  aBlock[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 22;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 1;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 36;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 5;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 6;
  v47 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v50[0] = 7;
  v47 = v16;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v50, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v17 commit];
  v19 = v2 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 24))(PKEdgeInsetsMake, 0, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v22 = sub_1BE052D54();
  sub_1BE051FB4();
  v23 = v36;
  sub_1BE051FF4();
  v38 = *(v38 + 8);
  v24 = v12;
  v25 = v39;
  (v38)(v24, v39);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = v35;
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v37;
  v48 = sub_1BD3308C0;
  v49 = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v47 = &block_descriptor_182;
  v29 = _Block_copy(aBlock);
  sub_1BE048964();

  v30 = v40;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v31 = v43;
  v32 = v45;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v23, v30, v31, v29);
  _Block_release(v29);

  (*(v44 + 8))(v31, v32);
  (*(v41 + 8))(v30, v42);
  return (v38)(v23, v25);
}

uint64_t sub_1BD32E45C(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD32E4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD32E548(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_1BE053704();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE048C84();
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 particleEmitter];
      [v9 killParticles];
    }

    while (v5 != v6);
  }

  return result;
}

id sub_1BD32E660(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1042985832;
  LODWORD(v9) = 1059761370;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1042985832;
  v12 = [v7 initWithControlPoints__:v8 :{v11, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v20 = sub_1BD330808;
  v21 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v19 = &block_descriptor_107_0;
  v14 = _Block_copy(aBlock);
  a1;
  sub_1BE048964();

  [v6 setCompletionBlock_];
  _Block_release(v14);
  v17 = 20;
  v15 = [objc_opt_self() valueWithVFXFloat3_];
  v19 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  aBlock[0] = v15;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD32E874(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v20 = sub_1BD330854;
  v21 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v19 = &block_descriptor_113_0;
  v8 = _Block_copy(aBlock);
  a1;
  sub_1BE048964();

  [v6 setCompletionBlock_];
  _Block_release(v8);
  v9 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v10) = 1042985832;
  LODWORD(v11) = 1055260043;
  LODWORD(v12) = 1.0;
  LODWORD(v13) = 1042985832;
  v14 = [v9 initWithControlPoints__:v10 :{v13, v11, v12}];
  [v6 setAnimationTimingFunction_];

  v17 = 20;
  v15 = [objc_opt_self() valueWithVFXFloat3_];
  v19 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  aBlock[0] = v15;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD32EA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  [v5 begin];
  [v5 setAnimationDuration_];
  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v7) = 1042985832;
  LODWORD(v8) = 1055260043;
  LODWORD(v9) = 1.0;
  LODWORD(v10) = 1042985832;
  v11 = [v6 initWithControlPoints__:v7 :{v10, v8, v9}];
  [v5 setAnimationTimingFunction_];

  v21 = 20;
  v12 = [objc_opt_self() valueWithVFXFloat3_];
  v18 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  aBlock[0] = v12;
  VFXNode.setBehaviorGraphValue(key:value:)(&v21, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v19 = sub_1BD330860;
  v20 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v18 = &block_descriptor_120;
  v15 = _Block_copy(aBlock);
  sub_1BE048964();

  [v5 setCompletionBlock_];
  _Block_release(v15);
  return [v5 commit];
}

uint64_t sub_1BD32ECC4(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD632BE4();
  }

  return a2();
}

id sub_1BD32ED34()
{
  v0 = objc_opt_self();
  [v0 begin];
  [v0 setAnimationDuration_];
  v5 = 22;
  v1 = MEMORY[0x1E69E6448];
  v4 = MEMORY[0x1E69E6448];
  v3[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v3);
  sub_1BD0DE53C(v3, &qword_1EBD3EC90);
  v5 = 1;
  v4 = v1;
  v3[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v3);
  sub_1BD0DE53C(v3, &qword_1EBD3EC90);
  return [v0 commit];
}

void sub_1BD32EE30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD32EE9C(PKEdgeInsetsMake, 0);
  }
}

id sub_1BD32EE9C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v11 = 49;
  v8 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v11, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v9 = a1;
  v10 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v8 = &block_descriptor_101_0;
  v5 = _Block_copy(aBlock);
  sub_1BE048964();

  [v4 setCompletionBlock_];
  _Block_release(v5);
  return [v4 commit];
}

void sub_1BD32EFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing;
    v7 = *&Strong[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing];
    v8 = Strong;
    v26 = Strong;
    [v7 setHidden_];
    [*&v8[v6] setPaused_];
    v9 = *&v8[v6];
    v31 = 1;
    v10 = MEMORY[0x1E69E6448];
    v28 = MEMORY[0x1E69E6448];
    LODWORD(aBlock[0]) = 0;
    v11 = v9;
    VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
    v12 = *&v8[v6];
    v31 = 12;
    v28 = v10;
    LODWORD(aBlock[0]) = 1126498304;
    v13 = v12;
    VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
    v14 = *&v8[v6];
    v31 = 13;
    v28 = v10;
    LODWORD(aBlock[0]) = 1065353216;
    v15 = v14;
    VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
    v16 = *&v8[v6];
    v31 = 14;
    v28 = v10;
    LODWORD(aBlock[0]) = 0;
    v17 = v16;
    VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
    v18 = *&v8[v6];
    v31 = 11;
    v28 = v10;
    LODWORD(aBlock[0]) = 0;
    v19 = v18;
    VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
    v20 = objc_opt_self();
    [v20 begin];
    [v20 setAnimationDuration_];
    v21 = *&v8[v6];
    v31 = 15;
    v28 = v10;
    LODWORD(aBlock[0]) = 1106247680;
    v22 = v21;
    VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
    [v20 commit];
    [v20 begin];
    [v20 setAnimationDuration_];
    v23 = [objc_opt_self() functionWithName_];
    [v20 setAnimationTimingFunction_];

    v24 = *&v8[v6];
    v31 = 1;
    v28 = v10;
    LODWORD(aBlock[0]) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);

    sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
    v29 = a2;
    v30 = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    v28 = &block_descriptor_130;
    v25 = _Block_copy(aBlock);
    sub_1BE048964();

    [v20 setCompletionBlock_];
    _Block_release(v25);
    [v20 commit];
  }
}

id sub_1BD32F3CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1058665818;
  LODWORD(v9) = -1130005896;
  LODWORD(v10) = 1057152513;
  LODWORD(v11) = 1065520149;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v20 = sub_1BD33089C;
  v21 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v19 = &block_descriptor_157;
  v14 = _Block_copy(aBlock);
  sub_1BE048964();
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v14);
  v17 = 15;
  v15 = MEMORY[0x1E69E6448];
  v19 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = 17;
  v19 = v15;
  LODWORD(aBlock[0]) = 1063920442;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

void sub_1BD32F5F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1057328674;
  LODWORD(v9) = -1172485806;
  LODWORD(v10) = 1059521456;
  LODWORD(v11) = 1064153645;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v19 = sub_1BD3308A8;
  v20 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v18 = &block_descriptor_163;
  v14 = _Block_copy(aBlock);
  sub_1BE048964();
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v14);
  v16 = 52;
  v15 = MEMORY[0x1E69E6448];
  v18 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v16 = 17;
  v18 = v15;
  LODWORD(aBlock[0]) = 1065520988;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v6 commit];
  AudioServicesPlaySystemSound(0x572u);
}

id sub_1BD32F828(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1053243421;
  LODWORD(v9) = -1100316934;
  LODWORD(v10) = 1059355361;
  LODWORD(v11) = 1065713926;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v19 = sub_1BD3308B4;
  v20 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v18 = &block_descriptor_169;
  v14 = _Block_copy(aBlock);
  sub_1BE048964();
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v14);
  v16 = 17;
  v18 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065302884;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD32FA1C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v6) = 1053085716;
  LODWORD(v7) = 1045019230;
  LODWORD(v8) = 1059761370;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
  [v4 setAnimationTimingFunction_];

  v16 = a1;
  v17 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v15 = &block_descriptor_172;
  v11 = _Block_copy(aBlock);
  sub_1BE048964();

  [v4 setCompletionBlock_];
  _Block_release(v11);
  v13 = 17;
  v15 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v13, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v4 commit];
}

id sub_1BD32FBD0()
{
  v11 = 35;
  v0 = MEMORY[0x1E69E6448];
  v10 = MEMORY[0x1E69E6448];
  v9[0] = 1067030938;
  VFXNode.setBehaviorGraphValue(key:value:)(&v11, v9);
  sub_1BD0DE53C(v9, &qword_1EBD3EC90);
  v11 = 37;
  v10 = v0;
  v9[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v11, v9);
  sub_1BD0DE53C(v9, &qword_1EBD3EC90);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setAnimationDuration_];
  v2 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v3) = 1042985832;
  LODWORD(v4) = 1064338194;
  LODWORD(v5) = 1060172412;
  LODWORD(v6) = 1042985832;
  v7 = [v2 initWithControlPoints__:v3 :{v6, v4, v5}];
  [v1 setAnimationTimingFunction_];

  v11 = 38;
  v10 = v0;
  v9[0] = 1091777331;
  VFXNode.setBehaviorGraphValue(key:value:)(&v11, v9);
  sub_1BD0DE53C(v9, &qword_1EBD3EC90);
  return [v1 commit];
}

id sub_1BD32FD5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1042985832;
  LODWORD(v9) = 1060001284;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1042985832;
  v12 = [v7 initWithControlPoints__:v8 :{v11, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v20 = sub_1BD330884;
  v21 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v19 = &block_descriptor_142;
  v14 = _Block_copy(aBlock);
  sub_1BE048964();
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v14);
  v17 = 3;
  v15 = MEMORY[0x1E69E6448];
  v19 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = 5;
  v19 = v15;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = 6;
  v19 = v15;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = 7;
  v19 = v15;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = 36;
  v19 = v15;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD33001C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1044442094;
  LODWORD(v9) = 1046005731;
  LODWORD(v10) = 1065544476;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v18 = sub_1BD330890;
  v19 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v17 = &block_descriptor_148;
  v13 = _Block_copy(aBlock);
  sub_1BE048964();
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v13);
  v15 = 3;
  v17 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = -1097229926;
  VFXNode.setBehaviorGraphValue(key:value:)(&v15, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD330208(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v6) = 1046233901;
  LODWORD(v7) = 1047300932;
  LODWORD(v8) = 1047213690;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
  [v4 setAnimationTimingFunction_];

  v16 = a1;
  v17 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v15 = &block_descriptor_151;
  v11 = _Block_copy(aBlock);
  sub_1BE048964();

  [v4 setCompletionBlock_];
  _Block_release(v11);
  v13 = 3;
  v15 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v13, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v4 commit];
}

uint64_t sub_1BD3303B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v6 = Strong + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  v7 = Strong;
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v6 + 8);

  if (!v8)
  {
    return a2();
  }

  ObjectType = swift_getObjectType();
  (*(v9 + 32))(a2, a3, ObjectType, v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD330498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a2, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD330534()
{
  sub_1BD32E45C(v0 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_state);
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;

  return sub_1BD0D4534(v1);
}

id NearbyPeerPaymentReceiverVFXViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NearbyPeerPaymentReceiverVFXViewController()
{
  result = qword_1EBD42100;
  if (!qword_1EBD42100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD33074C()
{
  result = type metadata accessor for NearbyPeerPaymentReceiverState(319);
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

uint64_t objectdestroy_81Tm()
{

  return swift_deallocObject();
}

void sub_1BD33098C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v26 - v3;
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v26 - v13;
  v15 = *v0;
  v16 = [*v0 openingDate];
  sub_1BE04AEE4();

  v17 = sub_1BE04AE64();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v19 = [v15 closingDate];
  sub_1BE04AEE4();

  v20 = sub_1BE04AE64();
  v27 = v18;
  v18(v9, v5);
  v21 = PKDatesMidpoint();

  if (v21)
  {
    sub_1BE04AEE4();

    v22 = *(v6 + 32);
    v22(v4, v9, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v22(v14, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    v23 = [v15 closingDate];
    sub_1BE04AEE4();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_1BD0DE53C(v4, &unk_1EBD39970);
    }
  }

  v24 = sub_1BE04AE64();
  v25 = PKMonthAndYearStringFromDate();

  if (v25)
  {
    sub_1BE052434();

    v27(v14, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD330CC8()
{
  v1 = sub_1BE051F54();
  v96 = *(v1 - 8);
  v97 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v94 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1BE051FA4();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v4);
  v92 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AF64();
  v101 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v86 - v19;
  v21 = sub_1BE04B3B4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v0 + 40);
  v103 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516A4();
  if (v105)
  {
    return aBlock;
  }

  v87 = v16;
  v89 = v20;
  v88 = v25;
  v91 = v21;
  v90 = v12;
  v27 = v101;
  v28 = *(v0 + 8);
  if (v28)
  {
    v86 = v0;
    v29 = *v0;
    v30 = v28;
    v31 = sub_1BD2F4DC8(v29);

    v32 = &unk_1EBDAB000;
    v33 = v9;
    v34 = v27;
    v35 = v22;
    if (v31)
    {
      v36 = [v31 savingsDetails];

      v37 = v90;
      v38 = v89;
      if (!v36)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v39 = [v36 productTimeZone];

      v40 = v88;
      if (v39)
      {
        v41 = v87;
        sub_1BE04B394();

        v42 = 0;
        v32 = &unk_1EBDAB000;
      }

      else
      {
        v42 = 1;
        v32 = &unk_1EBDAB000;
        v41 = v87;
      }

      v44 = v91;
      (*(v35 + 56))(v41, v42, 1, v91);
      sub_1BD0DE204(v41, v38, &unk_1EBD3D260);
      if ((*(v35 + 48))(v38, 1, v44) != 1)
      {
        (*(v35 + 32))(v40, v38, v44);
        if (qword_1EBD36C20 != -1)
        {
          swift_once();
        }

        v45 = v32[45];
        v46 = sub_1BE04B374();
        [v45 setTimeZone_];

        if (qword_1EBD36C28 != -1)
        {
          swift_once();
        }

        v47 = qword_1EBDAB170;
        v48 = sub_1BE04B374();
        [v47 setTimeZone_];

        (*(v35 + 8))(v40, v91);
        LODWORD(v91) = 1;
        v32 = &unk_1EBDAB000;
        goto LABEL_17;
      }
    }

    else
    {
      v43 = *(v22 + 56);
      v38 = v89;
      v43(v89, 1, 1, v91);
      v37 = v90;
    }

    sub_1BD0DE53C(v38, &unk_1EBD3D260);
    LODWORD(v91) = 0;
LABEL_17:
    if (qword_1EBD36C20 != -1)
    {
      swift_once();
    }

    v49 = v32[45];
    v50 = [v29 openingDate];
    sub_1BE04AEE4();

    v51 = sub_1BE04AE64();
    v52 = *(v34 + 8);
    v52(v37, v33);
    v53 = [v49 stringFromDate_];

    v54 = sub_1BE052434();
    v55 = v29;
    v57 = v56;

    if (qword_1EBD36C28 != -1)
    {
      swift_once();
    }

    v58 = qword_1EBDAB170;
    v59 = [v55 closingDate];
    sub_1BE04AEE4();

    v60 = sub_1BE04AE64();
    v52(v37, v33);
    v61 = [v58 stringFromDate_];

    v62 = sub_1BE052434();
    v64 = v63;

    v65 = v98;
    v66 = v99;
    v67 = v100;
    (*(v99 + 104))(v98, *MEMORY[0x1E69B80E0], v100);
    v68 = PKPassKitBundle();
    if (v68)
    {
      v69 = v68;
      sub_1BE04B6F4();

      (*(v66 + 8))(v65, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1BE0B6CA0;
      v71 = MEMORY[0x1E69E6158];
      *(v70 + 56) = MEMORY[0x1E69E6158];
      v72 = sub_1BD110550();
      *(v70 + 32) = v54;
      *(v70 + 40) = v57;
      *(v70 + 96) = v71;
      *(v70 + 104) = v72;
      *(v70 + 64) = v72;
      *(v70 + 72) = v62;
      *(v70 + 80) = v64;
      v26 = sub_1BE052454();
      v74 = v73;

      v76 = v96;
      v75 = v97;
      if (v91)
      {
        sub_1BD14BE3C();
        v101 = sub_1BE052D54();
        v77 = swift_allocObject();
        v78 = v86;
        v79 = v86[1];
        *(v77 + 16) = *v86;
        *(v77 + 32) = v79;
        v80 = *(v78 + 48);
        *(v77 + 48) = *(v78 + 32);
        *(v77 + 64) = v80;
        *(v77 + 80) = v26;
        *(v77 + 88) = v74;
        v108 = sub_1BD3321CC;
        v109 = v77;
        aBlock = MEMORY[0x1E69E9820];
        v105 = 1107296256;
        v106 = sub_1BD126964;
        v107 = &block_descriptor_61;
        v81 = _Block_copy(&aBlock);
        sub_1BD3321D8(v78, &v102);
        sub_1BE048C84();

        v82 = v92;
        sub_1BE051F74();
        *&v102 = MEMORY[0x1E69E7CC0];
        sub_1BD332274(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
        v83 = v94;
        sub_1BE053664();
        v84 = v101;
        MEMORY[0x1BFB3FDF0](0, v82, v83, v81);
        _Block_release(v81);

        (*(v76 + 8))(v83, v75);
        (*(v93 + 8))(v82, v95);
      }

      return v26;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD332274(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD3317C8()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  return sub_1BE0516B4();
}

uint64_t sub_1BD33182C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v32, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for StatementDetailView();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42138);
  MEMORY[0x1EEE9AC00](v33, v14);
  v16 = &v31 - v15;
  v17 = *v1;
  v18 = type metadata accessor for MultiHyperLinkDetailSheet();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_1BD0DE19C(v8, v4, &unk_1EBD45160);
  v19 = v17;
  sub_1BE051694();
  sub_1BD0DE53C(v8, &unk_1EBD45160);
  v20 = (v13 + *(v10 + 32));
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD332274(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  *v20 = sub_1BE04EEC4();
  v20[1] = v21;
  *v13 = v19;
  v22 = *(v1 + 8);
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE04D804();
    sub_1BD332210(v13, v16);
    v25 = &v16[*(v33 + 36)];
    *v25 = v24;
    v25[1] = v22;
    v26 = *(v1 + 24);
    if (v26)
    {
      type metadata accessor for DeviceAuthenticationModel();
      sub_1BD332274(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
      sub_1BE048964();
      v27 = sub_1BE04D804();
      v28 = v34;
      sub_1BD0DE204(v16, v34, &qword_1EBD42138);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42118);
      v30 = (v28 + *(result + 36));
      *v30 = v27;
      v30[1] = v26;
      return result;
    }
  }

  else
  {
    sub_1BE04EEB4();
    __break(1u);
  }

  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD332274(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD331BC8@<X0>(uint64_t a1@<X8>)
{
  *&v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42118);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v32[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42120);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32[-v12];
  sub_1BD33182C(v4);
  sub_1BD331F7C();
  sub_1BE04E8B4();
  *&v13[*(v6 + 44)] = 0;
  sub_1BD33098C();
  v15 = v14;
  v35 = v16;
  v17 = sub_1BD330CC8();
  v19 = v18;
  LOBYTE(v39) = 0;
  sub_1BE051944();
  v20 = v46;
  v34 = v47;
  v33 = v48;
  v37 = v9;
  sub_1BD0DE19C(v13, v9, &qword_1EBD42120);
  v21 = v38;
  sub_1BD0DE19C(v9, v38, &qword_1EBD42120);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42148) + 48);
  v23 = v35;
  *&v39 = v15;
  *(&v39 + 1) = v35;
  *&v40 = v17;
  *(&v40 + 1) = v19;
  v41 = 0uLL;
  strcpy(&v42, "doc.plaintext");
  HIWORD(v42) = -4864;
  v24 = v20;
  *&v43 = v20;
  v25 = v34;
  *(&v43 + 1) = v34;
  v26 = v33;
  LOBYTE(v44) = v33;
  BYTE1(v44) = 1;
  *(&v44 + 1) = 0;
  *v45 = 0;
  v38 = xmmword_1BE0CCBA0;
  v36 = xmmword_1BE0CCBB0;
  *&v45[8] = xmmword_1BE0CCBA0;
  *&v45[24] = xmmword_1BE0CCBB0;
  v27 = v40;
  *v22 = v39;
  *(v22 + 16) = v27;
  v28 = *&v45[16];
  *(v22 + 96) = *v45;
  *(v22 + 112) = v28;
  *(v22 + 128) = *&v45[32];
  v29 = v42;
  *(v22 + 32) = v41;
  *(v22 + 48) = v29;
  v30 = v44;
  *(v22 + 64) = v43;
  *(v22 + 80) = v30;
  sub_1BD33211C(&v39, &v46);
  sub_1BD0DE53C(v13, &qword_1EBD42120);
  v46 = v15;
  v47 = v23;
  v48 = v17;
  v49 = v19;
  v50 = 0;
  v51 = 0;
  strcpy(v52, "doc.plaintext");
  v52[7] = -4864;
  v53 = v24;
  v54 = v25;
  v55 = v26;
  v56 = 1;
  v57 = 0;
  v58 = 0;
  v59 = v38;
  v60 = v36;
  sub_1BD332178(&v46);
  return sub_1BD0DE53C(v37, &qword_1EBD42120);
}

uint64_t sub_1BD331F18@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BE051CD4();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42110);
  return sub_1BD331BC8(a1 + *(v3 + 44));
}

unint64_t sub_1BD331F7C()
{
  result = qword_1EBD42128;
  if (!qword_1EBD42128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42118);
    sub_1BD332034();
    sub_1BD0DE4F4(&qword_1EBD3EE28, &qword_1EBD3EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42128);
  }

  return result;
}

unint64_t sub_1BD332034()
{
  result = qword_1EBD42130;
  if (!qword_1EBD42130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42138);
    sub_1BD332274(&qword_1EBD42140, type metadata accessor for StatementDetailView);
    sub_1BD0DE4F4(&qword_1EBD3EEA8, &qword_1EBD3EEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42130);
  }

  return result;
}

uint64_t sub_1BD332210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatementDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD332274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD332390()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_appExtension);
  if (!v1)
  {
    return 2;
  }

  v2 = [v1 provisioningExtension];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(PKIssuerProvisioningExtensionAuthorizationViewController);
  v12[4] = sub_1BD3327AC;
  v12[5] = v4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BD307EA8;
  v12[3] = &block_descriptor_62;
  v6 = _Block_copy(v12);
  v7 = v3;
  sub_1BE048964();

  v8 = [v5 initWithExtension:v7 completionHandler:v6];
  _Block_release(v6);

  if (v8)
  {
    sub_1BE052434();
    v9 = v8;
    v10 = sub_1BE04BB74();

    [v9 setReporter_];
  }

  return v8;
}

void sub_1BD332548(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      [*(Strong + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_product) didAuthorizeProvisioningExtension];
      v5 = &v4[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 1);
        ObjectType = swift_getObjectType();
        v8 = v4;
        sub_1BD8659A4(v8, &off_1F3B9FD20, ObjectType, v6);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v9 = Strong + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        v11 = swift_getObjectType();
        memset(v13, 0, sizeof(v13));
        v14 = 2;
        v12 = v4;
        sub_1BD865A00(v12, &off_1F3B9FD20, v13, v11, v10);
        swift_unknownObjectRelease();

        sub_1BD12FF7C(v13);
        return;
      }
    }
  }
}

uint64_t sub_1BD33268C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3326C8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD332714(uint64_t (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_appExtension);
  if (v3)
  {
    [v3 requiresAuthorization];
  }

  return a1();
}

id sub_1BD3327B4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_presentationConfiguration;
  v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_presentationConfiguration] = 2;
  v7 = &v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_identifier];
  *v7 = 0xD000000000000021;
  v7[1] = 0x80000001BE124010;
  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_product] = a2;
  v2[v6] = 1;
  sub_1BE048964();
  v8 = a2;
  v9 = [v8 partnerIdentifier];
  v10 = [v8 setupProductMethodOfType:4 withIdentifier:v9];

  if (!v10)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

LABEL_4:
    v11 = 0;
  }

  *&v2[OBJC_IVAR____TtC9PassKitUI45PaymentSetupAppExtensionAuthorizationFlowItem_appExtension] = v11;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1BD3328FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD33297C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1BD332AF0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1BD332D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD332DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1BD332E3C()
{
  swift_getWitnessTable();
  sub_1BE04F964();
  __break(1u);
}

void *sub_1BD332E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04EAF4();
  (*(v6 + 16))(v8, v3, v5);
  v9 = sub_1BE04EAB4();
  [v9 pkui:*(v3 + *(a1 + 36)) setExcludedFromScreenCapture:*(v3 + *(a1 + 40)) andBroadcasting:?];
  return v9;
}

uint64_t sub_1BD332F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04EAF4();
  result = swift_dynamicCastClass();
  if (result)
  {
    (*(v4 + 16))(v6, v2, v3);
    return sub_1BE04EAE4();
  }

  return result;
}

void sub_1BD333160(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v2 = v1;
  v4 = sub_1BE04BC84();
  v5 = [v4 isCarKeyPass];

  if ((v5 & 1) == 0)
  {
LABEL_22:
    a1(0xD000000000000010, 0x80000001BE120E50, 0, 1);
    return;
  }

  v6 = [*(v2 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_invitation) activationOptions];
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v6;
  v8 = [v6 options];

  sub_1BD33376C();
  v9 = sub_1BE052744();

  if (v9 >> 62)
  {
LABEL_33:
    v10 = sub_1BE053704();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v10 != 0;
  if (!v10)
  {
LABEL_26:

    if (v11)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
LABEL_29:
      a1(v17, v18, 0, v19);

      sub_1BD3336EC(v17, v18, 0, v19);
      return;
    }

LABEL_28:
    v18 = 0x80000001BE1240C0;
    v17 = 0xD00000000000001BLL;
    v19 = 1;
    goto LABEL_29;
  }

  v12 = 0;
  v11 = 0;
  while (1)
  {
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB40900](v12, v9);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v13 = *(v9 + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_21;
        }
      }

      v20 = v13;
      v15 = [v13 type];
      if ((v15 - 2) >= 2)
      {
        break;
      }

      v11 = 1;
      v12 = v14;
      if (v14 == v10)
      {
        v11 = 1;
        goto LABEL_26;
      }
    }

    if (v15 == 4 || v15 == 1)
    {
      break;
    }

    ++v12;
    if (v14 == v10)
    {
      goto LABEL_26;
    }
  }

  a1(0xD000000000000021, 0x80000001BE1240E0, 0, 1);
}

id sub_1BD333450()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_context);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_provisionedPasses);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_invitation);
  v9 = type metadata accessor for ProvisioningCarInvitationActivationViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_delegate + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_isExpressEnabled] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_provisioningContext] = v6;
  *&v10[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_provisionedPasses] = v7;
  *&v10[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_invitation] = v8;
  *(v11 + 8) = &off_1F3B9FE20;
  swift_unknownObjectWeakAssign();
  sub_1BE048964();
  v12 = v7;
  v13 = v8;
  sub_1BE04BC34();
  v14 = sub_1BE04B9A4();
  (*(v2 + 8))(v5, v1);
  v19.receiver = v10;
  v19.super_class = v9;
  result = objc_msgSendSuper2(&v19, sel_initWithContext_, v14);
  if (result)
  {
    v16 = result;
    v17 = result;
    [v17 setExplanationViewControllerDelegate_];
    v18 = [v17 navigationItem];
    [v18 setHidesBackButton_];

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD33365C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD333698(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD3336EC(void *result, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 4u)
  {
  }

  if (a4 == 4)
  {
  }

  return result;
}

unint64_t sub_1BD33376C()
{
  result = qword_1EBD41828;
  if (!qword_1EBD41828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD41828);
  }

  return result;
}

uint64_t sub_1BD3337B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD33382C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD3338A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD333918()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account);
  if (v1 && (*(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType + 8) & 1) == 0)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x168);
    v10 = v1;
    v3 = v2();
    v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applyController);
    *(v0 + OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applyController) = v3;
    v5 = v3;

    if (v3)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      *(v6 + 24) = v10;
      aBlock[4] = sub_1BD334D80;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_63;
      v7 = _Block_copy(aBlock);
      v8 = v10;
      v9 = v0;

      [v5 nextViewControllerWithCompletion_];

      _Block_release(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD333ACC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE051F54();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v16;
  v17[5] = a4;
  aBlock[4] = sub_1BD334D88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_44_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v24 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v23);
}

void sub_1BD333D94(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v19 - v13;
  if (a1)
  {
    if (!a2)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v19 = a1;
        v15 = a1;
        sub_1BE04D8C4();
      }

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = a2;
    v17 = [a4 feature];
    v18 = a2;
    FeatureError.init(feature:error:)(v17, a2, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v14, v10);
    sub_1BE04D8C4();

    sub_1BD23C32C(v14);
  }
}

id sub_1BD333F60(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedService];
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

  v13 = [objc_allocWithZone(PKApplyControllerConfiguration) initWithSetupDelegate:v3 context:0 provisioningController:v12];
  [v13 setApplicationType_];
  if (v13)
  {
    v14 = v13;
    [v14 setFeature_];
  }

  v15 = [objc_allocWithZone(PKApplyController) initWithApplyConfiguration_];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    v18 = [a1 applyServiceURL];
    if (v18)
    {
      v19 = v18;
      sub_1BE04A9F4();

      v20 = sub_1BE04A9C4();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v20 = 0;
    }

    [v17 setApplyServiceURL_];
  }

  return v16;
}

void sub_1BD334178(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_1BE04D8C4();
  if (a1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      if ([v5 hasFieldsSubmitted])
      {
        [v5 hasFieldsSubmitted];
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_1BE04D8C4();
      }
    }
  }
}

id sub_1BD3342EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD42298);
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v31 = &v29 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422A8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v29 - v19;
  v21 = OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel__nextView;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280);
  sub_1BE04D874();
  (*(v17 + 32))(&v0[v21], v20, v16);
  v22 = OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel__accountError;
  v23 = type metadata accessor for FeatureError(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1BD23C2BC(v15, v11);
  sub_1BE04D874();
  sub_1BD23C32C(v15);
  (*(v4 + 32))(&v0[v22], v7, v30);
  v24 = OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel__hasFieldsSubmitted;
  LOBYTE(v35) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250);
  v25 = v31;
  sub_1BE04D874();
  (*(v32 + 32))(&v0[v24], v25, v33);
  v26 = &v0[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v26 = 0;
  v26[8] = 1;
  *&v0[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applyController] = 0;
  v27 = type metadata accessor for ApplyControllerModel();
  v34.receiver = v0;
  v34.super_class = v27;
  return objc_msgSendSuper2(&v34, sel_init);
}

id sub_1BD3346C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplyControllerModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ApplyControllerModel()
{
  result = qword_1EBD42268;
  if (!qword_1EBD42268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD33487C()
{
  sub_1BD0E4578(319, &qword_1EBD42278, &qword_1EBD42280);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD416B8, &qword_1EBD416C0);
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &unk_1EBD42288, &qword_1EBD39250);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BD3349DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ApplyControllerModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD334A1C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD334A9C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD334B10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD334B8C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1BD23C2BC(a1, &v15 - v10);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v11, v7);
  v13 = v12;
  sub_1BE04D8C4();
  return sub_1BD23C32C(v11);
}

uint64_t sub_1BD334C90@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD334D10(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI13RecurringInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD334DB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_1BD334E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1BD334E8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1BD334EE8(v9, v10);
}

BOOL sub_1BD334EE8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD422C8);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BE053074();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD422C8);
    v11 = v10;
    v12 = v9;
    v13 = sub_1BE053074();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v58 = *(a1 + 16);
  v59 = v14;
  v15 = *(a1 + 64);
  v60 = *(a1 + 48);
  v61 = v15;
  v16 = *(a2 + 32);
  v57[0] = *(a2 + 16);
  v57[1] = v16;
  v17 = *(a2 + 64);
  v57[2] = *(a2 + 48);
  v57[3] = v17;
  v18 = v58;
  v19 = *(&v59 + 1);
  v20 = v59;
  v22 = *(&v60 + 1);
  v21 = v60;
  if (!*(&v58 + 1))
  {
    if (!*(&v57[0] + 1))
    {
      v42 = v61;
      sub_1BD3353D0(&v58, &v49);
      sub_1BD3353D0(v57, &v49);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!*(&v57[0] + 1))
  {
LABEL_24:
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v53 = v57[0];
    v28 = *(a2 + 48);
    v54 = *(a2 + 32);
    v55 = v28;
    v56 = *(a2 + 64);
    sub_1BD3353D0(&v58, &v43);
    sub_1BD3353D0(v57, &v43);
    v29 = &unk_1EBD422B8;
    v30 = &v49;
LABEL_38:
    sub_1BD0DE53C(v30, v29);
    return 0;
  }

  v40 = v60;
  v41 = *(&v59 + 1);
  v23 = *(&v60 + 1);
  v42 = v61;
  v24 = *(a2 + 32);
  v25 = *(a2 + 48);
  v49 = v57[0];
  v50 = v24;
  v26 = *(a2 + 64);
  v51 = v25;
  v52 = v26;
  v27 = v25;
  v39 = v26;
  if (v57[0] != v58 && (sub_1BE053B84() & 1) == 0 || v59 != v50 && (sub_1BE053B84() & 1) == 0)
  {
    sub_1BD3353D0(&v58, &v43);
    sub_1BD3353D0(v57, &v43);
    v22 = v23;
LABEL_37:
    sub_1BD0DE53C(&v49, &qword_1EBD422B0);
    v43 = v18;
    v44 = v20;
    v45 = v41;
    v46 = v40;
    v47 = v22;
    v48 = v42;
    v30 = &v43;
    v29 = &qword_1EBD422B0;
    goto LABEL_38;
  }

  v22 = *(&v60 + 1);
  v21 = v60;
  if (v60 != v27 && (sub_1BE053B84() & 1) == 0)
  {
    sub_1BD3353D0(&v58, &v43);
    sub_1BD3353D0(v57, &v43);
    goto LABEL_37;
  }

  if (*(&v61 + 1))
  {
    if (*(&v39 + 1))
    {
      v19 = *(&v59 + 1);
      if (v61 == v39)
      {
        sub_1BD3353D0(&v58, &v43);
        sub_1BD3353D0(v57, &v43);
        sub_1BD0DE53C(&v49, &qword_1EBD422B0);
LABEL_27:
        v31 = v42;
        goto LABEL_28;
      }

      v38 = sub_1BE053B84();
      sub_1BD3353D0(&v58, &v43);
      sub_1BD3353D0(v57, &v43);
      sub_1BD0DE53C(&v49, &qword_1EBD422B0);
      if (v38)
      {
        v31 = v42;
        v21 = v40;
        goto LABEL_28;
      }

      goto LABEL_35;
    }

LABEL_34:
    sub_1BD3353D0(&v58, &v43);
    sub_1BD3353D0(v57, &v43);
    v19 = v41;
    sub_1BD0DE53C(&v49, &qword_1EBD422B0);
LABEL_35:
    v43 = v18;
    v44 = v20;
    v45 = v19;
    v46 = v40;
    v47 = v22;
    v48 = v42;
    v29 = &qword_1EBD422B0;
    v30 = &v43;
    goto LABEL_38;
  }

  if (*(&v39 + 1))
  {
    goto LABEL_34;
  }

  sub_1BD3353D0(&v58, &v43);
  sub_1BD3353D0(v57, &v43);
  sub_1BD0DE53C(&v49, &qword_1EBD422B0);
  v31 = v42;
  v19 = v41;
LABEL_28:
  v49 = v18;
  *&v50 = v20;
  *(&v50 + 1) = v19;
  *&v51 = v21;
  *(&v51 + 1) = v22;
  v52 = v31;
  sub_1BD0DE53C(&v49, &qword_1EBD422B0);
  if ((*(a1 + 80) ^ *(a2 + 80)))
  {
    return 0;
  }

  v32 = *(a1 + 88);
  v33 = *(a2 + 88);
  if (v32)
  {
    if (v33)
    {
      sub_1BD0E5E8C(0, &qword_1EBD422C0);
      v34 = v33;
      v35 = v32;
      v36 = sub_1BE053074();

      if (v36)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v33;
}

uint64_t sub_1BD3353D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD335440(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v137 = a3;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v135 = v7;
  v136 = v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v130 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v131 = &v120 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v134 = &v120 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v120 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v120 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v120 - v27;
  v29 = sub_1BE04B2F4();
  v133 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BE04AF64();
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  if (!a1)
  {
    goto LABEL_12;
  }

  v132 = &v120 - v40;
  v128 = v41;
  v129 = v39;
  v42 = [a1 identifier];
  if (!v42)
  {

LABEL_12:
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    sub_1BD0DE53C(&v142, &qword_1EBD422B0);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 1;
LABEL_33:
    *a4 = v62;
    a4[1] = v53;
    a4[2] = v54;
    a4[3] = v55;
    a4[4] = v56;
    a4[5] = v57;
    a4[6] = v58;
    a4[7] = v59;
    a4[8] = 0;
    a4[9] = 0;
    a4[10] = v60;
    a4[11] = v61;
    return;
  }

  v122 = a2;

  v127 = [a1 firstQuoteItemOfType_];
  v126 = [a1 firstQuoteItemOfType_];
  v43 = [a1 destinationType];
  v124 = PKPeerPaymentFDICSignageEnabled() && PKPeerPaymentAccountIsFDICInsured() && (v43 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v44 = [a1 dynamicFraudContent];
  v125 = [v44 paymentSheetContent];

  v45 = [a1 isRecurringPayment];
  v123 = a4;
  if (!v45)
  {

    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = v127;
    goto LABEL_32;
  }

  v46 = [a1 nextPaymentDate];
  if (!v46)
  {
    v70 = [a1 threshold];
    v69 = v127;
    if (v70)
    {
      v71 = v70;
      v72 = [a1 currentBalanceCurrency];
      v73 = PKCurrencyAmountMake();

      if (!v73)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v129 = v71;
      v74 = *(v136 + 104);
      v75 = v131;
      LODWORD(v134) = *MEMORY[0x1E69B80A0];
      v132 = v74;
      (v74)(v131);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1BE0B69E0;
      v128 = v73;
      v77 = [v73 minimalFormattedStringValue];
      if (!v77)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v78 = v77;
      v79 = sub_1BE052434();
      v81 = v80;

      *(v76 + 56) = MEMORY[0x1E69E6158];
      *(v76 + 64) = sub_1BD110550();
      *(v76 + 32) = v79;
      *(v76 + 40) = v81;
      v133 = sub_1BE04B714();
      v121 = v82;

      v83 = v135;
      v84 = *(v136 + 8);
      v84(v75, v135);
      v85 = v130;
      (v132)(v130, v134, v83);
      v86 = PKPassKitBundle();
      if (!v86)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v87 = v86;
      v63 = sub_1BE04B6F4();
      v89 = v88;

      v84(v85, v83);
      v90 = [a1 calculatedTotalAmount];
      if (!v90)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v91 = v90;
      v92 = [v90 minimalFormattedStringValue];

      if (!v92)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v67 = sub_1BE052434();
      v68 = v93;

      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      sub_1BD0DE53C(&v142, &qword_1EBD422B0);
      v69 = v127;
      v65 = v133;
      v66 = v121;
      v64 = v89;
    }

    else
    {

      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }

LABEL_32:
    v61 = v125;
    v53 = v126;
    v139[0] = v69;
    v139[1] = v126;
    v139[2] = v63;
    v139[3] = v64;
    v139[4] = v65;
    v139[5] = v66;
    v139[6] = v67;
    v139[7] = v68;
    v139[8] = 0;
    v139[9] = 0;
    LOBYTE(v140) = v124;
    *(&v140 + 1) = v151[0];
    HIDWORD(v140) = *(v151 + 3);
    v141 = v125;
    v137 = v140;
    *&v142 = v69;
    *(&v142 + 1) = v126;
    *&v143 = v63;
    *(&v143 + 1) = v64;
    *&v144 = v65;
    *(&v144 + 1) = v66;
    *&v145 = v67;
    *(&v145 + 1) = v68;
    v146 = 0;
    v147 = 0;
    v148 = v124;
    *&v149[3] = *(v151 + 3);
    *v149 = v151[0];
    v150 = v125;
    v62 = v69;
    v59 = v68;
    v58 = v67;
    v55 = v64;
    v56 = v65;
    v119 = v63;
    v57 = v66;
    sub_1BD336024(v139, &v138);
    sub_1BD33605C(&v142);
    v60 = v137;
    v54 = v119;
    a4 = v123;
    goto LABEL_33;
  }

  v47 = v46;
  sub_1BE04AEE4();

  (*(v128 + 4))(v132, v37, v129);
  sub_1BE04B2A4();
  v48 = sub_1BE04B164();
  (*(v133 + 8))(v32, v29);
  v49 = v136 + 104;
  if (v48)
  {
    v50 = *v49;
    LODWORD(v131) = *MEMORY[0x1E69B80A0];
    v51 = v135;
    (v50)(v28);
    v133 = sub_1BE04B714();
    v121 = v52;
    v25 = v28;
LABEL_27:
    v111 = *(v136 + 8);
    v111(v25, v51);
    v112 = v134;
    (v50)(v134, v131, v51);
    v113 = PKPassKitBundle();
    if (v113)
    {
      v114 = v113;
      v63 = sub_1BE04B6F4();
      v64 = v115;

      v111(v112, v51);
      [a1 frequency];
      v116 = sub_1BE04AE64();
      v117 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString();

      if (v117)
      {
        v67 = sub_1BE052434();
        v68 = v118;
      }

      else
      {

        v67 = 0;
        v68 = 0xE000000000000000;
      }

      v69 = v127;

      (*(v128 + 1))(v132, v129);
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      sub_1BD0DE53C(&v142, &qword_1EBD422B0);
      v65 = v133;
      v66 = v121;
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_36;
  }

  v94 = [a1 isNewRecurringPayment];
  v95 = *MEMORY[0x1E69B80A0];
  v96 = *v49;
  v130 = *v49;
  v120 = v49 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  LODWORD(v131) = v95;
  if (v94)
  {
    (v96)(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1BE0B69E0;
    v98 = sub_1BE04AE64();
    v99 = PKMediumDateString();

    if (!v99)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v100 = sub_1BE052434();
    v102 = v101;

    *(v97 + 56) = MEMORY[0x1E69E6158];
    *(v97 + 64) = sub_1BD110550();
    *(v97 + 32) = v100;
    *(v97 + 40) = v102;
    v133 = sub_1BE04B714();
    v121 = v103;

    goto LABEL_26;
  }

  (v96)(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1BE0B69E0;
  v105 = sub_1BE04AE64();
  v106 = PKMediumDateString();

  if (v106)
  {
    v107 = sub_1BE052434();
    v109 = v108;

    *(v104 + 56) = MEMORY[0x1E69E6158];
    *(v104 + 64) = sub_1BD110550();
    *(v104 + 32) = v107;
    *(v104 + 40) = v109;
    v133 = sub_1BE04B714();
    v121 = v110;

    v25 = v21;
LABEL_26:
    v51 = v135;
    v50 = v130;
    goto LABEL_27;
  }

LABEL_42:
  __break(1u);
}

id sub_1BD336160()
{
  v1 = sub_1BE04BAC4();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v8 = v0;
  sub_1BD12F6B8(1, v8, KeyPath);

  v49 = swift_getKeyPath();
  v47 = sub_1BD1872BC(v8, v49);
  v48 = v9;
  v11 = v10;
  sub_1BE053D04();
  sub_1BE052524();
  v12 = sub_1BE053D64();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(*(v11 + 48) + v14);
      if (v16 != 1 && v16 != 2)
      {
        break;
      }

      v17 = sub_1BE053B84();

      if (v17)
      {
        goto LABEL_8;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v11;
    sub_1BD2A9690(0, v14, isUniquelyReferenced_nonNull_native);
    v11 = aBlock;
  }

LABEL_8:
  v19 = v8;
  sub_1BD12F6E4(v47 & 1, v48, v11, v19, v49);

  v20 = [*&v19[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_product] partnerName];
  if (v20)
  {
    v21 = v20;
    sub_1BE052434();
  }

  else
  {
    v23 = v41;
    v22 = v42;
    v24 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x1E69B80C8], v43);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v26 = result;
    sub_1BE04B6F4();

    (*(v22 + 8))(v23, v24);
  }

  v27 = v44;
  sub_1BE04BC34();
  v28 = sub_1BE04B9A4();
  (*(v45 + 8))(v27, v46);
  v29 = objc_allocWithZone(PKBarcodePaymentOnboardingViewController);
  v30 = sub_1BE052404();

  v31 = [v29 initWithIssuerName:v30 context:v28];

  if (v31)
  {
    sub_1BE052434();
    v32 = v31;
    v33 = sub_1BE04BB74();

    [v32 setReporter_];

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = sub_1BD336EE0;
    v55 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1BD2749B0;
    v53 = &block_descriptor_64;
    v35 = _Block_copy(&aBlock);
    v36 = v32;

    [v36 setContinueHandler_];
    _Block_release(v35);

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = sub_1BD336EE8;
    v55 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1BD126964;
    v53 = &block_descriptor_9_1;
    v38 = _Block_copy(&aBlock);
    v39 = v36;

    [v39 setTerminationHandler_];
    _Block_release(v38);
  }

  return v31;
}

void sub_1BD336784(void (*a1)(void), uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04D214();
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v54 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = [*(Strong + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_inApp) appLaunchURL];
    if (v19)
    {
      v60 = a2;
      v61 = v9;
      v20 = v19;
      sub_1BE04A9F4();

      v21 = [objc_opt_self() defaultWorkspace];
      if (!v21)
      {
        __break(1u);
        return;
      }

      v22 = v21;
      v23 = sub_1BE04A9C4();
      v63[0] = 0;
      v24 = [v22 openURL:v23 configuration:0 error:v63];

      if (v24)
      {
        v25 = v63[0];

        v26 = &v18[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate];
        v27 = swift_unknownObjectWeakLoadStrong();
        v28 = v61;
        if (v27)
        {
          v29 = *(v26 + 1);
          ObjectType = swift_getObjectType();
          v18 = v18;
          sub_1BD8659A4(v18, &off_1F3B9FFE0, ObjectType, v29);
          swift_unknownObjectRelease();
        }

        (*(v28 + 8))(v16, v8);
      }

      else
      {
        v57 = a1;
        v31 = v63[0];
        v32 = sub_1BE04A854();

        swift_willThrow();
        sub_1BE04D0E4();
        v33 = v61;
        (*(v61 + 16))(v12, v16, v8);
        v34 = v32;
        v35 = sub_1BE04D204();
        v36 = sub_1BE052C54();
        v59 = v32;

        v56 = v36;
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v63[0] = v38;
          *v37 = 136315394;
          sub_1BD336EF0();
          v54 = v35;
          v39 = sub_1BE053B24();
          v41 = v40;
          v58 = *(v61 + 8);
          v58(v12, v8);
          v42 = sub_1BD123690(v39, v41, v63);

          *(v37 + 4) = v42;
          *(v37 + 12) = 2112;
          v43 = v59;
          v44 = v59;
          v45 = _swift_stdlib_bridgeErrorToNSError();
          *(v37 + 14) = v45;
          v46 = v54;
          v47 = v55;
          *v55 = v45;
          _os_log_impl(&dword_1BD026000, v46, v56, "Failed to open app url %s with error: %@", v37, 0x16u);
          sub_1BD0DE53C(v47, &unk_1EBD3E590);
          MEMORY[0x1BFB45F20](v47, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x1BFB45F20](v38, -1, -1);
          MEMORY[0x1BFB45F20](v37, -1, -1);

          (*(v62 + 8))(v7, v4);
          v48 = v43;
        }

        else
        {

          v58 = *(v33 + 8);
          v58(v12, v8);
          (*(v62 + 8))(v7, v4);
          v48 = v59;
        }

        a1 = v57;
        v49 = &v18[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v50 = *(v49 + 1);
          v51 = swift_getObjectType();
          v63[0] = v48;
          v64 = 1;
          v52 = v18;
          v53 = v48;
          sub_1BD865A00(v52, &off_1F3B9FFE0, v63, v51, v50);
          swift_unknownObjectRelease();

          sub_1BD0DE53C(v63, &unk_1EBD3F510);
        }

        else
        {
        }

        v58(v16, v8);
      }
    }

    else
    {
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_1BD336D78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      memset(v6, 0, sizeof(v6));
      v7 = 2;
      v5 = v1;
      sub_1BD865A00(v5, &off_1F3B9FFE0, v6, ObjectType, v3);
      swift_unknownObjectRelease();

      sub_1BD0DE53C(v6, &unk_1EBD3F510);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD336E54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD336E90(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD336EF0()
{
  result = qword_1EBD49660;
  if (!qword_1EBD49660)
  {
    sub_1BE04AA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49660);
  }

  return result;
}

unint64_t sub_1BD336F54()
{
  result = qword_1EBD42308;
  if (!qword_1EBD42308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42308);
  }

  return result;
}

unint64_t sub_1BD336FAC()
{
  result = qword_1EBD42310;
  if (!qword_1EBD42310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42310);
  }

  return result;
}

uint64_t sub_1BD337084()
{
  v0 = sub_1BE04A884();
  __swift_allocate_value_buffer(v0, qword_1EBDAAF20);
  __swift_project_value_buffer(v0, qword_1EBDAAF20);
  return sub_1BE04A864();
}

uint64_t sub_1BD3370F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE0487A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_1BE04A3B4();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD3372D0, 0, 0);
}

uint64_t sub_1BD3372D0()
{
  sub_1BD337948();
  v1 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
  v2 = [v1 account];

  if (v2 && [v2 supportsDeviceTap])
  {
    v3 = v0 + 16;
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[7];
    sub_1BE04A3A4();
    sub_1BE052434();
    sub_1BE04A394();
    v7 = sub_1BE052434();
    MEMORY[0x1BFB37400](v7);
    v8 = sub_1BE052434();
    MEMORY[0x1BFB3F610](v8);

    MEMORY[0x1BFB37410](47, 0xE100000000000000);
    sub_1BE04A364();
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      v9 = v0[7];
LABEL_7:
      sub_1BD226BBC(v9);
      sub_1BE0484F4();
      sub_1BD337A90(&qword_1EBD56120, MEMORY[0x1E6959D40]);
      swift_allocError();
      sub_1BE0484E4();
      swift_willThrow();

      (*(v0[14] + 8))(*v3, v0[13]);

      v13 = v0[1];
      goto LABEL_11;
    }

    v16 = v0 + 12;
    v20 = v0[12];
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[9];
    (*(v23 + 32))(v20, v0[7], v22);
    (*(v23 + 16))(v21, v20, v22);
  }

  else
  {
    v3 = v0 + 15;
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    sub_1BE04A3A4();
    sub_1BE052434();
    sub_1BE04A394();
    sub_1BE04A364();
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      v9 = v0[6];
      goto LABEL_7;
    }

    v14 = v0[10];
    v15 = v0[11];
    v16 = v0 + 10;
    v17 = v2;
    v19 = v0[8];
    v18 = v0[9];
    (*(v18 + 32))(v14, v0[6], v19);
    (*(v18 + 16))(v15, v14, v19);
    v2 = v17;
  }

  sub_1BE0487B4();
  sub_1BD337A90(&qword_1EBD42320, MEMORY[0x1E695A070]);
  sub_1BE048734();

  v24 = *v3;
  v25 = *v16;
  v26 = v0[13];
  v27 = v0[14];
  v28 = v0[9];
  v29 = v0[8];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v28 + 8))(v25, v29);
  (*(v27 + 8))(v24, v26);

  v13 = v0[1];
LABEL_11:

  return v13();
}

uint64_t sub_1BD337758@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAF20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD337800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD3370F0(a1);
}

uint64_t sub_1BD337898(uint64_t a1)
{
  v2 = sub_1BD15D1F4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD3378E4()
{
  result = qword_1EBD42318;
  if (!qword_1EBD42318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD528D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42318);
  }

  return result;
}

uint64_t sub_1BD337948()
{
  [objc_opt_self() beginSubjectReporting_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v1 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v2 = sub_1BE052434();
  v3 = MEMORY[0x1E69BA440];
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = *v3;
  *(inited + 56) = *v3;
  v6 = sub_1BE052434();
  v7 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = *v7;
  *(inited + 80) = *v7;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v10;
  v11 = v1;
  v12 = v5;
  v13 = v9;
  v14 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v14);
}

uint64_t sub_1BD337A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PKBankConnectAccountDetailsView()
{
  result = qword_1EBD42338;
  if (!qword_1EBD42338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD337B4C()
{
  sub_1BD337C28(319, &qword_1EBD39FD8, MEMORY[0x1E697F6A0]);
  if (v0 <= 0x3F)
  {
    sub_1BD337C28(319, &qword_1EBD38900, MEMORY[0x1E697E730]);
    if (v1 <= 0x3F)
    {
      sub_1BD337C7C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD337C28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE04E3A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD337C7C()
{
  if (!qword_1EBD42348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42350);
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42348);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI31PKBankConnectAccountDetailsViewV0H5ModelV11SubheadlineO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD337D24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1BD0DE19C(v2, &v16 - v11, &qword_1EBD521C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04F774();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BD337F24@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_1BE04FF64();
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42358);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42360);
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v11);
  v13 = &v18 - v12;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42368);
  sub_1BD3381E0(v1, &v9[*(v14 + 44)]);
  sub_1BE04FF44();
  v15 = sub_1BD0DE4F4(&qword_1EBD42370, &qword_1EBD42358);
  sub_1BE050D14();
  (*(v2 + 8))(v5, v20);
  sub_1BD0DE53C(v9, &qword_1EBD42358);
  sub_1BE052434();
  v22 = v6;
  v23 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  sub_1BE050DE4();

  return (*(v10 + 8))(v13, v16);
}

id sub_1BD3381E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42378);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v122 = v106 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42380);
  MEMORY[0x1EEE9AC00](v110, v6);
  v112 = v106 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42388);
  MEMORY[0x1EEE9AC00](v109, v8);
  v111 = v106 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42390);
  MEMORY[0x1EEE9AC00](v108, v10);
  v114 = v106 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42398);
  MEMORY[0x1EEE9AC00](v113, v12);
  v118 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v107 = v106 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v115 = v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423A0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v117 = v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v116 = v106 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v123 = v106 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v126 = v106 - v31;
  v32 = *(type metadata accessor for PKBankConnectAccountDetailsView() + 28);
  v121 = a1;
  v33 = a1 + v32;
  v34 = *(a1 + v32);
  v35 = *(v33 + 8);
  v124 = v33;
  *&v141[0] = v34;
  *(&v141[0] + 1) = v35;
  v36 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v125 = v36;
  v37 = sub_1BE0506C4();
  v39 = v38;
  v41 = v40;
  v42 = *MEMORY[0x1E69DB8C8];
  v43 = *MEMORY[0x1E69DDC90];
  v44 = *MEMORY[0x1E69DB978];
  v120 = *MEMORY[0x1E69DDD80];
  result = PKFontForDesign(v42, v120, v43, 0x8000, 0, v44);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1BE050484();
  v46 = sub_1BE0505F4();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_1BD0DDF10(v37, v39, v41 & 1);

  KeyPath = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = v50 & 1;
  v144 = v50 & 1;
  v143 = 0;
  v56 = v124;
  v57 = *(v124 + 48);
  v58 = swift_getKeyPath();
  *&v135 = v46;
  *(&v135 + 1) = v48;
  LOBYTE(v136) = v55;
  *(&v136 + 1) = v52;
  *&v137 = KeyPath;
  *(&v137 + 1) = 0x3FE0000000000000;
  *&v138 = v54;
  *(&v138 + 1) = 1;
  LOBYTE(v139) = 0;
  *(&v139 + 1) = v58;
  v140 = v57;
  sub_1BE052434();
  sub_1BE048964();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423A8);
  v106[0] = sub_1BD3391E8();
  v106[1] = v59;
  sub_1BE050DE4();

  v141[2] = v137;
  v141[3] = v138;
  v141[4] = v139;
  v142 = v140;
  v141[0] = v135;
  v141[1] = v136;
  sub_1BD0DE53C(v141, &qword_1EBD423A8);
  v60 = *(v56 + 24);
  *&v135 = *(v56 + 16);
  *(&v135 + 1) = v60;
  sub_1BE048C84();
  v61 = sub_1BE0506C4();
  v63 = v62;
  v65 = v64;
  v66 = *MEMORY[0x1E69DB8D8];
  v67 = *MEMORY[0x1E69DDDB8];
  v68 = *MEMORY[0x1E69DB958];
  v125 = *MEMORY[0x1E69DDC38];
  result = PKFontForDesign(v66, v67, v125, 2, 0, v68);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE050484();
  v69 = sub_1BE0505F4();
  v71 = v70;
  v73 = v72;
  v75 = v74;

  sub_1BD0DDF10(v61, v63, v65 & 1);

  v76 = swift_getKeyPath();
  v77 = swift_getKeyPath();
  v73 &= 1u;
  v134 = v73;
  v133 = 0;
  v78 = sub_1BE051464();
  v79 = swift_getKeyPath();
  *&v127 = v69;
  *(&v127 + 1) = v71;
  LOBYTE(v128) = v73;
  *(&v128 + 1) = v75;
  *&v129 = v76;
  *(&v129 + 1) = 0x3FE0000000000000;
  *&v130 = v77;
  *(&v130 + 1) = 1;
  LOBYTE(v131) = 0;
  *(&v131 + 1) = v79;
  v132 = v78;
  sub_1BE052434();
  v80 = v123;
  sub_1BE050DE4();

  v137 = v129;
  v138 = v130;
  v139 = v131;
  v140 = v132;
  v135 = v127;
  v136 = v128;
  sub_1BD0DE53C(&v135, &qword_1EBD423A8);
  v81 = v122;
  sub_1BD338B28(v121, v122);
  result = PKFontForDefaultDesign(v120, v125, 0x8000, 0, v44);
  if (result)
  {
    v82 = sub_1BE050484();
    v83 = swift_getKeyPath();
    v84 = v81;
    v85 = v112;
    sub_1BD0DE204(v84, v112, &qword_1EBD42378);
    v86 = (v85 + *(v110 + 36));
    *v86 = v83;
    v86[1] = v82;
    v87 = swift_getKeyPath();
    v88 = v111;
    sub_1BD0DE204(v85, v111, &qword_1EBD42380);
    v89 = (v88 + *(v109 + 36));
    *v89 = v87;
    v89[1] = 0x3FE0000000000000;
    v90 = swift_getKeyPath();
    v91 = v114;
    sub_1BD0DE204(v88, v114, &qword_1EBD42388);
    v92 = v91 + *(v108 + 36);
    *v92 = v90;
    *(v92 + 8) = 1;
    *(v92 + 16) = 0;
    v93 = sub_1BE051494();
    v94 = swift_getKeyPath();
    v95 = v91;
    v96 = v107;
    sub_1BD0DE204(v95, v107, &qword_1EBD42390);
    v97 = (v96 + *(v113 + 36));
    *v97 = v94;
    v97[1] = v93;
    v98 = v96;
    v99 = v115;
    sub_1BD0DE204(v98, v115, &qword_1EBD42398);
    v100 = v116;
    sub_1BD0DE19C(v126, v116, &qword_1EBD423A0);
    v101 = v117;
    sub_1BD0DE19C(v80, v117, &qword_1EBD423A0);
    v102 = v118;
    sub_1BD0DE19C(v99, v118, &qword_1EBD42398);
    v103 = v119;
    sub_1BD0DE19C(v100, v119, &qword_1EBD423A0);
    v104 = v80;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423C8);
    sub_1BD0DE19C(v101, v103 + *(v105 + 48), &qword_1EBD423A0);
    sub_1BD0DE19C(v102, v103 + *(v105 + 64), &qword_1EBD42398);
    sub_1BD0DE53C(v99, &qword_1EBD42398);
    sub_1BD0DE53C(v104, &qword_1EBD423A0);
    sub_1BD0DE53C(v126, &qword_1EBD423A0);
    sub_1BD0DE53C(v102, &qword_1EBD42398);
    sub_1BD0DE53C(v101, &qword_1EBD423A0);
    return sub_1BD0DE53C(v100, &qword_1EBD423A0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD338B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1BE04F774();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423D0);
  MEMORY[0x1EEE9AC00](v46, v12);
  v14 = &v41 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423D8);
  MEMORY[0x1EEE9AC00](v43, v15);
  v17 = &v41 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423E0);
  MEMORY[0x1EEE9AC00](v45, v18);
  v20 = &v41 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v44, v21);
  v23 = &v41 - v22;
  v24 = a1 + *(type metadata accessor for PKBankConnectAccountDetailsView() + 28);
  v25 = *(v24 + 40);
  if (v25)
  {
    if (v25 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD339358();
      return sub_1BE04F9A4();
    }

    *&v51 = *(v24 + 32);
    *(&v51 + 1) = v25;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v29 = sub_1BE0506C4();
    v31 = v30;
    *&v51 = v29;
    *(&v51 + 1) = v30;
    v33 = v32 & 1;
    LOBYTE(v52) = v32 & 1;
    *(&v52 + 1) = v34;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v29, v31, v33);

    sub_1BD0DE19C(v23, v17, &qword_1EBD452C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423F8);
    sub_1BD339410(&qword_1EBD397C8, &qword_1EBD452C0, &unk_1BE0B7620, sub_1BD0F15A0);
    sub_1BD339494();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v20, v14, &qword_1EBD423E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD339358();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v20, &qword_1EBD423E0);
    v35 = v23;
    v36 = &qword_1EBD452C0;
  }

  else
  {
    sub_1BD337D24(v11);
    (*(v4 + 104))(v7, *MEMORY[0x1E697F648], v3);
    v27 = sub_1BD3395A0(v11, v7);
    v28 = *(v4 + 8);
    v28(v7, v3);
    v28(v11, v3);
    if (v27)
    {
      v48 = xmmword_1BE0CD200;
      *&v49 = 0;
      *(&v49 + 1) = MEMORY[0x1E69E7CC0];
      v50 = 0;
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v50 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42408);
    sub_1BD339410(&qword_1EBD42400, &qword_1EBD42408, &unk_1BE0CD458, sub_1BD33954C);
    sub_1BE04F9A4();
    v37 = v52;
    v38 = v53;
    v41 = v51;
    v42 = v52;
    *v17 = v51;
    *(v17 + 1) = v37;
    v17[32] = v38;
    swift_storeEnumTagMultiPayload();
    v39 = v41;
    v40 = v42;
    sub_1BD3399B8(v41, *(&v41 + 1), v42, *(&v42 + 1), v38);
    sub_1BD3399B8(v39, *(&v39 + 1), v40, *(&v40 + 1), v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD423F8);
    sub_1BD339410(&qword_1EBD397C8, &qword_1EBD452C0, &unk_1BE0B7620, sub_1BD0F15A0);
    sub_1BD339494();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v20, v14, &qword_1EBD423E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD339358();
    sub_1BE04F9A4();
    sub_1BD3399FC(v39, *(&v39 + 1), v40, *(&v40 + 1), v38);
    sub_1BD3399FC(v39, *(&v39 + 1), v40, *(&v40 + 1), v38);
    v35 = v20;
    v36 = &qword_1EBD423E0;
  }

  return sub_1BD0DE53C(v35, v36);
}

unint64_t sub_1BD3391E8()
{
  result = qword_1EBD423B0;
  if (!qword_1EBD423B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423A8);
    sub_1BD3392A0();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423B0);
  }

  return result;
}

unint64_t sub_1BD3392A0()
{
  result = qword_1EBD423B8;
  if (!qword_1EBD423B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423C0);
    sub_1BD166FEC();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423B8);
  }

  return result;
}

unint64_t sub_1BD339358()
{
  result = qword_1EBD423E8;
  if (!qword_1EBD423E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423E0);
    sub_1BD339410(&qword_1EBD397C8, &qword_1EBD452C0, &unk_1BE0B7620, sub_1BD0F15A0);
    sub_1BD339494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423E8);
  }

  return result;
}

uint64_t sub_1BD339410(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD339494()
{
  result = qword_1EBD423F0;
  if (!qword_1EBD423F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD423F8);
    sub_1BD339410(&qword_1EBD42400, &qword_1EBD42408, &unk_1BE0CD458, sub_1BD33954C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD423F0);
  }

  return result;
}

unint64_t sub_1BD33954C()
{
  result = qword_1EBD42410;
  if (!qword_1EBD42410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42410);
  }

  return result;
}

BOOL sub_1BD3395A0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_1BE04F774();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v21 - v11;
  v13 = *(v4 + 16);
  v13(&v21 - v11, a1, v3, v10);
  v14 = *(v4 + 88);
  v15 = v14(v12, v3);
  v16 = 0;
  v17 = *MEMORY[0x1E697F658];
  if (v15 != *MEMORY[0x1E697F658])
  {
    if (v15 == *MEMORY[0x1E697F690])
    {
      v16 = 1;
      goto LABEL_24;
    }

    if (v15 == *MEMORY[0x1E697F698])
    {
      v16 = 2;
      goto LABEL_24;
    }

    if (v15 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v15 == *MEMORY[0x1E697F650])
    {
      v16 = 4;
    }

    else if (v15 == *MEMORY[0x1E697F660])
    {
      v16 = 5;
    }

    else if (v15 == *MEMORY[0x1E697F630])
    {
      v16 = 6;
    }

    else if (v15 == *MEMORY[0x1E697F670])
    {
      v16 = 7;
    }

    else if (v15 == *MEMORY[0x1E697F668])
    {
      v16 = 8;
    }

    else if (v15 == *MEMORY[0x1E697F678])
    {
      v16 = 9;
    }

    else if (v15 == *MEMORY[0x1E697F640])
    {
      v16 = 10;
    }

    else
    {
      if (v15 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v12, v3);
LABEL_7:
        v16 = 3;
        goto LABEL_24;
      }

      v16 = 11;
    }
  }

LABEL_24:
  (v13)(v7, v22, v3);
  v18 = v14(v7, v3);
  if (v18 == v17)
  {
    v19 = 0;
  }

  else if (v18 == *MEMORY[0x1E697F690])
  {
    v19 = 1;
  }

  else if (v18 == *MEMORY[0x1E697F698])
  {
    v19 = 2;
  }

  else
  {
    if (v18 != *MEMORY[0x1E697F680])
    {
      if (v18 == *MEMORY[0x1E697F650])
      {
        v19 = 4;
        return v16 < v19;
      }

      if (v18 == *MEMORY[0x1E697F660])
      {
        v19 = 5;
        return v16 < v19;
      }

      if (v18 == *MEMORY[0x1E697F630])
      {
        v19 = 6;
        return v16 < v19;
      }

      if (v18 == *MEMORY[0x1E697F670])
      {
        v19 = 7;
        return v16 < v19;
      }

      if (v18 == *MEMORY[0x1E697F668])
      {
        v19 = 8;
        return v16 < v19;
      }

      if (v18 == *MEMORY[0x1E697F678])
      {
        v19 = 9;
        return v16 < v19;
      }

      if (v18 == *MEMORY[0x1E697F640])
      {
        v19 = 10;
        return v16 < v19;
      }

      if (v18 == *MEMORY[0x1E697F648])
      {
        v19 = 11;
        return v16 < v19;
      }

      (*(v4 + 8))(v7, v3);
    }

    v19 = 3;
  }

  return v16 < v19;
}

uint64_t sub_1BD3399B8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1BD0D7F18(result, a2, a3 & 1);

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD3399FC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1BD0DDF10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BD339A40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD339A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BD339AF0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1BD339B20()
{
  result = qword_1EBD42418;
  if (!qword_1EBD42418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42358);
    sub_1BD0DE4F4(&qword_1EBD42370, &qword_1EBD42358);
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42418);
  }

  return result;
}

uint64_t sub_1BD339C2C()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD339CA0()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

unint64_t sub_1BD339D18()
{
  result = qword_1EBD42428;
  if (!qword_1EBD42428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42428);
  }

  return result;
}

uint64_t type metadata accessor for AppleBalanceDirectTopUpView()
{
  result = qword_1EBD42430;
  if (!qword_1EBD42430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD339DE0()
{
  type metadata accessor for PKAppleBalanceDirectTopUpPresentationContext(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccountModel();
    if (v1 <= 0x3F)
    {
      sub_1BD33A100(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD33A0AC(319, &qword_1EBD42440, type metadata accessor for DirectTopUpModel);
        if (v3 <= 0x3F)
        {
          sub_1BD33A018();
          if (v4 <= 0x3F)
          {
            sub_1BD327BD8(319, &qword_1EBD496E0);
            if (v5 <= 0x3F)
            {
              sub_1BD33A0AC(319, &qword_1EBD42448, type metadata accessor for Decimal);
              if (v6 <= 0x3F)
              {
                sub_1BD327BD8(319, &qword_1EBD40458);
                if (v7 <= 0x3F)
                {
                  sub_1BD327BD8(319, &qword_1EBD42450);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD327BD8(319, &unk_1EBD59650);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD33A100(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD33A018()
{
  if (!qword_1EBD59640)
  {
    type metadata accessor for KeyboardObserver();
    sub_1BD33E4BC(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59640);
    }
  }
}

void sub_1BD33A0AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0516D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD33A100(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BD33A180(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04BD74();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v50 - v17;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 80) = sub_1BD24B1AC;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  LOBYTE(v55) = 1;
  sub_1BE051694();
  v19 = *(&v58 + 1);
  *(a4 + 104) = v58;
  *(a4 + 112) = v19;
  v55 = MEMORY[0x1BFB403C0](0);
  v56 = v20;
  LODWORD(v57) = v21;
  type metadata accessor for Decimal(0);
  sub_1BE051694();
  v22 = v59;
  *(a4 + 120) = v58;
  *(a4 + 136) = v22;
  v53 = sub_1BE051494();
  sub_1BE051694();
  v23 = v56;
  *(a4 + 176) = v55;
  *(a4 + 184) = v23;
  v53 = 0;
  sub_1BE051694();
  v24 = v56;
  *(a4 + 192) = v55;
  *(a4 + 200) = v24;
  LOBYTE(v53) = 0;
  sub_1BE051694();
  v25 = v56;
  *(a4 + 208) = v55;
  *(a4 + 216) = v25;
  type metadata accessor for AppleBalanceDirectTopUpView();
  v26 = type metadata accessor for FeatureError(0);
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_1BD0DE19C(v18, v14, &qword_1EBD416C0);
  sub_1BE051694();
  sub_1BD0DE53C(v18, &qword_1EBD416C0);
  *a4 = a1;
  *(a4 + 8) = a2;
  v53 = a3;
  type metadata accessor for DirectTopUpModel();
  v27 = a2;
  v28 = a3;
  sub_1BE051694();
  v29 = v56;
  *(a4 + 64) = v55;
  *(a4 + 72) = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v30 = v55;
  if (!v55)
  {
    goto LABEL_10;
  }

  v31 = [v55 accountSummary];

  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = [v31 currentBalance];

  if (!v32)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v33 = v55;
  if (!v55 || (v34 = [v55 currencyCode], v33, !v34))
  {
    v27 = v32;
LABEL_10:

    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1BE051694();

    goto LABEL_11;
  }

  v36 = v50;
  v35 = v51;
  (*(v50 + 104))(v52, *MEMORY[0x1E69B8060], v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BE0B69E0;
  v38 = v32;
  v39 = PKCurrencyAmountMake();

  if (v39)
  {
    v40 = [v39 minimalFormattedStringValue];

    if (v40)
    {
      v41 = sub_1BE052434();
      v43 = v42;

      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1BD110550();
      *(v37 + 32) = v41;
      *(v37 + 40) = v43;
      v44 = v52;
      v45 = sub_1BE04B714();
      v47 = v46;

      (*(v36 + 8))(v44, v35);
      v53 = v45;
      v54 = v47;
      sub_1BE051694();

LABEL_11:
      v48 = v56;
      v49 = v57;
      *(a4 + 152) = v55;
      *(a4 + 160) = v48;
      *(a4 + 168) = v49;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD33A70C()
{
  if (*v0 != 3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488);
  sub_1BE0516A4();
  swift_getKeyPath();
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v1 = *&v5[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion];
  v2 = v1;

  if (!v1)
  {
    return 0;
  }

  v3 = [v2 bonusMinAmount];

  return v3;
}

uint64_t sub_1BD33A824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v66 = type metadata accessor for AppleBalanceDirectTopUpView();
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v3);
  v65 = v4;
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42458);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42460);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42468);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42470);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v18);
  v59 = &v56 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42478);
  MEMORY[0x1EEE9AC00](v58, v20);
  v63 = &v56 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42480);
  MEMORY[0x1EEE9AC00](v57, v22);
  v61 = &v56 - v23;
  v24 = *(v1 + 72);
  *&v69 = *(v1 + 64);
  *(&v69 + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488);
  sub_1BE0516A4();
  v25 = v68;
  swift_getKeyPath();
  *&v69 = v25;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v26 = *&v25[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v27 = v26;

  if (v26)
  {
  }

  *v9 = sub_1BE04F7B4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42490);
  sub_1BD33B02C(v2, v26 != 0, &v9[*(v28 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v13, &qword_1EBD42458);
  v29 = &v13[*(v10 + 36)];
  v30 = v74;
  *(v29 + 4) = v73;
  *(v29 + 5) = v30;
  *(v29 + 6) = v75;
  v31 = v70;
  *v29 = v69;
  *(v29 + 1) = v31;
  v32 = v72;
  *(v29 + 2) = v71;
  *(v29 + 3) = v32;
  v33 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v17;
  sub_1BD0DE204(v13, v17, &qword_1EBD42460);
  v56 = v14;
  v43 = &v17[*(v14 + 36)];
  *v43 = v33;
  *(v43 + 1) = v35;
  *(v43 + 2) = v37;
  *(v43 + 3) = v39;
  *(v43 + 4) = v41;
  v43[40] = 0;
  type metadata accessor for KeyboardObserver();
  sub_1BD33E4BC(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD243118(v2, v5);
  v44 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v45 = swift_allocObject();
  sub_1BD33E288(v5, v45 + v44, type metadata accessor for AppleBalanceDirectTopUpView);
  sub_1BD33DC9C(&qword_1EBD42498, &qword_1EBD42468, &unk_1BE0CD640, sub_1BD33D9C4);
  v46 = v59;
  sub_1BE051064();

  sub_1BD0DE53C(v42, &qword_1EBD42468);
  sub_1BD243118(v2, v5);
  v47 = swift_allocObject();
  sub_1BD33E288(v5, v47 + v44, type metadata accessor for AppleBalanceDirectTopUpView);
  v48 = v63;
  (*(v62 + 32))(v63, v46, v64);
  v49 = (v48 + *(v58 + 36));
  *v49 = sub_1BD33DA7C;
  v49[1] = v47;
  v49[2] = 0;
  v49[3] = 0;
  v50 = v61;
  v51 = &v61[*(v57 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516C4();
  v52 = *(v2 + 48);
  v53 = *(v2 + 56);
  sub_1BD0DE204(v48, v50, &qword_1EBD42478);
  v54 = &v51[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
  *v54 = v52;
  v54[1] = v53;
  sub_1BD0DE204(v50, v67, &qword_1EBD42480);
  return sub_1BD0D44B8(v52);
}

uint64_t sub_1BD33B02C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v149 = a2;
  v159 = a3;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B0);
  MEMORY[0x1EEE9AC00](v158, v4);
  v134 = &v126 - v5;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B8);
  MEMORY[0x1EEE9AC00](v127, v6);
  v128 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v132 = &v126 - v10;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424C0);
  MEMORY[0x1EEE9AC00](v152, v11);
  v156 = &v126 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424C8);
  MEMORY[0x1EEE9AC00](v155, v13);
  v136 = &v126 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v131 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v15);
  v129 = &v126 - v16;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424D0);
  MEMORY[0x1EEE9AC00](v130, v17);
  v135 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v150 = &v126 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424D8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v157 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v164 = &v126 - v27;
  v28 = type metadata accessor for AppleBalanceDirectTopUpView();
  v146 = *(v28 - 8);
  v165 = *(v146 + 8);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v166 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424E0);
  v32 = *(v31 - 8);
  v147 = v31;
  v148 = v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v161 = &v126 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424E8);
  v153 = *(v35 - 8);
  v154 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v151 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v167 = &v126 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424F0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v163 = &v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v126 - v46;
  *v47 = sub_1BE04F504();
  *(v47 + 1) = 0;
  v47[16] = 1;
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424F8) + 44);
  v162 = v47;
  sub_1BD33C340(&v47[v48]);
  v49 = *(a1 + 136);
  v205[0] = *(a1 + 120);
  v205[1] = v49;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500);
  sub_1BE0516C4();
  v50 = *(a1 + 168);
  v184[0] = *(a1 + 152);
  *&v184[1] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  v140 = v205[0];
  v141 = *(&v205[1] + 1);
  v142 = *&v205[1];
  v51 = *(a1 + 184);
  *&v184[0] = *(a1 + 176);
  *(&v184[0] + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42508);
  sub_1BE0516C4();
  v139 = *&v205[0];
  v138 = *(v205 + 8);
  v137 = sub_1BD33A70C();
  v52 = *(a1 + 8);
  v53 = *(a1 + 72);
  v54 = a1;
  *&v205[0] = *(a1 + 64);
  *(&v205[0] + 1) = v53;
  v55 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488);
  sub_1BE0516A4();
  v56 = *&v184[0];
  swift_getKeyPath();
  *&v205[0] = v56;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v57 = *&v56[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v58 = v57;

  LODWORD(v145) = *(v54 + 104);
  v59 = v54;
  v144 = *(v54 + 112);
  LOBYTE(v184[0]) = v145;
  *(&v184[0] + 1) = v144;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v60 = v205[0];
  v61 = v205[1];
  LOBYTE(v184[0]) = 0;
  sub_1BE051694();
  v62 = v205[0];
  v63 = *(&v205[0] + 1);
  v200 = v193;
  v201 = v194;
  LODWORD(v202) = v195;
  LOBYTE(v47) = sub_1BE0501E4();
  sub_1BE04E1F4();
  LOBYTE(v176) = 0;
  v184[0] = v200;
  v184[1] = v201;
  *(&v184[2] + 8) = v140;
  *&v184[2] = v202;
  *(&v184[3] + 1) = v142;
  *&v184[4] = v141;
  *(&v184[4] + 1) = v139;
  v185 = v138;
  *&v186 = v137;
  *(&v186 + 1) = v55;
  *v187 = v57;
  *&v187[8] = v60;
  v187[24] = v61;
  *&v187[28] = *&v199[3];
  *&v187[25] = *v199;
  LOBYTE(v188) = v62;
  *(&v188 + 1) = *v198;
  DWORD1(v188) = *&v198[3];
  *(&v188 + 1) = v63;
  LOWORD(v189) = 256;
  WORD3(v189) = v197;
  *(&v189 + 2) = *&v196[7];
  BYTE8(v189) = v47;
  HIDWORD(v189) = *&v196[3];
  *(&v189 + 9) = *v196;
  *&v190 = v64;
  *(&v190 + 1) = v65;
  *&v191 = v66;
  *(&v191 + 1) = v67;
  v192 = 0;
  v68 = v59;
  v69 = *(v59 + 136);
  v205[0] = *(v59 + 120);
  v205[1] = v69;
  sub_1BE0516A4();
  v178 = v203;
  LODWORD(v179) = v204;
  v70 = v166;
  sub_1BD243118(v59, v166);
  v71 = *(v146 + 80);
  v72 = (v71 + 16) & ~v71;
  v73 = swift_allocObject();
  v146 = type metadata accessor for AppleBalanceDirectTopUpView;
  sub_1BD33E288(v70, v73 + v72, type metadata accessor for AppleBalanceDirectTopUpView);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42510);
  type metadata accessor for Decimal(0);
  v76 = v75;
  v77 = sub_1BD33DC9C(&qword_1EBD42518, &qword_1EBD42510, &unk_1BE0CD7D8, sub_1BD33DD20);
  v78 = sub_1BD33E4BC(&qword_1EBD42530, type metadata accessor for Decimal);
  sub_1BE051064();

  v205[10] = v189;
  v205[11] = v190;
  v205[12] = v191;
  v206 = v192;
  v205[6] = v186;
  v205[7] = *v187;
  v205[8] = *&v187[16];
  v205[9] = v188;
  v205[2] = v184[2];
  v205[3] = v184[3];
  v205[4] = v184[4];
  v205[5] = v185;
  v205[0] = v184[0];
  v205[1] = v184[1];
  sub_1BD0DE53C(v205, &qword_1EBD42510);
  LOBYTE(v184[0]) = v145;
  *(&v184[0] + 1) = v144;
  sub_1BE0516A4();
  v143 = v68;
  v79 = v166;
  sub_1BD243118(v68, v166);
  v145 = v71;
  v80 = swift_allocObject();
  v144 = v72;
  sub_1BD33E288(v79, v80 + v72, v146);
  *&v184[0] = v74;
  *(&v184[0] + 1) = v76;
  *&v184[1] = v77;
  *(&v184[1] + 1) = v78;
  swift_getOpaqueTypeConformance2();
  v81 = v147;
  v82 = v161;
  sub_1BE051064();

  (*(v148 + 8))(v82, v81);
  if (v149)
  {
    v83 = sub_1BE04F7B4();
    LOBYTE(v178) = 0;
    v84 = v143;
    sub_1BD33C87C(v174);
    *(&v184[1] + 7) = v174[1];
    *(v184 + 7) = v174[0];
    *(&v184[2] + 7) = v174[2];
    *(&v184[3] + 7) = v175;
    *&v177[17] = v184[1];
    *&v177[33] = v184[2];
    *&v177[49] = v184[3];
    *&v176 = v83;
    *(&v176 + 1) = 0x4014000000000000;
    v177[0] = v178;
    *&v177[64] = *(&v175 + 1);
    *&v177[1] = v184[0];
    v85 = v166;
    sub_1BD243118(v84, v166);
    v86 = v144;
    v87 = swift_allocObject();
    sub_1BD33E288(v85, v87 + v86, type metadata accessor for AppleBalanceDirectTopUpView);
    v88 = v129;
    sub_1BE051704();
    v89 = *(v84 + 216);
    LOBYTE(v178) = *(v84 + 208);
    *(&v178 + 1) = v89;
    sub_1BE0516C4();
    LODWORD(v161) = LOBYTE(v184[1]);
    sub_1BD243118(v84, v85);
    v90 = swift_allocObject();
    sub_1BD33E288(v85, v90 + v86, type metadata accessor for AppleBalanceDirectTopUpView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42558);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD33E1D4();
    v91 = v150;
    v92 = v133;
    sub_1BE050F64();

    (*(v131 + 8))(v88, v92);
    LOBYTE(v83) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v93 = v91 + *(v130 + 36);
    *v93 = v83;
    *(v93 + 8) = v94;
    *(v93 + 16) = v95;
    *(v93 + 24) = v96;
    *(v93 + 32) = v97;
    *(v93 + 40) = 0;
    v170 = *&v177[16];
    v171 = *&v177[32];
    v172 = *&v177[48];
    v173 = *&v177[64];
    v168 = v176;
    v169 = *v177;
    v98 = v135;
    sub_1BD0DE19C(v91, v135, &qword_1EBD424D0);
    v99 = v171;
    v180 = v170;
    v181 = v171;
    v100 = v172;
    v182 = v172;
    v101 = v173;
    v183 = v173;
    v102 = v168;
    v103 = v169;
    v178 = v168;
    v179 = v169;
    v104 = v136;
    *(v136 + 2) = v170;
    *(v104 + 48) = v99;
    *(v104 + 64) = v100;
    *v104 = v102;
    *(v104 + 16) = v103;
    *(v104 + 80) = v101;
    *(v104 + 88) = 0;
    *(v104 + 96) = 1;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42568);
    sub_1BD0DE19C(v98, v104 + *(v105 + 64), &qword_1EBD424D0);
    sub_1BD0DE19C(&v176, v184, &qword_1EBD3B890);
    sub_1BD0DE19C(&v178, v184, &qword_1EBD3B890);
    sub_1BD0DE53C(v98, &qword_1EBD424D0);
    v184[2] = v170;
    v184[3] = v171;
    v184[4] = v172;
    *&v185 = v173;
    v184[0] = v168;
    v184[1] = v169;
    sub_1BD0DE53C(v184, &qword_1EBD3B890);
    sub_1BD0DE19C(v104, v156, &qword_1EBD424C8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD42540, &qword_1EBD424C8);
    sub_1BD0DE4F4(&qword_1EBD42548, &qword_1EBD424B0);
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v176, &qword_1EBD3B890);
    sub_1BD0DE53C(v104, &qword_1EBD424C8);
    sub_1BD0DE53C(v150, &qword_1EBD424D0);
  }

  else
  {
    v106 = v132;
    sub_1BE04E4F4();
    v107 = [objc_opt_self() secondaryLabelColor];
    v108 = sub_1BE0511C4();
    KeyPath = swift_getKeyPath();
    *&v184[0] = v108;
    v110 = sub_1BE04E5F4();
    v111 = v128;
    v112 = (v106 + *(v127 + 36));
    *v112 = KeyPath;
    v112[1] = v110;
    sub_1BD0DE19C(v106, v111, &qword_1EBD424B8);
    v113 = v134;
    sub_1BD0DE19C(v111, v134, &qword_1EBD424B8);
    v114 = v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42538) + 48);
    *v114 = 0;
    *(v114 + 8) = 1;
    sub_1BD0DE53C(v111, &qword_1EBD424B8);
    sub_1BD0DE19C(v113, v156, &qword_1EBD424B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD42540, &qword_1EBD424C8);
    sub_1BD0DE4F4(&qword_1EBD42548, &qword_1EBD424B0);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v113, &qword_1EBD424B0);
    sub_1BD0DE53C(v106, &qword_1EBD424B8);
  }

  v115 = v163;
  sub_1BD0DE19C(v162, v163, &qword_1EBD424F0);
  v117 = v153;
  v116 = v154;
  v118 = *(v153 + 16);
  v119 = v151;
  v118(v151, v167, v154);
  v120 = v164;
  v121 = v157;
  sub_1BD0DE19C(v164, v157, &qword_1EBD424D8);
  v122 = v159;
  sub_1BD0DE19C(v115, v159, &qword_1EBD424F0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42550);
  v118((v122 + *(v123 + 48)), v119, v116);
  sub_1BD0DE19C(v121, v122 + *(v123 + 64), &qword_1EBD424D8);
  sub_1BD0DE53C(v120, &qword_1EBD424D8);
  v124 = *(v117 + 8);
  v124(v167, v116);
  sub_1BD0DE53C(v162, &qword_1EBD424F0);
  sub_1BD0DE53C(v121, &qword_1EBD424D8);
  v124(v119, v116);
  return sub_1BD0DE53C(v163, &qword_1EBD424F0);
}

void sub_1BD33C340(void *a1@<X8>)
{
  v40 = a1;
  v1 = sub_1BE051584();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB70);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42570);
  MEMORY[0x1EEE9AC00](v39, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  v21 = PKAccountHeroImageName();
  v22 = PKUIImageNamed(v21);

  if (v22)
  {
    sub_1BE051544();
    (*(v2 + 104))(v5, *MEMORY[0x1E6981630], v1);
    v23 = sub_1BE0515E4();

    (*(v2 + 8))(v5, v1);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v42 = 1;
    *&v41[6] = v43;
    *&v41[22] = v44;
    *&v41[38] = v45;
    v24 = &v9[*(v6 + 36)];
    v25 = *(sub_1BE04EDE4() + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_1BE04F684();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #5.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v33 = *&v41[16];
    *(v9 + 18) = *v41;
    *v9 = v23;
    *(v9 + 1) = 0;
    *(v9 + 8) = 1;
    *(v9 + 34) = v33;
    *(v9 + 50) = *&v41[32];
    *(v9 + 8) = *&v41[46];
    sub_1BE0513F4();
    v34 = sub_1BE051454();

    sub_1BD0DE204(v9, v16, &qword_1EBD3EB70);
    v35 = &v16[*(v39 + 36)];
    *v35 = v34;
    *(v35 + 8) = xmmword_1BE0C9FB0;
    *(v35 + 3) = 0x4010000000000000;
    sub_1BD0DE204(v16, v20, &qword_1EBD42570);
    sub_1BD0DE19C(v20, v12, &qword_1EBD42570);
    v36 = v40;
    *v40 = 0;
    *(v36 + 8) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42578);
    sub_1BD0DE19C(v12, v36 + *(v37 + 48), &qword_1EBD42570);
    v38 = v36 + *(v37 + 64);
    *v38 = 0;
    v38[8] = 1;
    sub_1BD0DE53C(v20, &qword_1EBD42570);
    sub_1BD0DE53C(v12, &qword_1EBD42570);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD33C784(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = *(a2 + 4);
    v6 = *a2;
    v5 = a2[1];
    sub_1BE048964();
    v3(v6, v5, v4);

    sub_1BD0D4744(v3);
  }
}

void sub_1BD33C80C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3)
  {
    v4 = *a2;
    sub_1BE048964();
    v3(v4);

    sub_1BD0D4744(v3);
  }
}

void sub_1BD33C87C(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 appleAccountInformation];

  if (!v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = [v4 appleID];

  if (v5)
  {
    v6 = sub_1BE052434();
    v21 = v7;
    v22 = v6;
  }

  else
  {
    v21 = 0xE000000000000000;
    v22 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  sub_1BD0DDEBC();
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42508);
  sub_1BE0516A4();
  v13 = sub_1BE050564();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1BD0DDF10(v8, v10, v12 & 1);

  *a1 = v22;
  *(a1 + 8) = v21;
  v20 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v20;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17 & 1;
  *(a1 + 56) = v19;
  sub_1BD0D7F18(v22, v21, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v13, v15, v17 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v13, v15, v17 & 1);

  sub_1BD0DDF10(v22, v21, 0);
}

uint64_t sub_1BD33CB20@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v40 = &v38 - v3;
  v4 = sub_1BE050474();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v13, *MEMORY[0x1E69B8060], v8, v11);
  v14 = sub_1BE04B714();
  v16 = v15;
  (*(v9 + 8))(v13, v8);
  v42 = v14;
  v43 = v16;
  sub_1BD0DDEBC();
  v17 = sub_1BE0506C4();
  v19 = v18;
  LOBYTE(v9) = v20;
  v21 = [objc_opt_self() secondaryLabelColor];
  sub_1BE0511C4();
  v22 = sub_1BE050564();
  v24 = v23;
  LOBYTE(v16) = v25;

  sub_1BD0DDF10(v17, v19, v9 & 1);

  v27 = v38;
  v26 = v39;
  (*(v38 + 104))(v7, *MEMORY[0x1E6980F20], v39);
  v28 = sub_1BE050354();
  v29 = v40;
  (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
  sub_1BE0503C4();
  sub_1BD0DE53C(v29, &qword_1EBD49130);
  (*(v27 + 8))(v7, v26);
  v30 = sub_1BE0505F4();
  v32 = v31;
  LOBYTE(v27) = v33;
  v35 = v34;

  sub_1BD0DDF10(v22, v24, v16 & 1);

  v37 = v41;
  *v41 = v30;
  v37[1] = v32;
  *(v37 + 16) = v27 & 1;
  v37[3] = v35;
  return result;
}

uint64_t sub_1BD33CECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SafariViewController();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 72);
  v17 = *(a1 + 64);
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488);
  sub_1BE0516A4();
  v10 = v16[1];
  swift_getKeyPath();
  v17 = v10;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v11 = *&v10[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v12 = v11;

  if (v11)
  {
    v13 = [v12 termsURL];
    sub_1BE04A9F4();

    sub_1BD33E288(v8, a2, type metadata accessor for SafariViewController);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_1BD33D0B0(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for KeyboardObserver();
    sub_1BD33E4BC(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((v3 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
      return sub_1BE0516B4();
    }
  }

  return result;
}

void sub_1BD33D1E8(uint64_t a1)
{
  v2 = type metadata accessor for AppleBalanceDirectTopUpView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42488);
  sub_1BE0516A4();
  swift_getKeyPath();
  v18 = v17;
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v8 = *&v17[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration];
  v9 = v8;

  if (v8)
  {

    v10 = sub_1BD33A70C();
    v11 = v10;
    if (v10)
    {
    }

    v12 = *(a1 + 112);
    LOBYTE(v18) = *(a1 + 104);
    v19 = v12;
    LOBYTE(v17) = v11 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
  }

  else
  {
    v18 = v6;
    v19 = v7;
    sub_1BE0516A4();
    v13 = v17;
    sub_1BD243118(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = swift_allocObject();
    sub_1BD33E288(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AppleBalanceDirectTopUpView);
    sub_1BD7B1638(sub_1BD33DA94, v15);
  }
}

uint64_t sub_1BD33D444(char a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = sub_1BD33A70C();
    v20 = v19;
    if (v19)
    {
    }

    v21 = *(a3 + 112);
    v34 = *(a3 + 104);
    v35 = v21;
    v33 = v20 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

  else
  {
    sub_1BE04D194();
    v23 = a2;
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();

    if (os_log_type_enabled(v24, v25))
    {
      v32 = a3;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      if (a2)
      {
        v28 = a2;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v26 + 4) = v29;
      *v27 = v30;
      _os_log_impl(&dword_1BD026000, v24, v25, "Error loading DTU configuration: %@", v26, 0xCu);
      sub_1BD0DE53C(v27, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v27, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
    v31 = a2;
    FeatureError.init(feature:error:)(4, a2, v13);
    type metadata accessor for AppleBalanceDirectTopUpView();
    sub_1BD0DE19C(v13, v9, &qword_1EBD416C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516B4();
    return sub_1BD0DE53C(v13, &qword_1EBD416C0);
  }
}

uint64_t sub_1BD33D768@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD33D7E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD33D85C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1BD33D8E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD33D97C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1A3C(v1);
}

unint64_t sub_1BD33D9C4()
{
  result = qword_1EBD424A0;
  if (!qword_1EBD424A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42460);
    sub_1BD0DE4F4(&qword_1EBD424A8, &qword_1EBD42458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD424A0);
  }

  return result;
}

uint64_t sub_1BD33DA94(char a1, void *a2)
{
  v5 = *(type metadata accessor for AppleBalanceDirectTopUpView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD33D444(a1, a2, v6);
}

id sub_1BD33DB28@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD33E4BC(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1BD33DBEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1BD4(v1);
}

void sub_1BD33DC1C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AppleBalanceDirectTopUpView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD33C784(a1, a2, v6);
}

uint64_t sub_1BD33DC9C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD33DD20()
{
  result = qword_1EBD42520;
  if (!qword_1EBD42520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42528);
    sub_1BD33DDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42520);
  }

  return result;
}

unint64_t sub_1BD33DDAC()
{
  result = qword_1EBD4EEF0;
  if (!qword_1EBD4EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EEF0);
  }

  return result;
}

uint64_t sub_1BD33DE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppleBalanceDirectTopUpView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1BD33DEC4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleBalanceDirectTopUpView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_27()
{
  v1 = type metadata accessor for AppleBalanceDirectTopUpView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 16))
  {
  }

  if (*(v2 + 32))
  {
  }

  if (*(v2 + 48))
  {
  }

  sub_1BD0D45CC();

  v3 = (v2 + *(v1 + 68));
  v4 = type metadata accessor for FeatureError(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_1BE04B824();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);

  return swift_deallocObject();
}

uint64_t sub_1BD33E164@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleBalanceDirectTopUpView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD33CECC(v4, a1);
}

unint64_t sub_1BD33E1D4()
{
  result = qword_1EBD42560;
  if (!qword_1EBD42560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42558);
    sub_1BD33E4BC(&qword_1EBD394A8, type metadata accessor for SafariViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42560);
  }

  return result;
}

uint64_t sub_1BD33E288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD33E2F0()
{
  result = qword_1EBD42580;
  if (!qword_1EBD42580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42480);
    sub_1BD33E3AC();
    sub_1BD33E4BC(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42580);
  }

  return result;
}

unint64_t sub_1BD33E3AC()
{
  result = qword_1EBD42588;
  if (!qword_1EBD42588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42468);
    sub_1BD33DC9C(&qword_1EBD42498, &qword_1EBD42468, &unk_1BE0CD640, sub_1BD33D9C4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42588);
  }

  return result;
}

uint64_t sub_1BD33E4BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PaymentOffersUIUtilities.shouldDisplayStatus(for:transaction:installmentCriteria:)(void *a1, void *a2, void *a3)
{
  v3 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a1, a2, a3);
  if (v3 < 4)
  {
    return v3 & 1;
  }

  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

uint64_t static PaymentOffersUIUtilities.shouldDisplayRewardsRedemptionInfo(for:)(void *a1)
{
  if (PKHideCardBenefitRewards())
  {
    return 0;
  }

  result = [a1 paymentRewardsRedemption];
  if (result)
  {

    return 1;
  }

  return result;
}

id PaymentOffersUIUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentOffersUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOffersUIUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaymentOffersUIUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOffersUIUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(id result)
{
  if (result)
  {
    v1 = result;
    result = [result selectedOfferConfirmationRecord];
    if (result)
    {
      v2 = result;
      v3 = [result selectedOffer];

      v4 = [v3 installmentSelectedPaymentOffer];
      if (v4)
      {
        v5 = [v1 transactionDetailMessageTileDynamicContent];
        if (v5)
        {

          if (![v1 isSetupPaymentOfferAfterPurchase])
          {
            v6 = [v4 selectionType];

            return (v6 == 2);
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s9PassKitUI24PaymentOffersUIUtilitiesC30shouldDisplayPlanDetailsButton3for11transactionSbSo32PKPaymentOfferConfirmationRecordCSg_So0N11TransactionCSgtFZ_0(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  if (!a2)
  {
    goto LABEL_7;
  }

  v13 = a2;
  if (![v13 isIssuerInstallmentTransaction])
  {

LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  v14 = [v13 issuerInstallmentManagementURL];
  if (!v14)
  {

    (*(v5 + 56))(v12, 1, 1, v4);
    sub_1BD226BBC(v12);
    goto LABEL_7;
  }

  v15 = v14;
  sub_1BE04A9F4();

  (*(v5 + 32))(v12, v8, v4);
  (*(v5 + 56))(v12, 0, 1, v4);
  sub_1BD226BBC(v12);
  v16 = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(a1);

  v17 = v16 ^ 1;
  return v17 & 1;
}

uint64_t _s9PassKitUI24PaymentOffersUIUtilitiesC42shouldDisplaySetupPostPurchaseInstallments3for19installmentCriteriaSbSo20PKPaymentTransactionCSg_So0p16OfferInstallmentO0CSgtFZ_0(void *a1, void *a2)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38[-v11];
  if (!a1 || !a2)
  {
    return 0;
  }

  v13 = a1;
  v14 = a2;
  if ([v13 isIssuerInstallmentTransaction])
  {
    goto LABEL_4;
  }

  v15 = [v13 issuerInstallmentManagementURL];
  if (v15)
  {
    v16 = v15;
    sub_1BE04A9F4();

    v17 = sub_1BE04AA64();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    sub_1BD226BBC(v12);
    return 0;
  }

  v19 = sub_1BE04AA64();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_1BD226BBC(v12);
  if (![v14 supportsInstorePostPurchase])
  {
LABEL_4:

    return 0;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69B8C98]) initWithTransaction_];
  v43 = 0;
  v42 = [v14 eligibleWithConfiguration:v20 ineligibleReason:&v43];
  sub_1BE04D1B4();
  v21 = v14;
  v22 = sub_1BE04D204();
  v23 = sub_1BE052C54();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v23;
    v25 = v24;
    v40 = swift_slowAlloc();
    v44[0] = v40;
    *v25 = 136315650;
    v26 = [v21 identifier];
    v41 = v20;
    v27 = v26;
    v28 = sub_1BE052434();
    v30 = v29;

    v31 = sub_1BD123690(v28, v30, v44);

    *(v25 + 4) = v31;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v42;
    *(v25 + 18) = 2080;
    swift_beginAccess();
    v32 = PKPaymentOfferCriteriaIneligibleReasonToString();
    v33 = sub_1BE052434();
    v35 = v34;

    v36 = sub_1BD123690(v33, v35, v44);

    *(v25 + 20) = v36;
    _os_log_impl(&dword_1BD026000, v22, v39, "Payment offers installments %s post purchase is eligible %{BOOL}d for reason %s", v25, 0x1Cu);
    v37 = v40;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v37, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  return v42;
}

uint64_t _s9PassKitUI24PaymentOffersUIUtilitiesC40shouldDisplayRewardsRedemptionStatusLink3forSbSo20PKPaymentTransactionC_tFZ_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  if ((PKHideCardBenefitRewards() & 1) == 0)
  {
    v11 = [a1 paymentRewardsRedemption];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 statusLink];

      if (v13)
      {
        sub_1BE04A9F4();

        v14 = sub_1BE04AA64();
        (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
      }

      else
      {
        v14 = sub_1BE04AA64();
        (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      }

      sub_1BD226B4C(v5, v9);
      sub_1BE04AA64();
      v10 = 1;
      if ((*(*(v14 - 8) + 48))(v9, 1, v14) != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = sub_1BE04AA64();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    }

    v10 = 0;
LABEL_10:
    sub_1BD226BBC(v9);
    return v10;
  }

  return 0;
}

uint64_t sub_1BD33F26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425B0);
  return sub_1BD33F2C4(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD33F2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v46 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425B8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v47 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v46 - v18;
  v20 = *(a1 + 8);
  *&v54 = *a1;
  *(&v54 + 1) = v20;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  v26 = sub_1BE050564();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1BD0DDF10(v21, v23, v25 & 1);

  *&v54 = v26;
  *(&v54 + 1) = v28;
  v55 = v30 & 1;
  v56 = v32;
  sub_1BE052434();
  sub_1BE050DE4();

  v33 = v48;
  sub_1BD0DDF10(v26, v28, v30 & 1);

  v54 = *(a1 + 32);
  v34 = *(a1 + 48);
  v35 = v47;
  v55 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v53, v36);
  v37 = v49;
  v38 = 1;
  if (v53 == 1)
  {
    v39 = v46;
    sub_1BE04E4F4();
    (*(v37 + 32))(v35, v39, v33);
    v38 = 0;
  }

  (*(v37 + 56))(v35, v38, 1, v33);
  v40 = v50;
  sub_1BD0DE19C(v19, v50, &qword_1EBD452C0);
  v41 = v51;
  sub_1BD0DE19C(v35, v51, &qword_1EBD425B8);
  v42 = v52;
  sub_1BD0DE19C(v40, v52, &qword_1EBD452C0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425C0);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1BD0DE19C(v41, v42 + *(v43 + 64), &qword_1EBD425B8);
  sub_1BD0DE53C(v35, &qword_1EBD425B8);
  sub_1BD0DE53C(v19, &qword_1EBD452C0);
  sub_1BD0DE53C(v41, &qword_1EBD425B8);
  return sub_1BD0DE53C(v40, &qword_1EBD452C0);
}

uint64_t sub_1BD33F6D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42590);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-v4];
  v6 = v0[1];
  v11[0] = *v0;
  v11[1] = v6;
  v7 = v0[3];
  v11[2] = v0[2];
  v11[3] = v7;
  v10 = v11;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42598);
  sub_1BD0DE4F4(&qword_1EBD425A0, &qword_1EBD42598);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD425A8, &qword_1EBD42590);
  sub_1BE050DE4();

  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_1BD33F8C4()
{
  result = qword_1EBD425C8;
  if (!qword_1EBD425C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD425D0);
    sub_1BD0DE4F4(&qword_1EBD425A8, &qword_1EBD42590);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD425C8);
  }

  return result;
}

uint64_t static ExpressPaymentOptionsViewHosting.createExpressPaymentOptionsViewHostingController(pass:eligibleExpressUpgradeRequests:currentExpressPassInfo:updateExpressStateHandler:)(void *a1, unint64_t a2)
{
  sub_1BD3421EC(a1, a2);
  sub_1BE051694();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425D8));
  v4 = a1;
  sub_1BE048964();
  return sub_1BE04F894();
}

id ExpressPaymentOptionsViewHosting.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressPaymentOptionsViewHosting();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1BD33FCE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1BE04D8C4();
}

void (*sub_1BD33FD74(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1D227C;
}

uint64_t sub_1BD33FE18()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD33FE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t sub_1BD340014()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD340088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1BD3401C0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1D2824;
}

id sub_1BD340344(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
  v15 = 0;
  sub_1BE04D874();
  v9 = *(v4 + 32);
  v9(&v1[v8], v7, v3);
  v10 = OBJC_IVAR___PKPaymentApplicationExpressState__isPending;
  v15 = 0;
  sub_1BE04D874();
  v9(&v1[v10], v7, v3);
  *&v1[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] = a1;
  v11 = type metadata accessor for PaymentApplicationExpressState();
  v14.receiver = v1;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

id PaymentApplicationExpressState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1BD340588(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD340684@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PaymentApplicationExpressState();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD3406DC()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    MEMORY[0x1EEE9AC00](v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42628);
    sub_1BD342F00();
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD340800(uint64_t a1)
{
  v2 = *a1;
  v10 = *(a1 + 8);
  v8 = v10;
  v9 = *(a1 + 32);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  v3[1] = *a1;
  v3[2] = v4;
  v3[3] = *(a1 + 32);
  sub_1BE048C84();
  sub_1BD0DE19C(&v10, v7, &qword_1EBD42640);
  v5 = v2;
  sub_1BE048964();
  sub_1BD0DE19C(&v9, v7, &qword_1EBD54350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42640);
  sub_1BD0DE4F4(&qword_1EBD42648, &qword_1EBD42640);
  sub_1BD342F84();
  sub_1BD342FF4(&qword_1EBD42650, type metadata accessor for PaymentApplicationExpressState);
  return sub_1BE0519D4();
}

uint64_t sub_1BD34098C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v19 = *(a2 + 32);
  v20 = v19;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v7 = v17[0];
  v8 = v17[1];
  v9 = v18;
  v10 = *a2;
  *&v19 = *(a2 + 8);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v6;
  v13 = v6;
  v14 = v10;
  sub_1BD0DE19C(&v19, v17, &qword_1EBD42640);
  sub_1BE048964();
  sub_1BD0DE19C(&v20, v17, &qword_1EBD54350);
  type metadata accessor for PaymentApplicationExpressState();
  sub_1BD342FF4(&qword_1EBD42658, type metadata accessor for PaymentApplicationExpressState);
  result = sub_1BE04E954();
  *a3 = result;
  *(a3 + 8) = v16;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = sub_1BD342FE8;
  *(a3 + 48) = v11;
  return result;
}

uint64_t sub_1BD340B0C(int a1, uint64_t a2, void *a3)
{
  v29 = a1;
  v30 = sub_1BE051F54();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE051FA4();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1BE051F64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = *(a2 + 32);
  aBlock = *(a2 + 32);
  LOBYTE(v34[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;
  v17 = a3;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = v29;
  v18 = v17;
  sub_1BE04D8C4();
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  (*(v13 + 104))(v16, *MEMORY[0x1E69E7F88], v12);
  v19 = sub_1BE052D84();
  (*(v13 + 8))(v16, v12);
  v20 = *a2;
  v40 = *(a2 + 8);
  v21 = swift_allocObject();
  v22 = *(a2 + 16);
  *(v21 + 16) = *a2;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a2 + 32);
  *(v21 + 64) = v18;
  v38 = sub_1BD343094;
  v39 = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v36 = sub_1BD126964;
  v37 = &block_descriptor_65;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v20;
  sub_1BD0DE19C(&v40, v34, &qword_1EBD42640);
  sub_1BE048964();
  sub_1BD0DE19C(&v41, v34, &qword_1EBD54350);
  sub_1BE051F74();
  v34[0] = MEMORY[0x1E69E7CC0];
  sub_1BD342FF4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  v26 = v30;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v23);
  _Block_release(v23);

  (*(v33 + 8))(v7, v26);
  (*(v31 + 8))(v11, v32);
}

uint64_t sub_1BD340FE0(uint64_t a1, void *a2)
{
  v4 = sub_1BE051F54();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v8 = *(v25 - 8);
  v10 = MEMORY[0x1EEE9AC00](v25, v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a1 + 16))(a2, v10);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v24 = sub_1BE052D54();
  v14 = *a1;
  v30 = *(a1 + 8);
  v29 = *(a1 + 32);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v13;
  *(v15 + 72) = a2;
  aBlock[4] = sub_1BD3430A0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_33_1;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  sub_1BD0DE19C(&v30, v27, &qword_1EBD42640);
  sub_1BE048964();
  sub_1BD0DE19C(&v29, v27, &qword_1EBD54350);
  v19 = v13;
  v20 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD342FF4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v21 = v24;
  MEMORY[0x1BFB3FDF0](0, v12, v7, v17);
  _Block_release(v17);

  (*(v26 + 8))(v7, v4);
  return (*(v8 + 8))(v12, v25);
}

uint64_t sub_1BD341360(uint64_t a1, void *a2, void *a3)
{
  sub_1BD3430AC(a2, *(a1 + 8));
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a3;
  sub_1BE04D8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

void sub_1BD341410(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (a1)
  {
    v1 = sub_1BE052724();
  }

  else
  {
    v1 = 0;
  }

  [objc_opt_self() extractApplicationIdentifier:v6 subcredentialIdentifier:0 fromIdentifiers:v1];

  if (v6[0])
  {
    v2 = sub_1BE052434();
    sub_1BD2A5644(&v5, v2, v3);

    v4 = v6[0];
  }

  else
  {
    v4 = 0;
  }
}

uint64_t sub_1BD3414E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1BE052744();
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v6(v7, a3, a4);
}

uint64_t sub_1BD341578()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42608);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12[-v4];
  v6 = v0[1];
  v16[0] = *v0;
  v16[1] = v6;
  v16[2] = v0[2];
  v13 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42610);
  sub_1BD342E68();
  sub_1BE0504E4();
  v7 = [*&v16[0] localizedDescription];
  v8 = sub_1BE052434();
  v10 = v9;

  v14 = v8;
  v15 = v10;
  sub_1BD0DE4F4(&qword_1EBD42638, &qword_1EBD42608);
  sub_1BD0DDEBC();
  sub_1BE050B74();
  (*(v2 + 8))(v5, v1);
}

id sub_1BD341748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42678);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  v43 = sub_1BE04F504();
  v69 = 1;
  v44 = sub_1BE04F7B4();
  v42 = a1;
  result = [*(*(a1 + 8) + OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication) displayName];
  if (result)
  {
    v12 = result;
    v13 = sub_1BE052434();
    v15 = v14;

    v51 = v13;
    v52 = v15;
    sub_1BD0DDEBC();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    sub_1BE050324();
    v38 = sub_1BE0505F4();
    v37 = v21;
    LOBYTE(v13) = v22;
    v39 = v23;

    sub_1BD0DDF10(v16, v18, v20 & 1);

    v67 = 1;
    LOBYTE(v18) = v13 & 1;
    v65 = v13 & 1;
    v40 = v13 & 1;
    v24 = v69;
    v41 = v69;
    *v10 = sub_1BE04F504();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42680);
    sub_1BD341B1C(v42, &v10[*(v25 + 44)]);
    v26 = v45;
    sub_1BD0DE19C(v10, v45, &qword_1EBD42678);
    v27 = v43;
    v46[0] = v43;
    v46[1] = 0;
    LOBYTE(v47) = v24;
    *(&v47 + 1) = *v68;
    DWORD1(v47) = *&v68[3];
    v28 = v44;
    *(&v47 + 1) = v44;
    *&v48 = 0;
    BYTE8(v48) = 1;
    HIDWORD(v48) = *&v66[3];
    *(&v48 + 9) = *v66;
    v29 = v38;
    v30 = v37;
    *&v49 = v38;
    *(&v49 + 1) = v37;
    LOBYTE(v50) = v18;
    *(&v50 + 1) = *v64;
    DWORD1(v50) = *&v64[3];
    v31 = v39;
    *(&v50 + 1) = v39;
    v32 = v43;
    v33 = v47;
    v34 = v50;
    v35 = v48;
    *(a2 + 48) = v49;
    *(a2 + 64) = v34;
    *(a2 + 16) = v33;
    *(a2 + 32) = v35;
    *a2 = v32;
    *(a2 + 80) = 0;
    *(a2 + 88) = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42688);
    sub_1BD0DE19C(v26, a2 + *(v36 + 64), &qword_1EBD42678);
    sub_1BD0DE19C(v46, &v51, &qword_1EBD42690);
    sub_1BD0DE53C(v10, &qword_1EBD42678);
    sub_1BD0DE53C(v26, &qword_1EBD42678);
    v51 = v27;
    v52 = 0;
    v53 = v41;
    *v54 = *v68;
    *&v54[3] = *&v68[3];
    v55 = v28;
    v56 = 0;
    v57 = 1;
    *v58 = *v66;
    *&v58[3] = *&v66[3];
    v59 = v29;
    v60 = v30;
    v61 = v40;
    *&v62[3] = *&v64[3];
    *v62 = *v64;
    v63 = v31;
    return sub_1BD343484(&v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD341B1C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v38 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42698);
  MEMORY[0x1EEE9AC00](v47, v7);
  v9 = v38 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426A0);
  MEMORY[0x1EEE9AC00](v46, v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v38 - v16;
  v53 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (LOBYTE(v50[0]) == 1)
  {
    sub_1BE04E4F4();
    (*(v14 + 16))(v12, v17, v13);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD3435A8();
    sub_1BE04F9A4();
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v19 = sub_1BE04F624();
    v40 = v20;
    v41 = v19;
    v38[1] = v21;
    v39 = v22;
    v23 = *(a1 + 2);
    v42 = *(a1 + 3);
    v43 = *(a1 + 32);
    v52 = v23;
    v25 = *(a1 + 5);
    v24 = *(a1 + 6);
    sub_1BE0528A4();
    sub_1BD0DE19C(&v53, v50, &qword_1EBD426A8);
    sub_1BD3434EC(&v52, v50);
    sub_1BE048964();
    sub_1BE048964();
    v26 = sub_1BE052894();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    *(v27 + 16) = v26;
    *(v27 + 24) = v28;
    v29 = a1[1];
    *(v27 + 32) = *a1;
    *(v27 + 48) = v29;
    *(v27 + 64) = a1[2];
    *(v27 + 80) = *(a1 + 6);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v25;
    v30[5] = v24;
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = sub_1BD343554;
    v31[5] = v30;
    sub_1BE048964();
    sub_1BE051934();
    sub_1BE051824();
    sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58);
    v32 = v45;
    sub_1BE0509C4();
    (*(v44 + 8))(v6, v32);
    v50[0] = v23;
    v50[1] = v42;
    v51 = v43;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
    MEMORY[0x1BFB3E970](&v49, v33);
    v34 = v49;
    KeyPath = swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    v37 = &v9[*(v47 + 36)];
    *v37 = KeyPath;
    v37[1] = sub_1BD10DF54;
    v37[2] = v36;
    sub_1BD0DE19C(v9, v12, &qword_1EBD42698);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD3435A8();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v9, &qword_1EBD42698);
  }
}

uint64_t sub_1BD3420F8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

id sub_1BD342178@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42670);
  return sub_1BD341748(v6, a1 + *(v4 + 44));
}

void sub_1BD3421EC(void *a1, unint64_t a2)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v88 = *(v78 - 8);
  v5 = MEMORY[0x1EEE9AC00](v78, v4);
  v77 = &v74 - v6;
  v7 = [a1 paymentApplications];
  if (!v7)
  {
    goto LABEL_93;
  }

  v8 = v7;
  sub_1BD0E5E8C(0, &qword_1EBD43BA0);
  sub_1BD10E640();
  v9 = sub_1BE052A34();

  sub_1BD1DA444(v9);

  v10 = sub_1BE052724();

  v11 = [a1 sortedPaymentApplications:v10 ascending:1];

  if (v11)
  {
    v12 = sub_1BE052744();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (!(a2 >> 62))
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v80 = v12;
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_27:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_26:
  v13 = sub_1BE053704();
  v80 = v12;
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_7:
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v12 = &selRef_metricsForTextStyle_;
  do
  {
    v16 = v14;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1BFB40900](v16, a2);
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v17 = *(a2 + 8 * v16 + 32);
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v18 = v17;
      v19 = [v18 paymentApplicationIdentifiers];
      if (v19)
      {
        break;
      }

      ++v16;
      if (v14 == v13)
      {
        goto LABEL_28;
      }
    }

    v20 = v19;
    v21 = sub_1BE052744();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BD1D8904(0, v15[2] + 1, 1, v15);
    }

    v23 = v15[2];
    v22 = v15[3];
    if (v23 >= v22 >> 1)
    {
      v15 = sub_1BD1D8904((v22 > 1), v23 + 1, 1, v15);
    }

    v15[2] = v23 + 1;
    v15[v23 + 4] = v21;
  }

  while (v14 != v13);
LABEL_28:
  v24 = v15[2];
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = 0;
    v27 = v80;
    while (v26 < v15[2])
    {
      v28 = v27;
      v29 = v15[v26 + 4];
      v30 = *(v29 + 16);
      v31 = *(v25 + 2);
      v27 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_82;
      }

      sub_1BE048C84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v27 > *(v25 + 3) >> 1)
      {
        if (v31 <= v27)
        {
          v33 = v31 + v30;
        }

        else
        {
          v33 = v31;
        }

        v25 = sub_1BD03B038(isUniquelyReferenced_nonNull_native, v33, 1, v25);
      }

      v27 = v28;
      if (*(v29 + 16))
      {
        if ((*(v25 + 3) >> 1) - *(v25 + 2) < v30)
        {
          goto LABEL_86;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v34 = *(v25 + 2);
          v35 = __OFADD__(v34, v30);
          v36 = v34 + v30;
          if (v35)
          {
            goto LABEL_87;
          }

          *(v25 + 2) = v36;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_83;
        }
      }

      if (v24 == ++v26)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  else
  {
    v27 = v80;
LABEL_46:

    v92 = MEMORY[0x1E69E7CC0];
    if (!(v27 >> 62))
    {
      v85 = v27 & 0xFFFFFFFFFFFFFF8;
      v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v25;
      if (!v37)
      {
LABEL_89:

        return;
      }

      goto LABEL_48;
    }
  }

  v85 = v27 & 0xFFFFFFFFFFFFFF8;
  v37 = sub_1BE053704();
  v86 = v25;
  if (!v37)
  {
    goto LABEL_89;
  }

LABEL_48:
  v38 = 0;
  v39 = 0;
  v84 = v27 & 0xC000000000000001;
  v76 = v88 + 32;
  v25 = MEMORY[0x1E69E7CC0];
  v40 = &selRef_activateWithCompletionBlock_;
  v83 = v37;
  while (1)
  {
    if (v84)
    {
      v41 = MEMORY[0x1BFB40900](v38, v27);
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v38 >= *(v85 + 16))
      {
        goto LABEL_85;
      }

      v41 = *(v27 + 8 * v38 + 32);
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_84;
      }
    }

    v87 = v42;
    v88 = v41;
    v43 = [v41 v40[342]];
    if (!v43)
    {
      break;
    }

    v44 = v43;
    v45 = sub_1BE052434();
    v47 = v46;

    v91[0] = v45;
    v91[1] = v47;
    MEMORY[0x1EEE9AC00](v48, v49);
    *(&v74 - 2) = v91;
    LOBYTE(v44) = sub_1BD2FF084(sub_1BD20DFC4, (&v74 - 4), v86);

    if (v44)
    {
      v79 = v39;
      v82 = type metadata accessor for PaymentApplicationExpressState();
      v55 = objc_allocWithZone(v82);
      v56 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
      LOBYTE(v91[0]) = 0;
      v57 = v88;
      v58 = v77;
      sub_1BE04D874();
      v59 = *v76;
      v60 = v78;
      (*v76)(&v55[v56], v58, v78);
      v61 = OBJC_IVAR___PKPaymentApplicationExpressState__isPending;
      LOBYTE(v91[0]) = 0;
      sub_1BE04D874();
      v59(&v55[v61], v58, v60);
      *&v55[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] = v57;
      v89.receiver = v55;
      v89.super_class = v82;
      objc_msgSendSuper2(&v89, sel_init);
      MEMORY[0x1BFB3F7A0]();
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();

      v25 = v92;
      v39 = v79;
      v40 = &selRef_activateWithCompletionBlock_;
      goto LABEL_79;
    }

    v50 = v88;
    v51 = [v88 automaticSelectionCriteria];
    if (!v51)
    {
      goto LABEL_92;
    }

    v52 = v51;
    sub_1BD0E5E8C(0, &qword_1EBD42668);
    v53 = sub_1BE052744();

    if (v53 >> 62)
    {
      v54 = sub_1BE053704();
      if (!v54)
      {
        goto LABEL_57;
      }

      goto LABEL_66;
    }

    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_66:
      if (v54 < 1)
      {
        __break(1u);
        break;
      }

      v62 = 0;
      v63 = v53 & 0xC000000000000001;
      v79 = v39;
      v75 = v53 & 0xC000000000000001;
      do
      {
        if (v63)
        {
          v64 = MEMORY[0x1BFB40900](v62, v53);
        }

        else
        {
          v64 = *(v53 + 8 * v62 + 32);
        }

        v65 = v64;
        if ([v64 technologyType] == 5 && (objc_msgSend(v65, sel_supportsExpress) & 1) != 0)
        {
          v82 = type metadata accessor for PaymentApplicationExpressState();
          v66 = objc_allocWithZone(v82);
          v67 = v50;
          v68 = v66;
          v69 = OBJC_IVAR___PKPaymentApplicationExpressState__isExpressEnabled;
          LOBYTE(v91[0]) = 0;
          v81 = v67;
          v70 = v77;
          sub_1BE04D874();
          v71 = *v76;
          v72 = v78;
          (*v76)(&v68[v69], v70, v78);
          v73 = OBJC_IVAR___PKPaymentApplicationExpressState__isPending;
          LOBYTE(v91[0]) = 0;
          sub_1BE04D874();
          v71(&v68[v73], v70, v72);
          *&v68[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] = v81;
          v90.receiver = v68;
          v90.super_class = v82;
          objc_msgSendSuper2(&v90, sel_init);
          MEMORY[0x1BFB3F7A0]();
          if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          sub_1BE0527C4();

          v25 = v92;
          v39 = v79;
          v27 = v80;
          v40 = &selRef_activateWithCompletionBlock_;
          v50 = v88;
          v63 = v75;
        }

        else
        {
        }

        ++v62;
      }

      while (v54 != v62);

      v37 = v83;
LABEL_79:
      v38 = v87;
      if (v87 == v37)
      {
        goto LABEL_89;
      }
    }

    else
    {
LABEL_57:

      ++v38;
      v37 = v83;
      if (v87 == v83)
      {
        goto LABEL_89;
      }
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

uint64_t type metadata accessor for PaymentApplicationExpressState()
{
  result = qword_1EBD425F8;
  if (!qword_1EBD425F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD342B7C()
{
  sub_1BD1E1120();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD342DA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BD342DE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1BD342E68()
{
  result = qword_1EBD42618;
  if (!qword_1EBD42618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42610);
    sub_1BD342F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42618);
  }

  return result;
}

unint64_t sub_1BD342F00()
{
  result = qword_1EBD42620;
  if (!qword_1EBD42620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42628);
    sub_1BD342F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42620);
  }

  return result;
}

unint64_t sub_1BD342F84()
{
  result = qword_1EBD42630;
  if (!qword_1EBD42630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42630);
  }

  return result;
}

uint64_t sub_1BD342FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_17Tm_0()
{

  return swift_deallocObject();
}

void sub_1BD3430AC(void *a1, unint64_t a2)
{
  v2 = a2;
  v33 = MEMORY[0x1E69E7CD0];
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = &v33;
    v5 = swift_allocObject();
    v28 = sub_1BD3433EC;
    *(v5 + 16) = sub_1BD3433EC;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1BD3433F4;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3414E8;
    aBlock[3] = &block_descriptor_42_0;
    v6 = _Block_copy(aBlock);

    [a1 enumerateCredentialsUsingBlock_];
    _Block_release(v6);
    if (!(v2 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = 0;
    if (!(a2 >> 62))
    {
LABEL_3:
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_26:

      sub_1BD0D4744(v28);
      return;
    }
  }

  v7 = sub_1BE053704();
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_4:
  v8 = 0;
  v9 = v2 & 0xC000000000000001;
  v29 = v2 + 32;
  v30 = v2 & 0xFFFFFFFFFFFFFF8;
  v31 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x1BFB40900](v8, v2);
    }

    else
    {
      if (v8 >= *(v30 + 16))
      {
        goto LABEL_31;
      }

      v10 = *(v29 + 8 * v8);
    }

    v11 = v10;
    if (__OFADD__(v8++, 1))
    {
      break;
    }

    v13 = [*&v10[OBJC_IVAR___PKPaymentApplicationExpressState_paymentApplication] applicationIdentifier];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BE052434();
      v17 = v16;

      v18 = v33;
      if (*(v33 + 16))
      {
        v19 = v9;
        v20 = v2;
        sub_1BE053D04();
        sub_1BE048C84();
        sub_1BE052524();
        v21 = sub_1BE053D64();
        v22 = -1 << *(v18 + 32);
        v23 = v21 & ~v22;
        if ((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = (*(v18 + 48) + 16 * v23);
            v26 = *v25 == v15 && v25[1] == v17;
            if (v26 || (sub_1BE053B84() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v27 = 1;
        }

        else
        {
LABEL_21:
          v27 = 0;
        }

        v2 = v20;
        v9 = v19;
        v7 = v31;
      }

      else
      {
        v27 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = v27;
      sub_1BE04D8C4();
      if (v8 == v7)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (v8 == v7)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

id sub_1BD34341C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1BD343484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3435A8()
{
  result = qword_1EBD426B0;
  if (!qword_1EBD426B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D58);
    sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD426B0);
  }

  return result;
}

uint64_t sub_1BD3436E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentSummarySheet();
  v30 = *(v4 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427B0);
  sub_1BD349C60();
  sub_1BE04E304();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427E8) + 36));
  v9 = v38;
  v8[4] = v37;
  v8[5] = v9;
  v8[6] = v39;
  v10 = v34;
  *v8 = v33;
  v8[1] = v10;
  v11 = v36;
  v8[2] = v35;
  v8[3] = v11;
  v12 = sub_1BE051274();
  v13 = sub_1BE0501D4();
  v14 = sub_1BE051CD4();
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427F0) + 36);
  *v17 = v12;
  *(v17 + 8) = v13;
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  swift_beginAccess();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427F8);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42800);
  sub_1BE04D884();
  swift_endAccess();

  v29 = v7;
  sub_1BD34A0BC(v2, v7, type metadata accessor for PaymentSummarySheet);
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = swift_allocObject();
  sub_1BD34A148(v7, v20 + v19, type metadata accessor for PaymentSummarySheet);
  v21 = (a1 + *(v18 + 56));
  *v21 = sub_1BD349F48;
  v21[1] = v20;
  swift_beginAccess();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v23 = a1;
  sub_1BE04D884();
  swift_endAccess();
  v24 = v29;
  sub_1BD34A0BC(v2, v29, type metadata accessor for PaymentSummarySheet);
  v25 = swift_allocObject();
  result = sub_1BD34A148(v24, v25 + v19, type metadata accessor for PaymentSummarySheet);
  v27 = (v23 + *(v22 + 56));
  *v27 = sub_1BD349FC4;
  v27[1] = v25;
  return result;
}

uint64_t sub_1BD343AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_1BE04F3D4();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentSummarySheet();
  v63 = *(v6 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v57 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427C8);
  MEMORY[0x1EEE9AC00](v72, v13);
  v15 = &v57 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427C0);
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v16);
  v59 = &v57 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42810);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v18);
  v61 = &v57 - v19;
  *v15 = sub_1BE04F7C4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42818);
  sub_1BD344324(a1, &v15[*(v20 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516C4();
  v58 = type metadata accessor for MultiHyperLinkDetailSheet();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0);
  v21 = sub_1BD0DE4F4(&qword_1EBD427D0, &qword_1EBD427C8);
  v22 = sub_1BD34BFE8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  v23 = sub_1BD10CC54();
  sub_1BE050F74();
  sub_1BD0DE53C(v12, &qword_1EBD393E8);
  sub_1BD0DE53C(v15, &qword_1EBD427C8);
  v24 = v6;
  v25 = a1 + *(v6 + 88);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v79) = v26;
  v80 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42808);
  sub_1BE0516C4();
  v79 = v73;
  v80 = v74;
  v81 = v75;
  v28 = v62;
  sub_1BD34A0BC(a1, v62, type metadata accessor for PaymentSummarySheet);
  v29 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v30 = swift_allocObject();
  sub_1BD34A148(v28, v30 + v29, type metadata accessor for PaymentSummarySheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57B80);
  v73 = v72;
  v74 = v58;
  v31 = a1;
  v75 = v57;
  v76 = v21;
  v32 = v61;
  v77 = v22;
  v78 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BD349E40();
  sub_1BD349E94();
  v33 = v64;
  v34 = v59;
  sub_1BE050F74();

  (*(v65 + 8))(v34, v33);
  v35 = v31;
  v36 = v31 + *(v24 + 96);
  v37 = *v36;
  if (*(v36 + 8) == 1)
  {
    v39 = v69;
    v38 = v70;
    v40 = v67;
    if (v37)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v41 = sub_1BE050174();
    sub_1BE04CF84();

    v40 = v67;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v37, 0);
    v39 = v69;
    v38 = v70;
    (*(v69 + 8))(v40, v70);
    if (v73)
    {
      goto LABEL_9;
    }
  }

  v42 = v35 + *(v24 + 100);
  v43 = *v42;
  if (*(v42 + 8) == 1)
  {
    if ((v43 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_1BE048964();
  sub_1BE052C44();
  v44 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();
  sub_1BD0D4604(v43, 0);
  (*(v39 + 8))(v40, v38);
  if (v73 == 1)
  {
LABEL_9:
    sub_1BE051C54();
  }

LABEL_10:
  v45 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v71;
  (*(v66 + 32))(v71, v32, v68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427B0);
  v56 = v54 + *(result + 36);
  *v56 = v45;
  *(v56 + 8) = v47;
  *(v56 + 16) = v49;
  *(v56 + 24) = v51;
  *(v56 + 32) = v53;
  *(v56 + 40) = 0;
  return result;
}

id sub_1BD344324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v273 = a2;
  v3 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v268 = &v247 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for PaymentSummaryTotalRow();
  MEMORY[0x1EEE9AC00](v267, v6);
  v275 = &v247 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42820);
  MEMORY[0x1EEE9AC00](v269, v8);
  v270 = &v247 - v9;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42828);
  MEMORY[0x1EEE9AC00](v274, v10);
  v272 = &v247 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v284 = (&v247 - v14);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42830);
  MEMORY[0x1EEE9AC00](v266, v15);
  v271 = &v247 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v283 = &v247 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42838);
  v264 = *(v20 - 8);
  v265 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v255 = &v247 - v22;
  v23 = type metadata accessor for PaymentOfferRewardsIntentSummaryView();
  v252 = *(v23 - 8);
  v253 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v251 = &v247 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42840);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v254 = &v247 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v256 = &v247 - v31;
  v32 = sub_1BE04BD74();
  v249 = *(v32 - 8);
  v250 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v248 = &v247 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42848);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v278 = &v247 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v282 = &v247 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42850);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  *&v262 = &v247 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  *&v261 = &v247 - v46;
  v47 = type metadata accessor for MerchantInfoRow();
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v247 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42858);
  MEMORY[0x1EEE9AC00](v259, v51);
  v260 = &v247 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v247 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v258 = &v247 - v59;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42860);
  *&v263 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276, v60);
  v62 = &v247 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v66 = &v247 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42868);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v277 = &v247 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v281 = &v247 - v72;
  v279 = type metadata accessor for PaymentSummarySheet();
  v280 = a1;
  sub_1BD0DE19C(a1 + v279[10], v66, &qword_1EBD45480);
  v73 = type metadata accessor for PeerPaymentModel();
  if ((*(*(v73 - 8) + 48))(v66, 1, v73) == 1)
  {
    sub_1BD0DE53C(v66, &qword_1EBD45480);
  }

  else
  {
    v74 = v66[*(v73 + 60)];
    sub_1BD34A1B0(v66, type metadata accessor for PeerPaymentModel);
    if (v74)
    {
      v75 = 1;
      v77 = v280;
      v76 = v281;
      v78 = v276;
      goto LABEL_8;
    }
  }

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42870);
  v80 = &v62[*(v79 + 84)];
  *v80 = swift_getKeyPath();
  v80[8] = 0;
  v257 = v79;
  v81 = &v62[*(v79 + 88)];
  *v81 = swift_getKeyPath();
  v81[8] = 0;
  *v62 = sub_1BE04F7C4();
  *(v62 + 1) = 0;
  v62[16] = 0;
  v83 = v279;
  v82 = v280;
  sub_1BD34A0BC(v280 + v279[6], v50, _s8MerchantVMa);
  sub_1BD0DE19C(v82 + v83[12], &v50[*(v47 + 20)], &unk_1EBD4C940);
  *&v50[*(v47 + 24)] = 0x4030000000000000;
  v84 = sub_1BE0501C4();
  v85 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v84)
  {
    v85 = sub_1BE050214();
  }

  v86 = &v62[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42878) + 44)];
  sub_1BE04E1F4();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  sub_1BD34A148(v50, v56, type metadata accessor for MerchantInfoRow);
  v95 = &v56[v259[9]];
  *v95 = v85;
  *(v95 + 1) = v88;
  *(v95 + 2) = v90;
  *(v95 + 3) = v92;
  *(v95 + 4) = v94;
  v95[40] = 0;
  v96 = v258;
  sub_1BD0DE204(v56, v258, &qword_1EBD42858);
  v97 = v261;
  v98 = v280;
  sub_1BD345ABC(v261);
  v99 = v260;
  sub_1BD0DE19C(v96, v260, &qword_1EBD42858);
  v100 = v262;
  sub_1BD0DE19C(v97, v262, &qword_1EBD42850);
  sub_1BD0DE19C(v99, v86, &qword_1EBD42858);
  v101 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42880) + 48);
  v77 = v98;
  sub_1BD0DE19C(v100, v101, &qword_1EBD42850);
  sub_1BD0DE53C(v97, &qword_1EBD42850);
  sub_1BD0DE53C(v96, &qword_1EBD42858);
  sub_1BD0DE53C(v100, &qword_1EBD42850);
  sub_1BD0DE53C(v99, &qword_1EBD42858);
  v102 = v257;
  v103 = &v62[*(v257 + 76)];
  *v103 = 0x4020000000000000;
  v103[8] = 0;
  v62[*(v102 + 80)] = 1;
  LOBYTE(v98) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v78 = v276;
  v104 = &v62[*(v276 + 36)];
  *v104 = v98;
  *(v104 + 1) = v105;
  *(v104 + 2) = v106;
  *(v104 + 3) = v107;
  *(v104 + 4) = v108;
  v104[40] = 0;
  v76 = v281;
  sub_1BD0DE204(v62, v281, &qword_1EBD42860);
  v75 = 0;
LABEL_8:
  (*(v263 + 56))(v76, v75, 1, v78);
  v109 = v279;
  v110 = v77 + v279[7];
  v259 = _s14PaymentSummaryVMa();
  v111 = v259[7];
  v276 = v110;
  v112 = (v110 + v111);
  v113 = v112[1];
  v114 = v77;
  if (v113)
  {
    v116 = v112[2];
    v115 = v112[3];
    v117 = *(v77 + v109[14]);
    v118 = *v112;
    v262 = *(v114 + v109[15]);
    v263 = v117;
    *&v313 = 0;
    *(&v313 + 1) = 0xE000000000000000;
    v119 = v115;
    sub_1BD2726F8(v118, v113);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE051694();
    v261 = v325;
    v120 = v326;
    v121 = sub_1BE04E274();
    v260 = v122;
    v123 = v116 & 1;
    v124 = v121 & 1;
    v126 = v125 & 1;
    LOBYTE(v313) = 1;
    LOBYTE(v116) = sub_1BE0501F4();
    sub_1BE04E1F4();
    *&v325 = v118;
    *(&v325 + 1) = v113;
    LOBYTE(v326) = v123;
    *(&v326 + 1) = v119;
    LOBYTE(v327[0]) = 0;
    *(&v327[1] + 8) = v262;
    *(v327 + 8) = v263;
    BYTE8(v327[2]) = 0;
    v328 = v261;
    *&v329 = v120;
    v109 = v279;
    v114 = v280;
    BYTE8(v329) = v124;
    *&v330 = v260;
    BYTE8(v330) = v126;
    *&v331 = 0;
    BYTE8(v331) = v313;
    LOBYTE(v332) = v116;
    *(&v332 + 1) = v127;
    *&v333[0] = v128;
    *(&v333[0] + 1) = v129;
    *&v333[1] = v130;
    BYTE8(v333[1]) = 0;
    PKEdgeInsetsMake(&v325, v131);
    v343 = v331;
    v344 = v332;
    v345[0] = v333[0];
    *(v345 + 9) = *(v333 + 9);
    v339 = v327[2];
    v340 = v328;
    v341 = v329;
    v342 = v330;
    v335 = v325;
    v336 = v326;
    v337 = v327[0];
    v338 = v327[1];
  }

  else
  {
    sub_1BD34A098(&v335);
  }

  v133 = v274;
  v132 = v275;
  if (*(v114 + v109[11]) == 2)
  {
    v134 = *(v114 + v109[18]);
    if (v134)
    {
      v135 = v134;
      v136 = &selRef_thumbnailWidth;
      v137 = [v135 type];
      v279 = v135;
      if (v137 == 1)
      {
        objc_opt_self();
        v138 = swift_dynamicCastObjCClass();
        if (v138)
        {
          v139 = v138;
          v140 = v135;
          v141 = [v139 selectedInstallmentOffer];
          if (v141)
          {
            v142 = v141;
            v143 = [v139 installmentAssessment];
            if (v143)
            {
              *&v262 = v143;
              *&v263 = v140;
              v145 = v248;
              v144 = v249;
              v146 = v250;
              (*(v249 + 104))(v248, *MEMORY[0x1E69B8078], v250);
              result = PKPassKitBundle();
              if (!result)
              {
                __break(1u);
                return result;
              }

              v148 = result;
              v149 = sub_1BE04B6F4();
              v151 = v150;

              (*(v144 + 8))(v145, v146);
              *&v325 = v149;
              *(&v325 + 1) = v151;
              sub_1BD0DDEBC();
              v260 = sub_1BE0506C4();
              v257 = v153;
              v258 = v152;
              LOBYTE(v288) = v154 & 1;
              KeyPath = swift_getKeyPath();
              v286 = 0;
              *&v261 = swift_getKeyPath();
              v285 = 0;
              v156 = *(v276 + 8);
              v157 = (v276 + v259[6]);
              v158 = v157[1];
              v259 = *v157;
              LOBYTE(v325) = 1;
              v159 = v156;
              sub_1BE048C84();
              v248 = sub_1BE0511D4();
              v160 = v325;
              v287 = 0;
              v161 = v288;
              LODWORD(v249) = v286;
              LODWORD(v250) = v285;
              v162 = v142;
              v163 = v262;
              LOBYTE(v151) = sub_1BE0501F4();
              sub_1BE04E1F4();
              v165 = v164;
              v167 = v166;
              v169 = v168;
              v171 = v170;

              LOBYTE(v301) = 0;
              *&v313 = v260;
              *(&v313 + 1) = v258;
              LOBYTE(v314) = v161;
              *(&v314 + 1) = v257;
              *&v315 = v162;
              *(&v315 + 1) = v163;
              *&v316 = v159;
              *(&v316 + 1) = v259;
              *&v317 = v158;
              WORD4(v317) = v160;
              v318 = 0uLL;
              *&v319 = v248;
              *(&v319 + 1) = 0x4020000000000000;
              LOWORD(v320) = 256;
              *(&v320 + 1) = KeyPath;
              LOBYTE(v321) = v249;
              *(&v321 + 1) = v261;
              LOBYTE(v322) = v250;
              BYTE8(v322) = v151;
              *&v323[0] = v165;
              *(&v323[0] + 1) = v167;
              *&v323[1] = v169;
              *(&v323[1] + 1) = v171;
              v324 = 0;
              PKEdgeInsetsMake(&v313, v172);
              v333[0] = v323[0];
              v333[1] = v323[1];
              v334 = v324;
              v329 = v319;
              v330 = v320;
              v331 = v321;
              v332 = v322;
              v327[0] = v315;
              v327[1] = v316;
              v327[2] = v317;
              v328 = v318;
              v325 = v313;
              v326 = v314;
              v133 = v274;
              v132 = v275;
              v135 = v279;
              v136 = &selRef_thumbnailWidth;
              goto LABEL_24;
            }
          }

          else
          {
            v142 = v140;
          }
        }
      }

      sub_1BD34A124(&v325);
LABEL_24:
      v173 = [v135 v136[254]];
      v174 = v253;
      if (v173 == 2 && (objc_opt_self(), (v175 = swift_dynamicCastObjCClass()) != 0))
      {
        v176 = [v175 rewardsRedemptionIntent];
        v177 = v251;
        sub_1BD34A0BC(v276, &v251[*(v174 + 20)], _s11TotalAmountVMa);
        *v177 = v176;
        sub_1BD34A148(v177, v256, type metadata accessor for PaymentOfferRewardsIntentSummaryView);
        v178 = 0;
      }

      else
      {
        v178 = 1;
      }

      v179 = v256;
      (*(v252 + 56))(v256, v178, 1, v174);
      v297 = v332;
      v298 = v333[0];
      v299 = v333[1];
      v300 = v334;
      v295 = v330;
      v296 = v331;
      v290 = v327[0];
      v291 = v327[1];
      v293 = v328;
      v294 = v329;
      v292 = v327[2];
      v288 = v325;
      v289 = v326;
      v180 = v254;
      sub_1BD0DE19C(v179, v254, &qword_1EBD42840);
      v181 = v297;
      v311[0] = v298;
      v311[1] = v299;
      v307 = v294;
      v308 = v295;
      v182 = v295;
      v183 = v296;
      v309 = v296;
      v310 = v297;
      v184 = v290;
      v185 = v291;
      v303 = v290;
      v304 = v291;
      v186 = v294;
      v187 = v293;
      v188 = v292;
      v305 = v292;
      v306 = v293;
      v190 = v288;
      v189 = v289;
      v301 = v288;
      v302 = v289;
      v191 = v299;
      v192 = v255;
      *(v255 + 10) = v298;
      *(v192 + 176) = v191;
      *(v192 + 96) = v186;
      *(v192 + 112) = v182;
      *(v192 + 128) = v183;
      *(v192 + 144) = v181;
      *(v192 + 32) = v184;
      *(v192 + 48) = v185;
      *(v192 + 64) = v188;
      *(v192 + 80) = v187;
      v312 = v300;
      *(v192 + 192) = v300;
      *v192 = v190;
      *(v192 + 16) = v189;
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42898);
      sub_1BD0DE19C(v180, v192 + *(v193 + 48), &qword_1EBD42840);
      sub_1BD0DE19C(&v301, &v313, &qword_1EBD428A0);

      sub_1BD0DE53C(v179, &qword_1EBD42840);
      sub_1BD0DE53C(v180, &qword_1EBD42840);
      v323[0] = v298;
      v323[1] = v299;
      v319 = v294;
      v320 = v295;
      v324 = v300;
      v321 = v296;
      v322 = v297;
      v315 = v290;
      v316 = v291;
      v317 = v292;
      v318 = v293;
      v313 = v288;
      v314 = v289;
      sub_1BD0DE53C(&v313, &qword_1EBD428A0);
      v194 = v282;
      sub_1BD0DE204(v192, v282, &qword_1EBD42838);
      (*(v264 + 56))(v194, 0, 1, v265);
      goto LABEL_29;
    }
  }

  (*(v264 + 56))(v282, 1, 1, v265);
LABEL_29:
  v195 = v283;
  sub_1BD346038(v283);
  v196 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v197 = v195 + *(v266 + 36);
  *v197 = v196;
  *(v197 + 8) = v198;
  *(v197 + 16) = v199;
  *(v197 + 24) = v200;
  *(v197 + 32) = v201;
  *(v197 + 40) = 0;
  sub_1BD346670(&v288);
  v202 = v289;
  v203 = v284;
  *v284 = v288;
  v203[1] = v202;
  v204 = v203 + v133[21];
  *v204 = swift_getKeyPath();
  v204[8] = 0;
  v205 = v203 + v133[22];
  *v205 = swift_getKeyPath();
  v205[8] = 0;
  v206 = v268;
  sub_1BD34A0BC(v276, v268, _s11TotalAmountVMa);
  v207 = v267;
  v208 = v132 + *(v267 + 24);
  *v208 = swift_getKeyPath();
  *(v208 + 8) = 0;
  sub_1BD34A0BC(v206, v132, _s11TotalAmountVMa);
  v209 = sub_1BD1CA054();
  v211 = v210;
  sub_1BD34A1B0(v206, _s11TotalAmountVMa);
  v212 = (v132 + *(v207 + 20));
  *v212 = v209;
  v212[1] = v211;
  LOBYTE(v211) = sub_1BE0501C4();
  v213 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v211)
  {
    v213 = sub_1BE050214();
  }

  v214 = v133[18];
  sub_1BE04E1F4();
  v216 = v215;
  v218 = v217;
  v220 = v219;
  v222 = v221;
  v223 = v270;
  sub_1BD34A148(v132, v270, type metadata accessor for PaymentSummaryTotalRow);
  v224 = v223 + *(v269 + 36);
  *v224 = v213;
  *(v224 + 8) = v216;
  *(v224 + 16) = v218;
  *(v224 + 24) = v220;
  *(v224 + 32) = v222;
  *(v224 + 40) = 0;
  v225 = v284;
  sub_1BD0DE204(v223, v284 + v214, &qword_1EBD42820);
  v226 = v225 + v133[19];
  *v226 = 0x4020000000000000;
  v226[8] = 0;
  *(v225 + v133[20]) = 1;
  v227 = v277;
  sub_1BD0DE19C(v281, v277, &qword_1EBD42868);
  v309 = v343;
  v310 = v344;
  v311[0] = v345[0];
  *(v311 + 9) = *(v345 + 9);
  v305 = v339;
  v306 = v340;
  v307 = v341;
  v308 = v342;
  v301 = v335;
  v302 = v336;
  v303 = v337;
  v304 = v338;
  v228 = v278;
  sub_1BD0DE19C(v282, v278, &qword_1EBD42848);
  v229 = v225;
  v230 = v271;
  sub_1BD0DE19C(v283, v271, &qword_1EBD42830);
  v231 = v229;
  v232 = v272;
  sub_1BD0DE19C(v231, v272, &qword_1EBD42828);
  v233 = v227;
  v234 = v273;
  sub_1BD0DE19C(v233, v273, &qword_1EBD42868);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42888);
  v236 = v235[12];
  v237 = v308;
  v321 = v309;
  v322 = v310;
  v238 = v310;
  v323[0] = v311[0];
  *(v323 + 9) = *(v311 + 9);
  v240 = v304;
  v317 = v305;
  v239 = v305;
  v318 = v306;
  v241 = v306;
  v319 = v307;
  v242 = v307;
  v320 = v308;
  v313 = v301;
  v314 = v302;
  v244 = v301;
  v243 = v302;
  v315 = v303;
  v245 = v303;
  v316 = v304;
  v246 = (v234 + v236);
  v246[8] = v309;
  v246[9] = v238;
  v246[10] = v311[0];
  *(v246 + 169) = *(v311 + 9);
  v246[4] = v239;
  v246[5] = v241;
  v246[6] = v242;
  v246[7] = v237;
  *v246 = v244;
  v246[1] = v243;
  v246[2] = v245;
  v246[3] = v240;
  sub_1BD0DE19C(v228, v234 + v235[16], &qword_1EBD42848);
  sub_1BD0DE19C(v230, v234 + v235[20], &qword_1EBD42830);
  sub_1BD0DE19C(v232, v234 + v235[24], &qword_1EBD42828);
  sub_1BD0DE19C(&v313, &v325, &qword_1EBD42890);
  sub_1BD0DE53C(v284, &qword_1EBD42828);
  sub_1BD0DE53C(v283, &qword_1EBD42830);
  sub_1BD0DE53C(v282, &qword_1EBD42848);
  sub_1BD0DE53C(v281, &qword_1EBD42868);
  sub_1BD0DE53C(v232, &qword_1EBD42828);
  sub_1BD0DE53C(v230, &qword_1EBD42830);
  sub_1BD0DE53C(v278, &qword_1EBD42848);
  v331 = v309;
  v332 = v310;
  v333[0] = v311[0];
  *(v333 + 9) = *(v311 + 9);
  v327[2] = v305;
  v328 = v306;
  v329 = v307;
  v330 = v308;
  v325 = v301;
  v326 = v302;
  v327[0] = v303;
  v327[1] = v304;
  sub_1BD0DE53C(&v325, &qword_1EBD42890);
  return sub_1BD0DE53C(v277, &qword_1EBD42868);
}