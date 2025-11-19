uint64_t sub_1BD891EAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD891EE8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD891F34(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  if (PKDisableDynamicSEAllocation())
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE13E130;
    v2 = 0xD000000000000012;
    v4 = 1;
  }

  return a1(v2, v3, 0, v4);
}

unint64_t sub_1BD892104()
{
  result = qword_1EBD56B08;
  if (!qword_1EBD56B08)
  {
    sub_1BE04B944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56B08);
  }

  return result;
}

void sub_1BD89215C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  v17 = OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete;
  if ((*(v4 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete) & 1) == 0)
  {
    if (PKPaymentSetupMockInAppProvisioningDeleteUIEnabled())
    {
      sub_1BE04D0F4();
      sub_1BE048C84();
      v18 = sub_1BE04D204();
      v19 = sub_1BE052C54();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        if (!a1)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v38 = a3;
        if (a1 >> 62)
        {
          v36 = v20;
          v21 = sub_1BE053704();
          v20 = v36;
        }

        else
        {
          v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v20 + 4) = v21;
        v22 = v20;

        _os_log_impl(&dword_1BD026000, v18, v19, "Skipping delete of %ld passes because device is mocking UI", v22, 0xCu);
        MEMORY[0x1BFB45F20](v22, -1, -1);
      }

      else
      {
      }

      v29 = (*(v9 + 8))(v16, v8);
    }

    else
    {
      sub_1BE04D0F4();
      sub_1BE048C84();
      v23 = sub_1BE04D204();
      v24 = sub_1BE052C54();
      v25 = os_log_type_enabled(v23, v24);
      v39 = a1 >> 62;
      if (v25)
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        if (!a1)
        {
LABEL_32:
          __break(1u);
          return;
        }

        v38 = a3;
        if (v39)
        {
          v37 = v26;
          v27 = sub_1BE053704();
          v26 = v37;
        }

        else
        {
          v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v26 + 4) = v27;
        v28 = v26;

        _os_log_impl(&dword_1BD026000, v23, v24, "Deleting %ld passes to make room for new passes!", v28, 0xCu);
        MEMORY[0x1BFB45F20](v28, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
      v30 = [objc_opt_self() sharedInstance];
      if (!v30)
      {
        goto LABEL_29;
      }

      if (!a1)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v31 = v30;
      if (v39)
      {
        sub_1BD0E5E8C(0, &qword_1EBD40650);
        sub_1BE048C84();
        sub_1BE0539A4();
      }

      else
      {
        sub_1BE048C84();
        sub_1BE053BA4();
        sub_1BD0E5E8C(0, &qword_1EBD40650);
      }

      sub_1BD0E5E8C(0, &qword_1EBD40650);
      v32 = sub_1BE052724();

      [v31 removePasses_];
    }

    if (a2)
    {
      a2(v29);
      *(v4 + v17) = 1;
      v33 = v4 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 8);
        ObjectType = swift_getObjectType();
        sub_1BD8659A4(v4, &off_1F3BC2038, ObjectType, v34);
        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

void sub_1BD8925C0()
{
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete) = 1;
    v5 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
    v1 = v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v6[0] = v5;
      v7 = 1;
      v4 = v5;
      sub_1BD865A00(v0, &off_1F3BC2038, v6, ObjectType, v2);

      swift_unknownObjectRelease();
      sub_1BD12FF7C(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD8927C0(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - v7;
  v9 = sub_1BE04BDF4();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BAC4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  sub_1BE04BC34();
  v17 = sub_1BE04BA54();
  v18 = *(v13 + 8);
  v18(v16, v12);
  if (v17)
  {
    return a1(0xD00000000000001BLL, 0x80000001BE134050, 0, 1);
  }

  v36 = a2;
  v37 = a1;
  v41 = *(v39 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_requirements);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500);
  sub_1BD126024(&qword_1EBD55110, &unk_1EBD3F500);
  sub_1BE052684();
  v20 = v40;
  if ((*(v40 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &unk_1EBD55100);
    return v37(0xD000000000000011, 0x80000001BE13E1B0, 0, 1);
  }

  v21 = v8;
  v22 = v9;
  (*(v20 + 32))(v38, v21, v9);
  v23 = sub_1BE04BDC4();
  v24 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional;
  v25 = v39;
  *(v39 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional) = v23 & 1;
  if (*(v25 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature + 8))
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature);
  }

  sub_1BE04BC34();
  v27 = sub_1BE04B9A4();
  v18(v16, v12);
  v28 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:4 feature:v26 context:v27];
  v29 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController;
  v30 = *(v25 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController);
  *(v25 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController) = v28;

  v31 = *(v25 + v29);
  if (v31 && [v31 isHSA2Enabled])
  {
    v32 = 0xD000000000000014;
    v33 = 0x80000001BE13E1D0;
    v34 = 1;
LABEL_14:
    v37(v32, v33, 0, v34);
    return (*(v40 + 8))(v38, v22);
  }

  if (*(v25 + v24) != 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_14;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v37;
  *(v35 + 24) = v36;
  sub_1BE048964();
  sub_1BD892C38(sub_1BD8941A0, v35);

  return (*(v40 + 8))(v38, v22);
}

void sub_1BD892C38(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v49 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v52 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v48 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v48 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v48 - v17;
  v19 = *MEMORY[0x1E69B80D8];
  v20 = *(v3 + 104);
  v20(v48 - v17, v19, v2, v16);
  v21 = PKPassKitBundle();
  if (!v21)
  {
    __break(1u);
    goto LABEL_8;
  }

  v22 = v21;
  v48[4] = sub_1BE04B6F4();
  v48[5] = v23;

  v24 = *(v3 + 8);
  v24(v18, v2);
  (v20)(v13, v19, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BE0B69E0;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1BD110550();
  *(v25 + 32) = 0;
  *(v25 + 40) = 0xE000000000000000;
  v48[3] = sub_1BE04B714();

  v24(v13, v2);
  (v20)(v9, v19, v2);
  v26 = PKPassKitBundle();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v26;
  v48[2] = sub_1BE04B6F4();

  v24(v9, v2);
  v28 = v52;
  (v20)(v52, v19, v2);
  v29 = PKPassKitBundle();
  if (!v29)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v30 = v29;
  v48[1] = sub_1BE04B6F4();

  v24(v28, v2);
  v31 = sub_1BE052404();

  v32 = sub_1BE052404();

  v33 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  v34 = swift_allocObject();
  v36 = v49;
  v35 = v50;
  *(v34 + 16) = v49;
  *(v34 + 24) = v35;
  sub_1BE048964();
  v37 = sub_1BE052404();

  v57 = sub_1BD19E0B8;
  v58 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1BD198918;
  v56 = &block_descriptor_31_1;
  v38 = _Block_copy(&aBlock);

  v39 = objc_opt_self();
  v40 = [v39 actionWithTitle:v37 style:0 handler:v38];
  _Block_release(v38);

  [v33 addAction_];
  [v33 setPreferredAction_];
  PKApplyDefaultIconToAlertController(v33);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  *(v41 + 24) = v35;
  sub_1BE048964();
  v42 = sub_1BE052404();

  v57 = sub_1BD1B5F6C;
  v58 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1BD198918;
  v56 = &block_descriptor_37_1;
  v43 = _Block_copy(&aBlock);

  v44 = [v39 actionWithTitle:v42 style:0 handler:v43];
  _Block_release(v43);

  [v33 addAction_];
  v45 = v51 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v46 = *(v45 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 24))(v33, ObjectType, v46);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD893258()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(v0, &off_1F3BC20B8, ObjectType, v3);
    v7 = v6;
    swift_unknownObjectRelease();
    if (v5)
    {
      v8 = swift_getObjectType();
      v9 = (*(v7 + 56))(v8, v7);
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController);
        if (v10)
        {
          v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_promptedUserToUpgrade);
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v17[4] = sub_1BD8940C8;
          v17[5] = v12;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 1107296256;
          v17[2] = sub_1BD68F010;
          v17[3] = &block_descriptor_199;
          v13 = _Block_copy(v17);
          v14 = v10;
          v15 = v9;

          [v14 presentSecurityRepairFlowWithPresentingViewController:v15 suppressHSA2Alert:v11 completion:v13];
          _Block_release(v13);

          return 1;
        }
      }
    }
  }

  return 2;
}

uint64_t sub_1BD893424(uint64_t a1, void *a2)
{
  v4 = sub_1BE051F54();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v8 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1BD8940D0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_10_4;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v16);
  _Block_release(v16);

  (*(v21 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v20);
}

void sub_1BD89371C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [*(Strong + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter) reportViewAppeared];
    if (a2 != 3)
    {
      if (!a2)
      {
        v9 = 0u;
        v10 = 0u;
        v7 = -1;
LABEL_8:
        v11 = v7;
        sub_1BD893808(&v9);

        sub_1BD0DE53C(&v9, &unk_1EBD3F510);
        return;
      }

      if (a3)
      {
        v8 = a3;
        sub_1BD8938F4(a3, a2);

        return;
      }
    }

    v9 = 0u;
    v10 = 0u;
    v7 = 2;
    goto LABEL_8;
  }
}

uint64_t sub_1BD893808(uint64_t a1)
{
  sub_1BD39F6D4(a1, v9);
  if (v10)
  {
    if (v10 == 255)
    {
      sub_1BD0DE53C(v9, &unk_1EBD3F510);
    }

    else
    {
      sub_1BD39F670(v9);
    }

    v3 = 0;
  }

  else
  {
    sub_1BD39F670(v9);
    v3 = 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter);
  if (v4)
  {
    [v4 reportPageCompleted:v3 context:0];
  }

  v5 = v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865A00(v1, &off_1F3BC20B8, a1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD8938F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v13 = *&v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter];
  if (v13)
  {
    v14 = sub_1BE04A844();
    [v13 reportError:v14 context:0];
  }

  if (v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature + 8])
  {
    v15 = sub_1BE04A844();
    v16 = PKTitleForDisplayableError();

    if (v16)
    {
      v47 = sub_1BE052434();
      v18 = v17;
    }

    else
    {
      v47 = 0;
      v18 = 0;
    }

    v23 = sub_1BE04A844();
    v24 = MEMORY[0x1BFB42D10]();

    if (v24)
    {
      v46 = sub_1BE052434();
      v26 = v25;

      goto LABEL_15;
    }
  }

  else
  {
    v19 = *&v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature];
    v20 = objc_opt_self();
    v21 = sub_1BE04A844();
    v4 = [v20 displayableErrorForError:v21 featureIdentifier:v19 genericErrorTitle:0 genericErrorMessage:0];

    if (v4)
    {
      v22 = v4;
      v12 = sub_1BE04A844();
    }

    else
    {
      v12 = 0;
    }

    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    v52 = sub_1BD894148;
    v53 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1BD126964;
    v51 = &block_descriptor_22_10;
    v18 = _Block_copy(&aBlock);
    v28 = v2;

    v8 = PKAlertForDisplayableErrorWithCancelHandler(v12, 0, v18);
    _Block_release(v18);

    if (v8)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v46 = 0;
  v26 = 0;
LABEL_15:
  v29 = *MEMORY[0x1E69B80D8];
  v30 = *(v5 + 104);
  if (v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional] != 1 || a2 == 4)
  {
    v30(v8, v29, v4);
    v32 = PKPassKitBundle();
    if (v32)
    {
      v33 = v32;
      sub_1BE04B6F4();
      v12 = v8;
      goto LABEL_24;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v30(v12, v29, v4);
  v34 = PKPassKitBundle();
  if (!v34)
  {
    goto LABEL_35;
  }

  v33 = v34;
  sub_1BE04B6F4();
LABEL_24:

  (*(v5 + 8))(v12, v4);
  if (!v18)
  {
    v35 = 0;
    if (v26)
    {
      goto LABEL_26;
    }

LABEL_28:
    v36 = 0;
    goto LABEL_29;
  }

  v35 = sub_1BE052404();

  if (!v26)
  {
    goto LABEL_28;
  }

LABEL_26:
  v36 = sub_1BE052404();

LABEL_29:
  v37 = [objc_opt_self() alertControllerWithTitle:v35 message:v36 preferredStyle:1];

  v4 = v37;
  PKApplyDefaultIconToAlertController(v4);
  v38 = swift_allocObject();
  *(v38 + 16) = v2;
  v39 = v2;
  v40 = sub_1BE052404();

  v52 = sub_1BD8940DC;
  v53 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1BD198918;
  v51 = &block_descriptor_16_6;
  v41 = _Block_copy(&aBlock);

  v42 = [objc_opt_self() actionWithTitle:v40 style:1 handler:v41];
  _Block_release(v41);

  [v4 addAction_];
  v8 = v4;
LABEL_30:

  v43 = &v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v43 + 1);
    ObjectType = swift_getObjectType();
    (*(v44 + 24))(v8, ObjectType, v44);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD893EC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD893F00(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD893F64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_promptedUserToUpgrade] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional] = 1;
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_identifier];
  strcpy(&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_identifier], "HSA2FlowItem");
  v11[13] = 0;
  *(v11 + 7) = -5120;
  v12 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_dismissalConfiguration;
  v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_dismissalConfiguration] = 2;
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_context] = a1;
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_requirements] = a2;
  v13 = &v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature];
  *v13 = a3;
  v13[8] = a4 & 1;
  v5[v12] = 1;
  sub_1BE052434();
  sub_1BE048964();
  v14 = sub_1BE04BB74();

  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter] = v14;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1BD8940DC()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional))
  {
    v1 = -1;
  }

  else
  {
    v1 = 2;
  }

  memset(v3, 0, sizeof(v3));
  v4 = v1;
  sub_1BD893808(v3);
  return sub_1BD0DE53C(v3, &unk_1EBD3F510);
}

uint64_t sub_1BD894148()
{
  memset(v1, 0, sizeof(v1));
  v2 = 2;
  sub_1BD893808(v1);
  return sub_1BD0DE53C(v1, &unk_1EBD3F510);
}

void sub_1BD894258()
{
  sub_1BD894384(319, &qword_1EBD4DE60, type metadata accessor for AccountAutomaticPaymentsModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD894384(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1BD894384(319, &qword_1EBD56B70, MEMORY[0x1E697D750], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD894384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD894404@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE051B34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE051694();
  v9 = v21;
  *a2 = v20;
  a2[1] = v9;
  v10 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v11 = *(v10 + 20);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v17 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CA8);
  sub_1BE051B44();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0BA750;
  v18 = xmmword_1BE0FFF20;
  *v8 = xmmword_1BE0FFF20;
  v13 = *MEMORY[0x1E697D748];
  v14 = *(v5 + 104);
  v14(v8, v13, v4);
  sub_1BE051B54();
  *v8 = v18;
  v14(v8, v13, v4);
  sub_1BE051B54();
  *v8 = v18;
  v14(v8, v13, v4);
  sub_1BE051B54();
  *v8 = v18;
  v14(v8, v13, v4);
  sub_1BE051B54();
  *v8 = v18;
  v14(v8, v13, v4);
  sub_1BE051B54();
  *v8 = v18;
  v14(v8, v13, v4);
  sub_1BE051B54();
  *v8 = v18;
  v14(v8, v13, v4);
  result = sub_1BE051B54();
  *(a2 + v17) = v12;
  return result;
}

uint64_t sub_1BD8947C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B78);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B80);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B88);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  if (PKIsVision())
  {
    *v11 = sub_1BE04F504();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BB0);
    sub_1BD894A68(&v11[*(v12 + 44)]);
    sub_1BD0DE19C(v11, v7, &qword_1EBD56B88);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD56B90, &qword_1EBD56B88);
    sub_1BD896CDC();
    sub_1BE04F9A4();
    v13 = v11;
    v14 = &qword_1EBD56B88;
  }

  else
  {
    sub_1BD894CC8(v3);
    sub_1BD0DE19C(v3, v7, &qword_1EBD56B78);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD56B90, &qword_1EBD56B88);
    sub_1BD896CDC();
    sub_1BE04F9A4();
    v13 = v3;
    v14 = &qword_1EBD56B78;
  }

  return sub_1BD0DE53C(v13, v14);
}

uint64_t sub_1BD894A68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B78);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BB8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v26 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v26 - v17;
  sub_1BD894CC8(v5);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v5, v14, &qword_1EBD56B78);
  v19 = &v14[*(v7 + 44)];
  v20 = v26[5];
  *(v19 + 4) = v26[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v26[6];
  v21 = v26[1];
  *v19 = v26[0];
  *(v19 + 1) = v21;
  v22 = v26[3];
  *(v19 + 2) = v26[2];
  *(v19 + 3) = v22;
  sub_1BD0DE204(v14, v18, &qword_1EBD56BB8);
  sub_1BD0DE19C(v18, v10, &qword_1EBD56BB8);
  *a1 = 0;
  *(a1 + 8) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BC0);
  sub_1BD0DE19C(v10, a1 + *(v23 + 48), &qword_1EBD56BB8);
  v24 = a1 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1BD0DE53C(v18, &qword_1EBD56BB8);
  return sub_1BD0DE53C(v10, &qword_1EBD56BB8);
}

