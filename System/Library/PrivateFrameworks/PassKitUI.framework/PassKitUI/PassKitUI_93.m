uint64_t sub_1BDA1A068(char a1)
{
  v2 = [v1 visibleFieldIdentifiers];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  v27 = v4;
  if (v5)
  {
    v6 = v4 + 40;
    v28 = 1;
    v7 = &selRef_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize_;
    v8 = *MEMORY[0x1E69BC1C0];
    v9 = &selRef_hoursOfDay;
    v29 = v1;
    while (1)
    {
      sub_1BE048C84();
      v10 = sub_1BE052404();

      v11 = [v1 v7[462]];

      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = [v11 v9[20]];
      v13 = sub_1BE052434();
      v15 = v14;

      if (v13 == sub_1BE052434() && v15 == v16)
      {

        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v18 = sub_1BE053B84();

        if (v18 & 1) != 0 && (a1)
        {
LABEL_6:

          goto LABEL_7;
        }
      }

      v19 = v8;
      v20 = v7;
      v21 = v9;
      v22 = [v11 isReadonly];
      v23 = [v11 isOptional];
      v24 = [v11 submissionStringMeetsAllRequirements];
      v25 = [v11 submissionStringMeetsValidationRegex];

      if (v22)
      {
        v9 = v21;
        v7 = v20;
        v8 = v19;
        v1 = v29;
      }

      else
      {
        v9 = v21;
        v7 = v20;
        v8 = v19;
        if (v23)
        {
          v1 = v29;
          if ((v25 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v1 = v29;
          if ((v24 & 1) == 0)
          {
LABEL_23:
            v28 = 0;
          }
        }
      }

LABEL_7:
      v6 += 16;
      if (!--v5)
      {
        goto LABEL_25;
      }
    }
  }

  v28 = 1;
LABEL_25:

  return v28 & 1;
}

void sub_1BDA1A304()
{
  sub_1BD0D4534(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton);
}

uint64_t sub_1BDA1A404(void *a1, void *a2)
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
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1BDA1B55C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_69_3;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v20);
}

void sub_1BDA1A6A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
    v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
    *(v3 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = a2;
    v4 = a2;
  }
}

unint64_t sub_1BDA1A710()
{
  result = qword_1EBD5BF28;
  if (!qword_1EBD5BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BF28);
  }

  return result;
}

void sub_1BDA1A764()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BDA18F9C();
  }
}

void sub_1BDA1A7B8(void *a1, char a2, void *a3)
{
  [a1 setShowPrimaryButton_];
  v4 = [a1 visibleFieldIdentifiers];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE052744();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 40;
    v9 = 1;
    do
    {
      sub_1BE048C84();
      v10 = sub_1BE052404();

      v11 = [a1 fieldForIdentifier_];

      if (v11)
      {

        v12 = [v11 isReadonly];
        v13 = [v11 isOptional];
        v14 = [v11 submissionStringMeetsAllRequirements];
        v15 = [v11 submissionStringMeetsValidationRegex];

        if (!v12)
        {
          if (v13)
          {
            v9 &= v15;
          }

          else
          {
            v9 &= v14;
          }
        }
      }

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  [a1 _setPrimaryButtonEnabled_];
  if (a2)
  {
    v16 = [a3 primaryButton];
    if (v16)
    {
      v19 = v16;
      [v16 pkui:0 setAlpha:0.0 animated:?];
      [v19 pkui:1 setAlpha:1.0 animated:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BDA1A9F4(char *a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton;
  v11 = *&a1[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton];
  if (v11)
  {
    return [a2 setTertiaryActionButton_];
  }

  (*(v5 + 104))(v9, *MEMORY[0x1E69B80D8], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    sub_1BE04B6F4();

    (*(v5 + 8))(v9, v4);
    v14 = sub_1BE052404();

    v15 = [a2 createAlternateActionButtonWithTitle_];

    v44 = v15;
    [v44 addTarget:a1 action:sel_verifyLaterButtonPressed forControlEvents:0x2000];
    v16 = [a1 visibleFieldIdentifiers];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BE052744();
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v45 = v10;
    v46 = a2;
    v19 = *(v18 + 16);
    v43 = v18;
    if (v19)
    {
      v20 = v18 + 40;
      v47 = 1;
      v21 = &selRef_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize_;
      v22 = *MEMORY[0x1E69BC1C0];
      v23 = &selRef_hoursOfDay;
      v48 = a1;
      while (1)
      {
        sub_1BE048C84();
        v24 = sub_1BE052404();

        v25 = [a1 v21[462]];

        if (v25)
        {
          v26 = [v25 v23[20]];
          v27 = sub_1BE052434();
          v29 = v28;

          if (v27 == sub_1BE052434() && v29 == v30)
          {
          }

          else
          {
            v32 = sub_1BE053B84();

            if (v32)
            {
            }

            else
            {
              v33 = v22;
              v34 = v21;
              v35 = v23;
              v36 = [v25 isReadonly];
              v37 = [v25 isOptional];
              v38 = [v25 submissionStringMeetsAllRequirements];
              v39 = [v25 submissionStringMeetsValidationRegex];

              if (v36)
              {
                v23 = v35;
                v21 = v34;
                v22 = v33;
                a1 = v48;
              }

              else
              {
                v23 = v35;
                v21 = v34;
                v22 = v33;
                if (v37)
                {
                  a1 = v48;
                  if ((v39 & 1) == 0)
                  {
                    goto LABEL_23;
                  }
                }

                else
                {
                  a1 = v48;
                  if ((v38 & 1) == 0)
                  {
LABEL_23:
                    v47 = 0;
                  }
                }
              }
            }
          }
        }

        v20 += 16;
        if (!--v19)
        {
          goto LABEL_25;
        }
      }
    }

    v47 = 1;
LABEL_25:

    v40 = v44;
    [v44 setEnabled_];

    v41 = v45;
    v42 = *&a1[v45];
    *&a1[v45] = v40;

    v11 = *&a1[v41];
    a2 = v46;
    return [a2 setTertiaryActionButton_];
  }

  __break(1u);
  return result;
}

void sub_1BDA1AE08(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v57 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v50 - v23;
  v25 = [a1 hasLocalizedTitleAndMessage];
  v26 = MEMORY[0x1E69B80D8];
  if ((v25 & 1) == 0)
  {
    v52 = v12;
    v53 = v2;
    v56 = a1;
    v27 = *(v9 + 104);
    v55 = *MEMORY[0x1E69B80D8];
    v54 = v27;
    v27(v24);
    v28 = PKPassKitBundle();
    if (v28)
    {
      v29 = v28;
      sub_1BE04B6F4();

      v51 = *(v9 + 8);
      v51(v24, v8);
      v30 = sub_1BE052404();

      v31 = v56;
      [v56 setLocalizedTitle_];

      v54(v19, v55, v8);
      v32 = PKPassKitBundle();
      if (v32)
      {
        v33 = v32;
        sub_1BE04B6F4();

        v51(v19, v8);
        v34 = sub_1BE052404();

        [v31 setLocalizedMessage_];

        a1 = v31;
        v12 = v52;
        v2 = v53;
        v26 = MEMORY[0x1E69B80D8];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_5:
  sub_1BE04BC34();
  v35 = sub_1BE04BA54();
  (*(v58 + 8))(v7, v59);
  v36 = *v26;
  v37 = *(v9 + 104);
  if (v35)
  {
    v38 = v57;
    v37(v57, v36, v8);
    v39 = PKPassKitBundle();
    if (v39)
    {
      v40 = v39;
      v42 = sub_1BE04B6F4();
LABEL_10:
      v44 = v41;

      (*(v9 + 8))(v38, v8);
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v45 = swift_allocObject();
      *(v45 + 16) = v2;
      v46 = swift_allocObject();
      *(v46 + 16) = v2;
      v47 = swift_allocObject();
      *(v47 + 16) = v2;
      v48 = v2;
      v49 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v42, v44, sub_1BDA1B53C, v45, sub_1BDA1B544, v46, sub_1BDA1B54C, v47);

      [v48 presentViewController:v49 animated:1 completion:0];

      return;
    }

    goto LABEL_13;
  }

  v37(v12, v36, v8);
  v43 = PKPassKitBundle();
  if (v43)
  {
    v40 = v43;
    v42 = sub_1BE04B6F4();
    v38 = v12;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1BDA1B3A0(char *a1)
{
  if ((a1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] & 1) == 0)
  {
    v1 = *&a1[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
    if (v1)
    {
      v3 = v1;
      v4 = [a1 fieldsModel];
      if (v4)
      {
        v5 = v4;
        sub_1BD8145A8(v4);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BDA1B444(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD81521C();
  }
}

void sub_1BDA1B4A0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t AccountAutomaticPaymentsModel.__allocating_init(controller:)(void *a1)
{
  v2 = swift_allocObject();
  AccountAutomaticPaymentsModel.init(controller:)(a1);
  return v2;
}

uint64_t sub_1BDA1B5C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1BDA1B698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v5 = sub_1BE04AF64();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BDA1B790(uint64_t a1)
{
  v2 = sub_1BE04AF64();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_1BDA1D640(v6);
}

uint64_t sub_1BDA1B85C()
{
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  return *(v0 + 24);
}

uint64_t sub_1BDA1B8FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1BDA1B9CC(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {

    return sub_1BDA20DE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BDA1BB28()
{
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  return *(v0 + 40);
}

uint64_t sub_1BDA1BBC8(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
    sub_1BDA217C4();

    return sub_1BDA21BE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BDA1BCF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  sub_1BDA217C4();
  return sub_1BDA21BE0();
}

void sub_1BDA1BD2C()
{
  v1 = *(v0 + 48);
  if ([v1 featureIdentifier] == 2)
  {
    v2 = [v1 account];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 creditDetails];

      if (v4)
      {
        v5 = [v4 termsIdentifier];

        if (v5)
        {
          sub_1BE052434();
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BDA1BE00()
{
  v1 = *(v0 + 48);
  if ([v1 featureIdentifier] == 2)
  {
    v2 = [v1 account];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 creditDetails];

      if (v4)
      {
        v5 = [v4 currencyCode];

        if (v5)
        {
          sub_1BE052434();

          return;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_1BDA1BEDC()
{
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BDA1BF9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  result = *(v1 + v3);
  v5 = *(result + 16);
  if (v5 == *(a1 + 16))
  {
    if (v5)
    {
      v6 = result == a1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
LABEL_10:
      *(v1 + v3) = a1;
    }

    else
    {
      v7 = (result + 32);
      v8 = (a1 + 32);
      while (v5)
      {
        if (*v7 != *v8)
        {
          goto LABEL_11;
        }

        ++v7;
        ++v8;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BDA1C114(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1BE048C84();
}

uint64_t sub_1BDA1C264(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  return *(v2 + *a2);
}

uint64_t sub_1BDA1C32C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BDA1C454@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  return sub_1BD0DE19C(v9 + v7, a3, a2);
}

uint64_t sub_1BDA1C534(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__featureError;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD416C0);
  v8 = sub_1BDA26E18(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD416C0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD416C0);
    swift_beginAccess();
    sub_1BD2C7C4C(v6, v1 + v7, &qword_1EBD416C0);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD416C0);
}

uint64_t sub_1BDA1C73C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v15 - v11;
  sub_1BD0DE19C(a2, &v15 - v11, a3);
  v13 = *a5;
  swift_beginAccess();
  sub_1BD2C7C4C(v12, a1 + v13, a3);
  return swift_endAccess();
}

uint64_t sub_1BDA1C820()
{
  v1 = v0;
  swift_getKeyPath();
  v22 = v0;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  if (!*(*(v1 + v2) + 16))
  {
    [*(v1 + 48) featureIdentifier];
    v14 = sub_1BE04C124();
    v16 = v15;
    sub_1BDA22B14();
    if (!v18)
    {
      return v14;
    }

    v21 = v17;
    MEMORY[0x1BFB3F610](2570, 0xE200000000000000);
    MEMORY[0x1BFB3F610](v14, v16);

    return v21;
  }

  swift_getKeyPath();
  sub_1BE04B594();

  v3 = *(v1 + 40);
  if (v3 == 4)
  {
    v19 = "TS_DATE_FOOTER_BIWEEKLY_DATE";
    v20 = 0xD00000000000003ALL;
    return sub_1BDA1CBBC(v20, v19 | 0x8000000000000000);
  }

  if (v3 == 5)
  {
    v19 = "PKAccountServiceUseOrdinalDay";
    v20 = 0xD00000000000003CLL;
    return sub_1BDA1CBBC(v20, v19 | 0x8000000000000000);
  }

  if (v3 != 6)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay;
  v5 = sub_1BDA2391C(*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay));
  v7 = v6;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000037, 0x80000001BE148310);
  swift_getKeyPath();
  sub_1BE04B594();

  v8 = *(v1 + v4);
  if (v8 >= 29)
  {
    v9 = 0x414C5F524F5F3932;
  }

  else
  {
    v9 = 0x38325F4F545F31;
  }

  if (v8 >= 29)
  {
    v10 = 0xEB00000000524554;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  MEMORY[0x1BFB3F610](v9, v10);

  [*(v1 + 48) featureIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1BD110550();
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  v12 = sub_1BE04C134();

  return v12;
}

uint64_t sub_1BDA1CBBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BDA1DF28();
  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v37 = v2;
  v30 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v10 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v29 = *(v5 + 16);
  v29(v8, v2 + v10, v4);
  v11 = sub_1BE04AE64();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = [v9 stringFromDate_];

  v14 = sub_1BE052434();
  v32 = v15;
  v33 = v14;

  v16 = sub_1BDA1E0E8();
  swift_getKeyPath();
  v36 = v3;
  sub_1BE04B594();

  v29(v8, v3 + v10, v4);
  v17 = sub_1BE04AE64();
  v12(v8, v4);
  v18 = [v16 stringFromDate_];

  v19 = sub_1BE052434();
  v21 = v20;

  [*(v3 + 48) featureIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0B6CA0;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1BD110550();
  v25 = v32;
  *(v22 + 32) = v33;
  *(v22 + 40) = v25;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 64) = v24;
  *(v22 + 72) = v19;
  *(v22 + 80) = v21;
  v26 = sub_1BE04C134();

  return v26;
}

uint64_t sub_1BDA1CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  if (MEMORY[0x1BFB40440](*(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount), *(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 8), *(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 16), a1, a2, a3))
  {
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = v4;

    return sub_1BDA21BE0();
  }

  else
  {
    v10[3] = HIWORD(v4);
    KeyPath = swift_getKeyPath();
    v12 = v10;
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    v13 = v3;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BDA1D0E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4;
  return sub_1BDA21BE0();
}

uint64_t sub_1BDA1D19C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  return *(v2 + *a2);
}

__n128 sub_1BDA1D258@<Q0>(uint64_t *a1@<X0>, void *a2@<X4>, __n128 *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v6 = (v5 + *a2);
  result = *v6;
  *a3 = *v6;
  a3[1].n128_u32[0] = v6[1].n128_u32[0];
  return result;
}

uint64_t sub_1BDA1D388(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v11 = v6 + *a4;
  result = MEMORY[0x1BFB40440](*v11, *(v11 + 8), *(v11 + 16), a1, a2, a3);
  if (result)
  {
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v8;
  }

  else
  {
    v16 = HIWORD(v8);
    v15 = HIWORD(a2);
    v17 = a6;
    KeyPath = swift_getKeyPath();
    v18 = &v15;
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    v19 = v6;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BDA1D548@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v4 = sub_1BE04AF64();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1BDA1D640(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1BDA26C5C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  v16[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_1BDA1D8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1BDA1D9FC()
{
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay);
}

uint64_t sub_1BDA1DAA4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) == a1)
  {
    sub_1BDA217C4();

    return sub_1BDA21BE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BDA1DBDC(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) = a2;
  sub_1BDA217C4();
  return sub_1BDA21BE0();
}

uint64_t sub_1BDA1DC18()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___useOrdinalDay;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___useOrdinalDay);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1BDA1DC5C(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1BDA1DC5C(uint64_t a1)
{
  v2 = sub_1BE052404();
  [*(a1 + 48) featureIdentifier];
  v3 = PKLocalizedFeatureString();

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BE052434();
  v6 = v5;

  if (v4 == 49 && v6 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v8 = sub_1BE053B84();

    return v8 & 1;
  }
}

void sub_1BDA1DD38()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___currencyFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___currencyFormatter);
  if (v2)
  {
    goto LABEL_4;
  }

  sub_1BDA1BE00();
  v3 = sub_1BE052404();

  v4 = PKMutableNumberFormatterForCurrencyCode();

  if (v4)
  {
    [v4 setMinimumFractionDigits_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v4;

    v2 = 0;
LABEL_4:
    v6 = v2;
    return;
  }

  __break(1u);
}

id sub_1BDA1DDE0()
{
  v1 = v0;
  v2 = sub_1BE04B0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter;
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    sub_1BE04B054();
    v11 = sub_1BE04B044();
    (*(v3 + 8))(v6, v2);
    [v10 setLocale_];

    v12 = *(v1 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

id sub_1BDA1DF54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v7 = sub_1BE052404();
  [v6 setLocalizedDateFormatFromTemplate_];

  sub_1BD0DE19C(a1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone, v5, &unk_1EBD3D260);
  v8 = sub_1BE04B3B4();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v10 = sub_1BE04B374();
    (*(v9 + 8))(v5, v8);
  }

  [v6 setTimeZone_];

  return v6;
}

id sub_1BDA1E110(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = sub_1BDA1DF54(v1);
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void AccountAutomaticPaymentsModel.init(controller:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v148 = &v130 - v6;
  v7 = sub_1BE04A474();
  v143 = *(v7 - 8);
  v144 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v142 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1BE04AF64();
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v10);
  v146 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v152 = &v130 - v14;
  v15 = sub_1BE04B3B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v132 = &v130 - v22;
  v23 = sub_1BE04B104();
  v138 = *(v23 - 8);
  v139 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v137 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1BE04B2F4();
  v141 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v26);
  v140 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v136 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v133 = &v130 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v130 - v36;
  *(v1 + 3) = 0;
  *(v1 + 5) = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading] = 0;
  v1[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid] = 0;
  v38 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__paymentDueWarning;
  v39 = type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0);
  (*(*(v39 - 8) + 56))(&v2[v38], 1, 1, v39);
  v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__needsFundingSources] = 0;
  v40 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__featureError;
  v41 = type metadata accessor for FeatureError(0);
  (*(*(v41 - 8) + 56))(&v2[v40], 1, 1, v41);
  v42 = MEMORY[0x1BFB403C0](25);
  v43 = &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount];
  *v43 = v42;
  *(v43 + 1) = v44;
  *(v43 + 4) = v45;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_days] = xmmword_1BE0FFF30;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay] = 1;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_maxDay] = 31;
  v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___useOrdinalDay] = 2;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___currencyFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayNameFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___cardinalDayDateFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dateFormatter] = 0;
  sub_1BE04B5C4();
  *(v2 + 6) = a1;
  v46 = a1;
  v154 = [v46 account];
  if (!v154)
  {
    __break(1u);
    goto LABEL_66;
  }

  v135 = v16;
  v47 = *(v16 + 56);
  v153 = v37;
  v150 = v15;
  v47(v37, 1, 1, v15);
  v48 = MEMORY[0x1BFB403C0](0);
  v50 = v49;
  v52 = v51;
  v149 = MEMORY[0x1BFB403C0](0);
  v54 = v53;
  v56 = v55;
  v57 = [v46 featureIdentifier];
  v131 = v19;
  v134 = v46;
  if (v57 == 2)
  {
    v58 = [v154 creditDetails];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 productTimeZone];

      v61 = v153;
      v62 = v150;
      v63 = v133;
      if (v60)
      {
        sub_1BE04B394();

        v64 = 0;
      }

      else
      {
        v64 = 1;
      }

      sub_1BD0DE53C(v61, &unk_1EBD3D260);
      v47(v63, v64, 1, v62);
      sub_1BD0DE204(v63, v61, &unk_1EBD3D260);
      v67 = v154;
      v68 = [v154 scheduleRecurringPaymentsFeatureDescriptor];
      if (v68)
      {
        v69 = v68;
        v70 = [v68 paymentPresets];
        v71 = v70;
        if ((v70 & 4) != 0)
        {
          v72 = sub_1BD1D87D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v74 = *(v72 + 2);
          v73 = *(v72 + 3);
          if (v74 >= v73 >> 1)
          {
            v72 = sub_1BD1D87D0((v73 > 1), v74 + 1, 1, v72);
          }

          *(v72 + 2) = v74 + 1;
          *&v72[8 * v74 + 32] = 3;
          if ((v71 & 2) == 0)
          {
LABEL_20:
            v77 = [v67 creditDetails];
            if (v77)
            {
              v78 = v77;
              v130 = v72;
              v79 = [v77 accountSummary];

              if (v79)
              {
                v133 = v79;
                v80 = [v79 creditLimit];
                v81 = [v69 paymentFrequencies];
                if (v80)
                {
                  sub_1BE0533F4();
                  v82 = v80;
                  v83 = MEMORY[0x1BFB403C0](0);
                  if (MEMORY[0x1BFB403F0](v83) & 1) != 0 && (v71)
                  {
                    if (!v81)
                    {

                      v65 = MEMORY[0x1E69E7CC0];
                      goto LABEL_44;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v130 = sub_1BD1D87D0(0, *(v130 + 2) + 1, 1, v130);
                    }

                    v85 = *(v130 + 2);
                    v84 = *(v130 + 3);
                    if (v85 >= v84 >> 1)
                    {
                      v130 = sub_1BD1D87D0((v84 > 1), v85 + 1, 1, v130);
                    }

                    v86 = v130;
                    *(v130 + 2) = v85 + 1;
                    *&v86[8 * v85 + 32] = 1;
                    if ((v81 & 4) == 0)
                    {
LABEL_27:
                      v65 = MEMORY[0x1E69E7CC0];
                      if ((v81 & 8) == 0)
                      {
                        goto LABEL_28;
                      }

                      goto LABEL_39;
                    }

LABEL_36:
                    v65 = sub_1BD1D87BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
                    v88 = *(v65 + 2);
                    v87 = *(v65 + 3);
                    if (v88 >= v87 >> 1)
                    {
                      v65 = sub_1BD1D87BC((v87 > 1), v88 + 1, 1, v65);
                    }

                    *(v65 + 2) = v88 + 1;
                    *&v65[8 * v88 + 32] = 4;
                    if ((v81 & 8) == 0)
                    {
LABEL_28:
                      if ((v81 & 0x10) != 0)
                      {
LABEL_45:
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v65 = sub_1BD1D87BC(0, *(v65 + 2) + 1, 1, v65);
                        }

                        v94 = *(v65 + 2);
                        v93 = *(v65 + 3);
                        v91 = v69;
                        if (v94 >= v93 >> 1)
                        {
                          v65 = sub_1BD1D87BC((v93 > 1), v94 + 1, 1, v65);
                        }

                        v92 = v154;
                        *(v65 + 2) = v94 + 1;
                        *&v65[8 * v94 + 32] = 6;
LABEL_50:
                        if ([v92 isClosedAndChargedOff])
                        {
                          v95 = [v133 currentBalance];
                          if (v95)
                          {
LABEL_54:
                            v96 = v95;
                            v149 = sub_1BE0533F4();
                            v54 = v97;
                            v56 = v98;

                            v99 = [v91 minimumAmount];
                            if (v99)
                            {
                              v100 = v99;
                              v48 = sub_1BE0533F4();
                              v50 = v101;
                              v52 = v102;

                              v66 = v130;
                              goto LABEL_56;
                            }

                            goto LABEL_70;
                          }

                          __break(1u);
                        }

                        v95 = [v91 maximumAmount];
                        if (!v95)
                        {
LABEL_71:
                          __break(1u);
                          return;
                        }

                        goto LABEL_54;
                      }

LABEL_44:
                      v91 = v69;
                      v92 = v154;
                      goto LABEL_50;
                    }

LABEL_39:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v65 = sub_1BD1D87BC(0, *(v65 + 2) + 1, 1, v65);
                    }

                    v90 = *(v65 + 2);
                    v89 = *(v65 + 3);
                    if (v90 >= v89 >> 1)
                    {
                      v65 = sub_1BD1D87BC((v89 > 1), v90 + 1, 1, v65);
                    }

                    *(v65 + 2) = v90 + 1;
                    *&v65[8 * v90 + 32] = 5;
                    if ((v81 & 0x10) != 0)
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_44;
                  }
                }

                if ((v81 & 4) == 0)
                {
                  goto LABEL_27;
                }

                goto LABEL_36;
              }

LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }
        }

        else
        {
          v72 = MEMORY[0x1E69E7CC0];
          if ((v70 & 2) == 0)
          {
            goto LABEL_20;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1BD1D87D0(0, *(v72 + 2) + 1, 1, v72);
        }

        v76 = *(v72 + 2);
        v75 = *(v72 + 3);
        if (v76 >= v75 >> 1)
        {
          v72 = sub_1BD1D87D0((v75 > 1), v76 + 1, 1, v72);
        }

        *(v72 + 2) = v76 + 1;
        *&v72[8 * v76 + 32] = 2;
        goto LABEL_20;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v65 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
LABEL_56:
  *(v2 + 2) = v66;
  v103 = v153;
  sub_1BD0DE19C(v153, &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone], &unk_1EBD3D260);
  v104 = &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount];
  *v104 = v48;
  *(v104 + 1) = v50;
  *(v104 + 4) = v52;
  v105 = &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount];
  *v105 = v149;
  *(v105 + 1) = v54;
  *(v105 + 4) = v56;
  *(v2 + 4) = v65;
  v107 = v137;
  v106 = v138;
  v108 = v139;
  (*(v138 + 104))(v137, *MEMORY[0x1E6969868], v139);
  v109 = v140;
  sub_1BE04B114();
  (*(v106 + 8))(v107, v108);
  v110 = v136;
  sub_1BD0DE19C(v103, v136, &unk_1EBD3D260);
  v111 = v135;
  v112 = v150;
  if ((*(v135 + 48))(v110, 1, v150) == 1)
  {
    sub_1BD0DE53C(v110, &unk_1EBD3D260);
  }

  else
  {
    v113 = v132;
    (*(v111 + 32))(v132, v110, v112);
    (*(v111 + 16))(v131, v113, v112);
    sub_1BE04B2C4();
    (*(v111 + 8))(v113, v112);
  }

  v114 = v141;
  (*(v141 + 16))(&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar], v109, v151);
  sub_1BE04AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
  v115 = sub_1BE04B2D4();
  v116 = *(v115 - 8);
  v117 = *(v116 + 72);
  v118 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1BE0B98D0;
  v120 = v119 + v118;
  v121 = *(v116 + 104);
  v121(v120, *MEMORY[0x1E6969A48], v115);
  v121(v120 + v117, *MEMORY[0x1E6969A78], v115);
  v121(v120 + 2 * v117, *MEMORY[0x1E6969A68], v115);
  v122 = v152;
  sub_1BD111674(v119);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v123 = v142;
  sub_1BE04B194();

  v124 = v148;
  sub_1BE04B204();

  (*(v143 + 8))(v123, v144);
  (*(v114 + 8))(v109, v151);
  sub_1BD0DE53C(v153, &unk_1EBD3D260);
  v125 = v145;
  v126 = *(v145 + 48);
  v127 = v147;
  if (v126(v124, 1, v147) == 1)
  {
    v128 = *(v125 + 32);
    v129 = v146;
    v128(v146, v122, v127);
    if (v126(v124, 1, v127) != 1)
    {
      sub_1BD0DE53C(v124, &unk_1EBD39970);
    }
  }

  else
  {
    (*(v125 + 8))(v122, v127);
    v128 = *(v125 + 32);
    v129 = v146;
    v128(v146, v124, v127);
  }

  v128(&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate], v129, v127);
}

void sub_1BDA1F184()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v143 = *(v2 - 8);
  v144 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v142 = v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v145 = v127 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46338);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v127 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v127 - v14;
  v16 = sub_1BE04B3B4();
  v149 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v147 = v127 - v22;
  v152 = sub_1BE04AF64();
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v23);
  v148 = v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v146 = v127 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v127 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v127 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v151 = v127 - v38;
  swift_getKeyPath();
  v156 = v0;
  v39 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v153 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid) == 1)
  {
    v40 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading);
    v140 = v11;
    v141 = v16;
    if (v40 == 1)
    {
      v139 = 0;
      *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v42);
      v156 = v0;
      sub_1BE04B584();
      v139 = 0;
    }

    v43 = v0[6];
    v44 = [v43 account];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 isClosedAndChargedOff];

      if ((v46 & 1) != 0 || [v43 featureIdentifier] != 2)
      {
        goto LABEL_15;
      }

      v47 = [v43 account];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 creditDetails];

        if (v49)
        {
          v50 = [v49 accountSummary];

          if (v50)
          {
            v51 = [v50 paymentDueDate];
            if (!v51)
            {

              goto LABEL_15;
            }

            v135 = v15;
            v138 = v50;
            v136 = v19;
            v52 = v51;
            sub_1BE04AEE4();

            v53 = v150;
            (*(v150 + 32))(v151, v35, v152);
            swift_getKeyPath();
            v156 = v1;
            v137 = v39;
            sub_1BE04B594();

            v54 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
            swift_beginAccess();
            v55 = v53 + 16;
            v56 = v152;
            v134 = *(v53 + 16);
            v134(v31, v1 + v54, v152);
            v57 = sub_1BE04AF04();
            v60 = *(v53 + 8);
            v58 = v53 + 8;
            v59 = v60;
            v60(v31, v56);
            if (v57 != -1)
            {
              v59(v151, v56);

LABEL_15:
              (*(*v1 + 1152))();
              return;
            }

            *&v132 = v55;
            v133 = v59;
            swift_getKeyPath();
            v154 = v1;
            sub_1BE04B594();

            v61 = &selRef_remainingMinimumPayment;
            if (v1[3] != 2)
            {
              v61 = &selRef_remainingStatementBalance;
            }

            v62 = v138;
            v63 = [v138 *v61];
            if (!v63)
            {
              v133(v151, v56);

              goto LABEL_15;
            }

            v64 = v63;
            sub_1BE0533F4();
            v65 = MEMORY[0x1BFB403C0](0);
            v66 = MEMORY[0x1BFB403F0](v65);
            v67 = v151;
            if ((v66 & 1) == 0)
            {
              v133(v151, v152);

              goto LABEL_15;
            }

            v68 = v135;
            sub_1BD0DE19C(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone, v135, &unk_1EBD3D260);
            v69 = v149;
            v70 = v141;
            if ((*(v149 + 48))(v68, 1, v141) == 1)
            {
              v133(v67, v152);

              sub_1BD0DE53C(v68, &unk_1EBD3D260);
              goto LABEL_15;
            }

            v131 = v64;
            v150 = v58;
            v71 = v147;
            v72 = v68;
            v73 = v152;
            (*(v69 + 32))(v147, v72, v70);
            v135 = [v43 featureIdentifier];
            (*(v69 + 16))(v136, v71, v70);
            swift_getKeyPath();
            v154 = v1;
            sub_1BE04B594();

            v74 = v134;
            v134(v146, v1 + v54, v73);
            v74(v148, v67, v73);
            v75 = swift_allocObject();
            swift_weakInit();
            v76 = v140;
            *v140 = 0xD000000000000011;
            v76[1] = 0x80000001BE1481D0;
            v77 = objc_allocWithZone(MEMORY[0x1E696AB78]);
            v130 = v75;
            sub_1BE048964();
            v78 = [v77 init];
            v79 = sub_1BE052404();
            [v78 setLocalizedDateFormatFromTemplate_];

            v80 = sub_1BE04B374();
            [v78 setTimeZone_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v81 = swift_allocObject();
            v132 = xmmword_1BE0B69E0;
            *(v81 + 16) = xmmword_1BE0B69E0;
            v82 = sub_1BE04AE64();
            v83 = [v78 stringFromDate_];

            v84 = sub_1BE052434();
            v86 = v85;

            *(v81 + 56) = MEMORY[0x1E69E6158];
            v87 = sub_1BD110550();
            *(v81 + 64) = v87;
            *(v81 + 32) = v84;
            *(v81 + 40) = v86;
            v88 = sub_1BE04C134();
            v134 = v89;

            v90 = swift_allocObject();
            *(v90 + 16) = v132;
            v91 = sub_1BE04AE64();
            *&v132 = v78;
            v92 = [v78 stringFromDate_];

            v93 = sub_1BE052434();
            v95 = v94;

            *(v90 + 56) = MEMORY[0x1E69E6158];
            *(v90 + 64) = v87;
            *(v90 + 32) = v93;
            *(v90 + 40) = v95;
            v96 = sub_1BE04C134();
            v98 = v97;

            v154 = v88;
            v155 = v134;
            sub_1BD0DDEBC();
            v135 = sub_1BE0506C4();
            v134 = v99;
            v128 = v100;
            v129 = v101;
            v154 = v96;
            v155 = v98;
            v127[3] = sub_1BE0506C4();
            v127[2] = v102;
            v127[1] = v103;
            v104 = v142;
            v105 = v143;
            v106 = v144;
            (*(v143 + 104))(v142, *MEMORY[0x1E69B80D0], v144);
            v107 = PKPassKitBundle();
            if (v107)
            {
              v108 = v107;
              v109 = sub_1BE04B6F4();
              v111 = v110;

              (*(v105 + 8))(v104, v106);
              v154 = v109;
              v155 = v111;
              v112 = sub_1BE0506C4();
              v114 = v113;
              v116 = v115;
              v117 = swift_allocObject();
              v118 = v130;
              *(v117 + 16) = sub_1BDA26CFC;
              *(v117 + 24) = v118;
              sub_1BE048964();
              v119 = v145;
              sub_1BE051194();

              sub_1BD0DDF10(v112, v114, v116 & 1);

              v120 = sub_1BE0511A4();
              (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
              v121 = type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0);
              v122 = v140;
              sub_1BE051174();

              v123 = v152;
              v124 = v133;
              v133(v148, v152);
              v124(v146, v123);
              v149 = *(v149 + 8);
              (v149)(v136, v141);

              (*(*(v121 - 8) + 56))(v122, 0, 1, v121);
              v125 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v125, v126);
              v154 = v1;
              sub_1BE04B584();

              (v149)(v147, v141);
              v124(v151, v123);
              sub_1BD0DE53C(v122, &qword_1EBD46338);
              return;
            }

LABEL_31:
            __break(1u);
            return;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }
}

