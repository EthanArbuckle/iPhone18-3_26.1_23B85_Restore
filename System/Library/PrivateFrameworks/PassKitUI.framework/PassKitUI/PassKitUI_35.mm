uint64_t sub_1BD3E92A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PaymentRewardsAmountModel(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD3E92E0()
{
  v16[0] = sub_1BE04A914();
  v0 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0], v1);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE053304();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  MEMORY[0x1BFB37210](v13);
  sub_1BE04A904();
  sub_1BE0532F4();
  (*(v0 + 8))(v3, v16[0]);
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_1BD3EBF40(&qword_1EBD45110, MEMORY[0x1E6969FD0]);
  sub_1BE053464();
  v14(v12, v4);
  return v16[1];
}

uint64_t sub_1BD3E953C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  if (MEMORY[0x1BFB403F0](*(v3 + 92), *(v3 + 100), *(v3 + 108), a1, a2, a3))
  {
    v6 = *(v3 + 92);
    v5 = *(v3 + 100);
    v4 = *(v3 + 108);
  }

  v7 = *(v3 + 16);
  v8 = sub_1BE053344();
  v9 = [v7 convertValueFromAmount_];

  if (!v9)
  {
    v9 = [objc_opt_self() zero];
  }

  v10 = sub_1BE0533F4();
  v12 = v11;
  v14 = v13;

  v15 = v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity;
  if ((MEMORY[0x1BFB403F0](v10, v12, v14, *(v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity), *(v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity + 8), *(v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity + 16)) & 1) == 0 || (MEMORY[0x1BFB403F0](v6, v5, v4, *(v3 + 92), *(v3 + 100), *(v3 + 108)) & 1) == 0)
  {
    v10 = *v15;
    v12 = *(v15 + 8);
    v14 = *(v15 + 16);
  }

  v16 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB403F0](v10, v12, v14, v16, v17, v18))
  {
    v10 = MEMORY[0x1BFB403C0](0);
    v12 = v19;
    LODWORD(v14) = v20;
    MEMORY[0x1BFB403C0](0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v30 = v10;
  *(&v30 + 1) = v12;
  LODWORD(v31) = v14;
  sub_1BE048964();
  sub_1BE04D8C4();
  v21 = *(v3 + 128);
  v28[0] = *(v3 + 112);
  v28[1] = v21;
  v23 = *(v3 + 112);
  v22 = *(v3 + 128);
  v29[0] = *(v3 + 144);
  *(v29 + 10) = *(v3 + 154);
  v25 = v23;
  v26 = v22;
  *v27 = *(v3 + 144);
  *&v27[10] = *(v3 + 154);
  sub_1BD0DE19C(v28, &v30, &unk_1EBD45070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070);
  sub_1BE0518F4();
  v30 = v25;
  v31 = v26;
  v32[0] = *v27;
  *(v32 + 10) = *&v27[10];
  return sub_1BD0DE53C(&v30, &unk_1EBD45070);
}

uint64_t sub_1BD3E982C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1BD3E98A0()
{

  v1 = OBJC_IVAR____TtC9PassKitUI25PaymentRewardsAmountModel__selectedAmount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity, v2);

  return swift_deallocClassInstance();
}

void sub_1BD3E99C8()
{
  sub_1BD3EC09C(319, &qword_1EBD44FF0, type metadata accessor for Decimal, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1BD3E9A94()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v39 = *v0;
  v40 = v2;
  v41 = *(v0 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  sub_1BE051914();
  v48 = *(v0 + 56);
  v49 = *(v0 + 72);
  v4 = *(v0 + 36);
  v47 = *(v0 + 52);
  v45 = *(v0 + 80);
  v46 = v4;
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = *(v0 + 112);
  v7 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v7;
  v8 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v8;
  v9 = type metadata accessor for CurrencyAmountTextField.AmountTextField();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit] = 1;
  *&v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter] = 0;
  v11 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount];
  v13 = v50;
  v12 = v51;
  *(v11 + 8) = v52;
  *v11 = v13;
  *(v11 + 1) = v12;
  *&v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_currencyCode] = v45;
  v14 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_minimumAmount];
  *v14 = v48;
  *(v14 + 4) = v49;
  v15 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount];
  *v15 = v46;
  *(v15 + 4) = v47;
  v42 = v50;
  v43 = v51;
  v44 = v52;
  sub_1BD206260(&v45, &v39);
  sub_1BD3ECCC0(v0, &v39);
  sub_1BD0DE19C(&v50, &v39, &unk_1EBD4EED0);
  MEMORY[0x1BFB3E970](&v39, v3);
  v16 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount];
  v17 = v40;
  *v16 = v39;
  *(v16 + 4) = v17;
  v18 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_loadSuggestions];
  *v18 = sub_1BD3ECCB8;
  v18[1] = v5;
  v38.receiver = v10;
  v38.super_class = v9;
  sub_1BE048964();
  v19 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setTintColor_];

  [v21 addTarget:v21 action:sel_editingChanged forControlEvents:0x20000];
  [v21 addTarget:v21 action:sel_resetSelection forControlEvents:4095];
  [v21 setKeyboardType_];
  [v21 setAutocorrectionType_];
  [v21 sendActionsForControlEvents_];
  [v21 setDelegate_];
  v23 = v21;
  v24 = sub_1BD3EA308();
  v25 = sub_1BE053344();
  v26 = [v24 stringForObjectValue_];

  if (v26)
  {
    sub_1BE052434();
  }

  v27 = sub_1BE052404();

  [v23 setText_];

  v28 = [objc_opt_self() defaultCenter];
  [v28 addObserver:v23 selector:sel_textInputResponderIsReloaded_ name:*MEMORY[0x1E69DE6E8] object:0];

  sub_1BD0DE53C(&v50, &unk_1EBD4EED0);
  [v23 setTextColor_];
  v29 = *(v1 + 96);
  if ([v23 _shouldReverseLayoutDirection])
  {
    if (v29)
    {
      if (v29 == 2)
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 2;
    }
  }

  [v23 setTextAlignment_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  LODWORD(v30) = 1132068864;
  [v23 setContentCompressionResistancePriority:0 forAxis:v30];
  LODWORD(v31) = 1132068864;
  [v23 setContentHuggingPriority:0 forAxis:v31];
  [v23 setAccessibilityIdentifier_];
  sub_1BD3EB3A0();
  v32 = v23;
  if (PKIsPhone())
  {
    v32 = v23;
    if ((sub_1BE051C54() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1BE0D39A0;
      *(v33 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      sub_1BD0E5E8C(0, &qword_1EBD41C40);
      sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE0530B4();
      *(v33 + 40) = sub_1BE052C74();
      v35 = [objc_allocWithZone(MEMORY[0x1E69DD180]) init];
      v36 = sub_1BE052724();

      [v35 setItems:v36 animated:0];

      v32 = v35;
      [v32 sizeToFit];
      [v23 setInputAccessoryView_];
    }
  }

  return v23;
}

void sub_1BD3EA15C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong resignFirstResponder];
  }
}

void sub_1BD3EA1B8(char *a1)
{
  v3 = v1[1];
  v24 = *v1;
  v25 = v3;
  v26 = *(v1 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  MEMORY[0x1BFB3E970](&v17, v4);
  v5 = v17;
  v6 = WORD2(v17);
  v7 = HIWORD(v17);
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v16 = a1;
  v14 = &a1[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount];
  if ((MEMORY[0x1BFB40440](v17 | (WORD2(v17) << 32) | (HIWORD(v17) << 48), v18 | (v19 << 16) | (v20 << 32) | (v21 << 48), v22 | (v23 << 16), *v14, *(v14 + 1), *(v14 + 4)) & 1) == 0)
  {
    *v14 = v5;
    *(v14 + 2) = v6;
    *(v14 + 3) = v7;
    *(v14 + 4) = v8;
    *(v14 + 5) = v9;
    *(v14 + 6) = v10;
    *(v14 + 7) = v11;
    *(v14 + 8) = v12;
    *(v14 + 9) = v13;
    sub_1BD3EAA68();
  }

  v15 = [objc_opt_self() preferredFontForTextStyle_];
  [v16 setFont_];
}

id sub_1BD3EA308()
{
  v1 = OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter;
  v2 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter);
  }

  else
  {
    sub_1BD3EA36C();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BD3EA36C()
{
  v0 = sub_1BE04B0F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE052404();
  v6 = PKMutableNumberFormatterForCurrencyCode();

  if (v6)
  {
    v7 = [objc_opt_self() currentLocale];
    sub_1BE04B064();

    v8 = sub_1BE052404();
    v9 = PKDefaultFractionDigitsForCurrencyCode();

    v10 = sub_1BE04B044();
    [v6 setLocale_];

    [v6 setMinimumFractionDigits_];
    [v6 setMaximumFractionDigits_];
    [v6 setUsesGroupingSeparator_];
    [v6 setGeneratesDecimalNumbers_];
    sub_1BE04B024();
    if (v11)
    {
      v12 = sub_1BE052404();
    }

    else
    {
      v12 = 0;
    }

    [v6 setDecimalSeparator_];

    sub_1BE04B024();
    if (v13)
    {
      v14 = sub_1BE052404();
    }

    else
    {
      v14 = 0;
    }

    [v6 setCurrencyDecimalSeparator_];

    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    v15 = sub_1BE053044();
    [v6 setMinimum_];

    v16 = sub_1BE053344();
    [v6 setMaximum_];

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD3EA62C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DE6E8] object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CurrencyAmountTextField.AmountTextField();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD3EA848()
{
  sub_1BD3EAA68();
  v1 = (v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount);
  v2 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount + 16);
  v11 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount);
  v12 = v2;
  v13 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  MEMORY[0x1BFB3E970](&v8);
  result = MEMORY[0x1BFB40440](v8, *(&v8 + 1), v9, *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount), *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount + 8), *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount + 16));
  if ((result & 1) == 0)
  {
    v4 = v1[1];
    v8 = *v1;
    v9 = v4;
    v10 = *(v1 + 8);
    v5 = *v1;
    v6 = v1[1];
    v7 = *(v1 + 8);
    sub_1BD0DE19C(&v8, &v11, &unk_1EBD4EED0);
    sub_1BE0518F4();
    v11 = v5;
    v12 = v6;
    v13 = v7;
    return sub_1BD0DE53C(&v11, &unk_1EBD4EED0);
  }

  return result;
}

void sub_1BD3EAA68()
{
  v1 = sub_1BD3EA308();
  v2 = sub_1BE053344();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [v0 text];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_1BE052434();
  v11 = v10;

  if (v4 == v9 && v6 == v11)
  {
  }

  else
  {
    v13 = sub_1BE053B84();

    if ((v13 & 1) == 0)
    {
LABEL_10:
      v14 = sub_1BE052404();

      [v0 setText_];

      v15 = [v0 endOfDocument];
      v16 = [v0 endOfDocument];
      v17 = [v0 textRangeFromPosition:v15 toPosition:v16];

      [v0 setSelectedTextRange_];
      goto LABEL_13;
    }
  }

LABEL_13:

  sub_1BD3EB3A0();
}

uint64_t sub_1BD3EAC48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = [a1 text];
  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = v9;
  sub_1BE052434();

  v11 = sub_1BE052B64();
  v13 = v12;
  LOBYTE(v10) = v14;

  if (v10)
  {
    goto LABEL_3;
  }

  v21 = OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit;
  if (*(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit) == 1)
  {
    sub_1BE048C84();
LABEL_10:
    *(v5 + v21) = 0;
    goto LABEL_11;
  }

  v22 = [a1 text];
  if (!v22)
  {
LABEL_3:
    CGAffineTransformMakeTranslation(&v39, 20.0, 0.0);
    [a1 setTransform_];
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *&v39.tx = sub_1BD3EBD44;
    *&v39.ty = v16;
    *&v39.a = MEMORY[0x1E69E9820];
    *&v39.b = 1107296256;
    v17 = &block_descriptor_84;
    goto LABEL_4;
  }

  v23 = v22;
  v24 = sub_1BE052434();
  v26 = v25;

  sub_1BD65C8D0(v11, v13, a4, a5, v24, v26);

  if (*(v5 + v21) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1BD3EBC7C();
  if (!sub_1BE052534())
  {

    goto LABEL_16;
  }

  v27 = sub_1BE052534();

  if (!v27)
  {
LABEL_16:

    v34 = MEMORY[0x1BFB403C0](0);
    v35 = v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount;
    *v35 = v34;
    *(v35 + 8) = v36;
    *(v35 + 16) = v37;
    return 1;
  }

  v28 = sub_1BD3EB154();
  v30 = v29;
  v32 = v31;

  if ((MEMORY[0x1BFB403F0](*(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount), *(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount + 8), *(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount + 16), v28, v30, v32) & 1) == 0 && ((sub_1BE053414() & 1) == 0 || (sub_1BE053414() & 1) == 0))
  {
    v38 = v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount;
    *v38 = v28;
    *(v38 + 8) = v30;
    *(v38 + 16) = v32;
    return 1;
  }

  CGAffineTransformMakeTranslation(&v39, 20.0, 0.0);
  [a1 setTransform_];
  v15 = objc_opt_self();
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *&v39.tx = sub_1BD3ECD0C;
  *&v39.ty = v33;
  *&v39.a = MEMORY[0x1E69E9820];
  *&v39.b = 1107296256;
  v17 = &block_descriptor_80;
LABEL_4:
  *&v39.c = sub_1BD126964;
  *&v39.d = v17;
  v18 = _Block_copy(&v39);
  v19 = a1;

  [v15 animateWithDuration:0 delay:v18 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:1.1 completion:{1.0, *&v39.a}];
  _Block_release(v18);
  return 0;
}

uint64_t sub_1BD3EB154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  sub_1BD3EBC7C();
  v4 = sub_1BE04B0F4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1BE053434();
  v6 = v5;

  sub_1BD0DE53C(v3, &qword_1EBD450F0);
  if ((v6 & 0x100000000) != 0)
  {
    MEMORY[0x1BFB403C0](0);
  }

  v7 = sub_1BD3EA308();
  [v7 maximumFractionDigits];

  MEMORY[0x1BFB403C0](10);
  sub_1BE04AA74();
  return sub_1BE053354();
}

void sub_1BD3EB3A0()
{
  v1 = [v0 inputDelegate];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {
LABEL_29:
    swift_unknownObjectRelease();
    return;
  }

  v4 = v3;
  v5 = (*(v23 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_loadSuggestions))();
  if (!v5)
  {
LABEL_28:
    [v4 setSuggestions_];
    goto LABEL_29;
  }

  v6 = v5;
  v24 = MEMORY[0x1E69E7CC0];
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!(v5 >> 62))
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = sub_1BE053704();
  if (!v8)
  {
LABEL_22:
    v19 = MEMORY[0x1E69E7CC0];
LABEL_23:

    if (v19 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_25;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      sub_1BD0E5E8C(0, &qword_1EBD450E8);
      v20 = sub_1BE052724();

      [v4 setSuggestions_];
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

LABEL_6:
  v21 = v4;
  v22 = v2;
  v4 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB40900](v4, v6);
    }

    else
    {
      if (v4 >= *(v7 + 16))
      {
        goto LABEL_20;
      }

      v9 = *(v6 + 8 * v4 + 32);
    }

    v10 = v9;
    v2 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = [v9 value];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    sub_1BE0533F4();

    v13 = sub_1BD3EA308();
    v14 = sub_1BE053344();
    v15 = [v13 stringForObjectValue_];

    if (v15)
    {
      sub_1BE052434();
    }

    v16 = sub_1BE052404();

    v17 = [objc_opt_self() textSuggestionWithInputText_];

    v18 = [v10 displayValue];
    [v17 setDisplayText_];

    MEMORY[0x1BFB3F7A0]();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    ++v4;
    if (v2 == v8)
    {
      v19 = v24;
      v4 = v21;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t initializeWithCopy for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_1BE048C84();

  return a1;
}

uint64_t assignWithTake for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentRewardsAmountModel.CurrencyAmount(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD3EB920()
{
  result = qword_1EBD45068;
  if (!qword_1EBD45068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45068);
  }

  return result;
}

uint64_t sub_1BD3EB974(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 4);
  *a2 = v3;
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  sub_1BE048C84();
  return a2;
}

uint64_t sub_1BD3EBA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3ECC64();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD3EBAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3ECC64();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD3EBB50()
{
  sub_1BD3ECC64();
  sub_1BE04F964();
  __break(1u);
}

double sub_1BD3EBB78@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1BD3EBC04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD3EBC7C()
{
  sub_1BE048C84();
  v0 = sub_1BE052594();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      sub_1BE0522A4();
      if ((v5 & 1) == 0)
      {
        MEMORY[0x1BFB3F600](v2, v3);
      }

      v2 = sub_1BE052594();
      v3 = v4;
    }

    while (v4);
  }

  return 0;
}

id sub_1BD3EBD48()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

uint64_t sub_1BD3EBD88()
{
  v1 = sub_1BD3EA308();
  v2 = sub_1BE053344();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [v0 text];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_1BE052434();
  v11 = v10;

  if (v4 == v9 && v6 == v11)
  {
  }

  else
  {
    v13 = sub_1BE053B84();

    if ((v13 & 1) == 0)
    {
LABEL_10:
      v14 = sub_1BE052404();

      [v0 setText_];

      goto LABEL_13;
    }
  }

LABEL_13:
  if ([v0 inputDelegate])
  {
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (v15)
    {
      [v15 setSuggestions_];
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_1BD3EBF40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD3EBFD0()
{
  sub_1BD3EC09C(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD3EC100();
    if (v1 <= 0x3F)
    {
      sub_1BD3EC194();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD3EC09C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD3EC100()
{
  if (!qword_1EBD45148)
  {
    type metadata accessor for PaymentRewardsAmountModel(255);
    sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD45148);
    }
  }
}

void sub_1BD3EC194()
{
  if (!qword_1EBD39358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45160);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39358);
    }
  }
}

unint64_t sub_1BD3EC21C()
{
  result = qword_1EBD45188;
  if (!qword_1EBD45188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45180);
    sub_1BD3EC2A8();
    sub_1BD3EC2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45188);
  }

  return result;
}