uint64_t sub_1BD894CC8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_1BE04EB24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  v11 = sub_1BE04FBA4();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BA8);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v32 = &v30 - v15;
  type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v31 = v1;
  sub_1BE048C84();
  sub_1BE04F7B4();
  v36 = v1;
  v37 = 0;
  sub_1BD8973E8(&qword_1EBD3FDB8, MEMORY[0x1E697FCB0]);
  sub_1BE053DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BC8);
  sub_1BD896D9C();
  v16 = v32;
  sub_1BE051DE4();
  sub_1BD70A2A0(v10);
  (*(v3 + 104))(v6, *MEMORY[0x1E697E728], v2);
  sub_1BD8973E8(&qword_1EBD56C70, MEMORY[0x1E697E730]);
  sub_1BE0522F4();
  v17 = *(v3 + 8);
  v17(v6, v2);
  v17(v10, v2);
  v18 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v35;
  (*(v33 + 32))(v35, v16, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B78);
  v29 = v27 + *(result + 36);
  *v29 = v18;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_1BD895094(uint64_t a1)
{
  v2 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();

  v12 = xmmword_1BE0FFF30;
  swift_getKeyPath();
  sub_1BD7E90E4(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD858964(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C80);
  sub_1BD8975A8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BD8);
  v9 = sub_1BD896E5C();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BD89528C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a3;
  v5 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v137 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v138 = v7;
  v139 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1BE04FF64();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v8);
  v134 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1BE04F9C4();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v10);
  v131 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v119, v12);
  v145 = &v114 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C90);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v14);
  v117 = &v114 - v15;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C28);
  MEMORY[0x1EEE9AC00](v143, v16);
  v18 = &v114 - v17;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C18);
  MEMORY[0x1EEE9AC00](v144, v19);
  v147 = &v114 - v20;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C00);
  MEMORY[0x1EEE9AC00](v148, v21);
  v118 = &v114 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BF8);
  v123 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v23);
  v122 = &v114 - v24;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C98);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v25);
  v125 = &v114 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BF0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v124 = &v114 - v29;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BD8);
  MEMORY[0x1EEE9AC00](v129, v30);
  v130 = &v114 - v31;
  v150 = *a1;
  v32 = *a2;
  v152 = a2[1];
  v153 = v32;
  v158 = v32;
  v159 = v152;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v33 = v154;
  swift_getKeyPath();
  v158 = v33;
  sub_1BD8973E8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  if (*(v33 + 24) == 2)
  {

    v34 = 11;
  }

  else
  {
    swift_getKeyPath();
    v158 = v33;
    sub_1BE04B594();

    v35 = *(v33 + 24);

    v34 = 11;
    if (v35 != 3)
    {
      v34 = 1;
    }
  }

  v146 = v34;
  v37 = v152;
  v36 = v153;
  v158 = v153;
  v159 = v152;
  sub_1BE0516A4();
  v38 = v154;
  swift_getKeyPath();
  v158 = v38;
  sub_1BE04B594();

  v39 = *(v38 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay);

  v40 = v150;
  v149 = v39;
  LOBYTE(v38) = v150 == v39;
  v158 = v36;
  v159 = v37;
  sub_1BE0516A4();
  v41 = sub_1BDA24684(v40);

  sub_1BD8962E4(v41 & 1, v38, v18);
  v42 = *(v143 + 36);
  *&v18[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  if (PKIsVision())
  {
    v43 = sub_1BE04E624();
  }

  else
  {
    sub_1BE04E614();
    sub_1BE04E624();
    v43 = sub_1BE04E604();
  }

  v44 = v147;
  sub_1BD0DE204(v18, v147, &qword_1EBD56C28);
  *(v44 + *(v144 + 36)) = v43;
  v116 = sub_1BE051CD4();
  v115 = v45;
  if (v40 == v149)
  {
    v46 = PKIsVision();
    if (v41)
    {
      if (v46)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (v46)
    {
      v48 = sub_1BE0513F4();
LABEL_20:
      v161 = MEMORY[0x1E69815C0];
      v162 = MEMORY[0x1E6981568];
      v158 = v48;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v40 >= v146)
  {
    if (v41)
    {
      if (PKIsVision())
      {
LABEL_19:
        v48 = sub_1BE051424();
        goto LABEL_20;
      }

LABEL_21:
      v161 = sub_1BE04EA44();
      v162 = MEMORY[0x1E697E558];
      __swift_allocate_boxed_opaque_existential_1(&v158);
      sub_1BE04EA34();
      goto LABEL_25;
    }

    v47 = sub_1BE04FC74();
  }

  else if (PKIsVision())
  {
    v47 = sub_1BE04FC84();
  }

  else
  {
    v47 = sub_1BE04FC94();
  }

  v161 = MEMORY[0x1E697FE80];
  v162 = MEMORY[0x1E697FE70];
  LODWORD(v158) = v47;
LABEL_25:
  v143 = v162;
  v144 = v161;
  v142 = __swift_project_boxed_opaque_existential_1(&v158, v161);
  v154 = v153;
  v155 = v152;
  sub_1BE0516A4();
  v49 = sub_1BDA1DDE0();
  v50 = sub_1BE052A94();
  v51 = [v49 stringFromNumber_];

  v140 = a2;
  if (v51)
  {
    v52 = sub_1BE052434();
    v54 = v53;
  }

  else
  {
    v154 = v40;
    v52 = sub_1BE053B24();
    v54 = v55;
  }

  v56 = v40;
  v154 = v52;
  v155 = v54;
  v114 = sub_1BD0DDEBC();
  v57 = sub_1BE0506C4();
  v59 = v58;
  v61 = v60;
  sub_1BE0503E4();
  v62 = sub_1BE0505F4();
  v64 = v63;
  v66 = v65;

  sub_1BD0DDF10(v57, v59, v61 & 1);

  if (v56 == v149)
  {
    sub_1BE0503A4();
  }

  else
  {
    sub_1BE050394();
  }

  v67 = *(v148 + 36);
  v68 = sub_1BE050544();
  v70 = v69;
  v72 = v71;
  sub_1BD0DDF10(v62, v64, v66 & 1);

  v73 = sub_1BE050574();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  sub_1BD0DDF10(v68, v70, v72 & 1);

  v149 = v73;
  v154 = v73;
  v155 = v75;
  v80 = v77 & 1;
  v156 = v80;
  v157 = v79;
  v81 = *MEMORY[0x1E697E728];
  v82 = sub_1BE04EB24();
  v83 = v145;
  (*(*(v82 - 8) + 104))(v145, v81, v82);
  sub_1BD8973E8(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    v85 = v150 < v146;
    LODWORD(v146) = v150 < v146;
    v86 = !v85;
    LODWORD(v144) = v86;
    v87 = v118;
    v88 = &v118[v67];
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    v89 = v117;
    sub_1BE050B34();
    sub_1BD0DE53C(v83, &qword_1EBD3C1D0);
    sub_1BD0DDF10(v149, v75, v80);

    __swift_destroy_boxed_opaque_existential_0(&v158);
    (*(v120 + 32))(v88, v89, v121);
    v90 = &v88[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C60) + 36)];
    v91 = v115;
    *v90 = v116;
    v90[1] = v91;
    sub_1BD0DE204(v147, v87, &qword_1EBD56C18);
    v92 = v131;
    sub_1BE04EE94();
    v93 = sub_1BD897074();
    v94 = sub_1BD8973E8(&qword_1EBD56C68, MEMORY[0x1E697C658]);
    v95 = v122;
    v96 = v148;
    v97 = v133;
    sub_1BE0508E4();
    (*(v132 + 8))(v92, v97);
    sub_1BD0DE53C(v87, &qword_1EBD56C00);
    v98 = v134;
    sub_1BE04FF44();
    v158 = v96;
    v159 = v97;
    v160 = v93;
    v161 = v94;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v100 = v125;
    v101 = v126;
    sub_1BE050D14();
    (*(v135 + 8))(v98, v136);
    (*(v123 + 8))(v95, v101);
    v158 = v153;
    v159 = v152;
    sub_1BE0516A4();
    v102 = v150;
    v103 = sub_1BDA2391C(v150);
    v105 = v104;

    v158 = v103;
    v159 = v105;
    v154 = v101;
    v155 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v106 = v124;
    v107 = v128;
    sub_1BE050C34();

    (*(v127 + 8))(v100, v107);
    v108 = v130;
    sub_1BD0DE204(v106, v130, &qword_1EBD56BF0);
    v109 = v108 + *(v129 + 36);
    *v109 = 0x3FF0000000000000;
    *(v109 + 8) = 256;
    v110 = v139;
    sub_1BD7E90E4(v140, v139);
    v111 = (*(v137 + 80) + 17) & ~*(v137 + 80);
    v112 = (v138 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    *(v113 + 16) = v146;
    sub_1BD858964(v110, v113 + v111);
    *(v113 + v112) = v102;
    sub_1BD896E5C();
    sub_1BE0509D4();

    return sub_1BD0DE53C(v108, &qword_1EBD56BD8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8962E4@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CA0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v23 - v8);
  v10 = sub_1BE04F6E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C48);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v23 - v17;
  v19 = PKIsVision();
  if (a2)
  {
    v23[0] = a3;
    if (v19)
    {
      v20 = sub_1BE051424();
    }

    else
    {
      sub_1BE0513C4();
      v20 = sub_1BE051454();
    }

    v23[1] = v20;
    sub_1BE04F6B4();
    sub_1BE050DA4();
    (*(v11 + 8))(v14, v10);

    sub_1BD0DE19C(v18, v9, &qword_1EBD56C48);
    swift_storeEnumTagMultiPayload();
    sub_1BD89732C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v18, &qword_1EBD56C48);
  }

  else
  {
    if ((v19 & a1) == 1)
    {
      v21 = sub_1BE0513C4();
    }

    else
    {
      v21 = sub_1BE051404();
    }

    *v9 = v21;
    swift_storeEnumTagMultiPayload();
    sub_1BD89732C();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD8965AC(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v1 = MEMORY[0x1BFB3EDF0](0.1, 1.0, 0.0);
    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1BE04E7D4();
  }

  return result;
}

uint64_t sub_1BD896664(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  if (*(v6 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) == a2)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1BD8973E8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD8967D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CD0);
  MEMORY[0x1EEE9AC00](v43, v2);
  v4 = &v40 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CD8);
  MEMORY[0x1EEE9AC00](v42, v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CE0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v40 - v10;
  v12 = sub_1BE04EB24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v40 - v19;
  sub_1BD70A2A0(&v40 - v19);
  (*(v13 + 104))(v16, *MEMORY[0x1E697E728], v12);
  sub_1BD8973E8(&qword_1EBD56C70, MEMORY[0x1E697E730]);
  v21 = sub_1BE0522F4();
  v22 = *(v13 + 8);
  v22(v16, v12);
  v22(v20, v12);
  if (v21)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CF0);
    (*(*(v23 - 8) + 16))(v4, v41, v23);
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56D30) + 36)] = 256;
    v4[*(v43 + 36)] = 0;
    v24 = &qword_1EBD56CD0;
    sub_1BD0DE19C(v4, v7, &qword_1EBD56CD0);
    swift_storeEnumTagMultiPayload();
    sub_1BD897894();
    sub_1BD897A30();
    sub_1BE04F9A4();
    v25 = v4;
  }

  else
  {
    v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CE8) + 36)];
    v27 = sub_1BE04EDE4();
    v28 = *(v27 + 20);
    v29 = *MEMORY[0x1E697F468];
    v30 = sub_1BE04F684();
    v31 = *(*(v30 - 8) + 104);
    v31(&v26[v28], v29, v30);
    __asm { FMOV            V0.2D, #7.0 }

    v40 = _Q0;
    *v26 = _Q0;
    *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CF0);
    (*(*(v37 - 8) + 16))(v11, v41, v37);
    v38 = &v11[*(v8 + 36)];
    v31(&v38[*(v27 + 20)], v29, v30);
    *v38 = v40;
    v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CF8) + 36)] = 0;
    v24 = &qword_1EBD56CE0;
    sub_1BD0DE19C(v11, v7, &qword_1EBD56CE0);
    swift_storeEnumTagMultiPayload();
    sub_1BD897894();
    sub_1BD897A30();
    sub_1BE04F9A4();
    v25 = v11;
  }

  return sub_1BD0DE53C(v25, v24);
}

unint64_t sub_1BD896CDC()
{
  result = qword_1EBD56B98;
  if (!qword_1EBD56B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56B78);
    sub_1BD0DE4F4(&qword_1EBD56BA0, &qword_1EBD56BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56B98);
  }

  return result;
}

unint64_t sub_1BD896D9C()
{
  result = qword_1EBD56BD0;
  if (!qword_1EBD56BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BD8);
    sub_1BD896E5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56BD0);
  }

  return result;
}

unint64_t sub_1BD896E5C()
{
  result = qword_1EBD56BE0;
  if (!qword_1EBD56BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BD8);
    sub_1BD896EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56BE0);
  }

  return result;
}

unint64_t sub_1BD896EE8()
{
  result = qword_1EBD56BE8;
  if (!qword_1EBD56BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C00);
    sub_1BE04F9C4();
    sub_1BD897074();
    sub_1BD8973E8(&qword_1EBD56C68, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD8973E8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56BE8);
  }

  return result;
}

unint64_t sub_1BD897074()
{
  result = qword_1EBD56C08;
  if (!qword_1EBD56C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C00);
    sub_1BD89712C();
    sub_1BD0DE4F4(&qword_1EBD56C58, &qword_1EBD56C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C08);
  }

  return result;
}

unint64_t sub_1BD89712C()
{
  result = qword_1EBD56C10;
  if (!qword_1EBD56C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C18);
    sub_1BD8971E4();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C10);
  }

  return result;
}

unint64_t sub_1BD8971E4()
{
  result = qword_1EBD56C20;
  if (!qword_1EBD56C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C28);
    sub_1BD8972A0();
    sub_1BD8973E8(&qword_1EBD56C50, type metadata accessor for AccountAutomaticPaymentsDayPickerView.DayShapeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C20);
  }

  return result;
}

unint64_t sub_1BD8972A0()
{
  result = qword_1EBD56C30;
  if (!qword_1EBD56C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C38);
    sub_1BD89732C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C30);
  }

  return result;
}

unint64_t sub_1BD89732C()
{
  result = qword_1EBD56C40;
  if (!qword_1EBD56C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C48);
    sub_1BD8973E8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C40);
  }

  return result;
}

uint64_t sub_1BD8973E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD897450@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8973E8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay);
  return result;
}

uint64_t sub_1BD897528@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountAutomaticPaymentsDayPickerView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1BD89528C(a1, v6, a2);
}

unint64_t sub_1BD8975A8()
{
  result = qword_1EBD56C88;
  if (!qword_1EBD56C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C78);
    sub_1BD2D5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C88);
  }

  return result;
}

uint64_t sub_1BD897634()
{
  type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v1 = *(v0 + 16);

  return sub_1BD8965AC(v1);
}

void sub_1BD897724()
{
  sub_1BD894384(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BD8977C0()
{
  result = qword_1EBD56CC0;
  if (!qword_1EBD56CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CC8);
    sub_1BD0DE4F4(&qword_1EBD56B90, &qword_1EBD56B88);
    sub_1BD896CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56CC0);
  }

  return result;
}

unint64_t sub_1BD897894()
{
  result = qword_1EBD56D00;
  if (!qword_1EBD56D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CE0);
    sub_1BD89794C();
    sub_1BD0DE4F4(&qword_1EBD56D18, &qword_1EBD56CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D00);
  }

  return result;
}

unint64_t sub_1BD89794C()
{
  result = qword_1EBD56D08;
  if (!qword_1EBD56D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CE8);
    sub_1BD0DE4F4(&qword_1EBD56D10, &qword_1EBD56CF0);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D08);
  }

  return result;
}

unint64_t sub_1BD897A30()
{
  result = qword_1EBD56D20;
  if (!qword_1EBD56D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CD0);
    sub_1BD897AE8();
    sub_1BD0DE4F4(&qword_1EBD56D38, &qword_1EBD56D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D20);
  }

  return result;
}

unint64_t sub_1BD897AE8()
{
  result = qword_1EBD56D28;
  if (!qword_1EBD56D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56D30);
    sub_1BD0DE4F4(&qword_1EBD56D10, &qword_1EBD56CF0);
    sub_1BD0DE4F4(&qword_1EBD491B8, &unk_1EBD491C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D28);
  }

  return result;
}

unint64_t sub_1BD897BCC()
{
  result = qword_1EBD56D48;
  if (!qword_1EBD56D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD56D50);
    sub_1BD897894();
    sub_1BD897A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D48);
  }

  return result;
}

uint64_t sub_1BD897D3C()
{
  key[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BE04D214();
  v120 = *(v1 - 8);
  v121 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v122 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v112 = &v111 - v6;
  v7 = sub_1BE04BAC4();
  v117 = *(v7 - 1);
  v118 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v116 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56DF8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v114 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v119 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v111 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v111 - v22;
  v24 = sub_1BE04C384();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v0;
  v29 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration);
  v30 = sub_1BE04C3A4();
  key[0] = MEMORY[0x1E69E7CC0];
  v31 = *(v30 + 16);
  v124 = v25;
  v125 = v29;
  v126 = v23;
  if (v31)
  {
    v115 = v19;
    v32 = v25 + 16;
    v33 = *(v25 + 16);
    v34 = (*(v32 + 64) + 32) & ~*(v32 + 64);
    v113 = v30;
    v35 = v30 + v34;
    v36 = *(v32 + 56);
    v127 = MEMORY[0x1E69E7CC0];
    v33(v28, v30 + v34, v24);
    while (1)
    {
      v37 = sub_1BE04C2F4();
      (*(v32 - 8))(v28, v24);
      if (v37)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x1BFB3F7A0]();
          if (*((key[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((key[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v127 = *((key[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();
          v127 = key[0];
        }

        else
        {
        }
      }

      v35 += v36;
      if (!--v31)
      {
        break;
      }

      v33(v28, v35, v24);
    }

    v23 = v126;
    v25 = v124;
    v19 = v115;
  }

  else
  {

    v127 = MEMORY[0x1E69E7CC0];
  }

  v38 = sub_1BE04C3A4();
  if (*(v38 + 16))
  {
    (*(v25 + 16))(v23, v38 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  (*(v25 + 56))(v23, v39, 1, v24);
  sub_1BD89A318(v23, v19);
  v40 = *(v25 + 48);
  if (v40(v19, 1, v24) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD56DF8);
    v41 = 0;
  }

  else
  {
    v42 = sub_1BE04C304();
    v43 = v19;
    v41 = v42;
    (*(v25 + 8))(v43, v24);
  }

  if (!(v127 >> 62))
  {
    v44 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v44 | v41))
    {
      goto LABEL_21;
    }

LABEL_25:
    v51 = *(v123 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_context);
    sub_1BE052434();
    v122 = sub_1BE04BB74();

    v52 = v116;
    v115 = v51;
    sub_1BE04BC34();
    v53 = sub_1BE04B9A4();
    (*(v117 + 8))(v52, v118);
    if (v41)
    {
      v54 = [v41 shareablePassConfiguration];
    }

    else
    {
      v54 = 0;
    }

    v55 = v119;
    sub_1BD89A318(v23, v119);
    v56 = v40(v55, 1, v24);
    v118 = v54;
    v119 = v41;
    if (v56 == 1)
    {
      sub_1BD0DE53C(v55, &qword_1EBD56DF8);
    }

    else
    {
      v57 = sub_1BE04C2F4();
      (*(v124 + 8))(v55, v24);
      if (v57)
      {
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = v58;

          v60 = objc_allocWithZone(PKPushableExternalOfferCredentialProvisioningViewController);
          v61 = [v60 initWithContext:v53 credential:v59 reporter:v122];
          sub_1BE04BB14();
          if (v62)
          {
            v63 = sub_1BE052404();
          }

          else
          {
            v63 = 0;
          }

          v72 = v123;
          [v61 setReferralSource_];

          [v61 setCoordinator_];
          v93 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
          v94 = objc_allocWithZone(v93);
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v128.receiver = v94;
          v128.super_class = v93;
          v48 = v61;
          v95 = objc_msgSendSuper2(&v128, sel_init);
          LOBYTE(key[0]) = 0;
          objc_setAssociatedObject(v48, key, v95, 1);

          goto LABEL_59;
        }

        v54 = v118;
      }
    }

    if (v54 | v44)
    {
      v64 = v54;
      v65 = objc_allocWithZone(PKShareableCredentialProvisioningViewController);
      sub_1BD0E5E8C(0, &unk_1EBD56E00);
      v66 = v64;
      v67 = v122;
      v68 = sub_1BE052724();

      v69 = [v65 initWithContext:v53 credentials:v68 configuration:v66 reporter:v67];

      v122 = v67;
      v70 = v114;
      sub_1BD89A318(v126, v114);
      if (v40(v70, 1, v24) == 1)
      {
        sub_1BD0DE53C(v70, &qword_1EBD56DF8);
        v71 = 0;
        v72 = v123;
      }

      else
      {
        v85 = sub_1BE04C314();
        (*(v124 + 8))(v70, v24);
        v72 = v123;
        if (v85)
        {
          objc_opt_self();
          v71 = swift_dynamicCastObjCClass();
          if (!v71)
          {
          }
        }

        else
        {
          v71 = 0;
        }
      }

      [v69 setInvitation_];
      v87 = v69;
      sub_1BE04BB14();
      if (v88)
      {
        v89 = sub_1BE052404();
      }

      else
      {
        v89 = 0;
      }

      [v87 setReferralSource_];

      [v87 setCoordinator_];
      v90 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
      v91 = objc_allocWithZone(v90);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v131.receiver = v91;
      v131.super_class = v90;
      v48 = v87;
      v92 = objc_msgSendSuper2(&v131, sel_init);
      LOBYTE(key[0]) = 0;
      objc_setAssociatedObject(v48, key, v92, 1);

      goto LABEL_59;
    }

    v73 = v126;
    v74 = v123;
    if (v41)
    {
      objc_opt_self();
      v75 = swift_dynamicCastObjCClass();
      v76 = v112;
      if (v75)
      {
        v77 = v75;
        v78 = objc_allocWithZone(PKPushableIdentityCredentialProvisioningViewController);
        sub_1BD0E5E8C(0, &unk_1EBD56E00);
        swift_unknownObjectRetain_n();
        v79 = v122;
        v80 = sub_1BE052724();

        v81 = [v78 initWithContext:v53 credentials:v80 configuration:v77 reporter:v79];

        swift_unknownObjectRelease();
        v122 = v79;

        v82 = v81;
        sub_1BE04BB14();
        if (v83)
        {
          v84 = sub_1BE052404();
        }

        else
        {
          v84 = 0;
        }

        [v82 setReferralSource_];

        [v82 setCoordinator_];
        v102 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
        v103 = objc_allocWithZone(v102);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v129.receiver = v103;
        v129.super_class = v102;
        v48 = v82;
        v104 = objc_msgSendSuper2(&v129, sel_init);
        LOBYTE(key[0]) = 0;
        objc_setAssociatedObject(v48, key, v104, 1);
        swift_unknownObjectRelease();

        v72 = v74;
LABEL_59:
        v105 = type metadata accessor for ProvisioningUICoordinator();
        v106 = objc_allocWithZone(v105);
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v107 = &v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
        v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v115;
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v125;
        swift_unknownObjectWeakAssign();
        *(v107 + 1) = &off_1F3BC1D90;
        swift_unknownObjectWeakAssign();
        v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
        swift_unknownObjectRetain();
        sub_1BE048964();
        sub_1BE048964();
        *&v106[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
        v130.receiver = v106;
        v130.super_class = v105;
        v108 = objc_msgSendSuper2(&v130, sel_init);

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        sub_1BD0DE53C(v126, &qword_1EBD56DF8);
        *&v108[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BC2368;
        swift_unknownObjectWeakAssign();
        v109 = *(v72 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
        *(v72 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator) = v108;

        return v48;
      }

      v86 = v41;
    }

    else
    {
      v86 = 0;
      v76 = v112;
    }

    sub_1BE04D0E4();
    swift_unknownObjectRetain();
    v96 = sub_1BE04D204();
    v97 = sub_1BE052C34();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v98 = 138412290;
      v100 = v119;
      if (v119)
      {
        v101 = [v86 secureElementPassConfiguration];
        v100 = v101;
      }

      else
      {
        v101 = 0;
      }

      *(v98 + 4) = v101;
      *v99 = v100;
      _os_log_impl(&dword_1BD026000, v96, v97, "Unable to create push controller with configuration %@", v98, 0xCu);
      sub_1BD0DE53C(v99, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v99, -1, -1);
      MEMORY[0x1BFB45F20](v98, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v120 + 8))(v76, v121);
    v50 = v73;
    goto LABEL_63;
  }

  v44 = sub_1BE053704();
  if (v44 | v41)
  {
    goto LABEL_25;
  }

LABEL_21:

  v45 = v122;
  sub_1BE04D0E4();
  v46 = sub_1BE04D204();
  v47 = sub_1BE052C54();
  if (!os_log_type_enabled(v46, v47))
  {

    (*(v120 + 8))(v45, v121);
    v50 = v23;
LABEL_63:
    sub_1BD0DE53C(v50, &qword_1EBD56DF8);
    return 2;
  }

  v48 = 2;
  v49 = swift_slowAlloc();
  *v49 = 0;
  _os_log_impl(&dword_1BD026000, v46, v47, "Unable to find pushable configuration or pushable credentials", v49, 2u);
  MEMORY[0x1BFB45F20](v49, -1, -1);

  (*(v120 + 8))(v45, v121);
  sub_1BD0DE53C(v23, &qword_1EBD56DF8);
  return v48;
}

uint64_t sub_1BD898D30()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD898D6C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD898DBC(void *a1)
{
  v2 = v1;
  v32 = sub_1BE04C384();
  v4 = *(v32 - 8);
  v6 = MEMORY[0x1EEE9AC00](v32, v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration);
  v33 = a1;
  v10 = [a1 metadataProviders];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56E10);
  v11 = sub_1BE052744();

  if (v11 >> 62)
  {
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v13 = v11;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1BD531FF4(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        break;
      }

      v27 = v9;
      v28 = v2;
      v9 = 0;
      v2 = 0;
      v11 = v35;
      v14 = v13;
      v29 = v13 & 0xFFFFFFFFFFFFFF8;
      v30 = v4 + 32;
      v31 = v13 & 0xC000000000000001;
      v15 = v13;
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v31)
        {
          v17 = MEMORY[0x1BFB40900](v9, v14);
        }

        else
        {
          if (v9 >= *(v29 + 16))
          {
            goto LABEL_15;
          }

          v17 = *(v14 + 8 * v9 + 32);
          swift_unknownObjectRetain();
        }

        v34 = v17;
        sub_1BD8990CC(v33, v8);
        swift_unknownObjectRelease();
        v35 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1BD531FF4(v18 > 1, v19 + 1, 1);
          v11 = v35;
        }

        *(v11 + 16) = v19 + 1;
        (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v8, v32);
        ++v9;
        v14 = v15;
        if (v16 == v12)
        {

          v9 = v27;
          v2 = v28;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v12 = sub_1BE053704();
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

LABEL_18:
    sub_1BE04C3B4();
    v20 = OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator;
    v21 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
    if (v21)
    {
      v22 = v21;
      sub_1BD81412C(v9);

      v23 = *(v2 + v20);
      if (v23)
      {
        v24 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
        v25 = v23;
        v26 = [v24 init];
        sub_1BD8145A8(v26);
      }
    }
  }
}

uint64_t sub_1BD8990CC@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 shareablePassConfiguration];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BE0B7020;
      *(v14 + 32) = v13;
      v15 = objc_allocWithZone(MEMORY[0x1E69B8520]);
      sub_1BD0E5E8C(0, &unk_1EBD56E20);
      swift_unknownObjectRetain_n();
      v16 = sub_1BE052724();

      v17 = [v15 initWithPrimaryAction:0 credentialsMetadata:v16];

      [v17 updateAllowManagedAppleIDWithConfiguration_];
      swift_unknownObjectRelease();
      *a2 = v17;
      goto LABEL_11;
    }
  }

  v18 = [a1 identityDocumentConfiguration];
  if (v18 && (v18, objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0))
  {
    *a2 = [objc_allocWithZone(MEMORY[0x1E69B8500]) initWithMetadata_];
  }

  else
  {
    sub_1BE04D0E4();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "ProvisioningPushProvAddPassFlowItem is unable to determine the proper PKPushablePassConfigurationProvider adopter. Defaulting to pass through unmapped configuration, which may have undetermined behavioral consequences.", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    *a2 = a1;
    swift_unknownObjectRetain();
  }

LABEL_11:
  v23 = *MEMORY[0x1E69B82B0];
  v24 = sub_1BE04C384();
  return (*(*(v24 - 8) + 104))(a2, v23, v24);
}

void sub_1BD89945C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04C384();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v33 - v11);
  v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration);
  if (a1 >> 62)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BD531FF4(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v34 = v13;
    v35 = v1;
    v15 = v40;
    v16 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      v39 = *MEMORY[0x1E69B82A8];
      v38 = v5 + 32;
      do
      {
        v18 = v16;
        *v12 = MEMORY[0x1BFB40900](v17);
        (*(v5 + 104))(v12, v39, v4);
        v40 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1BD531FF4(v19 > 1, v20 + 1, 1);
          v15 = v40;
        }

        ++v17;
        *(v15 + 16) = v20 + 1;
        (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v12, v4);
        v16 = v18;
      }

      while (v14 != v17);
    }

    else
    {
      v21 = (a1 + 32);
      v39 = *MEMORY[0x1E69B82A8];
      v37 = *(v5 + 104);
      v38 = v5 + 104;
      v36 = v5 + 32;
      do
      {
        v22 = *v21;
        *v8 = *v21;
        v37(v8, v39, v4);
        v40 = v15;
        v23 = *(v15 + 16);
        v24 = *(v15 + 24);
        v25 = v22;
        if (v23 >= v24 >> 1)
        {
          sub_1BD531FF4(v24 > 1, v23 + 1, 1);
          v15 = v40;
        }

        *(v15 + 16) = v23 + 1;
        (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v8, v4);
        ++v21;
        --v14;
      }

      while (v14);
    }

    v13 = v34;
    v2 = v35;
  }

  sub_1BE04C3B4();
  v26 = OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator;
  v27 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
  if (v27)
  {
    v28 = v27;
    sub_1BD81412C(v13);

    v29 = *(v2 + v26);
    if (v29)
    {
      v30 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
      v31 = v29;
      v32 = [v30 init];
      sub_1BD8145A8(v32);
    }
  }
}