uint64_t sub_1BDA20144()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 1152))(result);
  }

  return result;
}

uint64_t sub_1BDA201C4()
{
  v1 = [v0[6] fundingSources];
  if (v1)
  {
    v2 = v1;
    sub_1BD0E5E8C(0, &qword_1EBD4E090);
    v3 = sub_1BE052744();

    if (!(v3 >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }
  }

  v4 = sub_1BE053704();
LABEL_4:

  if (v4)
  {
    v6 = *(*v0 + 145);

    return v6();
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v8);
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
    }

    if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__needsFundingSources) == 1)
    {
      *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__needsFundingSources) = 1;
    }

    else
    {
      v9 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v9, v10);
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();
    }
  }

  return result;
}

void sub_1BDA204A4()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  [v7 setPaymentPreset_];
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1BE04B594();

  v8 = 0;
  if (*(v1 + 24) == 1)
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1BE04B594();

    v9 = sub_1BE053344();
    sub_1BDA1BE00();
    v10 = sub_1BE052404();

    v8 = PKCurrencyAmountMake();
  }

  [v7 setAmount_];

  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();

  [v7 setPaymentFrequency_];
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();

  if (*(v1 + 40) == 7)
  {
    v11 = 0;
  }

  else
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1BE04B594();

    v12 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v12, v2);
    v11 = sub_1BE04AE64();
    (*(v3 + 8))(v6, v2);
  }

  [v7 setPaymentDate_];

  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();

  [v7 setScheduledDay_];
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BDA26CDC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3CC8C0;
  aBlock[3] = &block_descriptor_271;
  v14 = _Block_copy(aBlock);

  [v7 performScheduleAutomaticPayments_];
  _Block_release(v14);
}

uint64_t sub_1BDA208F4(char a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v32 - v6;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (*(result + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
    {
      KeyPath = swift_getKeyPath();
      v32[0] = v32;
      MEMORY[0x1EEE9AC00](KeyPath, v16);
      v32[-2] = v14;
      LOBYTE(v32[-1]) = 0;
      v33 = v14;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();

      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(result + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
      if ((a1 & 1) == 0)
      {
LABEL_4:
        if (!a2)
        {
        }

LABEL_8:
        v17 = a2;
        sub_1BE04D194();
        v18 = a2;
        v19 = sub_1BE04D204();
        v20 = sub_1BE052C34();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          v23 = a2;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 4) = v24;
          *v22 = v24;
          _os_log_impl(&dword_1BD026000, v19, v20, "AccountAutomaticPayments: Error performing schedule of automatic payments with error: %@", v21, 0xCu);
          sub_1BD0DE53C(v22, &unk_1EBD3E590);
          MEMORY[0x1BFB45F20](v22, -1, -1);
          MEMORY[0x1BFB45F20](v21, -1, -1);
        }

        (*(v9 + 8))(v12, v8);
        v25 = [*(v14 + 48) featureIdentifier];
        v26 = a2;
        FeatureError.init(feature:error:)(v25, a2, v7);
        sub_1BDA1C534(v7);
      }
    }

    if (!a2)
    {
      swift_getKeyPath();
      v33 = v14;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();

      v33 = v14;
      swift_getKeyPath();
      sub_1BE04B5B4();

      v27 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v28 = *(v14 + v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + v27) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1BD1D90B0(0, *(v28 + 2) + 1, 1, v28);
        *(v14 + v27) = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1BD1D90B0((v30 > 1), v31 + 1, 1, v28);
      }

      *(v28 + 2) = v31 + 1;
      v28[v31 + 32] = 3;
      *(v14 + v27) = v28;
      swift_endAccess();
      v33 = v14;
      swift_getKeyPath();
      sub_1BE04B5A4();
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1BDA20DE0()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B2D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MockAccountAutomaticPaymentsModel(0);
  if (!swift_dynamicCastClass())
  {
    v46 = v2;
    swift_getKeyPath();
    v12 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
    v49 = v1;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    v47 = v12;
    sub_1BE04B594();

    v13 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
    swift_beginAccess();
    if (*(*(v1 + v13) + 16) == 1)
    {
      swift_getKeyPath();
      v48 = v1;
      sub_1BE04B594();

      v14 = *(v1 + v13);
      if (*(v14 + 16))
      {
        if (!*(v14 + 32))
        {
          v15 = v1[2];
          swift_getKeyPath();
          v48 = v1;
          sub_1BE04B594();

          v16 = *(v15 + 16);
          v17 = (v15 + 32);
          v2 = v46;
          while (v16)
          {
            v18 = *v17++;
            --v16;
            if (v18 == v1[3])
            {
              goto LABEL_8;
            }
          }
        }
      }
    }

    while (1)
    {
      sub_1BE053994();
      __break(1u);
    }
  }

LABEL_8:
  (*(v8 + 104))(v11, *MEMORY[0x1E6969A48], v7);
  sub_1BE04AEF4();
  v19 = sub_1BE04B2E4();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  swift_getKeyPath();
  v48 = v1;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  if (v1[3] == 2 || (swift_getKeyPath(), v48 = v1, sub_1BE04B594(), , v1[3] == 3))
  {
    if (v19 <= 11)
    {
      v20 = 11;
    }

    else
    {
      v20 = v19;
    }
  }

  else if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) == v20)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v22);
    v48 = v1;
    sub_1BE04B584();
  }

  swift_getKeyPath();
  v48 = v1;
  sub_1BE04B594();

  v24 = v1[3];
  if ((v24 - 2) >= 2)
  {
    if (v24 != 1)
    {
      return result;
    }

    swift_getKeyPath();
    v48 = v1;
    sub_1BE04B594();

    v27 = v1[3];
    if ((v27 - 2) < 2)
    {
      v28 = &unk_1F3B8F848;
      if (!qword_1F3B8F858)
      {
        goto LABEL_44;
      }

LABEL_32:
      v30 = v28[4];
LABEL_45:

      if (v1[5] == v30)
      {
        sub_1BDA217C4();
        sub_1BDA21BE0();
      }

      else
      {
        v40 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v40, v41);
        v48 = v1;
        sub_1BE04B584();
      }

      swift_getKeyPath();
      v48 = v1;
      sub_1BE04B594();

      v48 = v1;
      swift_getKeyPath();
      sub_1BE04B5B4();

      v33 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v34 = *(v1 + v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v33) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_1BD1D90B0(0, *(v34 + 2) + 1, 1, v34);
        *(v1 + v33) = v34;
      }

      v44 = *(v34 + 2);
      v43 = *(v34 + 3);
      if (v44 >= v43 >> 1)
      {
        v34 = sub_1BD1D90B0((v43 > 1), v44 + 1, 1, v34);
      }

      *(v34 + 2) = v44 + 1;
      v38 = &v34[v44];
      v39 = 2;
      goto LABEL_53;
    }

    if (v27 == 1)
    {
      v28 = sub_1BE048C84();
      if (v28[2])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_32;
      }
    }

