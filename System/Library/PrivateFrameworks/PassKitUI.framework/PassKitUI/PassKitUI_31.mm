id sub_1BD37CC08(void *a1, uint64_t a2)
{
  result = [a1 completeTransition_];
  v4 = *(a2 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion);
  if (v4)
  {
    v5 = sub_1BE048964();
    v4(v5);

    return sub_1BD0D4744(v4);
  }

  return result;
}

id sub_1BD37CC84(void *a1, void *a2, uint64_t a3)
{
  [a1 removeFromSuperview];
  result = [a2 completeTransition_];
  v6 = *(a3 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion);
  if (v6)
  {
    v7 = sub_1BE048964();
    v6(v7);

    return sub_1BD0D4744(v6);
  }

  return result;
}

void sub_1BD37CD2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

unint64_t sub_1BD37CE48(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 viewControllers];
    sub_1BD0E5E8C(0, &qword_1EBD43450);
    v6 = sub_1BE052744();

    if (v6 >> 62)
    {
      v7 = sub_1BE053704();
      if (v7)
      {
LABEL_4:
        v8 = __OFSUB__(v7, 1);
        result = v7 - 1;
        if (v8)
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *(v6 + 8 * result + 32);
LABEL_9:
            v11 = v10;

            type metadata accessor for CardReaderViewController();
            v12 = swift_dynamicCastClass();
            if (v12)
            {
              v13 = v12;
              v14 = type metadata accessor for CardReaderViewController.TransitionAnimator();
              v15 = objc_allocWithZone(v14);
              v15[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 2;
              *&v15[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v13;
              *(v13 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) = 1;
              v16 = *(v13 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory);
              *&v15[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v16;
              v32.receiver = v15;
              v32.super_class = v14;
              v17 = v11;
              v18 = v16;
              v19 = objc_msgSendSuper2(&v32, sel_init);

              return v19;
            }

            goto LABEL_14;
          }

          __break(1u);
          return result;
        }

        v10 = MEMORY[0x1BFB40900](result, v6);
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_14:
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v20 = type metadata accessor for CardReaderViewController.AlertTransitionAnimator();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    *v22 = 0;
    v22[1] = 0;
    v21[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_type] = 1;
    v23 = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
    *&v21[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_springFactory] = v23;
    v33.receiver = v21;
    v33.super_class = v20;
    v24 = objc_msgSendSuper2(&v33, sel_init);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;
    v27 = &v24[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    v28 = *&v24[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    *v27 = sub_1BD37DA6C;
    v27[1] = v26;
    v29 = a1;
    sub_1BE048964();
    sub_1BD0D4744(v28);

    return v24;
  }

  else
  {
    v30 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v31 = objc_allocWithZone(v30);
    v31[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 2;
    *&v31[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = 0;
    sub_1BD0E5E8C(0, &qword_1EBD43458);
    *&v31[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = [swift_getObjCClassFromMetadata() createDefaultFactory];
    v34.receiver = v31;
    v34.super_class = v30;
    return objc_msgSendSuper2(&v34, sel_init);
  }
}

void sub_1BD37D1C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton);
    if (v2 != 2)
    {
      sub_1BD3789BC(v2 & 1);
    }
  }
}

unint64_t sub_1BD37D3D0()
{
  result = qword_1EBD43440;
  if (!qword_1EBD43440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43440);
  }

  return result;
}

unint64_t sub_1BD37D428()
{
  result = qword_1EBD43448;
  if (!qword_1EBD43448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43448);
  }

  return result;
}

void sub_1BD37D47C()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard) = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton) = 2;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD37D598(void *a1)
{
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PKPaymentSetupForceBridgeAppearance())
  {
    return 2030;
  }

  sub_1BE04BC34();
  v7 = sub_1BE04BAB4();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    return 2030;
  }

  if ([a1 userInterfaceStyle] == 2)
  {
    return 2030;
  }

  return 2020;
}

id sub_1BD37D6B0(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = a1;
  v5 = [v3 viewControllers];
  sub_1BD0E5E8C(0, &qword_1EBD43450);
  v6 = sub_1BE052744();

  if (v6 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1BFB40900](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  type metadata accessor for CardReaderViewController();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v13 = objc_allocWithZone(v12);
    v13[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 0;
    *&v13[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v11;
    *(v11 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) = 1;
    v14 = *(v11 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory);
    *&v13[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v14;
    v22.receiver = v13;
    v22.super_class = v12;
    v15 = v9;
    v16 = v14;
    v17 = objc_msgSendSuper2(&v22, sel_init);

    return v17;
  }

LABEL_12:
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v18 = type metadata accessor for CardReaderViewController.AlertTransitionAnimator();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    *v20 = 0;
    v20[1] = 0;
    v19[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_type] = 0;
    v21 = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
    *&v19[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_springFactory] = v21;
    v23.receiver = v19;
    v23.super_class = v18;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  return result;
}

_BYTE *sub_1BD37D910(uint64_t a1, void *a2, void *a3)
{
  if (a1 == 2)
  {
    type metadata accessor for CardReaderViewController();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v11 = result;
    v6 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v12 = objc_allocWithZone(v6);
    v12[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 3;
    *&v12[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v11;
    v11[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] = 0;
    v8 = *&v11[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
    *&v12[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v8;
    v16 = v12;
    v9 = &v16;
    a3 = a2;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    type metadata accessor for CardReaderViewController();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v7 = objc_allocWithZone(v6);
    v7[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 1;
    *&v7[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v5;
    v5[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] = 0;
    v8 = *&v5[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
    *&v7[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v8;
    v15 = v7;
    v9 = &v15;
LABEL_7:
    v9->super_class = v6;
    v13 = a3;
    v14 = v8;
    return [(objc_super *)v9 init];
  }

  return 0;
}

uint64_t sub_1BD37DA88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    v1 = [v1 removeFromSuperview];
  }

  return v2(v1);
}

id sub_1BD37DB00(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [v3 removeFromSuperview];

  return [v4 completeTransition_];
}

uint64_t objectdestroy_62Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

id sub_1BD37DB98()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) completeTransition_];

  return [v1 removeFromSuperview];
}

void sub_1BD37DCC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B9C4();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v91 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v90 = &v82 - v8;
  v9 = sub_1BE04BAC4();
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BE04BD74();
  v12 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v13);
  v86 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v83 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v98 = &v82 - v23;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v82 - v27;
  v101.receiver = v1;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, sel_loadView, v26);
  v29 = [v1 explanationView];
  if (!v29)
  {
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  v85 = v9;
  v31 = [objc_opt_self() systemBackgroundColor];
  [v30 setTopBackgroundColor_];

  [v1 setPrivacyLinkController_];
  [v1 setShowDoneButton_];
  v87 = v1;
  [v1 setShowCancelButton_];
  v32 = *MEMORY[0x1E69B80D8];
  v33 = *(v12 + 104);
  v33(v28, v32, v100);
  v34 = PKPassKitBundle();
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  sub_1BE04B6F4();

  v37 = *(v12 + 8);
  v36 = (v12 + 8);
  v38 = v100;
  v39 = v37;
  v37(v28, v100);
  v40 = sub_1BE052404();

  [v30 setTitleText_];

  v41 = v98;
  v99 = v33;
  v33(v98, v32, v38);
  v42 = PKPassKitBundle();
  if (!v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = v42;
  v44 = v32;
  sub_1BE04B6F4();

  v45 = v100;
  v98 = v36;
  v46 = v39;
  v39(v41, v100);
  v47 = sub_1BE052404();

  [v30 setBodyText_];

  v48 = [v30 dockView];
  if (!v48)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = v48;
  v50 = v30;
  v97 = v46;
  v51 = [v48 footerView];
  v52 = v99;
  v96 = v51;
  v53 = v94;
  if (!v51)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v54 = [v49 primaryButton];
  if (!v54)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = v54;
  v95 = v49;
  v84 = v44;
  v52(v53, v44, v45);
  v56 = v55;
  v57 = PKPassKitBundle();
  if (!v57)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v58 = v57;
  sub_1BE04B6F4();

  v97(v53, v45);
  v59 = sub_1BE052404();

  [v56 setTitle:v59 forState:0];
  v94 = v56;

  v61 = v87;
  v60 = v88;
  sub_1BE04BC34();
  v62 = v90;
  sub_1BE04BAA4();
  (*(v89 + 8))(v60, v85);
  v64 = v91;
  v63 = v92;
  v65 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x1E69B7FB0], v93);
  sub_1BD37FFEC(qword_1EBD43518, MEMORY[0x1E69B7FC8]);
  LOBYTE(v59) = sub_1BE052334();
  v66 = *(v63 + 8);
  v66(v64, v65);
  v66(v62, v65);
  v67 = v99;
  if (v59)
  {
    goto LABEL_12;
  }

  v68 = v96;
  [v96 setSetUpLaterButton_];
  v69 = [v68 skipCardButton];
  if (!v69)
  {
    goto LABEL_25;
  }

  v70 = v69;
  v71 = v83;
  v67(v83, v84, v45);
  v72 = PKPassKitBundle();
  if (!v72)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v73 = v72;
  sub_1BE04B6F4();

  v97(v71, v45);
  v74 = sub_1BE052404();

  [v70 setTitle:v74 forStates:0];

  [v70 addTarget:v61 action:sel__skipButtonPressed forControlEvents:0x2000];
LABEL_12:
  v75 = v86;
  if (v61[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_showChangeMethodButton] != 1)
  {
LABEL_17:

    return;
  }

  v76 = [v95 footerView];
  if (!v76)
  {
    goto LABEL_27;
  }

  v77 = v76;
  v78 = [v76 tertiaryActionButton];

  if (!v78)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v67(v75, v84, v45);
  v79 = PKPassKitBundle();
  if (v79)
  {
    v80 = v79;
    sub_1BE04B6F4();

    v97(v75, v45);
    v81 = sub_1BE052404();

    [v78 setTitle:v81 forState:0];

    [v78 addTarget:v61 action:sel__changeMethodButtonPressed forControlEvents:0x2000];
    goto LABEL_17;
  }

LABEL_29:
  __break(1u);
}

void sub_1BD37E664()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = PKOBKCardHeaderViewSize(3);
  v3 = v2;
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_pass];
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v10[4] = sub_1BD37FFDC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BD20815C;
    v10[3] = &block_descriptor_16_2;
    v8 = _Block_copy(v10);
    v9 = v0;

    [v5 snapshotWithPass:v6 size:v8 completion:{v1, v3}];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD37E7BC(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1BD37FFE4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_1;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD37FFEC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v20);
}

void sub_1BD37EA88(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setHideBackground_];
  [v4 setPadding_];
  v5 = [a2 explanationView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setHeroView_];
}

uint64_t sub_1BD37EC0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    [*(result + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController) clearSelectedChannel];
    v4 = v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v3, &off_1F3BA7828, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD37ED34()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter];
  if (v2)
  {
    [v2 reportButtonPressed_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController) clearSelectedChannel];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v5 = v4;
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = *&v6[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
    v8 = *&v6[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
    v9 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
    sub_1BE048964();
    v10 = v8;
    v11 = v6;
    v12 = sub_1BD5537A8(v7, v10);

    v13 = &v11[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v5, &off_1F3BB88B0, v12, &off_1F3BAD3B8, ObjectType, v14);

      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

LABEL_9:

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_1BD37EF44()
{
  sub_1BD37FE84(1u);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_performController];
      v5 = *(v4 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window);
      *(v4 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window) = v3;
    }

    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_performController];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BD431D88(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD37F024(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BD37FE84(1u);
    if (a2)
    {
      if ([a1 severity] == 1)
      {
        sub_1BD37FE84(0);
      }

      else
      {
        sub_1BD37F80C(a1);
      }
    }

    else
    {
      sub_1BD37F0C4();
    }
  }
}

void sub_1BD37F0C4()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v68 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v67 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v57 - v14;
  v15 = sub_1BE04BD74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v57 - v22;
  sub_1BD37FE84(0);
  v71 = v0;
  v24 = [v0 explanationView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = v24;
  v70 = v19;
  v58 = v6;
  v59 = v5;
  v60 = v2;
  v61 = v1;
  v26 = *MEMORY[0x1E69B80D8];
  v27 = *(v16 + 104);
  v27(v23, v26, v15);
  v28 = PKPassKitBundle();
  if (!v28)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v29 = v28;
  sub_1BE04B6F4();

  v69 = *(v16 + 8);
  v69(v23, v15);
  v30 = sub_1BE052404();

  [v25 setTitleText_];

  v31 = v71;
  v32 = [v71 explanationView];
  if (!v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v33 = v32;
  v62 = "CODE_ACCEPTED_TITLE";
  v34 = v70;
  v27(v70, v26, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BE0B69E0;
  v36 = [*&v31[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_pass] localizedDescription];
  v37 = sub_1BE052434();
  v39 = v38;

  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1BD110550();
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  sub_1BE04B714();

  v69(v34, v15);
  v40 = v71;
  v41 = sub_1BE052404();

  [v33 setBodyText_];

  v42 = [v40 explanationView];
  if (!v42)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v43 = v42;
  [v42 setShowCheckmark_];

  v44 = [v40 explanationView];
  if (!v44)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45 = v44;
  v46 = [v44 dockView];

  if (v46)
  {
    [v46 setButtonsEnabled_];

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v47 = sub_1BE052D54();
    v48 = v63;
    sub_1BE051FB4();
    v49 = v64;
    sub_1BE051FF4();
    v50 = v66;
    v70 = *(v65 + 8);
    (v70)(v48, v66);
    v51 = swift_allocObject();
    *(v51 + 16) = v40;
    aBlock[4] = sub_1BD37FFC0;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_71;
    v52 = _Block_copy(aBlock);
    v53 = v40;

    v54 = v67;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD37FFEC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v55 = v68;
    v56 = v61;
    sub_1BE053664();
    MEMORY[0x1BFB3FD90](v49, v54, v55, v52);
    _Block_release(v52);

    (*(v60 + 8))(v55, v56);
    (*(v58 + 8))(v54, v59);
    (v70)(v49, v50);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1BD37F80C(id a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v15;
  v17 = [a1 hasLocalizedTitleAndMessage];
  v18 = *MEMORY[0x1E69B80D8];
  v19 = *(v4 + 104);
  if (v17)
  {
    goto LABEL_5;
  }

  v41 = v1;
  v42 = v7;
  v43 = a1;
  v20 = v18;
  v19(v16);
  v21 = PKPassKitBundle();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  sub_1BE04B6F4();

  v40 = v4;
  v37 = *(v4 + 8);
  v37(v16, v3);
  v23 = sub_1BE052404();

  a1 = v43;
  [v43 setLocalizedTitle_];

  v38 = v20;
  v39 = v19;
  (v19)(v11, v20, v3);
  v24 = PKPassKitBundle();
  if (v24)
  {
    v25 = v24;
    sub_1BE04B6F4();

    v37(v11, v3);
    v26 = sub_1BE052404();

    [a1 setLocalizedMessage_];

    v4 = v40;
    v1 = v41;
    v7 = v42;
    v19 = v39;
    v18 = v38;
LABEL_5:
    (v19)(v7, v18, v3);
    v27 = PKPassKitBundle();
    if (v27)
    {
      v28 = v27;
      v29 = sub_1BE04B6F4();
      v31 = v30;

      (*(v4 + 8))(v7, v3);
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v32 = swift_allocObject();
      *(v32 + 16) = v1;
      v33 = swift_allocObject();
      *(v33 + 16) = v1;
      v34 = v1;
      v35 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v29, v31, PKEdgeInsetsMake, 0, sub_1BD38003C, v32, sub_1BD37FF9C, v33);

      PKApplyDefaultIconToAlertController(v35);
      [v34 presentViewController:v35 animated:1 completion:0];
      sub_1BD37FE84(0);

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1BD37FC40()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BA7828, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD37FE84(unsigned __int8 a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setUserInteractionEnabled_];

  v5 = [v1 explanationView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v9 = [v5 dockView];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = [v9 primaryButton];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setShowSpinner_];

  [v9 setButtonsEnabled_];
}

uint64_t sub_1BD37FFEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD380048()
{
  sub_1BD0E5E8C(319, &qword_1EBD39018);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD3DC40);
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD38840);
      if (v2 <= 0x3F)
      {
        sub_1BE0534B4();
        if (v3 <= 0x3F)
        {
          sub_1BD0FA9D0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD380160(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + ((v8 + 40) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1BD3802F8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v20 = ((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;
      v26 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v24(v26, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1BD3805F4@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1BE04FF64();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435A0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435A8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435B0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435B8);
  v18 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v19);
  v21 = &v35 - v20;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435C0);
  sub_1BD380A60(v35, &v9[*(v22 + 44)]);
  v23 = sub_1BE0501D4();
  v24 = &v9[*(v6 + 44)];
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v13, &qword_1EBD435A0);
  v25 = &v13[*(v10 + 36)];
  v26 = v47;
  *(v25 + 4) = v46;
  *(v25 + 5) = v26;
  *(v25 + 6) = v48;
  v27 = v43;
  *v25 = v42;
  *(v25 + 1) = v27;
  v28 = v45;
  *(v25 + 2) = v44;
  *(v25 + 3) = v28;
  v29 = sub_1BE051214();
  sub_1BD387DD8();
  v30 = sub_1BD5A39EC();
  sub_1BD0DE204(v13, v17, &qword_1EBD435A8);
  v31 = &v17[*(v14 + 36)];
  *v31 = 0;
  *(v31 + 1) = v29;
  *(v31 + 2) = 0x3FF0000000000000;
  *(v31 + 3) = v30;
  sub_1BE04FF54();
  v32 = sub_1BD387F1C();
  sub_1BE050D14();
  (*(v37 + 8))(v4, v38);
  sub_1BD0DE53C(v17, &qword_1EBD435B0);
  sub_1BE052434();
  v40 = v14;
  v41 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v36;
  sub_1BE050DE4();

  return (*(v18 + 8))(v21, v33);
}

uint64_t sub_1BD380A60@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435F0);
  MEMORY[0x1EEE9AC00](v24, v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435F8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43600);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v24 - v13;
  v15 = [*a1 dynamicContent];
  if (v15 && (v16 = v15, v17 = [v15 dynamicContentPageForPageType_], v16, v17) && (v18 = objc_msgSend(v17, sel_customLayout), v17, v18))
  {
    v19 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD380DAC(v18, v19, v5);
    sub_1BD0DE19C(v5, v9, &qword_1EBD435F0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD43608, &qword_1EBD435F0);
    sub_1BD0DE4F4(&qword_1EBD43610, &qword_1EBD43600);
    sub_1BE04F9A4();

    v20 = v5;
    v21 = &qword_1EBD435F0;
  }

  else
  {
    v22 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD38154C(v22, v14);
    sub_1BD0DE19C(v14, v9, &qword_1EBD43600);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD43608, &qword_1EBD435F0);
    sub_1BD0DE4F4(&qword_1EBD43610, &qword_1EBD43600);
    sub_1BE04F9A4();
    v20 = v14;
    v21 = &qword_1EBD43600;
  }

  return sub_1BD0DE53C(v20, v21);
}

uint64_t sub_1BD380DAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v79 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43618);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v80 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v78 = (&v72 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43620);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v72 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43628);
  MEMORY[0x1EEE9AC00](v75, v16);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v73 = &v72 - v20;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v76 = &v72 - v24;
  v25 = [a1 items];
  v26 = sub_1BD0E5E8C(0, &qword_1EBD390A8);
  v27 = sub_1BE052744();

  v28 = v27 >> 62;
  v81 = v15;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
LABEL_68:
    v30 = sub_1BE053704();
  }

  else
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = 0;
  v32 = v27 & 0xC000000000000001;
  v33 = &selRef_thumbnailWidth;
  while (1)
  {
    if (v30 == v31)
    {
      if (!v28)
      {
        v4 = 0;
        v3 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_25;
      }

      v37 = sub_1BE053704();
      if (v37 < 0)
      {
        goto LABEL_76;
      }

      v3 = v37;
      v4 = 0;
      goto LABEL_19;
    }

    if (v32)
    {
      v34 = MEMORY[0x1BFB40900](v31, v27);
    }

    else
    {
      if (v31 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v34 = *(v27 + 8 * v31 + 32);
    }

    v3 = v34;
    v4 = [v34 type];

    if (v4 == 2)
    {
      break;
    }

    if (__OFADD__(v31++, 1))
    {
      goto LABEL_67;
    }
  }

  v4 = v31;
  v3 = v31;
  if (v28)
  {
LABEL_19:
    if (v27 < 0)
    {
      v33 = v27;
    }

    else
    {
      v33 = (v27 & 0xFFFFFFFFFFFFFF8);
    }

    if ((sub_1BE053704() & 0x8000000000000000) == 0)
    {
      v36 = sub_1BE053704();
      goto LABEL_24;
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v36 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = v31;
  v3 = v31;
LABEL_24:
  if (v36 < v3)
  {
    __break(1u);
    goto LABEL_70;
  }

LABEL_25:
  if (v32)
  {
    sub_1BE048C84();
    if (v3)
    {
      v38 = 0;
      do
      {
        v39 = v38 + 1;
        sub_1BE053864();
        v38 = v39;
      }

      while (v3 != v39);
    }

    if (!v28)
    {
LABEL_30:
      v40 = 0;
      v33 = (v29 + 32);
      v3 = (2 * v3) | 1;
      v83 = v27 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_33;
    }
  }

  else
  {
    sub_1BE048C84();
    if (!v28)
    {
      goto LABEL_30;
    }
  }

  v83 = sub_1BE0539D4();
  v33 = v41;
  v3 = v42;
LABEL_33:
  v72 = v40;
  if (v30 == v31)
  {
    v32 = v3;

    v30 = MEMORY[0x1E69E7CC0];
    v3 = v81;
    v26 = v82;
    goto LABEL_64;
  }

  if (v30 < v4)
  {
    goto LABEL_72;
  }

  if (v28)
  {
    if (v27 < 0)
    {
      v31 = v27;
    }

    else
    {
      v31 = v27 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1BE053704() >= v4)
    {
      v43 = sub_1BE053704();
      goto LABEL_44;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v43 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v43 < v4)
  {
    goto LABEL_73;
  }

LABEL_44:
  if (v43 < v30)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!v32 || v4 == v30)
  {
    v32 = v3;
    sub_1BE048C84();
    goto LABEL_53;
  }

  if (v4 >= v30)
  {
    goto LABEL_77;
  }

  v32 = v3;
  sub_1BE048C84();
  v44 = v4;
  do
  {
    v45 = v44 + 1;
    sub_1BE053864();
    v44 = v45;
  }

  while (v30 != v45);
LABEL_53:

  v3 = v81;
  if (v28)
  {
    v29 = sub_1BE0539D4();
    v31 = v46;
    v4 = v47;
    v30 = v48;

    v26 = v82;
    if (v30)
    {
      goto LABEL_58;
    }

LABEL_57:
    sub_1BD1DA320(v29, v31, v4, v30);
    v30 = v49;
    swift_unknownObjectRelease();
    goto LABEL_64;
  }

  v31 = v29 + 32;
  v30 = (2 * v30) | 1;
  v26 = v82;
  if ((v30 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_58:
  sub_1BE053BB4();
  swift_unknownObjectRetain_n();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
    v50 = MEMORY[0x1E69E7CC0];
  }

  v51 = *(v50 + 16);

  if (__OFSUB__(v30 >> 1, v4))
  {
    goto LABEL_78;
  }

  if (v51 != (v30 >> 1) - v4)
  {
LABEL_79:
    swift_unknownObjectRelease_n();
    goto LABEL_57;
  }

  v30 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x1E69E7CC0];
  }

LABEL_64:
  *v3 = sub_1BE04F504();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43630);
  v27 = *(v74 + 16);
  v31 = *(v74 + 24);
  sub_1BD381C44(v83, v33, v72, v32, v26, v27, v31, v3 + *(v52 + 44));
  LOBYTE(v29) = sub_1BE0501F4();
  if (!(v30 >> 62))
  {
    goto LABEL_65;
  }

LABEL_70:
  sub_1BE053704();
LABEL_65:
  sub_1BE04E1F4();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v73;
  sub_1BD0DE204(v3, v73, &qword_1EBD43620);
  v62 = v76;
  v63 = v61 + *(v75 + 36);
  *v63 = v29;
  *(v63 + 8) = v54;
  *(v63 + 16) = v56;
  *(v63 + 24) = v58;
  *(v63 + 32) = v60;
  *(v63 + 40) = 0;
  sub_1BD0DE204(v61, v62, &qword_1EBD43628);
  v64 = sub_1BE04F7C4();
  v65 = v78;
  *v78 = v64;
  *(v65 + 8) = 0x4020000000000000;
  *(v65 + 16) = 0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43638);
  sub_1BD383840(v30, v26, v27, v31, v65 + *(v66 + 44));

  v67 = v77;
  sub_1BD0DE19C(v62, v77, &qword_1EBD43628);
  v68 = v80;
  sub_1BD0DE19C(v65, v80, &qword_1EBD43618);
  v69 = v79;
  sub_1BD0DE19C(v67, v79, &qword_1EBD43628);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43640);
  sub_1BD0DE19C(v68, v69 + *(v70 + 48), &qword_1EBD43618);
  swift_unknownObjectRelease();
  sub_1BD0DE53C(v65, &qword_1EBD43618);
  sub_1BD0DE53C(v62, &qword_1EBD43628);
  sub_1BD0DE53C(v68, &qword_1EBD43618);
  return sub_1BD0DE53C(v67, &qword_1EBD43628);
}