void sub_1BD8999C8()
{
  v0 = sub_1BE04B944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v51 - v7;
  v9 = sub_1BE04C384();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BE04C3A4();
  if (*(v14 + 16))
  {
    (*(v10 + 16))(v13, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69B8288])
    {
      (*(v10 + 8))(v13, v9);
      return;
    }

    (*(v10 + 96))(v13, v9);
    v15 = *v13;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {

      return;
    }

    v52 = v16;
    v53 = v1;
    v17 = sub_1BE04A844();
    v18 = [v17 code];
    v19 = [v17 domain];
    v20 = sub_1BE052434();
    v22 = v21;

    v51[1] = *MEMORY[0x1E69B9E70];
    if (v20 == sub_1BE052434() && v22 == v23)
    {

      v24 = v53;
    }

    else
    {
      v25 = sub_1BE053B84();

      v24 = v53;
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v18 <= 6 && ((1 << v18) & 0x52) != 0)
    {
LABEL_15:
      sub_1BE04BB94();
      v26 = sub_1BE04B934();
      (*(v24 + 8))(v8, v0);
      if ([v26 respondsToSelector_])
      {
        v27 = v15;
        [v26 relinquishInvitation:v52 completion:0];
LABEL_34:
        swift_unknownObjectRelease();

        return;
      }

LABEL_35:

      swift_unknownObjectRelease();
      return;
    }

LABEL_17:
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = [v28 underlyingError];
      if (v29)
      {
        v55 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        sub_1BD0E5E8C(0, &qword_1EBD45E80);
        if (swift_dynamicCast())
        {
          v30 = v54;
          v51[0] = [v30 code];
          v31 = [v30 domain];
          v32 = sub_1BE052434();
          v34 = v33;

          if (v32 == sub_1BE052434() && v34 == v35)
          {

            v24 = v53;
            v36 = v51[0];
          }

          else
          {
            v37 = sub_1BE053B84();

            v24 = v53;
            v36 = v51[0];
            if ((v37 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          if (v36 <= 6 && ((1 << v36) & 0x52) != 0)
          {
            goto LABEL_15;
          }
        }
      }
    }

LABEL_26:
    v38 = [v17 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v39 = sub_1BE052744();

    if (!*(v39 + 16))
    {

      goto LABEL_32;
    }

    v40 = *(v39 + 32);
    v41 = v40;

    v55 = v40;
    sub_1BD0E5E8C(0, &qword_1EBD45E80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

    v42 = v54;
    v51[0] = [v42 code];
    v43 = [v42 domain];
    v44 = sub_1BE052434();
    v46 = v45;

    if (v44 == sub_1BE052434() && v46 == v47)
    {

      v24 = v53;
      v48 = v51[0];
    }

    else
    {
      v50 = sub_1BE053B84();

      v24 = v53;
      v48 = v51[0];
      if ((v50 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (v48 <= 6 && ((1 << v48) & 0x52) != 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    sub_1BE04BB94();
    v49 = sub_1BE04B934();
    (*(v24 + 8))(v4, v0);
    if ([v49 respondsToSelector_])
    {
      v27 = v15;
      [v49 deleteInvitation:v52 completion:0];
      goto LABEL_34;
    }

    goto LABEL_35;
  }
}

id sub_1BD89A118(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  *(a3 + 64) = a2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a3 + 40);
    ObjectType = swift_getObjectType();
    v8 = a2;
    v9 = sub_1BE04BD44();
    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
    v12[0] = v9;
    v13 = 0;
    sub_1BD865A00(a1, &off_1F3BC2378, v12, ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_1BD0DE53C(v12, &unk_1EBD3F510);
  }

  else
  {

    return a2;
  }
}

id sub_1BD89A220(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator] = 0;
  swift_weakInit();
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_identifier];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000001BE13E2E0;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration] = a2;
  swift_weakAssign();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  sub_1BE048964();
  sub_1BE048964();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1BD89A318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD89A388(void *a1, char a2)
{
  if (a2)
  {
    v8 = a1;
    sub_1BD8999C8();
    v4 = v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v9[0] = v8;
      v10 = 1;
      sub_1BD865A00(v2, &off_1F3BC2378, v9, ObjectType, v5);
      swift_unknownObjectRelease();
      sub_1BD0DE53C(v9, &unk_1EBD3F510);
    }

    else
    {
    }
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1BD89A118(v2, a1, Strong);
    }
  }
}

void sub_1BD89A4B8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
  if (v2)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
    if (a1)
    {
      v3 = v2;
      v4 = sub_1BE04A844();
    }

    else
    {
      v5 = v2;
      v4 = 0;
    }

    v6 = [objc_opt_self() errorWithUnderlyingError:v4 defaultSeverity:5];

    v7 = v6;
    sub_1BD8999C8();
    v8 = v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v12[0] = v7;
      v13 = 1;
      sub_1BD865A00(v1, &off_1F3BC2378, v12, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_1BD0DE53C(v12, &unk_1EBD3F510);
    }

    else
    {
    }
  }
}

id NearbyPeerPaymentAppearancePreferenceCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void sub_1BD89A68C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView);
  if (v2 == 1)
  {
    v6 = sub_1BD89B974();
  }

  else
  {
    v6 = sub_1BD89BB38();
  }

  v7 = v6;
  [v5 setImage_];
}

uint64_t sub_1BD89A71C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BD89A760(char a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView);
  if (a1)
  {
    v5 = sub_1BD89B974();
  }

  else
  {
    v5 = sub_1BD89BB38();
  }

  v6 = v5;
  [v4 setImage_];
}

void (*sub_1BD89A7E8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BD89A870;
}

void sub_1BD89A870(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView);
    if (*(v4 + v3[4]) == 1)
    {
      v6 = sub_1BD89B974();
    }

    else
    {
      v6 = sub_1BD89BB38();
    }

    v7 = v6;
    [v5 setImage_];
  }

  free(v3);
}

char *NearbyPeerPaymentAppearancePreferenceCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v7 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v8 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled] = 0;
  if (a3)
  {
    v10 = sub_1BE052404();
  }

  else
  {
    v10 = 0;
  }

  v31.receiver = v3;
  v31.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  v11 = objc_msgSendSuper2(&v31, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView;
  v13 = *&v11[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
  v14 = v11;
  [v13 setContentMode_];
  [v14 addSubview_];
  v15 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView;
  [*&v14[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView] setContentMode_];
  [*&v14[v15] setAlpha_];
  [v14 &selRef:*&v14[v15] analyticsEventReportWithPreSelect:?];
  v16 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel;
  v17 = *&v14[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 secondaryLabelColor];
  [v19 setTextColor_];

  v21 = *&v14[v16];
  v22 = objc_opt_self();
  v23 = *MEMORY[0x1E69DDD08];
  v24 = v21;
  v25 = [v22 preferredFontForTextStyle_];
  [v24 setFont_];

  [*&v14[v16] setNumberOfLines_];
  [*&v14[v16] setAlpha_];
  [*&v14[v16] setAccessibilityIdentifier_];
  [v14 addSubview_];
  v26 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel;
  v27 = *MEMORY[0x1E69DDCF8];
  v28 = *&v14[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  v29 = [v22 preferredFontForTextStyle_];
  [v28 setFont_];

  [*&v14[v26] setNumberOfLines_];
  [*&v14[v26] setAlpha_];
  [*&v14[v26] setAccessibilityIdentifier_];
  [v14 addSubview_];
  [v14 setAccessibilityIdentifier_];

  return v14;
}

id sub_1BD89AD14()
{
  v39 = *MEMORY[0x1E69E9840];
  v38.receiver = v0;
  v38.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  objc_msgSendSuper2(&v38, sel_layoutSubviews);
  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v40, &slice, &remainder, 16.0, CGRectMinXEdge);
  v41 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v41, &slice, &remainder, 16.0, CGRectMaxXEdge);
  v42 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v42, &slice, &remainder, 8.0, CGRectMinYEdge);
  v43 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v43, &slice, &remainder, 8.0, CGRectMaxYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  v5 = *&v0[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
  [v5 sizeThatFits_];
  v7 = v6;
  PKSizeAlignedInRect();
  [v5 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  CGRectDivide(v44, &slice, &remainder, v7 + 16.0, CGRectMinXEdge);
  v8 = remainder.origin.x;
  v9 = remainder.origin.y;
  v10 = remainder.size.width;
  v11 = remainder.size.height;
  v12 = [v0 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  sub_1BE052E84();
  PKSizeAlignedInRect();
  [*&v0[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView] setFrame_];
  v14 = *&v0[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  [v14 sizeThatFits_];
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  [v17 sizeThatFits_];
  v19 = v16 + v18;
  v45.origin.x = v8;
  v45.origin.y = v9;
  v45.size.width = v10;
  v45.size.height = v11;
  v20 = CGRectGetHeight(v45);
  memset(&slice, 0, sizeof(slice));
  v21 = (v20 - v19) * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  v46.origin.x = v8;
  v46.origin.y = v9;
  v46.size.width = v10;
  v46.size.height = v11;
  CGRectDivide(v46, &slice, &remainder, v21, CGRectMinYEdge);
  v47 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v47, &slice, &remainder, v21, CGRectMaxYEdge);
  v22 = remainder.origin.x;
  v23 = remainder.origin.y;
  v24 = remainder.size.width;
  v25 = remainder.size.height;
  PKSizeAlignedInRect();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [v14 setFrame_];
  v48.origin.x = v27;
  v48.origin.y = v29;
  v48.size.width = v31;
  v48.size.height = v33;
  v34 = CGRectGetHeight(v48);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v49.origin.x = v22;
  v49.origin.y = v23;
  v49.size.width = v24;
  v49.size.height = v25;
  CGRectDivide(v49, &slice, &remainder, v34, CGRectMinYEdge);
  PKSizeAlignedInRect();
  return [v17 setFrame_];
}

double sub_1BD89B130(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  sub_1BE052E84();
  [*&v2[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView] sizeThatFits_];
  v8 = a1 + -48.0 - v7;
  [*&v2[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel] sizeThatFits_];
  [*&v2[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel] sizeThatFits_];
  return a1;
}

id sub_1BD89B2C8(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for NearbyPeerPaymentAppearanceSetting();
  v13 = *(a1 + *(v12 + 24));
  v14 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  v1[v14] = v13;
  v15 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
  v41 = v3;
  if (v13 == 1)
  {
    v16 = sub_1BD89B974();
  }

  else
  {
    v16 = sub_1BD89BB38();
  }

  v17 = v16;
  [v15 setImage_];

  v18 = a1 + *(v12 + 20);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  if (!*(v18 + 16))
  {
    if (v19 >> 60 != 15)
    {
      v28 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView];
      v29 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1BD5096E8(v20, v19, 0);
      sub_1BD5096E8(v20, v19, 0);
      sub_1BD030394(v20, v19);
      v30 = sub_1BE04AAB4();
      v31 = [v29 initWithData_];

      sub_1BD89BD18(v20, v19, 0);
      [v28 setImage_];

      sub_1BD89BD18(v20, v19, 0);
    }

    [*&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView] setAlpha_];
    sub_1BD89BD18(v20, v19, 0);
    goto LABEL_14;
  }

  v40 = v15;
  if (v21 != 1)
  {
    v32 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
    sub_1BE048C84();
    v38 = v32;
    [v32 setAlpha_];
    v39 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
    [v39 setAlpha_];
    v33 = v41;
    (*(v4 + 104))(v7, *MEMORY[0x1E69B8050], v41);
    result = PKPassKitBundle();
    if (result)
    {
      v34 = result;
      sub_1BE04B6F4();

      (*(v4 + 8))(v7, v33);
      v35 = sub_1BE052404();

      [v38 setText_];

      v27 = sub_1BE052404();
      sub_1BD89BD18(v20, v19, 2);
      [v39 setText_];
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v22 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  sub_1BE048C84();
  v38 = v22;
  [v22 setAlpha_];
  v39 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  [v39 setAlpha_];
  v23 = v41;
  (*(v4 + 104))(v11, *MEMORY[0x1E69B8050], v41);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = result;
  sub_1BE04B6F4();

  (*(v4 + 8))(v11, v23);
  v26 = sub_1BE052404();

  [v38 setText_];

  v27 = sub_1BE052404();
  sub_1BD89BD18(v20, v19, 1);
  [v39 setText_];
LABEL_13:

  v15 = v40;
LABEL_14:
  v36 = 0.5;
  if (v21 != 1)
  {
    v36 = 1.0;
  }

  [v15 setAlpha_];
  return [v1 setUserInteractionEnabled_];
}

id sub_1BD89B7B8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView];
  [v1 setImage_];
  [v1 setAlpha_];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  [v2 setText_];
  [v2 setAlpha_];
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  [v3 setText_];
  return [v3 setAlpha_];
}

id NearbyPeerPaymentAppearancePreferenceCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD89B974()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  v4 = objc_opt_self();
  v5 = v2;
  *(v3 + 32) = [v4 systemBlueColor];
  sub_1BD1F2290();
  v6 = sub_1BE052724();

  v7 = [v1 configurationWithPaletteColors_];

  v8 = [v5 configurationByApplyingConfiguration_];
  v9 = v8;
  v10 = sub_1BE052404();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    v12 = v11;
    v11 = [v12 imageWithRenderingMode_];
  }

  return v11;
}

id sub_1BD89BB38()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  v4 = objc_opt_self();
  v5 = v2;
  *(v3 + 32) = [v4 systemBlueColor];
  sub_1BD1F2290();
  v6 = sub_1BE052724();

  v7 = [v1 configurationWithPaletteColors_];

  v8 = [v5 configurationByApplyingConfiguration_];
  v9 = v8;
  v10 = sub_1BE052404();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    v12 = v11;
    v11 = [v12 imageWithRenderingMode_];
  }

  return v11;
}

uint64_t sub_1BD89BD18(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return sub_1BD030220(result, a2);
  }

  return result;
}

void sub_1BD89BE5C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v2 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v3 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD89BF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v45 = a3;
  v43 = a2;
  v5 = type metadata accessor for PaymentShippingMethodItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 47) = swift_getKeyPath();
  v9[384] = 0;
  v10 = *(v5 + 44);
  v11 = *MEMORY[0x1E69BCA00];
  v12 = sub_1BE04C894();
  v13 = *(v12 - 8);
  (*(v13 + 104))(&v9[v10], v11, v12);
  v14 = *(a1 + 48);
  v48[2] = *(a1 + 32);
  v48[3] = v14;
  v15 = *(a1 + 80);
  v48[4] = *(a1 + 64);
  v48[5] = v15;
  v16 = *(a1 + 16);
  v48[0] = *a1;
  v48[1] = v16;
  v17 = *&v48[0];
  if (*&v48[0])
  {
    v18 = v6;
    v19 = v44;
    v20 = *(a1 + 56);
    v49[2] = *(a1 + 40);
    *v50 = v20;
    *&v50[16] = *(a1 + 72);
    v51 = *(a1 + 88);
    v21 = *(a1 + 24);
    v49[0] = *(a1 + 8);
    v49[1] = v21;
    v22 = *(a1 + 208);
    *(v9 + 12) = *(a1 + 192);
    *(v9 + 13) = v22;
    v23 = *(a1 + 176);
    *(v9 + 10) = *(a1 + 160);
    *(v9 + 11) = v23;
    v24 = *(a1 + 144);
    *(v9 + 8) = *(a1 + 128);
    *(v9 + 9) = v24;
    v25 = *(a1 + 112);
    *(v9 + 6) = *(a1 + 96);
    *(v9 + 7) = v25;
    v26 = *(a1 + 80);
    *(v9 + 4) = *(a1 + 64);
    *(v9 + 5) = v26;
    v27 = *(a1 + 48);
    *(v9 + 2) = *(a1 + 32);
    *(v9 + 3) = v27;
    v28 = *(a1 + 16);
    *v9 = *a1;
    *(v9 + 1) = v28;
    v29 = v45;
    *(v9 + 28) = v43;
    *(v9 + 29) = v29;
    *(v9 + 30) = v17;
    v30 = *(a1 + 40);
    v31 = *(a1 + 72);
    *(v9 + 296) = *(a1 + 56);
    *(v9 + 312) = v31;
    *(v9 + 41) = *(a1 + 88);
    *(v9 + 248) = *(a1 + 8);
    *(v9 + 264) = *(a1 + 24);
    *(v9 + 280) = v30;
    v32 = *&v49[0];
    sub_1BD0DE19C(v48, v47, &qword_1EBD45FA8);
    sub_1BD40F770(v49, v47);
    v33 = [v32 label];
    v34 = sub_1BE052434();
    v36 = v35;

    v47[0] = *&v50[8];
    sub_1BD0DE19C(v47, &v46, &qword_1EBD3A5C8);
    v37 = [v32 dateComponentsRange];
    sub_1BD40F7CC(v49);
    if (!v37)
    {
      goto LABEL_8;
    }

    v38 = *(&v47[0] + 1);
    if (!*(&v47[0] + 1))
    {
      goto LABEL_8;
    }

    v39 = HIBYTE(*(&v47[0] + 1)) & 0xFLL;
    if ((*(&v47[0] + 1) & 0x2000000000000000) == 0)
    {
      v39 = *&v47[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      *(v9 + 42) = *&v47[0];
      *(v9 + 43) = v38;
      v40 = 1;
      *(v9 + 44) = v34;
      *(v9 + 45) = v36;
    }

    else
    {
LABEL_8:
      v40 = 0;
      *(v9 + 42) = v34;
      *(v9 + 43) = v36;
      *(v9 + 22) = v47[0];
    }

    v9[368] = v40;
    sub_1BD89C338(v9, v19);
    (*(v18 + 56))(v19, 0, 1, v5);
    return sub_1BD89C39C(v9);
  }

  else
  {

    sub_1BD2ED540(a1);

    (*(v13 + 8))(&v9[v10], v12);
    return (*(v6 + 56))(v44, 1, 1, v5);
  }
}