unint64_t sub_1BD3EC2A8()
{
  result = qword_1EBD45190;
  if (!qword_1EBD45190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45190);
  }

  return result;
}

unint64_t sub_1BD3EC2FC()
{
  result = qword_1EBD45198;
  if (!qword_1EBD45198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45198);
  }

  return result;
}

unint64_t sub_1BD3EC358()
{
  result = qword_1EBD451B8;
  if (!qword_1EBD451B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451B8);
  }

  return result;
}

unint64_t sub_1BD3EC3AC()
{
  result = qword_1EBD451C8;
  if (!qword_1EBD451C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD451B0);
    sub_1BD10CC54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451C8);
  }

  return result;
}

unint64_t sub_1BD3EC438()
{
  result = qword_1EBD451F0;
  if (!qword_1EBD451F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B348);
    sub_1BD35CEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451F0);
  }

  return result;
}

uint64_t sub_1BD3EC4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3EC520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3EC584()
{
  v1 = *(type metadata accessor for PaymentPassHubRewardsApplyView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE04AA64() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD3E2918(v0 + v2, v5);
}

unint64_t sub_1BD3EC708()
{
  result = qword_1EBD45310;
  if (!qword_1EBD45310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45310);
  }

  return result;
}

uint64_t destroy for CurrencyAmountTextField(uint64_t a1)
{
}

uint64_t initializeWithCopy for CurrencyAmountTextField(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  v6 = v5;
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for CurrencyAmountTextField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1BE048964();

  *(a1 + 8) = *(a2 + 8);
  sub_1BE048964();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  sub_1BE048C84();

  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  v6 = v4;

  *(a1 + 112) = *(a2 + 112);
  sub_1BE048C84();

  return a1;
}

uint64_t assignWithTake for CurrencyAmountTextField(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

unint64_t sub_1BD3ECB34()
{
  result = qword_1EBD453A8;
  if (!qword_1EBD453A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45250);
    sub_1BD0DE4F4(&qword_1EBD45270, &qword_1EBD45250);
    swift_getOpaqueTypeConformance2();
    sub_1BD3EBF40(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD453A8);
  }

  return result;
}

unint64_t sub_1BD3ECC64()
{
  result = qword_1EBD453C0;
  if (!qword_1EBD453C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD453C0);
  }

  return result;
}

void sub_1BD3ECD44()
{
  sub_1BD0E4578(319, &qword_1EBD45478, &qword_1EBD45480);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD45488, &qword_1EBD45490);
    if (v1 <= 0x3F)
    {
      sub_1BD3EF498();
      if (v2 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD454A0, &qword_1EBD454A8);
        if (v3 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD454B0, &qword_1EBD454B8);
          if (v4 <= 0x3F)
          {
            sub_1BD3EF4F0();
            if (v5 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

double sub_1BD3ECFB8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1BD3ED050(uint64_t a1)
{
  v2 = _s11BillPaymentVMa();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD3EFBC0(a1, &v11 - v8, _s11BillPaymentVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD3EFBC0(v9, v5, _s11BillPaymentVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD3EFB60(v9, _s11BillPaymentVMa);
}

double sub_1BD3ED180@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1BD3ED20C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

id sub_1BD3ED280(uint64_t a1)
{
  v101 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v81 = &v81 - v3;
  v90 = _s11BillPaymentVMa();
  MEMORY[0x1EEE9AC00](v90, v4);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v88 = (&v81 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F8);
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v98 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F0);
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v95 = &v81 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454A8);
  MEMORY[0x1EEE9AC00](v94, v15);
  v93 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v92 = &v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E0);
  v102 = *(v20 - 1);
  v103 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v91 = &v81 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v81 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v81 - v34;
  v36 = qword_1EBD45430;
  v37 = type metadata accessor for PeerPaymentModel();
  (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
  sub_1BD0DE19C(v35, v31, &qword_1EBD45480);
  v83 = v31;
  v84 = v28;
  sub_1BE04D874();
  sub_1BD0DE53C(v35, &qword_1EBD45480);
  v85 = v24;
  v86 = v23;
  v38 = *(v24 + 32);
  v82 = v36;
  v39 = v104;
  v38(v104 + v36, v27, v23);
  v40 = qword_1EBD45438;
  v113 = 1uLL;
  v114 = 0uLL;
  LOBYTE(v115) = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45490);
  v42 = v91;
  v87 = v41;
  sub_1BE04D874();
  (*(v102 + 32))(v39 + v40, v42, v103);
  v43 = qword_1EBD45448;
  v44 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
  v45 = v92;
  (*(*(v44 - 8) + 56))(v92, 1, 1, v44);
  sub_1BD0DE19C(v45, v93, &qword_1EBD454A8);
  v46 = v95;
  sub_1BE04D874();
  sub_1BD0DE53C(v45, &qword_1EBD454A8);
  (*(v96 + 32))(v39 + v43, v46, v97);
  v47 = qword_1EBD45450;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454B8);
  v48 = v98;
  sub_1BE04D874();
  (*(v99 + 32))(v39 + v47, v48, v100);
  v49 = v39 + qword_1EBDAB040;
  *v49 = 0;
  *(v49 + 8) = 1;
  v99 = qword_1EBDAB050;
  *(v39 + qword_1EBDAB050) = 0;
  v50 = *(v101 + 32);
  result = [v50 paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v52 = result;
  v53 = [result requestType];

  v54 = v104;
  *(v104 + qword_1EBDAB030) = v53;
  v55 = v50;
  sub_1BD56ED40(v55, v35);
  v56 = v82;
  swift_beginAccess();
  (*(v85 + 8))(v54 + v56, v86);
  sub_1BD0DE19C(v35, v83, &qword_1EBD45480);
  sub_1BE04D874();
  v100 = v35;
  sub_1BD0DE53C(v35, &qword_1EBD45480);
  swift_endAccess();
  v57 = v55;
  sub_1BD83A564(v57, &v110);
  v120 = v110;
  v121 = v110;
  v118 = *(&v111 + 1);
  v119 = v111;
  v122 = v111;
  v123 = v112;
  swift_beginAccess();
  sub_1BD0DE19C(&v120, &v113, &qword_1EBD45518);
  sub_1BD0DE19C(&v119, &v113, &unk_1EBD45520);
  sub_1BD0DE19C(&v118, &v113, &unk_1EBD45520);
  (*(v102 + 8))(v54 + v40, v103);
  v113 = v121;
  v114 = v122;
  LOBYTE(v115) = v123;
  sub_1BD0DE19C(&v120, v109, &qword_1EBD45518);
  sub_1BD0DE19C(&v119, v109, &unk_1EBD45520);
  sub_1BD0DE19C(&v118, v109, &unk_1EBD45520);
  sub_1BE04D874();
  swift_endAccess();
  v58 = v57;
  v59 = v88;
  sub_1BD36F228(v58, v88);
  swift_beginAccess();
  sub_1BD3EFBC0(v59, v89, _s11BillPaymentVMa);
  sub_1BE04D874();
  sub_1BD3EFB60(v59, _s11BillPaymentVMa);
  swift_endAccess();
  result = [v58 paymentRequest];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v60 = result;
  v61 = [result accountServiceTransferRequest];

  if (v61)
  {
    v62 = [v61 transferType];
    v63 = v104;
    *(v104 + qword_1EBDAB038) = v62;
    v64 = [v61 account];
    v65 = objc_allocWithZone(type metadata accessor for AccountModel());
    v66 = sub_1BD1DF0D8(v64, 0);
    v67 = *(v63 + v99);
    *(v63 + v99) = v66;

    *v49 = [v61 initialAction];
    *(v49 + 8) = 0;
    LOBYTE(v64) = [v61 userWasShownAPCTransferSpeed];

    *(v63 + qword_1EBDAB048) = v64;
  }

  else
  {
    v68 = v104;
    *(v104 + qword_1EBDAB038) = 0;
    *v49 = 0;
    *(v49 + 8) = 1;
    *(v68 + qword_1EBDAB048) = 0;
  }

  v69 = type metadata accessor for Passes(0);
  v70 = v81;
  (*(*(v69 - 8) + 56))(v81, 1, 1, v69);
  sub_1BD0DE19C(&v120, &v113, &qword_1EBD45518);
  sub_1BD0DE19C(&v119, &v113, &unk_1EBD45520);
  sub_1BD0DE19C(&v118, &v113, &unk_1EBD45520);
  v71 = sub_1BD7D51F4(v70, &v121, 0);
  swift_beginAccess();
  *&v105 = v71;
  sub_1BE04D874();
  swift_endAccess();
  v72 = v101;
  v73 = *v101;
  v109[0] = *(v101 + 8);
  v117 = *(v101 + 24);
  v74 = v58;
  v75 = v73;
  v103 = v75;
  sub_1BD0DE19C(v109, &v113, &qword_1EBD3D490);
  sub_1BD0DE19C(&v117, &v113, &qword_1EBD40150);
  sub_1BE048964();
  v76 = sub_1BD46A578(v72);

  sub_1BD0DE53C(v109, &qword_1EBD3D490);
  sub_1BD0DE53C(&v117, &qword_1EBD40150);

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v77 = v74;
  v78 = v100;
  sub_1BE04D8B4();

  sub_1BD28B71C(v77, v78, &v121, &v113);
  swift_getKeyPath();
  swift_getKeyPath();
  v105 = v113;
  v106 = v114;
  v107 = v115;
  v108 = v116;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD3EE028();
  v79 = swift_allocObject();
  swift_weakInit();

  *&v107 = sub_1BD3EFD18;
  *(&v107 + 1) = v79;
  *&v105 = MEMORY[0x1E69E9820];
  *(&v105 + 1) = 1107296256;
  *&v106 = sub_1BD126964;
  *(&v106 + 1) = &block_descriptor_85;
  v80 = _Block_copy(&v105);

  [v77 setUpdateHandler_];
  _Block_release(v80);
  sub_1BD0DE53C(&v120, &qword_1EBD45518);
  sub_1BD0DE53C(&v119, &unk_1EBD45520);
  sub_1BD0DE53C(&v118, &unk_1EBD45520);

  sub_1BD0DE53C(v109, &qword_1EBD3D490);
  sub_1BD0DE53C(&v117, &qword_1EBD40150);

  return v76;
}

uint64_t sub_1BD3EE028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v30 - v2;
  v32 = _s11BillPaymentVMa();
  MEMORY[0x1EEE9AC00](v32, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s15PaymentDateInfoVMa();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v7);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454A8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v34 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v35 = &v30 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v30 - v17;
  v19 = type metadata accessor for PeerPaymentModel();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1BD0DE53C(v18, &qword_1EBD45480);
  }

  else
  {
    sub_1BD3EFAF8(v18, v23, type metadata accessor for PeerPaymentModel);
    if ((v23[*(v19 + 52)] & 1) == 0 && v23[*(v19 + 48)] == 1)
    {
      v27 = type metadata accessor for PeerPaymentModel;
      v28 = v35;
      sub_1BD3EFBC0(v23, v35, type metadata accessor for PeerPaymentModel);
      v29 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
      goto LABEL_10;
    }

    sub_1BD3EFB60(v23, type metadata accessor for PeerPaymentModel);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE19C(&v6[*(v32 + 24)], v3, &qword_1EBD45510);
  sub_1BD3EFB60(v6, _s11BillPaymentVMa);
  if ((*(v31 + 48))(v3, 1, v33) == 1)
  {
    sub_1BD0DE53C(v3, &qword_1EBD45510);
    v24 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
    v25 = v35;
    (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v25, v34, &qword_1EBD454A8);
    sub_1BE048964();
    sub_1BE04D8C4();
    return sub_1BD0DE53C(v25, &qword_1EBD454A8);
  }

  v23 = v30;
  sub_1BD3EFAF8(v3, v30, _s15PaymentDateInfoVMa);
  v27 = _s15PaymentDateInfoVMa;
  v28 = v35;
  sub_1BD3EFBC0(v23, v35, _s15PaymentDateInfoVMa);
  v29 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v28, v34, &qword_1EBD454A8);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v28, &qword_1EBD454A8);
  return sub_1BD3EFB60(v23, v27);
}

uint64_t sub_1BD3EE6AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD3EE704();
  }

  return result;
}

void sub_1BD3EE704()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v39 = &v37 - v3;
  v4 = _s11BillPaymentVMa();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v37 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v37 - v17;
  v19 = *(v0 + qword_1EBDAAD68 + 24);
  v20 = *(v0 + qword_1EBDAAD68 + 32);
  v21 = v19;
  v22 = v20;
  sub_1BD2B1238(v22, v19, &v47);
  v23 = v48;
  if (v48)
  {
    v24 = v47;
    v25 = sub_1BD1C2B14();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v23;
    v27 = v50;
    *(v26 + 32) = v49;
    *(v26 + 48) = v27;
    v28 = &type metadata for AuthorizationError;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v25 = 0;
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = v26;
  *(&v54 + 1) = v28;
  *&v55 = v25;
  sub_1BE04C8F4();
  v29 = v22;
  sub_1BD56ED40(v29, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v18, v15, &qword_1EBD45480);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v18, &qword_1EBD45480);
  v30 = v29;
  sub_1BD83A564(v30, v51);
  v31 = v52;
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v51[1];
  v53 = v51[0];
  LOBYTE(v55) = v31;
  sub_1BE048964();
  sub_1BE04D8C4();
  v32 = v30;
  sub_1BD36F228(v32, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD3EFBC0(v10, v38, _s11BillPaymentVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD3EFB60(v10, _s11BillPaymentVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v32;
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v57[0] = v53;
  v57[1] = v54;
  v58 = v55;
  sub_1BD28B71C(v33, v18, v57, &v53);
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  sub_1BE048964();
  sub_1BE04D8C4();
  v34 = type metadata accessor for Passes(0);
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v43 = v40;
  v44 = v41;
  LOBYTE(v45) = v42;
  v36 = sub_1BD7D51F4(v35, &v43, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v40 = v36;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD3EE028();
}

void sub_1BD3EEC78(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v13 = *(a1 + 24);
  v14 = v3;
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(v1 + qword_1EBDAAD68);
  v7 = *(v1 + qword_1EBDAAD68 + 24);
  v8 = *(v1 + qword_1EBDAAD68 + 32);
  v9 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v9;
  v5[2] = *(a1 + 32);
  v10 = v2;
  sub_1BD0DE19C(&v14, v12, &qword_1EBD3D490);
  sub_1BD0DE19C(&v13, v12, &qword_1EBD40150);
  v11 = v4;
  sub_1BE048964();

  swift_unknownObjectRelease();
  sub_1BD3EE704();
}

void sub_1BD3EED58(void *a1)
{
  v3 = v1 + qword_1EBDAAD68;
  v4 = [*(v1 + qword_1EBDAAD68 + 32) paymentRequest];
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [v4 bankAccounts];

  if (v6)
  {

    v7 = [*(v3 + 32) paymentRequest];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 bankAccounts];
      if (v9)
      {
        v10 = v9;
        sub_1BD3EFD20();
        v11 = sub_1BE052744();

        v12 = a1;
        MEMORY[0x1BFB3F7A0]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        if (v11)
        {
          v13 = sub_1BE052724();
        }

        else
        {
          v13 = 0;
        }

        [v8 setBankAccounts_];

        goto LABEL_13;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [*(v3 + 32) paymentRequest];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BE0B7020;
  *(v16 + 32) = a1;
  sub_1BD3EFD20();
  v17 = a1;
  v18 = sub_1BE052724();

  [v15 setBankAccounts_];

LABEL_13:
  [*(v3 + 32) setBankAccount_];

  sub_1BD3EE704();
}

void sub_1BD3EEFB4()
{
  v1 = qword_1EBD45430;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD45438;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD45440;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = qword_1EBD45448;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1EBD45450;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EBD45458;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45500);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + qword_1EBDAB050);
}

uint64_t sub_1BD3EF1B4()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);

  swift_unknownObjectRelease();
  v6 = qword_1EBD45430;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1EBD45438;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = qword_1EBD45440;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = qword_1EBD45448;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = qword_1EBD45450;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = qword_1EBD45458;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45500);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);

  return v0;
}

uint64_t sub_1BD3EF444()
{
  sub_1BD3EF1B4();

  return swift_deallocClassInstance();
}

void sub_1BD3EF498()
{
  if (!qword_1EBD45498)
  {
    _s11BillPaymentVMa();
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD45498);
    }
  }
}

void sub_1BD3EF4F0()
{
  if (!qword_1EBD454C0)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD454C0);
    }
  }
}

uint64_t sub_1BD3EF568()
{
  result = type metadata accessor for PeerPaymentModel();
  if (v1 <= 0x3F)
  {
    result = _s15PaymentDateInfoVMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1BD3EF614@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1BD3EF69C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD3EFC88(v1, v2);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD3EF748@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD3EF7C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

double sub_1BD3EF844@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1BD3EF8D4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD3EFC28(v1);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD3EF9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1BD0DE19C(a1, &v16 - v13, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v14, v11, a5);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v14, a5);
}