LABEL_44:
    v30 = 4;
    goto LABEL_45;
  }

  swift_getKeyPath();
  v48 = v1;
  sub_1BE04B594();

  v25 = v1[3];
  if ((v25 - 2) >= 2)
  {
    if (v25 == 1)
    {
      v26 = sub_1BE048C84();
      if (v26[2])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_29;
      }
    }

LABEL_34:
    v29 = 7;
    goto LABEL_35;
  }

  v26 = &unk_1F3B8F818;
  if (!qword_1F3B8F828)
  {
    goto LABEL_34;
  }

LABEL_29:
  v29 = v26[4];
LABEL_35:

  if (v1[5] == v29)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
  }

  else
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31, v32);
    v48 = v1;
    sub_1BE04B584();
  }

  swift_getKeyPath();
  v48 = v1;
  sub_1BE04B594();

  v48 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v33 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  v34 = *(v1 + v33);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v33) = v34;
  if ((v35 & 1) == 0)
  {
    v34 = sub_1BD1D90B0(0, *(v34 + 2) + 1, 1, v34);
    *(v1 + v33) = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v34 = sub_1BD1D90B0((v36 > 1), v37 + 1, 1, v34);
  }

  *(v34 + 2) = v37 + 1;
  v38 = &v34[v37];
  v39 = 1;
LABEL_53:
  v38[32] = v39;
  *(v1 + v33) = v34;
  swift_endAccess();
  v48 = v1;
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BDA217C4()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v29 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v28 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54380);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - v15;
  swift_getKeyPath();
  v31 = v0;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v18 = *(v0 + 40);
  if ((v18 - 4) < 2)
  {
    sub_1BDA23090(v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v19 = &unk_1EBD54380;
      v20 = v11;
      return sub_1BD0DE53C(v20, v19);
    }

    sub_1BD0DE204(v11, v16, &unk_1EBD387B0);
    swift_getKeyPath();
    v31 = v0;
    sub_1BE04B594();

    v22 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
    swift_beginAccess();
    v24 = v28;
    v23 = v29;
    v25 = *(v29 + 16);
    v25(v28, v1 + v22, v2);
    sub_1BDA26C5C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    if (sub_1BE052304())
    {
      v26 = sub_1BE052314();
      (*(v23 + 8))(v24, v2);
      if (v26)
      {
        goto LABEL_11;
      }
    }

    else
    {
      (*(v23 + 8))(v24, v2);
    }

    v27 = v30;
    v25(v30, &v16[*(v12 + 36)], v2);
    sub_1BDA1D640(v27);
LABEL_11:
    v19 = &unk_1EBD387B0;
    v20 = v16;
    return sub_1BD0DE53C(v20, v19);
  }

  if (v18 == 6)
  {
    v21 = v30;
    sub_1BDA23BAC(v30);
    return sub_1BDA1D640(v21);
  }

  return result;
}

uint64_t sub_1BDA21BE0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v2 = *(v0 + 24);
  swift_getKeyPath();
  sub_1BE04B594();

  v3 = *(v0 + 40);
  if ((v3 - 6) < 2)
  {
    v4 = 1;
  }

  else if ((v3 - 4) > 1)
  {
    v4 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1BE04B594();

    v4 = *(v0 + 24) == 1;
  }

  swift_getKeyPath();
  sub_1BE04B594();

  if (*(v0 + 24) == 1)
  {
    v17 = v2;
    swift_getKeyPath();
    sub_1BE04B594();

    v6 = (v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount);
    v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 16);
    v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount);
    v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 8);
    swift_getKeyPath();
    sub_1BE04B594();

    result = MEMORY[0x1BFB403F0](v9, v8, v7, *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount + 16));
    if ((result & 1) != 0 || (swift_getKeyPath(), sub_1BE04B594(), , v10 = *(v6 + 4), v12 = *v6, v11 = v6[1], swift_getKeyPath(), sub_1BE04B594(), , result = MEMORY[0x1BFB403F0](*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount + 16), v12, v11, v10), !v17))
    {
      LOBYTE(v13) = 0;
      v14 = (v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid);
      if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid))
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v13 = v4 & (result ^ 1);
  }

  else
  {
    v13 = v2 != 0 && v4;
  }

  v14 = (v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid);
  if (v13 != *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid))
  {
LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v16);
    sub_1BE04B584();
  }

LABEL_14:
  *v14 = v13;
  return result;
}

void sub_1BDA21F78()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = [v2 account];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isClosedAndChargedOff];

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    if ([v2 needsPreflight])
    {
      if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) == 1)
      {
        *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v13);
        aBlock[0] = v1;
        sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
        sub_1BE04B584();
      }

      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v6;
      aBlock[4] = sub_1BDA26CA4;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3CC8C0;
      aBlock[3] = &block_descriptor_241;
      v16 = _Block_copy(aBlock);

      [v2 preflightWithCompletion_];
      _Block_release(v16);
    }

    else
    {
      swift_getKeyPath();
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();

      aBlock[0] = v1;
      swift_getKeyPath();
      sub_1BE04B5B4();

      v7 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v8 = *(v1 + v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v7) = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1BD1D90B0(0, *(v8 + 2) + 1, 1, v8);
        *(v1 + v7) = v8;
      }

      v11 = *(v8 + 2);
      v10 = *(v8 + 3);
      if (v11 >= v10 >> 1)
      {
        v8 = sub_1BD1D90B0((v10 > 1), v11 + 1, 1, v8);
      }

      *(v8 + 2) = v11 + 1;
      v8[v11 + 32] = v6;
      *(v1 + v7) = v8;
      swift_endAccess();
      aBlock[0] = v1;
      swift_getKeyPath();
      sub_1BE04B5A4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BDA22330(char a1, void *a2, uint64_t a3, int a4)
{
  v22 = a4;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1BE051FA4();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = v22;
  aBlock[4] = sub_1BDA26CB0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_254_0;
  v18 = _Block_copy(aBlock);
  sub_1BE048964();
  v19 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BDA26C5C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v23);
}

uint64_t sub_1BDA2261C(uint64_t a1, char a2, void *a3, int a4)
{
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v34 - v8;
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    if (*(result + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
    {
      KeyPath = swift_getKeyPath();
      v34[1] = v34;
      MEMORY[0x1EEE9AC00](KeyPath, v18);
      v34[-2] = v16;
      LOBYTE(v34[-1]) = 0;
      v36 = v16;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();

      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(result + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (!a3)
    {
      swift_getKeyPath();
      v36 = v16;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();

      v36 = v16;
      swift_getKeyPath();
      sub_1BE04B5B4();

      v19 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v20 = *(v16 + v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + v19) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1BD1D90B0(0, *(v20 + 2) + 1, 1, v20);
        *(v16 + v19) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1BD1D90B0((v22 > 1), v23 + 1, 1, v20);
      }

      *(v20 + 2) = v23 + 1;
      v20[v23 + 32] = v35;
      *(v16 + v19) = v20;
      swift_endAccess();
      v36 = v16;
      swift_getKeyPath();
      sub_1BE04B5A4();
    }

LABEL_12:
    sub_1BE04D194();
    v24 = a3;
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      if (a3)
      {
        v29 = a3;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v27 + 4) = v30;
      *v28 = v31;
      _os_log_impl(&dword_1BD026000, v25, v26, "AccountAutomaticPayments: preflight failed with error %@", v27, 0xCu);
      sub_1BD0DE53C(v28, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v28, -1, -1);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v32 = [*(v16 + 48) featureIdentifier];
    v33 = a3;
    FeatureError.init(feature:error:)(v32, a3, v9);
    sub_1BDA1C534(v9);
  }

  return result;
}

void sub_1BDA22B14()
{
  v1 = *(v0 + 48);
  if ([v1 featureIdentifier] != 2)
  {
    return;
  }

  v2 = [v1 account];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 creditDetails];

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = [v4 accountSummary];

  if (v5)
  {
    if ([v5 balanceStatus] == 2 || objc_msgSend(v5, sel_requiresDebtCollectionNotices))
    {
      [v1 featureIdentifier];
      sub_1BE04C124();
    }

    else
    {
    }
  }
}

uint64_t sub_1BDA22C3C(char a1)
{
  v2 = v1;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 != 1)
    {
      v17 = v7;
      v18 = sub_1BDA1E0E8();
      swift_getKeyPath();
      v30 = v2;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();

      v19 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
      swift_beginAccess();
      (*(v5 + 16))(v9, v2 + v19, v17);
      v20 = sub_1BE04AE64();
      (*(v5 + 8))(v9, v17);
      v21 = [v18 stringFromDate_];

      v22 = sub_1BE052434();
      return v22;
    }

    swift_getKeyPath();
    v30 = v2;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B594();

    v10 = *(v2 + 40);
    [*(v2 + 48) featureIdentifier];
    if (v10 == 6 || v10 == 5 || v10 == 4)
    {
      return sub_1BE04C124();
    }

    return 0;
  }

  swift_getKeyPath();
  v30 = v2;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v11 = *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 16);
  v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount);
  v12 = *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 8);
  v14 = MEMORY[0x1BFB403C0](0);
  if ((MEMORY[0x1BFB40440](v13, v12, v11, v14, v15, v16) & 1) == 0)
  {
    sub_1BDA1DD38();
    v25 = v24;
    swift_getKeyPath();
    v30 = v2;
    sub_1BE04B594();

    v26 = sub_1BE053344();
    v27 = [v25 stringFromNumber_];

    if (v27)
    {
      v28 = sub_1BE052434();

      return v28;
    }

    return 0;
  }

  [*(v2 + 48) featureIdentifier];
  return sub_1BE04C124();
}