uint64_t type metadata accessor for PaymentShippingMethodItem()
{
  result = qword_1EBD56E58;
  if (!qword_1EBD56E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD89C338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentShippingMethodItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD89C39C(uint64_t a1)
{
  v2 = type metadata accessor for PaymentShippingMethodItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD89C420()
{
  sub_1BD1030A8();
  if (v0 <= 0x3F)
  {
    sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1BE04C894();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD89C558@<X0>(uint64_t a1@<X8>)
{
  v48[1] = a1;
  v2 = sub_1BE04C894();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56E88);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v48 - v9;
  v49 = v1;
  v11 = type metadata accessor for PaymentShippingMethodItem();
  (*(v3 + 16))(v6, v1 + *(v11 + 44), v2);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56EB8);
  sub_1BD89E66C(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
  sub_1BD89E6B4();
  sub_1BE04C6B4();
  v13 = v1[11];
  v14 = v1[9];
  v60 = v1[10];
  v12 = v60;
  v61 = v13;
  v15 = v1[11];
  v17 = v1[13];
  v62 = v1[12];
  v16 = v62;
  v63 = v17;
  v19 = v1[7];
  v20 = v1[5];
  v56 = v1[6];
  v18 = v56;
  v57 = v19;
  v21 = v1[7];
  v23 = v1[9];
  v58 = v1[8];
  v22 = v58;
  v59 = v23;
  v25 = v1[3];
  v26 = v1[1];
  v52 = v1[2];
  v24 = v52;
  v53 = v25;
  v27 = v1[3];
  v29 = v1[5];
  v54 = v1[4];
  v28 = v54;
  v55 = v29;
  v30 = v1[1];
  v51[0] = *v1;
  v31 = v51[0];
  v51[1] = v30;
  *v64 = 0;
  v32 = v1[4];
  *&v64[88] = v1[5];
  *&v64[72] = v32;
  v33 = v1[2];
  *&v64[56] = v1[3];
  *&v64[40] = v33;
  v34 = v1[8];
  *&v64[152] = v1[9];
  *&v64[136] = v34;
  v35 = v1[6];
  *&v64[120] = v1[7];
  *&v64[104] = v35;
  v36 = v1[12];
  *&v64[216] = v1[13];
  *&v64[200] = v36;
  v37 = v1[10];
  *&v64[184] = v1[11];
  *&v64[168] = v37;
  v38 = *v1;
  *&v64[24] = v1[1];
  *&v64[8] = v38;
  v39 = &v10[*(v7 + 36)];
  v40 = *&v64[208];
  *(v39 + 12) = *&v64[192];
  *(v39 + 13) = v40;
  v41 = *&v64[144];
  *(v39 + 8) = *&v64[128];
  *(v39 + 9) = v41;
  v42 = *&v64[176];
  *(v39 + 10) = *&v64[160];
  *(v39 + 11) = v42;
  v43 = *&v64[80];
  *(v39 + 4) = *&v64[64];
  *(v39 + 5) = v43;
  v44 = *&v64[112];
  *(v39 + 6) = *&v64[96];
  *(v39 + 7) = v44;
  v45 = *&v64[16];
  *v39 = *v64;
  *(v39 + 1) = v45;
  v46 = *&v64[48];
  *(v39 + 2) = *&v64[32];
  *(v39 + 3) = v46;
  v76 = v12;
  v77 = v15;
  v78 = v16;
  v79 = v1[13];
  v72 = v18;
  v73 = v21;
  v74 = v22;
  v75 = v14;
  v68 = v24;
  v69 = v27;
  v70 = v28;
  v71 = v20;
  v66 = v31;
  *(v39 + 28) = *&v64[224];
  v65 = 0;
  v67 = v26;
  sub_1BD5D7E20(v51, v50);
  sub_1BD0DE19C(v64, v50, &qword_1EBD56EA8);
  sub_1BD0DE53C(&v65, &qword_1EBD56EA8);
  sub_1BE052434();
  sub_1BD89E580();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v10, &qword_1EBD56E88);
}

uint64_t sub_1BD89C920()
{
  sub_1BE0512B4();

  return sub_1BE04C774();
}

uint64_t sub_1BD89C974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD89C9CC(a1, a2);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56EB8);
  v5 = a2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_1BD89C9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F00);
  v25 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v3);
  v5 = &v25 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F08);
  MEMORY[0x1EEE9AC00](v26, v6);
  v8 = &v25 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56EF0);
  MEMORY[0x1EEE9AC00](v27, v9);
  v11 = &v25 - v10;
  v12 = sub_1BE04F3D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 376);
  if (*(a1 + 384) == 1)
  {
    if ((v17 & 1) == 0)
    {
LABEL_3:
      v18 = sub_1BD89DBF8();
      MEMORY[0x1EEE9AC00](v18, v19);
      *(&v25 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E670);
      sub_1BD0DE4F4(&qword_1EBD56F10, &qword_1EBD3E670);
      sub_1BE04C634();
      v20 = v25;
      v21 = v29;
      (*(v25 + 16))(v8, v5, v29);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD56EE8, &qword_1EBD56EF0);
      sub_1BD0DE4F4(&qword_1EBD56EF8, &qword_1EBD56F00);
      sub_1BE04F9A4();
      return (*(v20 + 8))(v5, v21);
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v23 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v17, 0);
    (*(v13 + 8))(v16, v12);
    if (v30 != 1)
    {
      goto LABEL_3;
    }
  }

  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F18);
  sub_1BD89CEC8(&v11[*(v24 + 44)]);
  sub_1BD0DE19C(v11, v8, &qword_1EBD56EF0);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD56EE8, &qword_1EBD56EF0);
  sub_1BD0DE4F4(&qword_1EBD56EF8, &qword_1EBD56F00);
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v11, &qword_1EBD56EF0);
}

uint64_t sub_1BD89CEC8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v36 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v36 - v30;
  sub_1BD89D2C8();
  sub_1BD89D438();
  v38 = v15;
  sub_1BD89D5F4(v15);
  sub_1BD89D8DC(v7);
  v39 = v27;
  sub_1BD0DE19C(v31, v27, &qword_1EBD452C0);
  v37 = v19;
  sub_1BD0DE19C(v23, v19, &qword_1EBD38A98);
  v36 = v11;
  sub_1BD0DE19C(v15, v11, &qword_1EBD3E660);
  v32 = v40;
  sub_1BD0DE19C(v7, v40, &unk_1EBD5BB60);
  v33 = v41;
  sub_1BD0DE19C(v27, v41, &qword_1EBD452C0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F20);
  sub_1BD0DE19C(v19, v33 + v34[12], &qword_1EBD38A98);
  sub_1BD0DE19C(v11, v33 + v34[16], &qword_1EBD3E660);
  sub_1BD0DE19C(v32, v33 + v34[20], &unk_1EBD5BB60);
  sub_1BD0DE53C(v7, &unk_1EBD5BB60);
  sub_1BD0DE53C(v38, &qword_1EBD3E660);
  sub_1BD0DE53C(v23, &qword_1EBD38A98);
  sub_1BD0DE53C(v31, &qword_1EBD452C0);
  sub_1BD0DE53C(v32, &unk_1EBD5BB60);
  sub_1BD0DE53C(v36, &qword_1EBD3E660);
  sub_1BD0DE53C(v37, &qword_1EBD38A98);
  return sub_1BD0DE53C(v39, &qword_1EBD452C0);
}

uint64_t sub_1BD89D2C8()
{
  sub_1BD89DBF8();
  sub_1BD0DDEBC();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE0502C4();
  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE051234();
  v10 = sub_1BE050564();
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v5, v7, v9 & 1);

  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v10, v12, v14 & 1);
}

uint64_t sub_1BD89D438()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE050324();
  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE051224();
  v10 = sub_1BE050564();
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v5, v7, v9 & 1);

  swift_getKeyPath();
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
  sub_1BD0EF0FC();
  sub_1BE050DE4();

  sub_1BD0DDF10(v10, v12, v14 & 1);
}

uint64_t sub_1BD89D5F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v3, v4);
  v9 = &v33 - v8;
  v10 = *(v1 + 360);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(v1 + 352) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v37 = *(v1 + 352);
    v38 = v10;
    v35 = v6;
    v36 = v5;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v12 = sub_1BE0506C4();
    v14 = v13;
    v16 = v15;
    sub_1BE050324();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v34 = a1;
    v21 = v20;

    sub_1BD0DDF10(v12, v14, v16 & 1);

    sub_1BE051224();
    v22 = sub_1BE050564();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    v37 = v22;
    v38 = v24;
    v39 = v26 & 1;
    v40 = v28;
    v41 = KeyPath;
    v42 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    sub_1BE050DE4();

    sub_1BD0DDF10(v22, v24, v26 & 1);

    v30 = v34;
    sub_1BD0DE204(v9, v34, &qword_1EBD38A98);
    return (*(v35 + 56))(v30, 0, 1, v36);
  }

  else
  {
LABEL_6:
    v32 = *(v6 + 56);

    return v32(a1, 1, 1, v7);
  }
}

uint64_t sub_1BD89D8DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v34 - v5;
  v7 = *(v1 + 320);
  v8 = *(v1 + 328);
  if (*(v1 + 280) & 1) == 0 && (*(v1 + 272) & 0xFFFFFFFFFFFFFFFELL) == 2 && (v9 = *(v1 + 248), sub_1BD22F42C(), v10 = [v9 amount], v11 = objc_msgSend(objc_opt_self(), sel_zero), LOBYTE(v9) = sub_1BE053074(), v10, v11, (v9))
  {
    v12 = *(v37 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    v38 = v7;
    v39 = v8;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v14 = sub_1BE0506C4();
    v16 = v15;
    v18 = v17;
    sub_1BE050324();
    v19 = sub_1BE0505F4();
    v35 = v6;
    v36 = v3;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_1BD0DDF10(v14, v16, v18 & 1);

    sub_1BE051224();
    v25 = sub_1BE050564();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    sub_1BD0DDF10(v20, v22, v24 & 1);

    v38 = v25;
    v39 = v27;
    v32 = v29 & 1;
    v40 = v29 & 1;
    v41 = v31;
    sub_1BE052434();
    v33 = v35;
    sub_1BE050DE4();

    sub_1BD0DDF10(v25, v27, v32);

    sub_1BD0DE204(v33, a1, &qword_1EBD452C0);
    return (*(v37 + 56))(a1, 0, 1, v36);
  }
}

id sub_1BD89DBF8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v20 - v12;
  if ((*(v0 + 280) & 1) == 0 && (*(v0 + 272) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    (*(v2 + 104))(&v20 - v12, *MEMORY[0x1E69B8068], v1, v13.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
LABEL_10:

      (*(v2 + 8))(v14, v1);
      return v17;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = *MEMORY[0x1E69B8068];
  v19 = *(v2 + 104);
  if (*(v0 + 368) == 1)
  {
    v19(v9, v18, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v14 = v9;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v19(v5, v18, v1, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v14 = v5;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1BD89DE80@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F4E4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E678);
  return sub_1BD89DED8(a1 + *(v2 + 44));
}

uint64_t sub_1BD89DED8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E688);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F7C4();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E690);
  sub_1BD89E108(&v17[*(v18 + 44)]);
  sub_1BD89D8DC(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD3E688);
  sub_1BD0DE19C(v9, v5, &unk_1EBD5BB60);
  sub_1BD0DE19C(v13, a1, &qword_1EBD3E688);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E698);
  v20 = a1 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BD0DE19C(v5, a1 + *(v19 + 64), &unk_1EBD5BB60);
  sub_1BD0DE53C(v9, &unk_1EBD5BB60);
  sub_1BD0DE53C(v17, &qword_1EBD3E688);
  sub_1BD0DE53C(v5, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v13, &qword_1EBD3E688);
}

uint64_t sub_1BD89E108@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BD89D438();
  sub_1BD89D5F4(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD38A98);
  sub_1BD0DE19C(v9, v5, &qword_1EBD3E660);
  sub_1BD0DE19C(v13, a1, &qword_1EBD38A98);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E6A0);
  sub_1BD0DE19C(v5, a1 + *(v18 + 48), &qword_1EBD3E660);
  sub_1BD0DE53C(v9, &qword_1EBD3E660);
  sub_1BD0DE53C(v17, &qword_1EBD38A98);
  sub_1BD0DE53C(v5, &qword_1EBD3E660);
  return sub_1BD0DE53C(v13, &qword_1EBD38A98);
}

uint64_t sub_1BD89E2F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56E68);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v7[-v4];
  v8 = v0;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56E70);
  sub_1BD89E4C4();
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD56EB0, &qword_1EBD56E68);
  sub_1BE050DE4();

  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_1BD89E4C4()
{
  result = qword_1EBD56E78;
  if (!qword_1EBD56E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56E70);
    sub_1BD89E580();
    sub_1BD89E66C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56E78);
  }

  return result;
}

unint64_t sub_1BD89E580()
{
  result = qword_1EBD56E80;
  if (!qword_1EBD56E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56E88);
    sub_1BD0DE4F4(&qword_1EBD56E90, &qword_1EBD56E98);
    sub_1BD0DE4F4(&qword_1EBD56EA0, &qword_1EBD56EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56E80);
  }

  return result;
}

uint64_t sub_1BD89E66C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD89E6B4()
{
  result = qword_1EBD56EC0;
  if (!qword_1EBD56EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56EB8);
    sub_1BD89E76C();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56EC0);
  }

  return result;
}

unint64_t sub_1BD89E76C()
{
  result = qword_1EBD56EC8;
  if (!qword_1EBD56EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56ED0);
    sub_1BD89E7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56EC8);
  }

  return result;
}

unint64_t sub_1BD89E7F0()
{
  result = qword_1EBD56ED8;
  if (!qword_1EBD56ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56EE0);
    sub_1BD0DE4F4(&qword_1EBD56EE8, &qword_1EBD56EF0);
    sub_1BD0DE4F4(&qword_1EBD56EF8, &qword_1EBD56F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56ED8);
  }

  return result;
}

unint64_t sub_1BD89E8DC()
{
  result = qword_1EBD56F28;
  if (!qword_1EBD56F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56F30);
    sub_1BD0DE4F4(&qword_1EBD56EB0, &qword_1EBD56E68);
    sub_1BD89E66C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56F28);
  }

  return result;
}

char *sub_1BD89E9F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  v7 = OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentButtonsView(0)) init];
  *&v3[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_context] = a1;
  objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearAsView());
  v8 = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView] = sub_1BD373C08(a1, v8);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for NearbyPeerPaymentFooterView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = v9;
  if (a1 == 1)
  {
    [v9 addSubview_];
  }

  else
  {
    v11 = v9;
  }

  [v10 addSubview_];
  [v10 addSubview_];

  return v10;
}

void sub_1BD89EBF8()
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = v0;
  v20.super_class = type metadata accessor for NearbyPeerPaymentFooterView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView];
  [v9 sizeThatFits_];
  v11 = v10;
  PKSizeAlignedInRect();
  [v9 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v18, 0, sizeof(v18));
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  CGRectDivide(v22, &slice, &v18, v11 + 24.0, CGRectMaxYEdge);
  v23 = v18;
  memset(&slice, 0, sizeof(slice));
  memset(&v18, 0, sizeof(v18));
  CGRectDivide(v23, &slice, &v18, 24.0, CGRectMinXEdge);
  v24 = v18;
  memset(&slice, 0, sizeof(slice));
  memset(&v18, 0, sizeof(v18));
  CGRectDivide(v24, &slice, &v18, 24.0, CGRectMaxXEdge);
  origin = v18.origin;
  size = v18.size;
  v14 = *&v0[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView];
  [v14 sizeThatFits_];
  v16 = v15;
  PKSizeAlignedInRect();
  [v14 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v18, 0, sizeof(v18));
  v25.origin = origin;
  v25.size = size;
  CGRectDivide(v25, &slice, &v18, v16 + 24.0, CGRectMaxYEdge);
  if (*&v0[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_context] == 1)
  {
    v17 = *&v0[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView];
    [v17 sizeThatFits_];
    PKSizeAlignedInRect();
    [v17 setFrame_];
  }
}

double sub_1BD89EECC(double a1)
{
  [*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView) sizeThatFits_];
  [*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView) sizeThatFits_];
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_context) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView) sizeThatFits_];
  }

  return a1;
}

id NearbyPeerPaymentFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD89F14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_identifier];
  *v8 = 0xD000000000000019;
  *(v8 + 1) = 0x80000001BE13E590;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_style] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD89F2F0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v81 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v76 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v72 = v71 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v77 = v71 - v13;
  v14 = sub_1BE04D214();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04B944();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[1] = *&v2[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_context];
  sub_1BE04BB94();
  v22 = sub_1BE04B8E4();
  v71[0] = *(v18 + 8);
  (v71[0])(v21, v17);
  v79 = v22;
  v23 = [v22 context];
  v80 = v3;
  v24 = *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product];
  v25 = [v24 regionIdentifier];
  if (v25)
  {
    sub_1BE052434();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v23;
  v29 = [v28 regionForIdentifier_];
  v30 = v28;

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a1;
  v78 = a1;
  v33 = v81;
  v32[4] = v81;
  if (v27)
  {
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    if (!v29)
    {
      sub_1BE048964();
      v38 = v73;
      sub_1BE04D0E4();
      v39 = sub_1BE04D204();
      v40 = sub_1BE052C54();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1BD026000, v39, v40, "Selected a feature product for a region we are not yet registered in, register now", v41, 2u);
        MEMORY[0x1BFB45F20](v41, -1, -1);
      }

      (*(v74 + 8))(v38, v75);
      if (v30)
      {
        v42 = [v30 configuration];
        if (!v42)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v43 = v42;
        sub_1BE04BB94();
        v44 = sub_1BE04B934();
        (v71[0])(v21, v17);
        v45 = [v44 deviceRegion];
        swift_unknownObjectRelease();
        v46 = [v43 brokerURLForRegion_];

        if (v46)
        {
          v47 = v72;
          sub_1BE04A9F4();

          v48 = 0;
          v49 = v81;
          v50 = v76;
          v51 = v77;
        }

        else
        {
          v48 = 1;
          v49 = v81;
          v50 = v76;
          v51 = v77;
          v47 = v72;
        }

        v58 = sub_1BE04AA64();
        (*(*(v58 - 8) + 56))(v47, v48, 1, v58);
        sub_1BD226B4C(v47, v51);
      }

      else
      {
        v57 = sub_1BE04AA64();
        v51 = v77;
        (*(*(v57 - 8) + 56))(v77, 1, 1, v57);
        v49 = v81;
        v50 = v76;
      }

      sub_1BD38F438(v51, v50);
      v59 = sub_1BE04AA64();
      v60 = *(v59 - 8);
      v61 = 0;
      if ((*(v60 + 48))(v50, 1, v59) != 1)
      {
        v61 = sub_1BE04A9C4();
        (*(v60 + 8))(v50, v59);
      }

      v62 = swift_allocObject();
      v63 = v80;
      v64 = v78;
      v62[2] = v80;
      v62[3] = v64;
      v62[4] = v49;
      v62[5] = sub_1BD8A1268;
      v62[6] = v32;
      v86 = sub_1BD8A1274;
      v87 = v62;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1BD8A07F8;
      v85 = &block_descriptor_200;
      v65 = _Block_copy(&aBlock);
      sub_1BE048964();
      sub_1BE048964();
      v66 = v63;

      v67 = v79;
      [v79 registerDeviceAtBrokerURL:v61 consistencyCheckResults:0 completion:v65];

      _Block_release(v65);

      sub_1BD0DE53C(v51, &unk_1EBD3CF70);
      return;
    }

    sub_1BE048964();
    v33 = v81;
    sub_1BE048964();
  }

  v34 = [v24 configuration];
  if (!v34)
  {

    __break(1u);
    goto LABEL_35;
  }

  v35 = v34;
  v36 = [v34 featureIdentifier];

  if (v36 > 5)
  {
LABEL_36:

    sub_1BE053994();
    __break(1u);
    return;
  }

  if (((1 << v36) & 0x33) != 0)
  {
LABEL_11:
    sub_1BD89FCDC(1, v31, v78, v33);

LABEL_12:

    return;
  }

  if (v36 != 2)
  {

    v78(1);

    goto LABEL_12;
  }

  v37 = [v24 augmentedProduct];
  if (v37)
  {

    goto LABEL_11;
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v53 = [objc_allocWithZone(MEMORY[0x1E69B8590]) init];
  v54 = [v53 experimentDetails];
  if (v54)
  {
    v55 = v54;
    sub_1BE052244();

    v56 = sub_1BE052224();
  }

  else
  {
    v56 = 0;
  }

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_1BD8A1268;
  v69[4] = v32;
  v86 = sub_1BD8A1284;
  v87 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1BD20815C;
  v85 = &block_descriptor_16_7;
  v70 = _Block_copy(&aBlock);
  sub_1BE048964();

  [v52 augmentedProductForInstallmentConfiguration:0 experimentDetails:v56 withCompletion:v70];

  _Block_release(v70);
}

