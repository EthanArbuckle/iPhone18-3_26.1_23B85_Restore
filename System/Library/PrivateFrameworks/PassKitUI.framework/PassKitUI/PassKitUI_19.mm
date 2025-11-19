void sub_1BD238A58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BD238AEC()
{
  result = qword_1EBD3E890;
  if (!qword_1EBD3E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888);
    sub_1BD238B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E890);
  }

  return result;
}

unint64_t sub_1BD238B78()
{
  result = qword_1EBD3E898;
  if (!qword_1EBD3E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E898);
  }

  return result;
}

unint64_t sub_1BD238BD8()
{
  result = qword_1EBD3E8B8;
  if (!qword_1EBD3E8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8B8);
  }

  return result;
}

uint64_t sub_1BD238C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD238CE8()
{
  result = qword_1EBD3E8C0;
  if (!qword_1EBD3E8C0)
  {
    type metadata accessor for RecurringPaymentMerchantDetailsView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8C0);
  }

  return result;
}

unint64_t sub_1BD238D40()
{
  result = qword_1EBD3E8C8;
  if (!qword_1EBD3E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8C8);
  }

  return result;
}

unint64_t sub_1BD238DC4()
{
  result = qword_1EBD3E8D8;
  if (!qword_1EBD3E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8);
    sub_1BD0DE4F4(&qword_1EBD3E8E0, &qword_1EBD3E8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8D8);
  }

  return result;
}

uint64_t sub_1BD238E74(uint64_t a1)
{
  v2 = type metadata accessor for RecurringPaymentMerchantDetailsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD238ED0()
{
  result = qword_1EBD3E918;
  if (!qword_1EBD3E918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E900);
    sub_1BD238F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E918);
  }

  return result;
}

unint64_t sub_1BD238F5C()
{
  result = qword_1EBD3E920;
  if (!qword_1EBD3E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8F8);
    sub_1BD0DE4F4(&qword_1EBD3E928, &qword_1EBD3E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E920);
  }

  return result;
}

void sub_1BD239020()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B8D4();
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v104 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B944();
  v101 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v100 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v91 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v90 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v92 = &v90 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v93 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v94 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v95 = &v90 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v99 = &v90 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v90 - v33;
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = &v90 - v38;
  v113.receiver = v0;
  v113.super_class = ObjectType;
  objc_msgSendSuper2(&v113, sel_loadView, v37);
  v106 = sub_1BE04BC84();
  v40 = [v0 explanationView];
  if (!v40)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v41 = v40;
  v98 = v6;
  v42 = [objc_opt_self() systemBackgroundColor];
  [v41 setTopBackgroundColor_];

  [v0 setShowDoneButton_];
  [v0 setShowCancelButton_];
  [v41 setTitleAccessoriesEnabled_];
  [v0 setPrivacyLinkController_];
  v43 = *(v10 + 104);
  v107 = *MEMORY[0x1E69B80D8];
  v110 = v43;
  v43(v39);
  v44 = PKPassKitBundle();
  if (!v44)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v45 = v44;
  sub_1BE04B6F4();

  v108 = *(v10 + 8);
  v109 = v10 + 8;
  v108(v39, v9);
  v46 = sub_1BE052404();

  [v41 setTitleText_];

  v47 = [v41 dockView];
  if (!v47)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v48 = v47;
  v105 = [v47 footerView];
  if (!v105)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = [v48 primaryButton];
  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v50 = v49;
  v110(v34, v107, v9);
  v51 = PKPassKitBundle();
  if (!v51)
  {
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
    goto LABEL_45;
  }

  v52 = v51;
  sub_1BE04B6F4();

  v108(v34, v9);
  v53 = sub_1BE052404();

  [v50 setTitle:v53 forStates:0];

  [v105 setSetUpLaterButton_];
  v54 = [*&v1[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_precursorRequest] actions];
  sub_1BD0E5E8C(0, &qword_1EBD3D8C0);
  v55 = sub_1BE052744();

  if ((v55 & 0xC000000000000001) == 0)
  {
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = *(v55 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_34;
  }

  v56 = MEMORY[0x1BFB40900](0, v55);
LABEL_10:
  v57 = v56;

  v58 = [v106 organizationName];
  v59 = sub_1BE052434();
  v61 = v60;

  v62 = [v57 type];
  v97 = v57;
  if (v62 == 1)
  {
    [v106 identityType];
    v63 = v99;
    v110(v99, *MEMORY[0x1E69B80E8], v9);
  }

  else
  {
    v63 = v99;
    v110(v99, v107, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1BE0B69E0;
  *(v64 + 56) = MEMORY[0x1E69E6158];
  *(v64 + 64) = sub_1BD110550();
  *(v64 + 32) = v59;
  *(v64 + 40) = v61;
  v65 = v63;
  v66 = sub_1BE04B714();
  v96 = v67;

  v108(v65, v9);
  v68 = v100;
  sub_1BE04BB94();
  v69 = v104;
  sub_1BE04B924();
  (*(v101 + 8))(v68, v98);
  v71 = v102;
  v70 = v103;
  v72 = (*(v102 + 88))(v69, v103);
  if (v72 == *MEMORY[0x1E69B7F78])
  {
    v73 = v48;
    v74 = v95;
    v110(v95, v107, v9);
    v75 = PKPassKitBundle();
    if (v75)
    {
      v76 = v75;
LABEL_18:
      v78 = sub_1BE04B6F4();
      v80 = v79;

      v108(v74, v9);
LABEL_19:
      v111 = v66;
      v112 = v96;
      MEMORY[0x1BFB3F610](2570, 0xE200000000000000);
      MEMORY[0x1BFB3F610](v78, v80);

      v81 = sub_1BE052404();

      [v41 setBodyText_];

      return;
    }

    goto LABEL_40;
  }

  if (v72 == *MEMORY[0x1E69B7F80])
  {
    v73 = v48;
    v74 = v94;
    v110(v94, v107, v9);
    v77 = PKPassKitBundle();
    if (v77)
    {
      v76 = v77;
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if (v72 == *MEMORY[0x1E69B7F70])
  {
    v73 = v48;
    v74 = v93;
    v110(v93, v107, v9);
    v82 = PKPassKitBundle();
    if (v82)
    {
      v76 = v82;
      goto LABEL_18;
    }

    goto LABEL_42;
  }

  if (v72 == *MEMORY[0x1E69B7F68])
  {
    v73 = v48;
    v74 = v92;
    v110(v92, v107, v9);
    v83 = PKPassKitBundle();
    if (v83)
    {
      v76 = v83;
      goto LABEL_18;
    }

    goto LABEL_43;
  }

  v73 = v48;
  if (v72 == *MEMORY[0x1E69B7F88])
  {
    v74 = v90;
    v110(v90, v107, v9);
    v84 = PKPassKitBundle();
    if (v84)
    {
      v76 = v84;
      goto LABEL_18;
    }

    goto LABEL_44;
  }

  v85 = v91;
  v110(v91, v107, v9);
  v86 = PKPassKitBundle();
  if (v86)
  {
    v87 = v86;
    v88 = v85;
    v78 = sub_1BE04B6F4();
    v80 = v89;

    v108(v88, v9);
    (*(v71 + 8))(v104, v70);
    goto LABEL_19;
  }

LABEL_45:
  __break(1u);
}

void sub_1BD239CC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BC84();
  [objc_opt_self() recommendedCardImageSize];
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() sharedInstance];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = v3;
    v13[3] = a1;
    v13[4] = a2;
    v17[4] = sub_1BD23A390;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1BD20815C;
    v17[3] = &block_descriptor_33;
    v14 = _Block_copy(v17);
    v15 = v6;
    v16 = v3;
    sub_1BE048964();

    [v12 snapshotWithPass:v15 size:v14 completion:{v8, v10}];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD239E44(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1BD23A39C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_7;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v23 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v22);
}

void sub_1BD23A0F8(uint64_t a1, void *a2, void (*a3)(void))
{
  v5 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5;
  [v5 setHideBackground_];
  [v8 setSize_];
  [v8 setPadding_];
  v6 = [a2 explanationView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setHeroView_];

  a3();
}

uint64_t sub_1BD23A3A8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BBCD80, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AccountTermsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccountTermsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1BD23A664(a1);
  v7 = sub_1BE04EC54();
  v8 = sub_1BE0501F4();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E960) + 36);
  *v9 = v7;
  *(v9 + 8) = v8;
  sub_1BD23B058(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1BD23B0BC(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E970) + 36));
  sub_1BE04E7B4();
  sub_1BE0528B4();
  *v12 = &unk_1BE0C4118;
  v12[1] = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E978) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516C4();
  result = type metadata accessor for ErrorAlertModifier(0);
  v15 = (v13 + *(result + 20));
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t type metadata accessor for AccountTermsView()
{
  result = qword_1EBD3E980;
  if (!qword_1EBD3E980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD23A664@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v39 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA20);
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA28);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  v49 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA18);
  sub_1BE0516A4();
  v15 = v46;
  if (v46)
  {
    v16 = *(v1 + 16);
    v17 = *(v1 + 24);
    *&v49 = *(v1 + 8);
    *(&v49 + 1) = v16;
    LOBYTE(v50) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
    sub_1BE051914();
    v18 = v46;
    v19 = v47;
    v20 = v48;
    *v14 = v15;
    *(v14 + 1) = v18;
    *(v14 + 2) = v19;
    v14[24] = v20;
    swift_storeEnumTagMultiPayload();
    sub_1BD23C03C();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8);
    v22 = sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
    v24 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
    *&v49 = v23;
    *(&v49 + 1) = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v49 = v3;
    *(&v49 + 1) = v21;
    v50 = v22;
    v51 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    return sub_1BE04F9A4();
  }

  else
  {
    v27 = sub_1BE04E4F4();
    v42 = &v39;
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v39 - 2) = v1;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9E8);
    v29 = sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    v41 = v7;
    v30 = v3;
    v31 = v29;
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
    v43 = a1;
    v33 = v32;
    v34 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
    *&v49 = v33;
    *(&v49 + 1) = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = v40;
    sub_1BE051024();
    (*(v44 + 8))(v6, v30);
    v37 = v41;
    v38 = v45;
    (*(v41 + 16))(v14, v10, v45);
    swift_storeEnumTagMultiPayload();
    sub_1BD23C03C();
    *&v49 = v30;
    *(&v49 + 1) = v36;
    v50 = v31;
    v51 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v37 + 8))(v10, v38);
  }
}

uint64_t sub_1BD23AB8C(uint64_t a1)
{
  v1[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1BE0528A4();
  v1[25] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[26] = v3;
  v1[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD23AC68, v3, v2);
}

uint64_t sub_1BD23AC68()
{
  v1 = **(v0 + 176);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1BD23AD88;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA10);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BD16F63C;
  *(v0 + 104) = &block_descriptor_34;
  *(v0 + 112) = v2;
  [v1 termsViewControllerWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BD23AD88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_1BD23AF64;
  }

  else
  {
    v5 = sub_1BD23AEB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD23AEB8()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 160);
  *(v0 + 144) = *(v1 + 32);
  *(v0 + 168) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA18);
  sub_1BE0516B4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD23AF64()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[23];

  swift_willThrow();
  v4 = v1;
  FeatureError.init(feature:error:)(2, v1, v2);
  type metadata accessor for AccountTermsView();
  sub_1BD23C2BC(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516B4();

  sub_1BD23C32C(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD23B058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountTermsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23B0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountTermsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23B120()
{
  v2 = *(type metadata accessor for AccountTermsView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD23AB8C(v0 + v3);
}

uint64_t sub_1BD23B208(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB04();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD23B3F4(uint64_t a1)
{
  v2 = type metadata accessor for AccountTermsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E1A4();
  sub_1BD23B058(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1BD23B0BC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return MEMORY[0x1BFB3E7A0](v9, sub_1BD23C560, v11);
}

uint64_t sub_1BD23B548()
{
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v1);
  sub_1BE0518F4();
}

id sub_1BD23B5F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  sub_1BE048964();
  sub_1BE048964();
  v10 = a2;
  v11 = sub_1BE0530B4();
  sub_1BD0E5E8C(0, &qword_1EBD41C40);
  v12 = v11;
  v13 = sub_1BE052C74();
  v14 = [v10 navigationItem];
  [v14 setRightBarButtonItem_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  return v15;
}

uint64_t sub_1BD23B774()
{
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v1);
  sub_1BE0518F4();
}

uint64_t sub_1BD23B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD23C18C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD23B89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD23C18C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD23B900()
{
  sub_1BD23C18C();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD23B928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  sub_1BD23A664(a3);
  v7 = sub_1BE04EC54();
  v8 = sub_1BE0501F4();
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E960) + 36);
  *v9 = v7;
  *(v9 + 8) = v8;
  sub_1BD23B058(v3, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1BD23B0BC(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E970) + 36));
  sub_1BE04E7B4();
  sub_1BE0528B4();
  *v12 = &unk_1BE0C42E8;
  v12[1] = v11;
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E978) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516C4();
  result = type metadata accessor for ErrorAlertModifier(0);
  v15 = (v13 + *(result + 20));
  *v15 = 0;
  v15[1] = 0;
  return result;
}

void sub_1BD23BB08()
{
  sub_1BD0E5E8C(319, &qword_1EBD3E990);
  if (v0 <= 0x3F)
  {
    sub_1BD23BBFC();
    if (v1 <= 0x3F)
    {
      sub_1BD23BC4C(319, &qword_1EBD3E9A0, &qword_1EBD3E9A8);
      if (v2 <= 0x3F)
      {
        sub_1BD23BC4C(319, &qword_1EBD3E9B0, &qword_1EBD416C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD23BBFC()
{
  if (!qword_1EBD3E998)
  {
    v0 = sub_1BE051964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3E998);
    }
  }
}

void sub_1BD23BC4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1BE0516D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD23BCA0()
{
  result = qword_1EBD3E9B8;
  if (!qword_1EBD3E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E978);
    sub_1BD23BD5C();
    sub_1BD23C090(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9B8);
  }

  return result;
}

unint64_t sub_1BD23BD5C()
{
  result = qword_1EBD3E9C0;
  if (!qword_1EBD3E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E970);
    sub_1BD23BE18();
    sub_1BD23C090(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9C0);
  }

  return result;
}

unint64_t sub_1BD23BE18()
{
  result = qword_1EBD3E9C8;
  if (!qword_1EBD3E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E960);
    sub_1BD23BEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9C8);
  }

  return result;
}

unint64_t sub_1BD23BEA4()
{
  result = qword_1EBD3E9D0;
  if (!qword_1EBD3E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9D8);
    sub_1BD23C03C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
    sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9D0);
  }

  return result;
}

unint64_t sub_1BD23C03C()
{
  result = qword_1EBD3E9E0;
  if (!qword_1EBD3E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9E0);
  }

  return result;
}

uint64_t sub_1BD23C090(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BD23C0EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1BD23C134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD23C18C()
{
  result = qword_1EBD3EA08;
  if (!qword_1EBD3EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EA08);
  }

  return result;
}

uint64_t sub_1BD23C1F0()
{
  v2 = *(type metadata accessor for AccountTermsView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD23AB8C(v0 + v3);
}

uint64_t sub_1BD23C2BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23C32C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for AccountTermsView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = (v2 + v1[9]);
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

uint64_t sub_1BD23C560()
{
  type metadata accessor for AccountTermsView();

  return sub_1BD23B548();
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI24PaymentOfferSelectionRowV14IconLayoutTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI24PaymentOfferSelectionRowV14IconLayoutTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BD23C614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BD23C65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD23C6DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[1] = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA30);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA38);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA40);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v28 - v19;
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0x4020000000000000;
  v11[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA48);
  sub_1BD23CA50(v2, &v11[*(v21 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v11, v15, &qword_1EBD3EA30);
  v22 = &v15[*(v12 + 36)];
  v23 = v34;
  *(v22 + 4) = v33;
  *(v22 + 5) = v23;
  *(v22 + 6) = v35;
  v24 = v30;
  *v22 = v29;
  *(v22 + 1) = v24;
  v25 = v32;
  *(v22 + 2) = v31;
  *(v22 + 3) = v25;
  sub_1BE04FF54();
  v26 = sub_1BD23F338();
  sub_1BE050D14();
  (*(v4 + 8))(v7, v3);
  sub_1BD0DE53C(v15, &qword_1EBD3EA38);
  sub_1BE052434();
  v28[2] = v12;
  v28[3] = v26;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1BD23CA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA60);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA68);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA70);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v37 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA78);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v37 - v29;
  *v30 = sub_1BE04F504();
  *(v30 + 1) = 0x4038000000000000;
  v30[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA80);
  sub_1BD23CE48(&v30[*(v31 + 44)]);
  v32 = 1;
  if ((*(a1 + 48) & 0xFB) != 0)
  {
    sub_1BD23E4B0(v14);
    v38 = v3;
    sub_1BD0DE19C(v14, v10, &qword_1EBD3EA68);
    *v6 = 0;
    v6[8] = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA90);
    sub_1BD0DE19C(v10, &v6[*(v33 + 48)], &qword_1EBD3EA68);
    sub_1BD0DE53C(v14, &qword_1EBD3EA68);
    v3 = v38;
    sub_1BD0DE53C(v10, &qword_1EBD3EA68);
    sub_1BD0DE204(v6, v22, &qword_1EBD3EA60);
    v32 = 0;
  }

  (*(v39 + 56))(v22, v32, 1, v3);
  sub_1BD0DE19C(v30, v26, &qword_1EBD3EA78);
  sub_1BD0DE19C(v22, v18, &qword_1EBD3EA70);
  v34 = v40;
  sub_1BD0DE19C(v26, v40, &qword_1EBD3EA78);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA88);
  sub_1BD0DE19C(v18, v34 + *(v35 + 48), &qword_1EBD3EA70);
  sub_1BD0DE53C(v22, &qword_1EBD3EA70);
  sub_1BD0DE53C(v30, &qword_1EBD3EA78);
  sub_1BD0DE53C(v18, &qword_1EBD3EA70);
  return sub_1BD0DE53C(v26, &qword_1EBD3EA78);
}

uint64_t sub_1BD23CE48@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAE8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAF0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  sub_1BD23D098(&v28 - v17);
  v19 = sub_1BE050234();
  sub_1BE04E1F4();
  v20 = &v18[*(v11 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAF8);
  sub_1BD23DAB0(&v9[*(v25 + 44)]);
  sub_1BD0DE19C(v18, v14, &qword_1EBD3EAF0);
  sub_1BD0DE19C(v9, v5, &qword_1EBD3EAE8);
  sub_1BD0DE19C(v14, a1, &qword_1EBD3EAF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB00);
  sub_1BD0DE19C(v5, a1 + *(v26 + 48), &qword_1EBD3EAE8);
  sub_1BD0DE53C(v9, &qword_1EBD3EAE8);
  sub_1BD0DE53C(v18, &qword_1EBD3EAF0);
  sub_1BD0DE53C(v5, &qword_1EBD3EAE8);
  return sub_1BD0DE53C(v14, &qword_1EBD3EAF0);
}

uint64_t sub_1BD23D098@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v63 = sub_1BE04C784();
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB60);
  MEMORY[0x1EEE9AC00](v60, v4);
  v61 = &v56 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB68);
  MEMORY[0x1EEE9AC00](v67, v6);
  v62 = &v56 - v7;
  v8 = sub_1BE051584();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB70);
  MEMORY[0x1EEE9AC00](v59, v13);
  v15 = &v56 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB78);
  MEMORY[0x1EEE9AC00](v64, v16);
  v66 = &v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB80);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB88);
  MEMORY[0x1EEE9AC00](v65, v22);
  v24 = &v56 - v23;
  v25 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = (&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 72) <= 1u)
  {
    if (!*(v1 + 72))
    {
      v32 = *(v1 + 56);
      v33 = *(v1 + 64);
      sub_1BD23F9E8(v32, v33, 0);

      v34 = [v32 icon];
      v35 = *(v1 + 80);
      v36 = *(v25 + 28);
      *(v29 + v36) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
      swift_storeEnumTagMultiPayload();
      *v29 = v34;
      v29[1] = v32;
      v29[2] = v35;
      v29[3] = v35;
      sub_1BD23FAEC(v29, v21);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F9A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v24, v66, &qword_1EBD3EB88);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F6E4();
      sub_1BD23F7A0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v24, &qword_1EBD3EB88);
      return sub_1BD23FB50(v29);
    }

    v42 = *(v1 + 64);
    v43 = *(v1 + 56);
    (*(v9 + 104))(v12, *MEMORY[0x1E6981630], v8, v27);
    sub_1BD23F9E8(v43, v42, 1);
    v44 = sub_1BE0515E4();
    (*(v9 + 8))(v12, v8);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v70 = 1;
    *&v69[6] = v71;
    *&v69[22] = v72;
    *&v69[38] = v73;
    v45 = &v15[*(v59 + 36)];
    v46 = *(sub_1BE04EDE4() + 20);
    v47 = *MEMORY[0x1E697F468];
    v48 = sub_1BE04F684();
    (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
    __asm { FMOV            V0.2D, #5.0 }

    *v45 = _Q0;
    *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v54 = *&v69[16];
    *(v15 + 18) = *v69;
    *v15 = v44;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    *(v15 + 34) = v54;
    *(v15 + 50) = *&v69[32];
    *(v15 + 8) = *&v69[46];
    sub_1BD0DE19C(v15, v61, &qword_1EBD3EB70);
    swift_storeEnumTagMultiPayload();
    sub_1BD23F85C();
    sub_1BD23F9A0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
    v55 = v62;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v55, v66, &qword_1EBD3EB68);
    swift_storeEnumTagMultiPayload();
    sub_1BD23F6E4();
    sub_1BD23F7A0();
    sub_1BE04F9A4();
    sub_1BD23FA60(v43, v42, 1);
    sub_1BD0DE53C(v55, &qword_1EBD3EB68);
    v30 = v15;
    v31 = &qword_1EBD3EB70;
  }

  else
  {
    if (*(v1 + 72) == 2)
    {
      sub_1BD23F9E8(*(v1 + 56), *(v1 + 64), 2);
      sub_1BE0512B4();
      v38 = v57;
      sub_1BE04C774();
      v39 = v58;
      v40 = v63;
      (*(v58 + 16))(v61, v38, v63);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F85C();
      sub_1BD23F9A0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
      v41 = v62;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v41, v66, &qword_1EBD3EB68);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F6E4();
      sub_1BD23F7A0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v41, &qword_1EBD3EB68);
      return (*(v39 + 8))(v38, v40);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BD23F9A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    sub_1BE04F9A4();
    sub_1BD0DE19C(v24, v66, &qword_1EBD3EB88);
    swift_storeEnumTagMultiPayload();
    sub_1BD23F6E4();
    sub_1BD23F7A0();
    sub_1BE04F9A4();
    v30 = v24;
    v31 = &qword_1EBD3EB88;
  }

  return sub_1BD0DE53C(v30, v31);
}

uint64_t sub_1BD23DAB0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB08);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB10);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - v25;
  sub_1BD23DE00();
  v27 = sub_1BE04F794();
  v28 = &v26[*(v19 + 44)];
  *v28 = v27;
  v28[1] = sub_1BD21636C;
  v28[2] = 0;
  v40 = v17;
  sub_1BD23DF98(v17);
  sub_1BD23E22C(v9);
  v29 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v30 = &v9[*(v2 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v41 = v22;
  sub_1BD0DE19C(v26, v22, &qword_1EBD3EB10);
  sub_1BD0DE19C(v17, v13, &unk_1EBD5BB60);
  sub_1BD0DE19C(v9, v5, &qword_1EBD3EB08);
  v35 = v22;
  v36 = v42;
  sub_1BD0DE19C(v35, v42, &qword_1EBD3EB10);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB18);
  sub_1BD0DE19C(v13, v36 + *(v37 + 48), &unk_1EBD5BB60);
  sub_1BD0DE19C(v5, v36 + *(v37 + 64), &qword_1EBD3EB08);
  sub_1BD0DE53C(v9, &qword_1EBD3EB08);
  sub_1BD0DE53C(v40, &unk_1EBD5BB60);
  sub_1BD0DE53C(v26, &qword_1EBD3EB10);
  sub_1BD0DE53C(v5, &qword_1EBD3EB08);
  sub_1BD0DE53C(v13, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v41, &qword_1EBD3EB10);
}

uint64_t sub_1BD23DE00()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  sub_1BE050324();
  v6 = sub_1BE0505F4();
  v8 = v7;
  v10 = v9;

  sub_1BD0DDF10(v1, v3, v5 & 1);

  if (!*(v0 + 16))
  {
    sub_1BE051224();
  }

  sub_1BE048964();
  v11 = sub_1BE050564();
  v13 = v12;
  v15 = v14;
  sub_1BD0DDF10(v6, v8, v10 & 1);

  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v11, v13, v15 & 1);
}