uint64_t sub_1BDA23090@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v78 = &v70 - v9;
  v87 = sub_1BE04B2D4();
  v90 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v10);
  v80 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v83 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v86 = &v70 - v17;
  v18 = sub_1BE04AF64();
  v88 = *(v18 - 8);
  v89 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v81 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v70 - v27;
  v29 = sub_1BE04A474();
  v84 = *(v29 - 8);
  v85 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v91 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v92 = v1;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v32 = *(v1 + 40);
  if (v32 == 4)
  {
    v82 = v1;
    v72 = v22;
    v70 = v3;
    v71 = v7;
    v79 = a1;
    v33 = 6;
  }

  else
  {
    if (v32 != 5)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
      v55 = *(*(v54 - 8) + 56);
      v56 = a1;
      return v55(v56, 1, 1, v54);
    }

    v82 = v1;
    v72 = v22;
    v70 = v3;
    v71 = v7;
    v79 = a1;
    v33 = 13;
  }

  v77 = v33;
  v34 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
  v35 = v90;
  v36 = *(v90 + 72);
  v37 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BE0B98D0;
  v39 = v38 + v37;
  v40 = *(v35 + 104);
  v75 = *MEMORY[0x1E6969A48];
  v41 = v87;
  v40(v39);
  (v40)(v39 + v36, *MEMORY[0x1E6969A78], v41);
  (v40)(v39 + 2 * v36, *MEMORY[0x1E6969A68], v41);
  sub_1BD111674(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = v28;
  sub_1BE04AEF4();
  v43 = v91;
  sub_1BE04B194();

  v45 = v88;
  v44 = v89;
  v73 = *(v88 + 8);
  v74 = v88 + 8;
  v73(v42, v89);
  v76 = v34;
  v46 = v86;
  sub_1BE04B204();
  v47 = *(v45 + 48);
  if (v47(v46, 1, v44) == 1)
  {
    v48 = v46;
    v50 = v84;
    v49 = v85;
LABEL_9:
    (*(v50 + 8))(v43, v49);
    sub_1BD0DE53C(v48, &unk_1EBD39970);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
    v55 = *(*(v54 - 8) + 56);
    v56 = v79;
    return v55(v56, 1, 1, v54);
  }

  v51 = v46;
  v52 = v81;
  v88 = *(v45 + 32);
  (v88)(v81, v51, v44);
  v53 = v80;
  (v40)(v80, v75, v41);
  v48 = v83;
  sub_1BE04B224();
  (*(v90 + 8))(v53, v41);
  if (v47(v48, 1, v44) == 1)
  {
    v73(v52, v44);
    v50 = v84;
    v49 = v85;
    v43 = v91;
    goto LABEL_9;
  }

  v58 = v72;
  (v88)(v72, v48, v44);
  sub_1BDA26C5C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v59 = sub_1BE052314();
  result = (*(v84 + 8))(v91, v85);
  if (v59)
  {
    v60 = v78;
    v61 = v88;
    (v88)(v78, v52, v44);
    v62 = v44;
    v63 = v70;
    v61(v60 + *(v70 + 48), v58, v62);
    v64 = v71;
    sub_1BD0DE19C(v60, v71, &unk_1EBD38810);
    v65 = *(v63 + 48);
    v66 = v79;
    v61(v79, v64, v62);
    v67 = v73;
    v73((v64 + v65), v62);
    sub_1BD0DE204(v60, v64, &unk_1EBD38810);
    v68 = *(v63 + 48);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
    v61(v66 + *(v69 + 36), (v64 + v68), v62);
    v67(v64, v62);
    return (*(*(v69 - 8) + 56))(v66, 0, 1, v69);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA2391C(uint64_t a1)
{
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v27 - v13;
  if (sub_1BDA1DC18())
  {
    result = PKOrdinalStringForInteger();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE052434();

      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = sub_1BE04B1D4();
    sub_1BE04AEF4();
    v19 = sub_1BE04AE64();
    v20 = v10;
    v21 = v2;
    v27[0] = *(v3 + 8);
    (v27[0])(v20, v2);
    v22 = [v18 nextDateAfterDate:v19 matchingUnit:16 value:a1 options:2];

    if (v22)
    {
      sub_1BE04AEE4();

      (*(v3 + 32))(v14, v6, v2);
      v23 = sub_1BDA1DF40();
      v24 = sub_1BE04AE64();
      v25 = [v23 stringFromDate_];

      v26 = sub_1BE052434();
      (v27[0])(v14, v21);
      return v26;
    }

    else
    {
      v27[1] = a1;
      return sub_1BE053B24();
    }
  }

  return result;
}

uint64_t sub_1BDA23BAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v110 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v114 = &v101 - v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v120 = &v101 - v11;
  v12 = sub_1BE04B2D4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v109 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v119 = &v101 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v101 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v101 - v25;
  v27 = sub_1BE04AF64();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v117 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v113 = &v101 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v121 = &v101 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v101 - v40;
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v101 - v43;
  sub_1BE04AEF4();
  v127 = v41;
  v128 = v28;
  v45 = *(v28 + 16);
  v129 = v27;
  v115 = v45;
  v45(v41, v44, v27);
  v46 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  v47 = *(v13 + 104);
  v123 = *MEMORY[0x1E6969A48];
  v47(v26);
  v118 = *MEMORY[0x1E6969A78];
  v126 = v47;
  v47(v23);
  v122 = v46;
  v130 = v44;
  v48 = sub_1BE04B254();
  v50 = v49;
  LOBYTE(v47) = v51;
  v52 = *(v13 + 8);
  v111 = v23;
  v53 = v23;
  v54 = v52;
  v52(v53, v12);
  v116 = v26;
  v124 = v13 + 8;
  result = (v52)(v26, v12);
  if ((v47 & 1) == 0)
  {
    v112 = v2;
    if (__OFSUB__(v50, v48))
    {
      __break(1u);
    }

    else
    {
      v56 = v119;
      (v126)(v119, v123, v12);
      swift_getKeyPath();
      v57 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
      v2 = v112;
      v131 = v112;
      v58 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      v106 = v57;
      v105 = v58;
      sub_1BE04B594();

      v104 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay;
      v59 = v120;
      sub_1BE04B234();
      v54(v56, v12);
      v60 = v128;
      v61 = v129;
      v62 = *(v128 + 48);
      v119 = (v128 + 48);
      v108 = v62;
      if (v62(v59, 1, v129) == 1)
      {
        sub_1BD0DE53C(v59, &unk_1EBD39970);
        goto LABEL_16;
      }

      v63 = *(v60 + 8);
      v107 = v54;
      v64 = v127;
      v103 = v60 + 8;
      v102 = v63;
      v63(v127, v61);
      v65 = *(v60 + 32);
      v66 = v121;
      v120 = (v60 + 32);
      v101 = v65;
      v65(v121, v59, v61);
      v115(v64, v66, v61);
      v67 = v116;
      (v126)(v116, v118, v12);
      v68 = v107;
      v69 = sub_1BE04B274();
      v68(v67, v12);
      if (v69)
      {
        v102(v121, v129);
        goto LABEL_16;
      }

      (v126)(v67, v118, v12);
      v70 = v114;
      sub_1BE04B224();
      v68(v67, v12);
      v71 = v129;
      v72 = v108(v70, 1, v129);
      v73 = v126;
      if (v72 == 1)
      {
        v102(v121, v71);
        sub_1BD0DE53C(v70, &unk_1EBD39970);
        goto LABEL_16;
      }

      v74 = v113;
      v101(v113, v70, v71);
      (v73)(v67, v123, v12);
      v75 = v111;
      (v73)(v111, v118, v12);
      v76 = sub_1BE04B254();
      v78 = v77;
      v80 = v79;
      v81 = v75;
      v82 = v107;
      v107(v81, v12);
      result = v82(v67, v12);
      if (v80)
      {
        v83 = v129;
        v84 = v102;
        v102(v74, v129);
        v84(v121, v83);
LABEL_15:
        v2 = v112;
        goto LABEL_16;
      }

      v85 = v121;
      if (!__OFSUB__(v78, v76))
      {
        v86 = v109;
        (v126)(v109, v123, v12);
        swift_getKeyPath();
        v131 = v112;
        sub_1BE04B594();

        v87 = v110;
        sub_1BE04B234();
        v107(v86, v12);
        v88 = v129;
        v89 = v102;
        v102(v113, v129);
        v89(v85, v88);
        if (v108(v87, 1, v88) == 1)
        {
          sub_1BD0DE53C(v87, &unk_1EBD39970);
        }

        else
        {
          v90 = v127;
          v89(v127, v88);
          v101(v90, v87, v88);
        }

        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

LABEL_16:
  swift_getKeyPath();
  v131 = v2;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  if (*(v2 + 24) == 1)
  {
    v92 = v128;
    v91 = v129;
    (*(v128 + 8))(v130, v129);
    v93 = v127;
  }

  else
  {
    v94 = *(v2 + 48);
    v93 = v127;
    v95 = sub_1BE04AE64();
    v96 = [v94 firstAutomaticPaymentDateForSelectedDate_];

    v92 = v128;
    if (v96)
    {
      v97 = v117;
      sub_1BE04AEE4();

      v98 = *(v92 + 8);
      v99 = v93;
      v100 = v129;
      v98(v99, v129);
      v98(v130, v100);
      v91 = v100;
      v93 = v97;
    }

    else
    {
      v91 = v129;
      (*(v128 + 8))(v130, v129);
    }
  }

  return (*(v92 + 32))(v125, v93, v91);
}

uint64_t sub_1BDA24684(uint64_t a1)
{
  v19 = a1;
  v18 = sub_1BE04AF64();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04A474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
  v10 = sub_1BE04B2D4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B69E0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E6969A48], v10);
  sub_1BD111674(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  sub_1BE04AEF4();
  sub_1BE04B194();

  (*(v1 + 8))(v4, v18);
  v14 = sub_1BE04A434();
  LODWORD(v11) = v15;
  (*(v6 + 8))(v9, v5);
  return (v14 == v19) & ~v11;
}

void sub_1BDA2493C()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v82 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v80 - v8;
  v88 = 0;
  v89 = 0xE000000000000000;
  v10 = sub_1BDA255B8();
  v84 = v11;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v86 = v0;
  v13 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v14 = *(v0 + 24);
  swift_getKeyPath();
  v85 = v12;
  v83 = v13;
  if (v14 == 1)
  {
    v86 = v1;
    sub_1BE04B594();

    v15 = *(v1 + 40);
    switch(v15)
    {
      case 4:
        v81 = v10;
        v57 = *(v1 + 48);
        v80 = [v57 featureIdentifier];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1BE0B6CA0;
        swift_getKeyPath();
        v86 = v1;
        sub_1BE04B594();

        v58 = sub_1BE053344();
        sub_1BDA1BE00();
        v59 = sub_1BE052404();

        v60 = PKFormattedCurrencyStringFromNumber();

        if (v60)
        {
          v61 = sub_1BE052434();
          v63 = v62;

          v64 = MEMORY[0x1E69E6158];
          *(v40 + 56) = MEMORY[0x1E69E6158];
          v65 = sub_1BD110550();
          *(v40 + 64) = v65;
          *(v40 + 32) = v61;
          *(v40 + 40) = v63;
          v66 = sub_1BDA1DF28();
          v67 = [v57 paymentDate];
          if (!v67)
          {
LABEL_30:
            __break(1u);
            return;
          }

          v68 = v67;
          sub_1BE04AEE4();

          v69 = sub_1BE04AE64();
          (*(v82 + 8))(v9, v2);
          v70 = [v66 stringFromDate_];

          v54 = sub_1BE052434();
          v56 = v71;

          *(v40 + 96) = v64;
          *(v40 + 104) = v65;
          goto LABEL_17;
        }

        break;
      case 5:
        v81 = v10;
        v39 = *(v1 + 48);
        v80 = [v39 featureIdentifier];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1BE0B6CA0;
        swift_getKeyPath();
        v86 = v1;
        sub_1BE04B594();

        v41 = sub_1BE053344();
        sub_1BDA1BE00();
        v42 = sub_1BE052404();

        v43 = PKFormattedCurrencyStringFromNumber();

        if (v43)
        {
          v44 = sub_1BE052434();
          v46 = v45;

          v47 = MEMORY[0x1E69E6158];
          *(v40 + 56) = MEMORY[0x1E69E6158];
          v48 = sub_1BD110550();
          *(v40 + 64) = v48;
          *(v40 + 32) = v44;
          *(v40 + 40) = v46;
          v49 = sub_1BDA1DF28();
          v50 = [v39 paymentDate];
          if (!v50)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v51 = v50;
          sub_1BE04AEE4();

          v52 = sub_1BE04AE64();
          (*(v82 + 8))(v6, v2);
          v53 = [v49 stringFromDate_];

          v54 = sub_1BE052434();
          v56 = v55;

          *(v40 + 96) = v47;
          *(v40 + 104) = v48;
LABEL_17:
          *(v40 + 72) = v54;
          *(v40 + 80) = v56;
          v27 = sub_1BE04C134();
          v29 = v72;
          goto LABEL_18;
        }

        __break(1u);
        break;
      case 6:
        v81 = v10;
        sub_1BDA2530C();
        [*(v1 + 48) featureIdentifier];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1BE0B6CA0;
        swift_getKeyPath();
        v86 = v1;
        sub_1BE04B594();

        v17 = sub_1BE053344();
        sub_1BDA1BE00();
        v18 = sub_1BE052404();

        v19 = PKFormattedCurrencyStringFromNumber();

        if (v19)
        {
          v20 = sub_1BE052434();
          v22 = v21;

          v23 = MEMORY[0x1E69E6158];
          *(v16 + 56) = MEMORY[0x1E69E6158];
          v24 = sub_1BD110550();
          *(v16 + 64) = v24;
          *(v16 + 32) = v20;
          *(v16 + 40) = v22;
          v25 = sub_1BDA25758();
          *(v16 + 96) = v23;
          *(v16 + 104) = v24;
          *(v16 + 72) = v25;
          *(v16 + 80) = v26;
          v27 = sub_1BE04C134();
          v29 = v28;

LABEL_18:

          v88 = v27;
          v10 = v81;
          goto LABEL_19;
        }

        goto LABEL_28;
      default:
        goto LABEL_20;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v86 = v1;
  sub_1BE04B594();

  v30 = *(v1 + 40);
  if (v30 == 6)
  {
    sub_1BDA2530C();
    [*(v1 + 48) featureIdentifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BE0B69E0;
    v34 = sub_1BDA25758();
    v36 = v35;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1BD110550();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v37 = sub_1BE04C134();
    v29 = v38;

    v88 = v37;
  }

  else
  {
    if (v30 != 7)
    {
      goto LABEL_20;
    }

    [*(v1 + 48) featureIdentifier];
    v31 = sub_1BE04C124();
    v29 = v32;
    v88 = v31;
  }

LABEL_19:
  v89 = v29;
LABEL_20:
  v73 = *(v1 + 48);
  if (![v73 willSkipFirstPayment] || (swift_getKeyPath(), v86 = v1, sub_1BE04B594(), , v74 = *(v1 + 24), v74 == 2) || v74 == 3)
  {
    [v73 featureIdentifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1BE0B69E0;
    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = sub_1BD110550();
    v76 = v84;
    *(v75 + 32) = v10;
    *(v75 + 40) = v76;
    v77 = sub_1BE04C134();
    v79 = v78;

    v86 = 32;
    v87 = 0xE100000000000000;
    MEMORY[0x1BFB3F610](v77, v79);

    MEMORY[0x1BFB3F610](v86, v87);
  }
}

char *sub_1BDA2530C()
{
  v20 = sub_1BE04AF64();
  v1 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B2D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B2F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 48);
  result = [v15 scheduledDay];
  if ((result - 32) <= 0xFFFFFFFFFFFFFFE0)
  {
    (*(v11 + 16))(v14, v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar, v10);
    (*(v6 + 104))(v9, *MEMORY[0x1E6969A48], v5);
    result = [v15 paymentDate];
    if (result)
    {
      v17 = result;
      sub_1BE04AEE4();

      v18 = sub_1BE04B2E4();
      (*(v6 + 8))(v9, v5);
      (*(v11 + 8))(v14, v10);
      (*(v1 + 8))(v4, v20);
      return v18;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1BDA255B8()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BDA1E0E8();
  v7 = sub_1BE052404();
  [v6 setLocalizedDateFormatFromTemplate_];

  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dateFormatter);
  v9 = *(v0 + 48);
  v10 = v8;
  result = [v9 paymentDate];
  if (result)
  {
    v12 = result;
    sub_1BE04AEE4();

    v13 = sub_1BE04AE64();
    (*(v2 + 8))(v5, v1);
    v14 = [v10 stringFromDate_];

    v15 = sub_1BE052434();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA25758()
{
  v1 = sub_1BE04B2D4();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v44 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v47 = &v44 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v44 - v21;
  v51 = v0;
  v23 = *(v0 + 48);
  v24 = [v23 scheduledDay];
  result = [v23 paymentDate];
  if (result)
  {
    v26 = result;
    sub_1BE04AEE4();

    v27 = *(v5 + 32);
    v27(v22, v19, v4);
    v28 = v4;
    if ((v24 - 32) >= 0xFFFFFFFFFFFFFFE1)
    {
      v29 = sub_1BE04B1D4();
      sub_1BE04AEF4();
      v30 = sub_1BE04AE64();
      v45 = v5;
      v31 = v12;
      v32 = *(v5 + 8);
      v32(v31, v28);
      v33 = [v29 nextDateAfterDate:v30 matchingUnit:16 value:v24 options:2];

      v34 = v22;
      if (v33)
      {
        v35 = v46;
        sub_1BE04AEE4();

        v32(v22, v28);
        v34 = v35;
      }

      v36 = v47;
      v27(v47, v34, v28);
      v27(v22, v36, v28);
      v5 = v45;
    }

    if (sub_1BDA1DC18())
    {
      v38 = v48;
      v37 = v49;
      v39 = v50;
      (*(v49 + 104))(v48, *MEMORY[0x1E6969A48], v50);
      sub_1BE04B2E4();
      (*(v37 + 8))(v38, v39);
      v40 = PKOrdinalStringForInteger();
      if (v40)
      {
LABEL_10:
        v43 = sub_1BE052434();

        (*(v5 + 8))(v22, v28);
        return v43;
      }

      __break(1u);
    }

    v41 = sub_1BDA1DF40();
    v42 = sub_1BE04AE64();
    v40 = [v41 stringFromDate_];

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AccountAutomaticPaymentsModel.deinit()
{

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone, &unk_1EBD3D260);

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__paymentDueWarning, &qword_1EBD46338);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__featureError, &qword_1EBD416C0);
  v1 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  v2 = sub_1BE04AF64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  v4 = sub_1BE04B2F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v6 = sub_1BE04B5D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AccountAutomaticPaymentsModel.__deallocating_deinit()
{
  AccountAutomaticPaymentsModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t MockAccountAutomaticPaymentsModel.__allocating_init(controller:step:)(void *a1, unsigned __int8 *a2)
{
  v4 = swift_allocObject();
  MockAccountAutomaticPaymentsModel.init(controller:step:)(a1, a2);
  return v4;
}

uint64_t MockAccountAutomaticPaymentsModel.init(controller:step:)(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  sub_1BE04B5C4();
  v12 = a1;
  AccountAutomaticPaymentsModel.init(controller:)(v12);
  if (v11 == 4)
  {
    goto LABEL_2;
  }

  sub_1BDA1BF9C(&unk_1F3B8FED0);
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (*(v3 + 24) == 3)
      {
        sub_1BDA20DE0();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v19);
        *(&v22 - 2) = v3;
        *(&v22 - 1) = 3;
        v23 = v3;
        sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
        sub_1BE04B584();
      }

      sub_1BE04AEF4();
      v20 = sub_1BE04AE64();
      (*(v7 + 8))(v10, v6);
      [v12 setPaymentDate_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA70);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BE0B69E0;
      *(v21 + 32) = 3;
      sub_1BDA1BF9C(v21);
      goto LABEL_2;
    }

    if (*(v3 + 24) != 1)
    {
      v16 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v16, v17);
      *(&v22 - 2) = v3;
      *(&v22 - 1) = 1;
      v23 = v3;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v11)
  {
    if (*(v3 + 24) != 3)
    {
      v14 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v14, v15);
      *(&v22 - 2) = v3;
      *(&v22 - 1) = 3;
      v23 = v3;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
LABEL_14:
      sub_1BE04B584();

      return v3;
    }

LABEL_10:
    sub_1BDA20DE0();
  }

LABEL_2:

  return v3;
}

uint64_t sub_1BDA261E8()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    *&v18[-16] = v0;
    v18[-8] = 0;
    v20 = v0;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
  }

  v9 = *(v0 + 48);
  swift_getKeyPath();
  v20 = v0;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v10 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v10, v2);
  v11 = sub_1BE04AE64();
  (*(v3 + 8))(v6, v2);
  [v9 setPaymentDate_];

  swift_getKeyPath();
  v19 = v1;
  sub_1BE04B594();

  v19 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v12 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  v13 = *(v1 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1BD1D90B0(0, *(v13 + 2) + 1, 1, v13);
    *(v1 + v12) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1BD1D90B0((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v13[v16 + 32] = 3;
  *(v1 + v12) = v13;
  swift_endAccess();
  v19 = v1;
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BDA265CC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI33MockAccountAutomaticPaymentsModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t MockAccountAutomaticPaymentsModel.deinit()
{
  AccountAutomaticPaymentsModel.deinit();
  v1 = OBJC_IVAR____TtC9PassKitUI33MockAccountAutomaticPaymentsModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MockAccountAutomaticPaymentsModel.__deallocating_deinit()
{
  AccountAutomaticPaymentsModel.deinit();
  v1 = OBJC_IVAR____TtC9PassKitUI33MockAccountAutomaticPaymentsModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BDA267B4()
{
  sub_1BDA26A68(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
  if (v0 <= 0x3F)
  {
    sub_1BDA26A68(319, &qword_1EBD5BFE0, type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning);
    if (v1 <= 0x3F)
    {
      sub_1BDA26A68(319, &qword_1EBD5D3F0, type metadata accessor for FeatureError);
      if (v2 <= 0x3F)
      {
        sub_1BE04AF64();
        if (v3 <= 0x3F)
        {
          sub_1BE04B2F4();
          if (v4 <= 0x3F)
          {
            sub_1BE04B5D4();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BDA26A68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BDA26AE4()
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BDA26BC8()
{
  result = sub_1BE0511B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BDA26C5C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BDA26DAC(void *result)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 16) + *result;
  *v4 = *(v1 + 24);
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1BDA26DCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  *v3 = *(v0 + 24);
  *(v3 + 8) = v1;
  *(v3 + 16) = v2;
  return sub_1BDA21BE0();
}

BOOL sub_1BDA26E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureError(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v23 - v15, &qword_1EBD416C0);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD416C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD416C0);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v16, v12, &qword_1EBD416C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1BD230994(v12);
LABEL_6:
    sub_1BD0DE53C(v16, &unk_1EBD5D400);
    return 1;
  }

  sub_1BD230930(&v16[v18], v8);
  v21 = *v12;
  v22 = *v8;
  sub_1BD230994(v8);

  sub_1BD230994(v12);
  sub_1BD0DE53C(v16, &qword_1EBD416C0);
  return v21 != v22;
}

uint64_t sub_1BDA2710C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) = *(v0 + 24);
  sub_1BDA217C4();
  return sub_1BDA21BE0();
}

uint64_t sub_1BDA27154()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
  sub_1BDA217C4();
  return sub_1BDA21BE0();
}

uint64_t sub_1BDA27290()
{
  sub_1BE052524();
}

uint64_t sub_1BDA273F0()
{
  sub_1BE052524();
}

uint64_t sub_1BDA2751C()
{
  sub_1BE052524();
}

uint64_t sub_1BDA27650()
{
  sub_1BE052524();
}

uint64_t sub_1BDA27790(uint64_t a1, uint64_t a2, int64_t a3)
{
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 3)
    {
      goto LABEL_7;
    }
  }

  else if (a3 <= 1)
  {
LABEL_7:
    sub_1BE052434();
  }

  sub_1BD14ED40(a2, a3);
  sub_1BE052524();
}

uint64_t sub_1BDA27864()
{
  sub_1BE052524();
}

uint64_t sub_1BDA279B0()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BDA27B24()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BDA27C64()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BDA27D7C()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BDA27EC4()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BDA28018()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BDA28178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F024();
  *a1 = result & 1;
  return result;
}

_BYTE *sub_1BDA281D0@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE700000000000000;
  v4 = 0x31746565727473;
  v5 = 0xEA00000000006564;
  v6 = 0x6F436C6174736F70;
  if (v2 != 6)
  {
    v6 = 0x7972746E756F63;
    v5 = 0xE700000000000000;
  }

  v7 = 0x80000001BE1173C0;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (*result <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000797469;
  v10 = 0x6C61636F4C627573;
  if (v2 != 2)
  {
    v10 = 2037672291;
    v9 = 0xE400000000000000;
  }

  if (*result)
  {
    v4 = 0x32746565727473;
    v3 = 0xE700000000000000;
  }

  if (*result > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*result <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a2 = v14;
  a2[1] = v3;
  return result;
}

void *sub_1BDA282F0@<X0>(void *a1@<X8>)
{
  result = sub_1BD20B2EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BDA28368()
{
  v1 = v0;
  v21 = *(v0 + 8);
  result = sub_1BD20C578();
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_20:

    v20 = v6;
    swift_getKeyPath();
    v16 = *(v1 + 24);
    v17 = swift_allocObject();
    v18 = *(v1 + 16);
    *(v17 + 16) = *v1;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(v1 + 32);
    sub_1BD0DE19C(&v21, v19, &qword_1EBD48820);
    sub_1BD0D44B8(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C008);
    sub_1BD0DE4F4(&qword_1EBD48948, &qword_1EBD3CA30);
    sub_1BDA2A39C();
    return sub_1BE0519C4();
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v5 < *(v3 + 16))
  {
    v7 = *(v3 + 32 + 8 * v5);
    v8 = *(v7 + 16);
    v9 = *(v6 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_22;
    }

    sub_1BE048C84();
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v6 + 24) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_1BD1D9DFC(result, v11, 1, v6);
      v6 = result;
      if (*(v7 + 16))
      {
LABEL_15:
        v12 = *(v6 + 16);
        if ((*(v6 + 24) >> 1) - v12 < v8)
        {
          goto LABEL_24;
        }

        memcpy((v6 + v12 + 32), (v7 + 32), v8);

        if (v8)
        {
          v13 = *(v6 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_25;
          }

          *(v6 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (v4 == ++v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BDA285E4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C078);
  MEMORY[0x1EEE9AC00](v109, v4);
  v6 = &v80 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C080);
  MEMORY[0x1EEE9AC00](v108, v7);
  v106 = &v80 - v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C088);
  MEMORY[0x1EEE9AC00](v99, v9);
  v101 = &v80 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C048);
  MEMORY[0x1EEE9AC00](v100, v11);
  v81 = &v80 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C038);
  MEMORY[0x1EEE9AC00](v105, v13);
  v98 = &v80 - v14;
  v96 = sub_1BE04FF04();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v15);
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C060);
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v17);
  v88 = &v80 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C090);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v19);
  v90 = &v80 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C058);
  MEMORY[0x1EEE9AC00](v97, v21);
  v87 = &v80 - v22;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C098);
  MEMORY[0x1EEE9AC00](v103, v23);
  v25 = &v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C020);
  MEMORY[0x1EEE9AC00](v26, v27);
  v104 = &v80 - v28;
  *&v102 = *(v2 + 8);
  v29 = sub_1BD20D008(a1);
  v31 = v30;
  v32 = sub_1BD20D69C(a1);
  v33 = **(&unk_1E80108B0 + a1);
  v34 = sub_1BD20D60C(a1);
  if (v34)
  {
    v82 = v32;
    v83 = v31;
    v85 = v33;
    v86 = v26;
    v84 = v34;
    if (a1 <= 5u || a1 == 6)
    {
      v38 = sub_1BE053B84();

      if ((v38 & 1) == 0)
      {
        v40 = sub_1BD20B2EC();
        if (v82)
        {
          v41 = 0;
        }

        else
        {
          v42 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v42 = v40 & 0xFFFFFFFFFFFFLL;
          }

          v41 = v42 != 0;
        }

        v116 = v29;
        v117 = v83;
        type metadata accessor for PostalAddressEditingModel();
        sub_1BDA2ABB4(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
        v43 = sub_1BE04E964();
        MEMORY[0x1EEE9AC00](v43, v44);
        swift_getKeyPath();
        sub_1BE04E974();

        v110 = v113;
        v111 = v114;
        v112 = v115;
        MEMORY[0x1EEE9AC00](v45, v46);
        *(&v80 - 4) = v84;
        LODWORD(v83) = v41;
        *(&v80 - 24) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0A8);
        v47 = sub_1BDA2A7D4();
        v48 = sub_1BD0DDEBC();
        v78 = v47;
        v79 = v48;
        v49 = v88;
        sub_1BE051804();

        v50 = v91;
        sub_1BE04FEF4();
        v51 = sub_1BD0DE4F4(&qword_1EBD5C068, &qword_1EBD5C060);
        v52 = MEMORY[0x1E697C9F8];
        v53 = v90;
        v54 = v92;
        v55 = v96;
        sub_1BE050924();
        (*(v94 + 8))(v50, v55);
        (*(v89 + 8))(v49, v54);
        sub_1BE052434();
        *&v113 = v54;
        *(&v113 + 1) = v55;
        v114 = v51;
        v115 = v52;
        swift_getOpaqueTypeConformance2();
        v56 = v87;
        v57 = v95;
        sub_1BE050DE4();

        (*(v93 + 8))(v53, v57);
        if (v83)
        {
          v58 = sub_1BE051264();
          KeyPath = swift_getKeyPath();
          v60 = v81;
          sub_1BD0DE19C(v56, v81, &qword_1EBD5C058);
          v61 = v101;
          v62 = (v60 + *(v100 + 36));
          *v62 = KeyPath;
          v62[1] = v58;
          sub_1BD0DE19C(v60, v61, &qword_1EBD5C048);
          swift_storeEnumTagMultiPayload();
          sub_1BDA2A5C0();
          sub_1BDA2A678();
          v63 = v98;
          sub_1BE04F9A4();
          sub_1BD0DE53C(v60, &qword_1EBD5C048);
        }

        else
        {
          sub_1BD0DE19C(v56, v101, &qword_1EBD5C058);
          swift_storeEnumTagMultiPayload();
          sub_1BDA2A5C0();
          sub_1BDA2A678();
          v63 = v98;
          sub_1BE04F9A4();
        }

        v64 = v85;
        v65 = v104;
        sub_1BD0DE19C(v63, v25, &qword_1EBD5C038);
        swift_storeEnumTagMultiPayload();
        sub_1BDA2A4E0();
        sub_1BDA2A534();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v63, &qword_1EBD5C038);
        sub_1BD0DE53C(v56, &qword_1EBD5C058);
        goto LABEL_18;
      }
    }

    else
    {
    }

    type metadata accessor for PostalAddressEditingModel();
    sub_1BDA2ABB4(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
    v66 = sub_1BE04E964();
    MEMORY[0x1EEE9AC00](v66, v67);
    LOBYTE(v78) = a1;
    swift_getKeyPath();
    sub_1BE04E974();

    v102 = v113;
    v68 = v114;
    v69 = v115;
    LOBYTE(v116) = 0;
    sub_1BE051694();
    v70 = v110;
    v71 = *(&v110 + 1);
    LOBYTE(v116) = 0;
    sub_1BE051694();
    v72 = v110;
    v73 = *(&v110 + 1);
    v74 = swift_getKeyPath();
    LOBYTE(v110) = 0;
    v75 = v82 & 1;
    *v25 = v102;
    *(v25 + 2) = v68;
    *(v25 + 3) = v69;
    v25[32] = v70;
    *(v25 + 5) = v71;
    *(v25 + 6) = v29;
    v76 = v84;
    *(v25 + 7) = v83;
    *(v25 + 8) = v76;
    v25[72] = v75;
    v25[80] = v72;
    *(v25 + 11) = v73;
    *(v25 + 12) = v74;
    v25[104] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BDA2A4E0();
    sub_1BDA2A534();
    v65 = v104;
    sub_1BE04F9A4();
    v64 = v85;
LABEL_18:
    sub_1BD0DE19C(v65, v106, &qword_1EBD5C020);
    swift_storeEnumTagMultiPayload();
    sub_1BDA2A454();
    sub_1BD0DE4F4(&qword_1EBD5C070, &qword_1EBD5C078);
    sub_1BE04F9A4();

    v36 = v65;
    v37 = &qword_1EBD5C020;
    return sub_1BD0DE53C(v36, v37);
  }

  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0A0);
  sub_1BDA2984C(v2, a1, v29, v31, v32 & 1, v33, &v6[*(v35 + 44)]);

  sub_1BD0DE19C(v6, v106, &qword_1EBD5C078);
  swift_storeEnumTagMultiPayload();
  sub_1BDA2A454();
  sub_1BD0DE4F4(&qword_1EBD5C070, &qword_1EBD5C078);
  sub_1BE04F9A4();

  v36 = v6;
  v37 = &qword_1EBD5C078;
  return sub_1BD0DE53C(v36, v37);
}