void sub_1BD89FCDC(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BD89FE70();
    v10 = v9;
    v11 = *&v8[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController];
    *&v8[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController] = v9;
    v12 = v9;

    if (v10 && (v17[6] = &unk_1F3D131A0, (v13 = swift_dynamicCastObjCProtocolConditional()) != 0))
    {
      v14 = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = a3;
      *(v15 + 24) = a4;
      *(v15 + 32) = a1 & 1;
      v17[4] = sub_1BD8A12AC;
      v17[5] = v15;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_1BD3F08C0;
      v17[3] = &block_descriptor_41_1;
      v16 = _Block_copy(v17);
      sub_1BE048964();

      [v14 preflightWithCompletion_];

      _Block_release(v16);
    }

    else
    {
      a3(a1 & 1);
    }
  }
}

void sub_1BD89FE70()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);
  v8 = [v7 configuration];
  if (!v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  v10 = [v8 type];

  v11 = [v7 configuration];
  v12 = v11;
  if (v10 != 7)
  {
    if (v11)
    {
      v14 = [v11 state];

      if (v14 >= 3)
      {
        if ((v14 - 3) <= 1)
        {
          sub_1BD8A0E9C();
          return;
        }

        goto LABEL_22;
      }

      return;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = [v11 featureIdentifier];

  if (v13 <= 2)
  {
    if (v13 < 3)
    {
LABEL_6:
      sub_1BD8A0C3C();
      return;
    }

    goto LABEL_22;
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      sub_1BE04D0E4();
      v15 = sub_1BE04D204();
      v16 = sub_1BE052C54();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1BD026000, v15, v16, "Apple balance should have been handled earlier", v17, 2u);
        MEMORY[0x1BFB45F20](v17, -1, -1);
      }

      (*(v2 + 8))(v6, v1);
      return;
    }

    if (v13 == 5)
    {
      goto LABEL_6;
    }

LABEL_22:
    sub_1BE053994();
    __break(1u);
  }
}

uint64_t sub_1BD8A00F4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v12 = sub_1BE051F54();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v16 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v30 = sub_1BE052D54();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v21 = v29;
  v20[6] = v28;
  v20[7] = v21;
  aBlock[4] = sub_1BD8A129C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_29_7;
  v22 = _Block_copy(aBlock);
  v23 = a3;
  v24 = a4;
  sub_1BE048964();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v25 = v30;
  MEMORY[0x1BFB3FDF0](0, v19, v15, v22);
  _Block_release(v22);

  (*(v32 + 8))(v15, v12);
  return (*(v16 + 8))(v19, v31);
}

void sub_1BD8A03C0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  if (a1)
  {
    v18 = a1;
    sub_1BE04D0E4();
    v19 = a1;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = a3;
      v24 = a4;
      v25 = v23;
      *v22 = 138412290;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1BD026000, v20, v21, "Could not register from product selection with error %@", v22, 0xCu);
      sub_1BD0DE53C(v25, &unk_1EBD3E590);
      v28 = v25;
      a4 = v24;
      a3 = v33;
      MEMORY[0x1BFB45F20](v28, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    sub_1BD8A068C(a1, a3, a4);
  }

  else
  {
    sub_1BE04D0E4();
    v29 = sub_1BE04D204();
    v30 = sub_1BE052C54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BD026000, v29, v30, "Registered from product selection", v31, 2u);
      MEMORY[0x1BFB45F20](v31, -1, -1);
    }

    (*(v10 + 8))(v17, v9);
    a5(1);
  }
}

void sub_1BD8A068C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1BE04A844();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v13[4] = sub_1BD1B5F6C;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1BD126964;
  v13[3] = &block_descriptor_35_5;
  v8 = _Block_copy(v13);
  sub_1BE048964();

  v9 = PKAlertForDisplayableErrorWithCancelHandler(v6, 0, v8);
  _Block_release(v8);

  if (v9)
  {
    v10 = v3 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 24))(v9, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

void sub_1BD8A07F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_1BE048964();
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1BD8A0880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v11 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v16;
  v19 = v24;
  v18[4] = a3;
  v18[5] = v19;
  aBlock[4] = sub_1BD8A1290;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23_8;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v20);
  _Block_release(v20);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v25);
}

uint64_t sub_1BD8A0B78(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = [a1 product];
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = *(Strong + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);

        [v8 augmentWithProduct_];
      }
    }
  }

  return a3(1);
}

void sub_1BD8A0C3C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v7 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_style);
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);
  v10 = [v9 configuration];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v10 featureIdentifier];

  v13 = sub_1BE04BBD4();
  v14 = v9;
  v15 = [v14 onboardingItems];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  sub_1BD0E5E8C(0, &unk_1EBD41C48);
  v17 = sub_1BE052744();

  if (v17 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_5;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB40900](0, v17);
      goto LABEL_8;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 32);
LABEL_8:
      v19 = v18;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_15;
  }

  v19 = 0;
LABEL_11:

  v20 = [objc_allocWithZone(PKFeatureOnBoardingViewController) initWithParentFlowController:v1 setupDelegate:v1 setupContext:v7 onboardingContext:v8 featureIdentifier:v12 provisioningController:v13 paymentSetupProduct:v14 currentPage:v19];

  if (!v20)
  {
LABEL_17:
    __break(1u);
  }
}

void sub_1BD8A0E9C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v7 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v8 = sub_1BE04BBD4();
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);
  v10 = [v9 onboardingItems];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  sub_1BD0E5E8C(0, &unk_1EBD41C48);
  v12 = sub_1BE052744();

  if (v12 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900](0, v12);
      goto LABEL_7;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 32);
LABEL_7:
      v14 = v13;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_10:

  v15 = [objc_allocWithZone(PKOnBoardingViewController) initWithParentFlowController:v1 setupDelegate:v1 context:v7 provisioningController:v8 paymentSetupProduct:v9 currentPage:v14];

  if (!v15)
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1BD8A10B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8A10EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD8A113C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController);
  v2 = v1;
  return v1;
}

unint64_t sub_1BD8A1318()
{
  result = qword_1EBD56FF8;
  if (!qword_1EBD56FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56FF8);
  }

  return result;
}

const char *sub_1BD8A136C()
{
  if (*v0 == 4)
  {
    return "Finance";
  }

  else
  {
    return "Wallet";
  }
}

const char *sub_1BD8A1398()
{
  v1 = *v0;
  v2 = "BankConnectPayBill";
  v3 = "FinanceKitFinHealthGrouping";
  v4 = "BankConnectCTAInAppProvisioning";
  if (v1 != 3)
  {
    v4 = "FoundInInsights";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = "BankConnectPaymentDue";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id sub_1BD8A14A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMSFraudStepUpView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD8A152C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for SMSFraudStepUpView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUI18SMSFraudStepUpView11Coordinator_dismissAction];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD8A15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD8A1690();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD8A1604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD8A1690();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD8A1668()
{
  sub_1BD8A1690();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD8A1690()
{
  result = qword_1EBD57078;
  if (!qword_1EBD57078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57078);
  }

  return result;
}

void sub_1BD8A16E4(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  v13 = [objc_allocWithZone(PKExplanationViewController) initWithContext_];
  v14 = [v13 explanationView];
  if (!v14)
  {
    goto LABEL_8;
  }

  v40 = v13;
  v41 = a1;
  v15 = *MEMORY[0x1E69B80E0];
  v16 = *(v3 + 104);
  v16(v12, v15, v2);
  v39 = v14;
  v17 = v14;
  v18 = PKPassKitBundle();
  if (!v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  sub_1BE04B6F4();

  v22 = *(v3 + 8);
  v20 = (v3 + 8);
  v21 = v22;
  v22(v12, v2);
  v23 = sub_1BE052404();

  [v17 setTitleText_];

  v24 = v45;
  v42 = v15;
  v43 = v16;
  v16(v45, v15, v2);
  v25 = v17;
  v26 = PKPassKitBundle();
  if (!v26)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = v26;
  v28 = v2;
  sub_1BE04B6F4();

  v45 = v20;
  v21(v24, v2);
  v29 = sub_1BE052404();

  [v25 setBodyText_];

  v30 = [v25 dockView];
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  v32 = [v30 primaryButton];

  if (!v32)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = v44;
  v43(v44, v42, v28);
  v34 = PKPassKitBundle();
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  sub_1BE04B6F4();

  v21(v33, v28);
  v36 = sub_1BE052404();

  [v32 setTitle:v36 forState:0];

  v37 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57080);
  sub_1BE050154();
  v38 = v46;
  [v37 setDelegate_];

  v14 = v39;
  v13 = v40;
LABEL_8:
  if (v13)
  {
    [v13 setPrivacyLinkController_];
LABEL_11:

    return;
  }

  if ([objc_allocWithZone(PKExplanationViewController) initWithContext_])
  {
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t type metadata accessor for StatementDetailView()
{
  result = qword_1EBD57090;
  if (!qword_1EBD57090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD8A1BD8()
{
  sub_1BD3B7D94();
  if (v0 <= 0x3F)
  {
    sub_1BD3EC194();
    if (v1 <= 0x3F)
    {
      sub_1BD3B7E30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD8A1C90@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v43 = &v36 - v4;
  v38 = sub_1BE04F434();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570A8);
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570B0);
  v20 = *(v19 - 8);
  v41 = v19;
  v42 = v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v37 = &v36 - v22;
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570B8);
  sub_1BD0DE4F4(&qword_1EBD570C0, &qword_1EBD570B8);
  sub_1BE0504E4();
  v23 = v38;
  (*(v5 + 104))(v8, *MEMORY[0x1E697C428], v38);
  v24 = sub_1BD0DE4F4(&qword_1EBD570C8, &qword_1EBD570A0);
  sub_1BE050E84();
  (*(v5 + 8))(v8, v23);
  (*(v10 + 8))(v13, v9);
  sub_1BD8A36E8();
  v46 = v25;
  v47 = v26;
  v50 = v9;
  v51 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1BD0DDEBC();
  v29 = MEMORY[0x1E69E6158];
  v30 = v37;
  v31 = v39;
  sub_1BE050B74();

  v32 = v31;
  (*(v40 + 8))(v18, v31);
  type metadata accessor for StatementDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v33 = v43;
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0);
  v46 = v32;
  v47 = v29;
  v48 = OpaqueTypeConformance2;
  v49 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1BD8A5D10(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  sub_1BD10CC54();
  v34 = v41;
  sub_1BE050F74();
  sub_1BD0DE53C(v33, &qword_1EBD393E8);
  return (*(v42 + 8))(v30, v34);
}

uint64_t sub_1BD8A2218@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570D0);
  MEMORY[0x1EEE9AC00](v70, v3);
  v75 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v72 = &v65 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570D8);
  MEMORY[0x1EEE9AC00](v68, v8);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v80 = &v65 - v12;
  v13 = sub_1BE04F5B4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570E0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18, v20);
  v71 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v65 - v24;
  v81 = a1;
  sub_1BD8A3BD8();
  sub_1BE051A44();
  sub_1BE04F594();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570F0) + 36);
  v27 = v14[2];
  v78 = v14 + 2;
  v66 = v27;
  v27(&v25[v26], v17, v13);
  v28 = v14[7];
  v28(&v25[v26], 0, 1, v13);
  KeyPath = swift_getKeyPath();
  v30 = *(v19 + 44);
  v69 = v25;
  v31 = &v25[v30];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580);
  v32 = *(v76 + 28);
  v33 = v14[4];
  v79 = v14 + 4;
  v77 = v33;
  v33(v31 + v32, v17, v13);
  v67 = v14 + 7;
  v28(v31 + v32, 0, 1, v13);
  *v31 = KeyPath;
  v65 = *a1;
  v34 = [v65 identifier];
  if (v34)
  {

    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0uLL;
  }

  else
  {
    v37 = sub_1BE04F7C4();
    v35 = sub_1BD8A3A24(&v82);
    v41 = v82;
    v39 = v83;
    v38 = 1;
    v40 = v84;
  }

  v82 = v37;
  v83 = v38;
  v84 = v41;
  v85 = v39;
  v86 = v40;
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v65 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57100);
  sub_1BD0DE4F4(&qword_1EBD57108, &qword_1EBD570F8);
  sub_1BD8A5644();
  v42 = v80;
  sub_1BE051A54();
  sub_1BE04F594();
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57128) + 36);
  v44 = v66;
  v66((v42 + v43), v17, v13);
  v28((v42 + v43), 0, 1, v13);
  v45 = swift_getKeyPath();
  v46 = (v42 + *(v68 + 36));
  v47 = *(v76 + 28);
  v77(v46 + v47, v17, v13);
  v28(v46 + v47, 0, 1, v13);
  *v46 = v45;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v48 = v65;
  v49 = sub_1BE04EEC4();
  v51 = v50;
  sub_1BE04F594();
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57130) + 36);
  v53 = v72;
  v44(&v72[v52], v17, v13);
  v28(&v53[v52], 0, 1, v13);
  *v53 = v48;
  *(v53 + 1) = v49;
  *(v53 + 2) = v51;
  v54 = swift_getKeyPath();
  v55 = &v53[*(v70 + 36)];
  v56 = *(v76 + 28);
  v77(v55 + v56, v17, v13);
  v28(v55 + v56, 0, 1, v13);
  *v55 = v54;
  v57 = v69;
  v58 = v71;
  sub_1BD0DE19C(v69, v71, &qword_1EBD570E0);
  v59 = v80;
  v60 = v73;
  sub_1BD0DE19C(v80, v73, &qword_1EBD570D8);
  v61 = v75;
  sub_1BD0DE19C(v53, v75, &qword_1EBD570D0);
  v62 = v74;
  sub_1BD0DE19C(v58, v74, &qword_1EBD570E0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57138);
  sub_1BD0DE19C(v60, v62 + *(v63 + 48), &qword_1EBD570D8);
  sub_1BD0DE19C(v61, v62 + *(v63 + 64), &qword_1EBD570D0);
  sub_1BD0DE53C(v53, &qword_1EBD570D0);
  sub_1BD0DE53C(v59, &qword_1EBD570D8);
  sub_1BD0DE53C(v57, &qword_1EBD570E0);
  sub_1BD0DE53C(v61, &qword_1EBD570D0);
  sub_1BD0DE53C(v60, &qword_1EBD570D8);
  return sub_1BD0DE53C(v58, &qword_1EBD570E0);
}

__n128 sub_1BD8A2A2C@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v4 = v3;
  v5 = sub_1BE04EEC4();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE051694();
  result = v9;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

id sub_1BD8A2B00@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v121 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v122 = &v114 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v114 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v114 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57140);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v119 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v118 = &v114 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v117 = &v114 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v124 = &v114 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v116 = &v114 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v125 = &v114 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v126 = &v114 - v39;
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v131 = &v114 - v43;
  v44 = *(v5 + 104);
  v133 = *MEMORY[0x1E69B80E0];
  v134 = v5 + 104;
  v132 = v44;
  v44(v18, v42);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v46 = result;
  v47 = sub_1BE04B6F4();
  v49 = v48;

  v50 = *(v5 + 8);
  v123 = v4;
  v129 = v50;
  v130 = v5 + 8;
  v50(v18, v4);
  v51 = *a1;
  v52 = [*a1 openingBalance];
  v53 = [v51 currencyCode];
  sub_1BE052434();

  v54 = v52;
  v55 = sub_1BE052404();
  v56 = PKCurrencyAmountMake();

  v115 = a2;
  v120 = v51;
  if (v56 && (v57 = [v56 formattedStringValue], v56, v57))
  {
    v58 = sub_1BE052434();
    v60 = v59;
  }

  else
  {

    v47 = 0;
    v49 = 0;
    v58 = 0;
    v60 = 0;
  }

  v135 = v47;
  v136 = v49;
  v137 = v58;
  v138 = v60;
  sub_1BE052434();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57148);
  v127 = sub_1BD8A56F4(&qword_1EBD57150, &qword_1EBD57148, &unk_1BE1007F8, sub_1BD8A5770);
  v128 = v61;
  sub_1BE050DE4();

  sub_1BD27273C(v47, v49);
  v62 = v123;
  v132(v14, v133, v123);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_23;
  }

  v63 = result;
  v64 = sub_1BE04B6F4();
  v66 = v65;

  v129(v14, v62);
  v67 = v120;
  v68 = [v120 closingBalance];
  v69 = [v67 currencyCode];
  sub_1BE052434();

  v70 = v68;
  v71 = sub_1BE052404();
  v72 = PKCurrencyAmountMake();

  if (v72 && (v73 = [v72 formattedStringValue], v72, v73))
  {
    v74 = sub_1BE052434();
    v76 = v75;
  }

  else
  {

    v64 = 0;
    v66 = 0;
    v74 = 0;
    v76 = 0;
  }

  v135 = v64;
  v136 = v66;
  v137 = v74;
  v138 = v76;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD27273C(v64, v66);
  v77 = v122;
  v132(v122, v133, v62);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_24;
  }

  v78 = result;
  v79 = sub_1BE04B6F4();
  v81 = v80;

  v129(v77, v62);
  v82 = [v67 totalDailyCashDeposits];
  v83 = [v67 currencyCode];
  sub_1BE052434();

  v84 = v82;
  v85 = sub_1BE052404();
  v86 = PKCurrencyAmountMake();

  if (v86 && (v87 = [v86 formattedStringValue], v86, v87))
  {
    v88 = sub_1BE052434();
    v90 = v89;
  }

  else
  {

    v79 = 0;
    v81 = 0;
    v88 = 0;
    v90 = 0;
  }

  v135 = v79;
  v136 = v81;
  v137 = v88;
  v138 = v90;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD27273C(v79, v81);
  v91 = v121;
  v132(v121, v133, v62);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_25;
  }

  v92 = result;
  v93 = sub_1BE04B6F4();
  v95 = v94;

  v129(v91, v62);
  v96 = [v67 interestEarned];
  v97 = [v67 currencyCode];
  sub_1BE052434();

  v98 = v96;
  v99 = sub_1BE052404();
  v100 = PKCurrencyAmountMake();

  if (v100 && (v101 = [v100 formattedStringValue], v100, v101))
  {
    v102 = sub_1BE052434();
    v104 = v103;
  }

  else
  {

    v93 = 0;
    v95 = 0;
    v102 = 0;
    v104 = 0;
  }

  v135 = v93;
  v136 = v95;
  v137 = v102;
  v138 = v104;
  sub_1BE052434();
  v105 = v116;
  sub_1BE050DE4();

  sub_1BD27273C(v93, v95);
  v106 = v124;
  sub_1BD0DE19C(v131, v124, &qword_1EBD57140);
  v107 = v126;
  v108 = v117;
  sub_1BD0DE19C(v126, v117, &qword_1EBD57140);
  v109 = v125;
  v110 = v118;
  sub_1BD0DE19C(v125, v118, &qword_1EBD57140);
  v111 = v119;
  sub_1BD0DE19C(v105, v119, &qword_1EBD57140);
  v112 = v115;
  sub_1BD0DE19C(v106, v115, &qword_1EBD57140);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57160);
  sub_1BD0DE19C(v108, v112 + v113[12], &qword_1EBD57140);
  sub_1BD0DE19C(v110, v112 + v113[16], &qword_1EBD57140);
  sub_1BD0DE19C(v111, v112 + v113[20], &qword_1EBD57140);
  sub_1BD0DE53C(v105, &qword_1EBD57140);
  sub_1BD0DE53C(v109, &qword_1EBD57140);
  sub_1BD0DE53C(v107, &qword_1EBD57140);
  sub_1BD0DE53C(v131, &qword_1EBD57140);
  sub_1BD0DE53C(v111, &qword_1EBD57140);
  sub_1BD0DE53C(v110, &qword_1EBD57140);
  sub_1BD0DE53C(v108, &qword_1EBD57140);
  return sub_1BD0DE53C(v124, &qword_1EBD57140);
}

void sub_1BD8A36E8()
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

id sub_1BD8A3A24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80E0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v18[0] = v10;
    v18[1] = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    *a1 = v13;
    *(a1 + 8) = v14;
    LOBYTE(v10) = v16 & 1;
    *(a1 + 16) = v16 & 1;
    *(a1 + 24) = v17;
    sub_1BD0D7F18(v13, v14, v16 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v13, v15, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD8A3BD8()
{
  result = qword_1EBD570E8;
  if (!qword_1EBD570E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD570E8);
  }

  return result;
}

uint64_t sub_1BD8A3C2C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 identifier];
  if (v6)
  {

    if (!a2)
    {
      type metadata accessor for SavingsStatementsModel(0);
      sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
      result = sub_1BE04EEB4();
      __break(1u);
      return result;
    }

    v7 = a2;
    v8 = sub_1BD2F4DC8(a1);

    if (v8)
    {
      MEMORY[0x1EEE9AC00](v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57188);
      sub_1BD0DE4F4(&qword_1EBD57190, &qword_1EBD57188);
      sub_1BD8A5A58();
      sub_1BE051A54();

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57180);
      return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57180);
  v14 = *(*(v13 - 8) + 56);

  return v14(a3, 1, 1, v13);
}

void *sub_1BD8A3E84@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if ([a1 supportsViewSavingsStatement])
  {
    v6 = a2;
    v7 = &unk_1F3B8F7E8;
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = [a1 exportSavingsTransactionDataFeatureDescriptor];
  if (v9 && (v10 = v9, v11 = [v9 supportedFileFormatsForTransactionData], v10, v11))
  {
    v12 = sub_1BE052744();

    v13 = a2;
    sub_1BE048C84();
  }

  else
  {
    a2 = 0;
    v12 = 0;
  }

  sub_1BD0D4770(v8);
  sub_1BD0D4770(a2);
  sub_1BD0D468C(v8);
  sub_1BD0D468C(a2);
  *a3 = v8;
  a3[1] = v7;
  a3[2] = a2;
  a3[3] = v12;
  sub_1BD0D468C(a2);

  return sub_1BD0D468C(v8);
}