uint64_t sub_1BD3EFAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3EFB60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3EFBC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3EFC28(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1BE048C84();
    v2 = v1;
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

void *sub_1BD3EFC88(void *result, void *a2)
{
  if (result != 1)
  {
    sub_1BD3EFCD8(result, a2);
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

id sub_1BD3EFCD8(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

unint64_t sub_1BD3EFD20()
{
  result = qword_1EBD45530;
  if (!qword_1EBD45530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45530);
  }

  return result;
}

void *sub_1BD3EFD6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1BD531978(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1BFB40900](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          sub_1BD531978((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v18 + 16) = v8 + 1;
        v9 = v18 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &off_1F3B97A98;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v18 + 16);
        v13 = *(v18 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          v16 = v13 > 1;
          v17 = v14;
          sub_1BD531978(v16, v12 + 1, 1);
          v14 = v17;
        }

        *(v18 + 16) = v12 + 1;
        v15 = v18 + 16 * v12;
        *(v15 + 32) = v14;
        *(v15 + 40) = &off_1F3B97A98;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3EFEF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v4 = a1 + 32;
    do
    {
      sub_1BE053794();
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_1BD3EFFDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v4 = a1 + 32;
    do
    {
      sub_1BD038CD0(v4, &v5);
      sub_1BD0E5E8C(0, &qword_1EBD406E0);
      swift_dynamicCast();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_1BD3F00D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      sub_1BD0E5E8C(0, &qword_1EBD45E80);
      swift_dynamicCast();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void *sub_1BD3F01E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1BD531AC4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = MEMORY[0x1BFB40900](i, a1);
        v8 = *(v16 + 16);
        v7 = *(v16 + 24);
        if (v8 >= v7 >> 1)
        {
          v9 = v6;
          sub_1BD531AC4((v7 > 1), v8 + 1, 1);
          v6 = v9;
        }

        *(v16 + 16) = v8 + 1;
        *(v16 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *(v16 + 16);
        v12 = *(v16 + 24);
        v13 = *v10;
        if (v11 >= v12 >> 1)
        {
          v14 = v12 > 1;
          v15 = v13;
          sub_1BD531AC4(v14, v11 + 1, 1);
          v13 = v15;
        }

        *(v16 + 16) = v11 + 1;
        *(v16 + 8 * v11 + 32) = v13;
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1BD3F0374(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5319DC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1BFB40900](i, a1);
        sub_1BD0E5E8C(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1BD5319DC((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1BD1B6140(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_1BD0E5E8C(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1BD5319DC((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_1BD1B6140(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3F05C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1BD5323F8(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB70);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BD5323F8((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1BD3F06F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5319DC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1BFB40900](i, a1);
        type metadata accessor for _AllowedValue();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1BD5319DC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1BD1B6140(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for _AllowedValue();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1BD5319DC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1BD1B6140(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3F08C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v3(a2);
}

id WatchUICoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchUICoordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchUICoordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WatchUICoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD3F0B18()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD3F0B78(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____PKProvisioningWatchUICoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD3F0C10;
}

void sub_1BD3F0C10(void **a1, char a2)
{
  v3 = *a1;
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
  }

  free(v3);
}

uint64_t sub_1BD3F0C90()
{
  v0 = sub_1BE04C384();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04C3A4();
  if (*(v5 + 16))
  {
    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v6 = sub_1BE04C354();
    (*(v1 + 8))(v4, v0);
    v7 = [v6 sid];

    v8 = sub_1BE052434();
    return v8;
  }

  else
  {

    __break(1u);
  }

  return result;
}

id ProvisioningWatchUICoordinator.__allocating_init(setupContext:provisioningController:credential:)(uint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BD3F5998(a1, a2, a3);

  return v8;
}

id ProvisioningWatchUICoordinator.init(setupContext:provisioningController:credential:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1BD3F5998(a1, a2, a3);

  return v5;
}

id ProvisioningWatchUICoordinator.__allocating_init(manualEntrySetupContext:provisioningController:skipRequirements:)(uint64_t a1, void *a2, int a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BD3F5D74(a1, a2, a3);

  return v8;
}

id ProvisioningWatchUICoordinator.init(manualEntrySetupContext:provisioningController:skipRequirements:)(uint64_t a1, void *a2, int a3)
{
  v4 = sub_1BD3F5D74(a1, a2, a3);

  return v4;
}

id ProvisioningWatchUICoordinator.__deallocating_deinit()
{
  sub_1BD3F1DCC();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningWatchUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD3F10E4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
  *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel) = a1;
  v3 = a1;

  v4 = OBJC_IVAR____PKProvisioningWatchUICoordinator_composer;
  if (!*(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer))
  {
    *(v1 + v4) = sub_1BD3F170C();
  }

  v5 = *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError);
  *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError) = 0;

  if (*(v1 + v4))
  {
    sub_1BE048964();
    sub_1BE04C094();
  }
}

uint64_t sub_1BD3F11EC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BE04D214();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04C384();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  v16 = sub_1BE04C3A4();
  if (*(v16 + 16))
  {
    (*(v12 + 16))(v15, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

    sub_1BE053974();
    (*(v12 + 8))(v15, v11);
    v17 = v42;
    v18 = v43;
    sub_1BE04D0D4();
    v19 = v3;
    sub_1BE048C84();
    v39 = v10;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v37 = v17;
      v23 = v22;
      v38 = swift_slowAlloc();
      v42 = v38;
      *v23 = 136315394;
      v24 = sub_1BD3F0C90();
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = sub_1BD123690(v24, v25, &v42);

      *(v23 + 4) = v29;
      a3 = v28;
      a2 = v27;
      a1 = v26;
      *(v23 + 12) = 2080;
      v30 = sub_1BD123690(v37, v18, &v42);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1BD026000, v20, v21, "[%s] Preflighting provisioning credential: %s", v23, 0x16u);
      v31 = v38;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v31, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v39, v41);
    v32 = *&v19[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel];
    *&v19[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel] = a1;
    v33 = a1;

    *&v19[OBJC_IVAR____PKProvisioningWatchUICoordinator_composer] = sub_1BD3F170C();
    sub_1BE048964();

    LOBYTE(v42) = 10;
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = a3;
    sub_1BE048964();
    sub_1BE04C0D4();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3F170C()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  v9 = *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements);
  v10 = v7;
  if (v9 == 1)
  {
    v11 = sub_1BD1D8324(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1BD1D8324((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v11[v13 + 32] = 10;
  }

  v14 = sub_1BE04C3A4();
  if (*(v14 + 16))
  {
    (*(v3 + 16))(v6, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    sub_1BD3F710C(&qword_1EBD456C8, v15, type metadata accessor for ProvisioningWatchUICoordinator);
    v16 = sub_1BE04BF34();

    (*(v3 + 8))(v6, v2);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C054();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C0B4();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BE04C044();

    return v16;
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_1BD3F1A20(unsigned __int8 *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1BE04D0D4();
    v12 = v11;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = v2;
      v2 = v15;
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v2 = 136315650;
      v16 = sub_1BD3F0C90();
      v18 = sub_1BD123690(v16, v17, v31);

      *(v2 + 4) = v18;
      *(v2 + 12) = 2080;
      v19 = sub_1BE04B734();
      v21 = sub_1BD123690(v19, v20, v31);

      *(v2 + 14) = v21;
      *(v2 + 22) = 2080;
      if (v30)
      {
        v22 = 7562585;
      }

      else
      {
        v22 = 28494;
      }

      if (v30)
      {
        v23 = 0xE300000000000000;
      }

      else
      {
        v23 = 0xE200000000000000;
      }

      v24 = sub_1BD123690(v22, v23, v31);

      *(v2 + 24) = v24;
      _os_log_impl(&dword_1BD026000, v13, v14, "[%s] Transitioning to Step %s isRunning: %s", v2, 0x20u);
      v25 = v29;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v25, -1, -1);
      v26 = v2;
      LOBYTE(v2) = v30;
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_1BD88BA18(v9, v31);
    if (LOBYTE(v31[0]) - 4 > 8)
    {
      v27 = 3;
    }

    else
    {
      v27 = qword_1BE0D4658[(LOBYTE(v31[0]) - 4)];
    }

    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      [v28 didTransitionTo:v27 loading:v2 & 1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD3F1D1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD3F220C(a2);
  }
}

void sub_1BD3F1D78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD3F2628();
  }
}

void sub_1BD3F1DCC()
{
  if (*(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer))
  {
    *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer) = 0;
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    v2 = [objc_opt_self() sharedApplication];
    v5[4] = sub_1BD3F70E8;
    v5[5] = v1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1BD126964;
    v5[3] = &block_descriptor_57_2;
    v3 = _Block_copy(v5);
    sub_1BE048964();

    v4 = [v2 beginBackgroundTaskWithExpirationHandler_];
    _Block_release(v3);

    swift_beginAccess();
    *(v1 + 16) = v4;
    *(v1 + 24) = 0;
    sub_1BE048964();
    sub_1BE04C024();
  }
}

uint64_t sub_1BD3F1F58(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  aBlock[4] = sub_1BD3F7168;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_60_1;
  v13 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3F710C(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v6, v13);
  _Block_release(v13);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_1BD3F220C(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *&v1[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError];
    *&v1[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError] = a1;
    v34 = a1;

    if ([v34 severity] == 1)
    {
      v9 = v34;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BE0B98D0;
      v19 = *MEMORY[0x1E69BB6E0];
      v20 = *MEMORY[0x1E69BB6E8];
      *(v18 + 32) = *MEMORY[0x1E69BB6E0];
      *(v18 + 40) = v20;
      v21 = *MEMORY[0x1E69BB728];
      *(v18 + 48) = *MEMORY[0x1E69BB728];
      v22 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v26 = sub_1BE052724();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      v28 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v29;
      v30 = v28;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD3F710C(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
      v31 = sub_1BE052224();

      [v22 subjects:v26 sendEvent:v31];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong showWithProvisioningError_];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1BE04D0D4();
    v10 = v1;
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35[0] = v14;
      *v13 = 136315138;
      v15 = sub_1BD3F0C90();
      v17 = sub_1BD123690(v15, v16, v35);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1BD026000, v11, v12, "[%s] Step failed with nil error", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1BFB45F20](v14, -1, -1);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BD3F2628()
{
  v1 = OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses;
  v2 = *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_22:
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      v14 = *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError);
      if (v14)
      {
        v15 = *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError);
      }

      else
      {
        v15 = [objc_opt_self() userCancelError];
        v14 = 0;
      }

      v16 = v14;
      [v13 didFinishWithSuccessWithPasses:0 error:v15];

      return swift_unknownObjectRelease();
    }

    return result;
  }

LABEL_21:
  if (sub_1BE053704() < 1)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = *(v0 + v1);
  v17 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  v5 = 0;
  v0 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v1 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = [v6 secureElementPass];

    ++v5;
    if (v8)
    {
      MEMORY[0x1BFB3F7A0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      v0 = v17;
      v5 = v1;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1BD0E5E8C(0, &qword_1EBD456C0);
    v11 = sub_1BE052724();

    [v10 didFinishWithSuccessWithPasses:v11 error:0];

    return swift_unknownObjectRelease();
  }
}

void ProvisioningWatchUICoordinator.handleLostModeResult(result:completion:)(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&aBlock[-1] - v14);
  v16 = sub_1BD3F0C90();
  if (!a1)
  {

    (*(v7 + 104))(v10, *MEMORY[0x1E69B8308], v6);
    sub_1BE04BF54();
    (*(v7 + 8))(v10, v6);
LABEL_7:
    a2(v15);
    (*(v12 + 8))(v15, v11);
    return;
  }

  if (a1 != 1)
  {

    *v15 = a1;
    (*(v12 + 104))(v15, *MEMORY[0x1E69B8168], v11);
    v24 = a1;
    goto LABEL_7;
  }

  v18 = v16;
  v19 = v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = v18;
    v22[5] = v19;
    aBlock[4] = sub_1BD3F67FC;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3F08C0;
    aBlock[3] = &block_descriptor_86;
    v23 = _Block_copy(aBlock);
    sub_1BE048964();

    [v21 presentExitLostModeAlertWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v23);
  }

  else
  {
  }
}

uint64_t sub_1BD3F2C6C(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v32 = a4;
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v15 = *(v14 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = (v29 - v18);
  if (a1)
  {
    v20 = MEMORY[0x1E69B8160];
  }

  else
  {
    v31 = v9;
    sub_1BE04D0D4();
    sub_1BE048C84();
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v29[1] = a3;
      v24 = v23;
      v25 = swift_slowAlloc();
      v30 = a2;
      v26 = v25;
      v33 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1BD123690(v32, a5, &v33);
      _os_log_impl(&dword_1BD026000, v21, v22, "[%s] User failed to authenticate to exit lost mode", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v27 = v26;
      a2 = v30;
      MEMORY[0x1BFB45F20](v27, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    (*(v10 + 8))(v13, v31);
    *v19 = 0;
    v20 = MEMORY[0x1E69B8168];
  }

  (*(v15 + 104))(v19, *v20, v14, v17);
  a2(v19);
  return (*(v15 + 8))(v19, v14);
}

uint64_t ProvisioningWatchUICoordinator.handleSetupAccountResult(result:completion:)(void *a1, unsigned __int8 a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v34 = a3;
  v8 = sub_1BE04C534();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v31 - v15);
  v17 = sub_1BE04C384();
  v18 = *(v17 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v19);
  v23 = (&v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      *v16 = a1;
      (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12, v21.n128_f64[0]);
      v27 = a1;
    }

    else
    {
      *v16 = [objc_opt_self() errorWithSeverity_];
      (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12);
    }
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1BE0B7020;
      *(v28 + 32) = a1;
      *(v5 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v28;
      v29 = a1;

      sub_1BE04BF44();
      v34(v16);
      (*(v13 + 8))(v16, v12);
      return sub_1BD3F2628();
    }

    if (*(v5 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer))
    {
      *v23 = a1;
      v24 = v20;
      (*(v18 + 104))(v23, *MEMORY[0x1E69B82A8], v20, v21.n128_f64[0]);
      sub_1BE048964();
      v25 = a1;
      sub_1BE04C084();

      (*(v18 + 8))(v23, v24);
    }

    v26 = v32;
    (*(v32 + 104))(v11, *MEMORY[0x1E69B8308], v8, v21);
    sub_1BE04BF54();
    (*(v26 + 8))(v11, v8);
  }

  v34(v16);
  return (*(v13 + 8))(v16, v12);
}

id ProvisioningWatchUICoordinator.handlePrecursorPass(result:completion:)(void *a1, char a2, void (*a3)(char *), unint64_t a4)
{
  v9 = sub_1BE04C534();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v15 = *(v14 - 1);
  v18 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = (&v33 - v17);
  if (a2)
  {
    if (a2 == 1)
    {
      *v19 = a1;
      v20 = &v33 - v17;
      (*(v15 + 104))(v19, *MEMORY[0x1E69B8168], v14, v18);
      v21 = a1;
      a3(v20);
      return (*(v15 + 8))(v20, v14);
    }

    else
    {
      v31 = &v33 - v17;
      (*(v10 + 104))(v13, *MEMORY[0x1E69B8308], v9, v18);
      sub_1BE04BF54();
      (*(v10 + 8))(v13, v9);
      a3(v31);
      return (*(v15 + 8))(v31, v14);
    }
  }

  else
  {
    v37 = &v33 - v17;
    v38 = v4;
    v23 = sub_1BE04BD44();
    v24 = v23;
    if (v23 >> 62)
    {
      goto LABEL_20;
    }

    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v38;
    if (v25)
    {
      while (1)
      {
        v33 = v15;
        v34 = v14;
        v35 = a4;
        v36 = a3;
        v40 = MEMORY[0x1E69E7CC0];
        result = sub_1BE0538E4();
        if (v25 < 0)
        {
          break;
        }

        v27 = 0;
        v15 = v24 & 0xC000000000000001;
        v39 = v24 & 0xFFFFFFFFFFFFFF8;
        a3 = 0x1E69B8000;
        v14 = &selRef_initWithIdentifier_;
        while (1)
        {
          a4 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v15)
          {
            v28 = MEMORY[0x1BFB40900](v27, v24);
          }

          else
          {
            if (v27 >= *(v39 + 16))
            {
              goto LABEL_19;
            }

            v28 = *(v24 + 8 * v27 + 32);
          }

          v29 = v28;
          result = [objc_allocWithZone(MEMORY[0x1E69B8D50]) initWithSecureElementPass_];
          if (!result)
          {
            goto LABEL_25;
          }

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          ++v27;
          if (a4 == v25)
          {

            v30 = v40;
            a3 = v36;
            v15 = v33;
            v14 = v34;
            v26 = v38;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        v25 = sub_1BE053704();
        v26 = v38;
        if (!v25)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {
LABEL_21:

      v30 = MEMORY[0x1E69E7CC0];
LABEL_22:
      *(v26 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v30;

      v32 = v37;
      sub_1BE04BF44();
      a3(v32);
      (*(v15 + 8))(v32, v14);
      return sub_1BD3F2628();
    }
  }

  return result;
}

void ProvisioningWatchUICoordinator.handleRequirements(result:completion:)(uint64_t a1, void (*a2)(uint64_t *))
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55160);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v54 - v15);
  v17 = sub_1BE04C014();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD3F6C58(a1, v20, MEMORY[0x1E69B8180]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v41 = *v20;
        *v16 = *v20;
        (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12);
        v42 = v41;
LABEL_31:
        v53 = v42;
        v56(v16);

LABEL_32:
        (*(v13 + 8))(v16, v12);
        return;
      }

      goto LABEL_35;
    }

    v22 = *v20;
    v23 = v20[1];
    v24 = *(v2 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
    if (v24)
    {
      if (v23 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_8;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        v55 = v24;
        v25 = [v55 visiblePaymentSetupFields];
        if (v25)
        {
          v26 = v25;
          sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
          v27 = sub_1BE052744();

          if (v27 >> 62)
          {
            v28 = sub_1BE053704();
          }

          else
          {
            v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v28)
          {
            sub_1BD3F0374(v23, &qword_1EBD4E6C0);

            v43 = sub_1BE052724();

            v44 = v55;
            [v55 updateWithPaymentSetupFields_];

            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong didUpdateFieldModel];
              swift_unknownObjectRelease();
            }

            v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570) + 48);
            v47 = *MEMORY[0x1E69B8300];
            v48 = sub_1BE04C534();
            (*(*(v48 - 8) + 104))(v16, v47, v48);
            *(v16 + v46) = v22;
            (*(v13 + 104))(v16, *MEMORY[0x1E69B8170], v12);
            v49 = v22;
            v56(v16);

            goto LABEL_32;
          }

          *v16 = 0;
          (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12);
          v56(v16);
          (*(v13 + 8))(v16, v12);
          v29 = sub_1BE052724();

          v30 = v55;
          v31 = [v55 secondaryEntryFieldsModelWithPaymentSetupFields_];

          if (v31)
          {
            swift_beginAccess();
            v32 = swift_unknownObjectWeakLoadStrong();
            if (v32)
            {
              [v32 presentSecondaryFieldsViewControllerWithFieldsModel_];

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else
          {
          }

          return;
        }

        __break(1u);
LABEL_35:
        sub_1BE053994();
        __break(1u);
        return;
      }
    }

    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = *v20;
LABEL_30:
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570) + 48);
    v51 = *MEMORY[0x1E69B8308];
    v52 = sub_1BE04C534();
    (*(*(v52 - 8) + 104))(v16, v51, v52);
    *(v16 + v50) = v22;
    (*(v13 + 104))(v16, *MEMORY[0x1E69B8170], v12);
    v42 = v22;
    goto LABEL_31;
  }

  v33 = *v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45580);
  sub_1BD226B4C(v20 + *(v34 + 48), v11);
  *v16 = 0;
  (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12);
  v56(v16);
  (*(v13 + 8))(v16, v12);
  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = PKPaymentCardIneligibleReasonForRequirementsStatus(v33);
    sub_1BD38F438(v11, v7);
    v38 = sub_1BE04AA64();
    v39 = *(v38 - 8);
    v40 = 0;
    if ((*(v39 + 48))(v7, 1, v38) != 1)
    {
      v40 = sub_1BE04A9C4();
      (*(v39 + 8))(v7, v38);
    }

    [v36 showEligibilityIssueWithReason:v37 learnMoreUrl:v40];
    swift_unknownObjectRelease();
  }

  sub_1BD0DE53C(v11, &unk_1EBD3CF70);
}

void ProvisioningWatchUICoordinator.handleEligibility(result:completion:)(uint64_t a1, void (*a2)(unint64_t *), uint64_t a3)
{
  v65 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v65 - v17);
  v19 = sub_1BE04BF64();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD3F6C58(a1, v22, MEMORY[0x1E69B8178]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v24 = *v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1BE0B7020;
        v26 = [objc_allocWithZone(MEMORY[0x1E69B8D50]) initWithSecureElementPass_];
        if (v26)
        {
          *(v25 + 32) = v26;
          *(v3 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v25;

          *v18 = 0;
          (*(v15 + 104))(v18, *MEMORY[0x1E69B8168], v14);
          v65(v18);
          (*(v15 + 8))(v18, v14);
          sub_1BD3F2628();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_1BD3F6CC0(v22, MEMORY[0x1E69B8178]);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v53 = Strong;
          v54 = swift_allocObject();
          *(v54 + 16) = v65;
          *(v54 + 24) = a3;
          v70 = sub_1BD3F6C48;
          v71 = v54;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          v68 = sub_1BD3F08C0;
          v69 = &block_descriptor_9_3;
          v55 = _Block_copy(&aBlock);
          sub_1BE048964();

          [v53 presentSEStorageCleanupWithCompletion_];
          swift_unknownObjectRelease();
          _Block_release(v55);
        }
      }

      return;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v37 = *v22;
      *v18 = *v22;
      (*(v15 + 104))(v18, *MEMORY[0x1E69B8168], v14);
      v38 = v37;
LABEL_28:
      v30 = v38;
      v65(v18);
LABEL_29:

      (*(v15 + 8))(v18, v14);
      return;
    }

    v56 = *v22;
    v39 = [objc_opt_self() errorWithCommonType:1 severity:5];
    aBlock = 0;
    v67 = 0xE000000000000000;
    sub_1BE053834();

    aBlock = 0xD000000000000016;
    v67 = 0x80000001BE128180;
    v57 = sub_1BE04BDF4();
    v58 = MEMORY[0x1BFB3F7F0](v56, v57);
    v60 = v59;

    MEMORY[0x1BFB3F610](v58, v60);

    v61 = sub_1BE052404();

    [v39 addInternalDebugDescription_];

    *v18 = v39;
    v43 = MEMORY[0x1E69B8168];
LABEL_25:
    (*(v15 + 104))(v18, *v43, v14);
    v38 = v39;
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v39 = *v22;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0) + 48);
    v41 = *MEMORY[0x1E69B8308];
    v42 = sub_1BE04C534();
    (*(*(v42 - 8) + 104))(v18, v41, v42);
    *(v18 + v40) = v39;
    v43 = MEMORY[0x1E69B8170];
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = *v22;
    v27 = v22[1];
    v29 = *(v3 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
    if (v29)
    {
      if (v27 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_11;
        }
      }

      else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        v30 = v29;
        sub_1BD3F0374(v27, &qword_1EBD4E6C0);

        v31 = sub_1BE052724();

        [v30 updateWithPaymentSetupFields_];

        swift_beginAccess();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          [v32 didUpdateFieldModel];
          swift_unknownObjectRelease();
        }

        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0) + 48);
        v34 = *MEMORY[0x1E69B8300];
        v35 = sub_1BE04C534();
        (*(*(v35 - 8) + 104))(v18, v34, v35);
        *(v18 + v33) = v28;
        (*(v15 + 104))(v18, *MEMORY[0x1E69B8170], v14);
        v36 = v28;
        v65(v18);

        goto LABEL_29;
      }
    }

    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0) + 48);
    v63 = *MEMORY[0x1E69B8308];
    v64 = sub_1BE04C534();
    (*(*(v64 - 8) + 104))(v18, v63, v64);
    *(v18 + v62) = v28;
    (*(v15 + 104))(v18, *MEMORY[0x1E69B8170], v14);
    v38 = v28;
    goto LABEL_28;
  }

  v44 = *v22;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45590);
  sub_1BD226B4C(v22 + *(v45 + 48), v13);
  *v18 = 0;
  (*(v15 + 104))(v18, *MEMORY[0x1E69B8168], v14);
  v65(v18);
  (*(v15 + 8))(v18, v14);
  v46 = PKPaymentCardIneligibleReasonForEligibilityStatus(v44);
  swift_beginAccess();
  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = v47;
    sub_1BD38F438(v13, v9);
    v49 = sub_1BE04AA64();
    v50 = *(v49 - 8);
    v51 = 0;
    if ((*(v50 + 48))(v9, 1, v49) != 1)
    {
      v51 = sub_1BE04A9C4();
      (*(v50 + 8))(v9, v49);
    }

    [v48 showEligibilityIssueWithReason:v46 learnMoreUrl:{v51, v65}];
    swift_unknownObjectRelease();
  }

  sub_1BD0DE53C(v13, &unk_1EBD3CF70);
}