uint64_t sub_1BDA29488(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  sub_1BE048C84();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0C0);
  sub_1BD0DE4F4(&qword_1EBD489C0, &qword_1EBD489B8);
  sub_1BDA2A884(&qword_1EBD5C0B8, &qword_1EBD5C0C0, &unk_1BE10EEB0, sub_1BDA2A938);
  sub_1BD4F2764();
  return sub_1BE0519D4();
}

uint64_t sub_1BDA295E8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v32 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B420);
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0D0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  if (a2)
  {
    if (v17 == a3 && v16 == v30)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_1BE053B84();
    }
  }

  else
  {
    v20 = 0;
  }

  v33 = v18;
  v34 = v19;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  *v11 = sub_1BE0506C4();
  *(v11 + 1) = v21;
  v11[16] = v22 & 1;
  *(v11 + 3) = v23;
  *(v11 + 4) = v17;
  *(v11 + 5) = v16;
  v11[48] = 1;
  sub_1BE048C84();
  if (v20)
  {
    v24 = sub_1BE051264();
  }

  else
  {
    v24 = sub_1BE051464();
  }

  v25 = v24;
  KeyPath = swift_getKeyPath();
  (*(v8 + 32))(v15, v11, v31);
  v27 = &v15[*(v12 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_1BE052434();
  sub_1BDA2A938();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v15, &qword_1EBD5C0D0);
}

uint64_t sub_1BDA2984C@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v86 = a4;
  v87 = a6;
  v68 = a5;
  v85 = a3;
  v75 = a7;
  v9 = sub_1BE04FB64();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0D8);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0E0);
  v69 = *(v17 - 8);
  *&v70 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v62 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0E8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v76 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v74 = &v62 - v25;
  type metadata accessor for PostalAddressEditingModel();
  sub_1BDA2ABB4(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
  sub_1BE04E964();
  v88 = a2;
  swift_getKeyPath();
  sub_1BE04E974();

  v27 = v97;
  v26 = v98;
  v28 = v100;
  v83 = v99;
  v29 = *a1;
  LOBYTE(v89) = 0;
  sub_1BE048964();
  v73 = v26;
  sub_1BE048964();
  v72 = v28;
  sub_1BE048C84();
  sub_1BE051694();
  v71 = v97;
  v82 = v98;
  LOBYTE(v89) = 0;
  sub_1BE051694();
  v77 = v97;
  v81 = v98;
  v84 = v29;
  LOBYTE(v97) = v29;
  v30 = sub_1BDA2AAAC(a2);
  KeyPath = swift_getKeyPath();
  if (v30)
  {
    v31 = sub_1BE052434();
    v78 = v32;
    v79 = v31;
    sub_1BE048C84();
    v33 = v87;
  }

  else
  {
    sub_1BE048C84();
    v34 = v87;
    v78 = 0;
    v79 = 0;
  }

  if (a2)
  {
    v35 = sub_1BE053B84();

    if ((v35 & 1) == 0)
    {
LABEL_9:
      v46 = 1;
      v44 = v74;
      v43 = v69;
      v45 = v70;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v36 = *(a1 + 3);
  if (!v36)
  {
    goto LABEL_9;
  }

  sub_1BD0D44B8(v36);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C100);
  sub_1BDA2A884(&qword_1EBD5C108, &qword_1EBD5C100, &unk_1BE10EF88, sub_1BD0F14E8);
  v37 = v16;
  sub_1BE051704();
  v38 = v65;
  sub_1BE04FB54();
  sub_1BD0DE4F4(&qword_1EBD5C110, &qword_1EBD5C0D8);
  sub_1BDA2ABB4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
  v40 = v62;
  v39 = v63;
  v41 = v67;
  sub_1BE050894();
  sub_1BD0D4744(v36);
  (*(v66 + 8))(v38, v41);
  (*(v64 + 8))(v37, v39);
  v43 = v69;
  v42 = v70;
  v44 = v74;
  (*(v69 + 32))(v74, v40, v70);
  v45 = v42;
  v46 = 0;
LABEL_10:
  (*(v43 + 56))(v44, v46, 1, v45);
  v47 = v68 & 1;
  LODWORD(v74) = v68 & 1;
  v48 = v76;
  sub_1BD0DE19C(v44, v76, &qword_1EBD5C0E8);
  v49 = v72;
  v50 = v73;
  *&v89 = v27;
  *(&v89 + 1) = v73;
  *&v90 = v83;
  *(&v90 + 1) = v72;
  LOBYTE(v91) = v84;
  *(&v91 + 1) = v121[0];
  DWORD1(v91) = *(v121 + 3);
  *(&v91 + 1) = v85;
  *&v92 = v86;
  BYTE8(v92) = v47;
  *(&v92 + 9) = *v120;
  HIDWORD(v92) = *&v120[3];
  *&v93[0] = v87;
  v70 = xmmword_1BE0CB9B0;
  *(v93 + 8) = xmmword_1BE0CB9B0;
  v51 = v71;
  BYTE8(v93[1]) = v71;
  *(&v93[1] + 9) = *v119;
  HIDWORD(v93[1]) = *&v119[3];
  *&v94 = v82;
  BYTE8(v94) = v77;
  *(&v94 + 9) = *v118;
  HIDWORD(v94) = *&v118[3];
  *&v95 = v81;
  *(&v95 + 1) = KeyPath;
  *&v96 = v79;
  *(&v96 + 1) = v78;
  v52 = v89;
  v53 = v90;
  v54 = v92;
  v55 = v75;
  v75[2] = v91;
  v55[3] = v54;
  *v55 = v52;
  v55[1] = v53;
  v56 = v93[0];
  v57 = v93[1];
  v58 = v96;
  v55[7] = v95;
  v55[8] = v58;
  v59 = v94;
  v55[5] = v57;
  v55[6] = v59;
  v55[4] = v56;
  v60 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0F0) + 48);
  sub_1BD0DE19C(v48, v60, &qword_1EBD5C0E8);
  sub_1BD0DE19C(&v89, &v97, &qword_1EBD5C0F8);

  sub_1BD0DE53C(v44, &qword_1EBD5C0E8);
  sub_1BD0DE53C(v48, &qword_1EBD5C0E8);
  v97 = v27;
  v98 = v50;
  v99 = v83;
  v100 = v49;
  v101 = v84;
  *v102 = v121[0];
  *&v102[3] = *(v121 + 3);
  v103 = v85;
  v104 = v86;
  v105 = v74;
  *v106 = *v120;
  *&v106[3] = *&v120[3];
  v107 = v87;
  v108 = v70;
  v109 = v51;
  *v110 = *v119;
  *&v110[3] = *&v119[3];
  v111 = v82;
  v112 = v77;
  *v113 = *v118;
  *&v113[3] = *&v118[3];
  v114 = v81;
  v115 = KeyPath;
  v116 = v79;
  v117 = v78;
  return sub_1BDA2AB4C(&v97);
}

id sub_1BDA2A150()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE051C54();
  v5 = sub_1BE051574();
  v6 = sub_1BE0503D4();
  KeyPath = swift_getKeyPath();
  v13[3] = v5;
  v13[4] = KeyPath;
  v13[5] = v6;
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v1 + 8))(v4, v0);
    v13[1] = v10;
    v13[2] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49180);
    sub_1BD0F14E8();
    sub_1BD0DDEBC();
    sub_1BE050C34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BDA2A39C()
{
  result = qword_1EBD5C010;
  if (!qword_1EBD5C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C008);
    sub_1BDA2A454();
    sub_1BD0DE4F4(&qword_1EBD5C070, &qword_1EBD5C078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C010);
  }

  return result;
}

unint64_t sub_1BDA2A454()
{
  result = qword_1EBD5C018;
  if (!qword_1EBD5C018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C020);
    sub_1BDA2A4E0();
    sub_1BDA2A534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C018);
  }

  return result;
}

unint64_t sub_1BDA2A4E0()
{
  result = qword_1EBD5C028;
  if (!qword_1EBD5C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C028);
  }

  return result;
}

unint64_t sub_1BDA2A534()
{
  result = qword_1EBD5C030;
  if (!qword_1EBD5C030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C038);
    sub_1BDA2A5C0();
    sub_1BDA2A678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C030);
  }

  return result;
}

unint64_t sub_1BDA2A5C0()
{
  result = qword_1EBD5C040;
  if (!qword_1EBD5C040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C048);
    sub_1BDA2A678();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C040);
  }

  return result;
}

unint64_t sub_1BDA2A678()
{
  result = qword_1EBD5C050;
  if (!qword_1EBD5C050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C060);
    sub_1BE04FF04();
    sub_1BD0DE4F4(&qword_1EBD5C068, &qword_1EBD5C060);
    swift_getOpaqueTypeConformance2();
    sub_1BDA2ABB4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C050);
  }

  return result;
}

unint64_t sub_1BDA2A7D4()
{
  result = qword_1EBD5C0B0;
  if (!qword_1EBD5C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C0A8);
    sub_1BDA2A884(&qword_1EBD5C0B8, &qword_1EBD5C0C0, &unk_1BE10EEB0, sub_1BDA2A938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C0B0);
  }

  return result;
}

uint64_t sub_1BDA2A884(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BDA2ABB4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BDA2A938()
{
  result = qword_1EBD5C0C8;
  if (!qword_1EBD5C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C0D0);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C0C8);
  }

  return result;
}

uint64_t sub_1BDA2AA40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F0E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1BDA2AAAC(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0;
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        return v4;
      }

      v3 = MEMORY[0x1E69DE530];
    }

    else
    {
      if (a1 == 4)
      {
        return v4;
      }

      v3 = MEMORY[0x1E69DE408];
    }
  }

  else
  {
    v1 = MEMORY[0x1E69DE540];
    v2 = MEMORY[0x1E69DE550];
    if (a1 != 2)
    {
      v2 = MEMORY[0x1E69DE3F8];
    }

    if (a1)
    {
      v1 = MEMORY[0x1E69DE548];
    }

    if (a1 <= 1u)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
    }
  }

  v4 = *v3;
  v5 = *v3;
  return v4;
}

uint64_t sub_1BDA2AB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BDA2ABB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BDA2ABFC()
{
  result = qword_1EBD5C118;
  if (!qword_1EBD5C118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C120);
    sub_1BDA2A39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C118);
  }

  return result;
}

uint64_t sub_1BDA2AC80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049534();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1BDA2ACEC()
{
  v0 = sub_1BE04AF64();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE0493F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8EA8]) init];
  MEMORY[0x1BFB36C50]();
  sub_1BE04AF74();
  (*(v9 + 8))(v12, v8);
  v14 = sub_1BE052404();

  [v13 setIdentifier_];

  sub_1BE049BD4();
  sub_1BE0493C4();
  v15 = *(v4 + 8);
  v15(v7, v3);
  v16 = sub_1BE053344();
  [v13 setAmount_];

  sub_1BE049BD4();
  sub_1BE0493A4();
  v15(v7, v3);
  v17 = sub_1BE052404();

  [v13 setCurrencyCode_];

  v18 = v23;
  sub_1BE049B84();
  v19 = sub_1BE04AE64();
  (*(v24 + 8))(v18, v25);
  [v13 setTransactionDate_];

  sub_1BE049BB4();
  v20 = sub_1BE052404();

  [v13 setMerchantProvidedDescription_];

  [v13 setTransactionStatus_];
  [v13 setTransactionType_];
  return v13;
}

void sub_1BDA2B088()
{
  v0 = sub_1BE04B0F4();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v38 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BE0493F4();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04AB24();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AB54();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE04AF64();
  v13 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x1E69B8EC0]) init];
  sub_1BE049BB4();
  v18 = sub_1BE052404();

  [v17 setPrimaryString_];

  v19 = sub_1BE052404();
  v20 = PKLocalizedBankConnectString(v19);

  if (v20)
  {
    v30 = sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B69E0;
    sub_1BE049B84();
    sub_1BE04AB14();
    sub_1BE04AB04();
    v22 = sub_1BE04AF24();
    v24 = v23;
    (*(v34 + 8))(v8, v35);
    (*(v32 + 8))(v12, v33);
    (*(v13 + 8))(v16, v31);
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1BD110550();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_1BE052454();

    v25 = sub_1BE052404();

    [v17 setSecondaryString_];

    v26 = v36;
    sub_1BE049BD4();
    v27 = v38;
    sub_1BE04B054();
    sub_1BE0493E4();
    (*(v40 + 8))(v27, v41);
    (*(v37 + 8))(v26, v39);
    v28 = sub_1BE052404();

    [v17 setValueString_];

    [v17 setShouldShowDisclosure_];
    if (sub_1BE049B74())
    {
      v29 = sub_1BE052404();
      [v17 setSecondaryBadgeSymbol_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BDA2B5C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  return sub_1BDA2F174(v5 + v3, a1);
}

uint64_t sub_1BDA2B690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  return sub_1BDA2F174(v3 + v4, a2);
}

uint64_t sub_1BDA2B758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BDA2F174(a1, &v7 - v4);
  return sub_1BDA2B7EC(v5);
}

uint64_t sub_1BDA2B7EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  sub_1BDA2F174(v1 + v7, v6);
  v8 = sub_1BDA2F7BC(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD498C8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5);
    sub_1BE04B584();
  }

  else
  {
    sub_1BDA2F174(a1, v6);
    swift_beginAccess();
    sub_1BDA2FAAC(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498C8);
}

uint64_t sub_1BDA2B9DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  sub_1BDA2FB38(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BDA2BA48()
{
  swift_getKeyPath();
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BDA2BAF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions;
  if (!*(v1 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5);
    sub_1BE04B584();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1BE048C84();
  v5 = sub_1BD400D50(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1BDA2BC64()
{
  v1[2] = v0;
  sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2BCFC, v3, v2);
}

uint64_t sub_1BDA2BCFC()
{
  if ([*(v0[2] + 24) isAppleCardPass])
  {
    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_1BDA2BE0C;

    return sub_1BDA2C344();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1BDA2BF74;

    return sub_1BDA2D0B8();
  }
}

uint64_t sub_1BDA2BE0C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1BDA2C218, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_1BDA2C0DC;

    return sub_1BDA2DCD4();
  }
}

uint64_t sub_1BDA2BF74()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1BDA2C27C, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_1BDA2C0DC;

    return sub_1BDA2DCD4();
  }
}

uint64_t sub_1BDA2C0DC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1BDA2C2E0;
  }

  else
  {
    v5 = sub_1BD440A84;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BDA2C218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA2C27C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA2C2E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA2C344()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  v1[4] = swift_task_alloc();
  v2 = sub_1BE0495A4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE049B64();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_1BE049C24();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_1BE0498D4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  sub_1BE0528A4();
  v1[19] = sub_1BE052894();
  v7 = sub_1BE052844();
  v1[20] = v7;
  v1[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2C5C8, v7, v6);
}

uint64_t sub_1BDA2C5C8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[9];
  v5 = v0[5];
  (*(v2 + 104))(v1, *MEMORY[0x1E6967918], v3);
  v6 = sub_1BE0498C4();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *(v7 + 16) = v6;
  v0[2] = v5;
  sub_1BE04B444();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_1BE049B54();
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1BDA2C78C;
  v10 = v0[15];
  v11 = v0[12];

  return MEMORY[0x1EEDC14B8](v10, v11);
}

uint64_t sub_1BDA2C78C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_1BDA2CB7C;
  }

  else
  {
    v8 = sub_1BDA2C924;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BDA2C924()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = sub_1BE049C14();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16) == 1)
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    v10 = *(v8 + 16);
    v10(v6, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v5, v6, v7);
    v10(v9, v5, v7);
    (*(v8 + 56))(v9, 0, 1, v7);
    sub_1BDA2B7EC(v9);
    (*(v8 + 8))(v5, v7);
  }

  else
  {

    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Multiple Apple Cards", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BDA2CB7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA2CC50@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C240);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v28 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C248);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - v14;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C250);
  v16 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v17);
  v19 = &v26 - v18;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v7 + 8))(v10, v6);
  swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD5C258, &qword_1EBD5C248);
  sub_1BE04A724();

  (*(v12 + 8))(v15, v11);
  v33 = v29;
  v20 = v28;
  sub_1BE04A7B4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C260);
  v22 = v30;
  v30[3] = v21;
  v22[4] = sub_1BDA2F5CC();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_1BD0DE4F4(&qword_1EBD5C288, &qword_1EBD5C250);
  sub_1BD0DE4F4(qword_1EBD5C290, &qword_1EBD5C240);
  v23 = v27;
  v24 = v31;
  sub_1BE04A714();
  (*(v32 + 8))(v20, v24);
  return (*(v16 + 8))(v19, v23);
}

uint64_t sub_1BDA2D0B8()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  v1[4] = swift_task_alloc();
  v2 = sub_1BE0495A4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE049B64();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_1BE049C24();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  sub_1BE0528A4();
  v1[16] = sub_1BE052894();
  v6 = sub_1BE052844();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2D2E0, v6, v5);
}

uint64_t sub_1BDA2D2E0()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = [*(v0[3] + 24) primaryAccountIdentifier];
  v4 = sub_1BE052434();
  v6 = v5;

  v7 = swift_task_alloc();
  v0[19] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v0[2] = v2;
  sub_1BE04B444();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  sub_1BE049B54();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1BDA2D488;
  v10 = v0[15];
  v11 = v0[12];

  return MEMORY[0x1EEDC14B8](v10, v11);
}

uint64_t sub_1BDA2D488()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_1BDA2D868;
  }

  else
  {
    v8 = sub_1BDA2D620;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BDA2D620()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  v4 = sub_1BE049C14();
  (*(v3 + 8))(v1, v2);
  if (*(v4 + 16) == 1)
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    v10 = *(v8 + 16);
    v10(v6, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v5, v6, v7);
    v10(v9, v5, v7);
    (*(v8 + 56))(v9, 0, 1, v7);
    sub_1BDA2B7EC(v9);
    (*(v8 + 8))(v5, v7);
  }

  else
  {

    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Multiple Accounts for FPAN", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BDA2D868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA2D930@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F0);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v10 + 8))(v13, v9);
  v25 = v21;
  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A300);
  a3[4] = sub_1BD99398C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD5A330, &qword_1EBD5A2F8);
  sub_1BD0DE4F4(&qword_1EBD5A338, &qword_1EBD5A2F0);
  sub_1BD993B04(&qword_1EBD41EE8);
  v19 = v23;
  sub_1BE04A714();
  (*(v24 + 8))(v8, v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BDA2DCD4()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C158);
  v1[8] = swift_task_alloc();
  v2 = sub_1BE049D94();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  v1[12] = swift_task_alloc();
  v3 = sub_1BE0495A4();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  sub_1BE0528A4();
  v1[16] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[17] = v5;
  v1[18] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2DE94, v5, v4);
}