uint64_t sub_1BD8A3FC8@<X0>(uint64_t a1@<X8>)
{
  result = PKSavingsFDICSignageEnabled();
  if (result)
  {
    v3 = sub_1BE0501E4();
    result = sub_1BE04E1F4();
    *(&v5 + 1) = v4;
    *(&v7 + 1) = v6;
    v8 = v3;
    v9 = xmmword_1BE0BBB00;
  }

  else
  {
    v8 = 0;
    v9 = xmmword_1BE0BBAF0;
    v5 = 0uLL;
    v7 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v8;
  *(a1 + 24) = v5;
  *(a1 + 40) = v7;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1BD8A404C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v51 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - v20;
  v54 = a1;
  v55 = a2;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v22 = sub_1BE0506C4();
  v24 = v23;
  v54 = v22;
  v55 = v23;
  v26 = v25 & 1;
  v56 = v25 & 1;
  v57 = v27;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v22, v24, v26);

  v54 = a3;
  v55 = a4;
  sub_1BE048C84();
  v28 = sub_1BE0506C4();
  v30 = v29;
  v32 = v31;
  sub_1BE051234();
  v33 = sub_1BE050564();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_1BD0DDF10(v28, v30, v32 & 1);

  v54 = v33;
  v55 = v35;
  v56 = v37 & 1;
  v57 = v39;
  sub_1BE052434();
  v40 = v50;
  sub_1BE050DE4();

  sub_1BD0DDF10(v33, v35, v37 & 1);

  v41 = v51;
  sub_1BD0DE19C(v21, v51, &qword_1EBD452C0);
  v42 = v40;
  v43 = v40;
  v44 = v52;
  sub_1BD0DE19C(v42, v52, &qword_1EBD452C0);
  v45 = v53;
  sub_1BD0DE19C(v41, v53, &qword_1EBD452C0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45390);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_1BD0DE19C(v44, v45 + *(v46 + 64), &qword_1EBD452C0);
  sub_1BD0DE53C(v43, &qword_1EBD452C0);
  sub_1BD0DE53C(v21, &qword_1EBD452C0);
  sub_1BD0DE53C(v44, &qword_1EBD452C0);
  return sub_1BD0DE53C(v41, &qword_1EBD452C0);
}

uint64_t sub_1BD8A43B0@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45360);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45368);
  sub_1BD8A404C(v11, v12, v14, v13, &v10[*(v15 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD57178, &qword_1EBD45360);
  sub_1BE050D14();
  (*(v3 + 8))(v6, v2);
  return sub_1BD0DE53C(v10, &qword_1EBD45360);
}

id sub_1BD8A4588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a1;
  v77 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v84, v4);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v77 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v78 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v81 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v80 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v85 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v77 - v25;
  v27 = type metadata accessor for DownloadDocumentCell();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v11 + 104);
  v90 = *MEMORY[0x1E69B80E0];
  v86 = v11 + 104;
  v89 = v32;
  v32(v26, v29);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v34 = result;
  v35 = sub_1BE04B6F4();
  v37 = v36;

  v38 = *(v11 + 8);
  v87 = v11 + 8;
  v88 = v38;
  v38(v26, v10);
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v39 = v82;
  sub_1BE048C84();
  v82 = sub_1BE04EEC4();
  v79 = v40;
  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD8A5D10(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  v41 = sub_1BE04EEC4();
  v43 = v42;
  *v31 = v35;
  *(v31 + 1) = v37;
  *(v31 + 2) = v39;
  *(v31 + 3) = a2;
  v31[32] = 1;
  LOBYTE(v92) = 0;
  sub_1BE051694();
  v44 = *(&v96 + 1);
  v31[40] = v96;
  *(v31 + 6) = v44;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44520);
  sub_1BE051694();
  v45 = v97;
  *(v31 + 56) = v96;
  *(v31 + 72) = v45;
  v46 = v99;
  *(v31 + 88) = v98;
  *(v31 + 104) = v46;
  v91 = 0;
  sub_1BE051694();
  v47 = *(&v92 + 1);
  v31[120] = v92;
  *(v31 + 16) = v47;
  v48 = sub_1BE04AA64();
  (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
  sub_1BD0DE19C(v9, v83, &unk_1EBD3CF70);
  sub_1BE051694();
  sub_1BD0DE53C(v9, &unk_1EBD3CF70);
  v49 = &v31[*(v27 + 48)];
  v50 = v79;
  *v49 = v82;
  *(v49 + 1) = v50;
  v51 = &v31[*(v27 + 52)];
  *v51 = v41;
  v51[1] = v43;
  v52 = v85;
  v89(v85, v90, v10);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v53 = result;
  v54 = v27;
  v84 = sub_1BE04B6F4();
  v83 = v55;

  v88(v52, v10);
  v56 = v80;
  v89(v80, v90, v10);
  result = PKPassKitBundle();
  v57 = v81;
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v58 = result;
  v85 = sub_1BE04B6F4();
  v82 = v59;

  v88(v56, v10);
  v89(v57, v90, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v61 = result;
  v62 = &v31[*(v54 + 56)];
  v63 = sub_1BE052434();
  v65 = v64;

  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = sub_1BD110550();
  *(v60 + 32) = v63;
  *(v60 + 40) = v65;
  v66 = sub_1BE04B714();
  v68 = v67;

  v88(v57, v10);
  v69 = v83;
  *v62 = v84;
  v62[1] = v69;
  v70 = v82;
  v62[2] = v85;
  v62[3] = v70;
  v62[4] = v66;
  v62[5] = v68;
  v71 = v78;
  v89(v78, v90, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v72 = result;
    v73 = &v31[*(v54 + 60)];
    v74 = sub_1BE04B6F4();
    v76 = v75;

    v88(v71, v10);
    *v73 = v74;
    v73[1] = v76;
    sub_1BE052434();
    sub_1BD8A5D10(&qword_1EBD571C8, type metadata accessor for DownloadDocumentCell);
    sub_1BE050DE4();

    return sub_1BD8A5BC8(v31);
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1BD8A4DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a1;
  v77 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v84, v4);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v77 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v78 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v81 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v80 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v85 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v77 - v25;
  v27 = type metadata accessor for DownloadDocumentCell();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v11 + 104);
  v90 = *MEMORY[0x1E69B80E0];
  v86 = v11 + 104;
  v89 = v32;
  v32(v26, v29);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v34 = result;
  v35 = sub_1BE04B6F4();
  v37 = v36;

  v38 = *(v11 + 8);
  v87 = v11 + 8;
  v88 = v38;
  v38(v26, v10);
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v39 = v82;
  sub_1BE048C84();
  v82 = sub_1BE04EEC4();
  v79 = v40;
  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD8A5D10(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  v41 = sub_1BE04EEC4();
  v43 = v42;
  *v31 = v35;
  *(v31 + 1) = v37;
  *(v31 + 2) = v39;
  *(v31 + 3) = a2;
  v31[32] = 0;
  LOBYTE(v92) = 0;
  sub_1BE051694();
  v44 = *(&v96 + 1);
  v31[40] = v96;
  *(v31 + 6) = v44;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44520);
  sub_1BE051694();
  v45 = v97;
  *(v31 + 56) = v96;
  *(v31 + 72) = v45;
  v46 = v99;
  *(v31 + 88) = v98;
  *(v31 + 104) = v46;
  v91 = 0;
  sub_1BE051694();
  v47 = *(&v92 + 1);
  v31[120] = v92;
  *(v31 + 16) = v47;
  v48 = sub_1BE04AA64();
  (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
  sub_1BD0DE19C(v9, v83, &unk_1EBD3CF70);
  sub_1BE051694();
  sub_1BD0DE53C(v9, &unk_1EBD3CF70);
  v49 = &v31[*(v27 + 48)];
  v50 = v79;
  *v49 = v82;
  *(v49 + 1) = v50;
  v51 = &v31[*(v27 + 52)];
  *v51 = v41;
  v51[1] = v43;
  v52 = v85;
  v89(v85, v90, v10);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v53 = result;
  v54 = v27;
  v84 = sub_1BE04B6F4();
  v83 = v55;

  v88(v52, v10);
  v56 = v80;
  v89(v80, v90, v10);
  result = PKPassKitBundle();
  v57 = v81;
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v58 = result;
  v85 = sub_1BE04B6F4();
  v82 = v59;

  v88(v56, v10);
  v89(v57, v90, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v61 = result;
  v62 = &v31[*(v54 + 56)];
  v63 = sub_1BE052434();
  v65 = v64;

  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = sub_1BD110550();
  *(v60 + 32) = v63;
  *(v60 + 40) = v65;
  v66 = sub_1BE04B714();
  v68 = v67;

  v88(v57, v10);
  v69 = v83;
  *v62 = v84;
  v62[1] = v69;
  v70 = v82;
  v62[2] = v85;
  v62[3] = v70;
  v62[4] = v66;
  v62[5] = v68;
  v71 = v78;
  v89(v78, v90, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v72 = result;
    v73 = &v31[*(v54 + 60)];
    v74 = sub_1BE04B6F4();
    v76 = v75;

    v88(v71, v10);
    *v73 = v74;
    v73[1] = v76;
    sub_1BE052434();
    sub_1BD8A5D10(&qword_1EBD571C8, type metadata accessor for DownloadDocumentCell);
    sub_1BE050DE4();

    return sub_1BD8A5BC8(v31);
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1BD8A5644()
{
  result = qword_1EBD57110;
  if (!qword_1EBD57110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57100);
    sub_1BD0DE4F4(&qword_1EBD57118, &qword_1EBD57120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57110);
  }

  return result;
}

uint64_t sub_1BD8A56F4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD8A5770()
{
  result = qword_1EBD57158;
  if (!qword_1EBD57158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57158);
  }

  return result;
}

unint64_t sub_1BD8A57F4()
{
  result = qword_1EBD57168;
  if (!qword_1EBD57168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD570B0);
    type metadata accessor for MultiHyperLinkDetailSheet();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD570A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD570A0);
    sub_1BD0DE4F4(&qword_1EBD570C8, &qword_1EBD570A0);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD8A5D10(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57168);
  }

  return result;
}

unint64_t sub_1BD8A5A58()
{
  result = qword_1EBD57198;
  if (!qword_1EBD57198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57198);
  }

  return result;
}

unint64_t sub_1BD8A5ACC()
{
  result = qword_1EBD571B0;
  if (!qword_1EBD571B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57180);
    sub_1BD0DE4F4(&qword_1EBD57190, &qword_1EBD57188);
    sub_1BD8A5A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD571B0);
  }

  return result;
}

uint64_t sub_1BD8A5BC8(uint64_t a1)
{
  v2 = type metadata accessor for DownloadDocumentCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD8A5C24()
{
  result = qword_1EBD571D0;
  if (!qword_1EBD571D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD571D8);
    sub_1BD8A5D10(&qword_1EBD571C8, type metadata accessor for DownloadDocumentCell);
    sub_1BD8A5D10(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD571D0);
  }

  return result;
}

uint64_t sub_1BD8A5D10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView()
{
  result = qword_1EBD571E0;
  if (!qword_1EBD571E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD8A5DD4()
{
  sub_1BD0E5E8C(319, &qword_1EBD496B0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD39D98);
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD57A10);
      if (v2 <= 0x3F)
      {
        sub_1BD8A6038(319, &qword_1EBD39DB0, type metadata accessor for PresentationContext, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD1030A8();
          if (v4 <= 0x3F)
          {
            sub_1BD146338(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD146338(319, &qword_1EBD39360, &qword_1EBD49710, &unk_1BE0B8580, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD146338(319, &qword_1EBD39358, &unk_1EBD45160, &unk_1BE0C25A0, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1BD10EE48();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD8A6038(319, &qword_1EBD39340, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
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

void sub_1BD8A6038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1BD8A60B8@<D0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v80, v2);
  v79 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v78 = &v66 - v6;
  v7 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = type metadata accessor for PaymentOfferActionExplanationView();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v82 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD571F0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v84 = &v66 - v20;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD571F8);
  MEMORY[0x1EEE9AC00](v83, v21);
  v85 = &v66 - v22;
  v23 = *(v1 + 8);
  v67 = *v1;
  v24 = *(v1 + 16);
  sub_1BD8A7078(v1, &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v70 = swift_allocObject();
  sub_1BD8A73C8(&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v70 + v25, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
  *&v86 = v7;
  v26 = *(v7 + 60);
  v81 = v1;
  v27 = (v1 + v26);
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v90) = v28;
  *(&v90 + 1) = v29;
  v30 = v23;
  v69 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v76 = *&v88[8];
  v77 = *v88;
  v75 = v88[16];
  v31 = [v30 issuerName];
  v32 = sub_1BE052434();
  v66 = v33;

  v74 = sub_1BE052434();
  v73 = v34;
  v72 = sub_1BE052434();
  v71 = v35;
  v36 = v67;
  v37 = [v67 configuration];
  v68 = [v37 context];

  v89 = 0;
  v38 = type metadata accessor for MultiHyperLinkDetailSheet();
  v39 = v78;
  (*(*(v38 - 8) + 56))(v78, 1, 1, v38);
  sub_1BD0DE19C(v39, v79, &unk_1EBD45160);
  sub_1BE051694();
  sub_1BD0DE53C(v39, &unk_1EBD45160);
  v40 = &v14[*(v11 + 68)];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *v14 = v36;
  *(v14 + 1) = v30;
  *(v14 + 2) = v69;
  *(v14 + 3) = v32;
  *(v14 + 4) = v66;
  *(v14 + 11) = 0;
  *(v14 + 72) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 40) = 0u;
  v14[96] = 0;
  *(v14 + 13) = 0;
  v41 = v70;
  *(v14 + 16) = sub_1BD8A70DC;
  *(v14 + 17) = v41;
  *(v14 + 72) = 1795;
  v42 = v36;
  v43 = [v30 identifier];
  if (!v43)
  {
    sub_1BE052434();
    v43 = sub_1BE052404();
  }

  v44 = v68 != 2;
  v45 = [v42 preferredLocalizationLanguageForCriteriaIdentifier_];

  v46 = sub_1BE052434();
  v48 = v47;

  *(v14 + 14) = v46;
  *(v14 + 15) = v48;
  v49 = &v14[*(v11 + 64)];
  v50 = v76;
  *v49 = v77;
  *(v49 + 1) = v50;
  v49[16] = v75;
  v51 = v73;
  *(v14 + 19) = v74;
  *(v14 + 20) = v51;
  v52 = v71;
  *(v14 + 21) = v72;
  *(v14 + 22) = v52;
  v14[184] = v44;
  *(v14 + 24) = 0;
  *(v14 + 25) = 0;
  v53 = v82;
  sub_1BD8A73C8(v14, v82, type metadata accessor for PaymentOfferActionExplanationView);
  sub_1BE052434();
  sub_1BD71759C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
  v54 = v84;
  sub_1BE050DE4();

  sub_1BD8A7430(v53, type metadata accessor for PaymentOfferActionExplanationView);
  v55 = v81;
  v56 = (v81 + *(v86 + 64));
  v58 = *v56;
  v57 = v56[1];
  *&v90 = v58;
  *(&v90 + 1) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0);
  sub_1BE0516C4();
  v59 = *v88;
  v86 = *&v88[8];
  v60 = v85;
  sub_1BD0DE204(v54, v85, &qword_1EBD571F0);
  v61 = v60 + *(v83 + 36);
  *v61 = v59;
  *(v61 + 8) = v86;
  v90 = *(v55 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516C4();
  v86 = *v88;
  v62 = *&v88[16];
  v63 = v87;
  sub_1BD0DE204(v60, v87, &qword_1EBD571F8);
  v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57200) + 36);
  result = *&v86;
  *v64 = v86;
  *(v64 + 24) = 0;
  *(v64 + 32) = 0;
  *(v64 + 16) = v62;
  return result;
}

void sub_1BD8A6818()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = v0 + *(v3 + 68);
  v8 = *v7;
  v9 = *(v7 + 8);
  LOBYTE(v19) = v8;
  v20 = v9;
  LOBYTE(v18) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v10 = (v0 + *(v3 + 72));
  v12 = *v10;
  v11 = v10[1];
  v19 = v12;
  v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0);
  sub_1BE0516A4();
  v13 = v18;
  v14 = *(v1 + 24);
  sub_1BD8A7078(v1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1BD8A73C8(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
  sub_1BD8C1B80(v14, 1, sub_1BD8A7358, v16);
}

void sub_1BD8A69BC(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v60 = (&v59 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v59 - v8;
  v10 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v59 - v20);
  v22 = *(type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView() + 60);
  v63 = a2;
  v23 = (a2 + v22);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v65) = v24;
  v66 = v25;
  LOBYTE(v64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BD0DE19C(v62, v21, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BD8A73C8(v21, v17, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    sub_1BD0DE19C(v17 + *(v14 + 24), v9, &unk_1EBD49700);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v32 = sub_1BD0DE53C(v9, &unk_1EBD49700);
      v33 = v63;
      v34 = v17[1];
      if (v34)
      {
LABEL_6:
        v35 = *v17;
        if (*v17)
        {
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          v37 = v34;
          if (v36)
          {
            v38 = v35;
            v39 = [v36 devicePrimaryPaymentApplication];
            v40 = *(v33 + 32);
            v41 = v60;
            *v60 = v36;
            type metadata accessor for WrappedPass(0);
            swift_storeEnumTagMultiPayload();
            v42 = type metadata accessor for AvailablePass(0);
            v43 = v42[6];
            v44 = type metadata accessor for IdentityCredential(0);
            (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
            v45 = v42[7];
            v46 = type metadata accessor for BalanceInfo(0);
            (*(*(v46 - 8) + 56))(v41 + v45, 1, 1, v46);
            *(v41 + v42[5]) = 0;
            v47 = (v41 + v42[8]);
            *v47 = 0;
            v47[1] = 0;
            *(v41 + v42[9]) = 0;
            v48 = v42[10];
            v49 = type metadata accessor for PassEligibleRewardsInfo();
            (*(*(v49 - 8) + 56))(v41 + v48, 1, 1, v49);
            *(v41 + v42[11]) = 2;
            v50 = (v41 + v42[12]);
            *(v50 + 25) = 0u;
            *v50 = 0u;
            v50[1] = 0u;
            v51 = v41 + v42[13];
            *(v51 + 32) = 0;
            *v51 = 0u;
            *(v51 + 16) = 0u;
            v52 = MEMORY[0x1E69E7CC0];
            *(v41 + v42[14]) = MEMORY[0x1E69E7CC0];
            *(v41 + v42[15]) = v52;
            (*(*(v42 - 1) + 56))(v41, 0, 1, v42);
            v53 = v38;
            v40(v41, v39, 2);

            sub_1BD0DE53C(v41, &qword_1EBD520A0);
          }
        }

        else
        {
          v56 = v34;
        }

        v57 = *(v33 + 48);
        v58 = v34;
        v57(v34);

        (*(v33 + 96))();
        goto LABEL_16;
      }
    }

    else
    {
      v54 = v61;
      sub_1BD8A73C8(v9, v61, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
      v33 = v63;
      v55 = *(v63 + 64);
      if (v55)
      {
        sub_1BE048964();
        v55(v54);
        sub_1BD0D4744(v55);
        sub_1BD8A7430(v54, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
LABEL_16:
        sub_1BD8A7430(v17, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
        return;
      }

      v32 = sub_1BD8A7430(v54, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
      v34 = v17[1];
      if (v34)
      {
        goto LABEL_6;
      }
    }

    (*(v33 + 80))(v32);
    goto LABEL_16;
  }

  v26 = *v21;
  if (*v21)
  {
    v27 = v26;
    v28 = sub_1BE04A844();

    v30 = *(v63 + 120);
    v65 = *(v63 + 112);
    v29 = v65;
    v66 = v30;
    v64 = v28;
    sub_1BE048964();
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
    sub_1BE0516B4();
  }

  else
  {
    (*(v63 + 80))();
  }
}

uint64_t sub_1BD8A7078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD8A70DC(unsigned __int8 a1)
{
  v2 = a1;
  v3 = *(type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (v2 == 4)
  {
    (*(v4 + 80))();
  }

  else
  {
    sub_1BD8A6818();
  }
}

uint64_t objectdestroyTm_103()
{
  v1 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 64))
  {
  }

  v3 = (v2 + *(v1 + 56));
  v4 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_1BE04AA64();
      (*(*(v5 - 8) + 8))(v3, v5);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

void sub_1BD8A7358(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD8A69BC(a1, v4);
}

uint64_t sub_1BD8A73C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8A7430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD8A7490()
{
  result = qword_1EBD57208;
  if (!qword_1EBD57208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57200);
    sub_1BD8A751C();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57208);
  }

  return result;
}

unint64_t sub_1BD8A751C()
{
  result = qword_1EBD57210;
  if (!qword_1EBD57210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD571F8);
    sub_1BD8A75A8();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57210);
  }

  return result;
}

unint64_t sub_1BD8A75A8()
{
  result = qword_1EBD57218;
  if (!qword_1EBD57218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD571F0);
    sub_1BD71759C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
    sub_1BD71759C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57218);
  }

  return result;
}

id sub_1BD8A7758()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(PKPeerPaymentSetupFlowProvisionConfiguration) initWithSetupDelegate_];
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_credential);
  v20 = v0;
  v8 = v7;
  v9 = sub_1BE04BBD4();
  v10 = [objc_allocWithZone(MEMORY[0x1E69B8A60]) init];
  v11 = v6;
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v2 + 8))(v5, v1);
  sub_1BE04BC04();
  if (v13)
  {
    v14 = sub_1BE052404();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(PKPeerPaymentSetupFlowController) initWithPeerPaymentCredential:v8 provisioningController:v9 passLibraryDataProvider:v10 configuration:v11 context:v12 campaignAttributionReferrerIdentifier:v14];

  if (v15)
  {
    [v15 setFlowItemDelegate_];
  }

  v16 = v15;
  v17 = [v16 firstPeerPaymentAccountSetupViewController];

  return v17;
}

uint64_t sub_1BD8A796C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8A79A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