uint64_t sub_1BD23DF98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v3, v4);
  v9 = &v31 - v8;
  v10 = *(v1 + 32);
  if (v10)
  {
    v35 = *(v1 + 24);
    v36 = v10;
    v33 = v6;
    v34 = v5;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v14;
    sub_1BE0502A4();
    v16 = sub_1BE0505F4();
    v18 = v17;
    v32 = a1;
    v20 = v19;

    sub_1BD0DDF10(v11, v13, v15 & 1);

    sub_1BE051234();
    v21 = sub_1BE050564();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_1BD0DDF10(v16, v18, v20 & 1);

    v35 = v21;
    v36 = v23;
    v37 = v25 & 1;
    v38 = v27;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v21, v23, v25 & 1);

    v28 = v32;
    sub_1BD0DE204(v9, v32, &qword_1EBD452C0);
    return (*(v33 + 56))(v28, 0, 1, v34);
  }

  else
  {
    v30 = *(v6 + 56);

    return v30(a1, 1, 1, v7);
  }
}

uint64_t sub_1BD23E22C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB20);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3, v4);
  v8 = v13 - v7;
  v9 = *(v1 + 40);
  if (v9)
  {
    if (v9 >> 62)
    {
      v13[0] = v5;
      v11 = sub_1BE053704();
      v5 = v13[0];
      if (v11 >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v13[0] = v5;
      v13[1] = v9;
      swift_getKeyPath();
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB30);
      sub_1BD0DE4F4(&qword_1EBD3EB38, &qword_1EBD3EB28);
      sub_1BD23F9A0(&qword_1EBD3EB40, sub_1BD23F5C0);
      sub_1BD23F60C();
      sub_1BE0519C4();
      (*(v13[0] + 32))(a1, v8, v3);
      return (*(v13[0] + 56))(a1, 0, 1, v3);
    }
  }

  v12 = *(v5 + 56);

  return v12(a1, 1, 1, v3, v6);
}

id sub_1BD23E4B0@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v81 = sub_1BE04BD74();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v1);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v85, v4);
  v77 = &v77 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA98);
  MEMORY[0x1EEE9AC00](v83, v6);
  v84 = &v77 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAA0);
  MEMORY[0x1EEE9AC00](v89, v8);
  v86 = &v77 - v9;
  v10 = sub_1BE04F6E4();
  v78 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  MEMORY[0x1EEE9AC00](v82, v14);
  v79 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v77 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAA8);
  MEMORY[0x1EEE9AC00](v92, v21);
  v93 = &v77 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAB0);
  MEMORY[0x1EEE9AC00](v87, v23);
  v25 = &v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAB8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v77 - v28;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAC0);
  MEMORY[0x1EEE9AC00](v88, v30);
  v32 = &v77 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAC8);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v77 - v36;
  v38 = v90[48];
  v91 = v39;
  if (v38 <= 1)
  {
    v68 = v37;
    if (v38)
    {
      sub_1BE04E4F4();
      (*(v17 + 16))(v29, v20, v16);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v32, v25, &qword_1EBD3EAC0);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F47C();
      sub_1BD23F534();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v32, &qword_1EBD3EAC0);
      sub_1BD0DE19C(v68, v93, &qword_1EBD3EAC8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v68, &qword_1EBD3EAC8);
      return (*(v17 + 8))(v20, v16);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v32, v25, &qword_1EBD3EAC0);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F47C();
      sub_1BD23F534();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v32, &qword_1EBD3EAC0);
      sub_1BD0DE19C(v68, v93, &qword_1EBD3EAC8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v68, &qword_1EBD3EAC8);
    }
  }

  else
  {
    if (v38 == 2)
    {
      v90 = v37;
      v69 = sub_1BE051574();
      v81 = v69;
      v70 = sub_1BE0502D4();
      KeyPath = swift_getKeyPath();
      v72 = sub_1BE0511E4();
      v73 = swift_getKeyPath();
      v95 = v69;
      v96 = KeyPath;
      v97 = v70;
      v98 = v73;
      v99 = v72;
      sub_1BE04F6B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
      sub_1BD0F1430();
      v74 = v25;
      v63 = v79;
      sub_1BE050DA4();
      (*(v78 + 8))(v13, v10);

      v64 = &qword_1EBD38BA8;
      sub_1BD0DE19C(v63, v84, &qword_1EBD38BA8);
      swift_storeEnumTagMultiPayload();
      sub_1BD0F13A4();
      sub_1BD1103C8();
      v75 = v86;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v75, v74, &qword_1EBD3EAA0);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F47C();
      sub_1BD23F534();
      v76 = v90;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v75, &qword_1EBD3EAA0);
      sub_1BD0DE19C(v76, v93, &qword_1EBD3EAC8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      sub_1BE04F9A4();
      v67 = v76;
      goto LABEL_9;
    }

    if (v38 == 3)
    {
      v40 = v25;
      v90 = v37;
      v41 = v80;
      v42 = v81;
      (*(v80 + 104))(v3, *MEMORY[0x1E69B8068], v81, v35);
      result = PKPassKitBundle();
      if (result)
      {
        v44 = result;
        v45 = sub_1BE04B6F4();
        v47 = v46;

        (*(v41 + 8))(v3, v42);
        v95 = v45;
        v96 = v47;
        sub_1BD0DDEBC();
        v48 = sub_1BE0506C4();
        v50 = v49;
        LOBYTE(v47) = v51;
        sub_1BE050324();
        v52 = sub_1BE0505F4();
        v54 = v53;
        v56 = v55;

        sub_1BD0DDF10(v48, v50, v47 & 1);

        sub_1BE0513C4();
        v57 = sub_1BE050564();
        v59 = v58;
        LOBYTE(v50) = v60;
        v62 = v61;

        sub_1BD0DDF10(v52, v54, v56 & 1);

        v95 = v57;
        v96 = v59;
        LOBYTE(v97) = v50 & 1;
        v98 = v62;
        sub_1BE052434();
        v63 = v77;
        sub_1BE050DE4();

        sub_1BD0DDF10(v57, v59, v50 & 1);

        v64 = &qword_1EBD452C0;
        sub_1BD0DE19C(v63, v84, &qword_1EBD452C0);
        swift_storeEnumTagMultiPayload();
        sub_1BD0F13A4();
        sub_1BD1103C8();
        v65 = v86;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v65, v40, &qword_1EBD3EAA0);
        swift_storeEnumTagMultiPayload();
        sub_1BD23F47C();
        sub_1BD23F534();
        v66 = v90;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v65, &qword_1EBD3EAA0);
        sub_1BD0DE19C(v66, v93, &qword_1EBD3EAC8);
        swift_storeEnumTagMultiPayload();
        sub_1BD23F3F0();
        sub_1BE04F9A4();
        v67 = v66;
LABEL_9:
        sub_1BD0DE53C(v67, &qword_1EBD3EAC8);
        return sub_1BD0DE53C(v63, v64);
      }

      __break(1u);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      return sub_1BE04F9A4();
    }
  }

  return result;
}

void sub_1BD23F1EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 merchandisingDynamicContent];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 title];
  if (!v5)
  {

LABEL_6:
    v7 = 0;
    v9 = 0;
LABEL_7:
    v13 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_1BE052434();
  v9 = v8;

  v10 = [v4 systemIcon];
  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v10 imageName];

  v13 = sub_1BE052434();
  v15 = v14;

LABEL_8:
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v15;
}

unint64_t sub_1BD23F338()
{
  result = qword_1EBD3EA50;
  if (!qword_1EBD3EA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EA38);
    sub_1BD0DE4F4(&qword_1EBD3EA58, &qword_1EBD3EA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EA50);
  }

  return result;
}

unint64_t sub_1BD23F3F0()
{
  result = qword_1EBD3EAD0;
  if (!qword_1EBD3EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EAC8);
    sub_1BD23F47C();
    sub_1BD23F534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EAD0);
  }

  return result;
}

unint64_t sub_1BD23F47C()
{
  result = qword_1EBD3EAD8;
  if (!qword_1EBD3EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EAC0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EAD8);
  }

  return result;
}

unint64_t sub_1BD23F534()
{
  result = qword_1EBD3EAE0;
  if (!qword_1EBD3EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EAA0);
    sub_1BD0F13A4();
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EAE0);
  }

  return result;
}

unint64_t sub_1BD23F5C0()
{
  result = qword_1EBD3EB48;
  if (!qword_1EBD3EB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3EB48);
  }

  return result;
}

unint64_t sub_1BD23F60C()
{
  result = qword_1EBD3EB50;
  if (!qword_1EBD3EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB30);
    sub_1BD23F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB50);
  }

  return result;
}

unint64_t sub_1BD23F690()
{
  result = qword_1EBD3EB58;
  if (!qword_1EBD3EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB58);
  }

  return result;
}

unint64_t sub_1BD23F6E4()
{
  result = qword_1EBD3EB90;
  if (!qword_1EBD3EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB88);
    sub_1BD23F9A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB90);
  }

  return result;
}

unint64_t sub_1BD23F7A0()
{
  result = qword_1EBD3EB98;
  if (!qword_1EBD3EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB68);
    sub_1BD23F85C();
    sub_1BD23F9A0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB98);
  }

  return result;
}

unint64_t sub_1BD23F85C()
{
  result = qword_1EBD3EBA0;
  if (!qword_1EBD3EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB70);
    sub_1BD23F914();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBA0);
  }

  return result;
}

unint64_t sub_1BD23F914()
{
  result = qword_1EBD3EBA8;
  if (!qword_1EBD3EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EBB0);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBA8);
  }

  return result;
}

uint64_t sub_1BD23F9A0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD23F9E8(id result, void *a2, char a3)
{
  switch(a3)
  {
    case 2:

      return sub_1BE048C84();
    case 1:

      return sub_1BE048964();
    case 0:
      v4 = result;

      return a2;
  }

  return result;
}

void sub_1BD23FA60(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BD23FA74(a1, a2, a3);
  }
}

void sub_1BD23FA74(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

uint64_t sub_1BD23FAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23FB50(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD23FBAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD23FBF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1BD23FC38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1BD23FC70()
{
  result = qword_1EBD3EBB8;
  if (!qword_1EBD3EBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EBC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EA38);
    sub_1BD23F338();
    swift_getOpaqueTypeConformance2();
    sub_1BD23F9A0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBB8);
  }

  return result;
}

unint64_t sub_1BD23FD6C()
{
  result = qword_1EBD3EBC8;
  if (!qword_1EBD3EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBC8);
  }

  return result;
}

void sub_1BD23FDC0(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = &Strong[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_amount];
    *v7 = a1;
    *(v7 + 1) = a2;
    *(v7 + 4) = a3;
  }
}

void sub_1BD23FE34(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationItem];

    v5 = [v4 rightBarButtonItem];
    if (v5)
    {
      [v5 setEnabled_];
    }
  }
}

void sub_1BD23FF80()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppleBalanceDirectTopUpViewController();
  v28.receiver = v1;
  v28.super_class = v7;
  objc_msgSendSuper2(&v28, sel_loadView);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC;
  v11 = [*&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC] view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  [v9 addSubview_];

  [*&v1[v10] didMoveToParentViewController_];
  v13 = [v1 navigationItem];
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8060], v2);
  v14 = PKPassKitBundle();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v15 = v14;
  sub_1BE04B6F4();

  (*(v3 + 8))(v6, v2);
  v16 = sub_1BE052404();

  [v13 setTitle_];

  if ((*&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_context] | 2) == 3)
  {
    v17 = [v1 navigationItem];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissAction];
    [v17 setLeftBarButtonItem_];
  }

  sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1BE0530B4();
  sub_1BD0E5E8C(0, &qword_1EBD41C40);
  v20 = v19;
  v21 = sub_1BE052C74();
  v22 = OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem;
  v23 = *&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem];
  *&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem] = v21;

  v24 = [v1 navigationItem];
  v25 = *&v1[v22];
  [v24 setRightBarButtonItem_];

  v26 = [v1 navigationItem];
  v27 = [v26 rightBarButtonItem];

  if (v27)
  {
    [v27 setEnabled_];
  }
}

void sub_1BD240398()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD2406CC();
  }
}

void sub_1BD240520(char a1)
{
  v3 = [v1 navigationItem];
  v4 = [v3 leftBarButtonItem];

  if (v4)
  {
    [v4 setEnabled_];
  }

  v5 = [v1 navigationItem];
  [v5 setHidesBackButton_];

  if (a1)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    v7 = [v1 navigationItem];
    [v7 setRightBarButtonItem_];

    [v6 startAnimating];
  }

  else
  {
    v8 = [v1 navigationItem];
    v6 = *&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem];
    [v8 setRightBarButtonItem_];
  }
}

uint64_t sub_1BD2406CC()
{
  sub_1BD240520(1);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_dtuModel];
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = sub_1BD242E8C;
  v3[4] = v1;
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
  v8[4] = sub_1BD242E94;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BD3F08C0;
  v8[3] = &block_descriptor_32;
  v5 = _Block_copy(v8);
  v6 = v0;
  sub_1BE048964();
  sub_1BE048964();

  [v4 requestDTUAvailable_];
  _Block_release(v5);
}

void sub_1BD240820(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_dtuModel);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  v3 = sub_1BE053344();
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
  swift_getKeyPath();
  v8[0] = v1;
  sub_1BD242ED4(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion);
  v8[4] = sub_1BD242ECC;
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BD242760;
  v8[3] = &block_descriptor_42;
  v6 = _Block_copy(v8);
  v7 = v5;
  sub_1BE048964();

  [v4 requestPurchaseWithAmount:v3 promotionConfiguration:v7 completion:v6];
  _Block_release(v6);
}

uint64_t sub_1BD2409FC(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_1BD242F1C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_48;
  v18 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048C84();
  v19 = a3;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v22 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v21);
}

void sub_1BD240CEC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v78 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  if (a2)
  {
    if (!*&Strong[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_context])
    {
      if (*&Strong[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_setupController])
      {
        v47 = [Strong navigationController];
        if (v47)
        {

          sub_1BE04D194();
          v48 = sub_1BE04D204();
          v49 = sub_1BE052C34();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_1BD026000, v48, v49, "Attempted to provisioning after top up which is currently unsupported", v50, 2u);
            MEMORY[0x1BFB45F20](v50, -1, -1);
          }

          (*(v8 + 8))(v19, v7);
          goto LABEL_35;
        }
      }
    }

    v22 = [objc_opt_self() sharedInstance];
    if (v22)
    {
      v23 = v22;
      v24 = [*&v21[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_account] accountIdentifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1BE052434();
        v28 = v27;
        if (a3)
        {
          v81 = 1635017060;
          v82 = 0xE400000000000000;
          sub_1BE0537C4();
          if (*(a3 + 16) && (v29 = sub_1BD149040(aBlock), (v30 & 1) != 0))
          {
            sub_1BD038CD0(*(a3 + 56) + 32 * v29, &v84);
            sub_1BD149CE8(aBlock);
            if (*(&v85 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590);
              if (swift_dynamicCast())
              {
                v31 = aBlock[0];
                if (aBlock[0])
                {
                  if (*(aBlock[0] + 16))
                  {
                    sub_1BE048C84();
                    v32 = sub_1BD148F70(0x726566666FLL, 0xE500000000000000);
                    if (v33)
                    {
                      sub_1BD038CD0(*(v31 + 56) + 32 * v32, aBlock);

                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590);
                      if (swift_dynamicCast())
                      {
                        v34 = 0;
                        v35 = v84;
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                    }
                  }

                  v34 = 0;
                  v35 = 0;
LABEL_50:
                  v68 = swift_allocObject();
                  swift_beginAccess();
                  v69 = swift_unknownObjectWeakLoadStrong();
                  swift_unknownObjectWeakInit();

                  v70 = swift_allocObject();
                  v70[2] = v26;
                  v70[3] = v28;
                  v70[4] = v68;
                  v70[5] = v35;
                  aBlock[4] = sub_1BD242F2C;
                  aBlock[5] = v70;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_1BD14E1D8;
                  aBlock[3] = &block_descriptor_55_0;
                  v71 = _Block_copy(aBlock);
                  sub_1BE048C84();

                  [v23 updateAccountWithIdentifier:v25 extended:0 completion:v71];
                  _Block_release(v71);

                  if (v35)
                  {

                    if (v34)
                    {
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC98);
                      inited = swift_initStackObject();
                      *(inited + 16) = xmmword_1BE0B69E0;
                      *(inited + 32) = 0xD000000000000010;
                      v73 = inited + 32;
                      *(inited + 40) = 0x80000001BE11F510;
                      *(inited + 48) = v31;
                      v74 = sub_1BD1AC4CC(inited);
                      swift_setDeallocating();
                      sub_1BD0DE53C(v73, &unk_1EBD3ECA0);
                      v75 = *&v21[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_uiManager];
                      v76 = sub_1BD1A89E4(v74);

                      v77 = sub_1BD1A8284(v76);

                      sub_1BD710144(2u, v21, 2uLL, v77, 0, 0, 0);
                    }
                  }

                  else
                  {
                  }

                  return;
                }

LABEL_49:
                v35 = 0;
                v34 = 1;
                goto LABEL_50;
              }

LABEL_48:
              v31 = 0;
              goto LABEL_49;
            }
          }

          else
          {
            sub_1BD149CE8(aBlock);
            v84 = 0u;
            v85 = 0u;
          }
        }

        else
        {
          v85 = 0u;
          v84 = 0u;
        }

        sub_1BD0DE53C(&v84, &qword_1EBD3EC90);
        goto LABEL_48;
      }
    }

LABEL_35:
    [v21 dismissViewControllerAnimated:1 completion:0];
LABEL_43:

    return;
  }

  v80 = v8;
  v36 = [Strong navigationItem];
  v37 = [v36 leftBarButtonItem];

  if (v37)
  {
    [v37 setEnabled_];
  }

  v38 = [v21 navigationItem];
  [v38 setHidesBackButton_];

  v39 = [v21 navigationItem];
  v40 = *&v21[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem];
  [v39 setRightBarButtonItem_];

  if (!a4)
  {
    sub_1BE052434();
    v46 = v80;
    goto LABEL_29;
  }

  swift_getErrorValue();
  v41 = sub_1BE053C94();
  v43 = v42;
  v44 = sub_1BE052434();
  v46 = v80;
  if (!v43)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (v41 == v44 && v43 == v45)
  {

    goto LABEL_37;
  }

  v63 = sub_1BE053B84();

  if ((v63 & 1) == 0)
  {
LABEL_30:
    sub_1BE04D194();
    v21 = v21;
    v51 = a4;
    v52 = sub_1BE04D204();
    v53 = sub_1BE052C34();

    if (os_log_type_enabled(v52, v53))
    {
      v79 = v7;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v54 = 136315394;
      v57 = sub_1BE053314();
      v59 = sub_1BD123690(v57, v58, aBlock);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2112;
      if (a4)
      {
        v60 = a4;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        v62 = v61;
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }

      v67 = v79;
      *(v54 + 14) = v61;
      *v55 = v62;
      _os_log_impl(&dword_1BD026000, v52, v53, "AMS purchase request for amount %s failed with error: %@", v54, 0x16u);
      sub_1BD0DE53C(v55, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v55, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1BFB45F20](v56, -1, -1);
      MEMORY[0x1BFB45F20](v54, -1, -1);

      (*(v80 + 8))(v11, v67);
    }

    else
    {

      (*(v46 + 8))(v11, v7);
    }

    sub_1BD24200C();
    goto LABEL_43;
  }

LABEL_37:
  swift_getErrorValue();
  if (sub_1BE053C84() != 6)
  {
    goto LABEL_30;
  }

  sub_1BE04D194();
  v64 = sub_1BE04D204();
  v65 = sub_1BE052C54();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1BD026000, v64, v65, "AMS purchase request cancelled", v66, 2u);
    MEMORY[0x1BFB45F20](v66, -1, -1);
  }

  else
  {
  }

  (*(v46 + 8))(v15, v7);
}

uint64_t sub_1BD24174C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BE051F54();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v15 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v25 = sub_1BE052D54();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  aBlock[4] = sub_1BD242F38;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_61;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v22 = v25;
  MEMORY[0x1BFB3FDF0](0, v18, v14, v20);
  _Block_release(v20);

  (*(v27 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v26);
}

void sub_1BD241A48(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    sub_1BE04D194();
    v15 = a1;
    sub_1BE048C84();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = v9;
      v21 = v20;
      v22 = swift_slowAlloc();
      v31 = a5;
      v32[0] = v22;
      v23 = v22;
      *v19 = 136315394;
      *(v19 + 4) = sub_1BD123690(v29, a3, v32);
      *(v19 + 12) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      *v21 = v25;
      _os_log_impl(&dword_1BD026000, v16, v17, "Failed to update account with identifier %s with error: %@", v19, 0x16u);
      sub_1BD0DE53C(v21, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v26 = v23;
      a5 = v31;
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v19, -1, -1);

      (*(v10 + 8))(v13, v30);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!a5)
    {
      v28 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
      Strong = v28;
    }
  }
}

uint64_t sub_1BD241CE4(char a1, void *a2, uint64_t (*a3)(double))
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return a3(v14);
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v18 = sub_1BE052D54();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  aBlock[4] = sub_1BD242EA0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_38;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v16, v10, v20);
  _Block_release(v20);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_1BD24200C()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD242734;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_35;
  v12 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_1BD2422D4()
{
  v0 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = sub_1BD24273C;
  v14 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1BD126964;
  v12 = &block_descriptor_19_1;
  v2 = _Block_copy(&aBlock);

  v3 = swift_allocObject();
  v4 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = sub_1BD242744;
  v14 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1BD126964;
  v12 = &block_descriptor_23_1;
  v5 = _Block_copy(&aBlock);

  v6 = PKCreateAlertControllerForAppleAccountTopUpUnavailable(v2, v5);
  _Block_release(v5);
  _Block_release(v2);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_1BD2424C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_uiManager);

    sub_1BD713C50();
  }
}

void sub_1BD242530()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1BD242650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleBalanceDirectTopUpViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD242760(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_1BE052244();
  }

  else
  {
    v7 = 0;
  }

  sub_1BE048964();
  v8 = a4;
  v6(a2, v7, a4);
}