uint64_t sub_1BD38154C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43790);
  v76 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v3);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v73 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43798);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v74 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437A0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v72 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v75 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v77 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v78 = &v61 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v61 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v61 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v61 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437A8);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v71 = &v61 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v61 - v48;
  v67 = &v61 - v48;
  sub_1BD384B10(a1, &v61 - v48);
  v66 = v42;
  sub_1BD3850E0(v42);
  v65 = v21;
  sub_1BD385294(a1, &qword_1EBD437E8, sub_1BD385B9C, v21);
  v64 = v38;
  sub_1BD3850E0(v38);
  v63 = v14;
  sub_1BD385294(a1, &qword_1EBD437D8, sub_1BD3867E4, v14);
  v62 = v34;
  sub_1BD3850E0(v34);
  v50 = v73;
  sub_1BD385308(a1);
  v51 = v71;
  sub_1BD0DE19C(v49, v71, &qword_1EBD437A8);
  sub_1BD0DE19C(v42, v78, &qword_1EBD390F8);
  v52 = v72;
  sub_1BD0DE19C(v21, v72, &qword_1EBD437A0);
  sub_1BD0DE19C(v38, v77, &qword_1EBD390F8);
  v53 = v74;
  sub_1BD0DE19C(v14, v74, &qword_1EBD43798);
  sub_1BD0DE19C(v34, v75, &qword_1EBD390F8);
  v61 = *(v76 + 16);
  v54 = v68;
  v55 = v69;
  v61(v68, v50, v69);
  v56 = v70;
  sub_1BD0DE19C(v51, v70, &qword_1EBD437A8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B0);
  sub_1BD0DE19C(v78, v56 + v57[12], &qword_1EBD390F8);
  sub_1BD0DE19C(v52, v56 + v57[16], &qword_1EBD437A0);
  sub_1BD0DE19C(v77, v56 + v57[20], &qword_1EBD390F8);
  sub_1BD0DE19C(v53, v56 + v57[24], &qword_1EBD43798);
  v58 = v75;
  sub_1BD0DE19C(v75, v56 + v57[28], &qword_1EBD390F8);
  v61((v56 + v57[32]), v54, v55);
  v59 = *(v76 + 8);
  v59(v73, v55);
  sub_1BD0DE53C(v62, &qword_1EBD390F8);
  sub_1BD0DE53C(v63, &qword_1EBD43798);
  sub_1BD0DE53C(v64, &qword_1EBD390F8);
  sub_1BD0DE53C(v65, &qword_1EBD437A0);
  sub_1BD0DE53C(v66, &qword_1EBD390F8);
  sub_1BD0DE53C(v67, &qword_1EBD437A8);
  v59(v54, v55);
  sub_1BD0DE53C(v58, &qword_1EBD390F8);
  sub_1BD0DE53C(v74, &qword_1EBD43798);
  sub_1BD0DE53C(v77, &qword_1EBD390F8);
  sub_1BD0DE53C(v72, &qword_1EBD437A0);
  sub_1BD0DE53C(v78, &qword_1EBD390F8);
  return sub_1BD0DE53C(v71, &qword_1EBD437A8);
}

uint64_t sub_1BD381C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v100 = a8;
  v101 = a7;
  v94 = a4;
  v91 = a2;
  v92 = a3;
  v90 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436E0);
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v86 = (&v79 - v12);
  v93 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  v82 = *(v93 - 8);
  v80 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v93, v13);
  v81 = &v79 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436E8);
  MEMORY[0x1EEE9AC00](v83, v15);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v84 = &v79 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436F0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v97 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v96 = &v79 - v25;
  v89 = sub_1BE04FF64();
  v26 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v27);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436F8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v79 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43700);
  v87 = *(v34 - 8);
  v88 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v79 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43708);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v95 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v79 - v43;
  *v33 = sub_1BE04F7C4();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v45 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43710) + 44)];
  v46 = v92;
  v92 = a6;
  sub_1BD382518(v90, v91, v46, v94, a5, a6, v101, v45);
  sub_1BE04FF44();
  v47 = sub_1BD0DE4F4(&qword_1EBD43718, &qword_1EBD436F8);
  sub_1BE050D14();
  (*(v26 + 8))(v29, v89);
  sub_1BD0DE53C(v33, &qword_1EBD436F8);
  sub_1BE052434();
  v102 = v30;
  v103 = v47;
  v48 = a5;
  v49 = 1;
  swift_getOpaqueTypeConformance2();
  v94 = v44;
  v50 = v88;
  sub_1BE050DE4();

  (*(v87 + 8))(v37, v50);
  v51 = v93;
  v52 = (v48 + *(v93 + 56));
  v53 = *v52;
  if (*v52)
  {
    v91 = v52[1];
    v54 = v82;
    v55 = v81;
    (*(v82 + 16))(v81, v48, v93);
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = (v80 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v92;
    v60 = v101;
    *(v58 + 16) = v92;
    *(v58 + 24) = v60;
    v61 = (*(v54 + 32))(v58 + v56, v55, v51);
    v62 = (v58 + v57);
    v63 = v91;
    *v62 = v53;
    v62[1] = v63;
    MEMORY[0x1EEE9AC00](v61, v64);
    *(&v79 - 4) = v59;
    *(&v79 - 3) = v60;
    *(&v79 - 2) = v48;
    sub_1BD0D44B8(v53);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43728);
    sub_1BD3883C8();
    v65 = v84;
    sub_1BE051704();
    LOBYTE(v56) = *(v48 + *(v51 + 52));
    KeyPath = swift_getKeyPath();
    v67 = swift_allocObject();
    *(v67 + 16) = v56;
    v68 = (v65 + *(v83 + 36));
    *v68 = KeyPath;
    v68[1] = sub_1BD10DF54;
    v68[2] = v67;
    v69 = v85;
    sub_1BD0DE19C(v65, v85, &qword_1EBD436E8);
    v70 = v86;
    *v86 = 0;
    *(v70 + 8) = 1;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43738);
    sub_1BD0DE19C(v69, v70 + *(v71 + 48), &qword_1EBD436E8);
    sub_1BD0D4744(v53);
    sub_1BD0DE53C(v65, &qword_1EBD436E8);
    sub_1BD0DE53C(v69, &qword_1EBD436E8);
    v72 = v96;
    sub_1BD0DE204(v70, v96, &qword_1EBD436E0);
    v49 = 0;
  }

  else
  {
    v72 = v96;
  }

  (*(v98 + 56))(v72, v49, 1, v99);
  v74 = v94;
  v73 = v95;
  sub_1BD0DE19C(v94, v95, &qword_1EBD43708);
  v75 = v97;
  sub_1BD0DE19C(v72, v97, &qword_1EBD436F0);
  v76 = v100;
  sub_1BD0DE19C(v73, v100, &qword_1EBD43708);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43720);
  sub_1BD0DE19C(v75, v76 + *(v77 + 48), &qword_1EBD436F0);
  sub_1BD0DE53C(v72, &qword_1EBD436F0);
  sub_1BD0DE53C(v74, &qword_1EBD43708);
  sub_1BD0DE53C(v75, &qword_1EBD436F0);
  return sub_1BD0DE53C(v73, &qword_1EBD43708);
}

uint64_t sub_1BD382518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22[1] = a1;
  v23 = a5;
  v24 = a8;
  v14 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v22 - v17;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  swift_getKeyPath();
  (*(v15 + 16))(v18, v23, v14);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  (*(v15 + 32))(v20 + v19, v18, v14);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43748);
  sub_1BD0DE4F4(&qword_1EBD390C8, &qword_1EBD390B8);
  sub_1BD0FECB8();
  sub_1BD38851C();
  return sub_1BE0519C4();
}

uint64_t sub_1BD382730@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v48 = a4;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436C0);
  MEMORY[0x1EEE9AC00](v52, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43780);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43788);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43760);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v40 - v25;
  v27 = *a1;
  v28 = [v27 type];
  if (!v28)
  {
    v53 = 0;
    sub_1BE04F9A4();
    v37 = v54;
LABEL_12:
    *v17 = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
    sub_1BD3885A8();
    sub_1BD0FEEBC();
    return sub_1BE04F9A4();
  }

  if (v28 == 1)
  {
    v45 = v22;
    v31 = [v27 leadingText];
    v46 = a5;
    if (!v31)
    {
      (*(v50 + 56))(v13, 1, 1, v51);
LABEL_18:
      v29 = &qword_1EBD436C0;
      sub_1BD0DE19C(v13, v21, &qword_1EBD436C0);
      swift_storeEnumTagMultiPayload();
      sub_1BD388634();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v26, v17, &qword_1EBD43760);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
      sub_1BD3885A8();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v26, &qword_1EBD43760);
      v30 = v13;
      return sub_1BD0DE53C(v30, v29);
    }

    v32 = v31;
    v33 = [v31 text];
    v42 = sub_1BE052434();
    v44 = v34;

    v35 = sub_1BE051464();
    v36 = [v32 textColor];
    v43 = v14;
    v41 = v13;
    if (v36 == 1)
    {
      v40 = v35;
      sub_1BE051464();
    }

    else if (v36 == 2)
    {
      v40 = v35;
      sub_1BE051494();
    }

    else
    {
      if (v36 != 3)
      {
LABEL_17:
        sub_1BD47C8E4();
        LODWORD(v40) = [v32 isBold];
        v39 = *MEMORY[0x1E69B98E0];
        type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
        sub_1BD382D70(v42, v44, v39, v10);

        v13 = v41;
        sub_1BD0DE204(v10, v41, &qword_1EBD436B8);
        (*(v50 + 56))(v13, 0, 1, v51);
        goto LABEL_18;
      }

      v40 = v35;
      sub_1BE0511D4();
    }

    goto LABEL_17;
  }

  if (v28 != 2)
  {
    v55 = 1;
    sub_1BE04F9A4();
    v37 = v56;
    goto LABEL_12;
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD388634();
  sub_1BE04F9A4();
  v29 = &qword_1EBD43760;
  sub_1BD0DE19C(v26, v17, &qword_1EBD43760);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
  sub_1BD3885A8();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();
  v30 = v26;
  return sub_1BD0DE53C(v30, v29);
}

uint64_t sub_1BD382D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436D8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v9);
  v14 = v42 - v13;
  if (a2)
  {
    *&v54[0] = a1;
    *(&v54[0] + 1) = a2;
    v46 = v10;
    v45 = v11;
    v43 = v14;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v19 = v18;
    v42[1] = a3;
    v20 = sub_1BE050564();
    v44 = a4;
    v22 = v21;
    v24 = v23;
    sub_1BD0DDF10(v15, v17, v19 & 1);

    v25 = sub_1BE0505E4();
    v27 = v26;
    LOBYTE(v15) = v28;
    sub_1BD0DDF10(v20, v22, v24 & 1);

    v29 = sub_1BE0505F4();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_1BD0DDF10(v25, v27, v15 & 1);

    KeyPath = swift_getKeyPath();
    v37 = swift_getKeyPath();
    v53 = v33 & 1;
    v52 = 1;
    *&v47 = v29;
    *(&v47 + 1) = v31;
    LOBYTE(v48) = v33 & 1;
    *(&v48 + 1) = v35;
    *&v49 = KeyPath;
    BYTE8(v49) = 0;
    v50 = v37;
    v51 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391B8);
    sub_1BD0FF3E4();
    v38 = v43;
    sub_1BE050DE4();

    v54[2] = v49;
    v54[3] = v50;
    v55 = v51;
    v54[0] = v47;
    v54[1] = v48;
    sub_1BD0DE53C(v54, &qword_1EBD391B8);
    v39 = v44;
    sub_1BD0DE204(v38, v44, &qword_1EBD436D8);
    return (*(v45 + 56))(v39, 0, 1, v46);
  }

  else
  {
    v41 = *(v11 + 56);

    return v41(a4, 1, 1, v12);
  }
}