uint64_t sub_1BD3F4834(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - v8;
  if (a1)
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E69B8160], v4, v7);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD45688);
    sub_1BE04BF44();
  }

  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

void ProvisioningWatchUICoordinator.handleSEStorage(result:completion:)(void *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&aBlock[-1] - v12);
  if (!a2)
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550D0) + 48);
    v19 = *MEMORY[0x1E69B8308];
    v20 = sub_1BE04C534();
    (*(*(v20 - 8) + 104))(v13, v19, v20);
    *(v13 + v18) = a1;
    (*(v9 + 104))(v13, *MEMORY[0x1E69B8170], v8);
    sub_1BE048C84();
LABEL_7:
    a3(v13);
    (*(v9 + 8))(v13, v8);
    return;
  }

  if (a2 != 1)
  {
    *v13 = a1;
    (*(v9 + 104))(v13, *MEMORY[0x1E69B8168], v8, v11);
    v21 = a1;
    goto LABEL_7;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    aBlock[4] = sub_1BD3F6C50;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3F08C0;
    aBlock[3] = &block_descriptor_15_4;
    v17 = _Block_copy(aBlock);
    sub_1BE048964();

    [v15 presentSEStorageCleanupWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v17);
  }
}

uint64_t sub_1BD3F4C14(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - v8;
  if (a1)
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E69B8160], v4, v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680);
    sub_1BE04BF44();
  }

  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t ProvisioningWatchUICoordinator.handleTerms(result:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = sub_1BE04C534();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v9 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v10);
  v12 = &v30 - v11;
  v13 = sub_1BE04BD84();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04AA64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD3F6C58(a1, v16, MEMORY[0x1E69B8108]);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1BD3F6CC0(v16, MEMORY[0x1E69B8108]);
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8308], v4);
    sub_1BE04BF54();
    (*(v5 + 8))(v8, v4);
    v32(v12);
    return (*(v9 + 8))(v12, v31);
  }

  else
  {
    v23 = v32;
    v24 = v33;
    (*(v18 + 32))(v21, v16, v17);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = sub_1BE04A9C4();
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      *(v28 + 24) = v24;
      aBlock[4] = sub_1BD3F6D20;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_21_1;
      v29 = _Block_copy(aBlock);
      sub_1BE048964();

      [v26 presentTermsWithTermsUrl:v27 completion:v29];
      _Block_release(v29);
      swift_unknownObjectRelease();
    }

    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_1BD3F5154(char a1, void (*a2)(void *))
{
  v4 = sub_1BE04C534();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v16 - v13);
  if (a1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8308], v4, v12);
    sub_1BE04BF54();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    *v14 = 0;
    (*(v10 + 104))(v14, *MEMORY[0x1E69B8168], v9, v12);
  }

  a2(v14);
  return (*(v10 + 8))(v14, v9);
}

id ProvisioningWatchUICoordinator.handleProvisioned(result:completion:)(void *a1, char a2, void (*a3)(unint64_t), unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD455B0);
  v10 = *(v9 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v29 - v13;
  if (a2)
  {
    *v14 = a1;
    v15 = MEMORY[0x1E69B8168];
LABEL_22:
    (v10[13])(v14, *v15, v9, v12);
    v28 = a1;
    a3(v14);
    return (v10[1])(v14, v9);
  }

  v36 = v4;
  v16 = sub_1BE04BD44();
  v17 = v16;
  if (v16 >> 62)
  {
    goto LABEL_17;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_18:

    v22 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v23 = v36;
    *(v36 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v22;

    [*(v23 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel) unhideFieldsWithEnteredValues];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didUpdateFieldModel];
      swift_unknownObjectRelease();
    }

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D68) + 48);
    v26 = *MEMORY[0x1E69B8308];
    v27 = sub_1BE04C534();
    (*(*(v27 - 8) + 104))(v14, v26, v27);
    *(v14 + v25) = a1;
    v15 = MEMORY[0x1E69B8170];
    goto LABEL_22;
  }

  while (1)
  {
    v38 = MEMORY[0x1E69E7CC0];
    result = sub_1BE0538E4();
    if (v18 < 0)
    {
      break;
    }

    v30 = v14;
    v31 = a1;
    v32 = v10;
    v33 = a4;
    v34 = a3;
    v35 = v9;
    v14 = 0;
    v37 = v17 & 0xFFFFFFFFFFFFFF8;
    a4 = 0x1E69B8000uLL;
    v10 = &selRef_initWithIdentifier_;
    while (1)
    {
      a1 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB40900](v14, v17);
      }

      else
      {
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_16;
        }

        v20 = *(v17 + 8 * v14 + 32);
      }

      v21 = v20;
      result = [objc_allocWithZone(MEMORY[0x1E69B8D50]) initWithSecureElementPass_];
      if (!result)
      {
        goto LABEL_24;
      }

      v9 = result;

      sub_1BE0538C4();
      a3 = *(v38 + 16);
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      ++v14;
      if (a1 == v18)
      {

        v22 = v38;
        a3 = v34;
        v9 = v35;
        v10 = v32;
        v14 = v30;
        a1 = v31;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v18 = sub_1BE053704();
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t (*sub_1BD3F5808(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BD3F7170;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BD3F5888(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_1BE048964();
LABEL_5:
    *v3 = v4;
    return sub_1BD3F5908;
  }

  __break(1u);
  return result;
}

void (*sub_1BD3F5910(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BD3F5990;
  }

  __break(1u);
  return result;
}

id sub_1BD3F5998(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = sub_1BE04B944();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_composer] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel] = 0;
  v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses] = MEMORY[0x1E69E7CC0];
  sub_1BE04BC44();
  v16 = a2;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_context] = sub_1BE04BAE4();
  v17 = *MEMORY[0x1E69B7F80];
  v18 = sub_1BE04B8D4();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  result = [v16 webService];
  if (result)
  {
    sub_1BE04B914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v21 = sub_1BE04C384();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    v30 = xmmword_1BE0B69E0;
    *(v24 + 16) = xmmword_1BE0B69E0;
    *(v24 + v23) = a3;
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69B82A8], v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v30;
    (*(v12 + 16))(v26 + v25, v15, v11);
    sub_1BE04C3D4();
    swift_allocObject();
    v27 = a3;
    v28 = sub_1BE04C394();
    (*(v12 + 8))(v15, v11);
    *&v4[OBJC_IVAR____PKProvisioningWatchUICoordinator_configuration] = v28;
    v29 = type metadata accessor for ProvisioningWatchUICoordinator();
    v31.receiver = v4;
    v31.super_class = v29;
    return objc_msgSendSuper2(&v31, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3F5D74(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v29 - v8;
  v10 = sub_1BE04B944();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_composer] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel] = 0;
  v15 = OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements;
  v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses] = MEMORY[0x1E69E7CC0];
  sub_1BE04BC44();
  v16 = a2;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_context] = sub_1BE04BAE4();
  v17 = *MEMORY[0x1E69B7F80];
  v18 = sub_1BE04B8D4();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v9, v17, v18);
  (*(v19 + 56))(v9, 0, 1, v18);
  result = [v16 webService];
  if (result)
  {
    sub_1BE04B914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v21 = sub_1BE04C384();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    v29 = xmmword_1BE0B69E0;
    *(v24 + 16) = xmmword_1BE0B69E0;
    *(v24 + v23) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69B8290], v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
    v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v29;
    (*(v11 + 16))(v26 + v25, v14, v10);
    sub_1BE04C3D4();
    swift_allocObject();
    v27 = sub_1BE04C394();
    (*(v11 + 8))(v14, v10);
    *&v4[OBJC_IVAR____PKProvisioningWatchUICoordinator_configuration] = v27;
    v4[v15] = v30 & 1;
    v28 = type metadata accessor for ProvisioningWatchUICoordinator();
    v31.receiver = v4;
    v31.super_class = v28;
    return objc_msgSendSuper2(&v31, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC22handleBiometricBinding6result10completiony0aB4Core0d4StephI0C0I6ResultO_yAG0d9OperationN0OyytGctF_0(void *a1, uint64_t a2, char a3, void (*a4)(void *))
{
  v7 = sub_1BE04C534();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = (&v20 - v16);
  if (a3)
  {
    if (a3 == 1)
    {
      *v17 = a1;
      (*(v13 + 104))(v17, *MEMORY[0x1E69B8168], v12, v15);
      v18 = a1;
    }

    else
    {
      (*(v8 + 104))(v11, *MEMORY[0x1E69B8308], v7, v15);
      sub_1BE04BF54();
      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    *v17 = [objc_opt_self() errorWithSeverity_];
    (*(v13 + 104))(v17, *MEMORY[0x1E69B8168], v12);
  }

  a4(v17);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_1BD3F63E0(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v19 - v15);
  if (a2)
  {
    *v16 = a1;
    (*(v12 + 104))(v16, *MEMORY[0x1E69B8168], v11, v14);
    v17 = a1;
  }

  else
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69B8308], v6, v14);
    sub_1BE04BF54();
    (*(v7 + 8))(v10, v6);
  }

  a3(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC22handleValidationResult6result10completiony0aB4Core0D25StepValidatePreconditionsC0hI0O_yAG0d9OperationI0OyytGctF_0(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v19 - v15);
  if (a2)
  {
    if (a2 == 1)
    {
      *v16 = a1;
      (*(v12 + 104))(v16, *MEMORY[0x1E69B8168], v11, v14);
      v17 = a1;
    }

    else
    {
      (*(v7 + 104))(v10, *MEMORY[0x1E69B8308], v6, v14);
      sub_1BE04BF54();
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    *v16 = 0;
    (*(v12 + 104))(v16, *MEMORY[0x1E69B8168], v11, v14);
  }

  a3(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC14handleReadCard6result10completiony0aB4Core0d4StephI0C0hI6ResultO_yAG0d9OperationN0OySo27PKPaymentTapToProvisionDataCGctF_0(void *a1, unsigned __int8 a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v19 - v9);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v16 = [objc_opt_self() errorWithSeverity_];
      *v10 = v16;
      (*(v7 + 104))(v10, *MEMORY[0x1E69B8168], v6);
      v17 = v16;
      a3(v10);

      return (*(v7 + 8))(v10, v6);
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *v10 = a1;
    v14 = MEMORY[0x1E69B8168];
    goto LABEL_6;
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A8) + 48);
  v12 = *MEMORY[0x1E69B8308];
  v13 = sub_1BE04C534();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  *(v10 + v11) = a1;
  v14 = MEMORY[0x1E69B8170];
LABEL_6:
  (*(v7 + 104))(v10, *v14, v6);
  v15 = a1;
  a3(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC22handleDeviceAssessment6result10completiony0aB4Core0d4StephI0C0I6ResultO_yAG0d9OperationN0OySo020PKODIServiceProviderI0CSgGXEtF_0(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45690);
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = (&v21 - v10);
  if (a2)
  {
    if (a2 != 1)
    {
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140) + 48);
      v18 = *MEMORY[0x1E69B8308];
      v19 = sub_1BE04C534();
      (*(*(v19 - 8) + 104))(v11, v18, v19);
      *(v11 + v17) = 0;
      (*(v7 + 104))(v11, *MEMORY[0x1E69B8170], v6);
      goto LABEL_7;
    }

    *v11 = a1;
    v12 = MEMORY[0x1E69B8168];
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140) + 48);
    v14 = *MEMORY[0x1E69B8308];
    v15 = sub_1BE04C534();
    (*(*(v15 - 8) + 104))(v11, v14, v15);
    *(v11 + v13) = a1;
    v12 = MEMORY[0x1E69B8170];
  }

  (*(v7 + 104))(v11, *v12, v6, v9);
  v16 = a1;