char *sub_1BD242814(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v76 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ECC0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v74 - v17;
  v19 = type metadata accessor for AppleBalanceDirectTopUpView();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v74 - v26;
  *&v5[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem] = 0;
  v28 = &v5[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_amount];
  *v28 = MEMORY[0x1BFB403C0](0, v25);
  *(v28 + 1) = v29;
  v74 = v28;
  *(v28 + 4) = v30;
  v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_biometricsUnavailable] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_account] = a1;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_context] = a2;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_uiManager] = a3;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_dtuModel] = a4;
  v31 = objc_allocWithZone(type metadata accessor for AccountModel());
  v32 = a1;
  v33 = a3;
  v34 = a4;
  v35 = sub_1BD1DF0D8(v32, 0);
  v36 = v34;
  v77 = v35;
  sub_1BD33A180(a2, v77, v36, v27);
  v78 = v27;
  sub_1BD243118(v27, v22);
  v37 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ECC8));
  type metadata accessor for ObservableHostingController();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v37 + *((*MEMORY[0x1E69E7D40] & *v37) + class metadata base offset for WrapperHostingController + 16)) = v38;
  sub_1BD243118(v22, v18);
  *&v18[*(v12 + 44)] = v38;
  sub_1BD24317C(v18, v75);
  sub_1BE048964();
  v39 = sub_1BE04F894();
  sub_1BD0DE53C(v18, &qword_1EBD3ECC0);
  sub_1BD2431EC(v22);
  v40 = v76;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC] = v39;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_setupController] = v40;
  if (a2 == 3)
  {
    swift_getKeyPath();
    v79 = v36;
    sub_1BD242ED4(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
    v41 = v40;
    sub_1BE04B594();

    v42 = *&v36[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion];
    if (v42 && (v43 = [v42 bonusMinAmount]) != 0 && (v79 = 0, v80 = 0, v81 = 0, v82 = 1, v44 = v43, sub_1BE0533E4(), v44, (v82 & 1) == 0))
    {
      v47 = v81;
      v45 = v79;
      v46 = v80;
    }

    else
    {
      v45 = MEMORY[0x1BFB403C0](0);
    }

    v48 = v74;
    *v74 = v45;
    v48[1] = v46;
    *(v48 + 4) = v47;
  }

  else
  {
    v41 = v40;
  }

  v49 = type metadata accessor for AppleBalanceDirectTopUpViewController();
  v83.receiver = v6;
  v83.super_class = v49;
  v50 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
  v51 = OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC;
  v52 = *&v50[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = v50;
  v55 = v52;
  sub_1BE048964();
  v56 = sub_1BE04F8A4();
  v58 = *(v57 + 16);
  *(v57 + 16) = sub_1BD243248;
  *(v57 + 24) = v53;
  sub_1BD0D4744(v58);
  v56(&v79, 0);

  v59 = *&v50[v51];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v59;
  sub_1BE048964();
  v62 = sub_1BE04F8A4();
  v64 = *(v63 + 32);
  *(v63 + 32) = sub_1BD243250;
  *(v63 + 40) = v60;
  sub_1BD0D4744(v64);
  v62(&v79, 0);

  v65 = *&v50[v51];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = v65;

  sub_1BE048964();
  v68 = sub_1BE04F8A4();
  v70 = *(v69 + 48);
  *(v69 + 48) = sub_1BD243278;
  *(v69 + 56) = v66;
  sub_1BD0D4744(v70);
  v68(&v79, 0);

  v71 = *&v50[v51];
  v72 = v54;
  [v72 addChildViewController_];
  [v72 setModalInPresentation_];

  sub_1BD2431EC(v78);
  return v72;
}

uint64_t sub_1BD242ED4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD242F48(uint64_t a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    sub_1BE04D194();
    v9 = a2;
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      if (a2)
      {
        v14 = a2;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      *(v12 + 4) = v15;
      *v13 = v16;
      _os_log_impl(&dword_1BD026000, v10, v11, "Gift card redemption purchase failed with error %@", v12, 0xCu);
      sub_1BD0DE53C(v13, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v13, -1, -1);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BD243118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleBalanceDirectTopUpView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD24317C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ECC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2431EC(uint64_t a1)
{
  v2 = type metadata accessor for AppleBalanceDirectTopUpView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BD2432C0()
{
  v0 = objc_allocWithZone(PKDashboardMessageView);

  return [v0 init];
}

uint64_t sub_1BD2432F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2435B0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD24335C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2435B0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD2433C0()
{
  sub_1BD2435B0();
  sub_1BE04F964();
  __break(1u);
}

id sub_1BD2433E8()
{
  v0 = objc_allocWithZone(PKDashboardMessageActionView);

  return [v0 init];
}

double sub_1BD243420(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    *&a1 = 0.0;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_1BD243468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD243604();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD2434CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD243604();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD243530()
{
  sub_1BD243604();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD24355C()
{
  result = qword_1EBD3ECD0;
  if (!qword_1EBD3ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ECD0);
  }

  return result;
}

unint64_t sub_1BD2435B0()
{
  result = qword_1EBD3ECD8;
  if (!qword_1EBD3ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ECD8);
  }

  return result;
}

unint64_t sub_1BD243604()
{
  result = qword_1EBD3ECE0;
  if (!qword_1EBD3ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ECE0);
  }

  return result;
}

uint64_t type metadata accessor for DocumentsView()
{
  result = qword_1EBD3ECE8;
  if (!qword_1EBD3ECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2436F4()
{
  sub_1BD2437A8();
  if (v0 <= 0x3F)
  {
    sub_1BD24383C();
    if (v1 <= 0x3F)
    {
      sub_1BD2438D0();
      if (v2 <= 0x3F)
      {
        sub_1BD243964();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD2437A8()
{
  if (!qword_1EBD3ECF8)
  {
    type metadata accessor for SavingsStatementsModel(255);
    sub_1BD247874(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3ECF8);
    }
  }
}

void sub_1BD24383C()
{
  if (!qword_1EBD3ED00)
  {
    type metadata accessor for TaxFormsModel(255);
    sub_1BD247874(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3ED00);
    }
  }
}

void sub_1BD2438D0()
{
  if (!qword_1EBD3ED08)
  {
    type metadata accessor for DeviceAuthenticationModel();
    sub_1BD247874(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3ED08);
    }
  }
}

void sub_1BD243964()
{
  if (!qword_1EBD3E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3E9B0);
    }
  }
}

id sub_1BD2439E4@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v83, v2);
  v85 = &v66 - v3;
  v78 = type metadata accessor for DocumentsView();
  v86 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v4);
  v87 = v5;
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04F434();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED10);
  v67 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v66 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED18);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v19);
  v69 = &v66 - v20;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED20);
  MEMORY[0x1EEE9AC00](v66, v21);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED28);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v71 = &v66 - v26;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED30);
  MEMORY[0x1EEE9AC00](v70, v27);
  v77 = &v66 - v28;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED38);
  MEMORY[0x1EEE9AC00](v76, v29);
  v79 = &v66 - v30;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED40);
  MEMORY[0x1EEE9AC00](v80, v31);
  v82 = &v66 - v32;
  v68 = v1;
  v88 = v1;
  v33 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED48);
  sub_1BD247350();
  sub_1BE0504E4();
  (*(v11 + 104))(v14, *MEMORY[0x1E69B80E0], v10);
  result = PKPassKitBundle();
  if (result)
  {
    v35 = result;
    v36 = sub_1BE04B6F4();
    v38 = v37;

    (*(v11 + 8))(v14, v33);
    v89 = v36;
    v90 = v38;
    v40 = v74;
    v39 = v75;
    (*(v74 + 104))(v9, *MEMORY[0x1E697C438], v75);
    sub_1BD0DE4F4(&qword_1EBD3ED68, &qword_1EBD3ED10);
    sub_1BD0DDEBC();
    v41 = v69;
    sub_1BE050C94();
    (*(v40 + 8))(v9, v39);

    (*(v67 + 8))(v18, v15);
    v78 = *(v78 + 28);
    v42 = &v23[*(v66 + 36)];
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v43 = v68;
    sub_1BE0516C4();
    v44 = v43;
    v45 = v81;
    sub_1BD247B90(v43, v81, type metadata accessor for DocumentsView);
    v46 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v86 = *(v86 + 80);
    v47 = swift_allocObject();
    sub_1BD247B28(v45, v47 + v46, type metadata accessor for DocumentsView);
    (*(v72 + 32))(v23, v41, v73);
    v48 = &v42[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v48 = sub_1BD247414;
    v48[1] = v47;
    v49 = v71;
    sub_1BD0DE204(v23, v71, &qword_1EBD3ED20);
    sub_1BD247B90(v43, v45, type metadata accessor for DocumentsView);
    v50 = swift_allocObject();
    sub_1BD247B28(v45, v50 + v46, type metadata accessor for DocumentsView);
    v51 = v77;
    sub_1BD0DE204(v49, v77, &qword_1EBD3ED28);
    v52 = (v51 + *(v70 + 36));
    *v52 = sub_1BD24742C;
    v52[1] = v50;
    v52[2] = 0;
    v52[3] = 0;
    v53 = v44;
    swift_beginAccess();
    v54 = v76;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
    v55 = v79;
    sub_1BE04D884();
    swift_endAccess();
    sub_1BD247B90(v53, v45, type metadata accessor for DocumentsView);
    v56 = swift_allocObject();
    sub_1BD247B28(v45, v56 + v46, type metadata accessor for DocumentsView);
    sub_1BD0DE204(v51, v55, &qword_1EBD3ED30);
    v57 = (v55 + *(v54 + 56));
    *v57 = sub_1BD24751C;
    v57[1] = v56;
    v58 = v53;
    swift_beginAccess();
    v59 = v80;
    v60 = v82;
    sub_1BE04D884();
    swift_endAccess();
    v61 = v58;
    sub_1BD247B90(v58, v45, type metadata accessor for DocumentsView);
    v62 = swift_allocObject();
    sub_1BD247B28(v45, v62 + v46, type metadata accessor for DocumentsView);
    sub_1BD0DE204(v55, v60, &qword_1EBD3ED38);
    v63 = (v60 + *(v59 + 56));
    *v63 = sub_1BD248098;
    v63[1] = v62;
    v64 = v85;
    sub_1BE0516A4();
    sub_1BD247B90(v61, v45, type metadata accessor for DocumentsView);
    v65 = swift_allocObject();
    sub_1BD247B28(v45, v65 + v46, type metadata accessor for DocumentsView);
    sub_1BD0DE4F4(&qword_1EBD3ED70, &qword_1EBD3ED40);
    sub_1BD2477C0();
    sub_1BE051074();

    sub_1BD0DE53C(v64, &qword_1EBD416C0);
    return sub_1BD0DE53C(v60, &qword_1EBD3ED40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2444B4(uint64_t a1)
{
  sub_1BD244900(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD3ED58, &qword_1EBD3ED60);
  sub_1BD12E194();
  return sub_1BE051A54();
}

uint64_t sub_1BD244594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED88);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v28 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED90);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v28 - v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v29 >> 62)
  {
    v20 = sub_1BE053704();
  }

  else
  {
    v20 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v19 = sub_1BE051CD4();
  v19[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED98);
  sub_1BD2454CC(a1, v20 > 0, v19 + *(v22 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v29 >> 62)
  {
    v23 = sub_1BE053704();
  }

  else
  {
    v23 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v11 = sub_1BE051CD4();
  v11[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDA0);
  sub_1BD246408(a1, v23 > 0, v11 + *(v25 + 44));
  sub_1BD0DE19C(v19, v15, &qword_1EBD3ED90);
  sub_1BD0DE19C(v11, v7, &qword_1EBD3ED88);
  sub_1BD0DE19C(v15, a2, &qword_1EBD3ED90);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDA8);
  sub_1BD0DE19C(v7, a2 + *(v26 + 48), &qword_1EBD3ED88);
  sub_1BD0DE53C(v11, &qword_1EBD3ED88);
  sub_1BD0DE53C(v19, &qword_1EBD3ED90);
  sub_1BD0DE53C(v7, &qword_1EBD3ED88);
  return sub_1BD0DE53C(v15, &qword_1EBD3ED90);
}

id sub_1BD244900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts);
  v33 = v9;
  v34 = v8;
  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_31;
  }

  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_1BE048C84();
  v12 = 0;
  do
  {
    if (v11 == v12)
    {

      v7 = *(*(a1 + 24) + OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts);
      if (v7 >> 62)
      {
        a1 = sub_1BE053704();
      }

      else
      {
        a1 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      v16 = 0;
      while (a1 != v16)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1BFB40900](v16, v7);
        }

        else
        {
          if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v17 = *(v7 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_29;
        }

        v19 = [v17 state];

        ++v16;
        if (v19 == 4)
        {
          goto LABEL_23;
        }
      }

      result = 0;
      v27 = 0;
      v30 = 0;
      v28 = 0;
      goto LABEL_26;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900](v12, v7);
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_28;
      }

      v13 = *(v7 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v11 = sub_1BE053704();
      goto LABEL_3;
    }

    v15 = [v13 state];

    ++v12;
  }

  while (v15 != 4);
LABEL_23:

  v21 = v33;
  v20 = v34;
  (*(v33 + 104))(v6, *MEMORY[0x1E69B80E0], v34);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v21 + 8))(v6, v20);
    v36 = v24;
    v37 = v26;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    v30 = v29 & 1;
LABEL_26:
    v31 = v35;
    *v35 = result;
    v31[1] = v27;
    v31[2] = v30;
    v31[3] = v28;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD244C0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = type metadata accessor for FeatureError(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DocumentsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516A4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1BD0DE53C(v3, &qword_1EBD416C0);
  }

  sub_1BD247B28(v3, v8, type metadata accessor for FeatureError);
  sub_1BD2F50D4(v8);
  sub_1BD6D2170(v8);
  return sub_1BD230994(v8);
}

uint64_t sub_1BD244DB0(uint64_t a1, uint64_t a2)
{
  v26[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v26[0] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v26 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v26 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v26 - v16;
  v18 = type metadata accessor for FeatureError(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v17, &qword_1EBD416C0);
  v23 = *(v19 + 48);
  if (v23(v17, 1, v18) == 1)
  {
    v24 = v17;
  }

  else
  {
    sub_1BD247B28(v17, v22, type metadata accessor for FeatureError);
    type metadata accessor for DocumentsView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516A4();
    if (v23(v13, 1, v18) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD416C0);
      sub_1BD247B90(v22, v9, type metadata accessor for FeatureError);
      (*(v19 + 56))(v9, 0, 1, v18);
      sub_1BD0DE19C(v9, v26[0], &qword_1EBD416C0);
      sub_1BE0516B4();
      sub_1BD0DE53C(v9, &qword_1EBD416C0);
      return sub_1BD230994(v22);
    }

    sub_1BD230994(v22);
    v24 = v13;
  }

  return sub_1BD0DE53C(v24, &qword_1EBD416C0);
}

uint64_t sub_1BD2450C0()
{
  v0 = type metadata accessor for FeatureError(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v34 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v38 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v32 - v23;
  v25 = *(type metadata accessor for DocumentsView() + 28);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  v36 = v25;
  sub_1BE0516A4();
  v39 = v1;
  v26 = *(v1 + 48);
  v27 = v26(v24, 1, v0);
  result = sub_1BD0DE53C(v24, &qword_1EBD416C0);
  if (v27 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v26(v20, 1, v0) == 1)
    {
      sub_1BD0DE53C(v20, &qword_1EBD416C0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (v26(v16, 1, v0) == 1)
      {
        return sub_1BD0DE53C(v16, &qword_1EBD416C0);
      }

      v29 = v16;
      v30 = v33;
    }

    else
    {
      v29 = v20;
      v30 = v34;
    }

    sub_1BD247B28(v29, v30, type metadata accessor for FeatureError);
    v31 = v38;
    sub_1BD247B90(v30, v38, type metadata accessor for FeatureError);
    (*(v39 + 56))(v31, 0, 1, v0);
    sub_1BD0DE19C(v31, v37, &qword_1EBD416C0);
    sub_1BE0516B4();
    sub_1BD0DE53C(v31, &qword_1EBD416C0);
    return sub_1BD230994(v30);
  }

  return result;
}

uint64_t sub_1BD2454CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE68);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v5);
  v53 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v63 = &v52 - v12;
  v57 = sub_1BE04FF64();
  v54 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC8);
  v55 = *(v20 - 8);
  v56 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v58 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  *v19 = sub_1BE04F504();
  *(v19 + 1) = 0;
  v31 = 1;
  v19[16] = 1;
  v32 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD8) + 44)];
  v52 = a1;
  sub_1BD245B88(a1, a2, v32);
  sub_1BE04FF44();
  v33 = sub_1BD0DE4F4(&qword_1EBD3EDE0, &qword_1EBD3EDC0);
  sub_1BE050D14();
  (*(v54 + 8))(v15, v57);
  sub_1BD0DE53C(v19, &qword_1EBD3EDC0);
  sub_1BE052434();
  v64 = v16;
  v65 = v33;
  swift_getOpaqueTypeConformance2();
  v57 = v30;
  v34 = v56;
  sub_1BE050DE4();

  (*(v55 + 8))(v23, v34);
  if (a2)
  {
    type metadata accessor for SavingsStatementsModel(0);
    sub_1BD247874(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
    v35 = sub_1BE04EEC4();
    v37 = v36;
    v38 = *(v52 + 8);
    v39 = sub_1BE04D804();
    type metadata accessor for DeviceAuthenticationModel();
    sub_1BD247874(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
    v40 = v38;
    v41 = sub_1BE04E3C4();
    v42 = sub_1BE04D804();
    v64 = v35;
    v65 = v37;
    v66 = v39;
    v67 = v38;
    v68 = v42;
    v69 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE80);
    sub_1BD247ED4();
    v43 = v53;
    sub_1BE04E8B4();
    v44 = v63;
    *(v43 + *(v62 + 36)) = 0;
    sub_1BD0DE204(v43, v44, &qword_1EBD3EE68);
    v31 = 0;
  }

  v45 = v63;
  (*(v59 + 56))(v63, v31, 1, v62);
  v47 = v57;
  v46 = v58;
  sub_1BD0DE19C(v57, v58, &qword_1EBD3EDD0);
  v48 = v60;
  sub_1BD0DE19C(v45, v60, &qword_1EBD3EE70);
  v49 = v61;
  sub_1BD0DE19C(v46, v61, &qword_1EBD3EDD0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE78);
  sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD3EE70);
  sub_1BD0DE53C(v45, &qword_1EBD3EE70);
  sub_1BD0DE53C(v47, &qword_1EBD3EDD0);
  sub_1BD0DE53C(v48, &qword_1EBD3EE70);
  return sub_1BD0DE53C(v46, &qword_1EBD3EDD0);
}

id sub_1BD245B88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE38);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v51 - v10);
  v12 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v19, *MEMORY[0x1E69B80E0], v14, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    (*(v15 + 8))(v19, v14);
    v62 = v22;
    v63 = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v55 = v26;
    v56 = v25;
    v54 = v27;
    v57 = v28;
    sub_1BE04F604();
    sub_1BE04F5F4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v58 = v11;
    v59 = v7;
    if (v62 >> 62)
    {
      v29 = sub_1BE053704();
    }

    else
    {
      v29 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v29;
    sub_1BE04F5C4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v30 = sub_1BE050694();
    v32 = v31;
    v34 = v33;
    sub_1BE051234();
    v35 = sub_1BE050564();
    v37 = v36;
    v52 = v36;
    v53 = v38;
    v40 = v39;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    v41 = sub_1BE051CD4();
    v42 = v58;
    *v58 = v41;
    *(v42 + 8) = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE40);
    sub_1BD246080(v60 & 1, v42 + *(v44 + 44));
    v45 = v54 & 1;
    LOBYTE(v62) = v54 & 1;
    v46 = v59;
    sub_1BD0DE19C(v42, v59, &qword_1EBD3EE38);
    v48 = v55;
    v47 = v56;
    *a3 = v56;
    *(a3 + 8) = v48;
    *(a3 + 16) = v45;
    *(a3 + 24) = v57;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v35;
    *(a3 + 56) = v37;
    v40 &= 1u;
    *(a3 + 64) = v40;
    *(a3 + 72) = v53;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE48);
    sub_1BD0DE19C(v46, a3 + *(v49 + 80), &qword_1EBD3EE38);
    sub_1BD0D7F18(v47, v48, v45);
    sub_1BE048C84();
    v50 = v52;
    sub_1BD0D7F18(v35, v52, v40);
    sub_1BE048C84();
    sub_1BD0DE53C(v42, &qword_1EBD3EE38);
    sub_1BD0DE53C(v46, &qword_1EBD3EE38);
    sub_1BD0DDF10(v35, v50, v40);

    sub_1BD0DDF10(v47, v48, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD246080@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE50);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  v39 = sub_1BE04C744();
  v10 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v38 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v23 = v43;
  (*(v10 + 104))(v13, *MEMORY[0x1E69BC950], v39);
  sub_1BE04C724();
  v22[*(v15 + 44)] = v23 & 1 | ((v40 & 1) == 0);
  sub_1BE04E4F4();
  v24 = sub_1BE050204();
  sub_1BE04E1F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v9[*(v3 + 44)] = (v23 & 1) == 0;
  sub_1BD0DE19C(v22, v18, &qword_1EBD3B2D8);
  v34 = v41;
  sub_1BD0DE19C(v9, v41, &qword_1EBD3EE50);
  v35 = v42;
  sub_1BD0DE19C(v18, v42, &qword_1EBD3B2D8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE60);
  sub_1BD0DE19C(v34, v35 + *(v36 + 48), &qword_1EBD3EE50);
  sub_1BD0DE53C(v9, &qword_1EBD3EE50);
  sub_1BD0DE53C(v22, &qword_1EBD3B2D8);
  sub_1BD0DE53C(v34, &qword_1EBD3EE50);
  return sub_1BD0DE53C(v18, &qword_1EBD3B2D8);
}

uint64_t sub_1BD246408@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDB0);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v5);
  v53 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDB8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v63 = &v52 - v12;
  v57 = sub_1BE04FF64();
  v54 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC8);
  v55 = *(v20 - 8);
  v56 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v58 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  *v19 = sub_1BE04F504();
  *(v19 + 1) = 0;
  v31 = 1;
  v19[16] = 1;
  v32 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD8) + 44)];
  v52 = a1;
  sub_1BD246AC4(a1, a2, v32);
  sub_1BE04FF44();
  v33 = sub_1BD0DE4F4(&qword_1EBD3EDE0, &qword_1EBD3EDC0);
  sub_1BE050D14();
  (*(v54 + 8))(v15, v57);
  sub_1BD0DE53C(v19, &qword_1EBD3EDC0);
  sub_1BE052434();
  v64 = v16;
  v65 = v33;
  swift_getOpaqueTypeConformance2();
  v57 = v30;
  v34 = v56;
  sub_1BE050DE4();

  (*(v55 + 8))(v23, v34);
  if (a2)
  {
    type metadata accessor for TaxFormsModel(0);
    sub_1BD247874(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
    v35 = sub_1BE04EEC4();
    v37 = v36;
    v38 = *(v52 + 24);
    v39 = sub_1BE04D804();
    type metadata accessor for DeviceAuthenticationModel();
    sub_1BD247874(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
    v40 = v38;
    v41 = sub_1BE04E3C4();
    v42 = sub_1BE04D804();
    v64 = v35;
    v65 = v37;
    v66 = v39;
    v67 = v38;
    v68 = v42;
    v69 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDF0);
    sub_1BD247D10();
    v43 = v53;
    sub_1BE04E8B4();
    v44 = v63;
    *(v43 + *(v62 + 36)) = 0;
    sub_1BD0DE204(v43, v44, &qword_1EBD3EDB0);
    v31 = 0;
  }

  v45 = v63;
  (*(v59 + 56))(v63, v31, 1, v62);
  v47 = v57;
  v46 = v58;
  sub_1BD0DE19C(v57, v58, &qword_1EBD3EDD0);
  v48 = v60;
  sub_1BD0DE19C(v45, v60, &qword_1EBD3EDB8);
  v49 = v61;
  sub_1BD0DE19C(v46, v61, &qword_1EBD3EDD0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDE8);
  sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD3EDB8);
  sub_1BD0DE53C(v45, &qword_1EBD3EDB8);
  sub_1BD0DE53C(v47, &qword_1EBD3EDD0);
  sub_1BD0DE53C(v48, &qword_1EBD3EDB8);
  return sub_1BD0DE53C(v46, &qword_1EBD3EDD0);
}

id sub_1BD246AC4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE38);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v51 - v10);
  v12 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v19, *MEMORY[0x1E69B80E0], v14, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    (*(v15 + 8))(v19, v14);
    v62 = v22;
    v63 = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v55 = v26;
    v56 = v25;
    v54 = v27;
    v57 = v28;
    sub_1BE04F604();
    sub_1BE04F5F4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v58 = v11;
    v59 = v7;
    if (v62 >> 62)
    {
      v29 = sub_1BE053704();
    }

    else
    {
      v29 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v29;
    sub_1BE04F5C4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v30 = sub_1BE050694();
    v32 = v31;
    v34 = v33;
    sub_1BE051234();
    v35 = sub_1BE050564();
    v37 = v36;
    v52 = v36;
    v53 = v38;
    v40 = v39;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    v41 = sub_1BE051CD4();
    v42 = v58;
    *v58 = v41;
    *(v42 + 8) = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE40);
    sub_1BD246FBC(v60 & 1, v42 + *(v44 + 44));
    v45 = v54 & 1;
    LOBYTE(v62) = v54 & 1;
    v46 = v59;
    sub_1BD0DE19C(v42, v59, &qword_1EBD3EE38);
    v48 = v55;
    v47 = v56;
    *a3 = v56;
    *(a3 + 8) = v48;
    *(a3 + 16) = v45;
    *(a3 + 24) = v57;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v35;
    *(a3 + 56) = v37;
    v40 &= 1u;
    *(a3 + 64) = v40;
    *(a3 + 72) = v53;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE48);
    sub_1BD0DE19C(v46, a3 + *(v49 + 80), &qword_1EBD3EE38);
    sub_1BD0D7F18(v47, v48, v45);
    sub_1BE048C84();
    v50 = v52;
    sub_1BD0D7F18(v35, v52, v40);
    sub_1BE048C84();
    sub_1BD0DE53C(v42, &qword_1EBD3EE38);
    sub_1BD0DE53C(v46, &qword_1EBD3EE38);
    sub_1BD0DDF10(v35, v50, v40);

    sub_1BD0DDF10(v47, v48, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD246FBC@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE50);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  v39 = sub_1BE04C744();
  v10 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v38 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v23 = v43;
  (*(v10 + 104))(v13, *MEMORY[0x1E69BC950], v39);
  sub_1BE04C724();
  v22[*(v15 + 44)] = v23 & 1 | ((v40 & 1) == 0);
  sub_1BE04E4F4();
  v24 = sub_1BE050204();
  sub_1BE04E1F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v9[*(v3 + 44)] = (v23 & 1) == 0;
  sub_1BD0DE19C(v22, v18, &qword_1EBD3B2D8);
  v34 = v41;
  sub_1BD0DE19C(v9, v41, &qword_1EBD3EE50);
  v35 = v42;
  sub_1BD0DE19C(v18, v42, &qword_1EBD3B2D8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE60);
  sub_1BD0DE19C(v34, v35 + *(v36 + 48), &qword_1EBD3EE50);
  sub_1BD0DE53C(v9, &qword_1EBD3EE50);
  sub_1BD0DE53C(v22, &qword_1EBD3B2D8);
  sub_1BD0DE53C(v34, &qword_1EBD3EE50);
  return sub_1BD0DE53C(v18, &qword_1EBD3B2D8);
}