void sub_1BD3830F0()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B98D0;
  v2 = *MEMORY[0x1E69BB6E0];
  v3 = *MEMORY[0x1E69BB6C0];
  *(v1 + 32) = *MEMORY[0x1E69BB6E0];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x1E69BB6F8];
  *(v1 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  v14 = *v12;
  *(inited + 56) = *v12;
  v15 = sub_1BE052434();
  v16 = MEMORY[0x1E69BA440];
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  v18 = *v16;
  *(inited + 80) = *v16;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v19;
  v20 = *MEMORY[0x1E69BA9C8];
  *(inited + 104) = *MEMORY[0x1E69BA9C8];
  v21 = v10;
  v22 = v14;
  v23 = v18;
  v24 = v20;
  *(inited + 112) = sub_1BD387FA8();
  *(inited + 120) = v25;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD388348(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v26 = sub_1BE052224();

  [v0 subjects:v8 sendEvent:v26];
}

id sub_1BD383358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_1BE04BD74();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43740);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v40 - v19;
  v40[3] = a1;
  if (*(v2 + *(a1 + 52)) == 1)
  {
    sub_1BE04E4F4();
    (*(v16 + 16))(v14, v20, v15);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD1103C8();
    sub_1BE04F9A4();
    return (*(v16 + 8))(v20, v15);
  }

  else
  {
    v40[1] = v11;
    v40[2] = v8;
    v22 = v42;
    (*(v4 + 104))(v7, *MEMORY[0x1E69B8078], v42, v18);
    v23 = [*v2 preferredLanguage];
    sub_1BE052434();

    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6E4();
      v27 = v26;

      (*(v4 + 8))(v7, v22);
      v44 = v25;
      v45 = v27;
      sub_1BD0DDEBC();
      v28 = sub_1BE0506C4();
      v30 = v29;
      LOBYTE(v27) = v31;
      v32 = sub_1BE050564();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      sub_1BD0DDF10(v28, v30, v27 & 1);

      v44 = v32;
      v45 = v34;
      v46 = v36 & 1;
      v47 = v38;
      sub_1BE052434();
      v39 = v41;
      sub_1BE050DE4();

      sub_1BD0DDF10(v32, v34, v36 & 1);

      sub_1BD0DE19C(v39, v14, &qword_1EBD452C0);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      sub_1BD1103C8();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v39, &qword_1EBD452C0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD383840@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v18 - v13;
  v18[1] = a5;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v18[2] = 0;
    v18[3] = result;
    swift_getKeyPath();
    (*(v11 + 16))(v14, a2, v10);
    v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = a3;
    *(v17 + 3) = a4;
    *(v17 + 4) = a1;
    (*(v11 + 32))(&v17[v16], v14, v10);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43648);
    sub_1BD2D5394();
    sub_1BD388104();
    return sub_1BE0519C4();
  }

  result = sub_1BE053704();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_1BD383A48(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v67 = a4;
  v66 = a3;
  v82 = a6;
  v72 = sub_1BE04FF64();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43678);
  MEMORY[0x1EEE9AC00](v69, v11);
  v13 = &v64 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43688);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v14);
  v16 = &v64 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43670);
  MEMORY[0x1EEE9AC00](v78, v17);
  v74 = &v64 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43690);
  MEMORY[0x1EEE9AC00](v80, v19);
  v21 = &v64 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43698);
  MEMORY[0x1EEE9AC00](v76, v22);
  v77 = &v64 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43660);
  MEMORY[0x1EEE9AC00](v81, v24);
  v79 = &v64 - v25;
  v26 = sub_1BE051994();
  v65 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = &v64 - v37;
  v39 = *a1;
  v75 = v40;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v39 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v39 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v41 = *(a2 + 8 * v39 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v41 = MEMORY[0x1BFB40900](v39, a2, v36);
LABEL_5:
  v42 = v41;
  v43 = [v41 type];
  if (!v43)
  {
    v85 = 0;
LABEL_16:
    sub_1BE04F9A4();
    *v21 = v83;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
    sub_1BD388190();
    sub_1BD0FEEBC();
    sub_1BE04F9A4();

    return;
  }

  if (v43 == 1)
  {
    *v13 = sub_1BE04F504();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436A0);
    sub_1BD3843F0(v42, v66, v67, v68, &v13[*(v58 + 44)]);
    sub_1BE04FF44();
    v59 = sub_1BD0DE4F4(&qword_1EBD43680, &qword_1EBD43678);
    v60 = v69;
    sub_1BE050D14();
    (*(v70 + 8))(v10, v72);
    sub_1BD0DE53C(v13, &qword_1EBD43678);
    sub_1BE052434();
    v83 = v60;
    v84 = v59;
    swift_getOpaqueTypeConformance2();
    v61 = v74;
    v62 = v73;
    sub_1BE050DE4();

    (*(v71 + 8))(v16, v62);
    sub_1BD0DE19C(v61, v77, &qword_1EBD43670);
    swift_storeEnumTagMultiPayload();
    sub_1BD0FEDD8();
    sub_1BD38821C();
    v63 = v79;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v63, v21, &qword_1EBD43660);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
    sub_1BD388190();
    sub_1BD0FEEBC();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v63, &qword_1EBD43660);
    sub_1BD0DE53C(v61, &qword_1EBD43670);
    return;
  }

  if (v43 != 2)
  {
    v85 = 1;
    goto LABEL_16;
  }

  v74 = v42;
  sub_1BE051984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v45 = sub_1BE0501E4();
  *(inited + 32) = v45;
  v46 = sub_1BE0501F4();
  *(inited + 33) = v46;
  v47 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v45)
  {
    v47 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v46)
  {
    v47 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  (*(v65 + 32))(v33, v29, v26);
  v56 = &v33[*(v75 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_1BD0DE204(v33, v38, &qword_1EBD390F8);
  sub_1BD0DE19C(v38, v77, &qword_1EBD390F8);
  swift_storeEnumTagMultiPayload();
  sub_1BD0FEDD8();
  sub_1BD38821C();
  v57 = v79;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v57, v21, &qword_1EBD43660);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
  sub_1BD388190();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();

  sub_1BD0DE53C(v57, &qword_1EBD43660);
  sub_1BD0DE53C(v38, &qword_1EBD390F8);
}

uint64_t sub_1BD3843F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a3;
  v76 = a4;
  v77 = a2;
  v74 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436A8);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = (&v64 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v72 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v67 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v66 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436C0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v69 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v64 - v32;
  v34 = [a1 leadingText];
  v35 = [a1 trailingText];
  v78 = v33;
  v79 = v35;
  if (!v34)
  {
    v41 = v35;
    (*(v16 + 56))(v33, 1, 1, v15);
    if (v41)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v65 = v15;
  v36 = v34;
  v37 = [v36 text];
  v64 = sub_1BE052434();
  v39 = v38;

  sub_1BE051464();
  v40 = [v36 textColor];
  if (v40 == 1)
  {
    sub_1BE051464();
    goto LABEL_10;
  }

  if (v40 == 2)
  {
    sub_1BE051494();
    goto LABEL_10;
  }

  if (v40 == 3)
  {
    sub_1BE0511D4();
LABEL_10:
    v44 = v34;

    goto LABEL_12;
  }

  v44 = v34;
LABEL_12:
  sub_1BD47C8E4();
  [v36 isBold];
  v45 = *MEMORY[0x1E69B98E0];
  type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  sub_1BD382D70(v64, v39, v45, v25);

  v46 = v25;
  v47 = v78;
  sub_1BD0DE204(v46, v78, &qword_1EBD436B8);
  (*(v16 + 56))(v47, 0, 1, v65);
  v34 = v44;
  v41 = v79;
  if (v79)
  {
LABEL_13:
    v48 = v41;
    v49 = [v48 text];
    v65 = sub_1BE052434();
    v51 = v50;

    sub_1BE051464();
    v52 = [v48 textColor];
    if (v52 == 3)
    {
      sub_1BE0511D4();
    }

    else if (v52 == 2)
    {
      sub_1BE051494();
    }

    else
    {
      if (v52 != 1)
      {
LABEL_20:
        sub_1BD47C8E4();
        [v48 isBold];
        v53 = *MEMORY[0x1E69B9D30];
        type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
        v54 = v66;
        sub_1BD382D70(v65, v51, v53, v66);

        v55 = v67;
        sub_1BD0DE19C(v54, v67, &qword_1EBD436B8);
        v56 = v68;
        *v68 = 0;
        *(v56 + 8) = v34 != 0;
        *(v56 + 9) = v34 == 0;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436D0);
        sub_1BD0DE19C(v55, v56 + *(v57 + 48), &qword_1EBD436B8);

        sub_1BD0DE53C(v54, &qword_1EBD436B8);
        sub_1BD0DE53C(v55, &qword_1EBD436B8);
        v43 = v72;
        sub_1BD0DE204(v56, v72, &qword_1EBD436A8);
        v42 = 0;
        goto LABEL_21;
      }

      sub_1BE051464();
    }

    goto LABEL_20;
  }

LABEL_7:
  v42 = 1;
  v43 = v72;
LABEL_21:
  (*(v70 + 56))(v43, v42, 1, v71);
  v58 = v78;
  v59 = v69;
  sub_1BD0DE19C(v78, v69, &qword_1EBD436C0);
  v60 = v73;
  sub_1BD0DE19C(v43, v73, &qword_1EBD436B0);
  v61 = v74;
  sub_1BD0DE19C(v59, v74, &qword_1EBD436C0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436C8);
  sub_1BD0DE19C(v60, v61 + *(v62 + 48), &qword_1EBD436B0);

  sub_1BD0DE53C(v43, &qword_1EBD436B0);
  sub_1BD0DE53C(v58, &qword_1EBD436C0);
  sub_1BD0DE53C(v60, &qword_1EBD436B0);
  return sub_1BD0DE53C(v59, &qword_1EBD436C0);
}

uint64_t sub_1BD384B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437F8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v46 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43800);
  MEMORY[0x1EEE9AC00](v52, v9);
  v54 = v46 - v10;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43808);
  MEMORY[0x1EEE9AC00](v51, v16);
  v18 = v46 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43810);
  v20 = MEMORY[0x1EEE9AC00](v53, v19);
  v22 = v46 - v21;
  v23 = (v2 + *(a1 + 56));
  v24 = *v23;
  if (*v23)
  {
    v46[0] = v23[1];
    v25 = *(v11 + 16);
    v47 = v18;
    v48 = v22;
    v26 = v24;
    v25(v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v20);
    v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v49 = a2;
    v50 = v5;
    v30 = *(a1 + 16);
    v31 = *(a1 + 24);
    *(v29 + 16) = v30;
    *(v29 + 24) = v31;
    v32 = (*(v11 + 32))(v29 + v27, v15, a1);
    v46[1] = v46;
    v33 = (v29 + v28);
    v34 = v46[0];
    *v33 = v26;
    v33[1] = v34;
    MEMORY[0x1EEE9AC00](v32, v35);
    v46[-4] = v30;
    v46[-3] = v31;
    v46[-2] = v2;
    v36 = v26;
    sub_1BD0D44B8(v26);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43840);
    sub_1BD0DE4F4(&qword_1EBD43848, &qword_1EBD43840);
    v37 = v47;
    sub_1BE051704();
    LOBYTE(v34) = *(v2 + *(a1 + 52));
    KeyPath = swift_getKeyPath();
    v39 = swift_allocObject();
    *(v39 + 16) = v34;
    v40 = v37;
    v41 = (v37 + *(v51 + 36));
    *v41 = KeyPath;
    v41[1] = sub_1BD185ABC;
    v41[2] = v39;
    sub_1BE052434();
    sub_1BD38881C();
    v42 = v48;
    sub_1BE050DE4();

    sub_1BD0DE53C(v40, &qword_1EBD43808);
    v43 = &qword_1EBD43810;
    sub_1BD0DE19C(v42, v54, &qword_1EBD43810);
    swift_storeEnumTagMultiPayload();
    sub_1BD388768(&qword_1EBD43818, &qword_1EBD43810, &unk_1BE0CFDA8, sub_1BD38881C);
    sub_1BD0DE4F4(&qword_1EBD43838, &qword_1EBD437F8);
    sub_1BE04F9A4();
    sub_1BD0D4744(v36);
    v44 = v42;
  }

  else
  {
    sub_1BD38576C(a1, v8);
    v43 = &qword_1EBD437F8;
    sub_1BD0DE19C(v8, v54, &qword_1EBD437F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD388768(&qword_1EBD43818, &qword_1EBD43810, &unk_1BE0CFDA8, sub_1BD38881C);
    sub_1BD0DE4F4(&qword_1EBD43838, &qword_1EBD437F8);
    sub_1BE04F9A4();
    v44 = v8;
  }

  return sub_1BD0DE53C(v44, v43);
}

double sub_1BD3850E0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE051984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v8 = sub_1BE0501E4();
  *(inited + 32) = v8;
  v9 = sub_1BE0501F4();
  *(inited + 33) = v9;
  v10 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v8)
  {
    v10 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v9)
  {
    v10 = sub_1BE050214();
  }

  (*(v3 + 32))(a1, v6, v2);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36);
  *v11 = v10;
  result = 0.0;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  return result;
}

uint64_t sub_1BD385294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, void, void)@<X3>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F7B4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(v4, *(a1 + 16), *(a1 + 24));
}

uint64_t sub_1BD385308(uint64_t a1)
{
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437C0);
  sub_1BD387990(v1, *(a1 + 16), *(a1 + 24), &v11[*(v12 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD437C8, &qword_1EBD437B8);
  sub_1BE050D14();
  (*(v4 + 8))(v7, v3);
  return sub_1BD0DE53C(v11, &qword_1EBD437B8);
}

uint64_t sub_1BD3854D0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43850);
  return sub_1BD385540(a1 + *(v2 + 44));
}

uint64_t sub_1BD385540@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43728);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437F8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  v18 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  sub_1BD38576C(v18, v17);
  sub_1BD383358(v18, v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD437F8);
  sub_1BD0DE19C(v9, v5, &qword_1EBD43728);
  sub_1BD0DE19C(v13, a1, &qword_1EBD437F8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43858);
  v20 = a1 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BD0DE19C(v5, a1 + *(v19 + 64), &qword_1EBD43728);
  sub_1BD0DE53C(v9, &qword_1EBD43728);
  sub_1BD0DE53C(v17, &qword_1EBD437F8);
  sub_1BD0DE53C(v5, &qword_1EBD43728);
  return sub_1BD0DE53C(v13, &qword_1EBD437F8);
}

uint64_t sub_1BD38576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43860);
  return sub_1BD3857CC(*(a1 + 24), a2 + *(v4 + 44));
}

uint64_t sub_1BD3857CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v40 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v43 = &v38 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v41 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v39 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - v19;
  v21 = PKPaymentOfferInstallmentAssessmentOffer.installmentCountString(useUpdatedText:)(0);
  sub_1BE051494();
  sub_1BE050414();
  v22 = *MEMORY[0x1E69B9D20];
  type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  sub_1BD382D70(v21._countAndFlagsBits, v21._object, v22, v20);

  v23 = PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter();
  v25 = v24;
  sub_1BE051464();
  sub_1BE050324();
  v26 = v39;
  sub_1BD382D70(v23, v25, *MEMORY[0x1E69B96F8], v39);

  PKPaymentOfferInstallmentAssessmentOffer.downpaymentAmountString.getter();
  v28 = v27;
  v30 = v29;
  sub_1BE051494();
  sub_1BE050414();
  v31 = v41;
  sub_1BD382D70(v28, v30, *MEMORY[0x1E69B9440], v41);

  v32 = v42;
  sub_1BD0DE19C(v20, v42, &qword_1EBD436B8);
  v33 = v43;
  sub_1BD0DE19C(v26, v43, &qword_1EBD436B8);
  v34 = v44;
  sub_1BD0DE19C(v31, v44, &qword_1EBD436B8);
  v35 = v45;
  sub_1BD0DE19C(v32, v45, &qword_1EBD436B8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43868);
  sub_1BD0DE19C(v33, v35 + *(v36 + 48), &qword_1EBD436B8);
  sub_1BD0DE19C(v34, v35 + *(v36 + 64), &qword_1EBD436B8);
  sub_1BD0DE53C(v31, &qword_1EBD436B8);
  sub_1BD0DE53C(v26, &qword_1EBD436B8);
  sub_1BD0DE53C(v20, &qword_1EBD436B8);
  sub_1BD0DE53C(v34, &qword_1EBD436B8);
  sub_1BD0DE53C(v33, &qword_1EBD436B8);
  return sub_1BD0DE53C(v32, &qword_1EBD436B8);
}

uint64_t sub_1BD385B9C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v51 = a4;
  v50 = sub_1BE04FF64();
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B8);
  MEMORY[0x1EEE9AC00](v41, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43790);
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v46 = &v40 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v45 = &v40 - v25;
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437C0);
  sub_1BD385FEC(a1, a2, a3, &v13[*(v26 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD437C8, &qword_1EBD437B8);
  sub_1BE050D14();
  v27 = *(v7 + 8);
  v28 = v50;
  v27(v10, v50);
  sub_1BD0DE53C(v13, &qword_1EBD437B8);
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1BD3863E8(v42, v43, v44, &v13[*(v26 + 44)]);
  sub_1BE04FF44();
  v29 = v46;
  sub_1BE050D14();
  v27(v10, v28);
  sub_1BD0DE53C(v13, &qword_1EBD437B8);
  v30 = v49;
  v31 = *(v49 + 16);
  v32 = v47;
  v33 = v45;
  v31(v47, v45, v14);
  v34 = v48;
  v31(v48, v29, v14);
  v35 = v51;
  v31(v51, v32, v14);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437F0);
  v37 = &v35[*(v36 + 48)];
  *v37 = 0;
  v37[8] = 1;
  v31(&v35[*(v36 + 64)], v34, v14);
  v38 = *(v30 + 8);
  v38(v29, v14);
  v38(v33, v14);
  v38(v34, v14);
  return (v38)(v32, v14);
}

id sub_1BD385FEC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v45 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v43 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v40 - v23;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8078], v5, v22);
  v42 = a1;
  v25 = [*a1 preferredLanguage];
  sub_1BE052434();

  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6E4();
    v30 = v29;

    (*(v6 + 8))(v9, v5);
    sub_1BE051464();
    sub_1BE050324();
    v31 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD382D70(v28, v30, v31, v24);

    v32 = PKPaymentOfferInstallmentAssessmentOffer.interestPercentString.getter();
    v34 = v33;
    sub_1BE051494();
    sub_1BE050324();
    sub_1BD382D70(v32, v34, *MEMORY[0x1E69B96F8], v19);

    v35 = v43;
    sub_1BD0DE19C(v24, v43, &qword_1EBD436B8);
    v36 = v44;
    sub_1BD0DE19C(v19, v44, &qword_1EBD436B8);
    v37 = v45;
    sub_1BD0DE19C(v35, v45, &qword_1EBD436B8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0);
    v39 = v37 + *(v38 + 48);
    *v39 = 0;
    *(v39 + 8) = 1;
    sub_1BD0DE19C(v36, v37 + *(v38 + 64), &qword_1EBD436B8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8);
    sub_1BD0DE53C(v24, &qword_1EBD436B8);
    sub_1BD0DE53C(v36, &qword_1EBD436B8);
    return sub_1BD0DE53C(v35, &qword_1EBD436B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3863E8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v46 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v44 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v41 - v23;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8078], v5, v22);
  v43 = a1;
  v25 = [*a1 preferredLanguage];
  sub_1BE052434();

  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6E4();
    v30 = v29;

    (*(v6 + 8))(v9, v5);
    sub_1BE051464();
    sub_1BE050324();
    v31 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD382D70(v28, v30, v31, v24);

    PKPaymentOfferInstallmentAssessmentOffer.feesSummaryString.getter();
    v33 = v32;
    v35 = v34;
    sub_1BE051494();
    sub_1BE050324();
    sub_1BD382D70(v33, v35, *MEMORY[0x1E69B96F8], v19);

    v36 = v44;
    sub_1BD0DE19C(v24, v44, &qword_1EBD436B8);
    v37 = v45;
    sub_1BD0DE19C(v19, v45, &qword_1EBD436B8);
    v38 = v46;
    sub_1BD0DE19C(v36, v46, &qword_1EBD436B8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0);
    v40 = v38 + *(v39 + 48);
    *v40 = 0;
    *(v40 + 8) = 1;
    sub_1BD0DE19C(v37, v38 + *(v39 + 64), &qword_1EBD436B8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8);
    sub_1BD0DE53C(v24, &qword_1EBD436B8);
    sub_1BD0DE53C(v37, &qword_1EBD436B8);
    return sub_1BD0DE53C(v36, &qword_1EBD436B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3867E4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v57 = a1;
  v62 = a4;
  v64 = sub_1BE04FF64();
  v7 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B8);
  MEMORY[0x1EEE9AC00](v55, v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43790);
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v61 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v59 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v65 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v63 = &v51 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v66 = &v51 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v58 = &v51 - v31;
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437C0);
  v32 = &v13[*(v56 + 44)];
  v53 = a2;
  sub_1BD386D78(a1, a2, a3, v32);
  sub_1BE04FF44();
  v54 = sub_1BD0DE4F4(&qword_1EBD437C8, &qword_1EBD437B8);
  sub_1BE050D14();
  v52 = *(v7 + 8);
  v33 = v64;
  v52(v10, v64);
  sub_1BD0DE53C(v13, &qword_1EBD437B8);
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v35 = v56;
  v34 = v57;
  sub_1BD387198(v57, a2, a3, &v13[*(v56 + 44)]);
  sub_1BE04FF44();
  sub_1BE050D14();
  v36 = v33;
  v37 = v52;
  v52(v10, v36);
  sub_1BD0DE53C(v13, &qword_1EBD437B8);
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1BD387594(v34, v53, a3, &v13[*(v35 + 44)]);
  sub_1BE04FF44();
  v38 = v63;
  sub_1BE050D14();
  v37(v10, v64);
  sub_1BD0DE53C(v13, &qword_1EBD437B8);
  v39 = v60;
  v40 = *(v60 + 16);
  v41 = v65;
  v42 = v58;
  v40(v65, v58, v14);
  v43 = v59;
  v40(v59, v66, v14);
  v44 = v61;
  v40(v61, v38, v14);
  v45 = v62;
  v40(v62, v41, v14);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437E0);
  v47 = &v45[v46[12]];
  *v47 = 0;
  v47[8] = 1;
  v40(&v45[v46[16]], v43, v14);
  v48 = &v45[v46[20]];
  *v48 = 0;
  v48[8] = 1;
  v40(&v45[v46[24]], v44, v14);
  v49 = *(v39 + 8);
  v49(v63, v14);
  v49(v66, v14);
  v49(v42, v14);
  v49(v44, v14);
  v49(v43, v14);
  return (v49)(v65, v14);
}