uint64_t sub_1BDA2DE94()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5);
  sub_1BE04B594();

  v5 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  sub_1BDA2F174(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[12];

    sub_1BD0DE53C(v6, &qword_1EBD498C8);
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Tried to load Predicted Transactions without account", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[15];
    v13 = v0[8];
    (*(v0[14] + 32))(v12, v0[12], v0[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C168);
    *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    sub_1BDA2FBA8(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    sub_1BE04A4F4();
    v14 = swift_task_alloc();
    v0[19] = v14;
    *(v14 + 16) = v12;
    v0[6] = sub_1BE049BF4();
    sub_1BE04B444();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C170);
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
    sub_1BE049D84();
    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_1BDA2E2E4;
    v17 = v0[11];

    return MEMORY[0x1EEDC14F0](v17);
  }
}

uint64_t sub_1BDA2E2E4(uint64_t a1)
{
  v4 = *v2;
  v4[21] = v1;

  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = v4[17];
    v9 = v4[18];
    v10 = sub_1BDA2E540;
  }

  else
  {
    v4[22] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = v4[17];
    v9 = v4[18];
    v10 = sub_1BDA2E46C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1BDA2E46C()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];

  sub_1BDA2BAF4(v1);
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BDA2E540()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BDA2E60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C178);
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v55 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C180);
  v9 = *(v8 - 8);
  v60 = v8;
  v61 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v56 = &v44 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C188);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v12);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C190);
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C198);
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C1A0);
  v48 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v44 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C1A8);
  v29 = *(v28 - 8);
  v53 = v28;
  v54 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v44 = &v44 - v31;
  v46 = *a1;
  sub_1BD0DE4F4(&qword_1EBD5C1B0, &qword_1EBD5C198);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v32 = *(v62 + 8);
  v62 += 8;
  v45 = v32;
  v32(v23, v20);
  sub_1BE0495A4();
  sub_1BE04A7B4();
  swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD5C1B8, &qword_1EBD5C188);
  v33 = v47;
  sub_1BE04A724();

  (*(v49 + 8))(v14, v33);
  sub_1BD0DE4F4(&qword_1EBD5C1C0, &qword_1EBD5C1A0);
  sub_1BD0DE4F4(&qword_1EBD5C1C8, &qword_1EBD5C190);
  sub_1BDA2FBA8(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v34 = v50;
  sub_1BE04A714();
  (*(v51 + 8))(v19, v34);
  (*(v48 + 8))(v27, v24);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v35 = v55;
  sub_1BE04A724();

  v45(v23, v20);
  sub_1BD0DE4F4(&qword_1EBD5C1D0, &qword_1EBD5C178);
  v37 = v56;
  v36 = v57;
  sub_1BE04A734();
  (*(v58 + 8))(v35, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C1D8);
  v39 = v59;
  v59[3] = v38;
  v39[4] = sub_1BDA2F1EC();
  __swift_allocate_boxed_opaque_existential_1(v39);
  sub_1BD0DE4F4(&qword_1EBD5C230, &qword_1EBD5C1A8);
  sub_1BD0DE4F4(&qword_1EBD5C238, &qword_1EBD5C180);
  v40 = v44;
  v41 = v53;
  v42 = v60;
  sub_1BE04A784();
  (*(v61 + 8))(v37, v42);
  return (*(v54 + 8))(v40, v41);
}

uint64_t sub_1BDA2EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_1BDA2EE84()
{

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account, &qword_1EBD498C8);
  v1 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel_logger;
  v2 = sub_1BE04D214();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel___observationRegistrar;
  v4 = sub_1BE04B5D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_5()
{
  result = qword_1EBD5C148;
  if (!qword_1EBD5C148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA2EFF4()
{
  sub_1BDA2F11C();
  if (v0 <= 0x3F)
  {
    sub_1BE04D214();
    if (v1 <= 0x3F)
    {
      sub_1BE04B5D4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BDA2F11C()
{
  if (!qword_1EBD4D598)
  {
    sub_1BE0495A4();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D598);
    }
  }
}

uint64_t sub_1BDA2F174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BDA2F1EC()
{
  result = qword_1EBD5C1E0;
  if (!qword_1EBD5C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C1D8);
    sub_1BDA2F278();
    sub_1BDA2F488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C1E0);
  }

  return result;
}

unint64_t sub_1BDA2F278()
{
  result = qword_1EBD5C1E8;
  if (!qword_1EBD5C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C1A8);
    sub_1BDA2F524(&qword_1EBD5C1F0, &qword_1EBD5C1A0);
    sub_1BDA2F31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C1E8);
  }

  return result;
}

unint64_t sub_1BDA2F31C()
{
  result = qword_1EBD5C200;
  if (!qword_1EBD5C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C190);
    sub_1BDA2F3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C200);
  }

  return result;
}

unint64_t sub_1BDA2F3A0()
{
  result = qword_1EBD5C208;
  if (!qword_1EBD5C208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C188);
    v1 = MEMORY[0x1E6967810];
    sub_1BDA2FBA8(&qword_1EBD5C210, MEMORY[0x1E6967810]);
    sub_1BDA2FBA8(&qword_1EBD5C218, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C208);
  }

  return result;
}

unint64_t sub_1BDA2F488()
{
  result = qword_1EBD5C220;
  if (!qword_1EBD5C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C180);
    sub_1BDA2F524(&qword_1EBD5C228, &qword_1EBD5C178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C220);
  }

  return result;
}

uint64_t sub_1BDA2F524(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1BD0DE4F4(&qword_1EBD5C1F8, &qword_1EBD5C198);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BDA2F5CC()
{
  result = qword_1EBD5C268;
  if (!qword_1EBD5C268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C260);
    sub_1BDA2F658();
    sub_1BDA2F6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C268);
  }

  return result;
}

unint64_t sub_1BDA2F658()
{
  result = qword_1EBD5C270;
  if (!qword_1EBD5C270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C250);
    sub_1BD9938F4(&qword_1EBD5C278, &qword_1EBD5C248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C270);
  }

  return result;
}

unint64_t sub_1BDA2F6F4()
{
  result = qword_1EBD5C280;
  if (!qword_1EBD5C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C280);
  }

  return result;
}

uint64_t sub_1BDA2F778()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions) = *(v0 + 24);
  sub_1BE048C84();
}

uint64_t sub_1BDA2F7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0495A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D840);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1BDA2F174(a1, &v24 - v15);
  sub_1BDA2F174(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BDA2F174(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1BDA2FBA8(&qword_1EBD4D848, MEMORY[0x1E6967810]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v16, &qword_1EBD498C8);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD4D840);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v16, &qword_1EBD498C8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BDA2FAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA2FB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA2FBA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t get_enum_tag_for_layout_string_9PassKitUI21CachedAsyncImagePhaseO(uint64_t *a1)
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

uint64_t sub_1BDA2FC0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BDA2FC68(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1BDA2FCC8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_1BDA2FD04()
{
  sub_1BDA2FE10();
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BDA2FE60();
      if (v2 <= 0x3F)
      {
        sub_1BDA2FEB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BDA2FE10()
{
  if (!qword_1EBD5C318)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5C318);
    }
  }
}

void sub_1BDA2FE60()
{
  if (!qword_1EBD5C320)
  {
    sub_1BE04A134();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5C320);
    }
  }
}

unint64_t sub_1BDA2FEB8()
{
  result = qword_1EBD5C328;
  if (!qword_1EBD5C328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD5C328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageLoadingStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageLoadingStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1BDA2FF58(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BDA2FF74(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1BDA2FFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = sub_1BE0528D4();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v58 = a1;
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  a1 -= 8;
  v49 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = v11;
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v52, v16);
  v55 = &v48 - v17;
  v18 = *(a1 + 24);
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C330);
  v23 = sub_1BE04EBD4();
  v57 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v48 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v51 = &v48 - v28;
  v29 = *(v2 + 2);
  v66 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338);
  sub_1BE0516A4();
  v30 = v65;
  v50 = v22;
  v29(v65);
  sub_1BDA32618(v30);
  sub_1BDA32638(v2 + *(a1 + 48), v15);
  v31 = sub_1BE04A134();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    sub_1BD0DE53C(v15, &qword_1EBD45720);
    v33 = sub_1BE04AA64();
    v34 = v55;
    (*(*(v33 - 8) + 56))(v55, 1, 1, v33);
  }

  else
  {
    v34 = v55;
    sub_1BE04A124();
    (*(v32 + 8))(v15, v31);
  }

  v35 = v49;
  v36 = v56;
  v37 = v58;
  (*(v49 + 16))(v56, v3, v58);
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v40 = *(v37 + 24);
  *(v39 + 16) = v18;
  *(v39 + 24) = v40;
  (*(v35 + 32))(v39 + v38, v36, v37);
  sub_1BDA32790();
  v41 = v59;
  sub_1BE0528B4();
  v42 = v48;
  v43 = v50;
  sub_1BE050EC4();

  (*(v60 + 8))(v41, v61);
  sub_1BD0DE53C(v34, &unk_1EBD3CF70);
  (*(v54 + 8))(v43, v18);
  v44 = sub_1BDA32814();
  v63 = v40;
  v64 = v44;
  swift_getWitnessTable();
  v45 = v51;
  sub_1BD147308(v42);
  v46 = *(v57 + 8);
  v46(v42, v23);
  sub_1BD147308(v45);
  return (v46)(v45, v23);
}

uint64_t sub_1BDA305E0()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for CachedAsyncImage();
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BDA306B0(v2);
}

uint64_t sub_1BDA306B0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  v2[22] = swift_task_alloc();
  v3 = sub_1BE04A134();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  sub_1BE0528A4();
  v2[26] = sub_1BE052894();
  v5 = sub_1BE052844();
  v2[27] = v5;
  v2[28] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA307DC, v5, v4);
}

uint64_t sub_1BDA307DC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_1BDA32638(*(v0 + 168) + *(*(v0 + 160) + 40), v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  if (v4 == 1)
  {

    sub_1BD0DE53C(v5, &qword_1EBD45720);
    v7 = *v6;
    *(v0 + 128) = 0x8000000000000008;
    *(v0 + 64) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338);
    sub_1BE0516B4();
LABEL_5:

    v17 = *(v0 + 8);

    return v17();
  }

  v8 = *(v0 + 160);
  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  v9 = sub_1BDA312A8(v8);
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);

    sub_1BE04E474();
    v16 = swift_task_alloc();
    v16[2] = *(v15 + 16);
    v16[3] = *(v15 + 24);
    v16[4] = v14;
    v16[5] = v10;
    sub_1BE04E7D4();

    (*(v13 + 8))(v11, v12);
    goto LABEL_5;
  }

  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v21 = *v19;
  *(v0 + 232) = *v19;
  v22 = v19[1];
  *(v0 + 240) = v22;
  *(v0 + 80) = v21;
  *(v0 + 88) = v22;
  *(v0 + 136) = 0x8000000000000000;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338);
  sub_1BE0516B4();
  v23 = v19 + *(v20 + 52);
  if (v23[24])
  {
    v24 = swift_task_alloc();
    *(v0 + 272) = v24;
    *v24 = v0;
    v24[1] = sub_1BDA30C9C;
    v25 = *(v0 + 200);
    v26 = *(v0 + 160);

    return sub_1BDA3154C(v25, v26);
  }

  else
  {
    v27 = *(v23 + 2);
    v29 = *v23;
    v28 = *(v23 + 1);
    v30 = swift_task_alloc();
    *(v0 + 256) = v30;
    *v30 = v0;
    v30[1] = sub_1BDA30B58;
    v31 = *(v0 + 200);
    v32 = *(v0 + 160);

    return sub_1BDA31ABC(v31, v27, v32, v29, v28);
  }
}

uint64_t sub_1BDA30B58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[33] = v1;

  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = sub_1BDA311D4;
  }

  else
  {
    v7 = sub_1BDA30F70;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BDA30C9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v4[35] = v1;

  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = sub_1BDA31100;
  }

  else
  {
    v7 = sub_1BDA30DE0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BDA30DE0()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    sub_1BE048964();
    sub_1BE04E474();
    v7 = swift_task_alloc();
    v7[2] = *(v6 + 16);
    v7[3] = *(v6 + 24);
    v7[4] = v5;
    v7[5] = v1;
    sub_1BE04E7D4();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    *(v0 + 112) = *(v0 + 232);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    *(v0 + 152) = 0x8000000000000008;
    sub_1BE0516B4();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BDA30F70()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    sub_1BE048964();
    sub_1BE04E474();
    v7 = swift_task_alloc();
    v7[2] = *(v6 + 16);
    v7[3] = *(v6 + 24);
    v7[4] = v5;
    v7[5] = v1;
    sub_1BE04E7D4();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    *(v0 + 112) = *(v0 + 232);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    *(v0 + 152) = 0x8000000000000008;
    sub_1BE0516B4();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BDA31100()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[24];

  v0[12] = v3;
  v0[13] = v2;
  v0[18] = v1 | 0x4000000000000000;
  sub_1BE0516B4();
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BDA311D4()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[24];

  v0[12] = v3;
  v0[13] = v2;
  v0[18] = v1 | 0x4000000000000000;
  sub_1BE0516B4();
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

id sub_1BDA312A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = sub_1BE04A134();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BDA32638(v1 + *(a1 + 40), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD45720);
    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  v12 = *(v1 + *(a1 + 44));
  v13 = sub_1BE04A0F4();
  v14 = [v12 cachedResponseForRequest_];

  if (!v14)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v15 = [v14 data];
  v16 = sub_1BE04AAC4();
  v18 = v17;

  v19 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v16, v18);
  sub_1BD041A38(v16, v18);
  v20 = sub_1BE04AAB4();
  v21 = [v19 initWithData_];

  sub_1BD1245AC(v16, v18);
  if (v21)
  {
    v21 = sub_1BE051544();
  }

  sub_1BD1245AC(v16, v18);
  sub_1BD1245AC(v16, v18);

  (*(v8 + 8))(v11, v7);
  return v21;
}

uint64_t sub_1BDA3154C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1BE0528A4();
  v3[5] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA315E8, v5, v4);
}

uint64_t sub_1BDA315E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_opt_self() defaultSessionConfiguration];
  v0[8] = v3;
  v0[9] = *(v1 + *(v2 + 44));
  [v3 setURLCache_];
  v0[10] = [objc_opt_self() sessionWithConfiguration_];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1BDA316FC;
  v5 = v0[2];

  return MEMORY[0x1EEDC6260](v5, 0);
}

uint64_t sub_1BDA316FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = v3;

  v7 = v5[7];
  v8 = v5[6];
  if (v3)
  {
    v9 = sub_1BDA31A44;
  }

  else
  {
    v9 = sub_1BDA31844;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1BDA31844()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v1, v2);
  sub_1BD041A38(v1, v2);
  sub_1BD041A38(v1, v2);
  v4 = sub_1BE04AAB4();
  v5 = [v3 initWithData_];

  sub_1BD1245AC(v1, v2);
  if (v5)
  {
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[12];
    v9 = v0[9];
    v10 = sub_1BE051544();
    sub_1BD1245AC(v8, v6);
    sub_1BD1245AC(v8, v6);
    v11 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
    sub_1BD041A38(v8, v6);
    v12 = v7;
    v13 = sub_1BE04AAB4();
    v14 = [v11 initWithResponse:v12 data:v13];

    sub_1BD1245AC(v8, v6);
    v15 = sub_1BE04A0F4();
    [v9 storeCachedResponse:v14 forRequest:v15];
  }

  else
  {
    v16 = v0[12];
    v17 = v0[13];
    sub_1BD1245AC(v16, v17);
    sub_1BD1245AC(v16, v17);
    v10 = 0;
    v15 = v0[14];
  }

  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[10];
  v21 = v0[8];

  sub_1BD1245AC(v19, v18);
  v22 = v0[1];

  return v22(v10);
}

uint64_t sub_1BDA31A44()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BDA31ABC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 56) = a3;
  *(v6 + 64) = v5;
  *(v6 + 48) = a2;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 24) = a1;
  *(v6 + 72) = sub_1BE0528A4();
  *(v6 + 80) = sub_1BE052894();
  v8 = sub_1BE052844();
  *(v6 + 88) = v8;
  *(v6 + 96) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BDA31B64, v8, v7);
}

uint64_t sub_1BDA31B64()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_1BE052894();
  v0[13] = v7;
  v8 = swift_task_alloc();
  v0[14] = v8;
  v8[2] = *(v2 + 16);
  v8[3] = *(v2 + 24);
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v3;
  v8[8] = v1;
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC68);
  *v9 = v0;
  v9[1] = sub_1BDA31CB4;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v7, v11, 0xD00000000000002ALL, 0x80000001BE148590, sub_1BDA32898, v8, v10);
}

uint64_t sub_1BDA31CB4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1BDA31E40;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1BDA31DD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BDA31DD8()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BDA31E40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA31EB8()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338);
  return sub_1BE0516B4();
}

void sub_1BDA31F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v44 = a3;
  v37 = a1;
  v45 = type metadata accessor for CachedAsyncImage();
  v11 = *(v45 - 8);
  v40 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v45, v12);
  v36 = &v33 - v13;
  v14 = sub_1BE04A134();
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  v39 = [objc_allocWithZone(MEMORY[0x1E69853A0]) init];
  v38 = sub_1BE04A0F4();
  (*(v19 + 16))(v23, v37, v18);
  (*(v15 + 16))(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
  v24 = v36;
  (*(v11 + 16))(v36, v41, v45);
  v25 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v26 = (v20 + *(v15 + 80) + v25) & ~*(v15 + 80);
  v27 = (v16 + *(v11 + 80) + v26) & ~*(v11 + 80);
  v28 = swift_allocObject();
  v29 = v43;
  *(v28 + 16) = v42;
  *(v28 + 24) = v29;
  (*(v19 + 32))(v28 + v25, v23, v18);
  (*(v15 + 32))(v28 + v26, v35, v34);
  (*(v11 + 32))(v28 + v27, v24, v45);
  aBlock[4] = sub_1BDA328AC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD21AC88;
  aBlock[3] = &block_descriptor_242;
  v30 = _Block_copy(aBlock);

  v32 = v38;
  v31 = v39;
  [v39 _loadAndDecodeImage_constrainedToSize_maximumBytesFromNetwork_completionHandler_];
  _Block_release(v30);
}

void sub_1BDA322E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v34 - v11;
  if (a2)
  {
    v38 = a2;
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350);
    sub_1BE052854();
    return;
  }

  if (!a1)
  {
    v38 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350);
    sub_1BE052864();
    return;
  }

  v14 = a1;
  v15 = UIImagePNGRepresentation(v14);
  if (v15)
  {
    v35 = v14;
    v16 = v15;
    v17 = sub_1BE04AAC4();
    v19 = v18;

    v36 = v19;
    v37 = v17;
    sub_1BD041A38(v17, v19);
    v34[1] = a4;
    sub_1BE04A124();
    v20 = sub_1BE04AA64();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v12, 1, v20) == 1)
    {
      __break(1u);
      return;
    }

    v22 = objc_allocWithZone(MEMORY[0x1E696AC68]);
    v23 = sub_1BE04A9C4();
    v24 = [v22 initWithURL:v23 statusCode:200 HTTPVersion:0 headerFields:0];

    (*(v21 + 8))(v12, v20);
    v26 = v36;
    v25 = v37;
    if (v24)
    {
      v27 = *(a5 + *(type metadata accessor for CachedAsyncImage() + 44));
      v28 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
      sub_1BD041A38(v25, v26);
      v29 = v24;
      v30 = sub_1BE04AAB4();
      v31 = [v28 initWithResponse:v29 data:v30];

      sub_1BD1245AC(v25, v26);
      v32 = sub_1BE04A0F4();
      [v27 storeCachedResponse:v31 forRequest:v32];
    }

    sub_1BD1245AC(v25, v26);
    v14 = v35;
  }

  else
  {
    v25 = 0;
    v26 = 0xF000000000000000;
  }

  v33 = v14;
  v38 = sub_1BE051544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350);
  sub_1BE052864();
  sub_1BD030220(v25, v26);
}

void sub_1BDA32618(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_1BDA32638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA326A8()
{
  type metadata accessor for CachedAsyncImage();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BDA305E0();
}

unint64_t sub_1BDA32790()
{
  result = qword_1EBD5C340;
  if (!qword_1EBD5C340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3CF70);
    sub_1BD96D338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C340);
  }

  return result;
}

unint64_t sub_1BDA32814()
{
  result = qword_1EBD5C348;
  if (!qword_1EBD5C348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C348);
  }

  return result;
}

void sub_1BDA328AC(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1BE04A134() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for CachedAsyncImage() - 8);
  v12 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  sub_1BDA322E0(a1, a2, v2 + v6, v2 + v9, v12);
}

void *sub_1BDA32A3C@<X0>(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a1[3];
  v12 = a1[2];
  v13 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358);
  result = MEMORY[0x1BFB3E970](&v8, v5);
  v7 = v9;
  if (v9)
  {
    result = sub_1BD4CE958(v8, v9);
  }

  *a2 = v7 != 0;
  return result;
}