unint64_t sub_1BD247350()
{
  result = qword_1EBD3ED50;
  if (!qword_1EBD3ED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ED48);
    sub_1BD0DE4F4(&qword_1EBD3ED58, &qword_1EBD3ED60);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ED50);
  }

  return result;
}

uint64_t sub_1BD24742C()
{
  v1 = *(type metadata accessor for DocumentsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 8)) + 0x170))();
  return (*((*v3 & **(v2 + 24)) + 0x170))(v4);
}

uint64_t objectdestroyTm_15()
{
  v1 = (type metadata accessor for DocumentsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1BD185AB4();
  v3 = (v2 + v1[9]);
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

uint64_t sub_1BD24774C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DocumentsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD2477C0()
{
  result = qword_1EBD3ED78;
  if (!qword_1EBD3ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
    sub_1BD247874(&qword_1EBD3ED80, type metadata accessor for FeatureError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ED78);
  }

  return result;
}

uint64_t sub_1BD247874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD247970()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD2479FC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  sub_1BD0DE19C(a1, &v15 - v10, &qword_1EBD416C0);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v11, v8, &qword_1EBD416C0);
  v13 = v12;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v11, &qword_1EBD416C0);
}

uint64_t sub_1BD247B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD247B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD247C14@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD247CA4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

unint64_t sub_1BD247D10()
{
  result = qword_1EBD3EDF8;
  if (!qword_1EBD3EDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EDF0);
    sub_1BD247DC8();
    sub_1BD0DE4F4(&qword_1EBD3EE28, &qword_1EBD3EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EDF8);
  }

  return result;
}

unint64_t sub_1BD247DC8()
{
  result = qword_1EBD3EE00;
  if (!qword_1EBD3EE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE08);
    sub_1BD247E80();
    sub_1BD0DE4F4(&qword_1EBD3EE18, &qword_1EBD3EE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE00);
  }

  return result;
}

unint64_t sub_1BD247E80()
{
  result = qword_1EBD3EE10;
  if (!qword_1EBD3EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE10);
  }

  return result;
}

unint64_t sub_1BD247ED4()
{
  result = qword_1EBD3EE88;
  if (!qword_1EBD3EE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE80);
    sub_1BD247F8C();
    sub_1BD0DE4F4(&qword_1EBD3EE28, &qword_1EBD3EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE88);
  }

  return result;
}

unint64_t sub_1BD247F8C()
{
  result = qword_1EBD3EE90;
  if (!qword_1EBD3EE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE98);
    sub_1BD248044();
    sub_1BD0DE4F4(&qword_1EBD3EEA8, &qword_1EBD3EEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE90);
  }

  return result;
}

unint64_t sub_1BD248044()
{
  result = qword_1EBD3EEA0;
  if (!qword_1EBD3EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEA0);
  }

  return result;
}

id sub_1BD2480AC()
{
  v1 = *v0;
  v2 = objc_allocWithZone(PKNavigationController);

  return [v2 initWithRootViewController_];
}

id sub_1BD2480F4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1BD248100()
{
  sub_1BE053D04();
  sub_1BE053084();
  return sub_1BE053D64();
}

uint64_t sub_1BD248168()
{
  sub_1BE053D04();
  sub_1BE053084();
  return sub_1BE053D64();
}

uint64_t sub_1BD2481A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2483E4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD24820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2483E4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD248270()
{
  sub_1BD2483E4();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD2482E0()
{
  result = qword_1EBD3EEB8;
  if (!qword_1EBD3EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEB8);
  }

  return result;
}

unint64_t sub_1BD248338()
{
  result = qword_1EBD3EEC0;
  if (!qword_1EBD3EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEC0);
  }

  return result;
}

unint64_t sub_1BD248390()
{
  result = qword_1EBD3EEC8;
  if (!qword_1EBD3EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEC8);
  }

  return result;
}

unint64_t sub_1BD2483E4()
{
  result = qword_1EBD3EED0;
  if (!qword_1EBD3EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EED0);
  }

  return result;
}

uint64_t sub_1BD248438@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = type metadata accessor for CloseButton.NavigationCircularButtonStyle(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  sub_1BE048964();
  sub_1BE051704();
  type metadata accessor for CloseButton(0);
  sub_1BD70A078(v4);
  *&v4[*(v1 + 20)] = 0x4046000000000000;
  sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
  sub_1BD249838(&qword_1EBD3EF18, type metadata accessor for CloseButton.NavigationCircularButtonStyle);
  sub_1BE0508A4();
  sub_1BD249CE0(v4, type metadata accessor for CloseButton.NavigationCircularButtonStyle);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BD248674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v112 = sub_1BE051DC4();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v3);
  v109 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1BE04E354();
  v116 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v5);
  v115 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF50);
  MEMORY[0x1EEE9AC00](v107, v7);
  v108 = &v91 - v8;
  v111 = sub_1BE04EB24();
  v101 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF58);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v91 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF60);
  v15 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v16);
  v18 = &v91 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF68);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v91 - v22;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF70);
  MEMORY[0x1EEE9AC00](v92, v24);
  v26 = &v91 - v25;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF78);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v27);
  v93 = &v91 - v28;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF80) - 8;
  MEMORY[0x1EEE9AC00](v95, v29);
  v31 = &v91 - v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF88);
  MEMORY[0x1EEE9AC00](v100, v32);
  v104 = &v91 - v33;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF90);
  MEMORY[0x1EEE9AC00](v102, v34);
  v105 = &v91 - v35;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF98);
  MEMORY[0x1EEE9AC00](v103, v36);
  v106 = &v91 - v37;
  sub_1BE04FE14();
  v38 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  v40 = &v14[*(v11 + 36)];
  *v40 = KeyPath;
  v40[1] = v38;
  sub_1BE050384();
  sub_1BD24A110();
  sub_1BE050854();
  sub_1BD24A1F8(v14);
  v98 = objc_opt_self();
  v41 = [v98 labelColor];
  sub_1BE0511C4();
  sub_1BE04FE24();
  v42 = sub_1BE051454();

  (*(v15 + 32))(v23, v18, v94);
  *&v23[*(v20 + 44)] = v42;
  v43 = &v26[*(v92 + 36)];
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0) + 28);
  v45 = *MEMORY[0x1E69816C0];
  v46 = sub_1BE0515D4();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  sub_1BD0DE204(v23, v26, &qword_1EBD3EF68);
  v47 = v101;
  v48 = v99;
  v49 = v111;
  (*(v101 + 13))(v99, *MEMORY[0x1E697E6E8], v111);
  sub_1BD24A260();
  v50 = v93;
  sub_1BE050B24();
  (*(v47 + 8))(v48, v49);
  sub_1BD056C98(v26);
  type metadata accessor for CloseButton.NavigationCircularButtonStyle(0);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  (*(v96 + 32))(v31, v50, v97);
  v51 = *(v95 + 44);
  v101 = v31;
  v52 = &v31[v51];
  v53 = v118;
  *v52 = v117;
  *(v52 + 1) = v53;
  *(v52 + 2) = v119;
  sub_1BE051424();
  v111 = a1;
  v54 = sub_1BE04FE24();
  v55 = *MEMORY[0x1E697DBA8];
  if (v54)
  {
    v56 = v115;
    v57 = v116;
    v58 = v114;
    (*(v116 + 104))(v115, *MEMORY[0x1E697DBA8], v114, 0.0);
    sub_1BE04E344();
    (*(v57 + 8))(v56, v58);
  }

  v97 = sub_1BE051454();

  v59 = v116;
  v99 = *(v116 + 104);
  v60 = v114;
  v61 = v115;
  (v99)(v115, v55, v114);
  v62 = sub_1BE04E344();
  v63 = *(v59 + 8);
  v63(v61, v60);
  LODWORD(v116) = v55;
  v65 = v109;
  v64 = v110;
  v66 = MEMORY[0x1E6981DB8];
  if ((v62 & 1) == 0)
  {
    v66 = MEMORY[0x1E6981DA0];
  }

  v67 = v112;
  (*(v110 + 104))(v109, *v66, v112);
  v68 = v108;
  (*(v64 + 32))(&v108[*(v107 + 36)], v65, v67);
  *v68 = v97;
  v69 = v104;
  v70 = &v104[*(v100 + 36)];
  sub_1BD24A40C(v68, v70);
  *(v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFD0) + 56)) = 256;
  sub_1BD0DE204(v101, v69, &qword_1EBD3EF80);
  (v99)(v61, v116, v60);
  LOBYTE(v68) = sub_1BE04E344();
  v63(v61, v60);
  v71 = &selRef_quaternarySystemFillColor;
  if ((v68 & 1) == 0)
  {
    v71 = &selRef__vibrantLightFillDarkeningColor;
  }

  v72 = [v98 *v71];
  v73 = sub_1BE0511C4();
  v74 = v105;
  sub_1BD0DE204(v69, v105, &qword_1EBD3EF88);
  v75 = v74 + *(v102 + 36);
  *v75 = v73;
  *(v75 + 8) = 256;
  if (sub_1BE04FE24())
  {
    v76 = 1.375;
  }

  else
  {
    v76 = 1.0;
  }

  sub_1BE051EA4();
  v78 = v77;
  v80 = v79;
  v81 = v106;
  sub_1BD0DE204(v74, v106, &qword_1EBD3EF90);
  v82 = v81 + *(v103 + 36);
  *v82 = v76;
  *(v82 + 8) = v76;
  *(v82 + 16) = v78;
  *(v82 + 24) = v80;
  v83 = sub_1BE04FE24();
  v84.n128_u64[0] = 0x3FE55810624DD2F2;
  if ((v83 & 1) == 0)
  {
    v84.n128_f64[0] = 0.333;
  }

  v85 = MEMORY[0x1BFB3EDF0](0.35, v84, 0.0);
  v86 = sub_1BE04FE24();
  v87 = v81;
  v88 = v113;
  sub_1BD0DE204(v87, v113, &qword_1EBD3EF98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFD8);
  v90 = v88 + *(result + 36);
  *v90 = v85;
  *(v90 + 8) = v86 & 1;
  return result;
}

uint64_t sub_1BD249240()
{
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49860);
  type metadata accessor for CloseButton.NavigationCircularButtonStyle(255);
  sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
  sub_1BD249838(&qword_1EBD3EF18, type metadata accessor for CloseButton.NavigationCircularButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1BD24977C();
  return sub_1BE051C74();
}

id sub_1BD2494A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CloseButton.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD249538()
{
  result = type metadata accessor for CloseButton(319);
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

void sub_1BD249610()
{
  sub_1BD1030A8();
  if (v0 <= 0x3F)
  {
    sub_1BD249694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD249694()
{
  if (!qword_1EBD393A8)
  {
    sub_1BE04E354();
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD393A8);
    }
  }
}

uint64_t sub_1BD249710@<X0>(uint64_t a1@<X8>)
{
  sub_1BD2498A0(*(v1 + 16), a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF08);
  *(a1 + *(result + 36)) = 257;
  return result;
}

unint64_t sub_1BD24977C()
{
  result = qword_1EBD36860;
  if (!qword_1EBD36860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF08);
    sub_1BD249838(&qword_1EBD365B8, type metadata accessor for _CloseButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36860);
  }

  return result;
}

uint64_t sub_1BD249838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD2498A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD249904()
{
  v0 = [objc_opt_self() buttonWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFE0);
  sub_1BE04FF74();
  [v0 addTarget:v2 action:sel_doAction_ forControlEvents:64];

  return v0;
}

void sub_1BD2499A8()
{
  v1 = v0;
  v2 = type metadata accessor for CloseButton(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFE0);
  sub_1BE04FF74();
  v6 = v9;
  sub_1BD2498A0(v1, v5);
  v7 = OBJC_IVAR____TtCV9PassKitUIP33_B35F9F0AABC5170B961BBCB25164B78512_CloseButton11Coordinator_configuration;
  swift_beginAccess();
  sub_1BD24A47C(v5, v6 + v7);
  swift_endAccess();
}

uint64_t sub_1BD249A80@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CloseButton(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD2498A0(v1, v6);
  v7 = type metadata accessor for _CloseButton.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_1BD2498A0(v6, v8 + OBJC_IVAR____TtCV9PassKitUIP33_B35F9F0AABC5170B961BBCB25164B78512_CloseButton11Coordinator_configuration);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_1BD249CE0(v6, type metadata accessor for CloseButton);
  *a1 = v9;
  return result;
}

uint64_t sub_1BD249B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD249838(&unk_1EBD365C0, type metadata accessor for _CloseButton);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD249BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD249838(&unk_1EBD365C0, type metadata accessor for _CloseButton);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD249C88()
{
  sub_1BD249838(&unk_1EBD365C0, type metadata accessor for _CloseButton);
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD249CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD249D68()
{
  result = type metadata accessor for CloseButton(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1BD249EE0()
{
  result = sub_1BE04E354();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD249F54()
{
  result = qword_1EBD3EF40;
  if (!qword_1EBD3EF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49860);
    type metadata accessor for CloseButton.NavigationCircularButtonStyle(255);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
    sub_1BD249838(&qword_1EBD3EF18, type metadata accessor for CloseButton.NavigationCircularButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1BD24977C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EF40);
  }

  return result;
}

unint64_t sub_1BD24A110()
{
  result = qword_1EBD3EFA0;
  if (!qword_1EBD3EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF58);
    sub_1BD249838(&qword_1EBD3EFA8, MEMORY[0x1E697C8D0]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFA0);
  }

  return result;
}

uint64_t sub_1BD24A1F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD24A260()
{
  result = qword_1EBD3EFB8;
  if (!qword_1EBD3EFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF70);
    sub_1BD24A318();
    sub_1BD0DE4F4(&qword_1EBD3EFC8, &qword_1EBD3EFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFB8);
  }

  return result;
}

unint64_t sub_1BD24A318()
{
  result = qword_1EBD3EFC0;
  if (!qword_1EBD3EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF58);
    sub_1BD24A110();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFC0);
  }

  return result;
}

uint64_t sub_1BD24A40C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD24A47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD24A4E0()
{
  result = qword_1EBD3EFE8;
  if (!qword_1EBD3EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EFD8);
    sub_1BD24A598();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFE8);
  }

  return result;
}

unint64_t sub_1BD24A598()
{
  result = qword_1EBD3EFF0;
  if (!qword_1EBD3EFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF98);
    sub_1BD24A624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFF0);
  }

  return result;
}

unint64_t sub_1BD24A624()
{
  result = qword_1EBD3EFF8;
  if (!qword_1EBD3EFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF90);
    sub_1BD24A6DC();
    sub_1BD0DE4F4(&qword_1EBD3F018, &qword_1EBD3F020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFF8);
  }

  return result;
}

unint64_t sub_1BD24A6DC()
{
  result = qword_1EBD3F000;
  if (!qword_1EBD3F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF88);
    sub_1BD24A794();
    sub_1BD0DE4F4(&qword_1EBD3F010, &qword_1EBD3EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F000);
  }

  return result;
}

unint64_t sub_1BD24A794()
{
  result = qword_1EBD3F008;
  if (!qword_1EBD3F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF70);
    sub_1BD24A260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F008);
  }

  return result;
}

void sub_1BD24A91C(uint64_t (*a1)(void), void (*a2)(uint64_t), uint64_t a3)
{
  v7 = v3;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BD026000, v13, v14, "startAuthenticatorEvaluation", v15, 2u);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  v16 = (*(v9 + 8))(v12, v8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = a1(0);
  *(&v41 - 2) = v18;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v20);
  *(&v41 - 2) = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  v21 = sub_1BE04CA64();

  if (v21)
  {
    MEMORY[0x1EEE9AC00](v22, v23);
    *(&v41 - 2) = v18;
    v24 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v24, v25);
    *(&v41 - 2) = v18;
    swift_getKeyPath();
    sub_1BE04D8B4();

    v26 = sub_1BE04CB34();

    if (v26)
    {
      a2(v22);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](v22, v23);
  *(&v41 - 2) = v18;
  v27 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v41 - 2) = v18;
  swift_getKeyPath();
  sub_1BE04D8B4();

  v29 = sub_1BE04CA44();

  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v41 - 2) = v18;
  v32 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v41 - 2) = v18;
  swift_getKeyPath();
  if (v29)
  {
    sub_1BE04D8B4();

    a3 = sub_1BE04C984();

    v34 = MEMORY[0x1E69E7D40];
    if ((a3 & 1) == 0)
    {
      [*(*(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x70)) + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) fallbackToSystemPasscodeUI];
      return;
    }

    sub_1BD7F2C38();
    v7 = *(v7 + *((*v34 & *v7) + 0xD0));
    v35 = [v7 paymentRequest];
    if (v35)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  sub_1BE04D8B4();

  v36 = sub_1BE04C984();

  if ((v36 & 1) == 0)
  {
    (a3)(v37);
    return;
  }

  v38 = MEMORY[0x1E69E7D40];
  sub_1BD7F2C38();
  v7 = *(v7 + *((*v38 & *v7) + 0xD0));
  v35 = [v7 paymentRequest];
  if (!v35)
  {
    __break(1u);
    return;
  }

LABEL_12:
  v39 = v35;
  if ([v35 _isAMPPayment])
  {
    v40 = [v7 mode];

    if (v40 == 1)
    {
      [v7 fallbackToBypassMode];
    }
  }

  else
  {
  }
}

void sub_1BD24AEE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a2 + 32) = sub_1BE04EEC4();
  *(a2 + 40) = v4;
  v11[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F028);
  sub_1BE051694();
  v5 = *(&v12[0] + 1);
  *(a2 + 56) = v12[0];
  *(a2 + 64) = v5;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1BD0DE19C(v12, v11, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v12, &qword_1EBD51EC0);
  *(a2 + 120) = sub_1BD24B1AC;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  *(a2 + 160) = 0x4052800000000000;
  *(a2 + 48) = a1;
  type metadata accessor for IdentityAuthorizationModel(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  sub_1BE04D8B4();

  sub_1BD2512E0(&qword_1EBD3F030, type metadata accessor for IdentityAuthorizationModel);
  *a2 = sub_1BE04E954();
  *(a2 + 8) = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  type metadata accessor for AuthenticatorModel();
  sub_1BD2512E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v8 = sub_1BE04E954();
  v10 = v9;

  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
}

uint64_t sub_1BD24B1AC()
{
  type metadata accessor for KeyboardObserver();
  swift_allocObject();
  return sub_1BD4D8F0C();
}