void sub_1BD386D78(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v45 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v43 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v42 - v23;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8078], v5, v22);
  v25 = [*a1 preferredLanguage];
  sub_1BE052434();

  v26 = PKPassKitBundle();
  if (v26)
  {
    v27 = v26;
    v28 = sub_1BE04B6E4();
    v30 = v29;

    (*(v6 + 8))(v9, v5);
    sub_1BE051464();
    sub_1BE050324();
    v31 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD382D70(v28, v30, v31, v24);

    v32 = sub_1BE052404();
    v33 = PKFormattedCurrencyStringFromNumber();

    if (v33)
    {
      v34 = sub_1BE052434();
      v36 = v35;

      sub_1BE051494();
      sub_1BE050324();
      sub_1BD382D70(v34, v36, *MEMORY[0x1E69B96F8], v19);

      v37 = v43;
      sub_1BD0DE19C(v24, v43, &qword_1EBD436B8);
      v38 = v44;
      sub_1BD0DE19C(v19, v44, &qword_1EBD436B8);
      v39 = v45;
      sub_1BD0DE19C(v37, v45, &qword_1EBD436B8);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0);
      v41 = v39 + *(v40 + 48);
      *v41 = 0;
      *(v41 + 8) = 1;
      sub_1BD0DE19C(v38, v39 + *(v40 + 64), &qword_1EBD436B8);
      sub_1BD0DE53C(v19, &qword_1EBD436B8);
      sub_1BD0DE53C(v24, &qword_1EBD436B8);
      sub_1BD0DE53C(v38, &qword_1EBD436B8);
      sub_1BD0DE53C(v37, &qword_1EBD436B8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD387198@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v46 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v44 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v41 - v23;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8078], v5, v22);
  v43 = a1;
  v25 = [*a1 preferredLanguage];
  sub_1BE052434();

  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6E4();
    v30 = v29;

    (*(v6 + 8))(v9, v5);
    sub_1BE051464();
    sub_1BE050324();
    v31 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD382D70(v28, v30, v31, v24);

    PKPaymentOfferInstallmentAssessmentOffer.totalInterestDollarString.getter();
    v33 = v32;
    v35 = v34;
    sub_1BE051494();
    sub_1BE050324();
    sub_1BD382D70(v33, v35, *MEMORY[0x1E69B96F8], v19);

    v36 = v44;
    sub_1BD0DE19C(v24, v44, &qword_1EBD436B8);
    v37 = v45;
    sub_1BD0DE19C(v19, v45, &qword_1EBD436B8);
    v38 = v46;
    sub_1BD0DE19C(v36, v46, &qword_1EBD436B8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0);
    v40 = v38 + *(v39 + 48);
    *v40 = 0;
    *(v40 + 8) = 1;
    sub_1BD0DE19C(v37, v38 + *(v39 + 64), &qword_1EBD436B8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8);
    sub_1BD0DE53C(v24, &qword_1EBD436B8);
    sub_1BD0DE53C(v37, &qword_1EBD436B8);
    return sub_1BD0DE53C(v36, &qword_1EBD436B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD387594@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v46 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v44 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v41 - v23;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8078], v5, v22);
  v43 = a1;
  v25 = [*a1 preferredLanguage];
  sub_1BE052434();

  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6E4();
    v30 = v29;

    (*(v6 + 8))(v9, v5);
    sub_1BE051464();
    sub_1BE050324();
    v31 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD382D70(v28, v30, v31, v24);

    PKPaymentOfferInstallmentAssessmentOffer.totalFeesDollarString.getter();
    v33 = v32;
    v35 = v34;
    sub_1BE051494();
    sub_1BE050324();
    sub_1BD382D70(v33, v35, *MEMORY[0x1E69B96F8], v19);

    v36 = v44;
    sub_1BD0DE19C(v24, v44, &qword_1EBD436B8);
    v37 = v45;
    sub_1BD0DE19C(v19, v45, &qword_1EBD436B8);
    v38 = v46;
    sub_1BD0DE19C(v36, v46, &qword_1EBD436B8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0);
    v40 = v38 + *(v39 + 48);
    *v40 = 0;
    *(v40 + 8) = 1;
    sub_1BD0DE19C(v37, v38 + *(v39 + 64), &qword_1EBD436B8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8);
    sub_1BD0DE53C(v24, &qword_1EBD436B8);
    sub_1BD0DE53C(v37, &qword_1EBD436B8);
    return sub_1BD0DE53C(v36, &qword_1EBD436B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD387990@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v45 = a3;
  v49 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v47 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v46 = &v44 - v18;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v44 - v22;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8078], v5, v21);
  v24 = *a1;
  v25 = [*a1 preferredLanguage];
  sub_1BE052434();

  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6E4();
    v30 = v29;

    (*(v6 + 8))(v9, v5);
    sub_1BE051464();
    sub_1BE050324();
    v31 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
    sub_1BD382D70(v28, v30, v31, v23);

    v32 = [v24 totalCost];
    if (v32 && (v33 = v32, v34 = [v32 formattedStringValue], v33, v34))
    {
      v35 = sub_1BE052434();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    sub_1BE051464();
    sub_1BE050324();
    v38 = v46;
    sub_1BD382D70(v35, v37, *MEMORY[0x1E69B96F8], v46);

    v39 = v47;
    sub_1BD0DE19C(v23, v47, &qword_1EBD436B8);
    v40 = v48;
    sub_1BD0DE19C(v38, v48, &qword_1EBD436B8);
    v41 = v49;
    sub_1BD0DE19C(v39, v49, &qword_1EBD436B8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0);
    v43 = v41 + *(v42 + 48);
    *v43 = 0;
    *(v43 + 8) = 1;
    sub_1BD0DE19C(v40, v41 + *(v42 + 64), &qword_1EBD436B8);
    sub_1BD0DE53C(v38, &qword_1EBD436B8);
    sub_1BD0DE53C(v23, &qword_1EBD436B8);
    sub_1BD0DE53C(v40, &qword_1EBD436B8);
    return sub_1BD0DE53C(v39, &qword_1EBD436B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD387DD8()
{
  result = qword_1EBD435C8;
  if (!qword_1EBD435C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435A8);
    sub_1BD387E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD435C8);
  }

  return result;
}

unint64_t sub_1BD387E64()
{
  result = qword_1EBD435D0;
  if (!qword_1EBD435D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435A0);
    sub_1BD0DE4F4(&qword_1EBD435D8, &qword_1EBD435E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD435D0);
  }

  return result;
}

unint64_t sub_1BD387F1C()
{
  result = qword_1EBD435E8;
  if (!qword_1EBD435E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435B0);
    sub_1BD387DD8();
    sub_1BD0FEBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD435E8);
  }

  return result;
}

uint64_t sub_1BD387FA8()
{
  v1 = [*(v0 + 8) offers];
  if (v1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD39018);
    v2 = sub_1BE052744();

    if (v2 >> 62)
    {
      sub_1BE053704();
    }
  }

  return sub_1BE053B24();
}

void sub_1BD388064(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for PaymentOfferInstallmentPlanSummaryView() - 8);
  v8 = v2[4];
  v9 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  sub_1BD383A48(a1, v8, v9, v5, v6, a2);
}

unint64_t sub_1BD388104()
{
  result = qword_1EBD43650;
  if (!qword_1EBD43650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43648);
    sub_1BD388190();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43650);
  }

  return result;
}

unint64_t sub_1BD388190()
{
  result = qword_1EBD43658;
  if (!qword_1EBD43658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43660);
    sub_1BD0FEDD8();
    sub_1BD38821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43658);
  }

  return result;
}

unint64_t sub_1BD38821C()
{
  result = qword_1EBD43668;
  if (!qword_1EBD43668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43678);
    sub_1BD0DE4F4(&qword_1EBD43680, &qword_1EBD43678);
    swift_getOpaqueTypeConformance2();
    sub_1BD388348(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43668);
  }

  return result;
}

uint64_t sub_1BD388348(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD3883C8()
{
  result = qword_1EBD43730;
  if (!qword_1EBD43730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43728);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43730);
  }

  return result;
}

uint64_t sub_1BD388480@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PaymentOfferInstallmentPlanSummaryView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BD382730(a1, v8, v5, v6, a2);
}

unint64_t sub_1BD38851C()
{
  result = qword_1EBD43750;
  if (!qword_1EBD43750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43748);
    sub_1BD3885A8();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43750);
  }

  return result;
}

unint64_t sub_1BD3885A8()
{
  result = qword_1EBD43758;
  if (!qword_1EBD43758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43760);
    sub_1BD388634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43758);
  }

  return result;
}

unint64_t sub_1BD388634()
{
  result = qword_1EBD43768;
  if (!qword_1EBD43768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD436C0);
    sub_1BD3886B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43768);
  }

  return result;
}

unint64_t sub_1BD3886B8()
{
  result = qword_1EBD43770;
  if (!qword_1EBD43770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD436B8);
    sub_1BD388768(&qword_1EBD43778, &qword_1EBD436D8, &unk_1BE0CFBE8, sub_1BD0FF3E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43770);
  }

  return result;
}

uint64_t sub_1BD388768(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD388348(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD38881C()
{
  result = qword_1EBD43820;
  if (!qword_1EBD43820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43808);
    sub_1BD0DE4F4(&qword_1EBD43828, &qword_1EBD43830);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43820);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  v3 = (v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)));

  v4 = *(v2 + 48);
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  if (*(v3 + *(v2 + 56)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD388A88()
{
  v1 = *(type metadata accessor for PaymentOfferInstallmentPlanSummaryView() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1BD3830F0();
  return v2();
}

unint64_t sub_1BD388B3C()
{
  result = qword_1EBD43870;
  if (!qword_1EBD43870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435B0);
    sub_1BD387F1C();
    swift_getOpaqueTypeConformance2();
    sub_1BD388348(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43870);
  }

  return result;
}

uint64_t sub_1BD388C38(uint64_t a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for AppIconImage.Loader();
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDB8);
  sub_1BE04D874();
  *(v8 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord) = 0;
  v9 = (v8 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_iconSize);
  *v9 = a3;
  v9[1] = a4;
  v10 = (v8 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_bundleIdentifier);
  *v10 = a1;
  v10[1] = a2;
  sub_1BE048C84();
  return v8;
}

__n128 sub_1BD388CFC@<Q0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1BE051584();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  type metadata accessor for AppIconImage.Loader();
  sub_1BD389E68(&qword_1EBD438C0, type metadata accessor for AppIconImage.Loader);
  v24 = v5;
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v40)
  {
    v6 = v40;
    sub_1BE04E3C4();

    v7 = [objc_opt_self() mainScreen];
    [v7 scale];

    sub_1BE051564();
    v9 = v21;
    v8 = v22;
    v10 = v23;
    (*(v22 + 104))(v21, *MEMORY[0x1E6981630], v23);
    v11 = sub_1BE0515E4();

    (*(v8 + 8))(v9, v10);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v26[38] = v39;
    *&v26[22] = v38;
    *&v26[6] = v37;
    v27[0] = v11;
    v27[1] = 0;
    LOWORD(v28[0]) = 1;
    *(v28 + 2) = *v26;
    *&v28[3] = *(&v39 + 1);
    *(&v28[2] + 2) = *&v26[32];
    *(&v28[1] + 2) = *&v26[16];
    WORD4(v28[3]) = 257;
    BYTE10(v28[3]) = 1;
    v41 = v28[0];
    *(v43 + 11) = *(&v28[2] + 11);
    v40 = v11;
    v42 = v28[1];
    v43[0] = v28[2];
    v29 = 0;
    v45 = 0;
    sub_1BD38A144(v27, &v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438D0);
    sub_1BD389EC0();
    sub_1BD38A02C();
    sub_1BE04F9A4();

    sub_1BD38A1B4(v27);
    v43[0] = v33;
    v43[1] = v34;
    v44 = v35;
    v45 = v36;
    v40 = v30;
    v41 = v31;
    v42 = v32;
  }

  else
  {
    v12 = sub_1BE051404();
    KeyPath = swift_getKeyPath();
    v14 = swift_allocObject();
    v15 = *(v1 + 1);
    *(v14 + 16) = *v1;
    *(v14 + 32) = v15;
    *(v14 + 48) = v1[4];
    sub_1BD389EB8();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v27[0]) = 1;
    *&v30 = KeyPath;
    *(&v30 + 1) = v12;
    *&v31 = sub_1BD389EB0;
    *(&v31 + 1) = v14;
    v32 = 0uLL;
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438D0);
    sub_1BD389EC0();
    sub_1BD38A02C();
    sub_1BE04F9A4();
  }

  result = v43[0];
  v17 = v44;
  v18 = v25;
  *(v25 + 64) = v43[1];
  *(v18 + 80) = v17;
  *(v18 + 96) = v45;
  v19 = v41;
  *v18 = v40;
  *(v18 + 16) = v19;
  *(v18 + 32) = v42;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_1BD3891D0()
{
  type metadata accessor for AppIconImage.Loader();
  sub_1BD389E68(&qword_1EBD438C0, type metadata accessor for AppIconImage.Loader);
  sub_1BE04E3C4();
  sub_1BD3892E4();
}

uint64_t sub_1BD389270()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD3892E4()
{
  sub_1BD389858(*(v0 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_bundleIdentifier), *(v0 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_bundleIdentifier + 8));
  v1 = *(v0 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_iconSize);
    v3 = *(v0 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_iconSize + 8);
    v4 = objc_opt_self();
    v5 = v1;
    v6 = [v4 mainScreen];
    [v6 scale];
    v8 = v7;

    v9 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:v2 scale:{v3, v8}];
    v10 = [v5 appClipMetadata];
    if (v10)
    {

      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    [v9 setShape_];
    v12 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v13 = sub_1BE052404();
    v14 = [v12 initWithBundleIdentifier_];

    v16[4] = sub_1BD389D98;
    v16[5] = v0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1BD20815C;
    v16[3] = &block_descriptor_72;
    v15 = _Block_copy(v16);
    sub_1BE048964();

    [v14 getCGImageForImageDescriptor:v9 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_1BD3894F0(void *a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE051FA4();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD389DA0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_3;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD389E68(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v18 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_1BD3897E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD389858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v6, v7);
  objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1BE048C84();
  v8 = sub_1BD469048(a1, a2, 1);
  v9 = *(v3 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord) = v8;
}

uint64_t sub_1BD389A20()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438B8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppIconImage.Loader()
{
  result = qword_1EBD438A0;
  if (!qword_1EBD438A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD389B40()
{
  sub_1BD389BEC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD389BEC()
{
  if (!qword_1EBD438B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CDB8);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD438B0);
    }
  }
}

uint64_t sub_1BD389C5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppIconImage.Loader();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD389CA0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD389D20(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD389DA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD389DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD389E68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD389EC0()
{
  result = qword_1EBD438D8;
  if (!qword_1EBD438D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD438C8);
    sub_1BD389F4C();
    sub_1BD389FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438D8);
  }

  return result;
}

unint64_t sub_1BD389F4C()
{
  result = qword_1EBD438E0;
  if (!qword_1EBD438E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD438E8);
    sub_1BD23F914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438E0);
  }

  return result;
}

unint64_t sub_1BD389FD8()
{
  result = qword_1EBD438F0;
  if (!qword_1EBD438F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438F0);
  }

  return result;
}

unint64_t sub_1BD38A02C()
{
  result = qword_1EBD438F8;
  if (!qword_1EBD438F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD438D0);
    sub_1BD38A0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438F8);
  }

  return result;
}

unint64_t sub_1BD38A0B8()
{
  result = qword_1EBD43900;
  if (!qword_1EBD43900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43908);
    sub_1BD306A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43900);
  }

  return result;
}

uint64_t sub_1BD38A144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD38A1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD38A21C()
{
  result = qword_1EBD43910;
  if (!qword_1EBD43910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43918);
    sub_1BD389EC0();
    sub_1BD38A02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43910);
  }

  return result;
}

unint64_t sub_1BD38A2B4()
{
  result = qword_1EBD43920;
  if (!qword_1EBD43920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43920);
  }

  return result;
}

uint64_t sub_1BD38A308(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_1BD102A4C();
    sub_1BD38A9F4(&unk_1EBD43930, sub_1BD102A4C);
    v4 = sub_1BE052A34();
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD38A3C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD041C28;

  return sub_1BD38A478();
}

uint64_t sub_1BD38A494()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[19] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD38A678;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43928);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD38A308;
    v0[13] = &block_descriptor_73;
    v0[14] = v3;
    [v2 passesWithSearchableTransactions_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1BE0484F4();
    sub_1BD38A9F4(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1BD38A678()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD38A758, 0, 0);
}

uint64_t sub_1BD38A758()
{
  if (*(v0 + 144))
  {
    v1 = sub_1BD1DA4F8(*(v0 + 144));
    *(v0 + 160) = v1;

    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_1BD38A86C;

    return sub_1BD0391EC(v1, 1);
  }

  else
  {

    v4 = *(v0 + 8);
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }
}

uint64_t sub_1BD38A86C(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD38A98C, 0, 0);
}

uint64_t sub_1BD38A98C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BD38A9F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD38AA3C(void *a1)
{
  v3 = sub_1BE04D214();
  v23 = *(v3 - 8);
  v24 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 updateRotation];
  v9 = v1[2];
  v8 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[12];
  v13 = v1[13];
  if (v1[11])
  {
    [a1 bindSecureIndicatorProviderToAuthenticator_];
  }

  v22 = v7;
  if (v12)
  {
    v29 = *&v12;
    v30 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1BD976224;
    v28 = &block_descriptor_74;
    v12 = _Block_copy(&aBlock);
    sub_1BE048964();
  }

  [a1 setState:v9 animated:1 completionHandler:{v12, v22}];
  _Block_release(v12);
  [a1 setColorMode:v10 animated:1];
  if (v9 == 10 && v11)
  {
    sub_1BD38B4E4(a1, v8, v11, &aBlock);
    if (!aBlock)
    {
      return;
    }

    v14 = v1;
    [a1 setCustomImage:*&v26 withAlignmentEdgeInsets:{*&v27, *&v28, v29}];
    if (v10 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0);
      sub_1BE04FF74();
      v15 = v31[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState];

      if ((v15 & 1) == 0)
      {
        v16 = v22;
        sub_1BE04D084();
        v17 = sub_1BE04D204();
        v18 = sub_1BE052C54();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1BD026000, v17, v18, "glyphView - revealedErrorAction()", v19, 2u);
          MEMORY[0x1BFB45F20](v19, -1, -1);
        }

        v20 = (*(v23 + 8))(v16, v24);
        (v14[16])(v20);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0);
    sub_1BE04FF74();
    sub_1BD38B710(&aBlock);
    v21 = v31;
    v31[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState] = v10 == 3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0);
    sub_1BE04FF74();
    v21 = aBlock;
    *(aBlock + OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState) = v10 == 3;
  }
}

id sub_1BD38AE28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlyphView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_1BD38AF04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD38AF4C(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

id sub_1BD38B018@<X0>(void *a1@<X8>)
{
  v3 = v1[7];
  v25 = v1[6];
  v26 = v3;
  v27 = v1[8];
  v4 = v1[3];
  v21 = v1[2];
  v22 = v4;
  v5 = v1[5];
  v23 = v1[4];
  v24 = v5;
  v6 = v1[1];
  v19 = *v1;
  v20 = v6;
  v7 = type metadata accessor for GlyphView.Coordinator();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState] = 0;
  v9 = &v8[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_parent];
  *v9 = v19;
  v10 = v23;
  v12 = v20;
  v11 = v21;
  v9[3] = v22;
  v9[4] = v10;
  v9[1] = v12;
  v9[2] = v11;
  v13 = v27;
  v15 = v24;
  v14 = v25;
  v9[7] = v26;
  v9[8] = v13;
  v9[5] = v15;
  v9[6] = v14;
  sub_1BD38B1D8(&v19, v18);
  v17.receiver = v8;
  v17.super_class = v7;
  result = objc_msgSendSuper2(&v17, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD38B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD38B778();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD38B148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD38B778();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD38B1AC()
{
  sub_1BD38B778();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD38B210()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69BC758]) initWithStyle_];
  if (v1)
  {
    v2 = v1;
    [v1 setState:6 animated:0 completionHandler:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0);
    sub_1BE04FF74();
    [v2 setDelegate_];

    [v2 setBounds_];
    [v2 updateRasterizationScale_];
    if (*(v0 + 88))
    {
      [v2 bindSecureIndicatorProviderToAuthenticator_];
    }

    return v2;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD38B358(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = PKPassKitUIBundle();
  v5 = sub_1BE052404();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

  v7 = 0uLL;
  if (!v6)
  {
    v11 = 0;
    v16 = 0uLL;
    goto LABEL_9;
  }

  v8 = [v6 imageWithRenderingMode_];

  v9 = [a1 primaryColor];
  v10 = [v8 _flatImageWithColor_];

  if (!v10)
  {
    v11 = 0;
LABEL_8:
    v16 = 0uLL;
    v7 = 0uLL;
    goto LABEL_9;
  }

  v11 = [v10 CGImage];
  if (!v11)
  {

    goto LABEL_8;
  }

  [v10 alignmentRectInsets];
  v18 = v12;
  v19 = v13;
  v17 = v14;
  v20 = v15;

  *&v16 = v17;
  *&v7 = v18;
  *(&v7 + 1) = v19;
  *(&v16 + 1) = v20;
LABEL_9:
  *a2 = v11;
  *(a2 + 8) = v7;
  *(a2 + 24) = v16;
}

void sub_1BD38B4E4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 != 0xD00000000000001ALL || 0x80000001BE125F50 != a3)
  {
    v5 = a1;
    v6 = sub_1BE053B84();
    a1 = v5;
    if ((v6 & 1) == 0)
    {
      v10 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:26.0];
      v11 = sub_1BE052404();
      v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

      if (v12 && (v13 = [v12 imageWithRenderingMode_], v12, v14 = objc_msgSend(v5, sel_primaryColor), v15 = objc_msgSend(v13, sel__flatImageWithColor_, v14), v13, v14, v15))
      {
        v7 = [v15 CGImage];
        if (v7)
        {
          [v15 alignmentRectInsets];
          v21 = v16;
          v22 = v17;
          v20 = v18;
          v23 = v19;

          *&v9 = v20;
          *&v8 = v21;
          *(&v8 + 1) = v22;
          *(&v9 + 1) = v23;
          goto LABEL_11;
        }
      }

      else
      {

        v7 = 0;
      }

      v8 = 0uLL;
      v9 = 0uLL;
      goto LABEL_11;
    }
  }

  sub_1BD38B358(a1, &v24);
  v7 = v24;
  v8 = v25;
  v9 = v26;