_BYTE *sub_1BDA32ABC(_BYTE *result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*result & 1) == 0)
  {
    v4 = *a4;
    v5 = a4[1];
    v6 = a4[2];
    v7 = a4[3];
    sub_1BDA33B50(a4, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358);
    sub_1BE0518F4();
    v8[0] = v4;
    v8[1] = v5;
    v8[2] = v6;
    v8[3] = v7;
    return sub_1BD0DE53C(v8, &qword_1EBD5C358);
  }

  return result;
}

uint64_t sub_1BDA32B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v41 = a2;
  v4 = v2[1];
  v50 = *v2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v51 = v4;
  v52 = v7;
  v8 = v2[2];
  v53 = v2[3];
  v46 = v5;
  v47 = v6;
  v9 = v2[3];
  v48 = v8;
  v49 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358);
  MEMORY[0x1BFB3E970](&v43);
  v11 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v12 = v43;
    sub_1BE048C84();
    sub_1BD4CE958(v12, v11);
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  *&v46 = v12;
  *(&v46 + 1) = v11;
  sub_1BD0DDEBC();
  v40 = sub_1BE0506C4();
  v39 = v13;
  v37 = v14;
  v38 = v15;
  sub_1BE0528A4();
  sub_1BDA33B50(v3, &v46);
  v16 = sub_1BE052894();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v19 = v3[1];
  *(v17 + 32) = *v3;
  *(v17 + 48) = v19;
  v20 = v3[3];
  *(v17 + 64) = v3[2];
  *(v17 + 80) = v20;
  sub_1BDA33B50(v3, &v46);
  v21 = sub_1BE052894();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v18;
  v23 = v3[1];
  *(v22 + 32) = *v3;
  *(v22 + 48) = v23;
  v24 = v3[3];
  *(v22 + 64) = v3[2];
  *(v22 + 80) = v24;
  sub_1BE051934();
  v34 = *(&v46 + 1);
  v35 = v46;
  v36 = v47;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  v49 = v53;
  v25 = MEMORY[0x1BFB3E970](&v43, v10);
  v32[0] = v32;
  v33 = *(&v43 + 1);
  v26 = v43;
  v32[2] = *(&v44 + 1);
  v32[3] = v44;
  v32[1] = v45;
  v46 = v43;
  v47 = v44;
  v48 = v45;
  MEMORY[0x1EEE9AC00](v25, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD5C368, &qword_1EBD5C360);
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
  sub_1BD12E194();
  v28 = v37;
  v29 = v40;
  v30 = v39;
  sub_1BE050F04();

  sub_1BD0DDF10(v29, v30, v28 & 1);

  return sub_1BD4CE958(v26, v33);
}

id sub_1BDA32FE8@<X0>(_OWORD *a1@<X1>, char *a2@<X8>)
{
  v57 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v55 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v54 = &v53 - v20;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v61 = &v53 - v24;
  v25 = *MEMORY[0x1E69B8068];
  v26 = *(v4 + 104);
  v60 = v3;
  v58 = v26;
  (v26)(v10, v25, v3, v23);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04B6F4();
    v31 = v30;

    v32 = v10;
    v33 = v60;
    v53 = *(v4 + 8);
    v53(v32, v60);
    v63 = v29;
    v64 = v31;
    v34 = swift_allocObject();
    v35 = a1[1];
    v34[1] = *a1;
    v34[2] = v35;
    v36 = a1[3];
    v34[3] = a1[2];
    v34[4] = v36;
    sub_1BDA33B50(a1, v62);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v58(v59, v25, v33);
    result = PKPassKitBundle();
    if (result)
    {
      v37 = result;
      v38 = v59;
      v39 = sub_1BE04B6F4();
      v41 = v40;

      v53(v38, v60);
      v63 = v39;
      v64 = v41;
      v42 = swift_allocObject();
      v43 = a1[1];
      v42[1] = *a1;
      v42[2] = v43;
      v44 = a1[3];
      v42[3] = a1[2];
      v42[4] = v44;
      sub_1BDA33B50(a1, v62);
      v45 = v54;
      sub_1BE051744();
      v46 = *(v12 + 16);
      v47 = v55;
      v48 = v61;
      v46(v55, v61, v11);
      v49 = v56;
      v46(v56, v45, v11);
      v50 = v57;
      v46(v57, v47, v11);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98);
      v46(&v50[*(v51 + 48)], v49, v11);
      v52 = *(v12 + 8);
      v52(v45, v11);
      v52(v48, v11);
      v52(v49, v11);
      return (v52)(v47, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BDA3349C(__int128 *a1)
{
  v1 = a1[1];
  v12 = *a1;
  v13 = v1;
  v2 = a1[3];
  v14 = a1[2];
  v15 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358);
  result = MEMORY[0x1BFB3E970](&v9, v3);
  v5 = v10;
  if (v10)
  {
    v6 = v9;
    v7 = v11;
    sub_1BE048964();
    v8 = sub_1BD4CE958(v6, v5);
    v7(v8);
  }

  return result;
}

id sub_1BDA3354C(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v21 - v4;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v24 = *a1;
  v25 = v11;
  v12 = a1[3];
  v26 = a1[2];
  v27 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358);
  MEMORY[0x1BFB3E970](&v21, v13);
  v14 = v22;
  if (v22)
  {
    v15 = v21;
    v16 = v23;
    sub_1BE048964();
    v17 = sub_1BD4CE958(v15, v14);
    v16(v17);
  }

  sub_1BE04AA54();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1BD0DE53C(v5, &unk_1EBD3CF70);
  }

  (*(v7 + 32))(v10, v5, v6);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04A9C4();
    [v19 openSensitiveURL:v20 withOptions:0];

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA337C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_1BD0DDEBC();
    sub_1BE048C84();
    result = sub_1BE0506C4();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

id sub_1BDA33888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  IsAvailable = PKPearlIsAvailable();
  v18 = *MEMORY[0x1E69B8068];
  v19 = *(v5 + 104);
  if (IsAvailable)
  {
    v19(v16, *MEMORY[0x1E69B8068], v4);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v21 = result;
    v22 = sub_1BE04B6F4();
    v33 = v23;
    v34 = v22;
LABEL_6:

    v26 = *(v5 + 8);
    v26(v16, v4);
    v19(v8, v18, v4);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      v30 = v29;

      result = (v26)(v8, v4);
      v31 = v33;
      *a3 = v34;
      a3[1] = v31;
      a3[2] = v28;
      a3[3] = v30;
      v32 = v36;
      a3[4] = v35;
      a3[5] = v32;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v19(v12, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v24 = sub_1BE04B6F4();
    v33 = v25;
    v34 = v24;
    v16 = v12;
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI19DeviceTakeoverAlertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroyTm_123()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BDA33CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C370);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v29[-v5 - 16];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C378);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29[-v9 - 16];
  v11 = PKSetupListViewConstantsViewMargin();
  PKSetupListHeaderViewConstantsViewMargin();
  v13 = v12;
  *v6 = sub_1BE04F7B4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C380);
  sub_1BDA341CC(v1, &v6[*(v14 + 44)], v13, v11);
  sub_1BD0DE4F4(&qword_1EBD5C388, &qword_1EBD5C370);
  sub_1BE050E74();
  sub_1BD0DE53C(v6, &qword_1EBD5C370);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = v30;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C390) + 36)];
  *v18 = KeyPath;
  v18[1] = sub_1BD10DF54;
  v18[2] = v17;
  type metadata accessor for DevicePickerController(0);
  sub_1BDA3ABE0(&qword_1EBD4B7D0, type metadata accessor for DevicePickerController);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v28 = v30;
  v19 = v31;
  v33 = *(v1 + 16);
  v32 = *(v1 + 32);
  v20 = swift_allocObject();
  v21 = *(v1 + 16);
  *(v20 + 16) = *v1;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v1 + 32);
  sub_1BD0DE19C(v10, a1, &qword_1EBD5C378);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C398) + 36);
  *v22 = v28;
  *(v22 + 16) = v19;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = PKEdgeInsetsMake;
  *(v22 + 64) = 0;
  *(v22 + 72) = sub_1BDA39D60;
  *(v22 + 80) = v20;
  *(v22 + 88) = 0;
  *(v22 + 96) = 0;
  sub_1BE048964();
  sub_1BD0DE19C(&v33, v29, &qword_1EBD3A5C8);
  sub_1BD0DE19C(&v32, v29, &qword_1EBD5C3A0);
  sub_1BD0DE53C(v10, &qword_1EBD5C378);
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3A8) + 52));
  *v23 = 0xD000000000000016;
  v23[1] = 0x80000001BE1486B0;
  v24 = swift_allocObject();
  v25 = *(v1 + 16);
  *(v24 + 16) = *v1;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v1 + 32);
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3B0) + 36));
  *v26 = sub_1BDA39D68;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  sub_1BE048964();
  sub_1BD0DE19C(&v33, &v30, &qword_1EBD3A5C8);
  return sub_1BD0DE19C(&v32, &v30, &qword_1EBD5C3A0);
}

uint64_t sub_1BDA3415C(uint64_t result)
{
  v1 = *(*(result + 8) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  if (v1)
  {
    v2 = sub_1BE048964();
    v1(v2);

    return sub_1BD0D4744(v1);
  }

  return result;
}

uint64_t sub_1BDA341CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v43 = a1;
  v55 = a2;
  v52 = sub_1BE04FB94();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v7);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BE04FC54();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3B8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3C0);
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3C8);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v21);
  v23 = &v42 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D0);
  v54 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v24);
  v42 = &v42 - v25;
  v58 = a1;
  v59 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D8);
  v50 = MEMORY[0x1E6981F48];
  sub_1BD0DE4F4(&qword_1EBD5C3E0, &qword_1EBD5C3D8);
  sub_1BE0504E4();
  v26 = sub_1BE0501C4();
  sub_1BE04FC24();
  v27 = sub_1BD0DE4F4(&qword_1EBD5C3E8, &qword_1EBD5C3B8);
  MEMORY[0x1BFB3DB30](v26, *&a4, 0, v11, v12, v27);
  (*(v45 + 8))(v11, v48);
  (*(v13 + 8))(v16, v12);
  v28 = v49;
  sub_1BE04FB84();
  v60 = v12;
  v61 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x1E697C750];
  v31 = v52;
  sub_1BE051144();
  (*(v53 + 8))(v28, v31);
  (*(v44 + 8))(v20, v17);
  v60 = v17;
  v61 = v31;
  v62 = OpaqueTypeConformance2;
  v63 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v42;
  v34 = v46;
  sub_1BE050DF4();
  (*(v47 + 8))(v23, v34);
  sub_1BE051C64();
  v57 = v43;
  v56 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3F8);
  v60 = v34;
  v61 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C400);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46038);
  v38 = sub_1BD0DE4F4(&qword_1EBD5C408, &qword_1EBD46038);
  v60 = v37;
  v61 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v51;
  v60 = v51;
  v61 = v36;
  v62 = v35;
  v63 = v39;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD5C410, &qword_1EBD5C3F8);
  sub_1BE0510B4();
  return (*(v54 + 8))(v33, v40);
}

id sub_1BDA34964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>)
{
  v63 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C428);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = &v56 - v10;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v56 - v19;
  v21 = *MEMORY[0x1E69B80D8];
  v22 = *(v12 + 104);
  v22(&v56 - v19, v21, v11, v18);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v59 = sub_1BE04B6F4();
    v62 = v25;

    v57 = *(v12 + 8);
    v57(v20, v11);
    v56 = "DEVICE_SELECTION_TITLE";
    (v22)(v15, v21, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BE0B69E0;
    v27 = *(*(v63 + 8) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_pass);
    v28 = [v27 localizedDescription];
    v29 = sub_1BE052434();
    v31 = v30;

    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1BD110550();
    *(v26 + 32) = v29;
    *(v26 + 40) = v31;
    v32 = sub_1BE04B714();
    v56 = v32;
    v34 = v33;

    v57(v15, v11);
    v35 = v27;
    v58 = v27;
    v36 = v27;
    v37 = sub_1BE0501F4();
    LOBYTE(v26) = v37;
    LODWORD(v57) = v37;
    sub_1BE04E1F4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v90 = 0;
    v92 = 0;
    v74[0] = sub_1BE051404();
    v46 = sub_1BE0518D4();
    v47 = v60;
    sub_1BDA34E9C(v60);
    v48 = v61;
    sub_1BD0DE19C(v47, v61, &qword_1EBD5C428);
    v49 = v59;
    *&v64 = v59;
    *(&v64 + 1) = v62;
    *&v65 = v32;
    *(&v65 + 1) = v34;
    *&v66 = v35;
    BYTE8(v66) = v26;
    *(&v66 + 9) = *v91;
    HIDWORD(v66) = *&v91[3];
    *&v67 = v39;
    *(&v67 + 1) = v41;
    *&v68 = v43;
    *(&v68 + 1) = v45;
    LOBYTE(v69) = 0;
    DWORD1(v69) = *&v93[3];
    *(&v69 + 1) = *v93;
    *(&v69 + 1) = 0;
    v70 = a3;
    v71 = 0;
    *&v72 = a3;
    BYTE8(v72) = 0;
    HIDWORD(v72) = *(v94 + 3);
    *(&v72 + 9) = v94[0];
    v73 = v46;
    v50 = v72;
    *(a2 + 128) = v46;
    *(a2 + 96) = a3;
    *(a2 + 112) = v50;
    v51 = v64;
    v52 = v65;
    v53 = v69;
    *(a2 + 64) = v68;
    *(a2 + 80) = v53;
    v54 = v67;
    *(a2 + 32) = v66;
    *(a2 + 48) = v54;
    *a2 = v51;
    *(a2 + 16) = v52;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C430);
    sub_1BD0DE19C(v48, a2 + *(v55 + 48), &qword_1EBD5C428);
    sub_1BD0DE19C(&v64, v74, &qword_1EBD5C438);
    sub_1BD0DE53C(v47, &qword_1EBD5C428);
    sub_1BD0DE53C(v48, &qword_1EBD5C428);
    v74[0] = v49;
    v74[1] = v62;
    v74[2] = v56;
    v74[3] = v34;
    v74[4] = v58;
    v75 = v57;
    *v76 = *v91;
    *&v76[3] = *&v91[3];
    v77 = v39;
    v78 = v41;
    v79 = v43;
    v80 = v45;
    v81 = 0;
    *v82 = *v93;
    *&v82[3] = *&v93[3];
    v83 = 0;
    v84 = a3;
    v85 = 0;
    v86 = a3;
    v87 = 0;
    *&v88[3] = *(v94 + 3);
    *v88 = v94[0];
    v89 = v46;
    return sub_1BD0DE53C(v74, &qword_1EBD5C438);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA34E9C@<X0>(char *a1@<X8>)
{
  v64 = a1;
  v2 = sub_1BE04BD74();
  v60 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C440);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v58 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C448);
  MEMORY[0x1EEE9AC00](v65, v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C450);
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v62 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v67 = &v58 - v19;
  v68 = v1;
  sub_1BDA366A8(v13);
  v20 = *(v1 + 24);
  if (v20)
  {
    v70 = *(v1 + 16);
    v71 = v20;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v21 = sub_1BE0506C4();
    v20 = v22;
    v24 = v23;
    v26 = v25;
    KeyPath = swift_getKeyPath();
    v28 = sub_1BE050454();
    v29 = swift_getKeyPath();
    LOBYTE(v70) = v24 & 1;
    v69 = 1;
    v30 = v24 & 1;
    v31 = 1;
    v32 = 256;
  }

  else
  {
    v21 = 0;
    v26 = 0;
    KeyPath = 0;
    v29 = 0;
    v28 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
  }

  v70 = v21;
  v71 = v20;
  v72 = v30;
  v73 = v26;
  v74 = KeyPath;
  v75 = 0;
  v76 = v31;
  v77 = v29;
  v78 = v28;
  v79 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C460);
  sub_1BDA3A118(&qword_1EBD5C468, &qword_1EBD5C448, &unk_1BE10F760, sub_1BDA39DB4);
  sub_1BDA39E6C();
  sub_1BDA3A118(&qword_1EBD5C4C0, &qword_1EBD5C460, &unk_1BE10F778, sub_1BDA3A194);
  sub_1BE051A34();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v33 = *(v70 + 16);

  if (!v33)
  {
    v40 = v14;
    v47 = 1;
    v37 = v66;
    goto LABEL_8;
  }

  v34 = v60;
  v35 = v59;
  (*(v60 + 104))(v59, *MEMORY[0x1E69B80D8], v2);
  result = PKPassKitBundle();
  v37 = v66;
  if (result)
  {
    v38 = result;
    v39 = v2;
    v40 = v14;
    v41 = sub_1BE04B6F4();
    v43 = v42;

    (*(v34 + 8))(v35, v39);
    v70 = v41;
    v71 = v43;
    sub_1BD0DDEBC();
    v70 = sub_1BE0506C4();
    v71 = v44;
    LOBYTE(v72) = v45 & 1;
    v73 = v46;
    MEMORY[0x1EEE9AC00](v70, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4D8);
    sub_1BDA3A228();
    sub_1BE051A24();
    v47 = 0;
LABEL_8:
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4E8);
    (*(*(v48 - 8) + 56))(v37, v47, 1, v48);
    v49 = v61;
    v50 = *(v61 + 16);
    v51 = v37;
    v52 = v62;
    v53 = v67;
    v50(v62, v67, v40);
    v54 = v63;
    sub_1BD0DE19C(v51, v63, &qword_1EBD5C440);
    v55 = v64;
    v50(v64, v52, v40);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4F0);
    sub_1BD0DE19C(v54, &v55[*(v56 + 48)], &qword_1EBD5C440);
    sub_1BD0DE53C(v51, &qword_1EBD5C440);
    v57 = *(v49 + 8);
    v57(v53, v40);
    sub_1BD0DE53C(v54, &qword_1EBD5C440);
    return (v57)(v52, v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA35590()
{
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3C0);
  sub_1BE04FB94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3B8);
  sub_1BD0DE4F4(&qword_1EBD5C3E8, &qword_1EBD5C3B8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46038);
  sub_1BD0DE4F4(&qword_1EBD5C408, &qword_1EBD46038);
  swift_getOpaqueTypeConformance2();
  return sub_1BE050954();
}

uint64_t sub_1BDA357C4()
{
  v0 = sub_1BE04F714();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BDA35968(v11);
  v8 = v11[2];
  v9 = v11[3];
  v10[0] = v12[0];
  *(v10 + 9) = *(v12 + 9);
  v6 = v11[0];
  v7 = v11[1];
  sub_1BE04F704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46038);
  sub_1BD0DE4F4(&qword_1EBD5C408, &qword_1EBD46038);
  sub_1BE050CB4();
  (*(v1 + 8))(v4, v0);
  v13[2] = v8;
  v13[3] = v9;
  v14[0] = v10[0];
  *(v14 + 9) = *(v10 + 9);
  v13[0] = v6;
  v13[1] = v7;
  return sub_1BD0DE53C(v13, &qword_1EBD46038);
}