uint64_t sub_1BD24B1E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v210 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F038);
  v208 = *(v3 - 8);
  v209 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v207 = &v181 - v5;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F040);
  MEMORY[0x1EEE9AC00](v205, v6);
  v206 = &v181 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F048);
  v203 = *(v8 - 8);
  v204 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v213 = &v181 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F050);
  v201 = *(v11 - 8);
  v202 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v181 - v13;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37180);
  MEMORY[0x1EEE9AC00](v212, v15);
  v211 = &v181 - v16;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F058);
  MEMORY[0x1EEE9AC00](v195, v17);
  v198 = (&v181 - v18);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F060);
  MEMORY[0x1EEE9AC00](v193, v19);
  v194 = &v181 - v20;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F068);
  MEMORY[0x1EEE9AC00](v191, v21);
  v192 = &v181 - v22;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F070);
  v197 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183, v23);
  v190 = &v181 - v24;
  v25 = *(v1 + 24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v181 - v28;
  v215 = v25;
  sub_1BE04CB14();
  v30 = sub_1BE04CB04();
  LODWORD(v25) = (*(*(v30 - 8) + 48))(v29, 1, v30);
  sub_1BD0DE53C(v29, &unk_1EBD52000);
  v200 = v14;
  sub_1BD250A68(v2, &v244);
  v31 = swift_allocObject();
  v32 = v253;
  *(v31 + 144) = v252;
  *(v31 + 160) = v32;
  *(v31 + 176) = v254;
  v33 = v249;
  *(v31 + 80) = v248;
  *(v31 + 96) = v33;
  v34 = v251;
  *(v31 + 112) = v250;
  *(v31 + 128) = v34;
  v35 = v245;
  *(v31 + 16) = v244;
  *(v31 + 32) = v35;
  v36 = v247;
  *(v31 + 48) = v246;
  *(v31 + 64) = v36;
  if (v25 == 1)
  {
    v37 = sub_1BD251498;
  }

  else
  {
    v37 = sub_1BD2510B4;
  }

  v188 = v37;
  v199 = *(v2 + 8);
  v38 = sub_1BE04C8C4();
  v186 = v39;
  v187 = v38;
  v40 = sub_1BE04CAE4();
  if (sub_1BE051C54())
  {
    v41 = 10.0;
  }

  else
  {
    v41 = 18.0;
  }

  v185 = v40 & 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F078);
  v189 = &v181;
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = &v181 - v44;
  sub_1BD250A68(v2, &v244);
  v46 = swift_allocObject();
  v47 = v253;
  *(v46 + 144) = v252;
  *(v46 + 160) = v47;
  *(v46 + 176) = v254;
  v48 = v249;
  *(v46 + 80) = v248;
  *(v46 + 96) = v48;
  v49 = v251;
  *(v46 + 112) = v250;
  *(v46 + 128) = v49;
  v50 = v245;
  *(v46 + 16) = v244;
  *(v46 + 32) = v50;
  v51 = v247;
  *(v46 + 48) = v246;
  *(v46 + 64) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F080);
  sub_1BD0DE4F4(&qword_1EBD3F088, &qword_1EBD3F080);
  sub_1BE04C664();
  v52 = sub_1BE04E8A4();
  v53 = *(v52 - 8);
  v214 = v2;
  v54 = v53;
  v55 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52, v56);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = sub_1BE04E894();
  v60 = MEMORY[0x1EEE9AC00](v58, v59);
  (*(v54 + 16))(&v181 - v57, &v181 - v57, v52, v60);
  sub_1BD2512E0(&unk_1EBD36878, MEMORY[0x1E697E410]);
  v61 = sub_1BE04E644();
  (*(v54 + 8))(&v181 - v57, v52);
  v62 = v214;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F090);
  v64 = *(v63 + 36);
  v182 = v45;
  *&v45[v64] = v61;
  (*(*(v63 - 8) + 56))(v45, 0, 1, v63);
  sub_1BD24CC08(&v216);
  v241 = v222;
  v242 = v223;
  v243 = v224;
  v237 = v218;
  v238 = v219;
  v239 = v220;
  v240 = v221;
  v235 = v216;
  v236 = v217;
  v65 = *(v62 + 48);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4B8);
  v233 = sub_1BD0DE4F4(&qword_1EBD3F098, &qword_1EBD3D4B8);
  *&v230 = v65;
  sub_1BD250A68(v62, &v244);
  v66 = swift_allocObject();
  v184 = &v181;
  *(v66 + 176) = v254;
  v67 = v253;
  *(v66 + 144) = v252;
  *(v66 + 160) = v67;
  v68 = v249;
  *(v66 + 80) = v248;
  *(v66 + 96) = v68;
  v69 = v251;
  *(v66 + 112) = v250;
  *(v66 + 128) = v69;
  v70 = v245;
  *(v66 + 16) = v244;
  *(v66 + 32) = v70;
  v71 = v247;
  *(v66 + 48) = v246;
  *(v66 + 64) = v71;
  MEMORY[0x1EEE9AC00](v66, v72);
  v74 = &v181 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v183;
  v76 = &v74[*(v183 + 104)];
  v77 = sub_1BD250AA8();
  v78 = sub_1BD2512E0(&qword_1EBD35E40, sub_1BD250AA8);
  sub_1BE048964();
  v79 = v65;
  v196 = v78;
  v197 = v77;
  v80 = v182;
  *v76 = sub_1BE04EEC4();
  v76[1] = v81;
  v82 = &v74[v75[27]];
  sub_1BE04CDA4();
  sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *v82 = sub_1BE04EEC4();
  v82[1] = v83;
  v84 = &v74[v75[28]];
  LOBYTE(v229[0]) = 0;
  sub_1BE051694();
  v85 = *(&v244 + 1);
  *v84 = v244;
  *(v84 + 1) = v85;
  v86 = &v74[v75[29]];
  *v86 = swift_getKeyPath();
  v86[8] = 0;
  v87 = v186;
  *v74 = v187;
  *(v74 + 1) = v87;
  *(v74 + 2) = 0;
  *(v74 + 3) = 0xE000000000000000;
  *(v74 + 4) = v188;
  *(v74 + 5) = v31;
  v74[48] = v185;
  *(v74 + 13) = *&v234[3];
  *(v74 + 49) = *v234;
  *(v74 + 7) = sub_1BD24E154;
  *(v74 + 8) = 0;
  *(v74 + 9) = 0x4032000000000000;
  *(v74 + 10) = v41;
  *(v74 + 88) = xmmword_1BE0B7110;
  sub_1BD0DE19C(v80, &v74[v75[17]], &qword_1EBD3F078);
  v88 = &v74[v75[18]];
  v89 = v242;
  *(v88 + 6) = v241;
  *(v88 + 7) = v89;
  *(v88 + 8) = v243;
  v90 = v238;
  *(v88 + 2) = v237;
  *(v88 + 3) = v90;
  v91 = v240;
  *(v88 + 4) = v239;
  *(v88 + 5) = v91;
  v92 = v236;
  *v88 = v235;
  *(v88 + 1) = v92;
  *&v74[v75[19]] = 0;
  v74[v75[20]] = 0;
  *&v74[v75[21]] = v215;
  sub_1BD0EE8CC(&v230, &v74[v75[22]]);
  v74[v75[23]] = 1;
  v93 = &v74[v75[25]];
  *v93 = sub_1BD251498;
  v93[1] = v66;
  sub_1BD0EE8CC(&v230, v229);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v227, &v244);
    v94 = *(&v245 + 1);
    v95 = v246;
    __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
    (*(v95 + 56))(v229, v94, v95);
    sub_1BD0DE53C(v80, &qword_1EBD3F078);
    __swift_destroy_boxed_opaque_existential_0(&v230);
    v74[v75[24]] = v229[0];
    __swift_destroy_boxed_opaque_existential_0(&v244);
  }

  else
  {
    sub_1BD0DE53C(v80, &qword_1EBD3F078);
    __swift_destroy_boxed_opaque_existential_0(&v230);
    v228 = 0;
    memset(v227, 0, sizeof(v227));
    sub_1BD0DE53C(v227, &qword_1EBD389A0);
    v74[v75[24]] = 2;
  }

  v96 = v190;
  sub_1BD0DE204(v74, v190, &qword_1EBD3F070);
  v97 = v214;
  v98 = v211;
  if (*(v214 + 32))
  {
    sub_1BE048964();
    sub_1BE04CD14();

    v99 = sub_1BE051D94();
    v100 = v192;
    v101 = &v192[*(v191 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A0);
    sub_1BE04CB14();
    *v101 = v99;
    sub_1BD0DE204(v96, v100, &qword_1EBD3F070);
    sub_1BE048964();
    sub_1BE04CD14();

    v102 = sub_1BE051D94();
    v103 = sub_1BE04CB54();
    v104 = v194;
    sub_1BD0DE19C(v100, v194, &qword_1EBD3F068);
    v105 = v104 + *(v193 + 36);
    *v105 = v102;
    *(v105 + 8) = v103 & 1;
    sub_1BD0DE53C(v100, &qword_1EBD3F068);
    sub_1BE048964();
    sub_1BE04CD14();

    v106 = sub_1BE051D94();
    type metadata accessor for KeyboardObserver();
    sub_1BD2512E0(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v107 = v244;
    LOBYTE(v101) = BYTE8(v244);
    v108 = v198;
    sub_1BD0DE204(v104, v198, &qword_1EBD3F060);
    v109 = v108 + *(v195 + 9);
    *v109 = v106;
    *(v109 + 8) = v107;
    *(v109 + 16) = v101;
    sub_1BD250A68(v97, &v244);
    v110 = swift_allocObject();
    v111 = v253;
    *(v110 + 144) = v252;
    *(v110 + 160) = v111;
    *(v110 + 176) = v254;
    v112 = v249;
    *(v110 + 80) = v248;
    *(v110 + 96) = v112;
    v113 = v251;
    *(v110 + 112) = v250;
    *(v110 + 128) = v113;
    v114 = v245;
    *(v110 + 16) = v244;
    *(v110 + 32) = v114;
    v115 = v247;
    *(v110 + 48) = v246;
    *(v110 + 64) = v115;
    sub_1BD0DE204(v108, v98, &qword_1EBD3F058);
    v116 = (v98 + *(v212 + 36));
    *v116 = sub_1BD250AF4;
    v116[1] = v110;
    v116[2] = 0;
    v116[3] = 0;
    sub_1BD250A68(v97, &v244);
    sub_1BE0528A4();
    v117 = sub_1BE052894();
    v118 = swift_allocObject();
    v119 = MEMORY[0x1E69E85E0];
    *(v118 + 16) = v117;
    *(v118 + 24) = v119;
    v120 = v253;
    *(v118 + 160) = v252;
    *(v118 + 176) = v120;
    *(v118 + 192) = v254;
    v121 = v249;
    *(v118 + 96) = v248;
    *(v118 + 112) = v121;
    v122 = v251;
    *(v118 + 128) = v250;
    *(v118 + 144) = v122;
    v123 = v245;
    *(v118 + 32) = v244;
    *(v118 + 48) = v123;
    v124 = v247;
    *(v118 + 64) = v246;
    *(v118 + 80) = v124;
    v125 = sub_1BE0528D4();
    v198 = &v181;
    v126 = *(v125 - 8);
    v127 = *(v126 + 64);
    MEMORY[0x1EEE9AC00](v125, v128);
    v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
    v130 = &v181 - v129;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v194 = sub_1BE04EAA4();
      v195 = &v181;
      v193 = *(v194 - 8);
      MEMORY[0x1EEE9AC00](v194, v131);
      v192 = &v181 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v216 = 0;
      *(&v216 + 1) = 0xE000000000000000;
      sub_1BE053834();

      *&v216 = 0xD00000000000002ALL;
      *(&v216 + 1) = 0x80000001BE11F670;
      *&v230 = 81;
      v133 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v133);

      v136 = MEMORY[0x1EEE9AC00](v134, v135);
      (*(v126 + 16))(&v181 - v129, &v181 - v129, v125, v136);
      v137 = v192;
      sub_1BE04EA94();
      (*(v126 + 8))(v130, v125);
      v138 = v200;
      sub_1BD0DE204(v211, v200, &qword_1EBD37180);
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37188);
      (*(v193 + 32))(v138 + *(v139 + 36), v137, v194);
    }

    else
    {
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37190);
      v138 = v200;
      v141 = &v200[*(v140 + 36)];
      v142 = sub_1BE04E7B4();
      (*(v126 + 32))(&v141[*(v142 + 20)], &v181 - v129, v125);
      *v141 = &unk_1BE0C54E8;
      *(v141 + 1) = v118;
      sub_1BD0DE204(v98, v138, &qword_1EBD37180);
    }

    v143 = v214;
    v144 = *(v214 + 64);
    LOBYTE(v230) = *(v214 + 56);
    *(&v230 + 1) = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A8);
    sub_1BE0516C4();
    v230 = v216;
    v231 = v217;
    sub_1BD250A68(v143, &v216);
    v145 = swift_allocObject();
    v146 = v225;
    *(v145 + 144) = v224;
    *(v145 + 160) = v146;
    *(v145 + 176) = v226;
    v147 = v221;
    *(v145 + 80) = v220;
    *(v145 + 96) = v147;
    v148 = v223;
    *(v145 + 112) = v222;
    *(v145 + 128) = v148;
    v149 = v217;
    *(v145 + 16) = v216;
    *(v145 + 32) = v149;
    v150 = v219;
    *(v145 + 48) = v218;
    *(v145 + 64) = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0B0);
    v151 = sub_1BD250BC4();
    *&v216 = v212;
    *(&v216 + 1) = v151;
    swift_getOpaqueTypeConformance2();
    sub_1BD250EA4();
    sub_1BD0DE4F4(&qword_1EBD3F0E8, &qword_1EBD3F0B0);
    v152 = v202;
    sub_1BE051124();

    (*(v201 + 8))(v138, v152);
    v153 = v214;
    type metadata accessor for AuthenticatorModel();
    sub_1BD2512E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    sub_1BE04E964();
    swift_getKeyPath();
    sub_1BE04E974();

    v215 = *(&v230 + 1);
    v154 = v230;
    LODWORD(v212) = v231;
    sub_1BD250A68(v153, &v216);
    v155 = swift_allocObject();
    v156 = v225;
    *(v155 + 144) = v224;
    *(v155 + 160) = v156;
    *(v155 + 176) = v226;
    v157 = v221;
    *(v155 + 80) = v220;
    *(v155 + 96) = v157;
    v158 = v223;
    *(v155 + 112) = v222;
    *(v155 + 128) = v158;
    v159 = v217;
    *(v155 + 16) = v216;
    *(v155 + 32) = v159;
    v160 = v219;
    *(v155 + 48) = v218;
    *(v155 + 64) = v160;
    v161 = sub_1BE04EEC4();
    v163 = v162;
    type metadata accessor for PresentationContext();
    sub_1BD2512E0(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    v164 = sub_1BE04EEC4();
    v166 = v165;
    LOBYTE(v227[0]) = 0;
    v167 = v206;
    (*(v203 + 32))(v206, v213, v204);
    v168 = v167 + *(v205 + 36);
    v169 = v215;
    *v168 = v154;
    *(v168 + 8) = v169;
    *(v168 + 16) = v212;
    *(v168 + 17) = v229[0];
    *(v168 + 20) = *(v229 + 3);
    *(v168 + 24) = sub_1BD250EF8;
    *(v168 + 32) = v155;
    *(v168 + 40) = v161;
    *(v168 + 48) = v163;
    *(v168 + 56) = v164;
    *(v168 + 64) = v166;
    *(v168 + 72) = sub_1BD644BF8;
    *(v168 + 80) = 0;
    *(v168 + 88) = v227[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
    sub_1BE0516C4();
    sub_1BD250F00();
    v170 = v207;
    sub_1BE050704();
    sub_1BD0DE53C(&v216, &qword_1EBD51FA0);
    sub_1BD0DE53C(v167, &qword_1EBD3F040);
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F108);
    v172 = v210;
    sub_1BE04C924();
    sub_1BD250A68(v153, &v216);
    v173 = swift_allocObject();
    v174 = v225;
    *(v173 + 144) = v224;
    *(v173 + 160) = v174;
    *(v173 + 176) = v226;
    v175 = v221;
    *(v173 + 80) = v220;
    *(v173 + 96) = v175;
    v176 = v223;
    *(v173 + 112) = v222;
    *(v173 + 128) = v176;
    v177 = v217;
    *(v173 + 16) = v216;
    *(v173 + 32) = v177;
    v178 = v219;
    *(v173 + 48) = v218;
    *(v173 + 64) = v178;
    result = (*(v208 + 32))(v172, v170, v209);
    v180 = (v172 + *(v171 + 56));
    *v180 = sub_1BD2510AC;
    v180[1] = v173;
  }

  else
  {
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

__n128 sub_1BD24CC08@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04E8A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v26[-v15];
  sub_1BE04CB14();
  v17 = sub_1BE04CB04();
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    sub_1BD0DE53C(v16, &unk_1EBD52000);
    v18 = sub_1BE04F7B4();
    v27 = 0;
    sub_1BD250728(v2, &v38);
    v32 = v42;
    v33 = v43;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v35[1] = v39;
    v35[2] = v40;
    v34 = v44;
    v35[0] = v38;
    v35[3] = v41;
    v35[4] = v42;
    v35[5] = v43;
    v35[6] = v44;
    sub_1BD0DE19C(&v28, &v36, &qword_1EBD3F128);
    sub_1BD0DE53C(v35, &qword_1EBD3F128);
    *&v26[55] = v31;
    *&v26[71] = v32;
    *&v26[87] = v33;
    *&v26[103] = v34;
    *&v26[7] = v28;
    *&v26[23] = v29;
    *&v26[39] = v30;
    v19 = v27;
    sub_1BE04E894();
    (*(v5 + 16))(v8, v12, v4);
    sub_1BD2512E0(&unk_1EBD36878, MEMORY[0x1E697E410]);
    v20 = sub_1BE04E644();
    (*(v5 + 8))(v12, v4);
    *(&v37[4] + 1) = *&v26[64];
    *(&v37[5] + 1) = *&v26[80];
    *(&v37[6] + 1) = *&v26[96];
    *(v37 + 1) = *v26;
    *(&v37[1] + 1) = *&v26[16];
    *(&v37[2] + 1) = *&v26[32];
    v36 = v18;
    LOBYTE(v37[0]) = v19;
    *(&v37[3] + 1) = *&v26[48];
    *&v37[7] = *&v26[111];
    *(&v37[7] + 1) = v20;
    PKEdgeInsetsMake(&v36, v21);
    v44 = v37[5];
    v45 = v37[6];
    v46 = v37[7];
    v40 = v37[1];
    v41 = v37[2];
    v42 = v37[3];
    v43 = v37[4];
    v38 = v36;
    v39 = v37[0];
  }

  else
  {
    sub_1BD0DE53C(v16, &unk_1EBD52000);
    sub_1BD251114(&v38);
  }

  v22 = v45;
  *(a1 + 96) = v44;
  *(a1 + 112) = v22;
  *(a1 + 128) = v46;
  v23 = v41;
  *(a1 + 32) = v40;
  *(a1 + 48) = v23;
  v24 = v43;
  *(a1 + 64) = v42;
  *(a1 + 80) = v24;
  result = v39;
  *a1 = v38;
  *(a1 + 16) = result;
  return result;
}

id sub_1BD24CF94()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*(v1 + 24) + qword_1EBDAADA8 + 32) paymentRequest];
  if (v8)
  {
    v9 = v8;
    sub_1BD6B50F8(1, v8);
  }

  else
  {
    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "paymentRequest was nil when trying to call trackButtonTag for dismiss.", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  return sub_1BD7423B4();
}

uint64_t sub_1BD24D124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_1BE0528A4();
  v3[3] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD24D1BC, v5, v4);
}

uint64_t sub_1BD24D1BC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1BD24D250;

  return sub_1BD693EF8();
}

uint64_t sub_1BD24D250()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1BD16DC40, v3, v2);
}

id sub_1BD24D370@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F110);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F118);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F120);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v42 - v15;
  result = [*(*(a1 + 48) + *((*MEMORY[0x1E69E7D40] & **(a1 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v18 = result;
    v19 = [result requestType];

    sub_1BD4EC960(v19, v7);
    sub_1BD250A68(a1, &v43);
    v20 = swift_allocObject();
    v21 = v52;
    *(v20 + 144) = v51;
    *(v20 + 160) = v21;
    *(v20 + 176) = v53;
    v22 = v48;
    *(v20 + 80) = v47;
    *(v20 + 96) = v22;
    v23 = v50;
    *(v20 + 112) = v49;
    *(v20 + 128) = v23;
    v24 = v44;
    *(v20 + 16) = v43;
    *(v20 + 32) = v24;
    v25 = v46;
    *(v20 + 48) = v45;
    *(v20 + 64) = v25;
    sub_1BD0DE204(v7, v11, &qword_1EBD3F110);
    v26 = &v11[*(v8 + 36)];
    *v26 = sub_1BD2510E0;
    v26[1] = v20;
    v26[2] = 0;
    v26[3] = 0;
    sub_1BD250A68(a1, &v43);
    v27 = swift_allocObject();
    v28 = v52;
    *(v27 + 144) = v51;
    *(v27 + 160) = v28;
    *(v27 + 176) = v53;
    v29 = v48;
    *(v27 + 80) = v47;
    *(v27 + 96) = v29;
    v30 = v50;
    *(v27 + 112) = v49;
    *(v27 + 128) = v30;
    v31 = v44;
    *(v27 + 16) = v43;
    *(v27 + 32) = v31;
    v32 = v46;
    *(v27 + 48) = v45;
    *(v27 + 64) = v32;
    sub_1BD0DE204(v11, v16, &qword_1EBD3F118);
    v33 = &v16[*(v12 + 36)];
    *v33 = 0;
    *(v33 + 1) = 0;
    *(v33 + 2) = sub_1BD251104;
    *(v33 + 3) = v27;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0B0);
    sub_1BE04CA34();
    sub_1BD250A68(a1, &v43);
    v35 = swift_allocObject();
    v36 = v52;
    *(v35 + 144) = v51;
    *(v35 + 160) = v36;
    *(v35 + 176) = v53;
    v37 = v48;
    *(v35 + 80) = v47;
    *(v35 + 96) = v37;
    v38 = v50;
    *(v35 + 112) = v49;
    *(v35 + 128) = v38;
    v39 = v44;
    *(v35 + 16) = v43;
    *(v35 + 32) = v39;
    v40 = v46;
    *(v35 + 48) = v45;
    *(v35 + 64) = v40;
    result = sub_1BD0DE204(v16, a2, &qword_1EBD3F120);
    v41 = (a2 + *(v34 + 56));
    *v41 = sub_1BD25110C;
    v41[1] = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD24D730()
{
  sub_1BD742DCC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  sub_1BE048C84();
  sub_1BD146D0C(v9);
  if (*(&v2 + 1))
  {
    v0 = *MEMORY[0x1E69DD888];
    v1 = sub_1BE052404();

    UIAccessibilityPostNotification(v0, v1);
  }
}

uint64_t sub_1BD24D81C(uint64_t a1)
{
  v2 = sub_1BE04CA04();
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A8);
    return sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD24D8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - v6;
  v8 = *(a1 + 24);
  sub_1BE04CB14();
  v9 = sub_1BE04CB04();
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_1BD0DE53C(v7, &unk_1EBD52000);
  sub_1BD250A68(a1, &v61);
  v11 = swift_allocObject();
  v12 = v70;
  *(v11 + 144) = v69;
  *(v11 + 160) = v12;
  *(v11 + 176) = v71;
  v13 = v66;
  *(v11 + 80) = v65;
  *(v11 + 96) = v13;
  v14 = v68;
  *(v11 + 112) = v67;
  *(v11 + 128) = v14;
  v15 = v62;
  *(v11 + 16) = v61;
  *(v11 + 32) = v15;
  v16 = v64;
  *(v11 + 48) = v63;
  *(v11 + 64) = v16;
  if (v10 == 1)
  {
    v17 = sub_1BD251498;
  }

  else
  {
    v17 = sub_1BD25149C;
  }

  v45 = v17;
  v18 = sub_1BE04C8C4();
  v43 = v19;
  v44 = v18;
  v20 = sub_1BE04CAE4();
  if (sub_1BE051C54())
  {
    v21 = 10.0;
  }

  else
  {
    v21 = 18.0;
  }

  v22 = v20 & 1;
  sub_1BD24CC08(v50);
  v58 = v50[6];
  v59 = v50[7];
  v60 = v50[8];
  v54 = v50[2];
  v55 = v50[3];
  v56 = v50[4];
  v57 = v50[5];
  v52 = v50[0];
  v53 = v50[1];
  v23 = *(a1 + 48);
  v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4B8);
  v49[4] = sub_1BD0DE4F4(&qword_1EBD3F098, &qword_1EBD3D4B8);
  v49[0] = v23;
  sub_1BD250A68(a1, &v61);
  v24 = swift_allocObject();
  v25 = v70;
  *(v24 + 144) = v69;
  *(v24 + 160) = v25;
  *(v24 + 176) = v71;
  v26 = v66;
  *(v24 + 80) = v65;
  *(v24 + 96) = v26;
  v27 = v68;
  *(v24 + 112) = v67;
  *(v24 + 128) = v27;
  v28 = v62;
  *(v24 + 16) = v61;
  *(v24 + 32) = v28;
  v29 = v64;
  *(v24 + 48) = v63;
  *(v24 + 64) = v29;
  sub_1BD250AA8();
  sub_1BD2512E0(&qword_1EBD35E40, sub_1BD250AA8);
  sub_1BE048964();
  v30 = v23;
  *(a2 + 344) = sub_1BE04EEC4();
  *(a2 + 352) = v31;
  sub_1BE04CDA4();
  sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a2 + 360) = sub_1BE04EEC4();
  *(a2 + 368) = v32;
  LOBYTE(v48[0]) = 0;
  sub_1BE051694();
  v33 = *(&v61 + 1);
  *(a2 + 376) = v61;
  *(a2 + 384) = v33;
  *(a2 + 392) = swift_getKeyPath();
  *(a2 + 400) = 0;
  v34 = v43;
  *a2 = v44;
  *(a2 + 8) = v34;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = v45;
  *(a2 + 40) = v11;
  *(a2 + 48) = v22;
  *(a2 + 49) = *v51;
  *(a2 + 52) = *&v51[3];
  *(a2 + 56) = sub_1BD24E154;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4032000000000000;
  *(a2 + 80) = v21;
  *(a2 + 88) = xmmword_1BE0B7110;
  *(a2 + 104) = 0;
  v35 = v59;
  *(a2 + 208) = v58;
  *(a2 + 224) = v35;
  *(a2 + 240) = v60;
  v36 = v55;
  *(a2 + 144) = v54;
  *(a2 + 160) = v36;
  v37 = v57;
  *(a2 + 176) = v56;
  *(a2 + 192) = v37;
  v38 = v53;
  *(a2 + 112) = v52;
  *(a2 + 128) = v38;
  *(a2 + 256) = 0;
  *(a2 + 264) = 1;
  *(a2 + 272) = v8;
  sub_1BD0EE8CC(v49, a2 + 280);
  *(a2 + 320) = 1;
  *(a2 + 328) = sub_1BD2510BC;
  *(a2 + 336) = v24;
  sub_1BD0EE8CC(v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v46, &v61);
    v39 = *(&v62 + 1);
    v40 = v63;
    __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
    (*(v40 + 56))(v48, v39, v40);
    __swift_destroy_boxed_opaque_existential_0(v49);
    *(a2 + 321) = v48[0];
    return __swift_destroy_boxed_opaque_existential_0(&v61);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    result = sub_1BD0DE53C(v46, &qword_1EBD389A0);
    *(a2 + 321) = 2;
  }

  return result;
}

uint64_t sub_1BD24DE44(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v3, &qword_1EBD51EC0);
  if (v4)
  {
    sub_1BD043990(&v3, &v5);
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v5, &v3);
      sub_1BD0DE19C(&v3, &v2, &qword_1EBD51EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
      return __swift_destroy_boxed_opaque_existential_0(&v5);
    }

    __swift_destroy_boxed_opaque_existential_0(&v5);
  }

  else
  {
    sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  sub_1BD0DE19C(&v5, &v3, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v5, &qword_1EBD51EC0);
}

uint64_t sub_1BD24DFBC()
{
  v0 = sub_1BE04C974();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_1BE04CB04();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BE04CB24();
  (*(v1 + 104))(v4, *MEMORY[0x1E69BCA70], v0);
  sub_1BD741B28(v4);
  v10 = (*(v1 + 8))(v4, v0);
  sub_1BD741FB8(v10);
  return sub_1BD742234();
}

id sub_1BD24E154@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1D0);
  return sub_1BD24E1A4(a1 + *(v2 + 44));
}