LABEL_11:
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 24) = v9;
}

uint64_t sub_1BD38B710(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD38B778()
{
  result = qword_1EBD439D0;
  if (!qword_1EBD439D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD439D0);
  }

  return result;
}

uint64_t sub_1BD38B830()
{
  sub_1BD38BA10(v0 + OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScrollViewManager()
{
  result = qword_1EBD439E0;
  if (!qword_1EBD439E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD38B8E8()
{
  sub_1BD38B978();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD38B978()
{
  if (!qword_1EBD439F0)
  {
    sub_1BE04ECA4();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD439F0);
    }
  }
}

uint64_t sub_1BD38B9D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScrollViewManager();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD38BA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD38BA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppleCardRewardsInfoView();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BD579C04())
  {
    v8 = *(a1 + 72);
    if (v8 != 1)
    {
      v9 = *(a1 + 64);
      v11 = *(a1 + 80);
      v10 = *(a1 + 88);
      v12 = *(a1 + 104);
      v21 = *(a1 + 96);
      v13 = *(a1 + 112);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      if (PKOslo2024UIUpdatesEnabled())
      {
        if (v8 || (v13 & 1) != 0)
        {
LABEL_15:
          v22 = a2;
          v16 = v21;
          goto LABEL_16;
        }
      }

      else if ((v13 & 1) != 0 || v10)
      {
        goto LABEL_15;
      }

      sub_1BD38BF48(v9, v8);
    }
  }

  v8 = *(a1 + 16);
  if (v8 != 1)
  {
    v22 = a2;
    v16 = *(a1 + 40);
    v12 = *(a1 + 48);
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v9 = *(a1 + 8);
    v13 = *(a1 + 56);
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
LABEL_16:
    sub_1BD38BEE0(a1, v7, type metadata accessor for PassEligibleRewardsInfo);
    v17 = &v7[*(v4 + 20)];
    *v17 = v9;
    *(v17 + 1) = v8;
    *(v17 + 2) = v11;
    *(v17 + 3) = v10;
    *(v17 + 4) = v16;
    *(v17 + 5) = v12;
    v17[48] = v13 & 1;
    v18 = &v7[*(v4 + 24)];
    *v18 = v11;
    *(v18 + 1) = v10;
    v19 = v22;
    sub_1BD38BEE0(v7, v22, type metadata accessor for AppleCardRewardsInfoView);
    (*(v23 + 56))(v19, 0, 1, v4);
    return sub_1BE048C84();
  }

  sub_1BD38BE84(a1);
  v14 = *(v23 + 56);

  return v14(a2, 1, 1, v4);
}

uint64_t type metadata accessor for AppleCardRewardsInfoView()
{
  result = qword_1EBD439F8;
  if (!qword_1EBD439F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BD38BD38@<D0>(uint64_t a1@<X8>)
{
  v2 = PKOslo2024UIUpdatesEnabled();
  type metadata accessor for AppleCardRewardsInfoView();
  if (!v2)
  {
    v3 = *MEMORY[0x1E69B9B90];
    sub_1BE048C84();
    v4 = v3;
  }

  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43A08);
  sub_1BD38C09C(&qword_1EBD43A10, &qword_1EBD43A08, &unk_1BE0D0310, sub_1BD38C06C);
  sub_1BD38C16C();
  sub_1BE04F9A4();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_1BD38BE84(uint64_t a1)
{
  v2 = type metadata accessor for PassEligibleRewardsInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD38BEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD38BF48(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1BD38BFC4()
{
  type metadata accessor for PassEligibleRewardsInfo();
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD38C09C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD38C118()
{
  result = qword_1EBD43A28;
  if (!qword_1EBD43A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A28);
  }

  return result;
}

unint64_t sub_1BD38C16C()
{
  result = qword_1EBD43A30;
  if (!qword_1EBD43A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A30);
  }

  return result;
}

unint64_t sub_1BD38C1C0()
{
  result = qword_1EBD43A38;
  if (!qword_1EBD43A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43A40);
    sub_1BD38C09C(&qword_1EBD43A10, &qword_1EBD43A08, &unk_1BE0D0310, sub_1BD38C06C);
    sub_1BD38C16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A38);
  }

  return result;
}

unint64_t sub_1BD38C27C()
{
  result = qword_1EBD43A48;
  if (!qword_1EBD43A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A48);
  }

  return result;
}

unint64_t sub_1BD38C2D4()
{
  result = qword_1EBD43A50;
  if (!qword_1EBD43A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A50);
  }

  return result;
}

uint64_t NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR___PKNearbyPeerPaymentViewController_divider;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  v14 = OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentMetadataView()) init];
  v15 = OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView;
  *&v5[v15] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentErrorView()) init];
  v16 = OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager;
  *&v5[v16] = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager()) init];
  *&v5[OBJC_IVAR___PKNearbyPeerPaymentViewController_amount] = 0;
  v17 = &v5[OBJC_IVAR___PKNearbyPeerPaymentViewController_memo];
  *v17 = 0;
  *(v17 + 1) = 0;
  v5[OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar] = 1;
  v37 = a4;
  v38 = a5;
  switch(a1)
  {
    case 0:
      v18 = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentReceiverVFXViewController()) init];
      v19 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
      swift_beginAccess();
      v18[v19] = 0;
LABEL_5:
      *&v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_context] = a1;
      *&v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] = v18;
      v20 = *&v6[v16];
      swift_getKeyPath();
      sub_1BD38EA34();
      v36 = v18;
      v21 = v20;
      sub_1BE04B594();

      v22 = *&v21[OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData];

      v23 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentFooterView());
      *&v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView] = sub_1BD89E9F4(a1, v22);
      v24 = &v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_screenEdgeSwipeAction];
      *v24 = a2;
      *(v24 + 1) = a3;
      v25 = &v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction];
      *v25 = v37;
      *(v25 + 1) = v38;
      v39.receiver = v6;
      v39.super_class = type metadata accessor for NearbyPeerPaymentViewController();
      sub_1BE048964();
      sub_1BE048964();
      v26 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
      v27 = *&v26[OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v29);
      v30 = v26;
      v31 = v27;
      sub_1BE04B584();

      v32 = *&v30[OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView];
      v33 = v30;
      [v32 setDelegate_];
      v34 = *&v33[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView] + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
      swift_beginAccess();
      *(v34 + 8) = &protocol witness table for NearbyPeerPaymentViewController;
      swift_unknownObjectWeakAssign();

      [v33 addChildViewController_];

      return v33;
    case 1:
      v18 = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentSenderVFXViewController()) init];
      goto LABEL_5;
    case 2:
      sub_1BE053994();
      __break(1u);
      break;
  }

  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

void *sub_1BD38C7B8()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD38C804(void *a1)
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1BD38D490();
}

void (*sub_1BD38C86C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD38C8D0;
}

void sub_1BD38C8D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BD38D490();
  }
}

uint64_t sub_1BD38C904()
{
  v1 = (v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v2 = *v1;
  sub_1BE048C84();
  return v2;
}

uint64_t sub_1BD38C95C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BD38CA1C()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BD38CA60(char a1)
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD38EBB4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_75;
  v6 = _Block_copy(aBlock);

  [v4 animateWithDuration:v6 animations:0.5];
  _Block_release(v6);
}

void (*sub_1BD38CB70(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1BD38CBF8;
}

void sub_1BD38CBF8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3[4] = sub_1BD38F518;
    v3[5] = v5;
    *v3 = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1BD126964;
    v3[3] = &block_descriptor_9_2;
    v6 = _Block_copy(v3);

    [v4 animateWithDuration:v6 animations:0.5];
    _Block_release(v6);
  }

  free(v3);
}

void sub_1BD38CD04()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D234();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_context];
  v10 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager];
  v11 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController());
  v12 = NearbyPeerPaymentAppearancePreferencesViewController.init(context:identityManager:)(v9, v10);
  v13 = v12;
  if (_UISolariumFeatureFlagEnabled())
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  }

  v14 = [v0 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  v16 = sub_1BE052E84();
  v17 = [v13 sheetPresentationController];
  if (v17)
  {
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BE0B7020;
    v49 = v8;
    v20 = objc_opt_self();
    v21 = &selRef_largeDetent;
    if ((v16 & 1) == 0)
    {
      v21 = &selRef_mediumDetent;
    }

    *(v19 + 32) = [v20 *v21];
    sub_1BD0E5E8C(0, &unk_1EBD43AF0);
    v22 = sub_1BE052724();

    [v18 setDetents_];
  }

  v23 = [v13 presentationController];
  if (v23)
  {
    v24 = v23;
    sub_1BE052EE4();
    sub_1BE04D224();
    sub_1BE052EF4();
  }

  [v1 presentViewController:v13 animated:1 completion:0];
  if (v9 == 1)
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v40 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v41 = sub_1BE052434();
    v42 = MEMORY[0x1E69BA440];
    *(inited + 40) = v41;
    *(inited + 48) = v43;
    v44 = *v42;
    *(inited + 56) = *v42;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v45;
    v46 = v40;
    v47 = v44;
    v48 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v51, v48);

    sub_1BD11326C(v51);
  }

  else if (v9)
  {
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);
    v26 = v50;
    v27 = &v50[*(v25 + 48)];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    *v27 = 0;
    *(v27 + 1) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1BE0B6CA0;
    v30 = *MEMORY[0x1E69BA680];
    *(v29 + 32) = *MEMORY[0x1E69BA680];
    v31 = sub_1BE052434();
    v32 = MEMORY[0x1E69BA440];
    *(v29 + 40) = v31;
    *(v29 + 48) = v33;
    v34 = *v32;
    *(v29 + 56) = *v32;
    *(v29 + 64) = sub_1BE052434();
    *(v29 + 72) = v35;
    v36 = v30;
    v37 = v34;
    v38 = sub_1BD1AAF50(v29);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v26, v38);

    sub_1BD32E45C(v26);
  }
}

void sub_1BD38D28C(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
  sub_1BD0EE8CC(a1, v7);
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD266DC0(v7, v3 + v4);
  swift_endAccess();
  sub_1BD97A1FC();
  sub_1BD0DE53C(v7, &qword_1EBD3F678);
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD38D35C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider);
  [a1 contentOffset];
  v3 = 0.0;
  if (v4 > 0.0)
  {
    v3 = 1.0;
  }

  return [v2 setAlpha_];
}

void sub_1BD38D42C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_1BD38D490();
}

void sub_1BD38D490()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  v6 = swift_beginAccess();
  v7 = *(v2 + v5);
  *(v2 + v5) = v4;
  if (v7)
  {
    if (v4)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43B00);
      v8 = v4;
      v9 = v7;
      v10 = sub_1BE053074();

      if (v10)
      {

LABEL_11:
        goto LABEL_12;
      }
    }

LABEL_7:
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))(v6);
    if (*(v2 + v5))
    {
      sub_1BD6323D4();
      v11 = [v2 view];
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v11;
      [v11 setNeedsLayout];
    }

    v9 = v4;
    goto LABEL_11;
  }

  if (v4)
  {
    v6 = v4;
    goto LABEL_7;
  }

LABEL_12:
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];

    return;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1BD38D648(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_1BE048C84();
}

uint64_t NearbyPeerPaymentViewController.screenEdgeSwipeAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_screenEdgeSwipeAction);
  sub_1BE048964();
  return v1;
}

uint64_t NearbyPeerPaymentViewController.dismissAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
  sub_1BE048964();
  return v1;
}

void sub_1BD38D780()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsStatusBarAppearanceUpdate];
  }
}

void sub_1BD38D928()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NearbyPeerPaymentViewController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  [v2 setBackgroundColor_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_divider];
  [v9 setAlpha_];
  v10 = [v3 separatorColor];
  [v9 setBackgroundColor_];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  [v11 addSubview_];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView];
  [v13 addSubview_];

  v16 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  [v16 setAlpha_];
  [v15 addSubview_];
  v17 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v18 = v0;
  v19 = [v17 initWithTarget:v18 action:sel_showAppearanceDetail];
  v20 = *&v18[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView];
  [*&v20[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView] addGestureRecognizer_];
  [v20 setAlpha_];
  [v15 addSubview_];
  [*&v18[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView] setAlpha_];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCEB8]) initWithTarget:v18 action:sel_handlePan_];

  [v21 setEdges_];
  v22 = [v18 view];
  if (v22)
  {
    v23 = v22;
    [v22 addGestureRecognizer_];

    [v18 setAccessibilityIdentifier_];
    return;
  }

LABEL_13:
  __break(1u);
}

BOOL sub_1BD38DCC8()
{
  result = PKIsSmallDevice();
  v1 = 24.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1EBD43A60 = *&v1;
  return result;
}

double static NearbyPeerPaymentViewController.horizontalPadding.getter()
{
  if (qword_1EBD36BE8 != -1)
  {
    swift_once();
  }

  return *&qword_1EBD43A60;
}

void sub_1BD38DD48()
{
  v98 = *MEMORY[0x1E69E9840];
  v97.receiver = v0;
  v97.super_class = type metadata accessor for NearbyPeerPaymentViewController();
  objc_msgSendSuper2(&v97, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = [v0 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  [v34 safeAreaInsets];
  v37 = v36;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v99.origin.x = v27;
  v99.origin.y = v29;
  v99.size.width = v31;
  v99.size.height = v33;
  CGRectDivide(v99, &slice, &remainder, v37, CGRectMinYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  v42 = [v0 view];
  if (!v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = v42;
  [v42 safeAreaInsets];
  v45 = v44;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  CGRectDivide(v100, &slice, &remainder, v45, CGRectMaxYEdge);
  v46 = remainder.origin.x;
  v47 = remainder.origin.y;
  v48 = remainder.size.width;
  v49 = remainder.size.height;
  v50 = [v0 view];
  if (!v50)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v51 = v50;
  [v50 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v101.origin.x = v53;
  v101.origin.y = v55;
  v101.size.width = v57;
  v101.size.height = v59;
  v60 = CGRectGetHeight(v101);
  v61 = [v0 view];
  if (!v61)
  {
    goto LABEL_22;
  }

  v62 = v61;
  v63 = v60 * 0.49;
  [v61 safeAreaInsets];
  v65 = v64;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v102.origin.x = v46;
  v102.origin.y = v47;
  v102.size.width = v48;
  v102.size.height = v49;
  CGRectDivide(v102, &slice, &remainder, v63 - v65 + 32.0, CGRectMinYEdge);
  v66 = remainder.origin.x;
  v67 = remainder.origin.y;
  v68 = remainder.size.width;
  v69 = remainder.size.height;
  CGRectGetWidth(remainder);
  v70 = PKUIPixelLength();
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_divider] setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v103.origin.x = v66;
  v103.origin.y = v67;
  v103.size.width = v68;
  v103.size.height = v69;
  CGRectDivide(v103, &slice, &remainder, v70, CGRectMinYEdge);
  v71 = remainder.origin.x;
  v72 = remainder.origin.y;
  v73 = remainder.size.width;
  v74 = remainder.size.height;
  v75 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView];
  [v75 setFrame_];
  v76 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView];
  [v76 sizeThatFits_];
  v94 = v77;
  v78 = v77 + 4.0;
  if (qword_1EBD36BE8 != -1)
  {
    swift_once();
  }

  v79 = *&qword_1EBD43A60;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v104.origin.x = v71;
  v104.origin.y = v72;
  v104.size.width = v73;
  v104.size.height = v74;
  CGRectDivide(v104, &slice, &remainder, *&qword_1EBD43A60, CGRectMinXEdge);
  v105 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v105, &slice, &remainder, v79, CGRectMaxXEdge);
  v80 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  [v80 sizeThatFits_];
  v82 = v81;
  v83 = v78 + v81 + 24.0;
  v106.origin.x = v71;
  v106.origin.y = v72;
  v106.size.width = v73;
  v106.size.height = v74;
  v84 = CGRectGetHeight(v106);
  v107.origin.x = v71;
  v107.origin.y = v72;
  v107.size.width = v73;
  v107.size.height = v74;
  v85 = CGRectGetWidth(v107);
  if (v84 >= v83)
  {
    v109.origin.x = v71;
    v109.origin.y = v72;
    v109.size.width = v73;
    v109.size.height = v74;
    v83 = CGRectGetHeight(v109);
    [v75 setContentSize_];
  }

  else
  {
    v108.origin.x = 0.0;
    v108.origin.y = 0.0;
    v108.size.width = v85;
    v108.size.height = v83;
    [v75 setContentSize_];
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = v85;
  v110.size.height = v83;
  CGRectDivide(v110, &slice, &remainder, 4.0, CGRectMaxYEdge);
  v86 = remainder.origin.x;
  v87 = remainder.origin.y;
  v88 = remainder.size.width;
  v89 = remainder.size.height;
  PKSizeAlignedInRect();
  [v76 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v111.origin.x = v86;
  v111.origin.y = v87;
  v111.size.width = v88;
  v111.size.height = v89;
  CGRectDivide(v111, &slice, &remainder, v94, CGRectMaxYEdge);
  v90 = remainder.origin.x;
  v91 = remainder.origin.y;
  v92 = remainder.size.width;
  v93 = remainder.size.height;
  PKSizeAlignedInRect();
  [v80 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v112.origin.x = v90;
  v112.origin.y = v91;
  v112.size.width = v92;
  v112.size.height = v93;
  CGRectDivide(v112, &slice, &remainder, v82, CGRectMinYEdge);
}

void sub_1BD38E5B0(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v15 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
  sub_1BD38F438(a1, v5);
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v9 = sub_1BE04A9C4();
    (*(v8 + 8))(v5, v7);
  }

  v15[0] = 0;
  v10 = [v6 openURL:v9 configuration:0 error:v15];

  if (v10)
  {
    v11 = v15[0];
  }

  else
  {
    v12 = v15[0];
    v13 = sub_1BE04A854();

    swift_willThrow();
  }
}

id NearbyPeerPaymentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NearbyPeerPaymentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD38EA34()
{
  result = qword_1EBD3F6F0;
  if (!qword_1EBD3F6F0)
  {
    type metadata accessor for PeerPaymentIdentityManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F6F0);
  }

  return result;
}

void sub_1BD38EACC(void *a1)
{
  v5 = *(*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView);
  sub_1BD374824(a1);
  v3 = *&v5[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v4 = [a1 displayName];
  if (!v4)
  {
    sub_1BE052434();
    v4 = sub_1BE052404();
  }

  [v3 setText_];

  [v5 setNeedsLayout];
}

uint64_t sub_1BD38EBBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  v11 = sub_1BE04A3B4();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v15 = sub_1BE052434();
  MEMORY[0x1BFB37400](v15);
  v45 = 47;
  v46 = 0xE100000000000000;
  v16 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v16);

  v47 = v45;
  v48 = v46;
  v17 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v18 = *(v0 + v17);
  if (v18)
  {
    v19 = v18;
    v20 = [v19 amount];
    if (v20)
    {
      v43 = 47;
      v44 = 0xE100000000000000;
      v38 = v20;
      v39 = v11;
      v21 = [v20 description];
      v22 = v1;
      v23 = v10;
      v24 = v6;
      v25 = v3;
      v26 = sub_1BE052434();
      v28 = v27;

      v29 = v26;
      v3 = v25;
      v6 = v24;
      v10 = v23;
      v1 = v22;
      MEMORY[0x1BFB3F610](v29, v28);

      MEMORY[0x1BFB3F610](v43, v44);

      v11 = v39;
    }

    else
    {
    }
  }

  v30 = (v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    v41 = 47;
    v42 = 0xE100000000000000;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v32, v31);

    MEMORY[0x1BFB3F610](v41, v42);
  }

  MEMORY[0x1BFB37410](v47, v48);
  sub_1BE04A364();
  v33 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
  sub_1BD38F438(v10, v6);
  v34 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v35 = swift_allocObject();
  sub_1BD226B4C(v6, v35 + v34);
  v33(sub_1BD38F4A8, v35);

  sub_1BD0DE53C(v10, &unk_1EBD3CF70);
  return (*(v40 + 8))(v14, v11);
}