LABEL_7:
  a3(v11);
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1BD3F6C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3F6CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3F6D28(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v12 = *(v11 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v23 - v15);
  if (a2)
  {
    *v16 = a1;
    v17 = MEMORY[0x1E69B8168];
  }

  else
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) + 48);
    v19 = *MEMORY[0x1E69B8308];
    v20 = sub_1BE04C534();
    (*(*(v20 - 8) + 104))(v16, v19, v20);
    *(v16 + v18) = a1;
    v17 = MEMORY[0x1E69B8170];
  }

  (*(v12 + 104))(v16, *v17, v11, v14);
  v21 = a1;
  a3(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_1BD3F710C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for WebIconImage()
{
  result = qword_1EBD45700;
  if (!qword_1EBD45700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3F71FC()
{
  sub_1BD3F7300();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD238A58(319, &qword_1EBD45710, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD3F7300()
{
  if (!qword_1EBD45140)
  {
    sub_1BE04AA64();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD45140);
    }
  }
}

uint64_t sub_1BD3F7374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v113 = &v97 - v5;
  v6 = type metadata accessor for WebIconImage();
  v108 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6, v7);
  v109 = v8;
  v110 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45728);
  MEMORY[0x1EEE9AC00](v111, v9);
  v112 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v115 = &v97 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45730);
  MEMORY[0x1EEE9AC00](v118, v14);
  v114 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v116 = &v97 - v18;
  v106 = sub_1BE04F3D4();
  v102 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v19);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45738);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v97 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v107 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v117 = &v97 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v97 - v34;
  v36 = sub_1BE04AA64();
  MEMORY[0x1EEE9AC00](v36, v37);
  v103 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v104 = &v97 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v97 - v44;
  v47 = v46;
  sub_1BD0DE19C(a1, v35, &unk_1EBD3CF70);
  v105 = *(v47 + 48);
  if (v105(v35, 1, v36) == 1)
  {
    sub_1BD0DE53C(v35, &unk_1EBD3CF70);
    v48 = (a1 + v6[7]);
    v50 = *v48;
    v49 = v48[1];
    v51 = (a1 + v6[5]);
    v52 = *v51;
    v53 = v51[1];
    v54 = *(a1 + v6[6]);
    sub_1BE048C84();
    v55 = sub_1BE0512A4();
    v56 = sub_1BE051284();
    *v25 = v50;
    v25[1] = v49;
    v25[2] = v52;
    v25[3] = v53;
    v25[4] = v54;
    v25[5] = v55;
    v25[6] = v56;
    swift_storeEnumTagMultiPayload();
    sub_1BD3F82A4();
    sub_1BD3F835C();
    return sub_1BE04F9A4();
  }

  else
  {
    v100 = v25;
    v101 = v22;
    v99 = *(v47 + 32);
    v99(v45, v35, v36);
    v58 = (a1 + v6[5]);
    v59 = *v58;
    v60 = a1 + v6[8];
    v61 = *v60;
    v62 = a1;
    if (*(v60 + 8) == 1)
    {
      v63 = *v60;
      v64 = v58[1];
      v65 = *v60;
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v98 = a1;
      v66 = v45;
      v67 = v47;
      v68 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(*&v61, 0);
      v97 = v47 + 32;
      v102 = *(v102 + 8);
      (v102)(v21, v106);
      v65 = *&v121;
      v64 = v58[1];
      sub_1BE048964();
      sub_1BE052C44();
      v69 = sub_1BE050174();
      sub_1BE04CF84();

      v47 = v67;
      v45 = v66;
      v62 = v98;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(*&v61, 0);
      (v102)(v21, v106);
      v63 = *&v121;
    }

    v70 = v59 * v65;
    v71 = v64 * v63;
    v72 = *(v47 + 16);
    v73 = v117;
    v106 = v45;
    v72(v117, v45, v36);
    (*(v47 + 56))(v73, 0, 1, v36);
    v74 = v62;
    v75 = v110;
    sub_1BD3F83B0(v74, v110);
    v76 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v77 = swift_allocObject();
    sub_1BD3F8414(v75, v77 + v76);
    v78 = [objc_opt_self() sharedURLCache];
    v79 = v107;
    sub_1BD0DE19C(v73, v107, &unk_1EBD3CF70);
    v80 = v105(v79, 1, v36);
    v81 = v118;
    if (v80 == 1)
    {
      sub_1BD0DE53C(v79, &unk_1EBD3CF70);
      v82 = 1;
      v83 = v113;
    }

    else
    {
      v84 = v104;
      v99(v104, v79, v36);
      v72(v103, v84, v36);
      v83 = v113;
      sub_1BE04A114();
      (*(v47 + 8))(v84, v36);
      v82 = 0;
    }

    v85 = v47;
    v86 = v100;
    v87 = sub_1BE04A134();
    (*(*(v87 - 8) + 56))(v83, v82, 1, v87);
    v88 = v111;
    v89 = v112;
    sub_1BD0DE204(v83, &v112[*(v111 + 40)], &qword_1EBD45720);
    *(v89 + 2) = sub_1BD3F8478;
    *(v89 + 3) = v77;
    *&v89[v88[12]] = 0;
    v90 = &v89[v88[13]];
    *v90 = v70;
    *(v90 + 1) = v71;
    *(v90 + 2) = 0x200000;
    v90[24] = 0;
    *&v89[v88[11]] = v78;
    v120 = 0x8000000000000000;
    sub_1BE051694();
    sub_1BD0DE53C(v117, &unk_1EBD3CF70);
    *v89 = v121;
    v91 = v89;
    v92 = v115;
    sub_1BD0DE204(v91, v115, &qword_1EBD45728);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v93 = v114;
    sub_1BD0DE204(v92, v114, &qword_1EBD45728);
    v94 = (v93 + *(v81 + 36));
    v95 = v122;
    *v94 = v121;
    v94[1] = v95;
    v94[2] = v123;
    v96 = v116;
    sub_1BD0DE204(v93, v116, &qword_1EBD45730);
    sub_1BD0DE19C(v96, v86, &qword_1EBD45730);
    swift_storeEnumTagMultiPayload();
    sub_1BD3F82A4();
    sub_1BD3F835C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v96, &qword_1EBD45730);
    return (*(v85 + 8))(v106, v36);
  }
}

double sub_1BD3F7E80@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v13 = type metadata accessor for WebIconImage();
    v14 = (a2 + v13[7]);
    v16 = *v14;
    v15 = v14[1];
    v17 = (a2 + v13[5]);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(a2 + v13[6]);
    sub_1BE048C84();
    v21 = sub_1BE0512A4();
    v22 = sub_1BE051284();
    v33 = 1;
    *v34 = v16;
    *&v34[8] = v15;
    *&v34[16] = v18;
    *&v34[24] = v19;
    *&v34[32] = v20;
    *&v34[40] = v21;
    *&v34[48] = v22;
    v34[56] = 1;
    sub_1BD3F835C();
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04F9A4();
    *v34 = v29;
    *&v34[16] = v30;
    *&v34[32] = v31[0];
    *&v34[41] = *(v31 + 9);
    LOBYTE(v26) = 0;
    v34[57] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45758);
    sub_1BD3F84F8();
    sub_1BE04F9A4();
  }

  else
  {
    (*(v7 + 104))(v11, *MEMORY[0x1E6981630], v6, v9);
    v12 = sub_1BE0515E4();
    (*(v7 + 8))(v11, v6);
    v25[0] = 0;
    *v34 = v12;
    *&v34[8] = v26;
    *&v34[24] = v27;
    *&v34[40] = v28;
    v34[56] = 0;
    sub_1BD3F835C();
    sub_1BE048964();
    sub_1BE04F9A4();
    *v34 = v29;
    *&v34[16] = v30;
    *&v34[32] = v31[0];
    *&v34[41] = *(v31 + 9);
    v33 = 0;
    v34[57] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45758);
    sub_1BD3F84F8();
    sub_1BE04F9A4();
  }

  *&v34[32] = v32[0];
  *&v34[42] = *(v32 + 10);
  v23 = v31[3];
  *a3 = v31[2];
  a3[1] = v23;
  a3[2] = *&v34[32];
  result = *&v34[42];
  *(a3 + 42) = *&v34[42];
  return result;
}

uint64_t sub_1BD3F81DC@<X0>(uint64_t a1@<X8>)
{
  sub_1BD3F7374(v1, a1);
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45718) + 36));
  v4 = *(sub_1BE04EDE4() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  __asm { FMOV            V0.2D, #8.0 }

  *v3 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50);
  *&v3[*(result + 36)] = 256;
  return result;
}

unint64_t sub_1BD3F82A4()
{
  result = qword_1EBD45740;
  if (!qword_1EBD45740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45730);
    sub_1BD0DE4F4(&qword_1EBD45748, &qword_1EBD45728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45740);
  }

  return result;
}

unint64_t sub_1BD3F835C()
{
  result = qword_1EBD45750;
  if (!qword_1EBD45750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45750);
  }

  return result;
}

uint64_t sub_1BD3F83B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebIconImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3F8414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebIconImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD3F8478@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for WebIconImage() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD3F7E80(a1, v6, a2);
}

unint64_t sub_1BD3F84F8()
{
  result = qword_1EBD45760;
  if (!qword_1EBD45760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45758);
    sub_1BD3F835C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45760);
  }

  return result;
}

unint64_t sub_1BD3F8584()
{
  result = qword_1EBD45768;
  if (!qword_1EBD45768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45718);
    sub_1BD3F863C();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45768);
  }

  return result;
}

unint64_t sub_1BD3F863C()
{
  result = qword_1EBD45770;
  if (!qword_1EBD45770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45778);
    sub_1BD3F86C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45770);
  }

  return result;
}

unint64_t sub_1BD3F86C0()
{
  result = qword_1EBD45780;
  if (!qword_1EBD45780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45788);
    sub_1BD3F82A4();
    sub_1BD3F835C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45780);
  }

  return result;
}

uint64_t sub_1BD3F874C(void *a1)
{
  v1 = a1;
  v2 = UINavigationController.pk_settings_useStateDrivenNavigation.getter();

  return v2 & 1;
}

uint64_t UINavigationController.pk_settings_useStateDrivenNavigation.getter()
{
  v1 = v0;
  v2 = sub_1BE052094();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04CEC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = v21 - v15;
  v17 = [v0 traitCollection];
  sub_1BE052DA4();

  v18 = [v1 traitCollection];
  sub_1BE052DB4();

  LOBYTE(v1) = sub_1BE052034();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 104))(v11, *MEMORY[0x1E69C59D0], v7);
  sub_1BD3F9BA0(&qword_1EBD45790, MEMORY[0x1E69C59D8]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v16, v7);
  return (v21[1] == v21[0]) & v1;
}

Swift::Void __swiftcall UINavigationController.pk_settings_pushViewController(_:)(UIViewController *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE052094();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v21 = sub_1BE04CEF4();
    v22 = sub_1BD3F9BA0(&qword_1EBD45798, MEMORY[0x1E69C59E8]);
    __swift_allocate_boxed_opaque_existential_1(v20);
    v14 = a1;
    sub_1BE04CF04();
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v15 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BE052054();
    (*(v9 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_1BE04D1A4();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Attempted to perform a Settings state driven push when unavailable", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_1BD3F8CB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UINavigationController.pk_settings_pushViewController(_:)(v4);
}

Swift::Void __swiftcall UINavigationController.pk_settings_popViewController()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE052094();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v13 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BE052064();
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    sub_1BE04D1A4();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "Attempted to perform a Settings state driven pop when unavailable", v16, 2u);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_1BD3F8F38(void *a1)
{
  v1 = a1;
  UINavigationController.pk_settings_popViewController()();
}

Swift::Void __swiftcall UINavigationController.pk_settings_popToViewController(_:)(UIViewController *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v21 - v8;
  v10 = sub_1BE052094();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v21[1] = v3;
    v23 = sub_1BE04CEF4();
    v24 = sub_1BD3F9BA0(&qword_1EBD45798, MEMORY[0x1E69C59E8]);
    __swift_allocate_boxed_opaque_existential_1(v22);
    v16 = a1;
    sub_1BE04CF04();
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BE052084();
    (*(v11 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    sub_1BE04D1A4();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Attempted to perform a Settings state driven popTo when unavailable", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
  }
}

void sub_1BD3F9378(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UINavigationController.pk_settings_popToViewController(_:)(v4);
}

Swift::Void __swiftcall UINavigationController.pk_settings_popToRootViewController()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v27 - v7;
  v9 = sub_1BE052094();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v27 - v13;
  v15 = sub_1BE053034();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = sub_1BE052024();
  v28 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v27[3] = v2;
    sub_1BE053024();
    sub_1BE052014();
    v22 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BD3F9BA0(&qword_1EBD457A0, MEMORY[0x1E69CA998]);
    sub_1BE052084();
    (*(v29 + 8))(v14, v30);
    (*(v28 + 8))(v21, v17);
  }

  else
  {
    v23 = v3;
    sub_1BE04D1A4();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "Attempted to perform a Settings state driven popToRoot when unavailable", v26, 2u);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v23 + 8))(v8, v2);
  }
}

void sub_1BD3F9900(void *a1)
{
  v1 = a1;
  UINavigationController.pk_settings_popToRootViewController()();
}

Swift::Int __swiftcall UINavigationController.pk_settings_viewControllerCount()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE052094();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v13 = [v1 traitCollection];
    sub_1BE052DB4();

    v14 = sub_1BE052074();
    (*(v8 + 8))(v12, v7);
    return v14;
  }

  else
  {
    sub_1BE04D1A4();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Attempted to get Settings state driven view controller count when unavailable", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

Swift::Int sub_1BD3F9B6C(void *a1)
{
  v1 = a1;
  v2 = UINavigationController.pk_settings_viewControllerCount()();

  return v2;
}

uint64_t sub_1BD3F9BA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD3F9BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BD3F9C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD3F9CA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v34 - v6 + 8;
  v8 = a1[5];
  v35 = v8;
  v9 = a1[1];
  if (v9 && (v10 = sub_1BD961028(*a1, v9), v11))
  {
    v34[0] = v10;
    v34[1] = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    v16 = v15;
    v17 = sub_1BE050354();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    sub_1BE0503B4();
    sub_1BD3FA0F4(v7);
    sub_1BE050374();
    sub_1BE0503F4();

    v18 = sub_1BE0505F4();
    v20 = v19;
    v22 = v21;
    v33 = v23;

    sub_1BD0DDF10(v12, v14, v16 & 1);

    v24 = sub_1BE050564();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_1BD0DDF10(v18, v20, v22 & 1);

    v31 = v28 & 1;
    sub_1BD0D7F18(v24, v26, v31);
    sub_1BE048C84();
    v8 = v35;
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v31 = 0;
    v30 = 0;
  }

  sub_1BD3FA098(&v35, v34);
  sub_1BE048964();
  sub_1BD1969AC(v24, v26, v31, v30);
  sub_1BD1969F0(v24, v26, v31, v30);
  *a2 = v8;
  a2[1] = v24;
  a2[2] = v26;
  a2[3] = v31;
  a2[4] = v30;
  sub_1BD1969F0(v24, v26, v31, v30);
}

double sub_1BD3F9F30@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v3;
  v21[2] = *(v1 + 32);
  v22 = *(v1 + 48);
  v4 = sub_1BE051CD4();
  v6 = v5;
  sub_1BD3F9CA8(v21, v23);
  v7 = *v23;
  v19 = *&v23[24];
  v20 = *&v23[8];
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457A8) + 36));
  v9 = *(sub_1BE04EDE4() + 20);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1BE04F684();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #6.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 40) = v19;
  *(a1 + 24) = v20;
  v17 = *&v23[16];
  *(a1 + 56) = *v23;
  *(a1 + 72) = v17;
  result = *&v23[32];
  *(a1 + 88) = *&v23[32];
  return result;
}

uint64_t sub_1BD3FA0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3FA15C()
{
  result = qword_1EBD457B0;
  if (!qword_1EBD457B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457A8);
    sub_1BD3FA214();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD457B0);
  }

  return result;
}

unint64_t sub_1BD3FA214()
{
  result = qword_1EBD457B8;
  if (!qword_1EBD457B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457C0);
    sub_1BD0DE4F4(&qword_1EBD457C8, &qword_1EBD457D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD457B8);
  }

  return result;
}