char *AutoFillCardsViewController.__allocating_init(descriptors:authentication:context:settingsController:groupsController:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a6;
  v47 = a4;
  v41 = a2;
  v42 = a3;
  v43 = a1;
  v12 = type metadata accessor for AutoFillFPANCardsView(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = objc_allocWithZone(v7);
  v52 = 0;
  sub_1BD041A38(a2, a3);
  v48 = a6;
  v46 = a5;
  sub_1BE051694();
  v17 = v50;
  *v16 = v49;
  *(v16 + 1) = v17;
  type metadata accessor for DescriptorsModel(0);
  swift_allocObject();
  sub_1BD8AA788();
  sub_1BD8B0314(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v18 = sub_1BE04E954();
  v20 = v19;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  v21 = v13[8];
  *&v16[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v22 = v13[9];
  sub_1BE052434();
  v23 = *MEMORY[0x1E69BC6D8];
  v24 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v24 initWithSuiteName_];
  *&v16[v22] = sub_1BE04E124();
  v25 = v13[10];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *&v16[v25] = sub_1BE04E124();
  v26 = v13[12];
  *&v16[v13[11]] = v39;
  *&v16[v26] = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v43;
  sub_1BE04D8C4();
  v27 = *(v20 + 24);
  v28 = *(v20 + 32);
  v30 = v41;
  v29 = v42;
  *(v20 + 24) = v41;
  *(v20 + 32) = v29;
  sub_1BD030220(v27, v28);
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD420B8));
  v32 = sub_1BE04F894();
  v33 = v44;
  *&v44[OBJC_IVAR___PKAutoFillCardsViewController_hostingVC] = v32;
  *&v33[OBJC_IVAR___PKAutoFillCardsViewController_context] = v47;
  v51.receiver = v33;
  v51.super_class = v45;
  v34 = objc_msgSendSuper2(&v51, sel_initWithNibName_bundle_, 0, 0);
  v35 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v36 = *&v34[v35];
  v37 = v34;
  [v37 addChildViewController_];

  sub_1BD1245AC(v30, v29);
  return v37;
}

void sub_1BD8A7E14(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BD8A7E74()
{
  v1 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BD8A7EC8(uint64_t a1)
{
  v3 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *AutoFillCardsViewController.init(descriptors:authentication:context:settingsController:groupsController:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v47 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a2;
  v44 = a3;
  v45 = a1;
  v10 = type metadata accessor for AutoFillFPANCardsView(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0;
  sub_1BD041A38(a2, a3);
  v49 = a6;
  v48 = a5;
  sub_1BE051694();
  v15 = v51;
  *v14 = v50;
  *(v14 + 1) = v15;
  type metadata accessor for DescriptorsModel(0);
  swift_allocObject();
  sub_1BD8AA788();
  sub_1BD8B0314(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v16 = sub_1BE04E954();
  v18 = v17;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  v19 = v11[8];
  *&v14[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v20 = v11[9];
  sub_1BE052434();
  v21 = *MEMORY[0x1E69BC6D8];
  v22 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v22 initWithSuiteName_];
  *&v14[v20] = sub_1BE04E124();
  v23 = v11[10];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *&v14[v23] = sub_1BE04E124();
  v24 = v11[12];
  *&v14[v11[11]] = v41;
  *&v14[v24] = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v45;
  sub_1BE04D8C4();
  v25 = *(v18 + 24);
  v26 = *(v18 + 32);
  v28 = v43;
  v27 = v44;
  *(v18 + 24) = v43;
  *(v18 + 32) = v27;
  sub_1BD030220(v25, v26);
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD420B8));
  v30 = sub_1BE04F894();
  v31 = v46;
  v32 = v47;
  *&v46[OBJC_IVAR___PKAutoFillCardsViewController_hostingVC] = v30;
  *&v31[OBJC_IVAR___PKAutoFillCardsViewController_context] = v32;
  v33 = v31;
  v34 = type metadata accessor for AutoFillCardsViewController();
  v52.receiver = v33;
  v52.super_class = v34;
  v35 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
  v36 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v37 = *&v35[v36];
  v38 = v35;
  [v38 addChildViewController_];

  sub_1BD1245AC(v28, v27);
  return v38;
}

uint64_t AutoFillFPANCardsView.init(descriptors:authentication:settingsController:groupsController:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1BE051694();
  *a5 = v23;
  *(a5 + 8) = v24;
  type metadata accessor for DescriptorsModel(0);
  swift_allocObject();
  sub_1BD8AA788();
  sub_1BD8B0314(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v6 = sub_1BE04E954();
  v8 = v7;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  v9 = type metadata accessor for AutoFillFPANCardsView(0);
  v10 = v9[6];
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v11 = v9[7];
  sub_1BE052434();
  v12 = *MEMORY[0x1E69BC6D8];
  v13 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v13 initWithSuiteName_];
  *(a5 + v11) = sub_1BE04E124();
  v14 = v9[8];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *(a5 + v14) = sub_1BE04E124();
  v15 = v9[10];
  *(a5 + v9[9]) = a3;
  *(a5 + v15) = a4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8C4();
  v16 = *(v8 + 24);
  v17 = *(v8 + 32);
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  return sub_1BD030220(v16, v17);
}

void sub_1BD8A8674()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AutoFillCardsViewController();
  v18.receiver = v0;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, sel_loadView);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v10 = [*&v0[v9] view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v8 addSubview_];

  [*&v0[v9] didMoveToParentViewController_];
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1);
  v12 = PKPassKitBundle();
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1BE04B6F4();

  (*(v2 + 8))(v5, v1);
  v14 = sub_1BE052404();

  [v0 setTitle_];

  if (!*&v0[OBJC_IVAR___PKAutoFillCardsViewController_context])
  {
    v15 = [v0 navigationItem];
    v16 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_dismissAction];
    [v15 setLeftBarButtonItem_];
  }
}

id AutoFillCardsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void sub_1BD8A8B64(void *a1, void *a2, void *a3)
{
  v7 = *&v3[OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_autoFillManager];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v15[4] = sub_1BD8B08B4;
  v15[5] = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BD198918;
  v15[3] = &block_descriptor_79_0;
  v9 = _Block_copy(v15);
  v10 = v7;
  v11 = v3;
  v12 = a1;
  v13 = a2;
  v14 = a3;

  [v10 canSaveFPANCardWithDescriptor:v12 credential:v13 completion:v9];
  _Block_release(v9);
}

uint64_t sub_1BD8A8C8C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = sub_1BE051F54();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v27 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1BD8B08C0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_85;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD8B0314(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v25 = v27;
  MEMORY[0x1BFB3FDF0](0, v17, v13, v19);
  _Block_release(v19);

  (*(v30 + 8))(v13, v10);
  return (*(v28 + 8))(v17, v29);
}

void sub_1BD8A8FA4(void *a1, char *a2, void *a3, void *a4, void *a5)
{
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v66 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v58[-v16];
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v58[-v21];
  if ([a1 savableFields] == 7)
  {
    v23 = *&a2[OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_insertingHandler];
    v24 = sub_1BE048964();
    v23(v24);

    v25 = swift_allocObject();
    *(v25 + 16) = a5;
    *(v25 + 24) = a2;
    v26 = *&a2[OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_autoFillManager];
    v27 = swift_allocObject();
    v27[2] = a2;
    v27[3] = sub_1BD8B0940;
    v27[4] = v25;
    v71 = sub_1BD8B0980;
    v72 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1BD03E30C;
    v70 = &block_descriptor_106_1;
    v28 = _Block_copy(&aBlock);
    v29 = a2;
    v30 = a5;
    v31 = v26;
    sub_1BE048964();

    [v31 insertFPANCardWithDescriptor:a3 credential:a4 completion:v28];
    _Block_release(v28);

LABEL_7:

    return;
  }

  v60 = a3;
  v61 = a4;
  v32 = *(v11 + 104);
  v59 = *MEMORY[0x1E69B80D8];
  v64 = v32;
  v65 = v11 + 104;
  v32(v22);
  v33 = PKPassKitBundle();
  if (!v33)
  {
    __break(1u);
    goto LABEL_9;
  }

  v34 = v33;
  sub_1BE04B6F4();

  v62 = *(v11 + 8);
  v63 = v11 + 8;
  v62(v22, v10);
  v35 = swift_allocObject();
  v37 = v60;
  v36 = v61;
  v35[2] = v60;
  v35[3] = a1;
  v35[4] = a2;
  v35[5] = v36;
  v35[6] = a5;
  v38 = a2;
  v39 = a5;
  v40 = v37;
  v41 = a1;
  v42 = v36;
  v43 = sub_1BE052404();

  v71 = sub_1BD8B0928;
  v72 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1BD198918;
  v70 = &block_descriptor_91_2;
  v44 = _Block_copy(&aBlock);

  v45 = objc_opt_self();
  v46 = [v45 actionWithTitle:v43 style:0 handler:v44];
  _Block_release(v44);

  v64(v17, *MEMORY[0x1E69B80D0], v10);
  v47 = PKPassKitBundle();
  if (!v47)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v48 = v47;
  sub_1BE04B6F4();

  v62(v17, v10);
  v49 = swift_allocObject();
  *(v49 + 16) = v39;
  v50 = v39;
  v51 = sub_1BE052404();

  v71 = sub_1BD8B0938;
  v72 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1BD198918;
  v70 = &block_descriptor_97_2;
  v52 = _Block_copy(&aBlock);

  v53 = [v45 actionWithTitle:v51 style:1 handler:v52];
  _Block_release(v52);

  v54 = v66;
  v64(v66, v59, v10);
  v55 = PKPassKitBundle();
  if (v55)
  {
    v56 = v55;
    sub_1BE04B6F4();

    v62(v54, v10);
    v57 = sub_1BE052404();

    v31 = [objc_opt_self() alertControllerWithTitle:0 message:v57 preferredStyle:0];

    [v31 addAction_];
    [v31 addAction_];
    [v50 presentViewController:v31 animated:1 completion:0];

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_1BD8A960C(int a1, void *a2, id a3, char *a4, uint64_t a5, void *a6)
{
  v10 = [a3 matchedCard];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 identifier];
  }

  else
  {
    v12 = [a2 identifier];
  }

  sub_1BE052434();

  v13 = sub_1BE052404();

  [a2 setIdentifier_];

  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a4;
  v15 = *&a4[OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_autoFillManager];
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = sub_1BD8B09E4;
  v16[4] = v14;
  v21[4] = sub_1BD8B0A24;
  v21[5] = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1BD03E30C;
  v21[3] = &block_descriptor_130_1;
  v17 = _Block_copy(v21);
  v18 = a4;
  v19 = a6;
  v20 = v15;
  sub_1BE048964();

  [v20 updateFPANCardWithDescriptor:a2 credential:a5 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1BD8A9800(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v9 = sub_1BE051F54();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v17 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a1;
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);
  sub_1BE048C84();
  v20 = a2;
  v21 = a3;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD8B0314(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v26 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v25);
}

uint64_t sub_1BD8A9B00(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v5 = *(a2 + OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_didComplete);
  sub_1BE048964();
  v5(a3);
}

uint64_t sub_1BD8A9B78(uint64_t a1, void *a2)
{
  v3 = sub_1BE051F54();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  aBlock[4] = sub_1BD8B09DC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_121_1;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD8B0314(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v16);
}

void sub_1BD8A9E6C(void *a1)
{
  v1 = [a1 topViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for AutofillManualEntryViewController();
    if (swift_dynamicCastClass())
    {
      sub_1BD889BEC();
    }
  }
}

uint64_t sub_1BD8A9F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1BE048964();
  sub_1BD8AA008(a6, v9);
}

void sub_1BD8AA008(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_autoFillManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0C63C0;
  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  v7 = v5;
  *(inited + 32) = sub_1BE053054();
  *(inited + 40) = sub_1BE053054();
  *(inited + 48) = sub_1BE053054();
  sub_1BD112388(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD22CFF8();
  v8 = sub_1BE052A24();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  aBlock[4] = sub_1BD8B1544;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3293A4;
  aBlock[3] = &block_descriptor_201;
  v10 = _Block_copy(aBlock);
  sub_1BE048964();

  [v7 activeFPANCardsWithOptions:7 allowedCardTypes:v8 sortType:1 completion:v10];
  _Block_release(v10);
}

id sub_1BD8AA2C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD8AA360()
{
  v0 = [objc_opt_self() sharedService];
  if (v0)
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57348);
    sub_1BE050154();
    sub_1BD8B03F0(v1, 3, v2, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD8AA3F8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = type metadata accessor for AddAutofillCardView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_didComplete];
  *v10 = v6;
  *(v10 + 1) = v7;
  *&v9[OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_autoFillManager] = v3;
  v11 = &v9[OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_insertingHandler];
  *v11 = v4;
  *(v11 + 1) = v5;
  v14.receiver = v9;
  v14.super_class = v8;
  sub_1BE048964();
  v12 = v3;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD8AA4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD8B07D4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD8AA510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD8B07D4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD8AA574()
{
  sub_1BD8B07D4();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD8AA59C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD8AA610()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD8AA684()
{
  sub_1BD030220(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC9PassKitUI16DescriptorsModel__descriptors;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57380);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI16DescriptorsModel__requestingEligibility;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD8AA788()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57380);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-v9];
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69B8680]) init];
  *(v0 + 24) = xmmword_1BE0B8E60;
  v11 = OBJC_IVAR____TtC9PassKitUI16DescriptorsModel__descriptors;
  v15 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD572F0);
  sub_1BE04D874();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC9PassKitUI16DescriptorsModel__requestingEligibility;
  v14[7] = 0;
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t sub_1BD8AA980@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DescriptorsModel(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t AutoFillFPANCardsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372B8);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = &v31 - v5;
  sub_1BD8AAE50(&v31 - v5);
  v6 = type metadata accessor for AutoFillFPANCardsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_1BD8AFCA4(v1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1BD8AFD08(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v14 = sub_1BE0528D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v31 - v18;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v34 = sub_1BE04EAA4();
    v35 = &v31;
    v33 = *(v34 - 8);
    MEMORY[0x1EEE9AC00](v34, v20);
    v32 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1BE053834();

    v39 = 0xD000000000000032;
    v40 = 0x80000001BE13EA00;
    v38 = 240;
    v22 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v22);

    v31 = v3;
    v25 = MEMORY[0x1EEE9AC00](v23, v24);
    (*(v15 + 16))(&v31 - v18, &v31 - v18, v14, v25);
    v26 = v32;
    sub_1BE04EA94();
    (*(v15 + 8))(v19, v14);
    (*(v37 + 32))(a1, v36, v31);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372C0);
    return (*(v33 + 32))(a1 + *(v27 + 36), v26, v34);
  }

  else
  {
    v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372C8) + 36));
    v30 = sub_1BE04E7B4();
    (*(v15 + 32))(&v29[*(v30 + 20)], &v31 - v18, v14);
    *v29 = &unk_1BE100CF8;
    *(v29 + 1) = v12;
    return (*(v37 + 32))(a1, v36, v3);
  }
}

id sub_1BD8AAE50@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for AutoFillFPANCardsView(0);
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v49 = v4;
  v50 = &OpaqueTypeConformance2 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BE04ECF4();
  v45 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v5);
  v43 = &OpaqueTypeConformance2 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &OpaqueTypeConformance2 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57328);
  OpaqueTypeConformance2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &OpaqueTypeConformance2 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57320);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v16);
  v18 = &OpaqueTypeConformance2 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57310);
  v46 = *(v19 - 8);
  v47 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v54 = &OpaqueTypeConformance2 - v21;
  v51 = v1;
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57390);
  sub_1BD0DE4F4(&qword_1EBD57398, &qword_1EBD57390);
  sub_1BE0504A4();
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80D8], v7);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v8 + 8))(v11, v7);
    v58 = v24;
    v59 = v26;
    v27 = sub_1BD0DE4F4(&qword_1EBD57330, &qword_1EBD57328);
    v28 = sub_1BD0DDEBC();
    v29 = MEMORY[0x1E69E6158];
    sub_1BE050B74();

    (*(OpaqueTypeConformance2 + 8))(v15, v12);
    v30 = v43;
    sub_1BE051DD4();
    v58 = v12;
    v59 = v29;
    v60 = v27;
    v61 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_1BD8B0314(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    v32 = v44;
    v33 = v52;
    sub_1BE051134();
    (*(v45 + 8))(v30, v33);
    (*(v42 + 8))(v18, v32);
    v34 = v51;
    v35 = *(v51 + 8);
    v56 = *v51;
    v57 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v36 = v50;
    sub_1BD8AFCA4(v34, v50);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1BD8AFD08(v36, v38 + v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57318);
    v58 = v32;
    v59 = v33;
    v60 = OpaqueTypeConformance2;
    v61 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD57338, &qword_1EBD57318);
    v39 = v47;
    v40 = v54;
    sub_1BE050F64();

    return (*(v46 + 8))(v40, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8AB574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_1BE0528A4();
  v3[3] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD8AB60C, v5, v4);
}

uint64_t sub_1BD8AB60C()
{
  type metadata accessor for AutoFillFPANCardsView(0);
  sub_1BE04E134();
  if (*(v0 + 56))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1BD8AB700;

    return sub_1BD8AB824();
  }
}

uint64_t sub_1BD8AB700()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1BD1724EC;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1BD16DC40;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD8AB824()
{
  v1[21] = v0;
  sub_1BE0528A4();
  v1[22] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD8AB8BC, v3, v2);
}

uint64_t sub_1BD8AB8BC()
{
  v1 = *(*(v0 + 168) + 24);
  *(v0 + 200) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BD8ABA30;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57388);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BD8AE91C;
  *(v0 + 104) = &block_descriptor_143_0;
  *(v0 + 112) = v3;
  [v2 checkActiveFPANCardsForEligibilityWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BD8ABA30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1BD8ABC50;
  }

  else
  {
    v5 = sub_1BD8ABB60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD8ABB60()
{
  v1 = *(v0 + 208);

  type metadata accessor for AutoFillFPANCardsView(0);
  *(v0 + 80) = 1;
  sub_1BE04E144();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD8ABC50()
{
  v1 = *(v0 + 208);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD8ABCC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573A0);
  MEMORY[0x1EEE9AC00](v37, v3);
  v5 = &v33 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573A8);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v36 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573B0);
  v34 = *(v11 - 8);
  v12 = v34;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573B8);
  sub_1BD0DE4F4(&qword_1EBD573C0, &qword_1EBD573B8);
  v33 = v19;
  sub_1BE051A44();
  v41 = a1;
  *v5 = sub_1BE04F7B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573C8);
  sub_1BD8AD4C8(a1, &v5[*(v20 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573D0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD573D8);
  v22 = sub_1BD0DE4F4(&qword_1EBD573E0, &qword_1EBD573D8);
  v43 = v21;
  v44 = MEMORY[0x1E69E6370];
  v45 = v22;
  v46 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD573E8, &qword_1EBD573A0);
  v23 = v36;
  sub_1BE051A54();
  v24 = *(v12 + 16);
  v24(v15, v19, v11);
  v25 = *(v40 + 16);
  v26 = v35;
  v27 = v38;
  v25(v35, v23, v38);
  v28 = v39;
  v24(v39, v15, v11);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573F0);
  v25(&v28[*(v29 + 48)], v26, v27);
  v30 = *(v40 + 8);
  v30(v23, v27);
  v31 = *(v34 + 8);
  v31(v33, v11);
  v30(v26, v27);
  return (v31)(v15, v11);
}

id sub_1BD8AC164@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = sub_1BE04BD74();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v60 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = v50 - v11;
  v12 = type metadata accessor for AutoFillFPANCardsView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57420);
  v54 = *(v16 - 8);
  v55 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v52 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v50 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  KeyPath = swift_getKeyPath();
  v53 = a1;
  sub_1BD8AFCA4(a1, v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v50[1] = v14;
  v24 = swift_allocObject();
  v51 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD8AFD08(v51, v24 + v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD572F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57428);
  sub_1BD0DE4F4(&qword_1EBD57430, &qword_1EBD572F0);
  sub_1BD0DE4F4(&qword_1EBD57438, &qword_1EBD57428);
  v25 = v22;
  v26 = v60;
  v28 = v61;
  v27 = v62;
  sub_1BE0519C4();
  (*(v28 + 104))(v26, *MEMORY[0x1E69B80D8], v27);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v28 + 8))(v26, v27);
    v65 = v31;
    v66 = v33;
    v34 = v51;
    sub_1BD8AFCA4(v53, v51);
    v35 = swift_allocObject();
    sub_1BD8AFD08(v34, v35 + v23);
    sub_1BD0DDEBC();
    v36 = v63;
    sub_1BE051744();
    v37 = v54;
    v38 = *(v54 + 16);
    v39 = v52;
    v40 = v25;
    v50[0] = v25;
    v41 = v55;
    v38(v52, v40, v55);
    v43 = v56;
    v42 = v57;
    v44 = *(v56 + 16);
    v44(v64, v36, v57);
    v45 = v58;
    v38(v58, v39, v41);
    v46 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57440) + 48)];
    v47 = v64;
    v44(v46, v64, v42);
    v48 = *(v43 + 8);
    v48(v63, v42);
    v49 = *(v37 + 8);
    v49(v50[0], v41);
    v48(v47, v42);
    return v49(v39, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8AC760@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57448);
  MEMORY[0x1EEE9AC00](v43, v5);
  v7 = (&v39 - v6);
  v39 = *a1;
  v8 = v39;
  v9 = type metadata accessor for AutoFillFPANCardsView(0);
  v10 = *(a2 + *(v9 + 36));
  v40 = *(a2 + *(v9 + 40));
  v11 = v40;
  v41 = v10;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v13 = (v7 + v12[5]);
  type metadata accessor for DescriptorsModel(0);
  sub_1BD8B0314(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v14 = v10;
  v15 = v11;
  v42 = v8;
  *v13 = sub_1BE04EEC4();
  v13[1] = v16;
  v17 = v12[6];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *(v7 + v17) = sub_1BE04E124();
  v18 = v7 + v12[7];
  *v18 = sub_1BD7B913C;
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = v7 + v12[8];
  LOBYTE(v46) = 0;
  sub_1BE051694();
  v20 = v48;
  *v19 = v47;
  *(v19 + 1) = v20;
  v21 = v7 + v12[9];
  LOBYTE(v46) = 0;
  sub_1BE051694();
  v22 = v48;
  *v21 = v47;
  *(v21 + 1) = v22;
  v23 = v7 + v12[10];
  LOBYTE(v46) = 0;
  sub_1BE051694();
  v24 = v48;
  *v23 = v47;
  *(v23 + 1) = v24;
  v25 = (v7 + v12[11]);
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53A70);
  sub_1BE051694();
  v27 = v47;
  v26 = v48;
  *v25 = v47;
  v25[1] = v26;
  v28 = v7 + v12[12];
  LOBYTE(v46) = 0;
  sub_1BE048964();
  v29 = v27;
  sub_1BE051694();
  v30 = v48;
  *v28 = v47;
  *(v28 + 1) = v30;
  v31 = v12[13];
  v32 = v12[14];
  *(v7 + v32) = 0;
  v33 = v12[15];
  *(v7 + v33) = 0;
  *(v7 + v31) = v39;
  v47 = v27;
  v48 = v26;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
  sub_1BE0516B4();

  v34 = v40;
  *(v7 + v32) = v41;
  *(v7 + v33) = v34;
  v35 = *(a2 + 24);
  v36 = sub_1BE04D804();
  v37 = (v7 + *(v43 + 36));
  *v37 = v36;
  v37[1] = v35;
  v45 = v42;
  sub_1BD8B12F4();
  sub_1BD8B1348();
  sub_1BE048964();
  return sub_1BE04E8B4();
}