void sub_1BD38F304()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentViewController_divider;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentMetadataView()) init];
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentErrorView()) init];
  v5 = OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager()) init];
  *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_amount) = 0;
  v6 = (v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar) = 1;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD38F438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD38F4A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD38E5B0(v2);
}

unint64_t sub_1BD38F53C()
{
  result = qword_1EBD43B10;
  if (!qword_1EBD43B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43B10);
  }

  return result;
}

void sub_1BD38F594(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v91 = a1;
  v84 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v84, v6);
  v85 = (&v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BE04D214();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v86 = (&v83 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v83 - v16;
  v18 = type metadata accessor for WrappedPass(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v83 - v29;
  sub_1BD0DE19C(a2, v17, &unk_1EBD43B90);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BD0DE53C(v17, &unk_1EBD43B90);
    v31 = v90;
    v32 = v91;
    v33 = MEMORY[0x1E69E7D40];
    v34 = v87;
    if (!v87)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  sub_1BD395E3C(v17, v30, type metadata accessor for WrappedPass);
  sub_1BE04D084();
  sub_1BD395DD4(v30, v26, type metadata accessor for WrappedPass);
  v32 = v91;
  v51 = v91;
  v52 = sub_1BE04D204();
  v53 = sub_1BE052C54();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v92 = v83;
    *v54 = 138412546;
    *(v54 + 4) = v51;
    *v55 = v51;
    *(v54 + 12) = 2080;
    sub_1BD395DD4(v26, v22, type metadata accessor for WrappedPass);
    v56 = v51;
    v57 = sub_1BE0524A4();
    v59 = v58;
    sub_1BD395EA4(v26, type metadata accessor for WrappedPass);
    v60 = sub_1BD123690(v57, v59, &v92);

    *(v54 + 14) = v60;
    _os_log_impl(&dword_1BD026000, v52, v53, "Callback Handling: updateDefaultBillingAddress %@ %s", v54, 0x16u);
    sub_1BD0DE53C(v55, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v55, -1, -1);
    v61 = v83;
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x1BFB45F20](v61, -1, -1);
    v62 = v54;
    v32 = v91;
    MEMORY[0x1BFB45F20](v62, -1, -1);
  }

  else
  {

    sub_1BD395EA4(v26, type metadata accessor for WrappedPass);
  }

  (*(v88 + 8))(v86, v89);
  v31 = v90;
  v33 = MEMORY[0x1E69E7D40];
  sub_1BD0E6EB0(v51, v30);
  sub_1BD395EA4(v30, type metadata accessor for WrappedPass);
  v34 = v87;
  if (v87)
  {
LABEL_3:
    v35 = v34;
    sub_1BE04D084();
    v36 = v32;
    v37 = v35;
    v38 = sub_1BE04D204();
    v39 = sub_1BE052C54();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v86 = v41;
      v87 = swift_slowAlloc();
      v92 = v87;
      *v40 = 138412546;
      *(v40 + 4) = v36;
      *v41 = v36;
      *(v40 + 12) = 2080;
      v42 = v36;
      v43 = v37;
      v44 = [v43 description];
      v45 = sub_1BE052434();
      v47 = v46;

      v33 = MEMORY[0x1E69E7D40];
      v48 = sub_1BD123690(v45, v47, &v92);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_1BD026000, v38, v39, "Callback Handling: updateDefaultBillingAddress %@ %s", v40, 0x16u);
      v49 = v86;
      sub_1BD0DE53C(v86, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v49, -1, -1);
      v50 = v87;
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x1BFB45F20](v50, -1, -1);
      MEMORY[0x1BFB45F20](v40, -1, -1);

      (*(v88 + 8))(v90, v89);
    }

    else
    {

      (*(v88 + 8))(v31, v89);
    }

    [*(*(v4 + *((*v33 & *v4) + 0x80)) + 80) setDefaultBillingAddress:v36 forBankInformation:v37];

    v32 = v91;
  }

LABEL_11:
  v63 = *(v4 + *((*v33 & *v4) + 0x80));
  v64 = *(v63 + 48);
  *(v63 + 48) = v32;
  v65 = *(v63 + 32);
  if (v65)
  {
    v66 = v32;
    v67 = sub_1BD0D44B8(v65);
    v65(v67);
    sub_1BD0D4744(v65);
    if (v64)
    {
LABEL_13:
      v68 = [v64 identifier];
      v69 = sub_1BE052434();
      v71 = v70;

      goto LABEL_16;
    }
  }

  else
  {
    v72 = v32;
    if (v64)
    {
      goto LABEL_13;
    }
  }

  v69 = 0;
  v71 = 0;
LABEL_16:
  v73 = [*(v4 + *((*v33 & *v4) + 0xD0)) billingAddress];
  if (!v73)
  {
    if (v71)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v74 = v73;
  v75 = [v73 identifier];

  v76 = sub_1BE052434();
  v78 = v77;

  v33 = MEMORY[0x1E69E7D40];
  if (v71)
  {
    if (v78)
    {
      if (v69 == v76 && v71 == v78)
      {
      }

      else
      {
        v80 = sub_1BE053B84();

        if ((v80 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  if (!v78)
  {
LABEL_30:
    v81 = v85;
    *v85 = v32;
    swift_storeEnumTagMultiPayload();
    v82 = v32;
    sub_1BD6B56B4(v81, 2);
    sub_1BD395EA4(v81, type metadata accessor for Analytics.StateChange);
    [*(v4 + *((*v33 & *v4) + 0xD8)) didSelectBillingAddress_];
    goto LABEL_31;
  }

LABEL_31:
}

void sub_1BD38FE90(void *a1)
{
  v2 = v1;
  v39 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v39, v4);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v12 = a1;
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1BD026000, v13, v14, "Callback Handling: updateMerchantProvidedBillingAddress %@", v15, 0xCu);
    sub_1BD0DE53C(v16, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v18 = MEMORY[0x1E69E7D40];
  v19 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
  v20 = *(v19 + 56);
  *(v19 + 56) = v12;
  v21 = *(v19 + 32);
  if (v21)
  {
    v22 = v12;
    v23 = sub_1BD0D44B8(v21);
    v21(v23);
    sub_1BD0D4744(v21);
    if (v20)
    {
LABEL_5:
      v24 = [v20 identifier];
      v25 = sub_1BE052434();
      v27 = v26;

      goto LABEL_8;
    }
  }

  else
  {
    v28 = v12;
    if (v20)
    {
      goto LABEL_5;
    }
  }

  v25 = 0;
  v27 = 0;
LABEL_8:
  v29 = [*(v2 + *((*v18 & *v2) + 0xD0)) billingAddress];
  if (!v29)
  {
    if (v27)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 identifier];

  v32 = sub_1BE052434();
  v34 = v33;

  if (v27)
  {
    if (v34)
    {
      if (v25 == v32 && v27 == v34)
      {
      }

      else
      {
        v36 = sub_1BE053B84();

        if ((v36 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_22;
    }

LABEL_18:

    return;
  }

  if (!v34)
  {
LABEL_22:
    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    v37 = v12;
    sub_1BD6B56B4(v6, 2);
    sub_1BD395EA4(v6, type metadata accessor for Analytics.StateChange);
    [*(v2 + *((*v18 & *v2) + 0xD8)) didSelectBillingAddress_];
    goto LABEL_23;
  }

LABEL_23:
}

id sub_1BD39028C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v13 = a1;
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22[1] = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v13;
    *v18 = v13;
    v19 = v13;
    _os_log_impl(&dword_1BD026000, v14, v15, "Callback Handling: selectBillingAddress %@", v17, 0xCu);
    sub_1BD0DE53C(v18, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  *v7 = v13;
  swift_storeEnumTagMultiPayload();
  v20 = v13;
  sub_1BD6B56B4(v7, 2);
  sub_1BD395EA4(v7, type metadata accessor for Analytics.StateChange);
  return [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)) didSelectBillingAddress_];
}

void sub_1BD390504()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Callback Handling: refreshPaymentMethods", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8)) didRequestRefreshPaymentMethods];
  sub_1BD0E66D0();
}

void sub_1BD39069C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v94 = a3;
  v92 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v92, v7);
  v93 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04D214();
  v96 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v91 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v89 - v18;
  v95 = v20;
  v97 = a2;
  if (a2)
  {
    v21 = a2;
    v22 = [v21 displayName];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1BE052434();
      v26 = v25;
    }

    else
    {

      v26 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E55;
    }
  }

  else
  {
    v26 = 0x80000001BE1261D0;
    v24 = 0xD000000000000015;
  }

  sub_1BE04D084();
  sub_1BD395DD4(a1, v12, type metadata accessor for WrappedPass);
  sub_1BE048C84();
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C54();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v89 = v4;
    v30 = v24;
    v31 = v29;
    v32 = swift_slowAlloc();
    v90 = a1;
    v33 = v32;
    v98 = v32;
    *v31 = 136315394;
    v34 = sub_1BD4943B0();
    v36 = v35;
    sub_1BD395EA4(v12, type metadata accessor for WrappedPass);
    v37 = sub_1BD123690(v34, v36, &v98);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    v38 = v30;
    v4 = v89;
    v39 = sub_1BD123690(v38, v26, &v98);

    *(v31 + 14) = v39;
    _os_log_impl(&dword_1BD026000, v27, v28, "Callback Handling: didSelectPaymentPass %s - %s", v31, 0x16u);
    swift_arrayDestroy();
    v40 = v33;
    a1 = v90;
    MEMORY[0x1BFB45F20](v40, -1, -1);
    MEMORY[0x1BFB45F20](v31, -1, -1);
  }

  else
  {

    sub_1BD395EA4(v12, type metadata accessor for WrappedPass);
  }

  v41 = v95;
  v42 = *(v96 + 8);
  v42(v19, v95);
  v43 = sub_1BD3948B4();
  v45 = v44;
  v46 = sub_1BD492F00();
  v48 = MEMORY[0x1E69E7D40];
  if (!v45)
  {

    goto LABEL_25;
  }

  if (v43 == v46 && v45 == v47)
  {
  }

  else
  {
    v49 = sub_1BE053B84();

    if ((v49 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v50 = *(v4 + *((*v48 & *v4) + 0xD0));
  v51 = [v50 paymentApplication];
  if (!v51)
  {
    if (v97)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (![v50 fundingMode])
    {
      v56 = v91;
      sub_1BE04D084();
      v57 = sub_1BE04D204();
      v58 = sub_1BE052C54();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1BD026000, v57, v58, "Payment pass and application already selected, ignoring", v59, 2u);
        MEMORY[0x1BFB45F20](v59, -1, -1);
      }

      v42(v56, v41);
      return;
    }

    goto LABEL_25;
  }

  v52 = v51;
  v53 = v97;
  if (!v97)
  {

    goto LABEL_25;
  }

  sub_1BD0E5E8C(0, &qword_1EBD43BA0);
  v54 = v53;
  v55 = sub_1BE053074();

  if (v55)
  {
    goto LABEL_20;
  }

LABEL_25:
  sub_1BD394224(a1, v97);
  sub_1BD393B3C(0, 0, 0);
  v60 = *(v4 + *((*v48 & *v4) + 0xD0));
  v61 = [v60 paymentApplication];
  sub_1BD3944B4(a1, v61, v94, type metadata accessor for PaymentAuthorizationModel);

  v62 = [v60 paymentRequest];
  if (!v62)
  {
    __break(1u);
    return;
  }

  v63 = v62;
  v64 = [v62 requiredBillingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD395F04(&qword_1EBD35EE0, type metadata accessor for PKContactField);
  v65 = sub_1BE052A34();

  LOBYTE(v64) = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v65);

  if (v64)
  {
    v66 = a1;
    v67 = *(v4 + *((*v48 & *v4) + 0x80));
    v68 = *(v67 + 48);
    v69 = v68;
    v70 = [v60 billingAddress];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 identifier];

      v73 = sub_1BE052434();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v76 = sub_1BD0E6B40(v66);
    if (!v76)
    {
      if (!v68)
      {

        return;
      }

      v76 = v69;
    }

    v77 = v76;
    v78 = *(v67 + 48);
    *(v67 + 48) = v76;
    v79 = v76;

    v80 = *(v67 + 32);
    if (v80)
    {
      v81 = sub_1BE048964();
      v80(v81);

      sub_1BD0D4744(v80);
    }

    else
    {
    }

    v82 = [v79 identifier];
    v83 = sub_1BE052434();
    v85 = v84;

    if (v75)
    {
      if (v83 == v73 && v75 == v85)
      {

        return;
      }

      v86 = sub_1BE053B84();

      if (v86)
      {

        return;
      }
    }

    else
    {
    }

    v87 = v93;
    *v93 = v77;
    swift_storeEnumTagMultiPayload();
    v88 = v79;
    sub_1BD6B56B4(v87, 2);
    sub_1BD395EA4(v87, type metadata accessor for Analytics.StateChange);
    [*(v4 + *((*v48 & *v4) + 0xD8)) didSelectBillingAddress_];
  }
}

void sub_1BD390FC8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void, double))
{
  v96 = a3;
  v97 = a6;
  v94 = a4;
  v95 = a5;
  v7 = v6;
  v92 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v92, v10);
  v93 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  v99 = v16;
  v100 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v91 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v89 - v22;
  v98 = a2;
  if (a2)
  {
    v24 = a2;
    v25 = [v24 displayName];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1BE052434();
      v29 = v28;
    }

    else
    {

      v29 = 0xE700000000000000;
      v27 = 0x6E776F6E6B6E55;
    }
  }

  else
  {
    v29 = 0x80000001BE1261D0;
    v27 = 0xD000000000000015;
  }

  sub_1BE04D084();
  v101 = a1;
  sub_1BD395DD4(a1, v15, type metadata accessor for WrappedPass);
  sub_1BE048C84();
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C54();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v102 = v33;
    *v32 = 136315394;
    v34 = sub_1BD4943B0();
    v90 = v7;
    v35 = v27;
    v37 = v36;
    sub_1BD395EA4(v15, type metadata accessor for WrappedPass);
    v38 = sub_1BD123690(v34, v37, &v102);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    v39 = v35;
    v7 = v90;
    v40 = sub_1BD123690(v39, v29, &v102);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_1BD026000, v30, v31, "Callback Handling: didSelectPaymentPass %s - %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v33, -1, -1);
    MEMORY[0x1BFB45F20](v32, -1, -1);
  }

  else
  {

    sub_1BD395EA4(v15, type metadata accessor for WrappedPass);
  }

  v41 = v99;
  v42 = *(v100 + 8);
  v42(v23, v99);
  v43 = sub_1BD3948B4();
  v45 = v44;
  v46 = v101;
  v47 = sub_1BD492F00();
  v49 = MEMORY[0x1E69E7D40];
  v50 = v98;
  if (!v45)
  {

    goto LABEL_25;
  }

  if (v43 == v47 && v45 == v48)
  {
  }

  else
  {
    v51 = sub_1BE053B84();

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v52 = *(v7 + *((*v49 & *v7) + 0xD0));
  v53 = [v52 paymentApplication];
  if (!v53)
  {
    if (v50)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (![v52 fundingMode])
    {
      v57 = v91;
      sub_1BE04D084();
      v58 = sub_1BE04D204();
      v59 = sub_1BE052C54();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1BD026000, v58, v59, "Payment pass and application already selected, ignoring", v60, 2u);
        MEMORY[0x1BFB45F20](v60, -1, -1);
      }

      v42(v57, v41);
      return;
    }

    goto LABEL_25;
  }

  v54 = v53;
  if (!v50)
  {

    goto LABEL_25;
  }

  sub_1BD0E5E8C(0, &qword_1EBD43BA0);
  v55 = v50;
  v56 = sub_1BE053074();

  v46 = v101;
  if (v56)
  {
    goto LABEL_20;
  }

LABEL_25:
  sub_1BD394224(v46, v50);
  sub_1BD393E8C(0, 0, 0, v94, v95);
  v61 = *(v7 + *((*v49 & *v7) + 0xD0));
  v62 = [v61 paymentApplication];
  sub_1BD3944B4(v46, v62, v96, v97);

  v63 = [v61 paymentRequest];
  if (!v63)
  {
    __break(1u);
    return;
  }

  v64 = v63;
  v65 = [v63 requiredBillingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD395F04(&qword_1EBD35EE0, type metadata accessor for PKContactField);
  v66 = sub_1BE052A34();

  LOBYTE(v65) = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v66);

  if (v65)
  {
    v67 = *(v7 + *((*v49 & *v7) + 0x80));
    v68 = *(v67 + 48);
    v69 = v68;
    v70 = [v61 billingAddress];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 identifier];

      v73 = sub_1BE052434();
      v75 = v74;

      v46 = v101;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v76 = sub_1BD0E6B40(v46);
    if (!v76)
    {
      if (!v68)
      {

        return;
      }

      v76 = v69;
    }

    v77 = v76;
    v78 = *(v67 + 48);
    *(v67 + 48) = v76;
    v79 = v76;

    v80 = *(v67 + 32);
    if (v80)
    {
      v81 = sub_1BE048964();
      v80(v81);

      sub_1BD0D4744(v80);
    }

    else
    {
    }

    v82 = [v79 identifier];
    v83 = sub_1BE052434();
    v85 = v84;

    if (v75)
    {
      if (v83 == v73 && v75 == v85)
      {

        return;
      }

      v86 = sub_1BE053B84();

      if (v86)
      {

        return;
      }
    }

    else
    {
    }

    v87 = v93;
    *v93 = v77;
    swift_storeEnumTagMultiPayload();
    v88 = v79;
    sub_1BD6B56B4(v87, 2);
    sub_1BD395EA4(v87, type metadata accessor for Analytics.StateChange);
    [*(v7 + *((*v49 & *v7) + 0xD8)) didSelectBillingAddress_];
  }
}

uint64_t sub_1BD3918BC(void *a1, uint64_t (*a2)(void, double))
{
  v4 = v2;
  v6 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;
  if (a1)
  {
    v50 = v11;
    v51 = a2;
    v19 = a1;
    sub_1BE04D084();
    v20 = v19;
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v47 = a1;
      v24 = v23;
      v46 = swift_slowAlloc();
      v52 = v46;
      *v24 = 136315138;
      v25 = v4;
      v26 = [v20 selectedOfferIdentifier];
      v27 = sub_1BE052434();
      v48 = v6;
      v49 = v10;
      v28 = v27;
      v30 = v29;

      v4 = v25;
      v31 = sub_1BD123690(v28, v30, &v52);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_1BD026000, v21, v22, "Callback Handling: didSelectPaymentOffer: %s", v24, 0xCu);
      v32 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1BFB45F20](v32, -1, -1);
      v33 = v24;
      a1 = v47;
      MEMORY[0x1BFB45F20](v33, -1, -1);

      (*(v50 + 8))(v18, v49);
    }

    else
    {

      (*(v50 + 8))(v18, v10);
    }

    a2 = v51;
  }

  else
  {
    sub_1BE04D084();
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v49 = v10;
      v37 = v36;
      *v36 = 0;
      _os_log_impl(&dword_1BD026000, v34, v35, "Callback Handling: didSelectPaymentOffer: nil", v36, 2u);
      MEMORY[0x1BFB45F20](v37, -1, -1);

      (*(v11 + 8))(v14, v49);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }

  v38 = [*(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xD8)) didSelectPaymentOffer_];
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v41 = a2(0, v40);
  *(&v45 - 2) = v41;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v43);
  *(&v45 - 2) = v41;
  swift_getKeyPath();
  sub_1BE04D8B4();

  *v9 = v52;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v9, 1);
  return sub_1BD395EA4(v9, type metadata accessor for Analytics.StateChange);
}