id sub_1BD24E1A4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v35 = sub_1BE04EB24();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    v36 = v12;
    v37 = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    LOBYTE(v11) = v18;
    sub_1BE0503D4();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v15, v17, v11 & 1);

    sub_1BE050384();
    v24 = sub_1BE050544();
    v26 = v25;
    LOBYTE(v15) = v27;
    v29 = v28;
    sub_1BD0DDF10(v19, v21, v23 & 1);

    v36 = v24;
    v37 = v26;
    v38 = v15 & 1;
    v39 = v29;
    v30 = v33;
    v31 = v35;
    (*(v33 + 104))(v3, *MEMORY[0x1E697E6E8], v35);
    sub_1BE050B24();
    (*(v30 + 8))(v3, v31);
    sub_1BD0DDF10(v24, v26, v15 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD24E4AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v73, v4);
  v74 = (v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F130);
  MEMORY[0x1EEE9AC00](v71[0], v6);
  v79 = (v71 - v7);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F138);
  v8 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v9);
  v72 = v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v77 = v71 - v13;
  v14 = type metadata accessor for AvailablePass(0);
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v78 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v92 = v71 - v19;
  v20 = type metadata accessor for IdentityPassVendor();
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F148);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v71 - v30;
  v71[1] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v32 = *(&v107[0] + 1);
  if (*(&v107[0] + 1) || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , (v32 = *(&v107[0] + 1)) != 0))
  {
    v84 = v32;
    v83 = *&v107[0];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v89 = a2;
    if (*(&v107[0] + 1))
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v81 = *(&v107[0] + 1);
      v82 = *&v107[0];
    }

    else
    {
      v81 = 0;
      v82 = *&v107[0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v87 = v27;
    v88 = v8;
    v85 = v23;
    v86 = v31;
    if (*&v107[0])
    {
      v80 = sub_1BE051544();
    }

    else
    {
      v80 = 0;
    }

    KeyPath = swift_getKeyPath();
    v34 = swift_getKeyPath();
    v95 = 0;
    v94 = 0;
    v35 = sub_1BE050204();
    sub_1BE04E1F4();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = v95;
    v45 = v94;
    v97[0] = 0;
    v46 = sub_1BE0501F4();
    v98[0] = 1;
    sub_1BE051CE4();
    sub_1BE04EE54();
    *&v96[55] = v103;
    *&v96[71] = v104;
    *&v96[87] = v105;
    *&v96[103] = v106;
    *&v96[7] = v100;
    *&v96[23] = v101;
    *&v96[39] = v102;
    v99[0] = KeyPath;
    LOBYTE(v99[1]) = v44;
    v99[2] = v34;
    LOBYTE(v99[3]) = v45;
    v99[4] = v83;
    v99[5] = v84;
    v99[6] = v82;
    v99[7] = v81;
    v99[8] = v80;
    LOBYTE(v99[9]) = 1;
    LOBYTE(v99[10]) = v35;
    v99[11] = v37;
    v99[12] = v39;
    v99[13] = v41;
    v99[14] = v43;
    LOBYTE(v99[15]) = 0;
    LOBYTE(v99[16]) = v46;
    memset(&v99[17], 0, 32);
    LOBYTE(v99[21]) = 1;
    *(&v99[33] + 1) = *&v96[96];
    *(&v99[29] + 1) = *&v96[64];
    *(&v99[31] + 1) = *&v96[80];
    v99[35] = *(&v106 + 1);
    *(&v99[21] + 1) = *v96;
    *(&v99[23] + 1) = *&v96[16];
    *(&v99[25] + 1) = *&v96[32];
    *(&v99[27] + 1) = *&v96[48];
    PKEdgeInsetsMake(v99, v47);
    memcpy(v107, v99, sizeof(v107));
    v8 = v88;
    a2 = v89;
    v31 = v86;
    v27 = v87;
    v23 = v85;
  }

  else
  {
    sub_1BD251190(v107);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v92;
  sub_1BE04D8B4();

  if ((*(v90 + 48))(v48, 1, v91) == 1)
  {
    sub_1BD0DE53C(v48, &qword_1EBD3F140);
LABEL_14:
    v50 = a2;
    (*(v8 + 56))(v31, 1, 1, v93);
    goto LABEL_18;
  }

  sub_1BD2511BC(v48, v23, type metadata accessor for IdentityPassVendor);
  v49 = v77;
  sub_1BD0DE19C(v23, v77, &qword_1EBD520A0);
  if ((*(v75 + 48))(v49, 1, v76) == 1)
  {
    sub_1BD0DE53C(v49, &qword_1EBD520A0);
    sub_1BD25138C(v23, type metadata accessor for IdentityPassVendor);
    goto LABEL_14;
  }

  v51 = v49;
  v52 = v78;
  sub_1BD2511BC(v51, v78, type metadata accessor for AvailablePass);
  v53 = sub_1BE04F7B4();
  v54 = v79;
  *v79 = v53;
  v54[1] = 0;
  *(v54 + 16) = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F160);
  sub_1BD24EFAC(v52, v23, v54 + *(v55 + 44));
  v56 = sub_1BE051254();
  v57 = sub_1BE051CD4();
  v58 = (v54 + *(v71[0] + 36));
  *v58 = v56;
  v58[1] = v57;
  v58[2] = v59;
  v60 = 26.0;
  v50 = a2;
  if ((sub_1BE051C54() & 1) == 0)
  {
    sub_1BE04C7E4();
    v60 = v61;
  }

  v62 = *(v73 + 20);
  v63 = *MEMORY[0x1E697F468];
  v64 = sub_1BE04F684();
  v65 = v74;
  (*(*(v64 - 8) + 104))(v74 + v62, v63, v64);
  *v65 = v60;
  v65[1] = v60;
  v66 = v93;
  v67 = v72;
  v68 = &v72[*(v93 + 36)];
  sub_1BD2511BC(v65, v68, MEMORY[0x1E697EAF0]);
  *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
  sub_1BD0DE204(v79, v67, &qword_1EBD3F130);
  sub_1BD0DE204(v67, v31, &qword_1EBD3F138);
  (*(v8 + 56))(v31, 0, 1, v66);
  sub_1BD25138C(v78, type metadata accessor for AvailablePass);
  sub_1BD25138C(v23, type metadata accessor for IdentityPassVendor);
LABEL_18:
  memcpy(v97, v107, sizeof(v97));
  sub_1BD0DE19C(v31, v27, &qword_1EBD3F148);
  memcpy(v98, v97, sizeof(v98));
  memcpy(v50, v97, 0x120uLL);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F150);
  sub_1BD0DE19C(v27, v50 + *(v69 + 48), &qword_1EBD3F148);
  sub_1BD0DE19C(v98, v99, &qword_1EBD3F158);
  sub_1BD0DE53C(v31, &qword_1EBD3F148);
  sub_1BD0DE53C(v27, &qword_1EBD3F148);
  memcpy(v99, v97, sizeof(v99));
  return sub_1BD0DE53C(v99, &qword_1EBD3F158);
}

uint64_t sub_1BD24EFAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v147 = a2;
  v144 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F168);
  v140 = *(v4 - 8);
  v141 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v135 = &v119 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F170);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v143 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v142 = &v119 - v12;
  v133 = sub_1BE04FF64();
  v131 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v13);
  v129 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1BE04DA24();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v15);
  v126 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04DA84();
  v119 = *(v17 - 8);
  v120 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v122 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F178);
  MEMORY[0x1EEE9AC00](v125, v20);
  v22 = &v119 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F180);
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v23);
  v124 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F188);
  v137 = *(v25 - 8);
  v138 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v127 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v128 = &v119 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v119 - v33;
  v35 = type metadata accessor for IdentityCredential(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v136 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F198);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v139 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v149 = &v119 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  MEMORY[0x1EEE9AC00](v45, v46);
  v150 = &v119 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v145 = &v119 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v119 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52180);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v148 = &v119 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v119 - v60;
  v62 = *&v147[*(type metadata accessor for Passes(0) + 20)];
  v146 = v61;
  sub_1BD24FFB8(a1, v62, v61);
  sub_1BE051984();
  v63 = sub_1BE0501C4();
  v134 = v45;
  v64 = *(v45 + 36);
  v147 = v54;
  v65 = &v54[v64];
  *v65 = v63;
  *(v65 + 8) = 0u;
  *(v65 + 24) = 0u;
  v65[40] = 1;
  v66 = type metadata accessor for AvailablePass(0);
  sub_1BD0DE19C(a1 + *(v66 + 24), v34, &qword_1EBD3F190);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1BD0DE53C(v34, &qword_1EBD3F190);
    v67 = 1;
    v68 = v149;
    v69 = v138;
  }

  else
  {
    v70 = v136;
    sub_1BD2511BC(v34, v136, type metadata accessor for IdentityCredential);
    (*(v119 + 16))(v122, v70 + *(v35 + 20), v120);
    (*(v121 + 104))(v126, *MEMORY[0x1E6997D18], v123);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BE0520A4();
    v71 = sub_1BE0501D4();
    v72 = &v22[*(v125 + 36)];
    *v72 = v71;
    *(v72 + 8) = 0u;
    *(v72 + 24) = 0u;
    v72[40] = 1;
    v73 = v129;
    sub_1BE04FF44();
    sub_1BD251224();
    v74 = v124;
    sub_1BE050D14();
    (*(v131 + 8))(v73, v133);
    sub_1BD0DE53C(v22, &qword_1EBD3F178);
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD25138C(v136, type metadata accessor for IdentityCredential);
    v75 = v127;
    (*(v130 + 32))(v127, v74, v132);
    v69 = v138;
    v76 = &v75[*(v138 + 36)];
    v77 = *(&v173[10] + 8);
    v78 = *(&v173[12] + 8);
    *(v76 + 4) = *(&v173[11] + 8);
    *(v76 + 5) = v78;
    *(v76 + 6) = *(&v173[13] + 8);
    v79 = *(&v173[8] + 8);
    *v76 = *(&v173[7] + 8);
    *(v76 + 1) = v79;
    *(v76 + 2) = *(&v173[9] + 8);
    *(v76 + 3) = v77;
    v80 = v75;
    v81 = v128;
    sub_1BD0DE204(v80, v128, &qword_1EBD3F188);
    v82 = v81;
    v68 = v149;
    sub_1BD0DE204(v82, v149, &qword_1EBD3F188);
    v67 = 0;
  }

  (*(v137 + 56))(v68, v67, 1, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v83 = v156;
  if (v156)
  {
    v84 = v155;
    v85 = v145;
    sub_1BE051984();
    v86 = sub_1BE0501C4();
    v87 = v85 + *(v134 + 36);
    *v87 = v86;
    *(v87 + 8) = 0u;
    *(v87 + 24) = 0u;
    *(v87 + 40) = 1;
    v155 = v84;
    v156 = v83;
    sub_1BD0DDEBC();
    v88 = sub_1BE0506C4();
    v136 = v89;
    v137 = v88;
    v91 = v90;
    v134 = v92;
    LODWORD(v133) = sub_1BE0501D4();
    LOBYTE(v155) = v91 & 1;
    v93 = v91 & 1;
    LODWORD(v138) = v93;
    LOBYTE(v151) = 1;
    sub_1BE051CE4();
    sub_1BE04EE54();
    *(&v173[3] + 5) = *(&v173[17] + 8);
    *(&v173[4] + 5) = *(&v173[18] + 8);
    *(&v173[5] + 5) = *(&v173[19] + 8);
    *(&v173[6] + 5) = *(&v173[20] + 8);
    *(v173 + 5) = *(&v173[14] + 8);
    *(&v173[1] + 5) = *(&v173[15] + 8);
    *(&v173[2] + 5) = *(&v173[16] + 8);
    v94 = sub_1BE050454();
    v132 = v94;
    KeyPath = swift_getKeyPath();
    v131 = KeyPath;
    v96 = v85;
    v97 = v150;
    sub_1BD0DE19C(v96, v150, &qword_1EBD390F8);
    v98 = v135;
    sub_1BD0DE19C(v97, v135, &qword_1EBD390F8);
    v99 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1A8) + 48));
    v100 = v136;
    *&v151 = v88;
    *(&v151 + 1) = v136;
    LOBYTE(v152) = v93;
    v101 = v134;
    *(&v152 + 1) = v134;
    LOBYTE(v93) = v133;
    LOBYTE(v153[0]) = v133;
    *(v153 + 8) = 0u;
    *(&v153[1] + 8) = 0u;
    BYTE8(v153[2]) = 1;
    *(&v153[2] + 9) = 256;
    *(&v153[6] + 11) = v173[4];
    *(&v153[7] + 11) = v173[5];
    *(&v153[8] + 11) = v173[6];
    *(&v153[2] + 11) = v173[0];
    *(&v153[3] + 11) = v173[1];
    *(&v153[4] + 11) = v173[2];
    *(&v153[5] + 11) = v173[3];
    *(&v153[9] + 1) = *(&v173[6] + 13);
    *&v154 = KeyPath;
    *(&v154 + 1) = v94;
    v102 = v153[9];
    v99[10] = v153[8];
    v99[11] = v102;
    v103 = v153[5];
    v99[6] = v153[4];
    v99[7] = v103;
    v104 = v153[7];
    v99[8] = v153[6];
    v99[9] = v104;
    v105 = v153[1];
    v99[2] = v153[0];
    v99[3] = v105;
    v106 = v153[3];
    v99[4] = v153[2];
    v99[5] = v106;
    v107 = v152;
    *v99 = v151;
    v99[1] = v107;
    v99[12] = v154;
    sub_1BD0DE19C(&v151, &v155, &qword_1EBD3F1B0);
    sub_1BD0DE53C(v145, &qword_1EBD390F8);
    v160 = 0u;
    v161 = 0u;
    v168 = v173[4];
    v169 = v173[5];
    *v170 = v173[6];
    v164 = v173[0];
    v165 = v173[1];
    v166 = v173[2];
    v155 = v137;
    v156 = v100;
    v157 = v138;
    v158 = v101;
    v159 = v93;
    v162 = 1;
    v163 = 256;
    v167 = v173[3];
    *&v170[13] = *(&v173[6] + 13);
    v171 = v131;
    v172 = v132;
    v108 = v97;
    sub_1BD0DE53C(&v155, &qword_1EBD3F1B0);
    sub_1BD0DE53C(v97, &qword_1EBD390F8);
    v109 = v142;
    sub_1BD0DE204(v98, v142, &qword_1EBD3F168);
    (*(v140 + 56))(v109, 0, 1, v141);
  }

  else
  {
    v109 = v142;
    (*(v140 + 56))(v142, 1, 1, v141);
    v108 = v150;
  }

  v110 = v148;
  sub_1BD0DE19C(v146, v148, &qword_1EBD52180);
  sub_1BD0DE19C(v147, v108, &qword_1EBD390F8);
  v111 = v149;
  v112 = v139;
  sub_1BD0DE19C(v149, v139, &qword_1EBD3F198);
  v113 = v143;
  sub_1BD0DE19C(v109, v143, &qword_1EBD3F170);
  v114 = v110;
  v115 = v109;
  v116 = v144;
  sub_1BD0DE19C(v114, v144, &qword_1EBD52180);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1A0);
  sub_1BD0DE19C(v108, v116 + v117[12], &qword_1EBD390F8);
  sub_1BD0DE19C(v112, v116 + v117[16], &qword_1EBD3F198);
  sub_1BD0DE19C(v113, v116 + v117[20], &qword_1EBD3F170);
  sub_1BD0DE53C(v115, &qword_1EBD3F170);
  sub_1BD0DE53C(v111, &qword_1EBD3F198);
  sub_1BD0DE53C(v147, &qword_1EBD390F8);
  sub_1BD0DE53C(v146, &qword_1EBD52180);
  sub_1BD0DE53C(v113, &qword_1EBD3F170);
  sub_1BD0DE53C(v112, &qword_1EBD3F198);
  sub_1BD0DE53C(v150, &qword_1EBD390F8);
  return sub_1BD0DE53C(v148, &qword_1EBD52180);
}

uint64_t sub_1BD24FFB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v57 = a2;
  v60 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1C8);
  v19 = (v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v58 = &v55 - v25;
  sub_1BD251328(a1, v17);
  v26 = type metadata accessor for PeerPaymentModel();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v13, 1, 1, v26);
  sub_1BE04C8E4();
  v59 = v4;
  v56 = sub_1BD2504C0();
  v29 = v28;
  v55 = v19[18];
  v22[v55] = 0;
  v30 = v19[19];
  *&v22[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v31 = sub_1BE051C54();
  v32 = 40.0;
  if (v31)
  {
    v32 = 36.0;
  }

  *&v22[v19[20]] = v32;
  v33 = v19[21];
  v22[v33] = (sub_1BE051C54() & 1) == 0;
  v34 = v57;
  sub_1BD2511BC(v17, v22, type metadata accessor for AvailablePass);
  *&v22[v19[11]] = v34;
  sub_1BD0DE19C(v13, &v22[v19[12]], &qword_1EBD45480);
  v35 = &v22[v19[13]];
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  v22[v19[14]] = 1;
  v36 = &v22[v19[15]];
  v37 = v69;
  *v36 = v68;
  *(v36 + 1) = v37;
  *(v36 + 4) = v70;
  v38 = &v22[v19[16]];
  *v38 = v56;
  v38[1] = v29;
  v39 = &v22[v19[17]];
  *v39 = 0;
  *(v39 + 1) = 0;
  sub_1BD0DE204(v13, v9, &qword_1EBD45480);
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    v40 = v34;
    sub_1BD0DE53C(v9, &qword_1EBD45480);
  }

  else
  {
    v41 = &v9[*(v26 + 24)];
    v42 = *(v41 + 3);
    v64 = *(v41 + 2);
    v65 = v42;
    v43 = *(v41 + 5);
    v66 = *(v41 + 4);
    v67 = v43;
    v44 = *(v41 + 1);
    v62 = *v41;
    v63 = v44;
    v45 = v34;
    sub_1BD0DE19C(&v62, v61, &unk_1EBD521D0);
    sub_1BD25138C(v9, type metadata accessor for PeerPaymentModel);
    if (v62 != 1)
    {
      v46 = *(&v63 + 1);
      v47 = v67;
      sub_1BD0DE53C(&v62, &unk_1EBD521D0);
      if (v46 || (v47 & 1) != 0)
      {
        v22[v55] = 1;
      }
    }
  }

  v48 = v58;
  sub_1BD0DE204(v22, v58, &qword_1EBD3F1C8);
  v49 = sub_1BE04CAE4();
  KeyPath = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = v49 & 1;
  v52 = v60;
  sub_1BD0DE204(v48, v60, &qword_1EBD3F1C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52180);
  v54 = (v52 + *(result + 36));
  *v54 = KeyPath;
  v54[1] = sub_1BD10DF54;
  v54[2] = v51;
  return result;
}

void (*sub_1BD2504C0())()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v19 - v3;
  v5 = type metadata accessor for IdentityPassVendor();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BD0DE53C(v4, &qword_1EBD3F140);
    return 0;
  }

  else
  {
    sub_1BD2511BC(v4, v9, type metadata accessor for IdentityPassVendor);
    v11 = *&v9[*(type metadata accessor for Passes(0) + 28)];
    sub_1BE048C84();
    sub_1BD25138C(v9, type metadata accessor for IdentityPassVendor);
    v12 = *(v11 + 16);

    result = 0;
    if (v12 >= 2)
    {
      sub_1BD250A68(v0, v19);
      v13 = swift_allocObject();
      v14 = v19[9];
      *(v13 + 144) = v19[8];
      *(v13 + 160) = v14;
      *(v13 + 176) = v20;
      v15 = v19[5];
      *(v13 + 80) = v19[4];
      *(v13 + 96) = v15;
      v16 = v19[7];
      *(v13 + 112) = v19[6];
      *(v13 + 128) = v16;
      v17 = v19[1];
      *(v13 + 16) = v19[0];
      *(v13 + 32) = v17;
      v18 = v19[3];
      *(v13 + 48) = v19[2];
      *(v13 + 64) = v18;
      return sub_1BD251474;
    }
  }

  return result;
}

uint64_t sub_1BD250728@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_1BE04C8A4())
  {
    sub_1BD250A68(a1, v19);
    v4 = swift_allocObject();
    v5 = v19[9];
    *(v4 + 144) = v19[8];
    *(v4 + 160) = v5;
    *(v4 + 176) = v20;
    v6 = v19[5];
    *(v4 + 80) = v19[4];
    *(v4 + 96) = v6;
    v7 = v19[7];
    *(v4 + 112) = v19[6];
    *(v4 + 128) = v7;
    v8 = v19[1];
    *(v4 + 16) = v19[0];
    *(v4 + 32) = v8;
    v9 = v19[3];
    *(v4 + 48) = v19[2];
    *(v4 + 64) = v9;
    KeyPath = swift_getKeyPath();
    sub_1BE04CDA4();
    sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    sub_1BE048964();
    v11 = sub_1BE04EEC4();
    v13 = v12;
    type metadata accessor for AuthenticatorModel();
    sub_1BD2512E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    result = sub_1BE04E954();
    v16 = 0x4014000000000000;
    v17 = sub_1BD251130;
    v18 = sub_1BD31FF5C;
  }

  else
  {
    result = 0;
    v15 = 0;
    v18 = 0;
    KeyPath = 0;
    v11 = 0;
    v13 = 0;
    v17 = 0;
    v4 = 0;
    v16 = 0;
  }

  *a2 = result;
  a2[1] = v15;
  a2[2] = v18;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = KeyPath;
  a2[6] = 0;
  a2[7] = v11;
  a2[8] = v13;
  a2[9] = v17;
  a2[10] = v4;
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = v16;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13PaymentUIBase10AlertError_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BD25098C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1BD2509D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD250AA8()
{
  result = qword_1EBD35E30;
  if (!qword_1EBD35E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD35E30);
  }

  return result;
}

uint64_t sub_1BD250B18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD24D124(v2, v3, v0 + 32);
}

unint64_t sub_1BD250BC4()
{
  result = qword_1EBD3F0B8;
  if (!qword_1EBD3F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37180);
    sub_1BD250C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0B8);
  }

  return result;
}

unint64_t sub_1BD250C50()
{
  result = qword_1EBD3F0C0;
  if (!qword_1EBD3F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F058);
    sub_1BD250D08();
    sub_1BD0DE4F4(&qword_1EBD36798, &unk_1EBD51F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0C0);
  }

  return result;
}

unint64_t sub_1BD250D08()
{
  result = qword_1EBD3F0C8;
  if (!qword_1EBD3F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F060);
    sub_1BD250DC0();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0C8);
  }

  return result;
}

unint64_t sub_1BD250DC0()
{
  result = qword_1EBD3F0D0;
  if (!qword_1EBD3F0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F068);
    sub_1BD0DE4F4(&qword_1EBD3F0D8, &qword_1EBD3F070);
    sub_1BD0DE4F4(&qword_1EBD36790, &qword_1EBD3F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0D0);
  }

  return result;
}

unint64_t sub_1BD250EA4()
{
  result = qword_1EBD3F0E0;
  if (!qword_1EBD3F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0E0);
  }

  return result;
}

unint64_t sub_1BD250F00()
{
  result = qword_1EBD3F0F0;
  if (!qword_1EBD3F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37180);
    sub_1BD250BC4();
    swift_getOpaqueTypeConformance2();
    sub_1BD250EA4();
    sub_1BD0DE4F4(&qword_1EBD3F0E8, &qword_1EBD3F0B0);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3F0F8, &qword_1EBD3F100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0F0);
  }

  return result;
}