id sub_1BD3FA2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *MEMORY[0x1E69B80E0], v9, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v10 + 8))(v14, v9);
    v24 = v17;
    v25 = v19;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v25 = v20;
    v26 = v21 & 1;
    v27 = v22;
    MEMORY[0x1EEE9AC00](v24, v20);
    v23[-4] = a1;
    v23[-3] = a2;
    v23[-2] = a3;
    v23[-1] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457F8);
    sub_1BD0DE4F4(&qword_1EBD457F0, &qword_1EBD457F8);
    return sub_1BE051A54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3FA530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v130 = a4;
  v129 = a3;
  v134 = a1;
  v135 = a2;
  v122 = a5;
  v136 = sub_1BE04FF64();
  v146 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v5);
  v7 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v125 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v127 = v110 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v139 = v110 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v110 - v20;
  v132 = type metadata accessor for AccountNumbersRowView();
  MEMORY[0x1EEE9AC00](v132, v22);
  v24 = v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v110 - v27;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45808);
  v145 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v29);
  v123 = v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v131 = v110 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45810);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v124 = v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v138 = v110 - v39;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45818);
  MEMORY[0x1EEE9AC00](v133, v40);
  v121 = v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v120 = v110 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v117 = v110 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v119 = v110 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v126 = v110 - v53;
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v128 = v110 - v57;
  v58 = *(v9 + 104);
  v143 = *MEMORY[0x1E69B80E0];
  v59 = v8;
  v144 = v9 + 104;
  v142 = v58;
  v58(v21, v56);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v61 = result;
  v62 = sub_1BE04B6F4();
  v64 = v63;

  v65 = *(v9 + 8);
  v147 = v59;
  v140 = v65;
  v141 = v9 + 8;
  v65(v21, v59);
  v148 = 0;
  v66 = v135;
  sub_1BE048C84();
  sub_1BE051694();
  v67 = v150;
  v28[40] = v149;
  *(v28 + 6) = v67;
  v68 = v132;
  v69 = *(v132 + 32);
  *&v28[v69] = swift_getKeyPath();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  *v28 = v62;
  *(v28 + 1) = v64;
  v70 = v134;
  *(v28 + 2) = v134;
  *(v28 + 3) = v66;
  v28[32] = 0;
  sub_1BE04FF44();
  v71 = sub_1BD3FB5FC();
  v72 = v131;
  sub_1BE050D14();
  v73 = *(v146 + 8);
  v118 = v7;
  v146 += 8;
  v114 = v73;
  v73(v7, v136);
  sub_1BD3FB654(v28);
  sub_1BE052434();
  v149 = v68;
  v150 = v71;
  v115 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v137;
  v113 = OpaqueTypeConformance2;
  sub_1BE050DE4();

  v76 = v145 + 8;
  v131 = *(v145 + 8);
  (v131)(v72, v75);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v77 = swift_allocObject();
  v111 = xmmword_1BE0B7020;
  *(v77 + 16) = xmmword_1BE0B7020;
  v142(v139, v143, v147);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v78 = result;
  v145 = v76;
  v79 = sub_1BD3FB6B0();
  v110[1] = "ACCOUNT_NUMBERS_ROUTING_TITLE";
  v80 = v139;
  sub_1BE04B6F4();

  v81 = v80;
  v82 = v147;
  v140(v81, v147);
  v83 = swift_allocObject();
  v83[2] = v70;
  v83[3] = v66;
  v84 = v129;
  v83[4] = v129;
  v85 = v130;
  v83[5] = v130;
  sub_1BE048C84();
  sub_1BE048C84();
  v139 = v79;
  *(v77 + 32) = sub_1BE0530B4();
  v86 = v126;
  sub_1BD0DE204(v138, v126, &qword_1EBD45810);
  *(v86 + *(v133 + 36)) = v77;
  v87 = v128;
  sub_1BD0DE204(v86, v128, &qword_1EBD45818);
  v88 = v127;
  v142(v127, v143, v82);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v89 = result;
  v90 = sub_1BE04B6F4();
  v92 = v91;

  v93 = v147;
  v140(v88, v147);
  v148 = 0;
  sub_1BE048C84();
  sub_1BE051694();
  v94 = v150;
  v24[40] = v149;
  *(v24 + 6) = v94;
  v95 = *(v68 + 32);
  *&v24[v95] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v24 = v90;
  *(v24 + 1) = v92;
  *(v24 + 2) = v84;
  *(v24 + 3) = v85;
  v24[32] = 1;
  v96 = v118;
  sub_1BE04FF44();
  v97 = v123;
  sub_1BE050D14();
  v114(v96, v136);
  sub_1BD3FB654(v24);
  sub_1BE052434();
  v98 = v124;
  v99 = v137;
  sub_1BE050DE4();

  (v131)(v97, v99);
  v100 = swift_allocObject();
  *(v100 + 16) = v111;
  v101 = v125;
  v142(v125, v143, v93);
  result = PKPassKitBundle();
  if (result)
  {
    v102 = result;
    sub_1BE04B6F4();

    v140(v101, v147);
    v103 = swift_allocObject();
    v103[2] = v134;
    v103[3] = v135;
    v103[4] = v84;
    v103[5] = v85;
    sub_1BE048C84();
    sub_1BE048C84();
    *(v100 + 32) = sub_1BE0530B4();
    v104 = v117;
    sub_1BD0DE204(v98, v117, &qword_1EBD45810);
    *(v104 + *(v133 + 36)) = v100;
    v105 = v119;
    sub_1BD0DE204(v104, v119, &qword_1EBD45818);
    v106 = v120;
    sub_1BD0DE19C(v87, v120, &qword_1EBD45818);
    v107 = v121;
    sub_1BD0DE19C(v105, v121, &qword_1EBD45818);
    v108 = v122;
    sub_1BD0DE19C(v106, v122, &qword_1EBD45818);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45828);
    sub_1BD0DE19C(v107, v108 + *(v109 + 48), &qword_1EBD45818);
    sub_1BD0DE53C(v105, &qword_1EBD45818);
    sub_1BD0DE53C(v87, &qword_1EBD45818);
    sub_1BD0DE53C(v107, &qword_1EBD45818);
    return sub_1BD0DE53C(v106, &qword_1EBD45818);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1BD3FB18C()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_1BE052404();
  [v0 setString_];
}

void sub_1BD3FB220()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_1BE052404();
  [v0 setString_];
}

uint64_t sub_1BD3FB2B4()
{
  v1 = sub_1BE04FB94();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-v9];
  v11 = *(v0 + 2);
  v12 = *(v0 + 3);
  v15 = *v0;
  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457E0);
  sub_1BD3FB4E0();
  sub_1BE0504E4();
  sub_1BE04FB84();
  sub_1BD0DE4F4(&qword_1EBD45800, &qword_1EBD457D8);
  sub_1BE051144();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1BD3FB4E0()
{
  result = qword_1EBD457E8;
  if (!qword_1EBD457E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457E0);
    sub_1BD0DE4F4(&qword_1EBD457F0, &qword_1EBD457F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD457E8);
  }

  return result;
}

uint64_t type metadata accessor for AccountNumbersRowView()
{
  result = qword_1EBD45830;
  if (!qword_1EBD45830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD3FB5FC()
{
  result = qword_1EBD45820;
  if (!qword_1EBD45820)
  {
    type metadata accessor for AccountNumbersRowView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45820);
  }

  return result;
}

uint64_t sub_1BD3FB654(uint64_t a1)
{
  v2 = type metadata accessor for AccountNumbersRowView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3FB6B0()
{
  result = qword_1EBD3ECB0;
  if (!qword_1EBD3ECB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3ECB0);
  }

  return result;
}

uint64_t objectdestroyTm_37()
{

  return swift_deallocObject();
}

void sub_1BD3FB77C()
{
  sub_1BD10EE48();
  if (v0 <= 0x3F)
  {
    sub_1BD25EFF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD3FB820()
{
  result = qword_1EBD45840;
  if (!qword_1EBD45840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457D8);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD45800, &qword_1EBD457D8);
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45840);
  }

  return result;
}

uint64_t sub_1BD3FB958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45850);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v20 - v10);
  v12 = sub_1BE04EB24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccountNumbersRowView();
  sub_1BD70A2A0(v16);
  v17 = sub_1BE04EB14();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v21 = sub_1BE04F7C4();
    v22 = 0;
    v23 = 1;
    sub_1BD3FCC4C();
  }

  else
  {
    v21 = sub_1BE04F504();
    v22 = 0;
    v23 = 1;
    sub_1BD3FCB14();
  }

  *v11 = sub_1BE051DB4();
  v18 = *(v8 + 44);
  sub_1BE048964();
  sub_1BD3FBBEC(v2, v11 + v18);
  sub_1BE04FF44();
  sub_1BD3FCB68();
  sub_1BE050D14();

  (*(v4 + 8))(v7, v3);
  return sub_1BD0DE53C(v11, &qword_1EBD45850);
}

uint64_t sub_1BD3FBBEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45890);
  MEMORY[0x1EEE9AC00](v66, v3);
  v64 = &v54 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45898);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v5);
  v63 = &v54 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458A0);
  MEMORY[0x1EEE9AC00](v69, v7);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = &v54 - v11;
  v62 = sub_1BE04EB24();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v12);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BE04FF64();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458A8);
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v17);
  v19 = &v54 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458B0);
  MEMORY[0x1EEE9AC00](v57, v20);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v75 = &v54 - v24;
  v25 = a1;
  v58 = a1;
  v26 = *a1;
  v27 = v25[1];
  v79 = v26;
  v80 = v27;
  v73 = sub_1BD0DDEBC();
  swift_bridgeObjectRetain_n();
  v28 = sub_1BE0506C4();
  v30 = v29;
  v79 = v28;
  v80 = v29;
  v32 = v31 & 1;
  v81 = v31 & 1;
  v82 = v33;
  sub_1BE04FF34();
  v34 = MEMORY[0x1E6981148];
  sub_1BE050D14();
  v35 = *(v76 + 8);
  v76 += 8;
  v56 = v35;
  v35(v16, v74);
  sub_1BD0DDF10(v28, v30, v32);

  v79 = v26;
  v80 = v27;
  v77 = v34;
  v78 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v36 = v72;
  v37 = v55;
  sub_1BE050C34();

  (*(v59 + 8))(v19, v37);
  sub_1BE052434();
  sub_1BE04EBB4();

  sub_1BD0DE53C(v36, &qword_1EBD458B0);
  type metadata accessor for AccountNumbersRowView();
  v38 = v60;
  sub_1BD70A2A0(v60);
  v39 = sub_1BE04EB14();
  LOBYTE(v37) = v39;
  LODWORD(v59) = v39;
  (*(v61 + 8))(v38, v62);
  LODWORD(v62) = (v37 & 1) == 0;
  v40 = v64;
  sub_1BD3FC3FC(v64);
  sub_1BE04FF34();
  v41 = sub_1BD0DE4F4(&qword_1EBD458B8, &qword_1EBD45890);
  v42 = v63;
  v43 = v66;
  sub_1BE050D14();
  v56(v16, v74);
  sub_1BD0DE53C(v40, &qword_1EBD45890);
  v79 = sub_1BD3FC8F0();
  v80 = v44;
  v77 = v43;
  v78 = v41;
  swift_getOpaqueTypeConformance2();
  v45 = v65;
  v46 = v68;
  sub_1BE050C34();

  (*(v70 + 8))(v42, v46);
  sub_1BE052434();
  v47 = v67;
  sub_1BE04EBB4();

  sub_1BD0DE53C(v45, &qword_1EBD458A0);
  v48 = v75;
  v49 = v72;
  sub_1BD0DE19C(v75, v72, &qword_1EBD458B0);
  sub_1BD0DE19C(v47, v45, &qword_1EBD458A0);
  v50 = v71;
  sub_1BD0DE19C(v49, v71, &qword_1EBD458B0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458C0);
  v52 = v50 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = v62;
  *(v52 + 9) = v59 & 1;
  sub_1BD0DE19C(v45, v50 + *(v51 + 64), &qword_1EBD458A0);
  sub_1BD0DE53C(v47, &qword_1EBD458A0);
  sub_1BD0DE53C(v48, &qword_1EBD458B0);
  sub_1BD0DE53C(v45, &qword_1EBD458A0);
  return sub_1BD0DE53C(v49, &qword_1EBD458B0);
}

uint64_t sub_1BD3FC3FC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for AccountNumbersRowView();
  v47 = *(v1 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v49 = &v40 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458D8) - 8;
  MEMORY[0x1EEE9AC00](v42, v7);
  v41 = &v40 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458E0) - 8;
  MEMORY[0x1EEE9AC00](v44, v9);
  v43 = &v40 - v10;
  *&v59[0] = sub_1BD3FC8F0();
  *(&v59[0] + 1) = v11;
  sub_1BD0DDEBC();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  sub_1BE051494();
  v17 = sub_1BE050564();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_1BD0DDF10(v12, v14, v16 & 1);

  sub_1BE051CF4();
  sub_1BE04EE54();
  v60 = v21 & 1;
  *&v50 = v17;
  *(&v50 + 1) = v19;
  LOBYTE(v51) = v21 & 1;
  *(&v51 + 1) = v23;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
  sub_1BD19D16C();
  sub_1BE050DE4();

  v59[6] = v56;
  v59[7] = v57;
  v59[8] = v58;
  v59[2] = v52;
  v59[3] = v53;
  v59[4] = v54;
  v59[5] = v55;
  v59[0] = v50;
  v59[1] = v51;
  sub_1BD0DE53C(v59, &qword_1EBD3E090);
  v24 = objc_opt_self();
  v25 = [v24 defaultCenter];
  v27 = v41;
  v26 = v42;
  sub_1BE052E54();

  v28 = v40;
  v29 = v45;
  sub_1BD3FCCA0(v40, v45);
  v30 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v31 = swift_allocObject();
  sub_1BD3FCD04(v29, v31 + v30);
  sub_1BD0DE204(v49, v27, &qword_1EBD3BC18);
  v32 = (v27 + *(v26 + 64));
  *v32 = sub_1BD3FCD68;
  v32[1] = v31;
  v33 = [v24 defaultCenter];
  v35 = v43;
  v34 = v44;
  sub_1BE052E54();

  sub_1BD3FCCA0(v28, v29);
  v36 = swift_allocObject();
  sub_1BD3FCD04(v29, v36 + v30);
  sub_1BD0DE204(v27, v35, &qword_1EBD458D8);
  v37 = (v35 + *(v34 + 64));
  *v37 = sub_1BD3FCE9C;
  v37[1] = v36;
  v38 = v48;
  sub_1BD0DE204(v35, v48, &qword_1EBD458E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45890);
  *(v38 + *(result + 36)) = 0;
  *(v38 + *(result + 40)) = 1;
  return result;
}

uint64_t sub_1BD3FC8F0()
{
  if (*(v0 + 32) == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350), sub_1BE0516A4(), v9 == 1))
  {
    sub_1BE048C84();
    sub_1BE052594();
    v1 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      do
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1BD1D8D34(0, *(v1 + 2) + 1, 1, v1);
        }

        v4 = *(v1 + 2);
        v3 = *(v1 + 3);
        if (v4 >= v3 >> 1)
        {
          v1 = sub_1BD1D8D34((v3 > 1), v4 + 1, 1, v1);
        }

        *(v1 + 2) = v4 + 1;
        v5 = &v1[16 * v4];
        *(v5 + 4) = 10649826;
        *(v5 + 5) = 0xA300000000000000;
        sub_1BE052594();
      }

      while (v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458C8);
    sub_1BD0DE4F4(&qword_1EBD458D0, &qword_1EBD458C8);
    return sub_1BE052634();
  }

  else
  {
    v7 = *(v0 + 16);
    sub_1BE048C84();
  }

  return v7;
}

unint64_t sub_1BD3FCB14()
{
  result = qword_1EBD45858;
  if (!qword_1EBD45858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45858);
  }

  return result;
}

unint64_t sub_1BD3FCB68()
{
  result = qword_1EBD45860;
  if (!qword_1EBD45860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45850);
    sub_1BD0DE4F4(&qword_1EBD45868, &qword_1EBD45870);
    sub_1BD0DE4F4(&qword_1EBD45878, &qword_1EBD45880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45860);
  }

  return result;
}

unint64_t sub_1BD3FCC4C()
{
  result = qword_1EBD45888;
  if (!qword_1EBD45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45888);
  }

  return result;
}