void sub_1BD391D5C(int a1, uint64_t (*a2)(void))
{
  v55 = a2;
  v3 = v2;
  LODWORD(v57) = a1;
  v56 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v56, v4);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v55 - v18;
  sub_1BE04D084();
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v57 & 1;
    _os_log_impl(&dword_1BD026000, v20, v21, "Callback Handling: setUsePeerPaymentBalance: %{BOOL}d", v22, 8u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  v23 = *(v8 + 8);
  v23(v19, v7);
  v24 = MEMORY[0x1E69E7D40];
  v25 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD0));
  v26 = [v25 paymentRequest];
  if (!v26)
  {
    sub_1BE04D084();
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BD026000, v34, v35, "Callback Handling: no payment request", v36, 2u);
      MEMORY[0x1BFB45F20](v36, -1, -1);
    }

    v37 = v16;
LABEL_21:
    v23(v37, v7);
    return;
  }

  v27 = v26;
  v28 = [v26 requestType];
  if (v28 != 2)
  {
    if (v28 == 9)
    {
      v29 = [*(v3 + *((*v24 & *v3) + 0xD8)) didChangePeerPaymentUsage_];
      MEMORY[0x1EEE9AC00](v29, v30);
      v31 = v55(0);
      *(&v55 - 2) = v31;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v33);
      *(&v55 - 2) = v31;
      swift_getKeyPath();
      sub_1BE04D8B4();

      *v6 = v58;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v6, 2);

      sub_1BD395EA4(v6, type metadata accessor for Analytics.StateChange);
      return;
    }

    sub_1BE04D084();
    v44 = v27;
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C54();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v47;
      v58 = v56;
      *v47 = 136315138;
      [v44 requestType];
      v48 = PKPaymentRequestTypeToString();

      if (!v48)
      {
        __break(1u);
        return;
      }

      v49 = sub_1BE052434();
      v51 = v50;

      v52 = sub_1BD123690(v49, v51, &v58);

      v53 = v57;
      *(v57 + 1) = v52;
      _os_log_impl(&dword_1BD026000, v45, v46, "Request of %s ineligible to have peer payment balance applied along with another payment method", v53, 0xCu);
      v54 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1BFB45F20](v54, -1, -1);
      MEMORY[0x1BFB45F20](v53, -1, -1);
    }

    else
    {
    }

    v37 = v12;
    goto LABEL_21;
  }

  v38 = [v27 accountServiceTransferRequest];
  if (v38)
  {
    v39 = v38;
    v40 = v57;
    [*(v3 + *((*v24 & *v3) + 0xD8)) didChangePeerPaymentUsage_];
    if ([v39 transferType] == 1 && (v40 & 1) == 0)
    {
      v41 = [v25 bankAccount];
      if (v41)
      {
        v42 = v41;
        v43 = v41;
        sub_1BD3949C0(v42);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1BD392364()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD3923E0()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD392438@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BE053A44();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1BD3924B4()
{
  result = qword_1EBD43B18;
  if (!qword_1EBD43B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43B18);
  }

  return result;
}

uint64_t sub_1BD392508()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19[-v8];
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v21 = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80);
  sub_1BE0516A4();
  if (v20)
  {
    if (sub_1BE04C904())
    {
      v21 = v10;
      v22 = v11;
      v20 = 0;
      return sub_1BE0516B4();
    }

    else
    {
      sub_1BE04D084();
      v16 = sub_1BE04D204();
      v17 = sub_1BE052C34();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1BD026000, v16, v17, "Authorizing payment, ignoring detail sheet", v18, 2u);
        MEMORY[0x1BFB45F20](v18, -1, -1);
      }

      return (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    sub_1BE04D084();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "Detail sheet already set, ignoring", v15, 2u);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    return (*(v2 + 8))(v9, v1);
  }
}

uint64_t sub_1BD392764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v127 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v114, v3);
  v113 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v112 = &v97 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v123, v8);
  v116 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v115 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v122 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v125 = &v97 - v18;
  v121 = type metadata accessor for PaymentPassMethodSheet(0);
  v126 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v19);
  v21 = (&v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v120 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v97 - v27;
  v29 = type metadata accessor for Passes(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v124 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v97 - v35;
  v111 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v117 = v30;
  v118 = v29;
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1BD0DE53C(v28, &unk_1EBD43B40);
    v37 = 1;
    v38 = v121;
    v39 = v127;
  }

  else
  {
    sub_1BD395E3C(v28, v36, type metadata accessor for Passes);
    v110 = v36;
    sub_1BD395DD4(v36, v124, type metadata accessor for Passes);
    v40 = type metadata accessor for PeerPaymentModel();
    (*(*(v40 - 8) + 56))(v125, 1, 1, v40);
    v41 = _s14PaymentSummaryVMa();
    (*(*(v41 - 8) + 56))(v122, 1, 1, v41);
    v42 = v111;
    sub_1BD394D3C(v111, v135);
    v109 = swift_allocObject();
    memcpy((v109 + 16), v135, 0x128uLL);
    sub_1BD394D3C(v42, v134);
    v108 = swift_allocObject();
    memcpy((v108 + 16), v134, 0x128uLL);
    sub_1BD394D3C(v42, v133);
    v107 = swift_allocObject();
    memcpy((v107 + 16), v133, 0x128uLL);
    sub_1BD394D3C(v42, v132);
    v106 = swift_allocObject();
    memcpy((v106 + 16), v132, 0x128uLL);
    sub_1BD394D3C(v42, v131);
    v105 = swift_allocObject();
    memcpy((v105 + 16), v131, 0x128uLL);
    sub_1BD394D3C(v42, v130);
    v104 = swift_allocObject();
    memcpy((v104 + 16), v130, 0x128uLL);
    sub_1BD394D3C(v42, v129);
    v111 = swift_allocObject();
    memcpy((v111 + 16), v129, 0x128uLL);
    v43 = sub_1BD4CD14C();
    v102 = v44;
    v103 = v43;
    if (qword_1EBD36C30 != -1)
    {
      swift_once();
    }

    v100 = unk_1EBDAB190;
    v101 = qword_1EBDAB188;
    v38 = v121;
    *(v21 + *(v121 + 104)) = 0;
    v45 = v21 + v38[27];
    memset(v128, 0, sizeof(v128));
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41368);
    sub_1BE051694();
    v46 = *&v129[48];
    v47 = *&v129[16];
    *v45 = *v129;
    *(v45 + 1) = v47;
    *(v45 + 2) = *&v129[32];
    *(v45 + 6) = v46;
    v48 = (v21 + v38[28]);
    type metadata accessor for PresentationContext();
    sub_1BD395F04(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    *v48 = sub_1BE04EEC4();
    v48[1] = v49;
    v50 = v38[29];
    *&v128[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
    sub_1BE051694();
    *(v21 + v50) = *v129;
    v98 = type metadata accessor for AvailablePass(0);
    v51 = *(v98 - 8);
    v97 = *(v51 + 56);
    v99 = v51 + 56;
    v52 = v115;
    v97(v115, 1, 1, v98);
    v53 = v116;
    sub_1BD0DE19C(v52, v116, &qword_1EBD520A0);
    sub_1BE051694();
    sub_1BD0DE53C(v52, &qword_1EBD520A0);
    v54 = v38[31];
    *&v128[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50);
    sub_1BE051694();
    *(v21 + v54) = *v129;
    v55 = _s11DetailSheetOMa();
    v56 = v112;
    (*(*(v55 - 8) + 56))(v112, 1, 1, v55);
    sub_1BD0DE19C(v56, v113, &unk_1EBD43B20);
    sub_1BE051694();
    sub_1BD0DE53C(v56, &unk_1EBD43B20);
    v57 = v21 + v38[33];
    LOBYTE(v128[0]) = 0;
    sub_1BE051694();
    v58 = *&v129[8];
    *v57 = v129[0];
    *(v57 + 1) = v58;
    memset(v129, 0, 40);
    sub_1BD0DE19C(v129, v128, &qword_1EBD51EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
    sub_1BE051694();
    sub_1BD0DE53C(v129, &qword_1EBD51EC0);
    v97(v52, 1, 1, v98);
    sub_1BD0DE19C(v52, v53, &qword_1EBD520A0);
    sub_1BE051694();
    sub_1BD0DE53C(v52, &qword_1EBD520A0);
    v59 = (v21 + v38[36]);
    v60 = MEMORY[0x1E69E7CC0];
    *&v128[0] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B60);
    sub_1BE051694();
    v61 = *&v129[8];
    *v59 = *v129;
    v59[1] = v61;
    v62 = v21 + v38[37];
    v128[0] = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    sub_1BE051694();
    v63 = *&v129[16];
    *v62 = *v129;
    *(v62 + 2) = v63;
    v64 = v21 + v38[38];
    LOBYTE(v128[0]) = 0;
    sub_1BE051694();
    v65 = *&v129[8];
    *v64 = v129[0];
    *(v64 + 1) = v65;
    v66 = v21 + v38[39];
    LOBYTE(v128[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250);
    sub_1BE051694();
    v67 = *&v129[8];
    *v66 = v129[0];
    *(v66 + 1) = v67;
    v68 = v38[40];
    *(v21 + v68) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
    swift_storeEnumTagMultiPayload();
    *v21 = v119;
    v21[1] = 0;
    v69 = v124;
    sub_1BD395DD4(v124, v21 + v38[6], type metadata accessor for Passes);
    v70 = (v21 + v38[7]);
    v70[3] = 0u;
    v70[4] = 0u;
    v70[1] = 0u;
    v70[2] = 0u;
    *v70 = 0u;
    v71 = v125;
    sub_1BD0DE19C(v125, v21 + v38[8], &qword_1EBD45480);
    v72 = v122;
    sub_1BD0DE19C(v122, v21 + v38[9], &unk_1EBD43B30);
    *(v21 + v38[10]) = 0;
    *(v21 + v38[11]) = 0;
    v73 = (v21 + v38[12]);
    v74 = v108;
    v75 = v109;
    *v73 = sub_1BD394D98;
    v73[1] = v75;
    v76 = (v21 + v38[13]);
    *v76 = sub_1BD394E6C;
    v76[1] = v74;
    v77 = (v21 + v38[14]);
    v78 = v106;
    v79 = v107;
    *v77 = sub_1BD394E74;
    v77[1] = v79;
    v80 = (v21 + v38[15]);
    *v80 = sub_1BD394E7C;
    v80[1] = v78;
    v81 = (v21 + v38[16]);
    v82 = v104;
    v83 = v105;
    *v81 = sub_1BD394EA0;
    v81[1] = v83;
    v84 = (v21 + v38[17]);
    *v84 = sub_1BD394EC4;
    v84[1] = v82;
    v85 = (v21 + v38[18]);
    v86 = v102;
    *v85 = v103;
    v85[1] = v86;
    v87 = (v21 + v38[19]);
    v88 = v100;
    *v87 = v101;
    v87[1] = v88;
    v89 = (v21 + v38[20]);
    *v89 = PKEdgeInsetsMake;
    v89[1] = 0;
    v90 = (v21 + v38[23]);
    v91 = v111;
    *v90 = sub_1BD394EE8;
    v90[1] = v91;
    v92 = (v21 + v38[24]);
    *v92 = 0;
    v92[1] = 0;
    PKOslo2024UIUpdatesEnabled();
    *v129 = v60;
    sub_1BD394CD0(v129);
    *(v21 + v38[21]) = *v129;
    v93 = v120;
    sub_1BD395DD4(v69, v120, type metadata accessor for Passes);
    (*(v117 + 56))(v93, 0, 1, v118);
    *v129 = 1;
    memset(&v129[8], 0, 25);
    *(v21 + v38[22]) = sub_1BD7D51F4(v93, v129, 0);
    *(v21 + v38[25]) = 0;
    sub_1BD0E5E8C(0, &qword_1EBD43B70);
    v94 = [swift_getObjCClassFromMetadata() appearance];
    v95 = [objc_opt_self() clearColor];
    [v94 setBackgroundColor_];

    sub_1BD0DE53C(v72, &unk_1EBD43B30);
    sub_1BD0DE53C(v71, &qword_1EBD45480);
    sub_1BD395EA4(v69, type metadata accessor for Passes);
    sub_1BD395EA4(v110, type metadata accessor for Passes);
    v39 = v127;
    sub_1BD395E3C(v21, v127, type metadata accessor for PaymentPassMethodSheet);
    v37 = 0;
  }

  return (*(v126 + 56))(v39, v37, 1, v38);
}

uint64_t sub_1BD3935E4(void *a1)
{
  sub_1BD3918BC(a1, type metadata accessor for AMPAuthorizationModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80);
  return sub_1BE0516B4();
}

void sub_1BD393664(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v19 - v16;
  sub_1BD0DE19C(a1, v9, &qword_1EBD520A0);
  v18 = type metadata accessor for AvailablePass(0);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD520A0);
  }

  else
  {
    sub_1BD395DD4(v9, v13, type metadata accessor for WrappedPass);
    sub_1BD395EA4(v9, type metadata accessor for AvailablePass);
    sub_1BD395E3C(v13, v17, type metadata accessor for WrappedPass);
    sub_1BD390FC8(v17, a2, 0, type metadata accessor for AMPAuthorizationModel, sub_1BD28C610, type metadata accessor for AMPAuthorizationModel);
    sub_1BD395EA4(v17, type metadata accessor for WrappedPass);
  }

  if (a3 != 2)
  {
    sub_1BD391D5C(a3 & 1, type metadata accessor for AMPAuthorizationModel);
  }
}

uint64_t sub_1BD3938D4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_1BD0DE19C(a2, v7, &qword_1EBD520A0);
  v12 = type metadata accessor for AvailablePass(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD520A0);
    v13 = 1;
  }

  else
  {
    sub_1BD395DD4(v7, v11, type metadata accessor for WrappedPass);
    sub_1BD395EA4(v7, type metadata accessor for AvailablePass);
    v13 = 0;
  }

  v14 = type metadata accessor for WrappedPass(0);
  (*(*(v14 - 8) + 56))(v11, v13, 1, v14);
  sub_1BD38F594(a1, v11, 0);
  return sub_1BD0DE53C(v11, &unk_1EBD43B90);
}

void sub_1BD393B3C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 4);
  v9 = *(v5 + 5);
  v10 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8));
  v11 = *(v5 + 3);
  v29 = v8;
  sub_1BE048964();
  v12 = v6;
  swift_unknownObjectRetain();
  v13 = [v10 state];
  v14 = a1;
  v15 = a1;

  v16 = *v5;
  v18 = *(v5 + 3);
  v17 = *(v5 + 4);
  *v5 = v12;
  *(v5 + 1) = v7;
  *(v5 + 2) = v13;
  *(v5 + 3) = v14;
  *(v5 + 4) = v29;
  *(v5 + 5) = v9;

  swift_unknownObjectRelease();
  type metadata accessor for PaymentAuthorizationModel(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v19 = *v5;
  v37 = *(v5 + 1);
  v20 = *(v5 + 2);
  v36 = v19;
  v38 = v20;
  v39 = *(&v19 + 1);
  v40 = *(&v37 + 1);
  v21 = v20;
  v22 = v19;
  sub_1BD0DE19C(&v39, &v33, &qword_1EBD3D490);
  sub_1BD0DE19C(&v40, &v33, &qword_1EBD40150);
  v23 = v21;
  sub_1BE048964();
  sub_1BD5D4C20(&v36);

  sub_1BD0DE53C(&v39, &qword_1EBD3D490);
  sub_1BD0DE53C(&v40, &qword_1EBD40150);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v24 = *v5;
  v34 = *(v5 + 1);
  v25 = *(v5 + 2);
  v33 = v24;
  v35 = v25;
  v41 = *(&v24 + 1);
  v42[0] = *(&v34 + 1);
  v26 = v25;
  v27 = v24;
  sub_1BD0DE19C(&v41, v32, &qword_1EBD3D490);
  sub_1BD0DE19C(v42, v32, &qword_1EBD40150);
  v28 = v26;
  sub_1BE048964();
  sub_1BD83BD94(&v33, a2, a3);

  sub_1BD0DE53C(&v41, &qword_1EBD3D490);
  sub_1BD0DE53C(v42, &qword_1EBD40150);
}

void sub_1BD393E8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  v7 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 4);
  v11 = *(v7 + 5);
  v12 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xD8));
  v13 = *(v7 + 3);
  v40 = v10;
  sub_1BE048964();
  v14 = v8;
  swift_unknownObjectRetain();
  v15 = [v12 state];
  v16 = a1;
  v17 = a1;

  v18 = *v7;
  v20 = *(v7 + 3);
  v19 = *(v7 + 4);
  *v7 = v14;
  *(v7 + 1) = v9;
  *(v7 + 2) = v15;
  *(v7 + 3) = v16;
  *(v7 + 4) = v40;
  *(v7 + 5) = v11;

  swift_unknownObjectRelease();
  a4(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v21 = *v7;
  v22 = *(v7 + 3);
  v23 = *(v7 + 4);
  v24 = *(v7 + 5);
  v25 = v47 + qword_1EBDAAD68;
  v39 = *(v47 + qword_1EBDAAD68);
  v42 = *(v47 + qword_1EBDAAD68 + 24);
  v38 = *(v47 + qword_1EBDAAD68 + 32);
  v26 = *(v7 + 8);
  *v25 = *v7;
  *(v25 + 8) = v26;
  *(v25 + 24) = v22;
  *(v25 + 32) = v23;
  *(v25 + 40) = v24;
  v27 = v22;
  v28 = v23;
  swift_retain_n();
  v29 = v21;
  swift_unknownObjectRetain_n();
  v30 = v27;
  v31 = v28;
  v32 = v29;

  swift_unknownObjectRelease();
  a5();

  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v33 = *v7;
  v48 = *(v7 + 1);
  v34 = *(v7 + 2);
  v47 = v33;
  v49 = v34;
  v50 = *(&v33 + 1);
  v51[0] = *(&v48 + 1);
  v35 = v34;
  v36 = v33;
  sub_1BD0DE19C(&v50, v46, &qword_1EBD3D490);
  sub_1BD0DE19C(v51, v46, &qword_1EBD40150);
  v37 = v35;
  sub_1BE048964();
  sub_1BD83BD94(&v47, a2, a3);

  sub_1BD0DE53C(&v50, &qword_1EBD3D490);
  sub_1BD0DE53C(v51, &qword_1EBD40150);
}

void sub_1BD394224(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD395DD4(a1, v8, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *v8;
    [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0)) setPass:v10 withSelectedPaymentApplication:a2];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *v8;
    [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0)) setRemotePaymentInstrument:v10 withSelectedPaymentApplication:a2];
LABEL_5:

    return;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69B8D08]) init];
  v12 = v11;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = a2;
    v14 = v12;
    v15 = a2;
    sub_1BD111DC0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    sub_1BD10E640();
    v16 = sub_1BE052A24();
  }

  else
  {
    v17 = v11;
    v16 = 0;
  }

  [v12 setPaymentApplications_];

  [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0)) setPass:v12 withSelectedPaymentApplication:a2];
  sub_1BD395EA4(v8, type metadata accessor for WrappedPass);
}

uint64_t sub_1BD3944B4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, double))
{
  v6 = v4;
  v10 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD395DD4(a1, v17, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v17;
      [*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xD8)) didSelectRemotePaymentInstrument:*v17 paymentApplication:a2];
    }

    else
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E69B8D08]) init];
      v24 = v23;
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B7020;
        *(inited + 32) = a2;
        v26 = v24;
        v27 = a2;
        sub_1BD111DC0(inited);
        v36 = a4;
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1BD0E5E8C(0, &qword_1EBD43BA0);
        sub_1BD10E640();
        v28 = sub_1BE052A24();
        a4 = v36;
      }

      else
      {
        v29 = v23;
        v28 = 0;
      }

      [v24 setPaymentApplications_];

      [*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xD8)) didSelectPaymentPass:v24 paymentApplication:a2 subCredential:a3];
      v20 = sub_1BD395EA4(v17, type metadata accessor for WrappedPass);
    }
  }

  else
  {
    v22 = *v17;
    [*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xD8)) didSelectPaymentPass:v22 paymentApplication:a2 subCredential:a3];
  }

  v30 = MEMORY[0x1EEE9AC00](v20, v21);
  v31 = a4(0, v30);
  *(&v35 - 2) = v31;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v33);
  *(&v35 - 2) = v31;
  swift_getKeyPath();
  sub_1BE04D8B4();

  *v13 = v37;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v13, 2);
  return sub_1BD395EA4(v13, type metadata accessor for Analytics.StateChange);
}