double sub_1BD251114(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1BD251190(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1BD2511BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD251224()
{
  result = qword_1EBD3F1B8;
  if (!qword_1EBD3F1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F178);
    sub_1BD2512E0(&qword_1EBD3F1C0, MEMORY[0x1E6997E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1B8);
  }

  return result;
}

uint64_t sub_1BD2512E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD251328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD25138C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_16()
{

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 88);
  }

  sub_1BD0D45CC();
  sub_1BD0D4604(*(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_1BD2514B0(char a1)
{
  v2 = [v1 *off_1E800F8D8[a1]];
  v3 = sub_1BE052434();

  return v3;
}

uint64_t sub_1BD25152C()
{
  v0 = sub_1BD251514();
  v2 = v1;
  if (v0 == sub_1BD251514() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BE053B84();
  }

  return v5 & 1;
}

uint64_t sub_1BD2515B4()
{
  sub_1BE053D04();
  sub_1BD251514();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD251618()
{
  sub_1BD251514();
  sub_1BE052524();
}

uint64_t sub_1BD25166C()
{
  sub_1BE053D04();
  sub_1BD251514();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD2516CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD251780(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BD2516FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD251514();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BD25172C()
{
  result = qword_1EBD3F1E0;
  if (!qword_1EBD3F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1E0);
  }

  return result;
}

uint64_t sub_1BD251780(uint64_t a1, uint64_t a2)
{
  if (sub_1BE052434() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_1BE053B84();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1BE052434() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = sub_1BE053B84();

  if (v10)
  {
    goto LABEL_16;
  }

  if (sub_1BE052434() == a1 && v11 == a2)
  {

LABEL_24:

    return 2;
  }

  v13 = sub_1BE053B84();

  if (v13)
  {
    goto LABEL_24;
  }

  if (sub_1BE052434() == a1 && v14 == a2)
  {

LABEL_29:

    return 3;
  }

  v15 = sub_1BE053B84();

  if (v15)
  {
    goto LABEL_29;
  }

  if (sub_1BE052434() == a1 && v16 == a2)
  {

LABEL_34:

    return 4;
  }

  v17 = sub_1BE053B84();

  if (v17)
  {
    goto LABEL_34;
  }

  if (sub_1BE052434() == a1 && v18 == a2)
  {

LABEL_39:

    return 5;
  }

  v19 = sub_1BE053B84();

  if (v19)
  {
    goto LABEL_39;
  }

  if (sub_1BE052434() == a1 && v20 == a2)
  {

LABEL_44:

    return 6;
  }

  v21 = sub_1BE053B84();

  if (v21)
  {
    goto LABEL_44;
  }

  if (sub_1BE052434() == a1 && v22 == a2)
  {

    return 7;
  }

  else
  {
    v23 = sub_1BE053B84();

    if (v23)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1BD251AE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v53 = a3;
  v51 = a2;
  v52 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v50, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v49 - v11;
  sub_1BE04CDA4();
  sub_1BD25AAB4(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a5 + 32) = sub_1BE04EEC4();
  *(a5 + 40) = v13;
  *(a5 + 80) = 0;
  *&v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_1BD0DE19C(&v60, v59, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(&v60, &qword_1EBD51EC0);
  memset(v59, 0, sizeof(v59));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55590);
  sub_1BE051694();
  v14 = v63;
  v15 = v61;
  v16 = v62;
  *(a5 + 136) = v60;
  *(a5 + 152) = v15;
  *(a5 + 168) = v16;
  *(a5 + 184) = v14;
  v17 = type metadata accessor for PaymentSheet();
  v18 = sub_1BE04C614();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 1, 1, v18);
  sub_1BD0DE19C(v12, v8, &qword_1EBD3D520);
  sub_1BE051694();
  sub_1BD0DE53C(v12, &qword_1EBD3D520);
  v20 = a5 + v17[14];
  LOBYTE(v59[0]) = 0;
  sub_1BE051694();
  v21 = *(&v60 + 1);
  *v20 = v60;
  *(v20 + 8) = v21;
  v19(v12, 1, 1, v18);
  sub_1BD0DE19C(v12, v8, &qword_1EBD3D520);
  sub_1BE051694();
  sub_1BD0DE53C(v12, &qword_1EBD3D520);
  v22 = (a5 + v17[16]);
  *&v59[0] = 0;
  sub_1BE051694();
  v23 = *(&v60 + 1);
  *v22 = v60;
  v22[1] = v23;
  v24 = a5 + v17[17];
  LOBYTE(v59[0]) = 0;
  sub_1BE051694();
  v25 = *(&v60 + 1);
  *v24 = v60;
  *(v24 + 8) = v25;
  v26 = v17[18];
  *&v59[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1E8);
  sub_1BE051694();
  *(a5 + v26) = v60;
  v27 = a5 + v17[19];
  LOBYTE(v59[0]) = 0;
  sub_1BE051694();
  v28 = *(&v60 + 1);
  *v27 = v60;
  *(v27 + 8) = v28;
  v29 = v17[20];
  *&v59[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
  sub_1BE051694();
  *(a5 + v29) = v60;
  v30 = v17[21];
  *&v59[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50);
  sub_1BE051694();
  *(a5 + v30) = v60;
  v31 = (a5 + v17[22]);
  type metadata accessor for PresentationContext();
  sub_1BD25AAB4(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  *v31 = sub_1BE04EEC4();
  v31[1] = v32;
  v33 = a5 + v17[23];
  *v33 = sub_1BD2522E4;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  v34 = (a5 + v17[24]);
  sub_1BD250AA8();
  sub_1BD25AAB4(&qword_1EBD35E40, sub_1BD250AA8);
  *v34 = sub_1BE04EEC4();
  v34[1] = v35;
  v36 = v51;
  v37 = v17[25];
  *(a5 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v38 = a5 + v17[26];
  *v38 = swift_getKeyPath();
  *(v38 + 8) = 0;
  v39 = v17[27];
  *(a5 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v40 = v17[28];
  *(a5 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  swift_storeEnumTagMultiPayload();
  v41 = a5 + v17[29];
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  v42 = v52;
  *(a5 + 48) = v52;
  v43 = type metadata accessor for PaymentAuthorizationModel(0);
  v58 = v43;
  swift_getKeyPath();
  v57 = v43;
  swift_getKeyPath();
  v44 = v42;
  sub_1BE04D8B4();

  sub_1BD25AAB4(&qword_1EBD3F1F0, type metadata accessor for PaymentAuthorizationModel);
  *a5 = sub_1BE04E954();
  *(a5 + 8) = v45;
  v56 = v43;
  swift_getKeyPath();
  v55 = v43;
  swift_getKeyPath();
  sub_1BE04D8B4();
  v46 = v53;

  type metadata accessor for AuthenticatorModel();
  sub_1BD25AAB4(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  *(a5 + 16) = sub_1BE04E954();
  *(a5 + 24) = v47;
  *(a5 + 56) = v36;
  *(a5 + 64) = v46;
  v48 = v54 & 1;
  *(a5 + 72) = v54 & 1;
  *(&v61 + 1) = &type metadata for PaymentSheetFeatureFlag.Wallet;
  *&v62 = sub_1BD259180();
  LOBYTE(v60) = 0;
  sub_1BE048C84();
  LOBYTE(v43) = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v60);
  if (v43)
  {
    if (!v36)
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ProvisioningAvailableCredentialsProvider();
    swift_allocObject();
    *(a5 + 80) = ProvisioningAvailableCredentialsProvider.init(networks:capabilities:)(v36, v46, v48);
    ProvisioningAvailableCredentialsProvider.preflightAvailableCredentials()();
  }

  else
  {
  }
}

uint64_t sub_1BD2522E4()
{
  type metadata accessor for BankConnectInterface();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t type metadata accessor for PaymentSheet()
{
  result = qword_1EBD3F200;
  if (!qword_1EBD3F200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD252360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v222 = a1;
  v3 = sub_1BE04FF64();
  v220 = *(v3 - 8);
  v221 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v219 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A228);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v199 = &v186 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v194 = &v186 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F260);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v192 = (&v186 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F268);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v229 = (&v186 - v17);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F270);
  MEMORY[0x1EEE9AC00](v193, v18);
  v187 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v223 = &v186 - v22;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F278);
  MEMORY[0x1EEE9AC00](v195, v23);
  v196 = &v186 - v24;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F280);
  v198 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200, v25);
  v224 = &v186 - v26;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F288);
  MEMORY[0x1EEE9AC00](v197, v27);
  v202 = &v186 - v28;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F290);
  MEMORY[0x1EEE9AC00](v201, v29);
  v204 = &v186 - v30;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F298);
  MEMORY[0x1EEE9AC00](v203, v31);
  v206 = &v186 - v32;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2A0);
  MEMORY[0x1EEE9AC00](v205, v33);
  v207 = &v186 - v34;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2A8);
  MEMORY[0x1EEE9AC00](v225, v35);
  v208 = &v186 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2B0);
  v210 = *(v37 - 8);
  v211 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v226 = &v186 - v39;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2B8);
  MEMORY[0x1EEE9AC00](v209, v40);
  v227 = &v186 - v41;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2C0);
  MEMORY[0x1EEE9AC00](v212, v42);
  v213 = &v186 - v43;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2C8);
  MEMORY[0x1EEE9AC00](v215, v44);
  v214 = &v186 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2D0);
  v217 = *(v46 - 8);
  v218 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v216 = &v186 - v48;
  v49 = type metadata accessor for PaymentSheet();
  v50 = *(v49 - 8);
  v191 = v49 - 8;
  v51 = v50;
  v52 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49 - 8, v53);
  v54 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v230 = v54;
  sub_1BE04D8B4();

  if (LOBYTE(v257[0]))
  {
    v55 = 0x736143656C707041;
  }

  else
  {
    v55 = 0x796150656C707041;
  }

  if (LOBYTE(v257[0]))
  {
    v56 = 0xED00006F676F4C68;
  }

  else
  {
    v56 = 0xEC0000006F676F4CLL;
  }

  v228 = type metadata accessor for PaymentSheet;
  v57 = v2;
  v236 = &v186 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD25A3E0(v2, v236, type metadata accessor for PaymentSheet);
  v58 = *(v51 + 80);
  v234 = v58;
  v235 = (v58 + 16) & ~v58;
  v233 = v235 + v52;
  v59 = swift_allocObject();
  v186 = type metadata accessor for PaymentSheet;
  sub_1BD25AAFC(&v186 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v59 + ((v58 + 16) & ~v58), type metadata accessor for PaymentSheet);
  v231 = *(v2 + 24);
  v60 = sub_1BE04CAE4();
  v61 = sub_1BE051C54();
  v62 = 18.0;
  v251 = 0uLL;
  if (v61)
  {
    v62 = 10.0;
  }

  *&v252 = v55;
  *(&v252 + 1) = v56;
  *&v253 = sub_1BD25AC90;
  *(&v253 + 1) = v59;
  LOBYTE(v254) = v60 & 1;
  *&v255 = 0;
  *(&v254 + 1) = 0;
  *(&v255 + 1) = 0x4032000000000000;
  *v256 = v62;
  *&v256[8] = xmmword_1BE0B7110;
  v257[0] = 0;
  v257[1] = 0;
  v257[2] = v55;
  v257[3] = v56;
  v257[4] = sub_1BD25AC90;
  v257[5] = v59;
  v258 = v60 & 1;
  v259 = 0;
  v260 = 0;
  v261 = 0x4032000000000000;
  v262 = v62;
  v263 = xmmword_1BE0B7110;
  sub_1BD0DE19C(&v251, v250, &qword_1EBD38AC8);
  sub_1BD0DE53C(v257, &qword_1EBD38AC8);
  v63 = v236;
  sub_1BD25A3E0(v2, v236, v228);
  v64 = swift_allocObject() + v235;
  v65 = v63;
  v66 = v63;
  v67 = v187;
  sub_1BD25AAFC(v65, v64, type metadata accessor for PaymentSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2D8);
  sub_1BD259AB8();
  v68 = v229;
  sub_1BE04C664();
  v69 = sub_1BE04CAE4();
  KeyPath = swift_getKeyPath();
  v71 = swift_allocObject();
  *(v71 + 16) = v69 & 1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F328);
  v73 = (v68 + *(v72 + 36));
  *v73 = KeyPath;
  v73[1] = sub_1BD10DF54;
  v73[2] = v71;
  (*(*(v72 - 8) + 56))(v68, 0, 1, v72);
  v74 = sub_1BE04F7B4();
  v75 = v192;
  *v192 = v74;
  *(v75 + 8) = 0;
  *(v75 + 16) = 0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F330);
  v77 = v57;
  sub_1BD257B2C(v57, v75 + *(v76 + 44));
  v78 = *(v57 + 48);
  *(&v248[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4D0);
  *&v248[2] = sub_1BD0DE4F4(&qword_1EBD3F338, &qword_1EBD3D4D0);
  *&v248[0] = v78;
  v79 = v77 + *(v191 + 60);
  sub_1BE048964();
  v80 = v78;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  v82 = v194;
  v188 = v81;
  v189 = v79;
  sub_1BE0516A4();
  v83 = sub_1BE04C614();
  v84 = *(*(v83 - 8) + 48);
  v85 = v82;
  v190 = v83;
  LOBYTE(v82) = v84(v82, 1) == 1;
  sub_1BD0DE53C(v85, &qword_1EBD3D520);
  v232 = v77;
  sub_1BD25A3E0(v77, v66, v228);
  v86 = swift_allocObject();
  v87 = v66;
  v88 = v229;
  sub_1BD25AAFC(v87, v86 + v235, v186);
  v89 = v193;
  v90 = (v67 + *(v193 + 104));
  sub_1BD0DE19C(&v251, v250, &qword_1EBD38AC8);
  v91 = sub_1BD250AA8();
  v92 = sub_1BD25AAB4(&qword_1EBD35E40, sub_1BD250AA8);
  v194 = v91;
  v191 = v92;
  *v90 = sub_1BE04EEC4();
  v90[1] = v93;
  v94 = (v67 + v89[27]);
  sub_1BE04CDA4();
  sub_1BD25AAB4(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *v94 = sub_1BE04EEC4();
  v94[1] = v95;
  v96 = v67 + v89[28];
  LOBYTE(v237[0]) = 0;
  sub_1BE051694();
  v97 = v250[1];
  *v96 = v250[0];
  *(v96 + 8) = v97;
  v98 = v67 + v89[29];
  *v98 = swift_getKeyPath();
  *(v98 + 8) = 0;
  *(v67 + 96) = *&v256[16];
  v99 = *v256;
  *(v67 + 64) = v255;
  *(v67 + 80) = v99;
  v100 = v252;
  *v67 = v251;
  *(v67 + 16) = v100;
  v101 = v254;
  *(v67 + 32) = v253;
  *(v67 + 48) = v101;
  sub_1BD0DE19C(v88, v67 + v89[17], &qword_1EBD3F268);
  sub_1BD0DE19C(v75, v67 + v89[18], &qword_1EBD3F260);
  *(v67 + v89[19]) = 0;
  *(v67 + v89[20]) = 1;
  *(v67 + v89[21]) = v231;
  sub_1BD0EE8CC(v248, v67 + v89[22]);
  *(v67 + v89[23]) = v82;
  v102 = v89;
  v103 = (v67 + v89[25]);
  *v103 = sub_1BD259D0C;
  v103[1] = v86;
  sub_1BD0EE8CC(v248, v237);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(&v244, v250);
    v104 = v250[3];
    v105 = v250[4];
    __swift_project_boxed_opaque_existential_1(v250, v250[3]);
    (*(v105 + 56))(v237, v104, v105);
    sub_1BD0DE53C(v75, &qword_1EBD3F260);
    sub_1BD0DE53C(v88, &qword_1EBD3F268);
    __swift_destroy_boxed_opaque_existential_0(v248);
    *(v67 + v102[24]) = v237[0];
    __swift_destroy_boxed_opaque_existential_0(v250);
  }

  else
  {
    sub_1BD0DE53C(v75, &qword_1EBD3F260);
    sub_1BD0DE53C(v88, &qword_1EBD3F268);
    __swift_destroy_boxed_opaque_existential_0(v248);
    *&v246 = 0;
    v244 = 0u;
    v245 = 0u;
    sub_1BD0DE53C(&v244, &qword_1EBD389A0);
    *(v67 + v89[24]) = 2;
  }

  v106 = v223;
  sub_1BD0DE204(v67, v223, &qword_1EBD3F270);
  v107 = v232;
  if (*(v232 + 32))
  {
    sub_1BE048964();
    sub_1BE04CD44();
    v109 = v108;

    v111 = MEMORY[0x1BFB3EDF0](v110, v109, 0.825, 0.0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v112 = v250[0];
    v113 = v196;
    sub_1BD0DE204(v106, v196, &qword_1EBD3F270);
    v114 = (v113 + *(v195 + 36));
    *v114 = v111;
    v114[1] = v112;
    v115 = v199;
    sub_1BE0516C4();
    v229 = type metadata accessor for PaymentSheet;
    v116 = v236;
    sub_1BD25A3E0(v107, v236, type metadata accessor for PaymentSheet);
    v117 = swift_allocObject();
    v228 = type metadata accessor for PaymentSheet;
    sub_1BD25AAFC(v116, v117 + v235, type metadata accessor for PaymentSheet);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F340);
    sub_1BD259DEC();
    sub_1BD25AAB4(&qword_1EBD3A238, MEMORY[0x1E69BC8F0]);
    v223 = MEMORY[0x1E697C278];
    sub_1BD0DE4F4(&qword_1EBD3F368, &qword_1EBD3F340);
    sub_1BE051124();

    sub_1BD0DE53C(v115, &qword_1EBD3A228);
    sub_1BD0DE53C(v113, &qword_1EBD3F278);
    v118 = v232;
    type metadata accessor for AuthenticatorModel();
    sub_1BD25AAB4(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    sub_1BE04E964();
    swift_getKeyPath();
    sub_1BE04E974();

    v119 = v250[0];
    v120 = v250[1];
    LOBYTE(v113) = v250[2];
    v121 = v236;
    sub_1BD25A3E0(v118, v236, v229);
    v122 = swift_allocObject();
    sub_1BD25AAFC(v121, v122 + v235, v228);
    v123 = sub_1BE04EEC4();
    v125 = v124;
    type metadata accessor for PresentationContext();
    sub_1BD25AAB4(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    v126 = sub_1BE04EEC4();
    v128 = v127;
    v242 = 0;
    v129 = v202;
    (*(v198 + 32))(v202, v224, v200);
    v130 = v129 + *(v197 + 36);
    *v130 = v119;
    *(v130 + 8) = v120;
    *(v130 + 16) = v113;
    *(v130 + 17) = *v243;
    *(v130 + 20) = *&v243[3];
    *(v130 + 24) = sub_1BD259ED0;
    *(v130 + 32) = v122;
    *(v130 + 40) = v123;
    *(v130 + 48) = v125;
    *(v130 + 56) = v126;
    *(v130 + 64) = v128;
    *(v130 + 72) = sub_1BD644BF8;
    *(v130 + 80) = 0;
    *(v130 + 88) = v242;
    *&v248[0] = sub_1BE051404();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
    v131 = v232;
    sub_1BE0516C4();
    v132 = v204;
    v133 = &v204[*(v201 + 36)];
    sub_1BE050704();
    sub_1BD0DE53C(v250, &qword_1EBD51FA0);

    v134 = sub_1BE051CD4();
    v136 = v135;
    v137 = &v133[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F370) + 36)];
    *v137 = v134;
    v137[1] = v136;
    sub_1BD0DE204(v129, v132, &qword_1EBD3F288);
    v138 = sub_1BE051404();
    v139 = v131;
    v140 = *(v131 + 184);
    v141 = *(v131 + 152);
    *v250 = *(v131 + 136);
    *&v250[2] = v141;
    *&v250[4] = *(v131 + 168);
    v250[6] = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8);
    sub_1BE0516C4();
    v238 = v244;
    v239 = v245;
    v240 = v246;
    v241 = v247;
    v142 = sub_1BE051CD4();
    v144 = v143;
    *(v248 + 8) = v238;
    *(&v248[1] + 8) = v239;
    *(&v248[2] + 8) = v240;
    *(&v248[3] + 8) = v241;
    *&v248[0] = v138;
    *(&v248[4] + 1) = v142;
    v249 = v143;
    v145 = v206;
    sub_1BD0DE204(v132, v206, &qword_1EBD3F290);
    v146 = v145 + *(v203 + 36);
    v147 = v248[3];
    *(v146 + 32) = v248[2];
    *(v146 + 48) = v147;
    *(v146 + 64) = v248[4];
    v148 = v248[1];
    *v146 = v248[0];
    *(v146 + 16) = v148;
    v149 = v238;
    *&v250[3] = v239;
    *&v250[5] = v240;
    *&v250[7] = v241;
    *(v146 + 80) = v249;
    *&v250[1] = v149;
    v250[0] = v138;
    v250[9] = v142;
    v250[10] = v144;
    sub_1BD0DE19C(v248, v237, &qword_1EBD3F378);
    sub_1BD0DE53C(v250, &qword_1EBD3F378);
    v150 = v139;
    v151 = v236;
    v152 = v229;
    sub_1BD25A3E0(v139, v236, v229);
    v153 = swift_allocObject();
    v154 = v235;
    v155 = v228;
    sub_1BD25AAFC(v151, v153 + v235, v228);
    v156 = v207;
    sub_1BD0DE204(v145, v207, &qword_1EBD3F298);
    v157 = (v156 + *(v205 + 36));
    *v157 = sub_1BD259F40;
    v157[1] = v153;
    v157[2] = 0;
    v157[3] = 0;
    v158 = v208;
    sub_1BE04C924();
    v159 = v150;
    v160 = v236;
    sub_1BD25A3E0(v159, v236, v152);
    v161 = swift_allocObject();
    sub_1BD25AAFC(v160, v161 + v154, v155);
    sub_1BD0DE204(v156, v158, &qword_1EBD3F2A0);
    v162 = (v158 + *(v225 + 56));
    *v162 = sub_1BD259F58;
    v162[1] = v161;
    LOBYTE(v237[0]) = sub_1BE04CAE4() & 1;
    sub_1BD0DE4F4(&qword_1EBD3F380, &qword_1EBD3F2A8);
    sub_1BE051064();
    sub_1BD0DE53C(v158, &qword_1EBD3F2A8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_beginAccess();
    v163 = v209;
    v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
    v164 = v227;
    sub_1BE04D884();
    swift_endAccess();

    v165 = v232;
    v166 = v229;
    sub_1BD25A3E0(v232, v160, v229);
    v167 = swift_allocObject();
    v168 = v235;
    v169 = v228;
    sub_1BD25AAFC(v160, v167 + v235, v228);
    (*(v210 + 32))(v164, v226, v211);
    v170 = (v164 + *(v163 + 56));
    *v170 = sub_1BD259FC8;
    v170[1] = v167;
    swift_beginAccess();
    v171 = v212;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0);
    v172 = v213;
    sub_1BE04D884();
    swift_endAccess();
    v173 = v165;
    v174 = v236;
    sub_1BD25A3E0(v173, v236, v166);
    v175 = swift_allocObject();
    sub_1BD25AAFC(v174, v175 + v168, v169);
    sub_1BD0DE204(v227, v172, &qword_1EBD3F2B8);
    v176 = (v172 + *(v171 + 56));
    *v176 = sub_1BD259FE0;
    v176[1] = v175;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_beginAccess();
    v178 = v214;
    v177 = v215;
    sub_1BE04D884();
    swift_endAccess();

    sub_1BD25A3E0(v232, v174, v229);
    v179 = swift_allocObject();
    sub_1BD25AAFC(v174, v179 + v168, v228);
    sub_1BD0DE204(v172, v178, &qword_1EBD3F2C0);
    v180 = (v178 + *(v177 + 56));
    *v180 = sub_1BD25A050;
    v180[1] = v179;
    v181 = v219;
    sub_1BE04FF54();
    v182 = sub_1BD0DE4F4(&qword_1EBD3F388, &qword_1EBD3F2C8);
    v183 = v216;
    sub_1BE050D14();
    (*(v220 + 8))(v181, v221);
    sub_1BD0DE53C(v178, &qword_1EBD3F2C8);
    sub_1BE052434();
    v237[0] = v177;
    v237[1] = v182;
    swift_getOpaqueTypeConformance2();
    v184 = v218;
    sub_1BE050DE4();

    sub_1BD0DE53C(&v251, &qword_1EBD38AC8);
    return (*(v217 + 8))(v183, v184);
  }

  else
  {
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

id sub_1BD253EE4()
{
  sub_1BD6B2184(1, 1u, 0);
  result = [*(*(v0 + 48) + *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = [result peerPaymentRequest];

    if (v3)
    {
      if ([v3 isP2P])
      {
        [v3 isDeviceTap];
        v4 = sub_1BE052434();
        v6 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B98D0;
        v8 = *MEMORY[0x1E69BABE8];
        *(inited + 32) = *MEMORY[0x1E69BABE8];
        v9 = sub_1BE052434();
        v10 = MEMORY[0x1E69BA440];
        *(inited + 40) = v9;
        *(inited + 48) = v11;
        v12 = *v10;
        *(inited + 56) = *v10;
        *(inited + 64) = sub_1BE052434();
        *(inited + 72) = v13;
        v14 = *MEMORY[0x1E69BAF60];
        *(inited + 80) = *MEMORY[0x1E69BAF60];
        *(inited + 88) = v4;
        *(inited + 96) = v6;
        v15 = v8;
        v16 = v12;
        v17 = v14;
        v18 = sub_1BD1AAF50(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
        swift_arrayDestroy();
        _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v18);
      }

      else
      {
      }
    }

    return sub_1BD7429CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2540E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v6 = sub_1BE04C614();
  v37 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v39 = v9;
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaymentSheet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = v14;
  v43 = v14;
  v44 = a2;
  v16 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1BD2DC3A0(a1, a3);
  v49 = type metadata accessor for PaymentSheet;
  sub_1BD25A3E0(a2, v16, type metadata accessor for PaymentSheet);
  v40 = *(v7 + 16);
  v40(v10, a1, v6);
  v17 = *(v12 + 80);
  v45 = (v17 + 16) & ~v17;
  v46 = v17 | 7;
  v47 = v45 + v15;
  v18 = *(v7 + 80);
  v19 = (v45 + v15 + v18) & ~v18;
  v20 = swift_allocObject();
  v42 = type metadata accessor for PaymentSheet;
  sub_1BD25AAFC(v16, v20 + ((v17 + 16) & ~v17), type metadata accessor for PaymentSheet);
  v38 = *(v7 + 32);
  v21 = v37;
  v38(v20 + v19, v10, v37);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3A0);
  v23 = (v48 + *(v22 + 36));
  *v23 = sub_1BD25A104;
  v23[1] = v20;
  v23[2] = 0;
  v23[3] = 0;
  v40(v10, v41, v21);
  v24 = v44;
  sub_1BD25A3E0(v44, v16, v49);
  v25 = (v18 + 16) & ~v18;
  v26 = (v39 + v17 + v25) & ~v17;
  v27 = swift_allocObject();
  v38(v27 + v25, v10, v21);
  v28 = v42;
  sub_1BD25AAFC(v16, v27 + v26, v42);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3A8);
  v30 = v48;
  v31 = (v48 + *(v29 + 36));
  *v31 = 0;
  v31[1] = 0;
  v31[2] = sub_1BD25A144;
  v31[3] = v27;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F340);
  sub_1BE04CA34();
  sub_1BD25A3E0(v24, v16, v49);
  v33 = swift_allocObject();
  result = sub_1BD25AAFC(v16, v33 + v45, v28);
  v35 = (v30 + *(v32 + 56));
  *v35 = sub_1BD25A274;
  v35[1] = v33;
  return result;
}