uint64_t sub_1BD3FCCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNumbersRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3FCD04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNumbersRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_14Tm()
{
  v1 = (type metadata accessor for AccountNumbersRowView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04EB24();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD3FCF3C(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1BE0538E4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1BE053704();
    sub_1BE0538E4();
  }

  return v8;
}

uint64_t sub_1BD3FD0CC(uint64_t a1, unint64_t *a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  sub_1BE0538E4();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1BD038CD0(i, v7);
    sub_1BD0E5E8C(0, a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1BD3FD1E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1BD531E60(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1BD038CD0(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45998);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BD531E60((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1BD3FD334(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1BD03B254(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1BD038CD0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BD03B254((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1BD3FD49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v62 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v58 - v13);
  v63 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v63, v15);
  v64 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v58 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(v19 + 72);
  v58[1] = v7;
  v59 = v26;
  v60 = v14;
  v61 = v10;
  while (1)
  {
    sub_1BD40FE9C(v24, v21, type metadata accessor for UnavailablePass);
    sub_1BD40FE9C(v25, v64, type metadata accessor for UnavailablePass);
    sub_1BD40FE9C(v21, v14, type metadata accessor for WrappedPass);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v28 = *v14;
      result = [v28 uniqueID];
      if (!result)
      {
        goto LABEL_65;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v34 = v14;
    v35 = v62;
    sub_1BD40F820(v34, v62, type metadata accessor for PlaceholderPass);
    v31 = *(v35 + 16);
    v33 = *(v35 + 24);
    sub_1BE048C84();
    sub_1BD40FF04(v35, type metadata accessor for PlaceholderPass);
LABEL_14:
    sub_1BD40FE9C(v64, v10, type metadata accessor for WrappedPass);
    v36 = swift_getEnumCaseMultiPayload();
    if (!v36)
    {
      v37 = *v10;
      result = [v37 uniqueID];
      if (!result)
      {
        goto LABEL_66;
      }

LABEL_19:
      v38 = result;
      v39 = sub_1BE052434();
      v41 = v40;

      if (v31 != v39)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v36 == 1)
    {
      v37 = *v10;
      result = [v37 passIdentifier];
      if (!result)
      {
        goto LABEL_64;
      }

      goto LABEL_19;
    }

    v42 = v10;
    v43 = v62;
    sub_1BD40F820(v42, v62, type metadata accessor for PlaceholderPass);
    v44 = *(v43 + 16);
    v41 = *(v43 + 24);
    sub_1BE048C84();
    sub_1BD40FF04(v43, type metadata accessor for PlaceholderPass);
    if (v31 != v44)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (v33 == v41)
    {

      v10 = v61;
      goto LABEL_25;
    }

LABEL_24:
    v45 = sub_1BE053B84();

    v10 = v61;
    if ((v45 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_25:
    v46 = *(v63 + 28);
    v48 = *&v21[v46];
    v47 = *&v21[v46 + 8];
    v49 = v21[v46 + 16];
    v50 = (v64 + v46);
    v52 = *v50;
    v51 = v50[1];
    v53 = *(v50 + 16);
    if (v49 > 1)
    {
      if (v49 == 2)
      {
        if (v53 != 2 || (sub_1BD0E5E8C(0, &qword_1EBD3E3F0), (sub_1BE053074() & 1) == 0))
        {
LABEL_62:
          sub_1BD40FF04(v64, type metadata accessor for UnavailablePass);
          sub_1BD40FF04(v21, type metadata accessor for UnavailablePass);
          return 0;
        }

LABEL_5:
        sub_1BD40FF04(v64, type metadata accessor for UnavailablePass);
        sub_1BD40FF04(v21, type metadata accessor for UnavailablePass);
        goto LABEL_6;
      }

      if (v48 <= 2)
      {
        if (v48 | v47)
        {
          if (v48 ^ 1 | v47)
          {
            v56 = v52 == 2;
          }

          else
          {
            v56 = v52 == 1;
          }

LABEL_50:
          v54 = v56 && v51 == 0 && v53 == 3;
        }

        else
        {
          v54 = v53 == 3 && (v51 | v52) == 0;
        }

LABEL_56:
        v55 = v54;
        goto LABEL_59;
      }

      if (v48 ^ 3 | v47)
      {
        if (v48 ^ 4 | v47)
        {
          v56 = v52 == 5;
        }

        else
        {
          v56 = v52 == 4;
        }
      }

      else
      {
        v56 = v52 == 3;
      }

      goto LABEL_50;
    }

    if (!v49)
    {
      if (v53)
      {
        goto LABEL_62;
      }

      v54 = v48 == v52;
      goto LABEL_56;
    }

    if (v53 != 1)
    {
      goto LABEL_62;
    }

    if (v48 == v52 && v47 == v51)
    {
      goto LABEL_5;
    }

    v55 = sub_1BE053B84();
LABEL_59:
    sub_1BD40FF04(v64, type metadata accessor for UnavailablePass);
    sub_1BD40FF04(v21, type metadata accessor for UnavailablePass);
    if ((v55 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v14 = v60;
    v25 += v59;
    v24 += v59;
    if (!--v22)
    {
      return 1;
    }
  }

  v28 = *v14;
  result = [v28 passIdentifier];
  if (result)
  {
LABEL_12:
    v30 = result;
    v31 = sub_1BE052434();
    v33 = v32;

    goto LABEL_14;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1BD3FDAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = sub_1BE052434();
      v7 = v6;
      if (v5 == sub_1BE052434() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_1BE053B84();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1BD3FDC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v27 - v18;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (!v20 || a1 == a2)
    {
      v25 = 1;
    }

    else
    {
      v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v24 = *(v17 + 72);
      do
      {
        sub_1BD40FE9C(v22, v19, a4);
        sub_1BD40FE9C(v23, v15, a4);
        v25 = a5(v19, v15);
        sub_1BD40FF04(v15, a6);
        sub_1BD40FF04(v19, a6);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v23 += v24;
        v22 += v24;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1BD3FDE08(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for TileContextDetailsTableViewEntry(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB40900](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1BFB40900](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1BE053074();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1BE053074();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1BE053704();
  }

  result = sub_1BE053704();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1BD3FE0F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    for (i = v2 - 1; ; --i)
    {
      v6 = *(v3 + 32);
      v7 = *(v3 + 64);
      *&v20[16] = *(v3 + 48);
      *v21 = v7;
      *&v21[16] = *(v3 + 80);
      v8 = *(v3 + 16);
      *v19 = *v3;
      *&v19[16] = v8;
      *v20 = v6;
      v9 = *(v4 + 48);
      *v23 = *(v4 + 32);
      *&v23[16] = v9;
      *v24 = *(v4 + 64);
      *&v24[16] = *(v4 + 80);
      v10 = *(v4 + 16);
      *v22 = *v4;
      *&v22[16] = v10;
      sub_1BD40F770(v19, v18);
      sub_1BD40F770(v22, v18);
      if ((sub_1BE053074() & 1) == 0)
      {
        break;
      }

      v11 = *&v19[24];
      v12 = v20[0];
      v13 = *&v22[24];
      v14 = v23[0];
      if (*&v19[8] != *&v22[8] && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      if (v12)
      {
        if (!v14)
        {
          break;
        }
      }

      else
      {
        if (v11 == v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          break;
        }
      }

      if (*&v20[8] != *&v23[8] && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      if (*v21)
      {
        if (!*v24 || (*&v20[24] != *&v23[24] || *v21 != *v24) && (sub_1BE053B84() & 1) == 0)
        {
          break;
        }
      }

      else if (*v24)
      {
        break;
      }

      if (*&v21[8] == *&v24[8])
      {
        sub_1BD40F7CC(v22);
        sub_1BD40F7CC(v19);
      }

      else
      {
        v16 = sub_1BE053B84();
        sub_1BD40F7CC(v22);
        sub_1BD40F7CC(v19);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      if (!i)
      {
        return 1;
      }

      v4 += 88;
      v3 += 88;
    }

    sub_1BD40F7CC(v22);
    sub_1BD40F7CC(v19);
  }

  return 0;
}

uint64_t sub_1BD3FE328(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1BD0E5E8C(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB40900](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1BFB40900](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1BE053074();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1BE053074();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_1BE053704();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_1BE053704();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1BD3FE5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
      sub_1BE048C84();
      v8 = v5;
      sub_1BE048C84();
      v9 = v6;
      v10 = sub_1BE053074();

      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1BD3FE6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v45 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E80);
  MEMORY[0x1EEE9AC00](v50, v12);
  v14 = &v45 - v13;
  v49 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  MEMORY[0x1EEE9AC00](v49, v15);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = (&v45 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_27:
    v43 = 0;
    return v43 & 1;
  }

  if (v23 && a1 != a2)
  {
    v45 = v11;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = a2 + v24;
    v27 = (v5 + 48);
    v47 = *(v20 + 72);
    v48 = v4;
    v28 = v49;
    while (1)
    {
      sub_1BD40FE9C(v25, v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      v52 = v25;
      sub_1BD40FE9C(v26, v17, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      v29 = *v22 == *v17 && v22[1] == v17[1];
      if (!v29 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      v30 = v22[2] == v17[2] && v22[3] == v17[3];
      if (!v30 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      v51 = v23;
      v31 = *(v28 + 24);
      v32 = *(v50 + 48);
      sub_1BD0DE19C(v22 + v31, v14, &qword_1EBD44D48);
      sub_1BD0DE19C(v17 + v31, &v14[v32], &qword_1EBD44D48);
      v33 = *v27;
      v34 = v14;
      v35 = v14;
      v36 = v48;
      if ((*v27)(v34, 1, v48) == 1)
      {
        if (v33((v35 + v32), 1, v36) != 1)
        {
          goto LABEL_25;
        }

        sub_1BD0DE53C(v35, &qword_1EBD44D48);
        v14 = v35;
        v37 = v51;
      }

      else
      {
        v38 = v45;
        sub_1BD0DE19C(v35, v45, &qword_1EBD44D48);
        if (v33((v35 + v32), 1, v36) == 1)
        {
          sub_1BD40FF04(v38, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
LABEL_25:
          sub_1BD0DE53C(v35, &qword_1EBD44E80);
          break;
        }

        v39 = v27;
        v40 = v46;
        sub_1BD40F820(v35 + v32, v46, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        v41 = sub_1BD3D8E1C(v38, v40);
        v42 = v40;
        v27 = v39;
        sub_1BD40FF04(v42, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        sub_1BD40FF04(v38, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        sub_1BD0DE53C(v35, &qword_1EBD44D48);
        v28 = v49;
        v14 = v35;
        v37 = v51;
        if ((v41 & 1) == 0)
        {
          break;
        }
      }

      v43 = sub_1BD3CED6C(v22 + *(v28 + 28), v17 + *(v28 + 28));
      sub_1BD40FF04(v17, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      sub_1BD40FF04(v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      if (v43)
      {
        v26 += v47;
        v25 = v52 + v47;
        v23 = v37 - 1;
        if (v23)
        {
          continue;
        }
      }

      return v43 & 1;
    }

    sub_1BD40FF04(v17, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
    sub_1BD40FF04(v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
    goto LABEL_27;
  }

  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1BD3FEC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v21 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_1BD40FE9C(v15, v12, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      sub_1BD40FE9C(v16, v7, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      v18 = *v12 == *v7 && v12[1] == v7[1];
      if (!v18 && (sub_1BE053B84() & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
      {
        break;
      }

      v19 = sub_1BE04AED4();
      sub_1BD40FF04(v7, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      sub_1BD40FF04(v12, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      if (v19)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_1BD40FF04(v7, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
    sub_1BD40FF04(v12, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
    goto LABEL_16;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1BD3FEE38(uint64_t a1, uint64_t a2)
{
  v51 = sub_1BE0493F4();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v49 = &v38 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98);
  MEMORY[0x1EEE9AC00](v48, v10);
  v47 = &v38 - v11;
  v46 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  MEMORY[0x1EEE9AC00](v46, v12);
  v50 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v38 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v19 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v39 = (v4 + 32);
  v40 = (v4 + 8);
  v44 = *(v16 + 72);
  v45 = (v4 + 48);
  v23 = &qword_1EBD3BCA0;
  v24 = v49;
  while (1)
  {
    sub_1BD40FE9C(v21, v18, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    v25 = v50;
    sub_1BD40FE9C(v22, v50, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    v26 = v47;
    v27 = *(v48 + 48);
    sub_1BD0DE19C(v18, v47, v23);
    sub_1BD0DE19C(v25, v26 + v27, v23);
    v28 = v23;
    v29 = *v45;
    if ((*v45)(v26, 1, v51) != 1)
    {
      break;
    }

    if (v29(v26 + v27, 1, v51) != 1)
    {
      goto LABEL_15;
    }

    sub_1BD0DE53C(v26, v23);
LABEL_10:
    v35 = v50;
    v36 = MEMORY[0x1BFB374A0](&v18[*(v46 + 20)], v50 + *(v46 + 20));
    sub_1BD40FF04(v35, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    sub_1BD40FF04(v18, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    if (v36)
    {
      v22 += v44;
      v21 += v44;
      if (--v19)
      {
        continue;
      }
    }

    return v36 & 1;
  }

  v43 = v19;
  sub_1BD0DE19C(v26, v24, v23);
  if (v29(v26 + v27, 1, v51) != 1)
  {
    v30 = v41;
    v31 = v51;
    (*v39)(v41, v26 + v27, v51);
    sub_1BD40F6B8(&qword_1EBD44EA8, MEMORY[0x1E6967790]);
    v42 = sub_1BE052334();
    v32 = *v40;
    v33 = v30;
    v34 = v49;
    (*v40)(v33, v31);
    v24 = v34;
    v32(v34, v31);
    sub_1BD0DE53C(v26, v28);
    v23 = v28;
    v19 = v43;
    if ((v42 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  (*v40)(v24, v51);
LABEL_15:
  sub_1BD0DE53C(v26, &qword_1EBD44E98);
LABEL_16:
  sub_1BD40FF04(v50, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
  sub_1BD40FF04(v18, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
LABEL_17:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1BD3FF37C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = PKPeerPaymentRecurringPaymentFrequencyToString();
      v6 = sub_1BE052434();
      v8 = v7;

      v9 = PKPeerPaymentRecurringPaymentFrequencyToString();
      v10 = sub_1BE052434();
      v12 = v11;

      if (v6 == v10 && v8 == v12)
      {
      }

      else
      {
        v14 = sub_1BE053B84();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1BD3FF494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v23 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v24 = *(v10 + 72);
  while (1)
  {
    result = sub_1BD40FE9C(v15, v12, type metadata accessor for SEStorageUsageGroup);
    if (!v13)
    {
      break;
    }

    sub_1BD40FE9C(v16, v7, type metadata accessor for SEStorageUsageGroup);
    if ((sub_1BD3FF77C(*v12, *v7) & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_1BE04C164();
    sub_1BD40F6B8(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    if (v27 == v25 && v28 == v26)
    {
    }

    else
    {
      v18 = sub_1BE053B84();

      if ((v18 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (*(v12 + *(v4 + 24)) != *(v7 + *(v4 + 24)))
    {
LABEL_19:
      sub_1BD40FF04(v7, type metadata accessor for SEStorageUsageGroup);
      sub_1BD40FF04(v12, type metadata accessor for SEStorageUsageGroup);
      return 0;
    }

    v19 = *(v4 + 28);
    v20 = *(v12 + v19);
    v21 = *(v7 + v19);
    sub_1BD40FF04(v7, type metadata accessor for SEStorageUsageGroup);
    sub_1BD40FF04(v12, type metadata accessor for SEStorageUsageGroup);
    result = v20 == v21;
    v22 = v20 != v21 || v13-- == 1;
    v16 += v24;
    v15 += v24;
    if (v22)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3FF77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v58 = &v48 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v60, v11);
  v59 = &v48 - v12;
  v61 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v13 = *(v61 - 1);
  MEMORY[0x1EEE9AC00](v61, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_30:
    v47 = 0;
    return v47 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v56 = a1 + v22;
  v54 = a2 + v22;
  v23 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  v24 = 0;
  v52 = (v5 + 48);
  v53 = v23;
  v48 = (v5 + 32);
  v49 = (v5 + 8);
  v55 = *(v13 + 72);
  v25 = &unk_1BE0B9F80;
  v51 = v16;
  while (1)
  {
    v26 = v55 * v24;
    result = sub_1BD40FE9C(v56 + v55 * v24, v20, type metadata accessor for SEStorageUsageGroup.PassEntry);
    if (v24 == v21)
    {
      break;
    }

    sub_1BD40FE9C(v54 + v26, v16, type metadata accessor for SEStorageUsageGroup.PassEntry);
    result = sub_1BE053074();
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }

    v28 = *(v20 + 1);
    v29 = *(v16 + 1);
    v30 = *(v28 + 16);
    if (v30 != *(v29 + 16))
    {
      goto LABEL_29;
    }

    if (v30)
    {
      v31 = v28 == v29;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      v44 = (v28 + 40);
      v45 = (v29 + 40);
      while (v30)
      {
        result = *(v44 - 1);
        if (result != *(v45 - 1) || *v44 != *v45)
        {
          result = sub_1BE053B84();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v44 += 2;
        v45 += 2;
        if (!--v30)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:
    v32 = v61[6];
    v33 = *(v60 + 48);
    v34 = v59;
    sub_1BD0DE19C(&v20[v32], v59, &unk_1EBD39970);
    sub_1BD0DE19C(&v16[v32], v34 + v33, &unk_1EBD39970);
    v35 = *v52;
    v36 = v25;
    if ((*v52)(v34, 1, v4) == 1)
    {
      if (v35(v34 + v33, 1, v4) != 1)
      {
        goto LABEL_35;
      }

      sub_1BD0DE53C(v34, &unk_1EBD39970);
      v16 = v51;
    }

    else
    {
      v37 = v34;
      v38 = v34;
      v39 = v58;
      sub_1BD0DE19C(v37, v58, &unk_1EBD39970);
      if (v35(v38 + v33, 1, v4) == 1)
      {
        (*v49)(v39, v4);
        v34 = v38;
LABEL_35:
        sub_1BD0DE53C(v34, &qword_1EBD3A750);
        v16 = v51;
LABEL_29:
        sub_1BD40FF04(v16, type metadata accessor for SEStorageUsageGroup.PassEntry);
        sub_1BD40FF04(v20, type metadata accessor for SEStorageUsageGroup.PassEntry);
        goto LABEL_30;
      }

      v40 = v39;
      v41 = v57;
      (*v48)(v57, v38 + v33, v4);
      sub_1BD40F6B8(&qword_1EBD3E460, MEMORY[0x1E6969530]);
      v50 = sub_1BE052334();
      v42 = *v49;
      (*v49)(v41, v4);
      v42(v40, v4);
      sub_1BD0DE53C(v38, &unk_1EBD39970);
      v25 = v36;
      v16 = v51;
      if ((v50 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (*&v20[v61[7]] != *&v16[v61[7]])
    {
      goto LABEL_29;
    }

    v43 = v20[v61[8]] ^ v16[v61[8]];
    sub_1BD40FF04(v16, type metadata accessor for SEStorageUsageGroup.PassEntry);
    sub_1BD40FF04(v20, type metadata accessor for SEStorageUsageGroup.PassEntry);
    if ((v43 & 1) == 0 && ++v24 != v21)
    {
      continue;
    }

    v47 = v43 ^ 1;
    return v47 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3FFD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BD3FFE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 112);
        v16[6] = *(v3 + 96);
        v16[7] = v5;
        v17 = *(v3 + 128);
        v6 = *(v3 + 48);
        v16[2] = *(v3 + 32);
        v16[3] = v6;
        v7 = *(v3 + 80);
        v16[4] = *(v3 + 64);
        v16[5] = v7;
        v8 = *(v3 + 16);
        v16[0] = *v3;
        v16[1] = v8;
        v9 = *(v4 + 112);
        v18[6] = *(v4 + 96);
        v18[7] = v9;
        v19 = *(v4 + 128);
        v10 = *(v4 + 48);
        v18[2] = *(v4 + 32);
        v18[3] = v10;
        v11 = *(v4 + 80);
        v18[4] = *(v4 + 64);
        v18[5] = v11;
        v12 = *(v4 + 16);
        v18[0] = *v4;
        v18[1] = v12;
        sub_1BD31435C(v16, v15);
        sub_1BD31435C(v18, v15);
        v13 = sub_1BD314DA4(v16, v18);
        sub_1BD3143B8(v18);
        sub_1BD3143B8(v16);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v3 += 136;
        v4 += 136;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1BD3FFF58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    v5 = &selRef_hoursOfDay;
    while (v2)
    {
      v30 = v3;
      v31 = v2;
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(v4 - 1);
      v8 = *v4;
      v29 = v4;
      v33 = *v4;
      v10 = v5[20];
      v11 = v7;
      v12 = v9;
      v32 = v6;
      v13 = [v11 v10];
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = v13;
      v15 = sub_1BE052434();
      v17 = v16;

      v18 = v5;
      v19 = v12;
      v20 = [v12 v5[20]];
      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20;
      v22 = sub_1BE052434();
      v24 = v23;

      if (v15 == v22 && v17 == v24)
      {

        v5 = v18;
      }

      else
      {
        v25 = sub_1BE053B84();

        v5 = v18;
        if ((v25 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v6)
      {
        if (!v8)
        {
LABEL_20:

          return;
        }

        sub_1BD0E5E8C(0, &qword_1EBD43B00);
        v26 = v32;
        v27 = v33;
        v28 = sub_1BE053074();

        if ((v28 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v8)
        {
          goto LABEL_20;
        }
      }

      v3 = v30 + 2;
      v4 = v29 + 2;
      v2 = v31 - 1;
      if (v31 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1BD4001A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    sub_1BE04AF64();
    v17 = *(v5 + 72);
    while (1)
    {
      sub_1BD40FE9C(v15, v12, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      sub_1BD40FE9C(v16, v8, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      sub_1BD40F6B8(&qword_1EBD3E460, MEMORY[0x1E6969530]);
      if ((sub_1BE052334() & 1) == 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      if ((sub_1BE052334() & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
      {
        break;
      }

      v18 = sub_1BD40B494(*&v12[*(v4 + 24)], *&v8[*(v4 + 24)]);
      sub_1BD40FF04(v8, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      sub_1BD40FF04(v12, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      if (v18)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1BD40FF04(v8, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
    sub_1BD40FF04(v12, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
    goto LABEL_13;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1BD40043C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v43 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978);
  MEMORY[0x1EEE9AC00](v48, v13);
  v15 = &v43 - v14;
  v49 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
  MEMORY[0x1EEE9AC00](v49, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v53 = &v43 - v22;
  v44 = v18;
  v45 = v12;
  v43 = v8;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v46 = *(v21 + 72);
  v47 = (v5 + 48);
  v27 = &unk_1BE0D39B0;
  while (1)
  {
    v28 = v27;
    v29 = v53;
    result = sub_1BD40FE9C(v25, v53, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
    if (!v23)
    {
      break;
    }

    v50 = v23;
    v51 = v26;
    v52 = v25;
    sub_1BD40FE9C(v26, v18, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
    sub_1BE049B04();
    sub_1BD40F6B8(&qword_1EBD45980, MEMORY[0x1E6967AD0]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v31 = v49;
    if (v55 != v54)
    {
      goto LABEL_19;
    }

    sub_1BD842AA4(*(v29 + *(v49 + 20)), *&v18[*(v49 + 20)]);
    if ((v32 & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
    {
      goto LABEL_19;
    }

    v33 = *(v31 + 28);
    v34 = *(v48 + 48);
    v35 = v29 + v33;
    v27 = v28;
    sub_1BD0DE19C(v35, v15, &qword_1EBD44F98);
    sub_1BD0DE19C(&v18[v33], &v15[v34], &qword_1EBD44F98);
    v36 = *v47;
    if ((*v47)(v15, 1, v4) == 1)
    {
      if (v36(&v15[v34], 1, v4) != 1)
      {
        goto LABEL_18;
      }

      sub_1BD0DE53C(v15, &qword_1EBD44F98);
      sub_1BD40FF04(v18, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
      sub_1BD40FF04(v53, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
    }

    else
    {
      v37 = v45;
      sub_1BD0DE19C(v15, v45, &qword_1EBD44F98);
      if (v36(&v15[v34], 1, v4) == 1)
      {
        sub_1BD40FF04(v37, type metadata accessor for FinanceKitSpendingTrend);
        v18 = v44;
LABEL_18:
        sub_1BD0DE53C(v15, &qword_1EBD45978);
        v29 = v53;
LABEL_19:
        sub_1BD40FF04(v18, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
        sub_1BD40FF04(v29, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
        return 0;
      }

      v38 = &v15[v34];
      v39 = v4;
      v40 = v43;
      sub_1BD40F820(v38, v43, type metadata accessor for FinanceKitSpendingTrend);
      v41 = sub_1BD362DBC(v37, v40);
      v42 = v40;
      v4 = v39;
      sub_1BD40FF04(v42, type metadata accessor for FinanceKitSpendingTrend);
      sub_1BD40FF04(v37, type metadata accessor for FinanceKitSpendingTrend);
      sub_1BD0DE53C(v15, &qword_1EBD44F98);
      v18 = v44;
      sub_1BD40FF04(v44, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
      sub_1BD40FF04(v53, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }

    v26 = v51 + v46;
    v25 = v52 + v46;
    v23 = v50 - 1;
    if (v50 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD400A30(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = result + 32;
  v4 = a2 + 32;
  while (v2)
  {
    v10 = v2;
    v11 = v3;
    v9 = v4;
    v6 = sub_1BE052434();
    v12 = v7;
    if (v6 == sub_1BE052434() && v12 == v8)
    {
    }

    else
    {
      v5 = sub_1BE053B84();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v3 = v11 + 1;
    v4 = v9 + 1;
    v2 = v10 - 1;
    if (v10 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD400D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    v27 = 0;
    return v27 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v23 = (v21 - 8);
  v31 = *(v21 + 56);
  v32 = v22;
  while (1)
  {
    v24 = v32;
    result = (v32)(v16, v19, v8);
    if (!v17)
    {
      break;
    }

    v26 = v21;
    v24(v13, v20, v8);
    sub_1BD40F6B8(v33, v34);
    v27 = sub_1BE052334();
    v28 = *v23;
    (*v23)(v13, v8);
    v28(v16, v8);
    if (v27)
    {
      v20 += v31;
      v19 += v31;
      v29 = v17-- == 1;
      v21 = v26;
      if (!v29)
      {
        continue;
      }
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

void *sub_1BD400FE4()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t WalletSettingsModel.passes.getter()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

void *sub_1BD401144()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1BD4011EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1BD4012A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD4012D4(v1);
}

void sub_1BD4012D4(void *a1)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD456C0);
  v4 = v3;
  v5 = a1;
  v6 = sub_1BE053074();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 24);
LABEL_8:
  *(v1 + 24) = a1;
  v10 = v5;

  WalletSettingsModel.updateDefaultPassToSelection()();
}

uint64_t sub_1BD401484@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v11 = v1;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v3 = v1[5];
  v4 = v1[6];
  v5 = v11[7];
  v6 = v11[8];
  v7 = v11[9];
  v8 = v11[10];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  v9 = v3;
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BE048964();
}

void *sub_1BD401558()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD401600()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD4016B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_1BE048C84();
}

uint64_t WalletSettingsModel.passes.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1BE048C84();
  v4 = sub_1BD3FE328(v3, a1, &qword_1EBD456C0);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();
  }
}

void (*WalletSettingsModel.passes.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  return sub_1BD401A5C;
}

void sub_1BD401A5C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1BE04B5A4();

  free(v1);
}

Swift::Void __swiftcall WalletSettingsModel.updateDefaultPassToSelection()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26 = v0;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v7 = *(v0 + 24);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 uniqueID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1BE052434();
      v13 = v12;
      sub_1BE04D1E4();
      sub_1BE048C84();
      v14 = sub_1BE04D204();
      v15 = sub_1BE052C54();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v24 = v11;
        v17 = v16;
        v18 = swift_slowAlloc();
        v25 = v3;
        v26 = v18;
        v19 = v18;
        *v17 = 136315138;
        v20 = sub_1BD123690(v24, v13, &v26);
        v24 = v2;
        v21 = v8;
        v22 = v20;

        *(v17 + 4) = v22;
        v8 = v21;
        _os_log_impl(&dword_1BD026000, v14, v15, "Updating default pass to pass with unique id: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1BFB45F20](v19, -1, -1);
        MEMORY[0x1BFB45F20](v17, -1, -1);

        (*(v25 + 8))(v6, v24);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      [*(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_paymentService) setDefaultPaymentPassUniqueIdentifier_];
    }

    else
    {
      v10 = v8;
    }
  }
}

uint64_t sub_1BD401D9C()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD401E54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  *a2 = *(v3 + 32);
  return sub_1BE048C84();
}

uint64_t sub_1BD401F40(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1BD3FFD98(*(v1 + 32), a1))
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD402078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  sub_1BE048C84();
}

uint64_t sub_1BD4020E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v3[9];
  v9 = v3[10];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  v10 = v4;
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BE048964();
}

uint64_t sub_1BD4021B4()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B584();
}

void sub_1BD402290(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  v8 = *(a2 + 32);
  v4 = v8;
  v9 = v3;
  v5 = *(a1 + 40);
  *(a1 + 40) = *a2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  v6 = v2;
  sub_1BE048964();
  sub_1BD0DE19C(&v9, v7, &qword_1EBD45928);
  sub_1BD0DE19C(&v8, v7, &qword_1EBD45930);
}

uint64_t sub_1BD402354()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  return sub_1BE048964();
}

uint64_t sub_1BD4023F8(uint64_t a1)
{
  if (*(v1 + 88) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();
  }
}

void sub_1BD40252C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E6C8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

uint64_t sub_1BD4026BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD402730()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD4027DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors);
  return sub_1BE048C84();
}

uint64_t sub_1BD402890(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors;
  if (!*(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1BE048C84();
  v5 = sub_1BD3FE328(v4, a1, &qword_1EBD420C0);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

void *sub_1BD402A10()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  v2 = v1;
  return v1;
}

void sub_1BD402AC0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD459C8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD402C58(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  *(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext) = a2;
  v3 = a2;
}

id sub_1BD402CA8()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);

  return v1;
}

id sub_1BD402D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  *a2 = v4;

  return v4;
}

void sub_1BD402E20(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  sub_1BD0E5E8C(0, &qword_1EBD459A8);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD402FA8()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD403060@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
  return sub_1BE048C84();
}

uint64_t sub_1BD40312C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1BE048C84();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD40327C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
  sub_1BE048C84();
}

uint64_t WalletSettingsModel.__allocating_init()()
{
  v0 = swift_allocObject();
  WalletSettingsModel.init()();
  return v0;
}

uint64_t *WalletSettingsModel.init()()
{
  KeyPath = v0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v2);
  v74 = &v68 - v3;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v4;
  type metadata accessor for HardwareConfigurationModel();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  sub_1BE04B5C4();
  *(KeyPath + 88) = v5;
  *(KeyPath + 96) = 0;
  *(KeyPath + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors) = 0;
  *(KeyPath + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext) = 0;
  v6 = (KeyPath + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath);
  *v6 = 0xD000000000000018;
  v6[1] = 0x80000001BE128370;
  v7 = (KeyPath + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath);
  *v7 = 0xD000000000000014;
  v7[1] = 0x80000001BE128390;
  v8 = &OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
  v9 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_paymentService;
  *(KeyPath + v9) = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  *(KeyPath + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__publishers) = MEMORY[0x1E69E7CD0];
  v10 = &OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
  sub_1BE04B5C4();
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result passesOfType_];

  sub_1BD0E5E8C(0, &qword_1EBD40650);
  v14 = sub_1BE052744();

  v15 = sub_1BD3FCF3C(v14);

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v4;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  *(KeyPath + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults) = v17;
  *(KeyPath + 16) = v16;
  v18 = objc_opt_self();
  v19 = v17;
  sub_1BE048C84();
  result = [v18 defaultInstance];
  if (!result)
  {
    goto LABEL_62;
  }

  v20 = result;
  sub_1BD40DD40(v19, result, v16, v84);

  v21 = v84[1];
  *(KeyPath + 40) = v84[0];
  *(KeyPath + 56) = v21;
  *(KeyPath + 72) = v84[2];
  v22 = [objc_opt_self() sharedService];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 context];
    if (v24 && (v25 = v24, v26 = [v24 configuration], v25, v26) && (v27 = objc_msgSend(v26, sel_contactFormatConfiguration), v26, v27))
    {
      v28 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];

      *(KeyPath + 96) = v28;
    }

    else
    {
    }
  }

  v73 = v19;
  v29 = PKOrderManagementDisabled() ^ 1;
  v30 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__orderTrackingEnabled;
  swift_beginAccess();
  LOBYTE(v82) = v29;
  v72 = v30;
  sub_1BE04D874();
  swift_endAccess();
  v77 = v16 >> 62;
  if (v16 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v32 = type metadata accessor for TransactionsModel();
    v33 = MEMORY[0x1BFB3F2F0](i, MEMORY[0x1E69E6158], v32, MEMORY[0x1E69E6168]);
    v80 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID;
    *(KeyPath + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID) = v33;
    v34 = [*(KeyPath + v8[286]) defaultPaymentPassUniqueIdentifier];
    v81 = KeyPath;
    if (!v34)
    {
      break;
    }

    v35 = v34;
    v78 = sub_1BE052434();
    v37 = v36;

    swift_getKeyPath();
    v83 = KeyPath;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    swift_beginAccess();
    v38 = *(KeyPath + 16);
    v69 = v16;
    if (v38 >> 62)
    {
      v39 = sub_1BE053704();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (!v39)
    {
LABEL_32:

      v8 = 0;
LABEL_35:
      KeyPath = v81;
      sub_1BD4012D4(v8);
      v16 = v69;
      v10 = &OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
      break;
    }

    v40 = 0;
    v79 = v38 & 0xC000000000000001;
    v10 = (v38 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v79)
      {
        v41 = MEMORY[0x1BFB40900](v40, v38);
      }

      else
      {
        if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v41 = *(v38 + 8 * v40 + 32);
      }

      v8 = v41;
      v16 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v42 = [v41 uniqueID];
      if (v42)
      {
        v43 = v37;
        v44 = v42;
        v45 = sub_1BE052434();
        v47 = v46;

        v37 = v43;
        if (v45 == v78 && v47 == v43)
        {

          goto LABEL_34;
        }

        KeyPath = sub_1BE053B84();

        if (KeyPath)
        {

LABEL_34:

          goto LABEL_35;
        }
      }

      ++v40;
      if (v16 == v39)
      {
        goto LABEL_32;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  v49 = *MEMORY[0x1E69BBBD8];
  v50 = *MEMORY[0x1E69BC0C8];
  v51 = objc_opt_self();
  v52 = v49;
  v53 = v50;
  v54 = [v51 defaultCenter];
  [v54 addObserver:KeyPath selector:sel_passLibraryDidChangeWithNotification_ name:v52 object:0];

  v55 = [v51 defaultCenter];
  [v55 addObserver:KeyPath selector:sel_paymentOptionsDidChange name:v53 object:0];

  v71 = v52;
  v70 = v53;
  if (v77)
  {
    v8 = sub_1BE053704();
  }

  else
  {
    v8 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v10[285];
  swift_beginAccess();
  if (v8)
  {
    v56 = 0;
    v77 = v16 & 0xFFFFFFFFFFFFFF8;
    v78 = v16 & 0xC000000000000001;
    v10 = v81;
    do
    {
      if (v78)
      {
        v57 = MEMORY[0x1BFB40900](v56, v16);
      }

      else
      {
        if (v56 >= *(v77 + 16))
        {
          goto LABEL_55;
        }

        v57 = *(v16 + 8 * v56 + 32);
      }

      v58 = v57;
      v59 = (v56 + 1);
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      result = [v57 uniqueID];
      if (!result)
      {
        __break(1u);
        goto LABEL_61;
      }

      v60 = result;
      v61 = sub_1BE052434();
      v63 = v62;

      KeyPath = swift_getKeyPath();
      v82 = v10;
      sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
      sub_1BE04B594();

      if (*(*(v10 + v80) + 16))
      {
        sub_1BE048C84();
        sub_1BD148F70(v61, v63);
        KeyPath = v64;

        if (KeyPath)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

LABEL_43:
      ++v56;
    }

    while (v59 != v8);
  }

  v65 = v81;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v66 = v74;
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
  v67 = v76;
  sub_1BE04D954();
  (*(v75 + 8))(v66, v67);
  swift_getKeyPath();
  v82 = v65;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v82 = v65;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  v82 = v65;
  swift_getKeyPath();
  sub_1BE04B5A4();

  return v65;
}