id sub_1BD3948B4()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0));
  v2 = [v1 mode];
  if (v2 == 2)
  {
    result = [v1 remotePaymentInstrument];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result passIdentifier];
LABEL_7:
    v6 = v5;

    if (v6)
    {
      v7 = sub_1BE052434();

      return v7;
    }

    return 0;
  }

  if (v2 == 1)
  {
    result = [v1 pass];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result uniqueID];
    goto LABEL_7;
  }

  return 0;
}

id sub_1BD3949C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v13 = [a1 bankName]) != 0)
  {
    v14 = v13;
    v31 = sub_1BE052434();
    v16 = v15;
  }

  else
  {
    v31 = 0;
    v16 = 0xE000000000000000;
  }

  sub_1BE04D084();
  sub_1BE048C84();
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C54();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = v7;
    v22 = v9;
    v23 = v21;
    v32 = v21;
    *v20 = 136315138;
    v24 = sub_1BD123690(v31, v16, &v32);
    v31 = v8;
    v25 = v24;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1BD026000, v17, v18, "Callback Handling: selectedBankAccount name: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1BFB45F20](v23, -1, -1);
    v26 = v20;
    v2 = v30;
    MEMORY[0x1BFB45F20](v26, -1, -1);

    (*(v22 + 8))(v12, v31);
    v7 = v29;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v27 = a1;
  sub_1BD6B56B4(v7, 2);
  sub_1BD395EA4(v7, type metadata accessor for Analytics.StateChange);
  return [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)) didSelectBankAccount_];
}

void sub_1BD394CD0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BD5ED72C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1BD394EF0(v4);
  *a1 = v2;
}

uint64_t objectdestroyTm_32()
{

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  }

  sub_1BD0D45CC();
  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 152);
  }

  sub_1BD0D45CC();
  sub_1BD0D4604(*(v0 + 224), *(v0 + 232));
  sub_1BD0D4604(*(v0 + 240), *(v0 + 248));
  sub_1BD0D45CC();

  return swift_deallocObject();
}

void sub_1BD394EF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BE0527B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1BD395188(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD394FE8(0, v2, 1, a1);
  }
}

void sub_1BD394FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 16 * a3;
    v5 = a1 - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 16 * a3 + 8);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *(v4 - 8);
      if (v6)
      {
        break;
      }

      v11 = v7;
      if (v7)
      {
        goto LABEL_8;
      }

LABEL_10:
      sub_1BD0DDEBC();
      v12 = sub_1BE0535A4();

      if (v12 != -1)
      {
        goto LABEL_4;
      }

      if (!v19)
      {
        __break(1u);
        return;
      }

      v13 = *v4;
      v6 = *(v4 + 8);
      *v4 = *(v4 - 16);
      *(v4 - 8) = v6;
      *(v4 - 16) = v13;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 16;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v8 = v7;
    v9 = [v6 issuerName];
    sub_1BE052434();

    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_8:
    v10 = [v7 issuerName];
    sub_1BE052434();

    goto LABEL_10;
  }
}

void sub_1BD395188(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v129 = v8;
      v107 = *(v8 + 2);
      if (v107 >= 2)
      {
        while (*a3)
        {
          v108 = *&v8[16 * v107];
          v109 = *&v8[16 * v107 + 24];
          sub_1BD395998((*a3 + 16 * v108), (*a3 + 16 * *&v8[16 * v107 + 16]), (*a3 + 16 * v109), v7);
          if (v5)
          {
            goto LABEL_112;
          }

          if (v109 < v108)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1BD5ED6C8(v8);
          }

          if (v107 - 2 >= *(v8 + 2))
          {
            goto LABEL_129;
          }

          v110 = &v8[16 * v107];
          *v110 = v108;
          *(v110 + 1) = v109;
          v129 = v8;
          sub_1BD5ED63C(v107 - 1);
          v8 = v129;
          v107 = *(v129 + 2);
          if (v107 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_139;
      }

LABEL_112:

      return;
    }

LABEL_135:
    v8 = sub_1BD5ED6C8(v8);
    goto LABEL_104;
  }

  v111 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v32 = v7 + 1;
    goto LABEL_28;
  }

  v123 = v6;
  v10 = *a3;
  v11 = *a3 + 16 * (v7 + 1);
  v12 = *(v11 + 8);
  LOBYTE(v127) = *v11;
  v128 = v12;
  v13 = (v10 + 16 * v7);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v125) = v14;
  v126 = v15;
  v16 = v15;
  v7 = v12;
  v120 = sub_1BD715184(&v127, &v125);
  if (v5)
  {

    return;
  }

  v17 = v9 + 2;
  v113 = v9;
  v18 = 16 * v9;
  v19 = (v10 + 16 * v9 + 40);
  v118 = v8;
  do
  {
    if (v123 == v17)
    {
      v32 = v123;
      goto LABEL_18;
    }

    v24 = *v19;
    v25 = *(v19 - 2);
    if (*v19)
    {
      v26 = v25;
      v27 = [v24 issuerName];
      v28 = sub_1BE052434();
      v30 = v29;

      v127 = v28;
      v128 = v30;
      if (v25)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v31 = v25;
      v127 = 0;
      v128 = 0xE000000000000000;
      if (v25)
      {
LABEL_7:
        v20 = [v25 issuerName];
        v21 = sub_1BE052434();
        v7 = v22;

        goto LABEL_8;
      }
    }

    v21 = 0;
    v7 = 0xE000000000000000;
LABEL_8:
    v125 = v21;
    v126 = v7;
    sub_1BD0DDEBC();
    v23 = sub_1BE0535A4();

    ++v17;
    v19 += 2;
    v8 = v118;
  }

  while (((v120 ^ (v23 != -1)) & 1) != 0);
  v32 = v17 - 1;
LABEL_18:
  v5 = 0;
  if (!v120)
  {
LABEL_26:
    v9 = v113;
    goto LABEL_28;
  }

  v33 = v113;
  if (v32 < v113)
  {
    goto LABEL_134;
  }

  if (v113 < v32)
  {
    v34 = 0;
    v35 = 16 * v32;
    do
    {
      if (v33 != (v32 + v34 - 1))
      {
        v36 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v37 = (v36 + v18);
        v38 = v36 + v35;
        v39 = *v37;
        v40 = *(v37 + 1);
        *v37 = *(v38 - 16);
        *(v38 - 16) = v39;
        *(v38 - 8) = v40;
      }

      ++v33;
      --v34;
      v35 -= 16;
      v18 += 16;
    }

    while (v33 < v32 + v34);
    goto LABEL_26;
  }

  v9 = v113;
LABEL_28:
  v41 = a3[1];
  if (v32 >= v41)
  {
    goto LABEL_36;
  }

  if (__OFSUB__(v32, v9))
  {
    goto LABEL_131;
  }

  if (v32 - v9 >= v111)
  {
LABEL_36:
    v7 = v32;
    if (v32 < v9)
    {
      goto LABEL_130;
    }

    goto LABEL_37;
  }

  if (__OFADD__(v9, v111))
  {
    goto LABEL_132;
  }

  if (v9 + v111 < v41)
  {
    v41 = (v9 + v111);
  }

  if (v41 < v9)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v41)
  {
    goto LABEL_36;
  }

  v116 = v41;
  v119 = v8;
  v112 = v5;
  v114 = v9;
  v89 = *a3;
  v90 = *a3 + 16 * v32;
  v91 = v9 - v32;
LABEL_88:
  v124 = v32;
  v92 = *(v89 + 16 * v32 + 8);
  v117 = v91;
  v121 = v90;
  while (2)
  {
    v93 = *(v90 - 8);
    if (v92)
    {
      v94 = v93;
      v95 = [v92 issuerName];
      v96 = sub_1BE052434();
      v98 = v97;

      v127 = v96;
      v128 = v98;
      if (v93)
      {
        goto LABEL_91;
      }

LABEL_93:
      v100 = 0;
      v102 = 0xE000000000000000;
    }

    else
    {
      v103 = v93;
      v127 = 0;
      v128 = 0xE000000000000000;
      if (!v93)
      {
        goto LABEL_93;
      }

LABEL_91:
      v99 = [v93 issuerName];
      v100 = sub_1BE052434();
      v102 = v101;
    }

    v125 = v100;
    v126 = v102;
    sub_1BD0DDEBC();
    v104 = sub_1BE0535A4();

    if (v104 != -1)
    {
      goto LABEL_87;
    }

    if (v89)
    {
      v105 = *v90;
      v92 = *(v90 + 8);
      *v90 = *(v90 - 16);
      *(v90 - 8) = v92;
      *(v90 - 16) = v105;
      v90 -= 16;
      if (!__CFADD__(v91++, 1))
      {
        continue;
      }

LABEL_87:
      v32 = v124 + 1;
      v90 = v121 + 16;
      v91 = v117 - 1;
      if ((v124 + 1) != v116)
      {
        goto LABEL_88;
      }

      v5 = v112;
      v9 = v114;
      v8 = v119;
      v7 = v116;
      if (v116 < v114)
      {
        goto LABEL_130;
      }

LABEL_37:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1BD1D7844(0, *(v8 + 2) + 1, 1, v8);
      }

      v43 = *(v8 + 2);
      v42 = *(v8 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v8 = sub_1BD1D7844((v42 > 1), v43 + 1, 1, v8);
      }

      *(v8 + 2) = v44;
      v45 = &v8[16 * v43];
      *(v45 + 4) = v9;
      *(v45 + 5) = v7;
      v46 = *a1;
      if (!*a1)
      {
        goto LABEL_140;
      }

      if (v43)
      {
        while (2)
        {
          v47 = v44 - 1;
          if (v44 >= 4)
          {
            v52 = &v8[16 * v44 + 32];
            v53 = *(v52 - 64);
            v54 = *(v52 - 56);
            v58 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            if (v58)
            {
              goto LABEL_117;
            }

            v57 = *(v52 - 48);
            v56 = *(v52 - 40);
            v58 = __OFSUB__(v56, v57);
            v50 = v56 - v57;
            v51 = v58;
            if (v58)
            {
              goto LABEL_118;
            }

            v59 = &v8[16 * v44];
            v61 = *v59;
            v60 = *(v59 + 1);
            v58 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v58)
            {
              goto LABEL_120;
            }

            v58 = __OFADD__(v50, v62);
            v63 = v50 + v62;
            if (v58)
            {
              goto LABEL_123;
            }

            if (v63 >= v55)
            {
              v81 = &v8[16 * v47 + 32];
              v83 = *v81;
              v82 = *(v81 + 1);
              v58 = __OFSUB__(v82, v83);
              v84 = v82 - v83;
              if (v58)
              {
                goto LABEL_127;
              }

              if (v50 < v84)
              {
                v47 = v44 - 2;
              }
            }

            else
            {
LABEL_56:
              if (v51)
              {
                goto LABEL_119;
              }

              v64 = &v8[16 * v44];
              v66 = *v64;
              v65 = *(v64 + 1);
              v67 = __OFSUB__(v65, v66);
              v68 = v65 - v66;
              v69 = v67;
              if (v67)
              {
                goto LABEL_122;
              }

              v70 = &v8[16 * v47 + 32];
              v72 = *v70;
              v71 = *(v70 + 1);
              v58 = __OFSUB__(v71, v72);
              v73 = v71 - v72;
              if (v58)
              {
                goto LABEL_125;
              }

              if (__OFADD__(v68, v73))
              {
                goto LABEL_126;
              }

              if (v68 + v73 < v50)
              {
                goto LABEL_70;
              }

              if (v50 < v73)
              {
                v47 = v44 - 2;
              }
            }
          }

          else
          {
            if (v44 == 3)
            {
              v48 = *(v8 + 4);
              v49 = *(v8 + 5);
              v58 = __OFSUB__(v49, v48);
              v50 = v49 - v48;
              v51 = v58;
              goto LABEL_56;
            }

            v74 = &v8[16 * v44];
            v76 = *v74;
            v75 = *(v74 + 1);
            v58 = __OFSUB__(v75, v76);
            v68 = v75 - v76;
            v69 = v58;
LABEL_70:
            if (v69)
            {
              goto LABEL_121;
            }

            v77 = &v8[16 * v47];
            v79 = *(v77 + 4);
            v78 = *(v77 + 5);
            v58 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v58)
            {
              goto LABEL_124;
            }

            if (v80 < v68)
            {
              break;
            }
          }

          v85 = v47 - 1;
          if (v47 - 1 >= v44)
          {
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
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          if (!*a3)
          {
            goto LABEL_137;
          }

          v86 = *&v8[16 * v85 + 32];
          v87 = *&v8[16 * v47 + 40];
          sub_1BD395998((*a3 + 16 * v86), (*a3 + 16 * *&v8[16 * v47 + 32]), (*a3 + 16 * v87), v46);
          if (v5)
          {
            goto LABEL_112;
          }

          if (v87 < v86)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1BD5ED6C8(v8);
          }

          if (v85 >= *(v8 + 2))
          {
            goto LABEL_116;
          }

          v88 = &v8[16 * v85];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          v129 = v8;
          sub_1BD5ED63C(v47);
          v8 = v129;
          v44 = *(v129 + 2);
          if (v44 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_102;
      }

      goto LABEL_4;
    }

    break;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_1BD395998(char *__dst, char *a2, char *a3, char *a4)
{
  __dsta = a4;
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - a2;
  v10 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 4;
  if (v8 < v10 >> 4)
  {
    v12 = a2;
    if (a4 != __dst || &__dst[16 * v8] <= a4)
    {
      memmove(a4, __dst, 16 * v8);
    }

    v13 = &__dsta[16 * v8];
    if (v6 < 16)
    {
LABEL_10:
      v14 = v5;
      goto LABEL_43;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v17 = *(v12 + 1);
      v18 = *(__dsta + 1);
      v19 = v18;
      if (v17)
      {
        v20 = [v17 issuerName];
        sub_1BE052434();
      }

      if (v18)
      {
        v21 = [v18 issuerName];
        sub_1BE052434();
      }

      sub_1BD0DDEBC();
      v22 = sub_1BE0535A4();

      if (v22 != -1)
      {
        break;
      }

      v15 = v12;
      v16 = v5 == v12;
      v12 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 16;
      if (__dsta >= v13)
      {
        goto LABEL_10;
      }
    }

    v15 = __dsta;
    v16 = v5 == __dsta;
    __dsta += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v5 = *v15;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[16 * v11] <= a4)
  {
    v23 = a2;
    memmove(a4, a2, 16 * v11);
    a2 = v23;
  }

  v24 = a2;
  v13 = &__dsta[16 * v11];
  if (v9 < 16)
  {
LABEL_41:
    v14 = v24;
    goto LABEL_43;
  }

  v14 = a2;
  if (a2 > v5)
  {
LABEL_28:
    v4 -= 16;
    while (1)
    {
      v25 = *(v13 - 1);
      v26 = *(v14 - 1);
      if (v25)
      {
        break;
      }

      v30 = v26;
      if (v26)
      {
        goto LABEL_32;
      }

LABEL_34:
      sub_1BD0DDEBC();
      v31 = sub_1BE0535A4();

      if (v31 == -1)
      {
        v24 = v14 - 16;
        if (v4 + 16 != v14)
        {
          *v4 = *v24;
        }

        if (v13 <= __dsta)
        {
          goto LABEL_41;
        }

        v14 -= 16;
        if (v24 <= v5)
        {
          goto LABEL_41;
        }

        goto LABEL_28;
      }

      v32 = v13 - 16;
      if (v4 + 16 != v13)
      {
        *v4 = *v32;
      }

      v4 -= 16;
      v13 -= 16;
      if (v32 <= __dsta)
      {
        v13 = v32;
        goto LABEL_43;
      }
    }

    v27 = v26;
    v28 = [v25 issuerName];
    sub_1BE052434();

    if (!v26)
    {
      goto LABEL_34;
    }

LABEL_32:
    v29 = [v26 issuerName];
    sub_1BE052434();

    goto LABEL_34;
  }

LABEL_43:
  if (v14 != __dsta || v14 >= &__dsta[(v13 - __dsta + (v13 - __dsta < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v14, __dsta, 16 * ((v13 - __dsta) / 16));
  }

  return 1;
}

uint64_t sub_1BD395DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD395E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD395EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD395F04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD395F50(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1BE051F54();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE051FA4();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  aBlock[4] = sub_1BD3975A0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_76;
  v16 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3975D0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v19 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v18);
}

double sub_1BD39624C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t sub_1BD396258(double *a1)
{
  v2 = *a1;
  v1[2] = *a1;
  return sub_1BD395F50(*v1, v1[1], v2);
}

uint64_t **sub_1BD39628C(uint64_t **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1BD395F50(**result, (*result)[1], *(*result + 2));
  }

  return result;
}

uint64_t sub_1BD3962A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BD397618();

  return MEMORY[0x1EEDDA6B0](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1BD396324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BD397618();

  return MEMORY[0x1EEDDA6A8](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1BD3963A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43C20);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_1BD396418@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BC0);
  MEMORY[0x1EEE9AC00](v51, v2);
  v4 = &v44 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BC8);
  MEMORY[0x1EEE9AC00](v53, v5);
  v54 = &v44 - v6;
  v61[0] = *(v1 + 32);
  v7 = *v1;
  v49 = v1;
  v52 = *(v1 + 8);
  v50 = *(&v61[0] + 1);
  sub_1BD396F00(v52, v7);
  *&v57[0] = v8;
  *(&v57[0] + 1) = v9;
  sub_1BD0DDEBC();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v14 = v13;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
  if (result)
  {
    sub_1BE050484();
    v16 = sub_1BE0505F4();
    v18 = v17;
    v20 = v19;

    sub_1BD0DDF10(v10, v12, v14 & 1);

    sub_1BE050364();
    v21 = sub_1BE050544();
    v23 = v22;
    v25 = v24;
    sub_1BD0DDF10(v16, v18, v20 & 1);

    sub_1BE051224();
    v48 = sub_1BE050564();
    v47 = v26;
    v28 = v27;
    v46 = v29;

    sub_1BD0DDF10(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v30 = v49;
    v60 = v49[1];
    v57[0] = v49[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
    sub_1BE0516A4();
    v31 = v56[0];
    v32 = swift_allocObject();
    v33 = v30[1];
    v32[1] = *v30;
    v32[2] = v33;
    v32[3] = v30[2];
    LOBYTE(v18) = v28 & 1;
    v59 = v28 & 1;
    v58 = 0;
    swift_beginAccess();
    v34 = v51;
    sub_1BE048964();
    sub_1BD0DE19C(&v60, v56, &qword_1EBD43BD0);
    sub_1BD0DE19C(v61, v56, &qword_1EBD43BD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BE0);
    sub_1BE04D884();
    swift_endAccess();
    v35 = swift_allocObject();
    v36 = v30[1];
    *(v35 + 1) = *v30;
    *(v35 + 2) = v36;
    *(v35 + 3) = v30[2];
    v37 = v47;
    *v4 = v48;
    *(v4 + 1) = v37;
    v4[16] = v18;
    v38 = KeyPath;
    *(v4 + 3) = v46;
    *(v4 + 4) = v38;
    *(v4 + 5) = 1;
    v4[48] = 0;
    *(v4 + 7) = sub_1BD397210;
    *(v4 + 8) = v32;
    *(v4 + 9) = v31;
    v39 = &v4[*(v34 + 56)];
    *v39 = sub_1BD397218;
    v39[1] = v35;
    v40 = swift_allocObject();
    v41 = v30[1];
    *(v40 + 1) = *v30;
    *(v40 + 2) = v41;
    *(v40 + 3) = v30[2];
    v42 = v54;
    sub_1BD397270(v4, v54);
    v43 = (v42 + *(v53 + 36));
    *v43 = sub_1BD397268;
    v43[1] = v40;
    v43[2] = 0;
    v43[3] = 0;
    sub_1BE052434();
    sub_1BE048964();
    sub_1BD0DE19C(&v60, v57, &qword_1EBD43BD0);
    sub_1BD0DE19C(v61, v57, &qword_1EBD43BD8);
    sub_1BE048964();
    sub_1BD0DE19C(&v60, v57, &qword_1EBD43BD0);
    sub_1BD0DE19C(v61, v57, &qword_1EBD43BD8);
    sub_1BD3972E0();
    sub_1BE050DE4();

    return sub_1BD0DE53C(v42, &qword_1EBD43BC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}