id sub_1BDA35968@<X0>(_OWORD *a1@<X8>)
{
  v59 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v50 - v9;
  LOBYTE(v63[0]) = 1;
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46040)) init];
  LOBYTE(v68[0]) = 1;
  v62[0] = 1;
  v12 = &v11[qword_1EBD56240];
  v13 = *&v11[qword_1EBD56240];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_1BD0D4744(v13);
  v61 = v11;
  v14 = &v11[qword_1EBD56248[0]];
  v15 = *&v11[qword_1EBD56248[0]];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_1BD0D4744(v15);
  v56 = LOBYTE(v68[0]);
  v57 = LOBYTE(v63[0]);
  v58 = v62[0];
  v16 = *MEMORY[0x1E69B80D0];
  v60 = *(v3 + 104);
  v60(v10, v16, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v54 = v20;
    v55 = v19;

    v52 = *(v3 + 8);
    v52(v10, v2);

    v93[0] = *v1;
    v21 = *(&v93[0] + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v21;
    sub_1BE04D8B4();

    v22 = v68[0];
    v92 = *(v1 + 16);
    v91 = *(v1 + 32);
    v23 = swift_allocObject();
    *(v23 + 48) = *(v1 + 32);
    v24 = *(v1 + 16);
    *(v23 + 16) = *v1;
    *(v23 + 32) = v24;
    v25 = &v61[qword_1EBD56240];
    v26 = *&v61[qword_1EBD56240];
    *v25 = sub_1BDA39D94;
    v25[1] = v23;
    sub_1BD0DE19C(v93, v68, &qword_1EBD5C420);
    sub_1BD0DE19C(&v92, v68, &qword_1EBD3A5C8);
    sub_1BD0DE19C(&v91, v68, &qword_1EBD5C3A0);
    sub_1BD0D4744(v26);
    v60(v6, *MEMORY[0x1E69B80D8], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      LODWORD(v60) = v22 > 0;
      v51 = sub_1BE04B6F4();
      v29 = v28;

      v52(v6, v2);

      v30 = swift_allocObject();
      *(v30 + 48) = *(v1 + 32);
      v31 = *(v1 + 16);
      *(v30 + 16) = *v1;
      *(v30 + 32) = v31;
      v32 = v61;
      v33 = &v61[qword_1EBD56248[0]];
      v34 = *&v61[qword_1EBD56248[0]];
      *v33 = sub_1BDA39D9C;
      v33[1] = v30;
      sub_1BD0DE19C(v93, v68, &qword_1EBD5C420);
      sub_1BD0DE19C(&v92, v68, &qword_1EBD3A5C8);
      sub_1BD0DE19C(&v91, v68, &qword_1EBD5C3A0);
      sub_1BD0D4744(v34);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v35 = v68[0];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v36 = (v68[0] & 1) == 0;
      *(&v64 + 2) = v89;
      WORD3(v64) = v90;
      *(&v65 + 9) = *v88;
      HIDWORD(v65) = *&v88[3];
      HIWORD(v67[0]) = v87;
      v37 = v86;
      *(v67 + 10) = v86;
      v63[0] = v32;
      v63[1] = 0;
      v38 = v56;
      v39 = v57;
      LOBYTE(v64) = v56;
      BYTE1(v64) = v35;
      v41 = v54;
      v40 = v55;
      *(&v64 + 1) = v55;
      *&v65 = v54;
      v42 = v60;
      BYTE8(v65) = v60;
      v43 = v51;
      *&v66 = v51;
      *(&v66 + 1) = v29;
      *&v67[0] = 0;
      BYTE8(v67[0]) = v57;
      BYTE9(v67[0]) = v36;
      *&v67[1] = 0;
      v44 = v58;
      BYTE8(v67[1]) = v58;
      v45 = v64;
      v46 = v59;
      *v59 = v32;
      v46[1] = v45;
      v47 = v65;
      v48 = v66;
      v49 = v67[0];
      *(v46 + 73) = *(v67 + 9);
      v46[3] = v48;
      v46[4] = v49;
      v46[2] = v47;
      v68[0] = v32;
      v68[1] = 0;
      v69 = v38;
      v70 = v35;
      v72 = v90;
      v71 = v89;
      v73 = v40;
      v74 = v41;
      v75 = v42;
      *&v76[3] = *&v88[3];
      *v76 = *v88;
      v77 = v43;
      v78 = v29;
      v79 = 0;
      v80 = v39;
      v81 = v36;
      v83 = v87;
      v82 = v37;
      v84 = 0;
      v85 = v44;
      sub_1BD0DE19C(v63, v62, &qword_1EBD46038);
      return sub_1BD0DE53C(v68, &qword_1EBD46038);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA35F9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21[-v7];
  sub_1BDA35968(v27);
  v9 = *(v5 + 16);
  v9(v8, a1, v4);
  v24 = v27[2];
  v25 = v27[3];
  v26[0] = v28[0];
  *(v26 + 9) = *(v28 + 9);
  v22 = v27[0];
  v23 = v27[1];
  v9(a2, v8, v4);
  v10 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C418) + 48)];
  v12 = v25;
  v11 = v26[0];
  v14 = v25;
  v13 = v26[0];
  v29[3] = v25;
  v30[0] = v26[0];
  v15 = *(v26 + 9);
  *(v30 + 9) = *(v26 + 9);
  v29[2] = v24;
  v10[2] = v24;
  v10[3] = v12;
  v10[4] = v11;
  *(v10 + 73) = v15;
  v16 = v23;
  v17 = v24;
  v18 = v23;
  v19 = v22;
  v29[0] = v22;
  v29[1] = v23;
  *v10 = v22;
  v10[1] = v16;
  *(v32 + 9) = *(v26 + 9);
  v31[3] = v14;
  v32[0] = v13;
  v31[1] = v18;
  v31[2] = v17;
  v31[0] = v19;
  sub_1BD0DE19C(v29, v21, &qword_1EBD46038);
  sub_1BD0DE53C(v31, &qword_1EBD46038);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BDA36190(__int128 *a1)
{
  v10 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v7[2] = v9;
  swift_getKeyPath();
  v9 = a1[1];
  v8 = *(a1 + 4);
  v2 = swift_allocObject();
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 4);
  sub_1BD0DE19C(&v10, v7, &qword_1EBD5C420);
  sub_1BD0DE19C(&v9, v7, &qword_1EBD3A5C8);
  sub_1BD0DE19C(&v8, v7, &qword_1EBD5C3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C580);
  sub_1BD0DE4F4(&qword_1EBD5C4F8, &qword_1EBD4B7F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C498);
  v5 = sub_1BDA39F2C();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BDA363AC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for DeviceViewModel(0);
  v6 = v5 - 8;
  v25 = *(v5 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C498);
  MEMORY[0x1EEE9AC00](v24, v9);
  v11 = &v24 - v10;
  v12 = *(a1 + *(v6 + 48));
  sub_1BDA3A7F0(a1, &v24 - v10, type metadata accessor for DeviceViewModel);
  v11[*(type metadata accessor for DeviceRowView() + 20)] = v12;
  v13 = objc_opt_self();
  v14 = [v13 secondarySystemBackgroundColor];
  v15 = sub_1BE0511C4();
  v16 = sub_1BE0501D4();
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4B0) + 36)];
  *v17 = v15;
  v17[8] = v16;
  v18 = [v13 secondarySystemBackgroundColor];
  *&v30 = sub_1BE0511C4();
  *&v11[*(v24 + 36)] = sub_1BE0518D4();
  v19 = *a2;
  v29 = a2[1];
  v30 = v19;
  v28 = *(a2 + 4);
  sub_1BDA3A7F0(a1, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceViewModel);
  v20 = (*(v25 + 80) + 56) & ~*(v25 + 80);
  v21 = swift_allocObject();
  v22 = a2[1];
  *(v21 + 16) = *a2;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a2 + 4);
  sub_1BDA3A858(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for DeviceViewModel);
  sub_1BD0DE19C(&v30, v27, &qword_1EBD5C420);
  sub_1BD0DE19C(&v29, v27, &qword_1EBD3A5C8);
  sub_1BD0DE19C(&v28, v27, &qword_1EBD5C3A0);
  sub_1BDA39F2C();
  sub_1BE0509D4();

  return sub_1BD0DE53C(v11, &qword_1EBD5C498);
}

uint64_t sub_1BDA366A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C488);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C478);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v24 - v14;
  if ((*(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v16 = *(*&v24[0] + 16), , v16 >= 2))
  {
    *v6 = sub_1BE04F504();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C500);
    sub_1BDA36C64(v1, &v6[*(v17 + 44)]);
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD0DE204(v6, v11, &qword_1EBD5C488);
    v18 = &v11[*(v7 + 36)];
    v19 = v24[5];
    *(v18 + 4) = v24[4];
    *(v18 + 5) = v19;
    *(v18 + 6) = v24[6];
    v20 = v24[1];
    *v18 = v24[0];
    *(v18 + 1) = v20;
    v21 = v24[3];
    *(v18 + 2) = v24[2];
    *(v18 + 3) = v21;
    sub_1BD0DE204(v11, v15, &qword_1EBD5C478);
    sub_1BD0DE204(v15, a1, &qword_1EBD5C478);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return (*(v8 + 56))(a1, v22, 1, v7);
}

uint64_t sub_1BDA36970(__int128 *a1)
{
  v9 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = v8;
  swift_getKeyPath();
  v8 = a1[1];
  v7 = *(a1 + 4);
  v2 = swift_allocObject();
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 4);
  sub_1BD0DE19C(&v9, v5, &qword_1EBD5C420);
  sub_1BD0DE19C(&v8, v5, &qword_1EBD3A5C8);
  sub_1BD0DE19C(&v7, v5, &qword_1EBD5C3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C498);
  sub_1BD0DE4F4(&qword_1EBD5C4F8, &qword_1EBD4B7F8);
  sub_1BDA39F2C();
  return sub_1BE0519C4();
}

uint64_t sub_1BDA36B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BDA3A7F0(a1, a2, type metadata accessor for DeviceViewModel);
  *(a2 + *(type metadata accessor for DeviceRowView() + 20)) = 2;
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  v5 = sub_1BE0511C4();
  v6 = sub_1BE0501D4();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4B0) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;
  v8 = [v3 secondarySystemBackgroundColor];
  sub_1BE0511C4();
  v9 = sub_1BE0518D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C498);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_1BDA36C64@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v99 = sub_1BE04BD74();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v3);
  v97 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C508);
  MEMORY[0x1EEE9AC00](v100, v5);
  v101 = &v91 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C510);
  v105 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v7);
  v103 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v102 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C518);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v106 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - v17;
  v19 = sub_1BE04ED74();
  v96 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C520);
  v23 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v24);
  v26 = &v91 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C528);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v91 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C530);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v104 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v113 = *a1;
  v38 = *(*(&v113 + 1) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) == 1;
  v108 = &v91 - v37;
  if (v38)
  {
    swift_getKeyPath();
    v94 = v18;
    swift_getKeyPath();
    v93 = v19;
    sub_1BE04D8B4();

    v92 = v23;
    v39 = *&v110[0];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v40 = *(*&v110[0] + 16);

    v112 = a1[1];
    v111 = *(a1 + 4);
    v41 = swift_allocObject();
    *(v41 + 16) = v39 == v40;
    v42 = a1[1];
    *(v41 + 24) = *a1;
    *(v41 + 40) = v42;
    *(v41 + 56) = *(a1 + 4);
    MEMORY[0x1EEE9AC00](v41, v43);
    sub_1BD0DE19C(&v113, v110, &qword_1EBD5C420);
    sub_1BD0DE19C(&v112, v110, &qword_1EBD3A5C8);
    sub_1BD0DE19C(&v111, v110, &qword_1EBD5C3A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C548);
    sub_1BDA3A2F4();
    v18 = v94;
    sub_1BE051704();
    sub_1BE04ED64();
    sub_1BD0DE4F4(&qword_1EBD5C578, &qword_1EBD5C520);
    sub_1BDA3ABE0(&qword_1EBD59570, MEMORY[0x1E697C248]);
    v44 = v95;
    v45 = v26;
    v46 = v31;
    v47 = v93;
    sub_1BE050894();
    (*(v96 + 8))(v22, v47);
    (*(v92 + 8))(v45, v44);
    v48 = v108;
    (*(v28 + 32))(v108, v46, v27);
    (*(v28 + 56))(v48, 0, 1, v27);
  }

  else
  {
    (*(v28 + 56))(&v91 - v37, 1, 1, v27);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v49 = *(*&v110[0] + 16);

  v50 = 1;
  if (v49 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v51 = *&v110[0];
    v96 = *&v110[0];
    v52 = v98;
    v53 = v97;
    v54 = v99;
    (*(v98 + 104))(v97, *MEMORY[0x1E69B80D8], v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v55 = swift_allocObject();
    v56 = MEMORY[0x1E69E6530];
    *(v55 + 16) = xmmword_1BE0B69E0;
    v57 = MEMORY[0x1E69E65A8];
    *(v55 + 56) = v56;
    *(v55 + 64) = v57;
    *(v55 + 32) = v51;
    v58 = sub_1BE04B714();
    v60 = v59;

    (*(v52 + 8))(v53, v54);
    *&v110[0] = v58;
    *(&v110[0] + 1) = v60;
    sub_1BD0DDEBC();
    v61 = sub_1BE0506C4();
    v63 = v62;
    LOBYTE(v60) = v64;
    v66 = v65;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
    v68 = v101;
    v69 = &v101[*(v67 + 36)];
    v70 = v18;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v72 = sub_1BE0505C4();
    v73 = v69 + v71;
    v18 = v70;
    (*(*(v72 - 8) + 56))(v73, 1, 1, v72);
    *v69 = swift_getKeyPath();
    v74 = v109;
    *v68 = v61;
    *(v68 + 8) = v63;
    *(v68 + 16) = v60 & 1;
    *(v68 + 24) = v66;
    LODWORD(v61) = sub_1BE04FC94();
    *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C540) + 36)) = v61;
    v75 = sub_1BE051D84();
    v76 = (v68 + *(v100 + 36));
    v77 = v96;
    *v76 = v75;
    v76[1] = v77;
    sub_1BE051CF4();
    sub_1BE04EE54();
    v78 = v103;
    sub_1BD0DE204(v68, v103, &qword_1EBD5C508);
    v79 = (v78 + *(v74 + 36));
    v80 = v110[5];
    v79[4] = v110[4];
    v79[5] = v80;
    v79[6] = v110[6];
    v81 = v110[1];
    *v79 = v110[0];
    v79[1] = v81;
    v82 = v110[3];
    v79[2] = v110[2];
    v79[3] = v82;
    v83 = v78;
    v84 = v102;
    sub_1BD0DE204(v83, v102, &qword_1EBD5C510);
    sub_1BD0DE204(v84, v70, &qword_1EBD5C510);
    v50 = 0;
  }

  (*(v105 + 56))(v18, v50, 1, v109);
  v85 = v108;
  v86 = v104;
  sub_1BD0DE19C(v108, v104, &qword_1EBD5C530);
  v87 = v106;
  sub_1BD0DE19C(v18, v106, &qword_1EBD5C518);
  v88 = v107;
  sub_1BD0DE19C(v86, v107, &qword_1EBD5C530);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C538);
  sub_1BD0DE19C(v87, v88 + *(v89 + 48), &qword_1EBD5C518);
  sub_1BD0DE53C(v18, &qword_1EBD5C518);
  sub_1BD0DE53C(v85, &qword_1EBD5C530);
  sub_1BD0DE53C(v87, &qword_1EBD5C518);
  return sub_1BD0DE53C(v86, &qword_1EBD5C530);
}

int *sub_1BDA37898@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C570);
  MEMORY[0x1EEE9AC00](v42, v3);
  v5 = &v41 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C560);
  MEMORY[0x1EEE9AC00](v43, v6);
  v8 = &v41 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *MEMORY[0x1E69B80D8], v9, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = a1 & 1;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v10 + 8))(v14, v9);
    *&v45 = v18;
    *(&v45 + 1) = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0) + 36)];
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v30 = sub_1BE0505C4();
    (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
    *v28 = swift_getKeyPath();
    *v5 = v21;
    *(v5 + 1) = v23;
    v5[16] = v25 & 1;
    *(v5 + 3) = v27;
    v31 = sub_1BE051D84();
    v32 = &v5[*(v42 + 36)];
    *v32 = v31;
    v32[8] = v17;
    sub_1BE051CE4();
    sub_1BE04EE54();
    sub_1BD0DE204(v5, v8, &qword_1EBD5C570);
    v33 = &v8[*(v43 + 36)];
    v34 = v50;
    *(v33 + 4) = v49;
    *(v33 + 5) = v34;
    *(v33 + 6) = v51;
    v35 = v46;
    *v33 = v45;
    *(v33 + 1) = v35;
    v36 = v48;
    *(v33 + 2) = v47;
    *(v33 + 3) = v36;
    v37 = sub_1BE0511D4();
    KeyPath = swift_getKeyPath();
    v39 = v44;
    sub_1BD0DE204(v8, v44, &qword_1EBD5C560);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C548);
    v40 = (v39 + result[9]);
    *v40 = KeyPath;
    v40[1] = v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BDA37C7C(uint64_t a1)
{
  sub_1BD649DE0();
  v2 = *(a1 + 32);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v4 = *MEMORY[0x1E69BA848];
    *(inited + 32) = *MEMORY[0x1E69BA848];
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    sub_1BE04D8B4();

    *(inited + 40) = sub_1BE053B24();
    *(inited + 48) = v6;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BDA3ABE0(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
    v7 = sub_1BE052224();

    [v2 reportButtonPressed:0 context:v7];
  }
}

id sub_1BDA37E24(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  if (v3)
  {
    v4 = sub_1BE048964();
    v3(v4);
    sub_1BD0D4744(v3);
  }

  result = *(a1 + 32);
  if (result)
  {
    return [result reportButtonPressed_];
  }

  return result;
}

uint64_t sub_1BDA37F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5C0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v75 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v73 = &v61[-v8];
  v9 = sub_1BE04F6E4();
  v70 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1BE051584();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460D8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v68 = &v61[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5C8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v72 = &v61[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61[-v26];
  v28 = type metadata accessor for DeviceRowView();
  v29 = a1;
  v30 = *(a1 + *(v28 + 20));
  v71 = v29;
  v76 = v27;
  if (v30 == 2)
  {
    (*(v18 + 56))(v27, 1, 1, v17);
  }

  else
  {
    v64 = v18;
    v65 = v17;
    v66 = v9;
    v67 = v3;
    v62 = v30 & 1;
    sub_1BE051574();
    (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
    v63 = sub_1BE0515E4();

    (*(v13 + 8))(v16, v12);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v31 = v83;
    v32 = v84;
    v33 = v85;
    v34 = v86;
    v35 = v87;
    v36 = v88;
    if (v62)
    {
      v37 = sub_1BE0511D4();
    }

    else
    {
      v37 = sub_1BE0513E4();
    }

    v38 = v37;
    KeyPath = swift_getKeyPath();
    v80[0] = v32;
    v79[0] = v34;
    v40 = sub_1BE051D84();
    *v82 = v63;
    *&v82[8] = v31;
    v82[16] = v32;
    *&v82[24] = v33;
    v82[32] = v34;
    *&v82[40] = v35;
    *&v82[48] = v36;
    *&v82[56] = KeyPath;
    *&v82[64] = v38;
    *&v82[72] = v40;
    v82[80] = v30 & 1;
    if (v30)
    {
      v41 = v69;
      sub_1BE04F6B4();
      v27 = v76;
      v42 = v66;
      v3 = v67;
    }

    else
    {
      *v81 = MEMORY[0x1E69E7CC0];
      sub_1BDA3ABE0(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
      sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
      v41 = v69;
      v42 = v66;
      sub_1BE053664();
      v27 = v76;
      v3 = v67;
    }

    v43 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460F8);
    sub_1BD438378();
    v44 = v68;
    sub_1BE050DA4();
    (*(v70 + 8))(v41, v42);
    *&v81[32] = *&v82[32];
    *&v81[48] = *&v82[48];
    *&v81[64] = *&v82[64];
    v81[80] = v82[80];
    *v81 = *v82;
    *&v81[16] = *&v82[16];
    sub_1BD0DE53C(v81, &qword_1EBD460F8);
    sub_1BD0DE204(v44, v27, &qword_1EBD460D8);
    (*(v43 + 56))(v27, 0, 1, v65);
  }

  v45 = v73;
  v46 = v71;
  sub_1BDA3877C(v71, v73);
  v47 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v48 = &v45[*(v3 + 36)];
  *v48 = v47;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  v70 = sub_1BE04F7B4();
  v78 = 1;
  sub_1BDA38F60(v46, v82);
  memcpy(v79, v82, sizeof(v79));
  memcpy(v80, v82, sizeof(v80));
  sub_1BD0DE19C(v79, v81, &qword_1EBD467B0);
  sub_1BD0DE53C(v80, &qword_1EBD467B0);
  memcpy(&v77[7], v79, 0x120uLL);
  LODWORD(v71) = v78;
  v53 = v72;
  sub_1BD0DE19C(v27, v72, &qword_1EBD5C5C8);
  v54 = v75;
  sub_1BD0DE19C(v45, v75, &qword_1EBD5C5C0);
  v55 = v74;
  sub_1BD0DE19C(v53, v74, &qword_1EBD5C5C8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5D0);
  sub_1BD0DE19C(v54, v55 + *(v56 + 48), &qword_1EBD5C5C0);
  v57 = *(v56 + 64);
  v58 = v70;
  *v81 = v70;
  *&v81[8] = 0;
  v59 = v71;
  v81[16] = v71;
  memcpy(&v81[17], v77, 0x127uLL);
  memcpy((v55 + v57), v81, 0x138uLL);
  sub_1BD0DE19C(v81, v82, &qword_1EBD5C5D8);
  sub_1BD0DE53C(v45, &qword_1EBD5C5C0);
  sub_1BD0DE53C(v76, &qword_1EBD5C5C8);
  *v82 = v58;
  *&v82[8] = 0;
  v82[16] = v59;
  memcpy(&v82[17], v77, 0x127uLL);
  sub_1BD0DE53C(v82, &qword_1EBD5C5D8);
  sub_1BD0DE53C(v54, &qword_1EBD5C5C0);
  return sub_1BD0DE53C(v53, &qword_1EBD5C5C8);
}