uint64_t sub_1BD8ACB24()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  sub_1BE0516B4();
}

uint64_t sub_1BD8ACBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for AutoFillFPANCardsView(0);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573D8);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v7);
  v9 = &v14 - v8;
  sub_1BE04E154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  sub_1BD1103C8();
  sub_1BE051814();
  sub_1BE04E134();
  sub_1BD8AFCA4(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v11 = swift_allocObject();
  sub_1BD8AFD08(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1BD0DE4F4(&qword_1EBD573E0, &qword_1EBD573D8);
  v12 = v15;
  sub_1BE051064();

  return (*(v6 + 8))(v9, v12);
}

id sub_1BD8ACE5C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80F0], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v16 = v8;
    v17 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v16 = v11;
    v17 = v12;
    LOBYTE(v10) = v14 & 1;
    v18 = v14 & 1;
    v19 = v15;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v11, v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8AD024(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for AutoFillFPANCardsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20[-v12];
  if (*a2 == 1)
  {
    v14 = sub_1BE0528D4();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    sub_1BD8AFCA4(a3, &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_1BE0528A4();
    v15 = sub_1BE052894();
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_1BD8AFD08(v9, v17 + v16);
    sub_1BD122F00(0, 0, v13, &unk_1BE101170, v17);
  }

  else
  {
    v20[15] = 0;
    return sub_1BE04E144();
  }
}

uint64_t sub_1BD8AD220(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1BE0528A4();
  v1[4] = sub_1BE052894();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1BD8AD2D0;

  return sub_1BD8AB824();
}

uint64_t sub_1BD8AD2D0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_1BE052844();
    v4 = v3;
    v5 = sub_1BD8B1518;
  }

  else
  {
    v2 = sub_1BE052844();
    v4 = v6;
    v5 = sub_1BD8AD454;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1BD8AD454()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

id sub_1BD8AD4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v62 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573F8);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v55 - v4;
  v6 = type metadata accessor for AutoFillFPANCardsView(0);
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57400);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - v14;
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v58 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v55 - v27;
  (*(v17 + 104))(v20, *MEMORY[0x1E69B80F0], v16, v26);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v17 + 8))(v20, v16);
    aBlock = v31;
    v64 = v33;
    sub_1BD0DDEBC();
    v34 = sub_1BE0506C4();
    v36 = v35;
    aBlock = v34;
    v64 = v35;
    LOBYTE(v33) = v37 & 1;
    LOBYTE(v65) = v37 & 1;
    v66 = v38;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v34, v36, v33);

    v39 = v57;
    v40 = *(v57 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((aBlock & 1) != 0 || [*(v40 + 16) isCheckingForEligibleCards])
    {
      v41 = v39;
      v42 = v56;
      sub_1BD8AFCA4(v41, v56);
      v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v44 = swift_allocObject();
      sub_1BD8AFD08(v42, v44 + v43);
      v45 = *(v40 + 16);
      v67 = sub_1BD8B0D88;
      v68 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1BD126964;
      v66 = &block_descriptor_160_0;
      v46 = _Block_copy(&aBlock);
      v47 = v45;
      sub_1BE048964();

      [v47 performAfterEligibilityFinishes_];
      _Block_release(v46);

      *v5 = sub_1BE04F504();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57410);
      sub_1BD8AE234(&v5[*(v48 + 44)]);
      sub_1BD8B0E14(v5, v15);
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    (*(v59 + 56))(v15, v49, 1, v60);
    v50 = v58;
    sub_1BD0DE19C(v28, v58, &qword_1EBD452C0);
    v51 = v61;
    sub_1BD0DE19C(v15, v61, &qword_1EBD57400);
    v52 = v62;
    sub_1BD0DE19C(v50, v62, &qword_1EBD452C0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57408);
    v54 = v52 + *(v53 + 48);
    *v54 = 0x4030000000000000;
    *(v54 + 8) = 0;
    sub_1BD0DE19C(v51, v52 + *(v53 + 64), &qword_1EBD57400);
    sub_1BD0DE53C(v15, &qword_1EBD57400);
    sub_1BD0DE53C(v28, &qword_1EBD452C0);
    sub_1BD0DE53C(v51, &qword_1EBD57400);
    return sub_1BD0DE53C(v50, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8ADB1C(uint64_t a1)
{
  v2 = type metadata accessor for AutoFillFPANCardsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD8AFCA4(a1, v6);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD8AFD08(v6, v14 + v13);
  sub_1BD122C00(0, 0, v10, &unk_1BE101150, v14);
}

uint64_t sub_1BD8ADCD4()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD5FEA68;

  return sub_1BD8ADD80();
}

uint64_t sub_1BD8ADD80()
{
  v1[27] = v0;
  sub_1BE0528A4();
  v1[28] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[29] = v3;
  v1[30] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD8ADE18, v3, v2);
}

uint64_t sub_1BD8ADE18()
{
  v1 = *(*(v0 + 216) + 24);
  *(v0 + 248) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 272) = 0;
  swift_retain_n();
  sub_1BE04D8C4();
  v2 = *(v1 + 16);
  *(v0 + 256) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0C63C0;
  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  v4 = v2;
  *(inited + 32) = sub_1BE053054();
  *(inited + 40) = sub_1BE053054();
  *(inited + 48) = sub_1BE053054();
  sub_1BD112388(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD22CFF8();
  v5 = sub_1BE052A24();
  *(v0 + 264) = v5;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_1BD8AE06C;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C30);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BD7BF8E4;
  *(v0 + 104) = &block_descriptor_168;
  *(v0 + 112) = v6;
  [v4 activeFPANCardsWithOptions:7 allowedCardTypes:v5 sortType:1 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BD8AE06C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1BD8AE174, v2, v1);
}

uint64_t sub_1BD8AE174()
{
  v2 = v0[32];
  v1 = v0[33];

  v3 = v0[25];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[26] = v4;
  sub_1BE04D8C4();
  v5 = v0[1];

  return v5();
}

id sub_1BD8AE234@<X0>(_BYTE *a1@<X8>)
{
  v50 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v6);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45[-v11];
  sub_1BE04E4F4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v2 + 8))(v5, v1);
    v56 = v15;
    v57 = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    LOBYTE(v17) = v21;
    v47 = v22;
    v46 = sub_1BE050204();
    sub_1BE04E1F4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = v17 & 1;
    v71 = v17 & 1;
    v68 = 0;
    v32 = v49;
    v33 = *(v49 + 16);
    v34 = v8;
    v35 = v8;
    v48 = v8;
    v36 = v51;
    v33(v35, v12, v51);
    v37 = v50;
    v33(v50, v34, v36);
    v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57418) + 48)];
    *&v52 = v18;
    v39 = v20;
    *(&v52 + 1) = v20;
    LOBYTE(v53) = v31;
    *(&v53 + 1) = *v70;
    DWORD1(v53) = *&v70[3];
    v40 = v47;
    *(&v53 + 1) = v47;
    LOBYTE(v20) = v46;
    LOBYTE(v54) = v46;
    *(&v54 + 1) = *v69;
    DWORD1(v54) = *&v69[3];
    *(&v54 + 1) = v24;
    *v55 = v26;
    *&v55[8] = v28;
    *&v55[16] = v30;
    v55[24] = 0;
    v41 = v52;
    v42 = v53;
    *(v38 + 57) = *&v55[9];
    v43 = *v55;
    v38[2] = v54;
    v38[3] = v43;
    *v38 = v41;
    v38[1] = v42;
    sub_1BD0DE19C(&v52, &v56, &unk_1EBD3DF90);
    v44 = *(v32 + 8);
    v44(v12, v36);
    v56 = v18;
    v57 = v39;
    v58 = v31;
    *v59 = *v70;
    *&v59[3] = *&v70[3];
    v60 = v40;
    v61 = v20;
    *v62 = *v69;
    *&v62[3] = *&v69[3];
    v63 = v24;
    v64 = v26;
    v65 = v28;
    v66 = v30;
    v67 = 0;
    sub_1BD0DE53C(&v56, &unk_1EBD3DF90);
    return (v44)(v48, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD8AE674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AutoFillFPANCardsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  v19 = *(*(a1 + 24) + 16);
  sub_1BD8AFCA4(a1, &v18 - v11);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1BD8AFD08(v12, v14 + v13);
  sub_1BD8AFCA4(a1, v8);
  v15 = swift_allocObject();
  sub_1BD8AFD08(v8, v15 + v13);
  v16 = v19;
  *a2 = v19;
  a2[1] = sub_1BD8B0CF0;
  a2[2] = v14;
  a2[3] = sub_1BD8B0D08;
  a2[4] = v15;

  return v16;
}

uint64_t sub_1BD8AE800()
{
  type metadata accessor for AutoFillFPANCardsView(0);
  sub_1BE048964();
  sub_1BE04E134();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD8AE898(uint64_t result)
{
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048C84();
    sub_1BE048964();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD8AE91C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v8 = swift_allocError();
    *v9 = a5;
    v10 = a5;

    return MEMORY[0x1EEE6DEE8](v7, v8);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    v11 = sub_1BE052744();
    v12 = sub_1BE052744();
    v13 = *(*(v7 + 64) + 40);
    *v13 = a2;
    *(v13 + 8) = v11;
    *(v13 + 16) = v12;

    return swift_continuation_throwingResume();
  }
}

void *sub_1BD8AEA3C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F504();
  v24 = 1;
  sub_1BD8AEC0C(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v26, __src, sizeof(v26));
  sub_1BD0DE19C(__dst, &v21, &qword_1EBD57358);
  sub_1BD0DE53C(v26, &qword_1EBD57358);
  memcpy(&v23[7], __dst, 0x180uLL);
  v7 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B6CA0;
  v9 = sub_1BE0501E4();
  *(v8 + 32) = v9;
  v10 = sub_1BE0501F4();
  *(v8 + 33) = v10;
  v11 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v9)
  {
    v11 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v10)
  {
    v11 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  result = memcpy((a3 + 17), v23, 0x187uLL);
  *(a3 + 408) = v11;
  *(a3 + 416) = v13;
  *(a3 + 424) = v15;
  *(a3 + 432) = v17;
  *(a3 + 440) = v19;
  *(a3 + 448) = 0;
  return result;
}

void sub_1BD8AEC0C(void *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v63 = a3;
  v5 = sub_1BE051584();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD8AF68C(a1, &v110);
  v66 = sub_1BE050204();
  [a1 type];
  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v118 = 0;
  v65 = sub_1BE050224();
  [a1 type];
  sub_1BE04E1F4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v119 = 0;
  v29 = sub_1BE04F7C4();
  LOBYTE(v90[0]) = 1;
  sub_1BD8AF39C(a1, a2, v117);
  *&v106[7] = v117[0];
  *&v106[23] = v117[1];
  *&v106[39] = v117[2];
  *&v106[55] = v117[3];
  v30 = LOBYTE(v90[0]);
  v31 = [a1 cardIsInWallet];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v64 = v29;
  if (!v31)
  {
    goto LABEL_8;
  }

  v40 = PKPassKitUIBundle();
  if (v40)
  {
    v41 = v40;
    v42 = sub_1BE052404();
    v43 = sub_1BE052404();
    v44 = [v41 URLForResource:v42 withExtension:v43];

    if (v44)
    {
      sub_1BE04A9F4();

      v45 = sub_1BE04A9C4();
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v45 = 0;
    }

    v46 = PKUIScreenScale();
    v47 = PKUIImageFromPDF(v45, 30.0, 19.0, v46);

    v29 = v64;
    if (v47)
    {
      sub_1BE051544();
      v49 = v60;
      v48 = v61;
      v50 = v62;
      (*(v61 + 104))(v60, *MEMORY[0x1E6981630], v62);
      v51 = sub_1BE0515E4();

      (*(v48 + 8))(v49, v50);
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v32 = v51;
      LOBYTE(v90[0]) = 1;
      v33 = v120;
      v34 = v121;
      v35 = v122;
      v36 = v123;
      v37 = v124;
      v38 = v125;
      v39 = 1;
LABEL_8:
      v60 = v38;
      v61 = v37;
      v70[4] = v114;
      v70[5] = v115;
      v70[6] = v116;
      v70[0] = v110;
      v70[1] = v111;
      v70[2] = v112;
      v70[3] = v113;
      LOBYTE(v71) = v66;
      DWORD1(v71) = *&v109[3];
      *(&v71 + 1) = *v109;
      *(&v71 + 1) = v14;
      *&v72 = v16;
      *(&v72 + 1) = v18;
      *&v73 = v20;
      BYTE8(v73) = 0;
      HIDWORD(v73) = *&v108[3];
      *(&v73 + 9) = *v108;
      LOBYTE(v74) = v65;
      DWORD1(v74) = *&v107[3];
      *(&v74 + 1) = *v107;
      *(&v74 + 1) = v22;
      *&v75[0] = v24;
      *(&v75[0] + 1) = v26;
      *&v75[1] = v28;
      BYTE8(v75[1]) = 0;
      v69[3] = v113;
      v69[4] = v114;
      v69[1] = v111;
      v69[2] = v112;
      v69[0] = v110;
      v69[7] = v71;
      v69[8] = v72;
      v69[5] = v115;
      v69[6] = v116;
      *(&v69[11] + 9) = *(v75 + 9);
      v69[10] = v74;
      v69[11] = v75[0];
      v69[9] = v73;
      v76[0] = v29;
      v76[1] = 0;
      v77[0] = v30;
      *&v77[1] = *v106;
      *&v77[17] = *&v106[16];
      *&v77[33] = *&v106[32];
      *&v77[49] = *&v106[48];
      *&v77[64] = *&v106[63];
      v69[13] = v29;
      v69[14] = *v77;
      *&v69[18] = *&v106[63];
      v69[16] = *&v77[32];
      v69[17] = *&v77[48];
      v69[15] = *&v77[16];
      v68 = 1;
      v78[0] = v32;
      v78[1] = 0;
      *&v79 = v39;
      *(&v79 + 1) = v33;
      *&v80 = v34;
      *(&v80 + 1) = v35;
      *&v81 = v36;
      *(&v81 + 1) = v37;
      v82 = v38;
      *(v67 + 7) = v32;
      *(&v67[4] + 7) = v38;
      *(&v67[3] + 7) = v81;
      *(&v67[2] + 7) = v80;
      *(&v67[1] + 7) = v79;
      LODWORD(v62) = v30;
      v52 = v63;
      v53 = v32;
      v54 = v34;
      v55 = v36;
      v56 = v39;
      memcpy(v63, v69, 0x128uLL);
      *(v52 + 37) = 0;
      v52[304] = 1;
      v57 = v67[3];
      *(v52 + 337) = v67[2];
      *(v52 + 353) = v57;
      *(v52 + 23) = *(&v67[3] + 15);
      v58 = v67[1];
      *(v52 + 305) = v67[0];
      *(v52 + 321) = v58;
      v83[0] = v53;
      v83[1] = 0;
      v83[2] = v56;
      v83[3] = v33;
      v83[4] = v54;
      v83[5] = v35;
      v83[6] = v55;
      v83[7] = v61;
      v83[8] = v60;
      sub_1BD0DE19C(v70, v90, &qword_1EBD57360);
      sub_1BD0DE19C(v76, v90, &qword_1EBD3B890);
      sub_1BD0DE19C(v78, v90, &qword_1EBD57368);
      sub_1BD0DE53C(v83, &qword_1EBD57368);
      v84[0] = v64;
      v84[1] = 0;
      v85 = v62;
      v87 = *&v106[16];
      v88 = *&v106[32];
      *v89 = *&v106[48];
      *&v89[15] = *&v106[63];
      v86 = *v106;
      sub_1BD0DE53C(v84, &qword_1EBD3B890);
      v90[3] = v113;
      v90[4] = v114;
      v90[5] = v115;
      v90[6] = v116;
      v90[0] = v110;
      v90[1] = v111;
      v90[2] = v112;
      v91 = v66;
      *&v92[3] = *&v109[3];
      *v92 = *v109;
      v93 = v14;
      v94 = v16;
      v95 = v18;
      v96 = v20;
      v97 = 0;
      *v98 = *v108;
      *&v98[3] = *&v108[3];
      v99 = v65;
      *v100 = *v107;
      *&v100[3] = *&v107[3];
      v101 = v22;
      v102 = v24;
      v103 = v26;
      v104 = v28;
      v105 = 0;
      sub_1BD0DE53C(v90, &qword_1EBD57360);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD8AF39C(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 cardNickname];
  sub_1BE052434();

  sub_1BD0DDEBC();
  v7 = sub_1BE0506C4();
  v9 = v8;
  v11 = v10;
  if (a2)
  {
    sub_1BE04FC84();
  }

  else
  {
    sub_1BE04FC74();
  }

  v39 = sub_1BE050574();
  v13 = v12;
  v38 = v14;
  v16 = v15;
  sub_1BD0DDF10(v7, v9, v11 & 1);

  v17 = [a1 displayableLastFour];
  if (!v17)
  {
    sub_1BE052434();
    v17 = sub_1BE052404();
  }

  v18 = PKMaskedPaymentPAN();

  if (v18)
  {
    sub_1BE052434();

    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v36 = v13;
    v37 = v16;
    if (a2)
    {
      sub_1BE04FC84();
    }

    else
    {
      sub_1BE04FC94();
    }

    v24 = sub_1BE050574();
    v26 = v25;
    v28 = v27;
    sub_1BD0DDF10(v19, v21, v23 & 1);

    sub_1BE050424();
    v29 = sub_1BE0505F4();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_1BD0DDF10(v24, v26, v28 & 1);

    *a3 = v39;
    *(a3 + 8) = v36;
    *(a3 + 16) = v38 & 1;
    *(a3 + 24) = v37;
    *(a3 + 32) = v29;
    *(a3 + 40) = v31;
    *(a3 + 48) = v33 & 1;
    *(a3 + 56) = v35;
    sub_1BD0D7F18(v39, v36, v38 & 1);
    sub_1BE048C84();
    sub_1BD0D7F18(v29, v31, v33 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v29, v31, v33 & 1);

    sub_1BD0DDF10(v39, v36, v38 & 1);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1BD8AF68C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 type] == 1)
  {
    v10 = [a1 artwork];
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    sub_1BE051544();
    (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v4);
    v11 = sub_1BE0515E4();

    (*(v5 + 8))(v9, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v36) = 1;
    *&v19[1] = v33;
    *&v19[3] = v34;
    *&v19[5] = v35;
    v12 = [objc_opt_self() systemGray4Color];
    v13 = sub_1BE0511C4();
    v23 = *(v19 + 2);
    LOBYTE(v31) = 1;
    v20 = v11;
    v21 = 0;
    v22 = 1;
    v24 = *(&v19[2] + 2);
    *v25 = *(&v19[4] + 2);
    *&v25[14] = v19[6];
    LOBYTE(v26) = 1;
    *(&v26 + 1) = v13;
    v27 = xmmword_1BE100C50;
    v28 = 1;
  }

  else
  {
    v14 = [a1 artwork];
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    sub_1BE051544();
    (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v4);
    v15 = sub_1BE0515E4();

    (*(v5 + 8))(v9, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v29[22] = v34;
    *&v29[38] = v35;
    *&v29[6] = v33;
    v23 = *v29;
    LOBYTE(v36) = 1;
    v30 = 0;
    v20 = v15;
    v21 = 0;
    v22 = 1;
    v24 = *&v29[16];
    *v25 = *&v29[32];
    *&v25[14] = *(&v35 + 1);
    v26 = v31;
    v27 = v32;
    v28 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57370);
  sub_1BD23F914();
  sub_1BD8B0828();
  sub_1BE04F9A4();
  v16 = v41[0];
  *(a2 + 64) = v40;
  *(a2 + 80) = v16;
  *(a2 + 89) = *(v41 + 9);
  v17 = v37;
  *a2 = v36;
  *(a2 + 16) = v17;
  result = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = result;
  return result;
}