uint64_t sub_1BD254498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23[-v10];
  v12 = sub_1BE04C614();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = type metadata accessor for PaymentSheet();
  sub_1BD0DE19C(v11, v7, &qword_1EBD3D520);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  sub_1BE0516B4();
  sub_1BD0DE53C(v11, &qword_1EBD3D520);
  v14 = (a1 + *(v13 + 56));
  v15 = *v14;
  v16 = *(v14 + 1);
  v23[16] = v15;
  v24 = v16;
  v23[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v17 = *(*(a1 + 24) + qword_1EBDAADA8 + 32);
  v18 = 0;
  if ([v17 mode] == 1)
  {
    v18 = [v17 pass];
  }

  v19 = [v17 fundingMode];
  v20 = [v17 paymentOffersController];
  v21 = [v17 selectedPaymentOffer];
  sub_1BD6B39C8(a2, v19, v20, v21, v18);

  result = sub_1BE04C5F4();
  if (result)
  {
    return sub_1BD742D88();
  }

  return result;
}

uint64_t sub_1BD254708(uint64_t a1, uint64_t a2)
{
  v33 = sub_1BE04D214();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v29 - v8;
  v10 = sub_1BE04C614();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a2 + 24) + qword_1EBDAADA8 + 32);
  v15 = [v14 fundingMode];
  v16 = [v14 selectedPaymentOffer];
  sub_1BD6B4058(a1, v15, v16);

  if (sub_1BE04C5F4())
  {
    sub_1BD743154();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v42[0] = v35;
  v42[3] = v38;
  v42[4] = v39;
  v42[5] = v40;
  v42[6] = v41;
  v42[1] = v36;
  v42[2] = v37;
  v17 = *(&v35 + 1);
  sub_1BE048C84();
  sub_1BD146D0C(v42);
  if (v17)
  {
    v18 = *MEMORY[0x1E69DD888];
    v19 = sub_1BE052404();

    UIAccessibilityPostNotification(v18, v19);
  }

  v20 = (a2 + *(type metadata accessor for PaymentSheet() + 56));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v35) = v21;
  *(&v35 + 1) = v22;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  sub_1BE0516A4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1BD0DE53C(v9, &qword_1EBD3D520);
  }

  v24 = v30;
  (*(v11 + 32))(v30, v9, v10);
  v25 = v31;
  sub_1BE04D084();
  v26 = sub_1BE04D204();
  v27 = sub_1BE052C54();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1BD026000, v26, v27, "Presenting the nextWaitingDetailSheet", v28, 2u);
    MEMORY[0x1BFB45F20](v28, -1, -1);
  }

  (*(v32 + 8))(v25, v33);
  sub_1BD254B98(v24);
  return (*(v11 + 8))(v24, v10);
}

uint64_t sub_1BD254B98(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v72 = sub_1BE04D214();
  v3 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v4);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v63 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v69 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v70 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v63 - v26;
  v67 = type metadata accessor for PaymentSheet();
  v28 = *(v67 + 52);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  v65 = v28;
  v68 = v29;
  sub_1BE0516A4();
  v30 = sub_1BE04C614();
  v66 = *(v30 - 8);
  LODWORD(v28) = (*(v66 + 48))(v27, 1, v30);
  sub_1BD0DE53C(v27, &qword_1EBD3D520);
  if (v28 != 1)
  {
    sub_1BE04D084();
    v36 = sub_1BE04D204();
    v37 = sub_1BE052C34();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1BD026000, v36, v37, "Detail sheet already set, ignoring", v38, 2u);
      MEMORY[0x1BFB45F20](v38, -1, -1);
    }

    (*(v3 + 8))(v17, v72);
    return 0;
  }

  v31 = *(v2 + 8);
  if ((sub_1BE04C904() & 1) == 0)
  {
    sub_1BE04D084();
    v39 = sub_1BE04D204();
    v40 = sub_1BE052C34();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BD026000, v39, v40, "Authorizing payment, ignoring detail sheet", v41, 2u);
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    (*(v3 + 8))(v13, v72);
    return 0;
  }

  v75 = MEMORY[0x1E69E7CD0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v74[0] == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((v74[0] & 1) == 0)
    {
      sub_1BD2A59C8(v74, 18);
      sub_1BD2A59C8(v74, 7);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v74[0])
  {
    sub_1BD2A59C8(v74, 20);
  }

  v32 = v75;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (sub_1BD6CF234(v74[0]) & 1) != 0 || (sub_1BD6CF234(*(v31 + qword_1EBDAAD68 + 16)))
  {
    sub_1BE04D084();
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BD026000, v33, v34, "Loading data, ignoring detail sheet", v35, 2u);
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }

    (*(v3 + 8))(v9, v72);
LABEL_13:

    return 0;
  }

  v43 = (v2 + *(v67 + 56));
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v74[0]) = v44;
  v74[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v73 == 1)
  {
    v46 = v64;
    sub_1BE04D084();
    v47 = sub_1BE04D204();
    v48 = sub_1BE052C34();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v71;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1BD026000, v47, v48, "Currently dismissing a detail sheet. Waiting on presenting the next sheet until the current one is dismissed", v51, 2u);
      MEMORY[0x1BFB45F20](v51, -1, -1);
    }

    (*(v3 + 8))(v46, v72);
    v52 = v66;
    v53 = v70;
    (*(v66 + 16))(v70, v50, v30);
    (*(v52 + 56))(v53, 0, 1, v30);
    sub_1BD0DE19C(v53, v69, &qword_1EBD3D520);
    sub_1BE0516B4();
    sub_1BD0DE53C(v53, &qword_1EBD3D520);
    goto LABEL_13;
  }

  v54 = v71;
  sub_1BD6B528C(v71);
  result = [*(*(v2 + 48) + *((*MEMORY[0x1E69E7D40] & **(v2 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v55 = result;
    v72 = v32;
    v56 = [result peerPaymentRequest];

    if (v56)
    {
      if ([v56 isP2P])
      {
        [v56 isDeviceTap];
        v57 = sub_1BE052434();
        _s9PassKitUI9AnalyticsO27trackPeerPaymentSheetRowTap3for10p2pContexty0G6UIBase0g6DetailH0O_SStFZ_0(v54, v57, v58);
      }

      else
      {
      }
    }

    v59 = v66;
    v60 = *(v66 + 56);
    v61 = v70;
    v60(v70, 1, 1, v30);
    v62 = v69;
    sub_1BD0DE19C(v61, v69, &qword_1EBD3D520);
    sub_1BE0516B4();
    sub_1BD0DE53C(v61, &qword_1EBD3D520);
    (*(v59 + 16))(v61, v54, v30);
    v60(v61, 0, 1, v30);
    sub_1BD0DE19C(v61, v62, &qword_1EBD3D520);
    sub_1BE0516B4();
    sub_1BD0DE53C(v61, &qword_1EBD3D520);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD255528(uint64_t a1)
{
  v2 = sub_1BE04CA04();
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result != 1)
  {
    return sub_1BD258CE4(1);
  }

  return result;
}

uint64_t sub_1BD255598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4D0);
  sub_1BD0DE4F4(&qword_1EBD3F398, &qword_1EBD3D4D0);
  v7 = sub_1BE04E954();
  v9 = v8;
  type metadata accessor for PaymentAuthorizationModel(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD25AAB4(&qword_1EBD3F1F0, type metadata accessor for PaymentAuthorizationModel);
  result = sub_1BE04E954();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 9) = *v12;
  *(a2 + 12) = *&v12[3];
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 25) = *v13;
  *(a2 + 28) = *&v13[3];
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = result;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_1BD255754()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PaymentSheet();
  type metadata accessor for BankConnectInterface();
  sub_1BD25AAB4(&qword_1EBD3F258, type metadata accessor for BankConnectInterface);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(v7, v3, &qword_1EBD520A0);
  sub_1BD25A968(v7, type metadata accessor for Passes);
  sub_1BD8FE0E0(v3);

  return sub_1BD0DE53C(v3, &qword_1EBD520A0);
}

uint64_t sub_1BD25593C(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v3, &qword_1EBD51EC0);
  if (v4)
  {
    sub_1BD043990(&v3, &v5);
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v5, &v3);
      sub_1BD0DE19C(&v3, &v2, &qword_1EBD51EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
      return __swift_destroy_boxed_opaque_existential_0(&v5);
    }

    __swift_destroy_boxed_opaque_existential_0(&v5);
  }

  else
  {
    sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  sub_1BD0DE19C(&v5, &v3, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v5, &qword_1EBD51EC0);
}

void sub_1BD255AB4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  if (v9 != v10)
  {
    sub_1BE04D084();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = v9;
      *(v13 + 8) = 1024;
      *(v13 + 10) = v10;
      _os_log_impl(&dword_1BD026000, v11, v12, "disableInteractivity changed from %{BOOL}d to %{BOOL}d", v13, 0xEu);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BD255C20(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentSheet();
  v50[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v50[1] = v6;
  v51 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v50 - v21;
  v23 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  sub_1BE0516A4();
  v24 = sub_1BE04C614();
  LODWORD(a1) = (*(*(v24 - 8) + 48))(v22, 1, v24);
  sub_1BD0DE53C(v22, &qword_1EBD3D520);
  if (a1 == 1 && v23 != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v26 = v53;
    if (v53)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      sub_1BD0DE19C(v14, v18, &qword_1EBD520A0);
      sub_1BD25A968(v14, type metadata accessor for Passes);
      v27 = type metadata accessor for AvailablePass(0);
      if ((*(*(v27 - 8) + 48))(v18, 1, v27) == 1)
      {

        sub_1BD0DE53C(v18, &qword_1EBD520A0);
        return;
      }

      sub_1BD25A3E0(v18, v10, type metadata accessor for WrappedPass);
      sub_1BD25A968(v18, type metadata accessor for AvailablePass);
      v28 = WrappedPass.secureElementPass.getter();
      sub_1BD25A968(v10, type metadata accessor for WrappedPass);
      if (v28)
      {
        v29 = v28;
        v30 = [v29 uniqueID];
        if (!v30)
        {
          __break(1u);
LABEL_21:
          type metadata accessor for PresentationContext();
          sub_1BD25AAB4(&unk_1EBD361B0, type metadata accessor for PresentationContext);
          sub_1BE04EEB4();
          __break(1u);
          return;
        }

        v31 = v30;

        v32 = [v26 paymentOfferCriteriaForPassUniqueID:v31 type:1];
        if (v32)
        {
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (!v33)
          {

            return;
          }

          v34 = v33;
          v53 = v28;
          LOBYTE(v54) = 0x80;
          v35 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
          v36 = v29;
          v37 = v32;
          v38 = v26;
          v39 = v34;
          v40 = v38;
          v41 = sub_1BD8D1EE0(&v53, v26, v39);

          v42 = (a2 + *(v4 + 84));
          v44 = v42[1];
          v53 = *v42;
          v43 = v53;
          v54 = v44;
          v52 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
          sub_1BE0516B4();
          v53 = v43;
          v54 = v44;
          sub_1BE0516A4();
          v45 = v52;
          if (!v52)
          {
LABEL_15:

            return;
          }

          if (*(a2 + *(v4 + 88)))
          {
            v46 = v51;
            sub_1BD25A3E0(a2, v51, type metadata accessor for PaymentSheet);
            v47 = (*(v50[0] + 80) + 16) & ~*(v50[0] + 80);
            v48 = swift_allocObject();
            sub_1BD25AAFC(v46, v48 + v47, type metadata accessor for PaymentSheet);
            v49 = sub_1BE048964();
            sub_1BD8C1B80(v49, 0, sub_1BD25A0EC, v48);

            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }
    }
  }
}

void sub_1BD256290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v24 - v10);
  sub_1BD0DE19C(a1, v24 - v10, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = v12;
      v14 = sub_1BE04A844();

      v15 = (a2 + *(type metadata accessor for PaymentSheet() + 80));
      v16 = v15[1];
      v25 = *v15;
      v17 = v25;
      v26 = v16;
      v24[1] = v14;
      sub_1BE048964();
      v18 = v14;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
      sub_1BE0516B4();
    }
  }

  else
  {
    sub_1BD25AAFC(v11, v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v20 = *(v7 + 1);
    if (v20)
    {
      v21 = v20;
      sub_1BD3918A4(v20);
      v22 = [v21 type];
      if (v22 != 2)
      {
        if (v22 != 1 || (objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) == 0) || ([v23 isPreconfiguredOffer] & 1) == 0)
        {
          sub_1BD258CE4(1);
        }
      }
    }

    sub_1BD25A968(v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }
}

uint64_t sub_1BD2564E8(uint64_t *a1)
{
  sub_1BD0EE87C(*a1, a1[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8);
  return sub_1BE0516B4();
}

uint64_t sub_1BD256570(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A258);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v31 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v31 - v18;
  v20 = sub_1BE04C614();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    (*(v21 + 104))(v25, *MEMORY[0x1E69BC8D8], v20, v23);
    sub_1BD254B98(v25);
    return (*(v21 + 8))(v25, v20);
  }

  type metadata accessor for PaymentSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  v31[1] = a2;
  sub_1BE0516A4();
  (*(v21 + 104))(v15, *MEMORY[0x1E69BC8D8], v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  v27 = *(v4 + 48);
  sub_1BD0DE19C(v19, v7, &qword_1EBD3D520);
  sub_1BD0DE19C(v15, &v7[v27], &qword_1EBD3D520);
  v28 = *(v21 + 48);
  if (v28(v7, 1, v20) != 1)
  {
    sub_1BD0DE19C(v7, v11, &qword_1EBD3D520);
    if (v28(&v7[v27], 1, v20) != 1)
    {
      (*(v21 + 32))(v25, &v7[v27], v20);
      sub_1BD25AAB4(&qword_1EBD3A260, MEMORY[0x1E69BC8F0]);
      v29 = sub_1BE052334();
      v30 = *(v21 + 8);
      v30(v25, v20);
      sub_1BD0DE53C(v15, &qword_1EBD3D520);
      sub_1BD0DE53C(v19, &qword_1EBD3D520);
      v30(v11, v20);
      result = sub_1BD0DE53C(v7, &qword_1EBD3D520);
      if ((v29 & 1) == 0)
      {
        return result;
      }

      return sub_1BD258CE4(1);
    }

    sub_1BD0DE53C(v15, &qword_1EBD3D520);
    sub_1BD0DE53C(v19, &qword_1EBD3D520);
    (*(v21 + 8))(v11, v20);
    return sub_1BD0DE53C(v7, &qword_1EBD3A258);
  }

  sub_1BD0DE53C(v15, &qword_1EBD3D520);
  sub_1BD0DE53C(v19, &qword_1EBD3D520);
  if (v28(&v7[v27], 1, v20) != 1)
  {
    return sub_1BD0DE53C(v7, &qword_1EBD3A258);
  }

  sub_1BD0DE53C(v7, &qword_1EBD3D520);
  return sub_1BD258CE4(1);
}

uint64_t sub_1BD256A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v126 = &v118[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v125 = &v118[-v13];
  v14 = sub_1BE04FB64();
  v143 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v142 = &v118[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v127 = &v118[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v21);
  v130 = &v118[-v22];
  MEMORY[0x1EEE9AC00](v23, v24);
  v128 = &v118[-v25];
  v26 = type metadata accessor for Passes(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v137 = &v118[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30, v31);
  v129 = &v118[-v32];
  v145 = type metadata accessor for SheetButton();
  MEMORY[0x1EEE9AC00](v145, v33);
  v35 = &v118[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36, v37);
  v139 = &v118[-v38];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521E0);
  MEMORY[0x1EEE9AC00](v140, v39);
  v141 = &v118[-v40];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v131 = &v118[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44, v45);
  v138 = &v118[-v46];
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v118[-v49];
  MEMORY[0x1EEE9AC00](v51, v52);
  v144 = &v118[-v53];
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v118[-v56];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3D0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v146 = &v118[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66.n128_f64[0] = MEMORY[0x1EEE9AC00](v61, v62);
  if (a1)
  {
    v132 = &v118[-v65];
    v133 = v64;
    v134 = v63;
    v123 = v14;
    v135 = a1;
    v136 = a3;
    v67 = a2;
    v122 = *(*(v4 + 8) + qword_1EBDAB308);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    (*(v27 + 56))(v57, 0, 1, v26);
    sub_1BE04C8E4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v124 = v150;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v68 = v150;
    v69 = sub_1BD2DF874();
    if (!PKOslo2024UIUpdatesEnabled())
    {

      sub_1BD0D4744(v135);
      v76 = 1;
      v77 = v146;
LABEL_40:
      sub_1BD0DE53C(v151, &qword_1EBD51EC0);
      sub_1BD0DE53C(v57, &unk_1EBD43B40);
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521F0);
      (*(*(v108 - 8) + 56))(v77, v76, 1, v108);
      v109 = v132;
      sub_1BD0DE204(v77, v132, &qword_1EBD3F3D0);
      v110 = v109;
      v111 = v136;
      sub_1BD0DE204(v110, v136, &qword_1EBD3F3D0);
      return (*(v133 + 56))(v111, 0, 1, v134);
    }

    v120 = v68;
    v121 = v67;
    v119 = v69 & 1;
    v70 = v57;
    v71 = v144;
    sub_1BD0DE19C(v57, v144, &unk_1EBD43B40);
    sub_1BD0DE19C(v151, &v150, &qword_1EBD51EC0);
    v72 = *(v145 + 40);
    *&v35[v72] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE19C(v71, v50, &unk_1EBD43B40);
    v73 = *(v27 + 48);
    if (v73(v50, 1, v26) == 1)
    {
      sub_1BD0DE53C(v50, &unk_1EBD43B40);
    }

    else
    {
      v78 = v50;
      v79 = v129;
      sub_1BD25AAFC(v78, v129, type metadata accessor for Passes);
      if (v79[*(v26 + 24)])
      {
        v80 = v128;
        sub_1BD0DE19C(v79, v128, &qword_1EBD520A0);
        v81 = type metadata accessor for AvailablePass(0);
        v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
        sub_1BD0DE53C(v80, &qword_1EBD520A0);
        if (v82 == 1 && !*(*&v79[*(v26 + 28)] + 16))
        {
          v112 = v126;
          sub_1BD4941F8(v126);
          v113 = type metadata accessor for UnavailablePass(0);
          v114 = (*(*(v113 - 8) + 48))(v112, 1, v113);
          sub_1BD0DE53C(v112, &qword_1EBD3C3F8);
          sub_1BD25A968(v79, type metadata accessor for Passes);
          v83 = v144;
          if (v114 == 1 && (v124 & 1) != 0)
          {
            v86 = 6;
            goto LABEL_17;
          }

LABEL_14:
          sub_1BD0DE19C(&v150, &v147, &qword_1EBD51EC0);
          if (v148)
          {
            sub_1BD043990(&v147, v149);
            __swift_project_boxed_opaque_existential_1(v149, v149[3]);
            v84 = sub_1BE04C704();
            __swift_destroy_boxed_opaque_existential_0(v149);
            v85 = v137;
            if (v84)
            {
              v86 = 5;
LABEL_17:
              v57 = v70;
LABEL_18:
              v87 = v138;
              v88 = v124;
LABEL_34:
              *v35 = v86;
              sub_1BD0DE19C(v83, v87, &unk_1EBD43B40);
              if (v73(v87, 1, v26) == 1)
              {
                sub_1BD0DE53C(&v150, &qword_1EBD51EC0);
                sub_1BD0DE53C(v83, &unk_1EBD43B40);
                sub_1BD0DE53C(v87, &unk_1EBD43B40);
                v93 = 0;
                v94 = 0;
                v77 = v146;
              }

              else
              {
                v95 = v130;
                sub_1BD0DE19C(v87, v130, &qword_1EBD520A0);
                sub_1BD25A968(v87, type metadata accessor for Passes);
                v96 = type metadata accessor for AvailablePass(0);
                v97 = (*(*(v96 - 8) + 48))(v95, 1, v96);
                v77 = v146;
                if (v97 == 1)
                {
                  sub_1BD0DE53C(&v150, &qword_1EBD51EC0);
                  sub_1BD0DE53C(v83, &unk_1EBD43B40);
                  sub_1BD0DE53C(v95, &qword_1EBD520A0);
                  v93 = 0;
                  v94 = 0;
                }

                else
                {
                  v93 = sub_1BD49C81C(v97);
                  v94 = v98;
                  sub_1BD0DE53C(&v150, &qword_1EBD51EC0);
                  sub_1BD0DE53C(v83, &unk_1EBD43B40);
                  sub_1BD25A968(v95, type metadata accessor for AvailablePass);
                }
              }

              *(v35 + 4) = v93;
              *(v35 + 5) = v94;
              v35[24] = v88;
              v99 = v120;
              *(v35 + 6) = v120;
              v100 = v135;
              v101 = v121;
              *(v35 + 1) = v135;
              *(v35 + 2) = v101;
              v35[56] = v119;
              v102 = v35;
              v103 = v139;
              sub_1BD25AAFC(v102, v139, type metadata accessor for SheetButton);
              sub_1BE052434();
              sub_1BD0D44B8(v100);
              sub_1BD25AAB4(&unk_1EBD52200, type metadata accessor for SheetButton);
              v104 = v99;
              v105 = v141;
              sub_1BE050DE4();

              sub_1BD25A968(v103, type metadata accessor for SheetButton);
              v106 = v142;
              sub_1BE04FB54();
              sub_1BD25A9C8();
              sub_1BD25AAB4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
              v107 = v123;
              sub_1BE050894();

              sub_1BD0D4744(v100);
              (*(v143 + 8))(v106, v107);
              sub_1BD0DE53C(v105, &unk_1EBD521E0);
              v76 = 0;
              goto LABEL_40;
            }
          }

          else
          {
            sub_1BD0DE53C(&v147, &qword_1EBD51EC0);
            v85 = v137;
          }

          v89 = v131;
          sub_1BD0DE19C(v83, v131, &unk_1EBD43B40);
          if (v73(v89, 1, v26) == 1)
          {
            sub_1BD0DE53C(v89, &unk_1EBD43B40);
          }

          else
          {
            sub_1BD25AAFC(v89, v85, type metadata accessor for Passes);
            if (*(v85 + *(v26 + 24)))
            {
              v90 = v127;
              sub_1BD0DE19C(v85, v127, &qword_1EBD520A0);
              v91 = type metadata accessor for AvailablePass(0);
              v92 = (*(*(v91 - 8) + 48))(v90, 1, v91);
              sub_1BD0DE53C(v90, &qword_1EBD520A0);
              if (v92 == 1 && !*(*(v85 + *(v26 + 28)) + 16))
              {
                v115 = v125;
                sub_1BD4941F8(v125);
                v116 = type metadata accessor for UnavailablePass(0);
                v117 = (*(*(v116 - 8) + 48))(v115, 1, v116);
                sub_1BD0DE53C(v115, &qword_1EBD3C3F8);
                sub_1BD25A968(v85, type metadata accessor for Passes);
                v57 = v70;
                if (v117 != 1)
                {
                  v86 = 4;
                  goto LABEL_18;
                }

LABEL_27:
                v86 = v122;
                v87 = v138;
                v88 = v124;
                if (v122 != 2)
                {
                  if (v122 || (v124 & 1) == 0)
                  {
                    if (v122 == 13)
                    {
                      v86 = 7;
                    }

                    else
                    {
                      v86 = 0;
                    }
                  }

                  else
                  {
                    v86 = 3;
                  }
                }

                goto LABEL_34;
              }
            }

            sub_1BD25A968(v85, type metadata accessor for Passes);
          }

          v57 = v70;
          goto LABEL_27;
        }
      }

      sub_1BD25A968(v79, type metadata accessor for Passes);
    }

    v83 = v144;
    goto LABEL_14;
  }

  v74 = *(v64 + 56);

  return v74(a3, 1, 1, v66);
}