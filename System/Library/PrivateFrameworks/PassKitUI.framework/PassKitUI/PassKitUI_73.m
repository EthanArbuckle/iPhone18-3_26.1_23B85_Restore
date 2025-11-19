id sub_1BD7E7E80(id result)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI39AccountAutomaticPaymentsEnterAmountView11Coordinator_model);
  result = [result currentAmount];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_1BE0533F4();
  v6 = v5;
  v8 = v7;

  v9 = v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  if (MEMORY[0x1BFB40440](*(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount), *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 8), *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 16), v4, v6, v8))
  {
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8;
    return sub_1BDA21BE0();
  }

  else
  {
    v11[3] = WORD1(v8);
    KeyPath = swift_getKeyPath();
    v13 = v11;
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v14 = v2;
    sub_1BD7E920C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

id sub_1BD7E80EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountAutomaticPaymentsEnterAmountView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD7E8154()
{
  result = qword_1EBD54230;
  if (!qword_1EBD54230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54168);
    sub_1BE04FB94();
    sub_1BD7E3DC4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD7E82BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54230);
  }

  return result;
}

unint64_t sub_1BD7E82BC()
{
  result = qword_1EBD54238;
  if (!qword_1EBD54238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54238);
  }

  return result;
}

id sub_1BD7E833C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AccountAutomaticPaymentsEnterAmountView.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV9PassKitUI39AccountAutomaticPaymentsEnterAmountView11Coordinator_model] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD7E83AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD7E87A0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD7E8410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD7E87A0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD7E8474()
{
  sub_1BD7E87A0();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD7E84A0()
{
  result = qword_1EBD54240;
  if (!qword_1EBD54240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54240);
  }

  return result;
}

__n128 sub_1BD7E84F4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD7E920C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v4 = v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  result = *(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount);
  *a2 = result;
  a2[1].n128_u32[0] = *(v4 + 16);
  return result;
}

id sub_1BD7E85DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v16);
  if (v16 == 1)
  {
    v10 = [a1 tintColor];
    if (v10)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (qword_1EBD36E00 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBDAB568;
LABEL_7:
  [a1 setTextColor_];

  v11 = [a1 amountTextField];
  if (v11)
  {
    v12 = v11;
    v13 = a5 & 1;
    v17 = a3;
    v18 = a4;
    v19 = v13;
    MEMORY[0x1BFB3E970](&v16, v9);
    if (v16 == 1 && ![v12 isFirstResponder])
    {
      v14 = &selRef_showKeyboard;
    }

    else
    {
      v17 = a3;
      v18 = a4;
      v19 = v13;
      MEMORY[0x1BFB3E970](&v16, v9);
      if ((v16 & 1) != 0 || ![v12 isFirstResponder])
      {
        goto LABEL_15;
      }

      v14 = &selRef_dismissKeyboard;
    }

    [a1 *v14];
LABEL_15:
  }

  return [a1 sizeToFit];
}

unint64_t sub_1BD7E87A0()
{
  result = qword_1EBD54260;
  if (!qword_1EBD54260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54260);
  }

  return result;
}

unint64_t sub_1BD7E8860()
{
  result = qword_1EBD542B0;
  if (!qword_1EBD542B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD542B0);
  }

  return result;
}

unint64_t sub_1BD7E88B4()
{
  result = qword_1EBD542B8;
  if (!qword_1EBD542B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542A0);
    sub_1BD7E8984();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330);
    sub_1BD7E8DE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD542B8);
  }

  return result;
}

unint64_t sub_1BD7E8984()
{
  result = qword_1EBD542C0;
  if (!qword_1EBD542C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542D0);
    sub_1BD7E8AA8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54300);
    sub_1BE04EB64();
    sub_1BD7E8C48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD542C0);
  }

  return result;
}

unint64_t sub_1BD7E8AA8()
{
  result = qword_1EBD542D8;
  if (!qword_1EBD542D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542D0);
    sub_1BD7E8B60();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD542D8);
  }

  return result;
}

unint64_t sub_1BD7E8B60()
{
  result = qword_1EBD542E0;
  if (!qword_1EBD542E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542E8);
    sub_1BD0DE4F4(&qword_1EBD542F0, &qword_1EBD542F8);
    sub_1BD7E920C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD542E0);
  }

  return result;
}

unint64_t sub_1BD7E8C48()
{
  result = qword_1EBD54308;
  if (!qword_1EBD54308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54300);
    sub_1BD7E8D00();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54308);
  }

  return result;
}

unint64_t sub_1BD7E8D00()
{
  result = qword_1EBD54310;
  if (!qword_1EBD54310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54318);
    sub_1BD0DE4F4(&qword_1EBD54320, &qword_1EBD54328);
    sub_1BD7E920C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54310);
  }

  return result;
}

unint64_t sub_1BD7E8DE8()
{
  result = qword_1EBD54338;
  if (!qword_1EBD54338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330);
    sub_1BD7E8EA0();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54338);
  }

  return result;
}

unint64_t sub_1BD7E8EA0()
{
  result = qword_1EBD54340;
  if (!qword_1EBD54340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54348);
    sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0);
    sub_1BD7E920C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54340);
  }

  return result;
}

uint64_t sub_1BD7E8F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7E9000()
{
  result = qword_1EBD543B0;
  if (!qword_1EBD543B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54368);
    sub_1BD0DE4F4(&qword_1EBD543B8, &qword_1EBD543C0);
    sub_1BD0DE4F4(&qword_1EBD543C8, &qword_1EBD543A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD543B0);
  }

  return result;
}

uint64_t sub_1BD7E90E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7E9148(uint64_t a1)
{
  v2 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD7E920C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD7E9254()
{
  result = qword_1EBD54428;
  if (!qword_1EBD54428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54428);
  }

  return result;
}

uint64_t objectdestroyTm_96()
{

  return swift_deallocObject();
}

void sub_1BD7E93BC()
{
  sub_1BD7E9480();
  if (v0 <= 0x3F)
  {
    sub_1BD7E94D8();
    if (v1 <= 0x3F)
    {
      sub_1BD0E8CBC();
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD7E9480()
{
  if (!qword_1EBD365F8)
  {
    type metadata accessor for AvailablePass(255);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD365F8);
    }
  }
}

void sub_1BD7E94D8()
{
  if (!qword_1EBD4D0C8)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D0C8);
    }
  }
}

void sub_1BD7E9570()
{
  sub_1BD7E9480();
  if (v0 <= 0x3F)
  {
    sub_1BD7E94D8();
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD359720(319, &qword_1EBD40448, &qword_1EBD40450, &unk_1BE0D7250, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1BD359720(319, &qword_1EBD54468, &qword_1EBD39CF0, "ԥ\t", MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD7E96A4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*(v2 + *(a1 + 28)) identifier];
  v5 = sub_1BE052434();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1BD7E971C()
{
  v0 = sub_1BE051AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v33 - v22;
  type metadata accessor for BillingAddressPicker(0);
  sub_1BD70A2C8(v11);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD40450);
    v25 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v24);
    sub_1BD0DE53C(v11, &qword_1EBD40520);
    v25 = 0;
  }

  v26 = *(v1 + 56);
  v26(v23, v25, 1, v0);
  (*(v1 + 104))(v19, *MEMORY[0x1E697D708], v0);
  v26(v19, 0, 1, v0);
  v27 = *(v4 + 48);
  sub_1BD0DE19C(v23, v7, &qword_1EBD40530);
  sub_1BD0DE19C(v19, &v7[v27], &qword_1EBD40530);
  v28 = *(v1 + 48);
  if (v28(v7, 1, v0) != 1)
  {
    sub_1BD0DE19C(v7, v15, &qword_1EBD40530);
    if (v28(&v7[v27], 1, v0) != 1)
    {
      v30 = v34;
      (*(v1 + 32))(v34, &v7[v27], v0);
      sub_1BD7EDCE0(&qword_1EBD40538, MEMORY[0x1E697D718]);
      v29 = sub_1BE052334();
      v31 = *(v1 + 8);
      v31(v30, v0);
      sub_1BD0DE53C(v19, &qword_1EBD40530);
      sub_1BD0DE53C(v23, &qword_1EBD40530);
      v31(v15, v0);
      sub_1BD0DE53C(v7, &qword_1EBD40530);
      return v29 & 1;
    }

    sub_1BD0DE53C(v19, &qword_1EBD40530);
    sub_1BD0DE53C(v23, &qword_1EBD40530);
    (*(v1 + 8))(v15, v0);
    goto LABEL_9;
  }

  sub_1BD0DE53C(v19, &qword_1EBD40530);
  sub_1BD0DE53C(v23, &qword_1EBD40530);
  if (v28(&v7[v27], 1, v0) != 1)
  {
LABEL_9:
    sub_1BD0DE53C(v7, &qword_1EBD40528);
    v29 = 0;
    return v29 & 1;
  }

  sub_1BD0DE53C(v7, &qword_1EBD40530);
  v29 = 1;
  return v29 & 1;
}

id sub_1BD7E9C74@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for BillingAddressPicker(0);
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v73 = v5;
  v74 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54470);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v76 = &v60 - v8;
  v9 = sub_1BE04F434();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54478);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54480);
  v61 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v60 - v23;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54488);
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v25);
  v62 = &v60 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54490);
  v69 = *(v27 - 8);
  v70 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v68 = &v60 - v29;
  v75 = v1;
  v78 = v1;
  v30 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54498);
  sub_1BD0DE4F4(&qword_1EBD544A0, &qword_1EBD54498);
  sub_1BE0504A4();
  v31 = sub_1BE051274();
  v32 = sub_1BE0501D4();
  v33 = sub_1BE051CD4();
  v34 = &v20[*(v17 + 36)];
  *v34 = v31;
  v34[8] = v32;
  *(v34 + 2) = v33;
  *(v34 + 3) = v35;
  (*(v13 + 104))(v16, *MEMORY[0x1E69B8068], v30);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v38 = sub_1BE04B6F4();
    v40 = v39;

    (*(v13 + 8))(v16, v30);
    v79 = v38;
    v80 = v40;
    v41 = sub_1BD7EDAB4();
    v42 = sub_1BD0DDEBC();
    v43 = MEMORY[0x1E69E6158];
    sub_1BE050B74();

    sub_1BD0DE53C(v20, &qword_1EBD54478);
    v45 = v64;
    v44 = v65;
    v46 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x1E697C438], v66);
    v79 = v17;
    v80 = v43;
    v81 = v41;
    v82 = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v62;
    sub_1BE050E84();
    (*(v44 + 8))(v45, v46);
    (*(v61 + 8))(v24, v21);
    v49 = sub_1BE04E214();
    v79 = v21;
    v80 = OpaqueTypeConformance2;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = sub_1BD7EDCE0(&qword_1EBD44B30, MEMORY[0x1E697BDD8]);
    v53 = v67;
    v52 = v68;
    sub_1BE051034();
    (*(v63 + 8))(v48, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);
    v54 = v75;
    v55 = v76;
    sub_1BE0516C4();
    v56 = v74;
    sub_1BD7EDB98(v54, v74);
    v57 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v58 = swift_allocObject();
    sub_1BD7EDBFC(v56, v58 + v57);
    type metadata accessor for BillingAddressPicker.EditorInfo(0);
    type metadata accessor for BillingAddressEditor();
    v79 = v53;
    v80 = v49;
    v81 = v50;
    v82 = v51;
    swift_getOpaqueTypeConformance2();
    sub_1BD7EDCE0(&qword_1EBD544C0, type metadata accessor for BillingAddressPicker.EditorInfo);
    sub_1BD7EDCE0(&qword_1EBD39490, type metadata accessor for BillingAddressEditor);
    v59 = v70;
    sub_1BE051124();

    sub_1BD0DE53C(v55, &qword_1EBD54470);
    return (*(v69 + 8))(v52, v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7EA508@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v100 = a2;
  v101 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544C8);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v2);
  v87 = &v81[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v99 = &v81[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v97 = &v81[-v9];
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v88 = &v81[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v91 = &v81[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v81[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544D8);
  v94 = *(v21 - 8);
  v95 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v81[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v81[-v27];
  v29 = *(v11 + 104);
  LODWORD(v90) = *MEMORY[0x1E69B8068];
  v89 = v29;
  v29(v20, v26);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v31 = result;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  v86 = *(v11 + 8);
  v86(v20, v10);
  v106 = v32;
  v107 = v34;
  v85 = sub_1BD0DDEBC();
  v106 = sub_1BE0506C4();
  v107 = v35;
  v108 = v36 & 1;
  v109 = v37;
  MEMORY[0x1EEE9AC00](v106, v35);
  v38 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544E0);
  sub_1BD0DE4F4(&qword_1EBD544E8, &qword_1EBD544E0);
  sub_1BE051A24();
  v39 = *(v38 + *(type metadata accessor for BillingAddressPicker(0) + 24) + 32);
  v92 = v28;
  if (!v39)
  {
    v71 = 1;
    v69 = v97;
    v70 = v98;
    v68 = v96;
    goto LABEL_7;
  }

  v40 = v91;
  v41 = v90;
  v42 = v89;
  v89(v91, v90, v10);
  v84 = v39;
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_9;
  }

  v43 = result;
  v44 = sub_1BE04B6F4();
  v46 = v45;

  v47 = v86;
  v86(v40, v10);
  v106 = v44;
  v107 = v46;
  v48 = sub_1BE0506C4();
  v83 = v49;
  v82 = v50;
  v91 = v51;
  v52 = v88;
  v42(v88, v41, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v53 = result;
    v54 = sub_1BE04B6F4();
    v56 = v55;

    v47(v52, v10);
    v106 = v54;
    v107 = v56;
    v57 = sub_1BE0506C4();
    v59 = v58;
    v90 = v81;
    v60 = v48;
    v61 = v83;
    v106 = v48;
    v107 = v83;
    v62 = v82 & 1;
    v108 = v82 & 1;
    v109 = v91;
    v102 = v57;
    v103 = v58;
    v88 = v57;
    v86 = v58;
    v64 = v63 & 1;
    v104 = v63 & 1;
    v105 = v65;
    v89 = v65;
    MEMORY[0x1EEE9AC00](v57, v58);
    v66 = v84;
    sub_1BD0D7F18(v60, v61, v62);
    sub_1BE048C84();
    sub_1BD0D7F18(v57, v59, v64);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544F8);
    sub_1BD0DE4F4(&qword_1EBD54500, &qword_1EBD544F8);
    v67 = v87;
    sub_1BE051A34();
    sub_1BD0DDF10(v60, v61, v62);

    sub_1BD0DDF10(v88, v86, v64);

    v68 = v96;
    v69 = v97;
    v70 = v98;
    (*(v96 + 32))(v97, v67, v98);
    v71 = 0;
LABEL_7:
    (*(v68 + 56))(v69, v71, 1, v70);
    v73 = v93;
    v72 = v94;
    v74 = *(v94 + 16);
    v75 = v92;
    v76 = v95;
    v74(v93, v92, v95);
    v77 = v99;
    sub_1BD0DE19C(v69, v99, &qword_1EBD544D0);
    v78 = v100;
    v74(v100, v73, v76);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544F0);
    sub_1BD0DE19C(v77, &v78[*(v79 + 48)], &qword_1EBD544D0);
    sub_1BD0DE53C(v69, &qword_1EBD544D0);
    v80 = *(v72 + 8);
    v80(v75, v76);
    sub_1BD0DE53C(v77, &qword_1EBD544D0);
    return (v80)(v73, v76);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BD7EAD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1BE051CD4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54570);
  sub_1BD7EAE48(a1, a2 + *(v5 + 44));
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54578) + 36);
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  *(v6 + 1) = _Q0;
  v6[32] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544E0);
  v13 = a2 + *(result + 52);
  strcpy(v13, "defaultAddress");
  v13[15] = -18;
  return result;
}

uint64_t sub_1BD7EAE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54518);
  MEMORY[0x1EEE9AC00](v40, v3);
  v5 = v35 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54580);
  MEMORY[0x1EEE9AC00](v38, v6);
  v39 = v35 - v7;
  v8 = sub_1BE04F574();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v35 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54588);
  MEMORY[0x1EEE9AC00](v37, v16);
  v18 = v35 - v17;
  v19 = type metadata accessor for BillingAddressPicker(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v22);
  v24 = *(a1 + *(v23 + 32) + 24);
  v35[1] = v9 + 16;
  sub_1BD7EDB98(a1, v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  if (v24)
  {
    v26 = swift_allocObject();
    sub_1BD7EDBFC(v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    v27 = v24;
    sub_1BD7EB6D4(v27, sub_1BD7F107C, v26, v5);
    sub_1BE04F564();
    (*(v9 + 16))(v36, v15, v8);
    sub_1BD7EDCE0(&qword_1EBD54510, MEMORY[0x1E697F400]);
    v28 = sub_1BE04E644();
    (*(v9 + 8))(v15, v8);
    v29 = v39;
    *&v5[*(v40 + 36)] = v28;
    sub_1BD0DE19C(v5, v29, &qword_1EBD54518);
    swift_storeEnumTagMultiPayload();
    sub_1BD7F0E28();
    sub_1BD7F0F98();
    sub_1BE04F9A4();

    v30 = v5;
    v31 = &qword_1EBD54518;
  }

  else
  {
    v32 = swift_allocObject();
    sub_1BD7EDBFC(v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v25);
    sub_1BD12B86C();
    sub_1BE048964();
    sub_1BE051704();
    sub_1BE04F564();
    (*(v9 + 16))(v36, v15, v8);
    sub_1BD7EDCE0(&qword_1EBD54510, MEMORY[0x1E697F400]);
    v33 = sub_1BE04E644();
    (*(v9 + 8))(v15, v8);
    *&v18[*(v37 + 36)] = v33;
    sub_1BD0DE19C(v18, v39, &qword_1EBD54588);
    swift_storeEnumTagMultiPayload();
    sub_1BD7F0E28();
    sub_1BD7F0F98();
    sub_1BE04F9A4();

    v30 = v18;
    v31 = &qword_1EBD54588;
  }

  return sub_1BD0DE53C(v30, v31);
}

uint64_t sub_1BD7EB3C0(char a1, void *a2)
{
  v5 = type metadata accessor for BillingAddressPicker(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v31 - v16;
  v18 = [a2 valueSource];
  if (v18)
  {

    if (a1)
    {
      return (*(v2 + *(v5 + 36)))(a2);
    }
  }

  else
  {
    sub_1BE052434();
    v20 = sub_1BE052404();

    [a2 setValueSource_];

    if (a1)
    {
      return (*(v2 + *(v5 + 36)))(a2);
    }
  }

  v21 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  sub_1BD0DE19C(v2, &v17[v21[5]], &qword_1EBD520A0);
  v22 = v2 + *(v5 + 20);
  v24 = *v22;
  v23 = *(v22 + 8);
  sub_1BD7EDB98(v2, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v32 + 80);
  v32 = v2;
  v26 = (v25 + 16) & ~v25;
  v27 = swift_allocObject();
  sub_1BD7EDBFC(v8, v27 + v26);
  *v17 = 1;
  v28 = &v17[v21[6]];
  *v28 = v24;
  v28[1] = v23;
  *&v17[v21[7]] = a2;
  v29 = &v17[v21[8]];
  *v29 = sub_1BD7F1110;
  v29[1] = v27;
  (*(*(v21 - 1) + 56))(v17, 0, 1, v21);
  sub_1BD0DE19C(v17, v12, &qword_1EBD39CF0);
  sub_1BD3EFCD8(v24, v23);
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v17, &qword_1EBD39CF0);
}

uint64_t sub_1BD7EB6D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v81 = a2;
  v82 = a3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54528);
  MEMORY[0x1EEE9AC00](v83, v8);
  v86 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54530);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v71 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54538);
  MEMORY[0x1EEE9AC00](v84, v14);
  v16 = &v71 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54540);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v85 = &v71 - v20;
  v21 = type metadata accessor for BillingAddressPicker(0);
  v80 = *(v21 - 8);
  v22 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v24 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v5 + *(v25 + 32);
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);
  if (!v29)
  {
    v76 = v16;
    v77 = v27;
    v74 = v10;
    v75 = v13;
    v78 = v18;
    v79 = a4;
    v73 = v28;
    v39 = [v28 identifier];
    v40 = sub_1BE052434();
    v42 = v41;

    v43 = [a1 identifier];
    v44 = sub_1BE052434();
    v46 = v45;

    if (v40 == v44 && v42 == v46)
    {
    }

    else
    {
      v55 = sub_1BE053B84();

      if ((v55 & 1) == 0)
      {
        sub_1BD0D455C(v73, v77, 0);
LABEL_16:
        v18 = v78;
        goto LABEL_17;
      }
    }

    sub_1BD7EDB98(v5, &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v56 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v57 = (v22 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v82;
    *(v58 + 16) = v81;
    *(v58 + 24) = v59;
    v60 = sub_1BD7EDBFC(v24, v58 + v56);
    *(v58 + v57) = a1;
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v71 - 2) = a1;
    *(&v71 - 1) = v5;
    sub_1BE048964();
    v62 = a1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54548);
    sub_1BD7EFFAC();
    v53 = v85;
    sub_1BE051704();
    v18 = v78;
    (*(v78 + 16))(v75, v53, v17);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD54568, &qword_1EBD54540);
    v54 = v76;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v54, v86, &qword_1EBD54538);
    swift_storeEnumTagMultiPayload();
    sub_1BD7F0090();
    sub_1BE04F9A4();
    sub_1BD0D455C(v73, v77, 0);

    goto LABEL_13;
  }

  if (v29 != 1)
  {
LABEL_17:
    sub_1BD7EDB98(v5, &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v63 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v64 = (v22 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    v66 = v82;
    *(v65 + 16) = v81;
    *(v65 + 24) = v66;
    v67 = sub_1BD7EDBFC(v24, v65 + v63);
    *(v65 + v64) = a1;
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v71 - 2) = a1;
    *(&v71 - 1) = v5;
    sub_1BE048964();
    v69 = a1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54548);
    sub_1BD7EFFAC();
    v53 = v85;
    sub_1BE051704();
    (*(v18 + 16))(v86, v53, v17);
    swift_storeEnumTagMultiPayload();
    sub_1BD7F0090();
    sub_1BD0DE4F4(&qword_1EBD54568, &qword_1EBD54540);
    sub_1BE04F9A4();

    return (*(v18 + 8))(v53, v17);
  }

  v74 = v10;
  v75 = v13;
  v76 = v16;
  v77 = v27;
  v78 = v18;
  v79 = a4;
  v30 = v28;
  v73 = v27;
  v72 = v30;
  v31 = [v72 identifier];
  v32 = sub_1BE052434();
  v34 = v33;

  v35 = [a1 identifier];
  v36 = sub_1BE052434();
  v38 = v37;

  if (v32 != v36 || v34 != v38)
  {
    v47 = sub_1BE053B84();

    if (v47)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_10:
  v48 = swift_allocObject();
  v48[2] = v81;
  v49 = v82;
  v48[3] = v82;
  v48[4] = a1;
  MEMORY[0x1EEE9AC00](v49, v50);
  v51 = v77;
  *(&v71 - 4) = a1;
  *(&v71 - 3) = v51;
  *(&v71 - 2) = v5;
  sub_1BE048964();
  v52 = a1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54548);
  sub_1BD7EFFAC();
  v53 = v85;
  sub_1BE051704();
  v18 = v78;
  (*(v78 + 16))(v75, v53, v17);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD54568, &qword_1EBD54540);
  v54 = v76;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v54, v86, &qword_1EBD54538);
  swift_storeEnumTagMultiPayload();
  sub_1BD7F0090();
  sub_1BE04F9A4();

LABEL_13:
  sub_1BD0DE53C(v54, &qword_1EBD54538);
  return (*(v18 + 8))(v53, v17);
}

uint64_t sub_1BD7EC054(uint64_t a1, void *a2, void *a3)
{
  v40 = a3;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v36 = &v34 - v7;
  v8 = type metadata accessor for BillingAddressPicker(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v38 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  sub_1BD0DE19C(a1, &v18[v19[5]], &qword_1EBD520A0);
  v20 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  sub_1BE052434();
  v21 = sub_1BE052404();

  [v20 setValueSource_];

  sub_1BD7EDB98(v41, v11);
  v22 = a1;
  v23 = v36;
  sub_1BD0DE19C(v22, v36, &qword_1EBD520A0);
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = (v9 + *(v37 + 80) + v24) & ~*(v37 + 80);
  v26 = (v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1BD7EDBFC(v11, v27 + v24);
  sub_1BD0DE204(v23, v27 + v25, &qword_1EBD520A0);
  v28 = (v27 + v26);
  v30 = v39;
  v29 = v40;
  *v28 = v39;
  v28[1] = v29;
  *v18 = 0;
  v31 = &v18[v19[6]];
  *v31 = v30;
  v31[1] = v29;
  *&v18[v19[7]] = v20;
  v32 = &v18[v19[8]];
  *v32 = sub_1BD7F11AC;
  v32[1] = v27;
  (*(*(v19 - 1) + 56))(v18, 0, 1, v19);
  sub_1BD0DE19C(v18, v38, &qword_1EBD39CF0);
  sub_1BD3EFCD8(v30, v29);
  sub_1BD3EFCD8(v30, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v18, &qword_1EBD39CF0);
}

void sub_1BD7EC424(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t sub_1BD7EC434@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v5 = sub_1BE04F574();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for BillingAddressPicker(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v17);
  *a3 = sub_1BE051CD4();
  a3[1] = v18;
  v33 = a3;
  v19 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54508) + 44);
  sub_1BD7EDB98(a1, &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = swift_allocObject();
  sub_1BD7EDBFC(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_1BD7EB6D4(v34, sub_1BD7EFF70, v21, v19);
  sub_1BE04F564();
  (*(v6 + 16))(v9, v13, v5);
  sub_1BD7EDCE0(&qword_1EBD54510, MEMORY[0x1E697F400]);
  v22 = sub_1BE04E644();

  (*(v6 + 8))(v13, v5);
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54518) + 36)) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54520);
  v24 = v33;
  v25 = v33 + *(v23 + 36);
  __asm { FMOV            V0.2D, #16.0 }

  *v25 = _Q0;
  *(v25 + 1) = _Q0;
  v25[32] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD544F8);
  v32 = (v24 + *(result + 52));
  *v32 = 0xD000000000000017;
  v32[1] = 0x80000001BE13AE30;
  return result;
}

uint64_t sub_1BD7EC728(char a1, void *a2)
{
  v5 = type metadata accessor for BillingAddressPicker(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v29 - v16;
  v18 = [a2 valueSource];
  if (v18)
  {

    if (a1)
    {
      return (*(v2 + *(v5 + 36)))(a2);
    }
  }

  else
  {
    sub_1BE052434();
    v20 = sub_1BE052404();

    [a2 setValueSource_];

    if (a1)
    {
      return (*(v2 + *(v5 + 36)))(a2);
    }
  }

  v21 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  v22 = v21[5];
  v23 = type metadata accessor for AvailablePass(0);
  (*(*(v23 - 8) + 56))(&v17[v22], 1, 1, v23);
  sub_1BD7EDB98(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v25 = swift_allocObject();
  sub_1BD7EDBFC(v8, v25 + v24);
  *v17 = 1;
  v26 = &v17[v21[6]];
  *v26 = 0;
  v26[1] = 0;
  *&v17[v21[7]] = a2;
  v27 = &v17[v21[8]];
  *v27 = sub_1BD7F0DA4;
  v27[1] = v25;
  (*(*(v21 - 1) + 56))(v17, 0, 1, v21);
  sub_1BD0DE19C(v17, v12, &qword_1EBD39CF0);
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v17, &qword_1EBD39CF0);
}

double sub_1BD7ECA44@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  v8 = v7[5];
  v9 = type metadata accessor for BillingAddressEditor();
  sub_1BD0DE19C(&a1[v8], &a3[v9[5]], &qword_1EBD520A0);
  v10 = type metadata accessor for BillingAddressPicker(0);
  v11 = a2 + *(v10 + 20);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *&a1[v7[7]];
  v15 = a2 + *(v10 + 24);
  v34 = *(v15 + 72);
  v16 = *(v15 + 56);
  v32 = *(v15 + 40);
  v33 = v16;
  v17 = &a1[v7[8]];
  v19 = *v17;
  v18 = v17[1];
  v20 = &a3[v9[10]];
  *v20 = sub_1BDA570C8;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = &a3[v9[11]];
  v31 = 0;
  sub_1BD3EFCD8(v12, v13);
  v22 = v14;
  sub_1BD10D494(&v32, v29);
  sub_1BE048964();
  sub_1BE051694();
  v23 = v30;
  *v21 = v29[0];
  *(v21 + 1) = v23;
  *&a3[v9[12]] = 0x4064200000000000;
  *a3 = v6;
  v24 = &a3[v9[6]];
  *v24 = v12;
  v24[1] = v13;
  *&a3[v9[7]] = v14;
  v25 = &a3[v9[8]];
  result = *&v32;
  v27 = v33;
  *v25 = v32;
  *(v25 + 1) = v27;
  *(v25 + 4) = v34;
  v28 = &a3[v9[9]];
  *v28 = v19;
  v28[1] = v18;
  return result;
}

id sub_1BD7ECBD4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F3D4();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 1;
  *(a4 + 18) = 1;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54558) + 44);
  *(a4 + v16) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v17 = *(type metadata accessor for BillingAddressPicker(0) + 40);
  v18 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54548) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
  sub_1BD0DE19C(a3 + v17, v15, &qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD0DE204(v15, v18 + v19, &qword_1EBD40450);
    v20 = a2;
    result = a1;
  }

  else
  {
    v22 = a2;
    v23 = a1;
    sub_1BE052C44();
    v24 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    result = (*(v26 + 8))(v11, v27);
  }

  *v18 = KeyPath;
  return result;
}

id sub_1BD7ECE6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F3D4();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - v14;
  *a4 = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 256;
  *(a4 + 18) = a3;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54558) + 44);
  *(a4 + v16) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v18 = *(type metadata accessor for BillingAddressPicker(0) + 40);
  v19 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54548) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
  sub_1BD0DE19C(a2 + v18, v15, &qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD0DE204(v15, v19 + v20, &qword_1EBD40450);
    result = a1;
  }

  else
  {
    v22 = a1;
    sub_1BE052C44();
    v23 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    result = (*(v24 + 8))(v11, v25);
  }

  *v19 = KeyPath;
  return result;
}

uint64_t sub_1BD7ED0F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BE051AD4();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v32 - v22;
  if (a1)
  {
    v24 = type metadata accessor for BillingAddressPicker(0);
    v32 = a5;
    v33 = v19;
    v25 = v24;
    v26 = *(a2 + *(v24 + 28));
    v27 = a1;
    v26();
    v19 = v33;
    (*(a2 + *(v25 + 36)))(v27);
  }

  v28 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  type metadata accessor for BillingAddressPicker(0);
  sub_1BD0DE19C(v23, v19, &qword_1EBD39CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);
  sub_1BE0516B4();
  sub_1BD0DE53C(v23, &qword_1EBD39CF0);
  sub_1BD70A2C8(v15);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v29 - 8) + 48))(v15, 1, v29) == 1)
  {
    v30 = &qword_1EBD40450;
  }

  else
  {
    (*(v34 + 104))(v11, *MEMORY[0x1E697D710], v35);
    sub_1BE0518F4();
    v30 = &qword_1EBD40520;
  }

  return sub_1BD0DE53C(v15, v30);
}

uint64_t sub_1BD7ED464(void *a1, uint64_t a2)
{
  v4 = sub_1BE051AD4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  if (a1)
  {
    v20 = *(a2 + *(type metadata accessor for BillingAddressPicker(0) + 28));
    v21 = a1;
    v20();
  }

  v22 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  type metadata accessor for BillingAddressPicker(0);
  sub_1BD0DE19C(v19, v15, &qword_1EBD39CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);
  sub_1BE0516B4();
  sub_1BD0DE53C(v19, &qword_1EBD39CF0);
  sub_1BD70A2C8(v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v23 - 8) + 48))(v11, 1, v23) == 1)
  {
    v24 = &qword_1EBD40450;
  }

  else
  {
    (*(v26 + 104))(v7, *MEMORY[0x1E697D710], v27);
    sub_1BE0518F4();
    v24 = &qword_1EBD40520;
  }

  return sub_1BD0DE53C(v11, v24);
}

uint64_t sub_1BD7ED790(void *a1, uint64_t a2)
{
  v27 = sub_1BE051AD4();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  if (a1)
  {
    v20 = *(a2 + *(type metadata accessor for BillingAddressPicker(0) + 32));
    v21 = a1;
    v20();
  }

  v22 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  type metadata accessor for BillingAddressPicker(0);
  sub_1BD0DE19C(v19, v15, &qword_1EBD39CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);
  sub_1BE0516B4();
  sub_1BD0DE53C(v19, &qword_1EBD39CF0);
  sub_1BD70A2C8(v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v23 - 8) + 48))(v11, 1, v23) == 1)
  {
    v24 = &qword_1EBD40450;
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x1E697D710], v27);
    sub_1BE0518F4();
    v24 = &qword_1EBD40520;
  }

  return sub_1BD0DE53C(v11, v24);
}

unint64_t sub_1BD7EDAB4()
{
  result = qword_1EBD544A8;
  if (!qword_1EBD544A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54478);
    sub_1BD0DE4F4(&qword_1EBD544B0, &qword_1EBD544B8);
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD544A8);
  }

  return result;
}

uint64_t sub_1BD7EDB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BillingAddressPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7EDBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BillingAddressPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD7EDC60@<D0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for BillingAddressPicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD7ECA44(a1, v6, a2);
}

uint64_t sub_1BD7EDCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7EDD28()
{
  v0 = sub_1BE051AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v33 - v22;
  sub_1BD70A2C8(v11);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD40450);
    v25 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v24);
    sub_1BD0DE53C(v11, &qword_1EBD40520);
    v25 = 0;
  }

  v26 = *(v1 + 56);
  v26(v23, v25, 1, v0);
  (*(v1 + 104))(v19, *MEMORY[0x1E697D708], v0);
  v26(v19, 0, 1, v0);
  v27 = *(v4 + 48);
  sub_1BD0DE19C(v23, v7, &qword_1EBD40530);
  sub_1BD0DE19C(v19, &v7[v27], &qword_1EBD40530);
  v28 = *(v1 + 48);
  if (v28(v7, 1, v0) != 1)
  {
    sub_1BD0DE19C(v7, v15, &qword_1EBD40530);
    if (v28(&v7[v27], 1, v0) != 1)
    {
      v30 = v34;
      (*(v1 + 32))(v34, &v7[v27], v0);
      sub_1BD7EDCE0(&qword_1EBD40538, MEMORY[0x1E697D718]);
      v29 = sub_1BE052334();
      v31 = *(v1 + 8);
      v31(v30, v0);
      sub_1BD0DE53C(v19, &qword_1EBD40530);
      sub_1BD0DE53C(v23, &qword_1EBD40530);
      v31(v15, v0);
      sub_1BD0DE53C(v7, &qword_1EBD40530);
      return v29 & 1;
    }

    sub_1BD0DE53C(v19, &qword_1EBD40530);
    sub_1BD0DE53C(v23, &qword_1EBD40530);
    (*(v1 + 8))(v15, v0);
    goto LABEL_9;
  }

  sub_1BD0DE53C(v19, &qword_1EBD40530);
  sub_1BD0DE53C(v23, &qword_1EBD40530);
  if (v28(&v7[v27], 1, v0) != 1)
  {
LABEL_9:
    sub_1BD0DE53C(v7, &qword_1EBD40528);
    v29 = 0;
    return v29 & 1;
  }

  sub_1BD0DE53C(v7, &qword_1EBD40530);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1BD7EE27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54640);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  v24[1] = swift_getWitnessTable();
  v4 = sub_1BE051774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60);
  v9 = sub_1BE04EBD4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  v18 = *(a1 + 24);
  v27 = v3;
  v28 = v18;
  v19 = v25;
  v29 = v25;
  sub_1BE04F504();
  sub_1BE051764();
  v32 = *(v19 + *(a1 + 40));
  WitnessTable = swift_getWitnessTable();
  sub_1BE0510E4();
  (*(v5 + 8))(v8, v4);
  v21 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
  v30 = WitnessTable;
  v31 = v21;
  swift_getWitnessTable();
  sub_1BD147308(v13);
  v22 = *(v10 + 8);
  v22(v13, v9);
  sub_1BD147308(v17);
  return (v22)(v17, v9);
}

uint64_t sub_1BD7EE604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a4;
  v78 = sub_1BE04F6E4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v7);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  MEMORY[0x1EEE9AC00](v99, v9);
  v79 = &v75 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54648);
  MEMORY[0x1EEE9AC00](v97, v11);
  v98 = &v75 - v12;
  v95 = sub_1BE04F454();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v13);
  v89 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1BE04E8A4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v15);
  v86 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54650);
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v17);
  v87 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v88 = &v75 - v21;
  v81 = sub_1BE04C894();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v22);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1BE04C764();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v25);
  v100 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54658);
  MEMORY[0x1EEE9AC00](v96, v27);
  v82 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v84 = &v75 - v31;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54640);
  MEMORY[0x1EEE9AC00](v106, v32);
  v107 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v104 = &v75 - v36;
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v37 = sub_1BE051774();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v75 - v44;
  v109 = a2;
  v110 = a3;
  v111 = a1;
  sub_1BE04F504();
  sub_1BE051764();
  WitnessTable = swift_getWitnessTable();
  v105 = v45;
  v102 = WitnessTable;
  sub_1BD147308(v41);
  v101 = v38;
  v103 = *(v38 + 8);
  v103(v41, v37);
  v47 = type metadata accessor for BillingAddressPicker.AddressRow();
  if (sub_1BD7EDD28())
  {
    if (*(a1 + *(v47 + 36)))
    {
      v48 = MEMORY[0x1E69BCA00];
    }

    else
    {
      v48 = MEMORY[0x1E69BC9F8];
    }

    (*(v80 + 104))(v24, *v48, v81);
    sub_1BE04C754();
    v49 = v86;
    sub_1BE04E894();
    v50 = v89;
    sub_1BE04F444();
    v51 = sub_1BD7EDCE0(&unk_1EBD36878, MEMORY[0x1E697E410]);
    v52 = sub_1BD7EDCE0(&unk_1EBD367A0, MEMORY[0x1E697F260]);
    v81 = v38 + 8;
    v53 = v88;
    v54 = v92;
    v55 = v95;
    sub_1BE04E314();
    (*(v93 + 8))(v50, v55);
    (*(v91 + 8))(v49, v54);
    v56 = v90;
    v57 = v94;
    (*(v90 + 16))(v87, v53, v94);
    v112 = v54;
    v113 = v55;
    v114 = v51;
    v115 = v52;
    swift_getOpaqueTypeConformance2();
    v58 = sub_1BE04E644();
    (*(v56 + 8))(v53, v57);
    v59 = v82;
    (*(v83 + 32))(v82, v100, v85);
    *(v59 + *(v96 + 36)) = v58;
    v60 = &qword_1EBD54658;
    v61 = v84;
    sub_1BD0DE204(v59, v84, &qword_1EBD54658);
    sub_1BD0DE19C(v61, v98, &qword_1EBD54658);
    swift_storeEnumTagMultiPayload();
    sub_1BD7F1A50();
    sub_1BD0F13A4();
    v62 = v104;
  }

  else
  {
    if (*(a1 + *(v47 + 40)) != 1)
    {
      v69 = 1;
      v62 = v104;
      goto LABEL_10;
    }

    v63 = sub_1BE051574();
    v64 = sub_1BE0502D4();
    v95 = v64;
    KeyPath = swift_getKeyPath();
    v100 = KeyPath;
    v66 = sub_1BE0511E4();
    v67 = swift_getKeyPath();
    v112 = v63;
    v113 = KeyPath;
    v114 = v64;
    v115 = v67;
    v116 = v66;
    v68 = v76;
    sub_1BE04F6B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
    sub_1BD0F1430();
    v61 = v79;
    sub_1BE050DA4();
    (*(v77 + 8))(v68, v78);

    v60 = &qword_1EBD38BA8;
    sub_1BD0DE19C(v61, v98, &qword_1EBD38BA8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7F1A50();
    sub_1BD0F13A4();
    v62 = v104;
  }

  sub_1BE04F9A4();
  sub_1BD0DE53C(v61, v60);
  v69 = 0;
LABEL_10:
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54660);
  (*(*(v70 - 8) + 56))(v62, v69, 1, v70);
  v71 = v105;
  (*(v101 + 16))(v41, v105, v37);
  v112 = v41;
  v72 = v107;
  sub_1BD0DE19C(v62, v107, &qword_1EBD54640);
  v113 = v72;
  v119[0] = v37;
  v119[1] = v106;
  v117 = v102;
  v118 = sub_1BD7F1940();
  sub_1BD13A4C4(&v112, 2uLL, v119);
  sub_1BD0DE53C(v62, &qword_1EBD54640);
  v73 = v103;
  v103(v71, v37);
  sub_1BD0DE53C(v72, &qword_1EBD54640);
  return v73(v41, v37);
}

uint64_t sub_1BD7EF2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v15 - v10;
  sub_1BD147308(v12);
  (*(v5 + 16))(v7, v11, a2);
  v17 = 0;
  v18 = 0;
  v19[0] = v7;
  v19[1] = &v17;
  v16[0] = a2;
  v16[1] = MEMORY[0x1E6981840];
  v15[0] = a3;
  v15[1] = MEMORY[0x1E6981838];
  sub_1BD13A4C4(v19, 2uLL, v16);
  v13 = *(v5 + 8);
  v13(v11, a2);
  return (v13)(v7, a2);
}

uint64_t objectdestroyTm_97()
{
  v1 = type metadata accessor for BillingAddressPicker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  v4 = type metadata accessor for AvailablePass(0);
  v57 = *(*(v4 - 1) + 48);
  if (!v57(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v7 = sub_1BE04CF34();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v8 = v3 + v4[6];
    v9 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v9 + 20);
      v11 = sub_1BE04DA84();
      (*(*(v11 - 8) + 8))(&v8[v10], v11);
    }

    v12 = (v3 + v4[7]);
    v13 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BE04AF64();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v12 + v14, 1, v15))
      {
        (*(v16 + 8))(v12 + v14, v15);
      }
    }

    v17 = v3 + v4[10];
    v18 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      if (*(v17 + 2) != 1)
      {
      }

      if (*(v17 + 9) != 1)
      {
      }

      v19 = *(v18 + 28);
      v20 = sub_1BE04AF64();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      if (!v22(&v17[v19], 1, v20))
      {
        (*(v21 + 8))(&v17[v19], v20);
      }

      v23 = *(v18 + 32);
      if (!v22(&v17[v23], 1, v20))
      {
        (*(v21 + 8))(&v17[v23], v20);
      }
    }

    v24 = (v3 + v4[12]);
    if (*v24)
    {
    }

    v25 = (v3 + v4[13]);
    if (*v25)
    {
    }
  }

  v26 = (v3 + v1[5]);
  if (*v26)
  {
  }

  v27 = (v3 + v1[6]);
  sub_1BD0D455C(*v27, v27[1], *(v27 + 16));

  v28 = v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v30 = *(v29 + 32);
      v31 = sub_1BE051AD4();
      (*(*(v31 - 8) + 8))(&v28[v30], v31);
    }
  }

  else
  {
  }

  v32 = v3 + v1[11];
  v33 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  if (!(*(*(v33 - 1) + 48))(v32, 1, v33))
  {
    v34 = &v32[v33[5]];
    if (!v57(v34, 1, v4))
    {
      type metadata accessor for WrappedPass(0);
      v35 = swift_getEnumCaseMultiPayload();
      if (v35 == 2)
      {

        v36 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v37 = sub_1BE04CF34();
        (*(*(v37 - 8) + 8))(v34 + v36, v37);
      }

      else if (v35 <= 1)
      {
      }

      v38 = v34 + v4[6];
      v39 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
      {

        v40 = *(v39 + 20);
        v41 = sub_1BE04DA84();
        (*(*(v41 - 8) + 8))(&v38[v40], v41);
      }

      v42 = (v34 + v4[7]);
      v43 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
      {

        v44 = *(v43 + 28);
        v45 = sub_1BE04AF64();
        v46 = *(v45 - 8);
        if (!(*(v46 + 48))(v42 + v44, 1, v45))
        {
          (*(v46 + 8))(v42 + v44, v45);
        }
      }

      v47 = v34 + v4[10];
      v48 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
      {
        if (*(v47 + 2) != 1)
        {
        }

        if (*(v47 + 9) != 1)
        {
        }

        v49 = *(v48 + 28);
        v50 = sub_1BE04AF64();
        v58 = *(v50 - 8);
        v51 = *(v58 + 48);
        if (!v51(&v47[v49], 1, v50))
        {
          (*(v58 + 8))(&v47[v49], v50);
        }

        v52 = *(v48 + 32);
        if (!v51(&v47[v52], 1, v50))
        {
          (*(v58 + 8))(&v47[v52], v50);
        }
      }

      v53 = (v34 + v4[12]);
      if (*v53)
      {
      }

      v54 = (v34 + v4[13]);
      if (*v54)
      {
      }
    }

    v55 = &v32[v33[6]];
    if (*v55)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);

  return swift_deallocObject();
}

unint64_t sub_1BD7EFFAC()
{
  result = qword_1EBD54550;
  if (!qword_1EBD54550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54548);
    sub_1BD0DE4F4(&qword_1EBD36170, &qword_1EBD54558);
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54550);
  }

  return result;
}

unint64_t sub_1BD7F0090()
{
  result = qword_1EBD54560;
  if (!qword_1EBD54560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54538);
    sub_1BD0DE4F4(&qword_1EBD54568, &qword_1EBD54540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54560);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = v0;
  v2 = type metadata accessor for BillingAddressPicker(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);

  v6 = (v0 + v4);
  v7 = type metadata accessor for AvailablePass(0);
  v68 = *(*(v7 - 1) + 48);
  if (!v68(v0 + v4, 1, v7))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v9 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v10 = sub_1BE04CF34();
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v11 = v6 + v7[6];
    v12 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 20);
      v14 = sub_1BE04DA84();
      (*(*(v14 - 8) + 8))(&v11[v13], v14);
    }

    v64 = (v3 + 32) & ~v3;
    v66 = v5;
    v15 = (v6 + v7[7]);
    v16 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {

      v17 = *(v16 + 28);
      v18 = sub_1BE04AF64();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v15 + v17, 1, v18))
      {
        (*(v19 + 8))(v15 + v17, v18);
      }
    }

    v20 = v6 + v7[10];
    v21 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      if (*(v20 + 2) != 1)
      {
      }

      v62 = v1;
      if (*(v20 + 9) != 1)
      {
      }

      v22 = *(v21 + 28);
      v23 = sub_1BE04AF64();
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);
      if (!v25(&v20[v22], 1, v23))
      {
        (*(v24 + 8))(&v20[v22], v23);
      }

      v26 = *(v21 + 32);
      v27 = v25(&v20[v26], 1, v23);
      v1 = v62;
      if (!v27)
      {
        (*(v24 + 8))(&v20[v26], v23);
      }
    }

    v28 = (v6 + v7[12]);
    if (*v28)
    {
    }

    v29 = (v6 + v7[13]);
    v4 = v64;
    v5 = v66;
    if (*v29)
    {
    }
  }

  v30 = (v6 + v2[5]);
  if (*v30)
  {
  }

  v31 = (v6 + v2[6]);
  sub_1BD0D455C(*v31, v31[1], *(v31 + 16));

  v32 = v6 + v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
    {

      v34 = *(v33 + 32);
      v35 = sub_1BE051AD4();
      (*(*(v35 - 8) + 8))(&v32[v34], v35);
    }
  }

  else
  {
  }

  v36 = v6 + v2[11];
  v37 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  if (!(*(*(v37 - 1) + 48))(v36, 1, v37))
  {
    v38 = &v36[v37[5]];
    if (!v68(v38, 1, v7))
    {
      type metadata accessor for WrappedPass(0);
      v39 = swift_getEnumCaseMultiPayload();
      v67 = v5;
      if (v39 == 2)
      {

        v40 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v41 = sub_1BE04CF34();
        (*(*(v41 - 8) + 8))(v38 + v40, v41);
      }

      else if (v39 <= 1)
      {
      }

      v42 = v38 + v7[6];
      v43 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
      {

        v44 = *(v43 + 20);
        v45 = sub_1BE04DA84();
        (*(*(v45 - 8) + 8))(&v42[v44], v45);
      }

      v46 = (v38 + v7[7]);
      v47 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
      {

        v48 = *(v47 + 28);
        v49 = sub_1BE04AF64();
        v50 = *(v49 - 8);
        if (!(*(v50 + 48))(v46 + v48, 1, v49))
        {
          (*(v50 + 8))(v46 + v48, v49);
        }
      }

      v51 = v38 + v7[10];
      v52 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
      {
        if (*(v51 + 2) != 1)
        {
        }

        v65 = v4;
        v63 = v1;
        if (*(v51 + 9) != 1)
        {
        }

        v53 = *(v52 + 28);
        v54 = sub_1BE04AF64();
        v69 = *(v54 - 8);
        v55 = *(v69 + 48);
        if (!v55(&v51[v53], 1, v54))
        {
          (*(v69 + 8))(&v51[v53], v54);
        }

        v56 = *(v52 + 32);
        v57 = v55(&v51[v56], 1, v54);
        v1 = v63;
        v4 = v65;
        if (!v57)
        {
          (*(v69 + 8))(&v51[v56], v54);
        }
      }

      v58 = (v38 + v7[12]);
      if (*v58)
      {
      }

      v59 = (v38 + v7[13]);
      v5 = v67;
      if (*v59)
      {
      }
    }

    v60 = &v36[v37[6]];
    if (*v60)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54450);

  return swift_deallocObject();
}

uint64_t sub_1BD7F0CD8()
{
  v1 = *(type metadata accessor for BillingAddressPicker(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = sub_1BD7E971C();
  return v2((v4 & 1) == 0, v3);
}

uint64_t sub_1BD7F0DBC()
{
  v1 = type metadata accessor for BillingAddressPicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1BD7EC054(v2, *(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));
}

unint64_t sub_1BD7F0E28()
{
  result = qword_1EBD54590;
  if (!qword_1EBD54590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54518);
    sub_1BD7F0EE0();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54590);
  }

  return result;
}

unint64_t sub_1BD7F0EE0()
{
  result = qword_1EBD54598;
  if (!qword_1EBD54598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD545A0);
    sub_1BD7F0090();
    sub_1BD0DE4F4(&qword_1EBD54568, &qword_1EBD54540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54598);
  }

  return result;
}

unint64_t sub_1BD7F0F98()
{
  result = qword_1EBD545A8;
  if (!qword_1EBD545A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54588);
    sub_1BD0DE4F4(&qword_1EBD545B0, qword_1EBD545B8);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD545A8);
  }

  return result;
}

uint64_t sub_1BD7F1128(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BillingAddressPicker(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1BD7F11AC(void *a1)
{
  v3 = *(type metadata accessor for BillingAddressPicker(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1BD7ED0F8(a1, v1 + v4, v1 + v7, v9, v10);
}

void sub_1BD7F12BC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1BD359720(319, &qword_1EBD40448, &qword_1EBD40450, &unk_1BE0D7250, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD7F1380(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1BE051AD4() - 8);
  v10 = *(v9 + 80);
  v11 = *(v6 + 64);
  v12 = ((-17 - v10) | v10) - *(v9 + 64);
  if (v12 >= 0xFFFFFFFFFFFFFFF7)
  {
    v12 = -9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v13 = -2 - (((-3 - (v10 | 7) - v11) & 0xFFFFFFFFFFFFFFFELL | v10 & 0xFFFFFFFFFFFFFFF8 | 6) + v12);
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_9;
    }

    v16 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 >= 2)
    {
LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      v21 = v8 + (v13 | v17);
      return (v21 + 1);
    }
  }

LABEL_27:
  if (v7 < 0xFE)
  {
    v20 = *(a1 + v11);
    if (v20 < 2)
    {
      return 0;
    }

    v21 = (v20 + 2147483646) & 0x7FFFFFFF;
    return (v21 + 1);
  }

  v18 = *(v6 + 48);

  return v18(a1, v7, v5);
}

void sub_1BD7F15E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1BE051AD4() - 8);
  v12 = *(v11 + 80);
  v13 = *(v8 + 64);
  v14 = (-3 - (v12 | 7) - v13) & 0xFFFFFFFFFFFFFFFELL | v12 & 0xFFFFFFFFFFFFFFF8 | 6;
  v15 = ((-17 - v12) | v12) - *(v11 + 64);
  if (v15 >= 0xFFFFFFFFFFFFFFF7)
  {
    v15 = -9;
  }

  v16 = -2 - (v14 + v15);
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    a1[v13] = a2 + 1;
  }

  else
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }
}

unint64_t sub_1BD7F1940()
{
  result = qword_1EBD54668;
  if (!qword_1EBD54668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54640);
    sub_1BD7F19C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54668);
  }

  return result;
}

unint64_t sub_1BD7F19C4()
{
  result = qword_1EBD54670;
  if (!qword_1EBD54670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54660);
    sub_1BD7F1A50();
    sub_1BD0F13A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54670);
  }

  return result;
}

unint64_t sub_1BD7F1A50()
{
  result = qword_1EBD54678;
  if (!qword_1EBD54678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54658);
    sub_1BD7EDCE0(&qword_1EBD39D60, MEMORY[0x1E69BC960]);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54678);
  }

  return result;
}

uint64_t sub_1BD7F1B44(uint64_t a1, void *a2)
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54680));
  v3 = a2;
  sub_1BE048964();
  sub_1BE048C84();
  return sub_1BE04F894();
}

id PKAddressFieldPickerViewHosting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKAddressFieldPickerViewHosting.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKAddressFieldPickerViewHosting();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PKAddressFieldPickerViewHosting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKAddressFieldPickerViewHosting();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7F1DE4(uint64_t *a1)
{
  v2 = *a1;
  v8 = a1[1];
  v9 = v2;
  v7 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 1);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = a1[4];
  sub_1BE048C84();
  sub_1BD0DE19C(&v9, v6, &qword_1EBD546A8);
  sub_1BD0DE19C(&v8, v6, &qword_1EBD546B0);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD546A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD546A0);
  sub_1BD0DE4F4(&qword_1EBD546B8, &qword_1EBD546A8);
  sub_1BD0DE4F4(&qword_1EBD54698, &qword_1EBD546A0);
  sub_1BD7F2714();
  return sub_1BE0519D4();
}

uint64_t sub_1BD7F1F7C(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v14 = v4;
  if (!v4)
  {
    v5 = 0;
    v6 = 0;
    if ((a2[2] & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = v3 == v4;
  v6 = v3 == v4;
  if (a2[2])
  {
LABEL_3:
    v6 = v5;
  }

LABEL_4:
  v13 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(a2 + 1);
  *(v7 + 24) = *a2;
  *(v7 + 40) = v8;
  *(v7 + 56) = a2[4];
  *(v7 + 64) = v3;
  MEMORY[0x1EEE9AC00](v7, v9);
  sub_1BD0DE19C(&v13, v12, &qword_1EBD546A8);
  sub_1BD0DE19C(&v14, v12, &qword_1EBD546B0);
  sub_1BE048964();
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD546C8);
  sub_1BD0DE4F4(&qword_1EBD546D0, &qword_1EBD546C8);
  return sub_1BE051704();
}

id sub_1BD7F213C@<X0>(void *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F504();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD546D8);
  return sub_1BD7F21AC(a1, a2, a3, a4 + *(v8 + 44));
}

id sub_1BD7F21AC@<X0>(void *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v54) = a3;
  v7 = sub_1BE04F6E4();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41608);
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD546E0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v56 = &v47 - v21;
  result = [a1 displayName];
  if (result)
  {
    v23 = result;
    v24 = sub_1BE052434();
    v26 = v25;

    v57 = v24;
    v58 = v26;
    sub_1BD0DDEBC();
    v27 = sub_1BE0506C4();
    v29 = v28;
    v31 = v30;
    v52 = v10;
    v53 = v17;
    if (a2)
    {
      sub_1BE0513B4();
    }

    else
    {
      sub_1BE051464();
    }

    v32 = sub_1BE050564();
    v34 = v33;
    v51 = v35;
    v37 = v36;

    sub_1BD0DDF10(v27, v29, v31 & 1);

    v38 = 1;
    if (v54)
    {
      v39 = sub_1BE051574();
      v54 = v39;
      v40 = sub_1BE0511D4();
      KeyPath = swift_getKeyPath();
      v57 = v39;
      v58 = KeyPath;
      v59 = v40;
      v42 = v48;
      sub_1BE04F6B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41620);
      sub_1BD2F17DC();
      sub_1BE050DA4();
      (*(v49 + 8))(v42, v50);

      sub_1BD7F2864(v13, v56);
      v38 = 0;
    }

    v43 = v56;
    (*(v55 + 56))(v56, v38, 1, v52);
    v44 = v53;
    sub_1BD0DE19C(v43, v53, &qword_1EBD546E0);
    *a4 = v32;
    *(a4 + 8) = v34;
    v45 = v51 & 1;
    *(a4 + 16) = v51 & 1;
    *(a4 + 24) = v37;
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD546E8);
    sub_1BD0DE19C(v44, a4 + *(v46 + 64), &qword_1EBD546E0);
    sub_1BD0D7F18(v32, v34, v45);
    sub_1BE048C84();
    sub_1BD7F27FC(v43);
    sub_1BD7F27FC(v44);
    sub_1BD0DDF10(v32, v34, v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7F25D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54688);
  sub_1BD7F265C();
  return sub_1BE0504E4();
}

unint64_t sub_1BD7F265C()
{
  result = qword_1EBD54690;
  if (!qword_1EBD54690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54688);
    sub_1BD0DE4F4(&qword_1EBD54698, &qword_1EBD546A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54690);
  }

  return result;
}

unint64_t sub_1BD7F2714()
{
  result = qword_1EBD546C0;
  if (!qword_1EBD546C0)
  {
    sub_1BD7F276C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD546C0);
  }

  return result;
}

unint64_t sub_1BD7F276C()
{
  result = qword_1EBD3DA68;
  if (!qword_1EBD3DA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3DA68);
  }

  return result;
}

uint64_t sub_1BD7F27B8()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return (*(v0 + 48))(*(v0 + 64));
  }

  return result;
}

uint64_t sub_1BD7F27FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD546E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD7F2864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41608);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD7F28D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1BE04AAB4();
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

void sub_1BD7F2940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v12 = sub_1BE04CA44();

  if (v12)
  {
    sub_1BE04D084();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "AuthenticationWrapper - already authenticating, ignoring evaluation request", v15, 2u);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BE04CA54();

    v16 = *(v3 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a2;
    v18[4] = a3;
    aBlock[4] = sub_1BD7F5050;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD20815C;
    aBlock[3] = &block_descriptor_184;
    v19 = _Block_copy(aBlock);
    sub_1BE048964();

    [v16 evaluateRequest:a1 withCompletion:v19];
    _Block_release(v19);
  }
}

void sub_1BD7F2C38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v44 - v4;
  v48 = sub_1BE04CB04();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v7);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE04C864();
  v47 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v13 = *(aBlock + qword_1EBDAADA8);
  v12 = *(aBlock + qword_1EBDAADA8 + 8);
  v14 = *(aBlock + qword_1EBDAADA8 + 32);
  v53 = *(aBlock + qword_1EBDAADA8 + 24);
  v15 = v13;
  v16 = v14;
  sub_1BE048964();
  v52 = v12;
  swift_unknownObjectRetain();

  v17 = v15;
  v51 = v16;
  v18 = [v16 paymentRequest];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v18 appleIDAuthenticationContext];
  if (!v20)
  {

LABEL_10:
    v34 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    [v17 didAuthenticateWithCredential_];

    swift_unknownObjectRelease();

    return;
  }

  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v22 = sub_1BE04CA44();

  if (v22)
  {
    [*&v0[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator] cancelEvaluationWithOptions_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v23 = aBlock;
    sub_1BE04CA54();
    v45 = v19;
    v46 = v17;
    v44 = v1;
    v24 = *(v23 + qword_1EBD55580);
    v25 = *(v23 + qword_1EBD55580 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v24;
    v55 = v25;
    v19 = v45;
    v17 = v46;
    v1 = v44;
    sub_1BE04D8C4();
  }

  v26 = [v21 pk_AKAppleIDAuthenticationInAppContext];
  if (v26)
  {
    v27 = v26;
    [v26 setDelegate_];
    v28 = v27;
    if ([v28 isContextEligibleForPasscodeAuth])
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
      if (v29)
      {
        v30 = v29;
        v31 = swift_allocObject();
        *(v31 + 16) = v1;
        v58 = sub_1BD7F505C;
        v59 = v31;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = sub_1BD7F3EA0;
        v57 = &block_descriptor_13_6;
        v32 = _Block_copy(&aBlock);
        v33 = v1;

        [v30 authenticateWithContext:v28 completion:v32];

        swift_unknownObjectRelease();
        _Block_release(v32);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v45 = v28;
      v35 = v1;
      sub_1BE04C854();
      v36 = v47;
      v37 = v49;
      (*(v47 + 16))(v49, v11, v50);
      v38 = *MEMORY[0x1E69BCAB8];
      v39 = *(v6 + 104);
      v46 = v21;
      v39(v37, v38, v48);
      [v17 setShowingExternalPasswordEntry_];
      swift_getKeyPath();
      swift_getKeyPath();
      v40 = v5;
      v41 = v6;
      sub_1BE04D8B4();

      v43 = v48;
      v42 = v49;
      (*(v41 + 16))(v40, v49, v48);
      (*(v41 + 56))(v40, 0, 1, v43);
      sub_1BE04CB24();

      swift_unknownObjectRelease();

      (*(v41 + 8))(v42, v43);
      (*(v36 + 8))(v11, v50);
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD7F3378()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

char *sub_1BD7F33EC(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v13 = a1;
  type metadata accessor for AuthenticatorModel();
  sub_1BE048964();
  sub_1BE04D874();
  swift_endAccess();
  *&v3[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator] = a2;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator];
  v10 = v8;
  [v9 setDelegate_];

  return v10;
}

id sub_1BD7F3500()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
  [*&v0[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator] invalidate];
  [*&v0[v2] setDelegate_];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AuthenticatorWrapper()
{
  result = qword_1EBD36178;
  if (!qword_1EBD36178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7F3720()
{
  sub_1BD4259F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD7F37C8(void *a1, uint64_t a2, void (*a3)(void *))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = a1;
      sub_1BE04D8B4();

      sub_1BE04CA54();
    }

    else
    {
      v8 = a1;
    }

    a3(a1);
  }

  else
  {
    sub_1BE053994();
    __break(1u);
  }
}

void sub_1BD7F38FC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE04C974();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54820);
    v24 = sub_1BE052224();
    sub_1BD7F3BD4(v24, a2);
    v16 = v24;
  }

  else
  {
    sub_1BE04D084();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Error authenticating: Invalid auth results", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v20 = a3 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 104))(v10, *MEMORY[0x1E69BCA38], v6);
      (*(v21 + 8))(v10, ObjectType, v21);
      swift_unknownObjectRelease();
      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_1BD7F3BD4(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v15[4] = a1;
  aBlock[4] = sub_1BD7F5064;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_26_1;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v21);
}

uint64_t sub_1BD7F3EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54820);
    v4 = sub_1BE052244();
  }

  sub_1BE048964();
  v6 = a3;
  v5(v4, a3);
}

void sub_1BD7F4048(uint64_t a1, char *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v58[-v7];
  v9 = sub_1BE04C974();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1BE04D214();
  v63 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v58[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v58[-v20];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (a2)
    {
      v65 = a2;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      sub_1BD0E5E8C(0, &qword_1EBD45E80);
      if (swift_dynamicCast())
      {
        v62 = v10;
        v25 = v64;
        sub_1BE04D084();
        v26 = v25;
        v27 = sub_1BE04D204();
        v28 = sub_1BE052C54();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v65 = v60;
          *v29 = 136315138;
          v30 = [v26 localizedDescription];
          v31 = sub_1BE052434();
          v59 = v28;
          v32 = v31;
          v61 = v26;
          v33 = v9;
          v35 = v34;

          v36 = sub_1BD123690(v32, v35, &v65);
          v9 = v33;
          v26 = v61;

          *(v29 + 4) = v36;
          _os_log_impl(&dword_1BD026000, v27, v59, "Error authenticating: %s", v29, 0xCu);
          v37 = v60;
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x1BFB45F20](v37, -1, -1);
          MEMORY[0x1BFB45F20](v29, -1, -1);
        }

        (*(v63 + 8))(v21, v14);
        v38 = [v26 domain];
        v39 = sub_1BE052434();
        v41 = v40;

        if (v39 == sub_1BE052434() && v41 == v42)
        {
        }

        else
        {
          v50 = sub_1BE053B84();

          if ((v50 & 1) == 0)
          {
LABEL_23:

            return;
          }
        }

        v51 = [v26 code];
        if (v51 == -7006)
        {
          v56 = &v23[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v53 = *(v56 + 1);
            ObjectType = swift_getObjectType();
            v55 = MEMORY[0x1E69BCA38];
            goto LABEL_22;
          }
        }

        else if (v51 == -7003)
        {
          v52 = &v23[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v53 = *(v52 + 1);
            ObjectType = swift_getObjectType();
            v55 = MEMORY[0x1E69BCA78];
LABEL_22:
            v57 = v62;
            (*(v62 + 104))(v13, *v55, v9);
            (*(v53 + 8))(v13, ObjectType, v53);

            swift_unknownObjectRelease();
            (*(v57 + 8))(v13, v9);
            return;
          }
        }

        goto LABEL_23;
      }
    }

    if (a3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = a3;
      sub_1BE04D8B4();

      sub_1BE04CB64();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v44 = sub_1BE04CB04();
      (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
      sub_1BE04CB24();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v45 = *&v65[qword_1EBDAADA8];

      v46 = v43;
      [v45 didAuthenticateWithCredential_];
    }

    else
    {
      sub_1BE04D084();
      v47 = sub_1BE04D204();
      v48 = sub_1BE052C54();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1BD026000, v47, v48, "Received empty authResults", v49, 2u);
        MEMORY[0x1BFB45F20](v49, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v18, v14);
    }
  }
}

void sub_1BD7F4990()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v2 = v8;
    v3 = v8 + qword_1EBDAADA8;
    v8 = *(v8 + qword_1EBDAADA8);
    v9 = *(v3 + 16);
    v10 = *(v3 + 32);
    v4 = v10;
    v11 = *(&v8 + 1);
    v12 = *(&v9 + 1);
    sub_1BE048964();
    v5 = v8;
    sub_1BD0DE19C(&v11, &v7, &qword_1EBD3D490);
    sub_1BD0DE19C(&v12, &v7, &qword_1EBD40150);
    v6 = v4;
    sub_1BE048964();
    sub_1BDA74FEC(&v8, v2, 0, 0);

    sub_1BD0DE53C(&v11, &qword_1EBD3D490);
    sub_1BD0DE53C(&v12, &qword_1EBD40150);
  }
}

uint64_t sub_1BD7F4C7C(const char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59710);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v12, a1, v13, 2u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v14 = sub_1BE04CA04();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_1BE04CA24();
}

uint64_t sub_1BD7F4F54@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD7F4FD4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD7F5070()
{
  v1 = sub_1BE04C974();
  v20 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v5 = *(v21 + qword_1EBDAADA8);
  v6 = *(v21 + qword_1EBDAADA8 + 32);
  v7 = *(v21 + qword_1EBDAADA8 + 24);
  v8 = v5;
  v9 = v6;
  sub_1BE048964();
  swift_unknownObjectRetain();

  v10 = [v9 paymentRequest];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 _isAMPPayment];

    if (v12 && (v13 = v0 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate, swift_unknownObjectWeakLoadStrong()))
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      v16 = *MEMORY[0x1E69BCA80];
      v19 = v8;
      v17 = v20;
      (*(v20 + 104))(v4, v16, v1);
      (*(v14 + 8))(v4, ObjectType, v14);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v17 + 8))(v4, v1);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD7F52D4(void *a1, void *a2)
{
  sub_1BD7F3BD4(a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = *(v3 + qword_1EBDAADA8);

  [v2 setShowingExternalPasswordEntry_];
}

void sub_1BD7F5384(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_1BE04C974();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = PKAuthenticatorEvaluationStateDescription();
  v12 = sub_1BE052434();
  v14 = v13;

  sub_1BE04D084();
  sub_1BE048C84();
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C54();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1BD123690(v12, v14, &v36);
    _os_log_impl(&dword_1BD026000, v15, v16, "AuthenticatorWrapper - didTransitionToEvaluationState: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v35;
  sub_1BE04D8B4();

  v20 = v34;
  sub_1BD83CA74(a1, v34, 0, 0, 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v21 = *(v36 + qword_1EBDAADA8 + 32);

  v22 = [v21 paymentRequest];

  if (!v22)
  {
    __break(1u);
    return;
  }

  v23 = [v22 _isAMPPayment];

  if ((v20 - 1) <= 1)
  {
    if ((v23 & 1) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v20 == 3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 == 1)
  {
LABEL_11:
    v25 = v19 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      ObjectType = swift_getObjectType();
      v29 = v31;
      v28 = v32;
      v30 = v33;
      (*(v32 + 104))(v31, *MEMORY[0x1E69BCA40], v33);
      (*(v26 + 8))(v29, ObjectType, v26);
      swift_unknownObjectRelease();
      (*(v28 + 8))(v29, v30);
    }
  }
}

uint64_t sub_1BD7F57A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = PKAuthenticatorCoachingStateDescription();
  v10 = sub_1BE052434();
  v12 = v11;

  sub_1BE04D084();
  sub_1BE048C84();
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = sub_1BD123690(v10, v12, &v21);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_1BD026000, v13, v14, "AuthenticatorWrapper - didTransitionToCoachingState %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1BFB45F20](v17, -1, -1);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD83CA74(0, 0, 1, a1, 0);
}

uint64_t sub_1BD7F5A00(void *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a2;
  v4 = sub_1BE04C9B4();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59710);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v21 - v8;
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C54();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1BD026000, v15, v16, "AuthenticatorWrapper - presentPasscodeViewController", v17, 2u);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (a1)
  {
    v19 = a1;
    result = sub_1BE04C9A4();
    if (v22)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      sub_1BE04C9E4();
      v20 = sub_1BE04CA04();
      (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
      sub_1BE04CA24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7F5CF8(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v33 = a2;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59710);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v31 - v5;
  v34 = sub_1BE04C9B4();
  v7 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BD026000, v20, v21, "AuthenticatorWrapper - presentPassphraseViewController", v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  result = (*(v16 + 8))(v19, v15);
  v24 = v35;
  if (v35)
  {
    v25 = swift_allocObject();
    v26 = v32;
    *(v25 + 16) = v32;
    v27 = objc_allocWithZone(type metadata accessor for AuthenticatorPassphraseViewController());
    v28 = v26;
    sub_1BDA16660(v24, sub_1BD7F60D8, v25);
    sub_1BE04C9A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v29 = v34;
    result = (*(v7 + 16))(v10, v14, v34);
    if (v33)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      sub_1BE04C9E4();
      v30 = sub_1BE04CA04();
      (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
      sub_1BE04CA24();

      return (*(v7 + 8))(v14, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD7F6138(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem__isManualProvisioning] = &type metadata for IsManualProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_identifier];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000001BE13B030;
  *&v2[OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_product] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD7F62D8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v7 + 8))(v10, v6);
  v13 = [objc_allocWithZone(PKPaymentSetupPurchaseViewController) initWithProvisioningController:v11 context:v12 setupDelegate:0 product:*(v3 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_product)];

  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_viewController) = v13;
  v15 = v13;

  if (v15)
  {
    [v15 setFlowDelegate_];
    sub_1BE052434();
    v16 = sub_1BE04BB74();

    [v15 setReporter_];

    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_185;
    v17 = _Block_copy(aBlock);
    sub_1BE048964();

    [v15 preflightWithCompletion_];
    _Block_release(v17);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1BD7F6530()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7F656C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD7F65BC()
{
  KeyPath = swift_getKeyPath();
  v2 = v0;
  sub_1BD12F7F0(1, v2, KeyPath);

  v3 = *&v2[OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_viewController];
  v4 = v3;
  return v3;
}

void sub_1BD7F6680(void *a1, void *a2)
{
  v4 = [a1 purchaseController];
  v5 = [v4 acceptedTerms];

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_context);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_product);
  v8 = type metadata accessor for ProvisioningCredentialFlowSection();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
  *v10 = 0x100000000000001ALL;
  v10[1] = 0x80000001BE1199C0;
  v11 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v6;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = a2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v7;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = v5;
  v9[v11] = 1;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = v7;
  sub_1BE048964();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = v2 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BBD7D0, v14, &off_1F3BCBBE8, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD7F68D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_context);
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_product);
  v3 = type metadata accessor for ProvisioningReaderModeDetailsFlowItem();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem__isManualProvisioning] = &type metadata for IsManualProvisioning;
  *&v4[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v4[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_identifier];
  *v5 = 0xD000000000000019;
  *(v5 + 1) = 0x80000001BE123E10;
  *&v4[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_context] = v1;
  *&v4[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_product] = v2;
  v11.receiver = v4;
  v11.super_class = v3;
  sub_1BE048964();
  v6 = v2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = v0 + OBJC_IVAR____TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3BBD7D0, v7, &off_1F3B92EF8, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1BD7F6A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_identifier];
  *v8 = 0xD00000000000001ALL;
  *(v8 + 1) = 0x80000001BE0FAD00;
  *&v3[OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_screens] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1BD7F6BD8(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_screens];
  KeyPath = swift_getKeyPath();
  sub_1BE048C84();
  v5 = v1;
  sub_1BD12F5A8(v3, v5, KeyPath);

  v6 = *(v3 + 16);
  result = v5;
  v7 = result;
  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v3 + 16))
    {
      v18 = *(v3 + 32 + v8);
      sub_1BD7F6DA4(&v18);
      v11 = v10;
      v13 = v12;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BD1D7488(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1BD1D7488((v14 > 1), v15 + 1, 1, v9);
        v9 = result;
      }

      ++v8;
      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      if (v6 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_13:

    type metadata accessor for UIStaticFlowSection();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = v17;
    *(v17 + 40) = 0xD000000000000013;
    *(v17 + 48) = 0x80000001BE11E190;
    *(v17 + 56) = v9;
    *(v17 + 32) = 514;
  }

  return result;
}

void sub_1BD7F6DA4(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_context);
  switch(*a1)
  {
    case 1:
      v25 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v26 = objc_allocWithZone(type metadata accessor for ProvisioningExpressPassSelectionFlowItem());
      sub_1BE048964();
      sub_1BD91C564(v2, v25);

      break;
    case 2:
      v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      type metadata accessor for ProvisioningMoreInfoFlowSection();
      v20 = swift_allocObject();
      v20[5] = 0;
      swift_unknownObjectWeakInit();
      v20[6] = 0xD000000000000013;
      v20[7] = 0x80000001BE13B160;
      v20[8] = &type metadata for ProvisioningScreenDebugConfiguration;
      v20[2] = v2;
      v20[3] = v19;
      sub_1BE048964();
      v21 = v19;
      break;
    case 3:
      v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      sub_1BE048964();
      sub_1BD29011C(v2, v22);
      break;
    case 4:
      v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v9 = objc_allocWithZone(type metadata accessor for ProvisioningPrecursorEducationFlowItem());
      sub_1BE048964();
      v10 = v8;
      sub_1BD7D66C0(v2, v10);

      break;
    case 5:
      v27 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v28 = type metadata accessor for ProvisioningOptionalExpressSetupFlowItem();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v30 = &v29[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_identifier];
      *v30 = 0xD00000000000001CLL;
      *(v30 + 1) = 0x80000001BE13B140;
      *&v29[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
      *&v29[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_context] = v2;
      *&v29[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_provisionedPasses] = v27;
      v50.receiver = v29;
      v50.super_class = v28;
      sub_1BE048964();
      v31 = v27;
      objc_msgSendSuper2(&v50, sel_init);
      break;
    case 6:
      v38 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v39 = type metadata accessor for ProvisioningWatchExtensionInstallFlowItem();
      v40 = objc_allocWithZone(v39);
      *&v40[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v41 = &v40[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_identifier];
      *v41 = 0xD00000000000001DLL;
      *(v41 + 1) = 0x80000001BE13B120;
      *&v40[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
      *&v40[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_context] = v2;
      *&v40[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_provisionedPasses] = v38;
      v51.receiver = v40;
      v51.super_class = v39;
      sub_1BE048964();
      v42 = v38;
      objc_msgSendSuper2(&v51, sel_init);
      break;
    case 7:
      v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v24 = objc_allocWithZone(type metadata accessor for ProvisioningMakeDefaultFlowItem());
      sub_1BE048964();
      sub_1BD185AC0(v2, v23);
      break;
    case 8:
      v45 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v46 = type metadata accessor for ProvisioningAMPEnrollmentFlowItem();
      v47 = objc_allocWithZone(v46);
      *&v47[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v48 = &v47[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_identifier];
      *v48 = 0xD000000000000015;
      *(v48 + 1) = 0x80000001BE13B100;
      *&v47[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
      *&v47[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_context] = v2;
      *&v47[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_provisionedPasses] = v45;
      v52.receiver = v47;
      v52.super_class = v46;
      sub_1BE048964();
      v49 = v45;
      objc_msgSendSuper2(&v52, sel_init);
      break;
    case 9:
      v14 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v15 = type metadata accessor for ProvisioningEducationFlowItem();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v17 = &v16[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_identifier];
      *v17 = 0xD000000000000011;
      *(v17 + 1) = 0x80000001BE13B0E0;
      *&v16[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
      *&v16[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_context] = v2;
      *&v16[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_provisionedPasses] = v14;
      v53.receiver = v16;
      v53.super_class = v15;
      sub_1BE048964();
      v18 = v14;
      objc_msgSendSuper2(&v53, sel_init);
      break;
    case 0xA:
      v43 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v44 = objc_allocWithZone(type metadata accessor for ProvisioningCarEducationFlowItem());
      sub_1BE048964();
      sub_1BD2993F8(v2, v43);
      break;
    case 0xB:
      v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v7 = objc_allocWithZone(type metadata accessor for ProvisioningAutoReloadSetUpFlowItem());
      sub_1BE048964();
      sub_1BD7A5D58(v2, v6);
      break;
    case 0xC:
      v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      type metadata accessor for ProvisioningAddToWatchFlowItem();
      v12 = swift_allocObject();
      v12[4] = &type metadata for HasRemainingCredentialsToProvision;
      v12[6] = 0;
      swift_unknownObjectWeakInit();
      v12[7] = 0xD000000000000012;
      v12[8] = 0x80000001BE13B0C0;
      v12[9] = &type metadata for ProvisioningScreenDebugConfiguration;
      v12[2] = v2;
      v12[3] = v11;
      sub_1BE048964();
      v13 = v11;
      break;
    case 0xD:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BE0B7020;
      v33 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      *(v32 + 32) = v33;
      v34 = type metadata accessor for ProvisioningVerificationNoticeFlowItem();
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v36 = &v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_identifier];
      *v36 = 0xD00000000000001ALL;
      *(v36 + 1) = 0x80000001BE12FFD0;
      *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
      *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_context] = v2;
      *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_provisionedPassesGroups] = v32;
      v54.receiver = v35;
      v54.super_class = v34;
      v37 = v33;
      sub_1BE048964();
      objc_msgSendSuper2(&v54, sel_init);
      break;
    default:
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_provisionedPasses);
      v4 = objc_allocWithZone(type metadata accessor for ProvisioningExternalDeviceFlowItem());
      sub_1BE048964();
      v5 = v3;
      sub_1BD59FB2C(v2, v5);

      break;
  }
}

uint64_t sub_1BD7F751C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7F7558(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI26ProvisioningScreenDebugger_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD7F762C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69DDAB0] object:0];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69DDBC8] object:0];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x1E69BC2F8] object:0];

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1BD7F77EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B9C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v72 - v10;
  v12 = sub_1BE04BAC4();
  v80 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1BE04BD74();
  v16 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v17);
  v84 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v74 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v73 = &v72 - v24;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v72 - v28;
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, sel_loadView, v27);
  v30 = [v1 dockView];
  if (!v30)
  {
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  v78 = v12;
  v79 = v7;
  v32 = [v30 footerView];

  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v76 = v3;
  v77 = v32;
  [v1 setPreferPrimaryButtonInNavigationBar_];
  v33 = *(v16 + 104);
  v83 = *MEMORY[0x1E69B80D8];
  v34 = v1;
  v35 = v85;
  v75 = v16 + 104;
  v82 = v33;
  v33(v29);
  v36 = PKPassKitBundle();
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  sub_1BE04B6F4();

  v38 = *(v16 + 8);
  v81 = v16 + 8;
  v38(v29, v35);
  v39 = sub_1BE052404();

  [v34 setPrimaryButtonTitleText_];

  sub_1BE04BC34();
  sub_1BE04BAA4();
  (*(v80 + 8))(v15, v78);
  v40 = v79;
  v41 = v76;
  (*(v4 + 104))(v79, *MEMORY[0x1E69B7FB0], v76);
  LOBYTE(v39) = sub_1BE04B9B4();
  v42 = *(v4 + 8);
  v42(v40, v41);
  v42(v11, v41);
  v43 = &selRef_setRowModel_;
  v44 = v34;
  if ((v39 & 1) == 0)
  {
    v46 = v77;
    v55 = [v77 skipCardButton];
    if (v55)
    {
      v50 = v55;
      v51 = v38;
      [v55 addTarget:v34 action:sel__skipCardButtonPressed forControlEvents:0x2000];
      v52 = v74;
      v48 = v85;
      v82(v74, v83, v85);
      v56 = PKPassKitBundle();
      if (v56)
      {
        v54 = v56;
        goto LABEL_12;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v45 = [*&v34[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_method] type];
  v46 = v77;
  v47 = v84;
  v48 = v85;
  if (v45 == 2)
  {
    goto LABEL_13;
  }

  v49 = [v77 secondaryActionButton];
  if (!v49)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v50 = v49;
  v51 = v38;
  [v49 addTarget:v44 action:sel__sendNewCodeButtonPressed forControlEvents:0x2000];
  v52 = v73;
  v82(v73, v83, v48);
  v53 = PKPassKitBundle();
  if (!v53)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v54 = v53;
LABEL_12:
  sub_1BE04B6F4();

  v57 = v52;
  v38 = v51;
  v51(v57, v48);
  v58 = sub_1BE052404();

  v43 = &selRef_setRowModel_;
  [v50 setTitle:v58 forState:0];

  v47 = v84;
LABEL_13:
  if (v44[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_showChangeMethodButton] == 1)
  {
    v59 = [v46 tertiaryActionButton];
    if (v59)
    {
      v60 = v59;
      [v59 addTarget:v44 action:sel__selectDifferentMethodButtonPressed forControlEvents:0x2000];
      v82(v47, v83, v48);
      v61 = PKPassKitBundle();
      if (v61)
      {
        v62 = v61;
        sub_1BE04B6F4();

        v38(v47, v48);
        v63 = sub_1BE052404();

        [v60 v43[406]];

        goto LABEL_17;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_17:
  v64 = [v44 headerView];
  v65 = PKOBKCardHeaderViewSize(3);
  if (v64)
  {
    v67 = v65;
    v68 = v66;
    v69 = *&v44[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationController];
    v70 = v64;
    v71 = [v69 passSnapshot];
    [v70 setPassSnapshot:v71 withSize:0 animated:0 needsCorners:{v67, v68}];

    v46 = v70;
  }
}

void sub_1BD7F7FEC()
{
  v1 = v0;
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver;
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver))
  {
    sub_1BE04BB94();
    v8 = sub_1BE04B934();
    (*(v3 + 8))(v6, v2);
    if ([v8 respondsToSelector_])
    {
      [v8 noteForegroundVerificationObserverActive_];
    }

    swift_unknownObjectRelease();
    v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_method);
    v10 = [v9 identifier];
    v11 = sub_1BE052434();
    v13 = v12;

    MEMORY[0x1BFB3F610](v11, v13);

    v14 = objc_allocWithZone(MEMORY[0x1E69B8ED8]);
    v15 = sub_1BE052404();

    v16 = [v14 initWithVerificationMethod:v9 identifier:v15];

    [v16 setDelegate_];
    [v16 setSkipSourceCheck_];
    v17 = *(v1 + v7);
    *(v1 + v7) = v16;
    v18 = v16;

    [v18 startObservingVerificationSourceWithTimeout_];
  }
}

void sub_1BD7F82FC()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 fieldsModel];
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v7 paymentSetupFieldWithIdentifier_];

  if (v9)
  {
    v10 = [v0 dockView];
    if (v10)
    {
      v11 = v10;
      [v10 setButtonsEnabled_];
      v12 = [v11 primaryButton];
      if (v12)
      {
        v13 = v12;
        [v12 setShowSpinner_];
        [v13 setEnabled_];

        sub_1BD7F89DC();
        v14 = [objc_allocWithZone(MEMORY[0x1E69B8EE8]) init];
        v15 = [*&v0[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_method] identifier];
        if (!v15)
        {
          sub_1BE052434();
          v15 = sub_1BE052404();
        }

        [v14 setMethodIdentifier_];

        v16 = [*&v0[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_methodGroup] identifier];
        if (!v16)
        {
          sub_1BE052434();
          v16 = sub_1BE052404();
        }

        [v14 setMethodGroupIdentifier_];

        v17 = [v9 submissionString];
        if (!v17)
        {
          sub_1BE052434();
          v17 = sub_1BE052404();
        }

        [v14 setVerificationCode_];

        v18 = *&v0[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationController];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1BE0B7020;
        *(v19 + 32) = v14;
        sub_1BD0E5E8C(0, &qword_1EBD45EF8);
        v20 = v14;
        v21 = sub_1BE052724();

        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1BD7FC2E8;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD4315EC;
        aBlock[3] = &block_descriptor_22_9;
        v23 = _Block_copy(aBlock);

        [v18 submitVerificationEntries:v21 completion:v23];
        _Block_release(v23);

        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1BE04D0C4();
  v24 = sub_1BE04D204();
  v25 = sub_1BE052C34();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1BD026000, v24, v25, "Failed to find OTP field", v26, 2u);
    MEMORY[0x1BFB45F20](v26, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
}

uint64_t sub_1BD7F87E0()
{
  v1 = v0;
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
  if (v8)
  {
    [v8 reportButtonPressed_];
    [v8 reportPageCompleted:0 context:0];
  }

  v9 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver;
  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver);
  if (v10)
  {
    v11 = v10;
    sub_1BE04BB94();
    v12 = sub_1BE04B934();
    (*(v3 + 8))(v7, v2);
    if ([v12 respondsToSelector_])
    {
      [v12 noteForegroundVerificationObserverActive_];
    }

    swift_unknownObjectRelease();
    [v11 stop];

    v13 = *(v1 + v9);
    *(v1 + v9) = 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = result + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v15, &off_1F3B9AAB8, ObjectType, v17);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD7F89DC()
{
  v1 = v0;
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver;
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver);
  if (v8)
  {
    v9 = v8;
    sub_1BE04BB94();
    v10 = sub_1BE04B934();
    (*(v3 + 8))(v6, v2);
    if ([v10 respondsToSelector_])
    {
      [v10 noteForegroundVerificationObserverActive_];
    }

    swift_unknownObjectRelease();
    [v9 stop];

    v11 = *(v1 + v7);
    *(v1 + v7) = 0;
  }
}

void sub_1BD7F8B7C()
{
  v1 = v0;
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
  if (v8)
  {
    [v8 reportButtonPressed_];
  }

  v9 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver;
  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver);
  if (v10)
  {
    v11 = v10;
    sub_1BE04BB94();
    v12 = sub_1BE04B934();
    (*(v3 + 8))(v7, v2);
    if ([v12 respondsToSelector_])
    {
      [v12 noteForegroundVerificationObserverActive_];
    }

    swift_unknownObjectRelease();
    [v11 stop];

    v13 = *(v1 + v9);
    *(v1 + v9) = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_verificationController) clearSelectedChannel];
    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_11:
      swift_unknownObjectRelease();
      return;
    }

    v16 = v15;
    v17 = swift_unknownObjectUnownedLoadStrong();
    v18 = *&v17[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
    v19 = *&v17[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
    v20 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
    sub_1BE048964();
    v21 = v19;
    v22 = v17;
    v23 = sub_1BD5537A8(v18, v21);

    v24 = &v22[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v16, &off_1F3BB88B0, v23, &off_1F3BAD3B8, ObjectType, v25);

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }
}

void sub_1BD7F8E88()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0C4();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Requesting new OTP code", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *&v1[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter];
  if (v10)
  {
    [v10 reportButtonPressed_];
  }

  v11 = [v1 fieldsModel];
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 paymentSetupFieldWithIdentifier_];

  if (v13)
  {
    [v13 setCurrentValue_];
    [v1 noteFieldIdentifiersChanged];
    [v1 _setPrimaryButtonEnabled_];
  }

  v14 = [v1 dockView];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  [v14 setButtonsEnabled_];
  v16 = [v15 primaryButton];
  if (v16)
  {
    v17 = v16;
    [v16 setShowSpinner_];
    [v17 setEnabled_];

    sub_1BD7F89DC();
    v18 = [objc_allocWithZone(MEMORY[0x1E69B8EF0]) init];
    v19 = *&v1[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationController];
    v20 = [v19 pass];
    [v18 setPass_];

    [v18 setMethod_];
    [v18 setMethodGroup_];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD7FC300;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD28F728;
    aBlock[3] = &block_descriptor_32_3;
    v22 = _Block_copy(aBlock);
    v23 = v18;

    [v19 performVerificationUpdateRequest:v23 completion:v22];
    _Block_release(v22);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1BD7F926C(uint64_t a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1BD7FC308;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_39_2;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v20);
}

void sub_1BD7F9558(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = [Strong dockView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 setButtonsEnabled_];
  v9 = [v8 primaryButton];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setShowSpinner_];
  v11 = v10;
  [v11 setEnabled_];

  if (a2 == 1)
  {
    sub_1BD7F7FEC();
  }

  else
  {
    if (a3)
    {
      a3 = sub_1BE04A844();
    }

    v12 = [objc_opt_self() errorWithUnderlyingError:a3 defaultSeverity:4];

    v13 = sub_1BE052404();
    [v12 addInternalDebugDescription_];

    sub_1BD7F96F0(v12);
  }
}

void sub_1BD7F96F0(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v56 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v49 - v23;
  v25 = [a1 hasLocalizedTitleAndMessage];
  v26 = MEMORY[0x1E69B80D8];
  if ((v25 & 1) == 0)
  {
    v51 = v12;
    v52 = v2;
    v55 = a1;
    v27 = *(v9 + 104);
    v54 = *MEMORY[0x1E69B80D8];
    v53 = v27;
    v27(v24);
    v28 = PKPassKitBundle();
    if (v28)
    {
      v29 = v28;
      sub_1BE04B6F4();

      v50 = *(v9 + 8);
      v50(v24, v8);
      v30 = sub_1BE052404();

      v31 = v55;
      [v55 setLocalizedTitle_];

      v53(v19, v54, v8);
      v32 = PKPassKitBundle();
      if (v32)
      {
        v33 = v32;
        sub_1BE04B6F4();

        v50(v19, v8);
        v34 = sub_1BE052404();

        [v31 setLocalizedMessage_];

        a1 = v31;
        v12 = v51;
        v2 = v52;
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
  (*(v57 + 8))(v7, v58);
  v36 = *v26;
  v37 = *(v9 + 104);
  if (v35)
  {
    v38 = v56;
    v37(v56, v36, v8);
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
      v47 = v2;
      v48 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v42, v44, PKEdgeInsetsMake, 0, sub_1BD7FC2F0, v45, sub_1BD7FC2F8, v46);

      [v47 presentViewController:v48 animated:1 completion:0];

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

void sub_1BD7F9CA0(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v13 = [Strong dockView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  [v13 setButtonsEnabled_];
  v15 = [v14 primaryButton];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setShowSpinner_];
  v17 = v16;
  [v17 setEnabled_];

  if (a1 == 1 && a2)
  {
    v18 = a2;
    sub_1BD7F9F84(v18);
  }

  else
  {
    if (a3)
    {
      a3 = sub_1BE04A844();
    }

    v19 = [objc_opt_self() errorWithUnderlyingError:a3 defaultSeverity:4];

    sub_1BE04D0C4();
    v18 = v19;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v18;
      *v23 = v18;
      v24 = v18;
      _os_log_impl(&dword_1BD026000, v20, v21, "Failed to submit verification code error: %@", v22, 0xCu);
      sub_1BD0DE53C(v23, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v23, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_1BD7F96F0(v18);
  }
}

id sub_1BD7F9F84(void *a1)
{
  v80 = sub_1BE051F54();
  v2 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v3);
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BE051FA4();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v5);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F44();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v69 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BE051FC4();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v72 = &v65 - v15;
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v65 - v23;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v65 - v28;
  v30 = [a1 contactlessActivationState];
  v31 = *MEMORY[0x1E69B80D8];
  v32 = *(v17 + 104);
  v79 = v2;
  if (v30)
  {
    v66 = a1;
    v32(v20, v31, v16);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v34 = result;
    v67 = sub_1BE04B6F4();

    v35 = *(v17 + 8);
    v35(v20, v16);
    v65 = "CODE_ACCEPTED_TITLE";
    v32(v24, v31, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BE0B69E0;
    v37 = [v66 localizedDescription];
    v38 = sub_1BE052434();
    v40 = v39;

    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1BD110550();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_1BE04B714();

    v35(v24, v16);
LABEL_9:
    v48 = sub_1BE052404();

    v49 = sub_1BE052404();

    v50 = v81;
    [v81 hideActivitySpinnerWithTitle:v48 subtitle:v49 animated:1];

    [v50 showCheckmarkAnimated_];
    result = [v50 dockView];
    if (result)
    {
      v51 = result;
      [result setButtonsEnabled_];

      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v67 = sub_1BE052D54();
      v52 = v68;
      sub_1BE051FB4();
      v54 = v69;
      v53 = v70;
      *v69 = 2000000000;
      v55 = v71;
      (*(v53 + 104))(v54, *MEMORY[0x1E69E7F28], v71);
      v56 = v72;
      MEMORY[0x1BFB3F070](v52, v54);
      (*(v53 + 8))(v54, v55);
      v57 = v74;
      v58 = *(v73 + 8);
      v58(v52, v74);
      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1BD7FC038;
      aBlock[5] = v59;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_6_0;
      v60 = _Block_copy(aBlock);

      v61 = v75;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v62 = v77;
      v63 = v80;
      sub_1BE053664();
      v64 = v67;
      MEMORY[0x1BFB3FD90](v56, v61, v62, v60);
      _Block_release(v60);

      (*(v79 + 8))(v62, v63);
      (*(v76 + 8))(v61, v78);
      return (v58)(v56, v57);
    }

    __break(1u);
    goto LABEL_12;
  }

  v32(v29, v31, v16);
  result = PKPassKitBundle();
  if (result)
  {
    v41 = result;
    v67 = sub_1BE04B6F4();
    v66 = v42;

    v65 = *(v17 + 8);
    (v65)(v29, v16);
    if ([a1 hasActiveVirtualCard])
    {
      v32(v24, *MEMORY[0x1E69B8058], v16);
    }

    else
    {
      v32(v24, v31, v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1BE0B69E0;
    v44 = [a1 localizedDescription];
    v45 = sub_1BE052434();
    v47 = v46;

    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1BD110550();
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    sub_1BE04B714();

    (v65)(v24, v16);
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1BD7FA930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
    if (v2)
    {
      [v2 reportPageCompleted:1 context:0];
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = v3 + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        sub_1BD8659A4(v4, &off_1F3B9AAB8, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1BD7FAA1C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
  if (v1)
  {
    [v1 reportPageCompleted:0 context:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = result + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v3, &off_1F3B9AAB8, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD7FAAEC(void *a1)
{
  v2 = [a1 fieldsModel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 paymentSetupFieldWithIdentifier_];

    if (v4)
    {
      [v4 setCurrentValue_];
      [a1 noteFieldIdentifiersChanged];
      [a1 _setPrimaryButtonEnabled_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD7FAD34()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v24 - v9;
  v11 = *MEMORY[0x1E69B80D8];
  v12 = *(v2 + 104);
  v12(&v24 - v9, v11, v1, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v24 = v16;
    v25 = v15;

    v17 = *(v2 + 8);
    v17(v10, v1);
    (v12)(v5, v11, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    result = [*(v0 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationController) pass];
    if (result)
    {
      v19 = result;
      v20 = [result organizationName];

      v21 = sub_1BE052434();
      v23 = v22;

      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1BD110550();
      *(v18 + 32) = v21;
      *(v18 + 40) = v23;
      sub_1BE04B714();

      v17(v5, v1);
      return v25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7FB17C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BE051F54();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1BD7FC2DC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_18_0;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  v19 = a1;
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

void sub_1BD7FB430(char *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  v13 = *&a1[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver];
  if (v13)
  {
    v14 = v13 == a2;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    sub_1BE04D0C4();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "OTP captured - updating UI", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    v18 = *(v5 + 8);
    v18(v12, v4);
    sub_1BD7F89DC();
    v19 = [a1 fieldsModel];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 paymentSetupFieldWithIdentifier_];

      if (v21)
      {
        v22 = sub_1BE052404();
        [v21 setCurrentValue_];

        [a1 noteFieldIdentifiersChanged];
        [a1 _setPrimaryButtonEnabled_];
      }

      if (([*&a1[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_method] requiresUserInteraction] & 1) == 0)
      {
        sub_1BE04D0C4();
        v23 = sub_1BE04D204();
        v24 = sub_1BE052C54();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_1BD026000, v23, v24, "Verification requires no user interaction, performing next step automatically", v25, 2u);
          MEMORY[0x1BFB45F20](v25, -1, -1);
        }

        v18(v8, v4);
        sub_1BD7F82FC();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD7FB79C(uint64_t a1)
{
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver;
  v8 = *(a1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver);
  if (v8)
  {
    v9 = v8;
    sub_1BE04BB94();
    v10 = sub_1BE04B934();
    (*(v3 + 8))(v6, v2);
    if ([v10 respondsToSelector_])
    {
      [v10 noteForegroundVerificationObserverActive_];
    }

    swift_unknownObjectRelease();
    [v9 stop];

    v11 = *(a1 + v7);
    *(a1 + v7) = 0;
  }
}

uint64_t sub_1BD7FB954(void *a1)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD7FC030;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_186;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

void sub_1BD7FBBF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationController);
  v4 = [v3 pass];
  if (!v4)
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4;
  v6 = [v3 pass];
  if (!v6)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 uniqueID];

  if (v8)
  {
    v9 = sub_1BE052434();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a2 userInfo];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052244();

    sub_1BE0537C4();
    if (*(v14 + 16) && (v15 = sub_1BD149040(v18), (v16 & 1) != 0))
    {
      sub_1BD038CD0(*(v14 + 56) + 32 * v15, &v19);
      sub_1BD149CE8(v18);

      if (*(&v20 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        if (v11)
        {
          if (v18[0] == v9 && v11 == v18[1])
          {

LABEL_23:
            sub_1BD7F89DC();
            sub_1BD7F9F84(v5);
            goto LABEL_24;
          }

          v17 = sub_1BE053B84();

          if (v17)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

LABEL_24:

        return;
      }
    }

    else
    {

      sub_1BD149CE8(v18);
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {

    v19 = 0u;
    v20 = 0u;
  }

  sub_1BD0DE53C(&v19, &qword_1EBD3EC90);
}

void sub_1BD7FBF3C(char a1)
{
  v3 = [v1 dockView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setButtonsEnabled_];
  v5 = [v4 primaryButton];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setShowSpinner_];
  v8 = v6;
  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v1 isComplete];
  }

  [v8 setEnabled_];
}

uint64_t sub_1BD7FC040()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1BD7FC2D4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_12_6;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD7FC370@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549B0);
  return sub_1BD7FC3C8(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD7FC3C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_1BE04C894();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v73 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C764();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v78 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v77 = v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v76 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v83 = v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v82 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v69 - v23;
  v70 = a1;
  v25 = *a1;
  v26 = a1[1];
  v85 = v25;
  v86 = v26;
  v27 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v69[1] = v27;
  v28 = sub_1BE0506C4();
  v30 = v29;
  v32 = v31;
  sub_1BE051224();
  v33 = sub_1BE050564();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_1BD0DDF10(v28, v30, v32 & 1);

  v85 = v33;
  v86 = v35;
  v87 = v37 & 1;
  v88 = v39;
  sub_1BE052434();
  v84 = v24;
  sub_1BE050DE4();

  sub_1BD0DDF10(v33, v35, v37 & 1);

  v40 = v70[3];
  if (v40)
  {
    v85 = v70[2];
    v86 = v40;
    sub_1BE048C84();
    v41 = sub_1BE0506C4();
    v43 = v42;
    v45 = v44;
    sub_1BE051234();
    v46 = sub_1BE050564();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_1BD0DDF10(v41, v43, v45 & 1);

    v85 = v46;
    v86 = v48;
    v87 = v50 & 1;
    v88 = v52;
    sub_1BE052434();
    v53 = v82;
    sub_1BE050DE4();

    sub_1BD0DDF10(v46, v48, v50 & 1);

    v54 = v83;
    sub_1BD133260(v53, v83);
    v55 = 0;
    v56 = v53;
  }

  else
  {
    v55 = 1;
    v56 = v82;
    v54 = v83;
  }

  (*(v71 + 56))(v54, v55, 1, v72);
  (*(v74 + 104))(v73, *MEMORY[0x1E69BCA00], v75);
  v57 = v77;
  sub_1BE04C754();
  sub_1BD0DE19C(v84, v56, &qword_1EBD452C0);
  LOBYTE(v85) = 1;
  v58 = v76;
  sub_1BD0DE19C(v54, v76, &unk_1EBD5BB60);
  v59 = v78;
  v60 = v79;
  v61 = *(v79 + 16);
  v62 = v80;
  v61(v78, v57, v80);
  v63 = v81;
  sub_1BD0DE19C(v56, v81, &qword_1EBD452C0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549B8);
  v65 = v63 + v64[12];
  v66 = v85;
  *v65 = 0;
  *(v65 + 8) = v66;
  sub_1BD0DE19C(v58, v63 + v64[16], &unk_1EBD5BB60);
  v61((v63 + v64[20]), v59, v62);
  v67 = *(v60 + 8);
  v67(v57, v62);
  sub_1BD0DE53C(v83, &unk_1EBD5BB60);
  sub_1BD0DE53C(v84, &qword_1EBD452C0);
  v67(v59, v62);
  sub_1BD0DE53C(v58, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v82, &qword_1EBD452C0);
}

uint64_t sub_1BD7FCA24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54998);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8[-v4];
  v6 = v0[2];
  v10[1] = v0[1];
  v10[2] = v6;
  v10[0] = *v0;
  v9 = v10;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB10);
  sub_1BD0DE4F4(&qword_1EBD549A0, &unk_1EBD5BB10);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD549A8, &qword_1EBD54998);
  sub_1BE050DE4();

  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_1BD7FCC14()
{
  result = qword_1EBD549C0;
  if (!qword_1EBD549C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD549C8);
    sub_1BD0DE4F4(&qword_1EBD549A8, &qword_1EBD54998);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD549C0);
  }

  return result;
}

uint64_t sub_1BD7FCCF0(uint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B6CA0;
  v7 = objc_allocWithZone(type metadata accessor for PaymentSetupAppExtensionAuthorizationFlowItem());
  sub_1BE048964();
  v8 = a2;
  *(v6 + 32) = sub_1BD3327B4(a1, v8);
  *(v6 + 40) = &off_1F3B9FD20;
  type metadata accessor for PaymentSetupAppExtensionCredentialsFlowSection();
  v9 = swift_allocObject();
  v9[4] = MEMORY[0x1E69E7CC0];
  v9[6] = 0;
  swift_unknownObjectWeakInit();
  v9[7] = 0xD000000000000022;
  v9[8] = 0x80000001BE13B2F0;
  v9[2] = a1;
  v9[3] = v8;
  *(v6 + 48) = v9;
  *(v6 + 56) = &off_1F3BB6570;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0xD00000000000001ELL;
  *(v3 + 48) = 0x80000001BE13B320;
  *(v3 + 56) = v6;
  *(v3 + 32) = 514;
  return v3;
}

unint64_t sub_1BD7FCE40()
{
  result = qword_1EBD549D0;
  if (!qword_1EBD549D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD549D0);
  }

  return result;
}

uint64_t sub_1BD7FCE94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD7FCEDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD7FCF60@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v30[0] = sub_1BE04FF64();
  v2 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0], v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549D8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v30 - v13;
  v15 = *(v1 + 48);
  v16 = *(v1 + 80);
  v41 = *(v1 + 64);
  v42 = v16;
  v17 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v17;
  v18 = *(v1 + 48);
  v20 = *v1;
  v19 = *(v1 + 16);
  v39 = *(v1 + 32);
  v40 = v18;
  v21 = *(v1 + 80);
  v35 = v41;
  v36 = v21;
  v31 = v20;
  v32 = v19;
  v43 = *(v1 + 96);
  v37 = *(v1 + 96);
  v33 = v39;
  v34 = v15;
  sub_1BD0B93E4(v38, v44);
  sub_1BD7FD274(&v31, v9);
  v44[4] = v35;
  v44[5] = v36;
  v45 = v37;
  v44[0] = v31;
  v44[1] = v32;
  v44[2] = v33;
  v44[3] = v34;
  sub_1BD0B941C(v44);
  v22 = sub_1BE050234();
  sub_1BE04E1F4();
  v23 = &v9[*(v6 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_1BE04FF44();
  v28 = sub_1BD7FF220();
  sub_1BE050D14();
  (*(v2 + 8))(v5, v30[0]);
  sub_1BD0DE53C(v9, &qword_1EBD549D8);
  sub_1BE052434();
  v30[2] = v6;
  v30[3] = v28;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD7FD274@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A28);
  MEMORY[0x1EEE9AC00](v50, v3);
  v49 = (v45 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A30);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A38);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v46 = (v45 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A18);
  MEMORY[0x1EEE9AC00](v15, v16);
  v48 = (v45 - v17);
  v18 = sub_1BE04F3D4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 10);
  if (*(a1 + 88) != 1)
  {
    v31 = v21;
    sub_1BE048964();
    sub_1BE052C44();
    v32 = sub_1BE050174();
    v45[1] = v5;
    v33 = v32;
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v24, 0);
    (*(v19 + 8))(v23, v31);
    if (v52 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v34 = sub_1BE04F504();
    v25 = v48;
    *v48 = v34;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    v35 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A48) + 44);
    v36 = sub_1BE04F7C4();
    v37 = v46;
    *v46 = v36;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A50) + 44);
    v39 = a1[5];
    v56 = a1[4];
    v57 = v39;
    v58 = *(a1 + 12);
    v40 = a1[1];
    v52 = *a1;
    v53 = v40;
    v41 = a1[3];
    v54 = a1[2];
    v55 = v41;
    sub_1BD7FD7F0(0, v37 + v38);
    v42 = v47;
    sub_1BD0DE19C(v37, v47, &qword_1EBD54A38);
    sub_1BD0DE19C(v42, v35, &qword_1EBD54A38);
    v43 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A58) + 48);
    *v43 = 0;
    *(v43 + 8) = 0;
    sub_1BD0DE53C(v37, &qword_1EBD54A38);
    sub_1BD0DE53C(v42, &qword_1EBD54A38);
    v30 = &qword_1EBD54A18;
    sub_1BD0DE19C(v25, v8, &qword_1EBD54A18);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD54A10, &qword_1EBD54A18);
    goto LABEL_6;
  }

  if (v24)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25 = v49;
  *v49 = *(a1 + 9);
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A40) + 44);
  v27 = a1[5];
  v56 = a1[4];
  v57 = v27;
  v58 = *(a1 + 12);
  v28 = a1[1];
  v52 = *a1;
  v53 = v28;
  v29 = a1[3];
  v54 = a1[2];
  v55 = v29;
  sub_1BD7FD7F0(1, v25 + v26);
  v30 = &qword_1EBD54A28;
  sub_1BD0DE19C(v25, v8, &qword_1EBD54A28);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD54A10, &qword_1EBD54A18);
LABEL_6:
  sub_1BD0DE4F4(&qword_1EBD54A20, &qword_1EBD54A28);
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v25, v30);
}

uint64_t sub_1BD7FD7F0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A60);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A68);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39[-v18];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v39[-v22];
  v24 = v2[5];
  v62 = v2[4];
  v63 = v24;
  v64 = *(v2 + 12);
  v25 = v2[1];
  v58 = *v2;
  v59 = v25;
  v26 = v2[3];
  v60 = v2[2];
  v61 = v26;
  v27 = sub_1BE04F7C4();
  v28 = v2[5];
  v55 = v2[4];
  v56 = v28;
  v57 = *(v2 + 12);
  v29 = v2[1];
  v51 = *v2;
  v52 = v29;
  v30 = v2[3];
  v53 = v2[2];
  v54 = v30;
  *v19 = v27;
  *(v19 + 1) = 0x3FF0000000000000;
  v19[16] = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A70) + 44);
  sub_1BD0B93E4(&v58, v65);
  sub_1BD7FDB80(&v51, &v19[v31]);
  v65[4] = v55;
  v65[5] = v56;
  v66 = v57;
  v65[0] = v51;
  v65[1] = v52;
  v65[2] = v53;
  v65[3] = v54;
  sub_1BD0B941C(v65);
  sub_1BD0DE204(v19, v23, &qword_1EBD54A68);
  v40 = a1;
  if (a1)
  {
    v32 = 0x402E000000000000;
    v33 = sub_1BE04F7D4();
  }

  else
  {
    v33 = sub_1BE04F7C4();
    v32 = 0;
  }

  v46 = v62;
  v47 = v63;
  v48 = v64;
  v42 = v58;
  v43 = v59;
  v44 = v60;
  v45 = v61;
  *v11 = v33;
  *(v11 + 1) = 0x3FF0000000000000;
  v11[16] = 0;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A78) + 44);
  sub_1BD0B93E4(&v58, v49);
  sub_1BD7FE724(&v42, &v11[v34]);
  v49[4] = v46;
  v49[5] = v47;
  v50 = v48;
  v49[0] = v42;
  v49[1] = v43;
  v49[2] = v44;
  v49[3] = v45;
  sub_1BD0B941C(v49);
  sub_1BD0DE19C(v23, v15, &qword_1EBD54A68);
  sub_1BD0DE204(v11, v7, &qword_1EBD54A60);
  v35 = v41;
  sub_1BD0DE19C(v15, v41, &qword_1EBD54A68);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A80);
  v37 = v35 + *(v36 + 48);
  *v37 = v32;
  *(v37 + 8) = 0;
  *(v37 + 9) = (v40 & 1) == 0;
  sub_1BD0DE19C(v7, v35 + *(v36 + 64), &qword_1EBD54A60);
  sub_1BD0DE53C(v23, &qword_1EBD54A68);
  sub_1BD0DE53C(v7, &qword_1EBD54A60);
  return sub_1BD0DE53C(v15, &qword_1EBD54A68);
}

uint64_t sub_1BD7FDB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B00);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v25 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B08);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  sub_1BD7FDED0(&v34);
  v15 = v34;
  v16 = v35;
  v17 = v36;
  v29 = v34;
  v30 = v35;
  LOWORD(v31) = v36;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B10);
  sub_1BD7FF720();
  sub_1BE050DE4();

  sub_1BD7FF854(v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
  sub_1BD7FE440(&v29);
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B20);
  sub_1BD7FF8C0();
  v18 = v25;
  sub_1BE050DE4();

  v36 = v31;
  v37 = v32;
  v38 = v33;
  v34 = v29;
  v35 = v30;
  sub_1BD0DE53C(&v34, &qword_1EBD54B20);
  v19 = v26;
  sub_1BD0DE19C(v14, v26, &qword_1EBD54B08);
  v20 = v27;
  sub_1BD0DE19C(v18, v27, &qword_1EBD54B00);
  v21 = v28;
  sub_1BD0DE19C(v19, v28, &qword_1EBD54B08);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B40);
  sub_1BD0DE19C(v20, v21 + *(v22 + 48), &qword_1EBD54B00);
  sub_1BD0DE53C(v18, &qword_1EBD54B00);
  sub_1BD0DE53C(v14, &qword_1EBD54B08);
  sub_1BD0DE53C(v20, &qword_1EBD54B00);
  return sub_1BD0DE53C(v19, &qword_1EBD54B08);
}

void sub_1BD7FDED0(uint64_t a1@<X8>)
{
  if (!*(v1 + 1))
  {
    v34 = 0uLL;
    v37 = -256;
    v35 = 0uLL;
    goto LABEL_13;
  }

  v3 = *(v1 + 64);
  if (v3 <= 2)
  {
    goto LABEL_6;
  }

  if (v3 == 3)
  {
    v57 = *v1;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v38 = sub_1BE0506C4();
    v40 = v39;
    v42 = v41;
    sub_1BE050324();
    v43 = sub_1BE0505F4();
    v45 = v44;
    v47 = v46;

    sub_1BD0DDF10(v38, v40, v42 & 1);

    sub_1BE050384();
    v48 = sub_1BE050544();
    v50 = v49;
    LOBYTE(v38) = v51;
    sub_1BD0DDF10(v43, v45, v47 & 1);

    sub_1BE051224();
    v52 = sub_1BE050564();
    v54 = v53;
    v56 = v55;

    sub_1BD0DDF10(v48, v50, v38 & 1);

    sub_1BD0D7F18(v52, v54, v56 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
    sub_1BD170E70();
    sub_1BE04F9A4();
    sub_1BD0DDF10(v52, v54, v56 & 1);
    goto LABEL_7;
  }

  if (v3 != 4)
  {
LABEL_6:
    v57 = *v1;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    sub_1BE050324();
    v24 = sub_1BE0505F4();
    v26 = v25;
    v28 = v27;

    sub_1BD0DDF10(v19, v21, v23 & 1);

    sub_1BE051224();
    v29 = sub_1BE050564();
    v31 = v30;
    v33 = v32;

    sub_1BD0DDF10(v24, v26, v28 & 1);

    sub_1BD0D7F18(v29, v31, v33 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
    sub_1BD170E70();
    sub_1BE04F9A4();
    sub_1BD0DDF10(v29, v31, v33 & 1);
LABEL_7:

    goto LABEL_8;
  }

  v57 = *v1;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  sub_1BE050324();
  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;

  sub_1BD0DDF10(v4, v6, v8 & 1);

  sub_1BE0503A4();
  v14 = sub_1BE050544();
  v16 = v15;
  v18 = v17;
  sub_1BD0DDF10(v9, v11, v13 & 1);

  sub_1BE051234();
  sub_1BE050564();

  sub_1BD0DDF10(v14, v16, v18 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  sub_1BD170E70();
  sub_1BE04F9A4();
LABEL_8:
  v34 = v57;
  v35 = v58;
  if (v60)
  {
    v36 = 256;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36 | v59;
LABEL_13:
  *a1 = v34;
  *(a1 + 16) = v35;
  *(a1 + 32) = v37;
}

void sub_1BD7FE440(uint64_t a1@<X8>)
{
  if (*(v1 + 24))
  {
    v3 = *(v1 + 96);
    *(&v26 + 1) = *(v1 + 24);
    if (*(v1 + 64) == 1)
    {
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v4 = sub_1BE0506C4();
      v6 = v5;
      v8 = v7;
      *&v26 = v3;
      sub_1BE048964();
      sub_1BE050574();
      v10 = v9;
      sub_1BD0DDF10(v4, v6, v8 & 1);

      swift_getKeyPath();
      sub_1BE050454();
      LOBYTE(v26) = v10 & 1;
      swift_getKeyPath();
    }

    else
    {
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v16 = sub_1BE0506C4();
      v18 = v17;
      v20 = v19;
      *&v26 = v3;
      sub_1BE048964();
      v21 = sub_1BE050574();
      v23 = v22;
      v25 = v24;
      sub_1BD0DDF10(v16, v18, v20 & 1);

      sub_1BE0502E4();
      sub_1BE0505F4();

      sub_1BD0DDF10(v21, v23, v25 & 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54AF0);
    sub_1BD7FF668();
    sub_1BE04F9A4();
    v11 = v26;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v12 = v30;
  }

  else
  {
    v11 = 0uLL;
    v12 = -1;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 64) = v12;
}

uint64_t sub_1BD7FE724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A88);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v27 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A90);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v28 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v25 = &v24 - v13;
  sub_1BD7FEAEC(&v36);
  v14 = v36;
  v15 = v37;
  v24 = v38;
  v16 = WORD4(v38);
  v31 = v36;
  v32 = v37;
  *&v33 = v38;
  WORD4(v33) = WORD4(v38);
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54A98);
  sub_1BD7FF440(&qword_1EBD54AA0, &qword_1EBD54A98, &unk_1BE0FB100, sub_1BD7FF410);
  v17 = v25;
  sub_1BE050DE4();

  sub_1BD7FF548(v14, *(&v14 + 1), v15, *(&v15 + 1), v24, v16);
  sub_1BD7FEF78(&v31);
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54AC8);
  sub_1BD7FF440(&qword_1EBD54AD0, &qword_1EBD54AC8, &unk_1BE0FB120, sub_1BD7FF5E4);
  v18 = v27;
  sub_1BE050DE4();

  v38 = v33;
  v39 = v34;
  v40 = v35;
  v36 = v31;
  v37 = v32;
  sub_1BD0DE53C(&v36, &qword_1EBD54AC8);
  v19 = v28;
  sub_1BD0DE19C(v17, v28, &qword_1EBD54A90);
  v20 = v29;
  sub_1BD0DE19C(v18, v29, &qword_1EBD54A88);
  v21 = v30;
  sub_1BD0DE19C(v19, v30, &qword_1EBD54A90);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54AF8);
  sub_1BD0DE19C(v20, v21 + *(v22 + 48), &qword_1EBD54A88);
  sub_1BD0DE53C(v18, &qword_1EBD54A88);
  sub_1BD0DE53C(v17, &qword_1EBD54A90);
  sub_1BD0DE53C(v20, &qword_1EBD54A88);
  return sub_1BD0DE53C(v19, &qword_1EBD54A90);
}

void sub_1BD7FEAEC(uint64_t a1@<X8>)
{
  v3 = 0uLL;
  if (!*(v1 + 40))
  {
    v16 = 0;
    v17 = -512;
    goto LABEL_16;
  }

  v4 = *(v1 + 64);
  if ((v4 - 1) < 2)
  {
    v43 = *(v1 + 32);
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v22 = v21;
    sub_1BE050324();
    v23 = sub_1BE0505F4();
    v25 = v24;
    v27 = v26;

    sub_1BD0DDF10(v18, v20, v22 & 1);

    sub_1BE051224();
    v10 = sub_1BE050564();
    v12 = v28;
    v30 = v29;

    sub_1BD0DDF10(v23, v25, v27 & 1);

    v15 = v30 & 1;
    goto LABEL_8;
  }

  if (v4 != 3)
  {
    if (!*(v1 + 64))
    {
      v43 = *(v1 + 32);
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v5 = sub_1BE0506C4();
      v7 = v6;
      v9 = v8;
      sub_1BE051234();
      v10 = sub_1BE050564();
      v12 = v11;
      v14 = v13;

      sub_1BD0DDF10(v5, v7, v9 & 1);

      v15 = v14 & 1;
LABEL_8:
      sub_1BD0D7F18(v10, v12, v15);
      sub_1BE048C84();
      sub_1BE04F9A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
      sub_1BD170E70();
      sub_1BD0EF0FC();
      sub_1BE04F9A4();
      sub_1BD0DDF10(v10, v12, v15);

LABEL_11:
      v3 = v43;
      v41 = v44;
      v16 = v45;
      if (v47)
      {
        v42 = 256;
      }

      else
      {
        v42 = 0;
      }

      v17 = v42 | v46;
      goto LABEL_17;
    }

    v16 = 0;
    v17 = -256;
LABEL_16:
    v41 = 0uLL;
LABEL_17:
    *a1 = v3;
    *(a1 + 16) = v41;
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
    return;
  }

  v43 = *(v1 + 32);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v31 = sub_1BE0506C4();
  v33 = v32;
  v35 = v34;
  if (PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB980]))
  {
    sub_1BE050484();
    v36 = sub_1BE0505F4();
    v38 = v37;
    v40 = v39;

    sub_1BD0DDF10(v31, v33, v35 & 1);

    sub_1BE051224();
    sub_1BE050564();

    sub_1BD0DDF10(v36, v38, v40 & 1);

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD170E70();
    sub_1BD0EF0FC();
    sub_1BE04F9A4();
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1BD7FEF78(uint64_t a1@<X8>)
{
  if (*(v1 + 56))
  {
    v3 = *(v1 + 96);
    *(&v22 + 1) = *(v1 + 56);
    if (*(v1 + 64) == 1)
    {
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v4 = sub_1BE0506C4();
      v6 = v5;
      v8 = v7;
      *&v22 = v3;
      sub_1BE048964();
      sub_1BE050574();
      v10 = v9;
      sub_1BD0DDF10(v4, v6, v8 & 1);

      swift_getKeyPath();
      sub_1BE050454();
    }

    else
    {
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v16 = sub_1BE0506C4();
      v18 = v17;
      v20 = v19;
      *&v22 = v3;
      sub_1BE048964();
      sub_1BE050574();
      v10 = v21;
      sub_1BD0DDF10(v16, v18, v20 & 1);

      swift_getKeyPath();
      sub_1BE0502E4();
    }

    LOBYTE(v22) = v10 & 1;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54AF0);
    sub_1BD7FF668();
    sub_1BE04F9A4();
    v11 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v12 = v26;
  }

  else
  {
    v11 = 0uLL;
    v12 = -1;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 64) = v12;
}

unint64_t sub_1BD7FF220()
{
  result = qword_1EBD549E8;
  if (!qword_1EBD549E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD549D8);
    sub_1BD7FF2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD549E8);
  }

  return result;
}

unint64_t sub_1BD7FF2AC()
{
  result = qword_1EBD549F0;
  if (!qword_1EBD549F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD549F8);
    sub_1BD7FF330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD549F0);
  }

  return result;
}

unint64_t sub_1BD7FF330()
{
  result = qword_1EBD54A00;
  if (!qword_1EBD54A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54A08);
    sub_1BD0DE4F4(&qword_1EBD54A10, &qword_1EBD54A18);
    sub_1BD0DE4F4(&qword_1EBD54A20, &qword_1EBD54A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54A00);
  }

  return result;
}

uint64_t sub_1BD7FF440(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD7FF4BC()
{
  result = qword_1EBD54AB8;
  if (!qword_1EBD54AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54AC0);
    sub_1BD170E70();
    sub_1BD0EF0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54AB8);
  }

  return result;
}

uint64_t sub_1BD7FF548(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0xFF00) != 0xFE00)
  {
    return sub_1BD7FF560(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1BD7FF560(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (BYTE1(a6) != 255)
  {
    return sub_1BD7FF578(result, a2, a3, a4, a5, a6, BYTE1(a6) & 1);
  }

  return result;
}

uint64_t sub_1BD7FF578(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_1BD0DDF10(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BD19711C(a1, a2, a3);
  }
}

unint64_t sub_1BD7FF5E4()
{
  result = qword_1EBD54AD8;
  if (!qword_1EBD54AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54AE0);
    sub_1BD7FF668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54AD8);
  }

  return result;
}

unint64_t sub_1BD7FF668()
{
  result = qword_1EBD54AE8;
  if (!qword_1EBD54AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54AF0);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54AE8);
  }

  return result;
}

unint64_t sub_1BD7FF720()
{
  result = qword_1EBD54B18;
  if (!qword_1EBD54B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54B10);
    sub_1BD7FF7D0(&qword_1EBD52E98, &qword_1EBD52EA0, &unk_1BE0F70E0, sub_1BD170E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54B18);
  }

  return result;
}

uint64_t sub_1BD7FF7D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1BD7FF854(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_1BD7FF86C(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_1BD7FF86C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BD0DDF10(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BD19711C(a1, a2, a3);
  }
}

unint64_t sub_1BD7FF8C0()
{
  result = qword_1EBD54B28;
  if (!qword_1EBD54B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54B20);
    sub_1BD7FF7D0(&qword_1EBD54B30, &qword_1EBD54B38, &unk_1BE0FB200, sub_1BD7FF668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54B28);
  }

  return result;
}

unint64_t sub_1BD7FF970()
{
  result = qword_1EBD54B48;
  if (!qword_1EBD54B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD549D8);
    sub_1BD7FF220();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54B48);
  }

  return result;
}

void sub_1BD7FFA38(uint64_t a1)
{
  v2 = sub_1BE04D984();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v54 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v48 - v8);
  v58 = sub_1BE04D9C4();
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v11);
  v57 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v56 = v48 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = v48 - v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD406D0);
    sub_1BD538E04();
    sub_1BE052A74();
    a1 = v69;
    v19 = v70;
    v21 = v71;
    v20 = v72;
    v22 = v73;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v19 = a1 + 56;
    v21 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 56);
    sub_1BE048C84();
    v20 = 0;
  }

  v59 = v21;
  v64 = *MEMORY[0x1E6997C38];
  v66 = (v3 + 104);
  v60 = *MEMORY[0x1E6997C40];
  v62 = *MEMORY[0x1E6997C30];
  v52 = (v3 + 16);
  v65 = (v3 + 8);
  v51 = v10;
  v55 = (v10 + 32);
  v61 = MEMORY[0x1E69E7CC0];
  v63 = a1;
LABEL_8:
  v26 = v20;
  v27 = v22;
  while (a1 < 0)
  {
    v31 = sub_1BE053744();
    if (!v31 || (v68 = v31, sub_1BD0E5E8C(0, &qword_1EBD406D0), swift_dynamicCast(), v30 = v74, v20 = v26, v67 = v27, !v74))
    {
LABEL_35:
      sub_1BD0D45FC();
      return;
    }

LABEL_20:
    v32 = [v30 retentionIntent];
    if (v32 > 1)
    {
      v33 = v64;
      if (v32 != 2)
      {
        v33 = v62;
        if (v32 != 3)
        {
LABEL_9:

          goto LABEL_10;
        }
      }
    }

    else
    {
      if (v32 != 1)
      {
        goto LABEL_9;
      }

      *v9 = [v30 retentionPeriod];
      v33 = v60;
    }

    (*v66)(v9, v33, v2);
    v34 = [v30 identifier];
    if (v34)
    {
      v35 = v2;
      v36 = v34;
      sub_1BE052434();

      v37 = [v30 elementNamespace];
      if (v37)
      {
        v38 = v37;
        v48[2] = sub_1BE052434();
        v48[1] = v39;

        v40 = *v52;
        v49 = v9;
        v50 = v2;
        v40(v54, v9, v2);
        sub_1BE04D9A4();

        (*v65)(v49, v50);
        v41 = *v55;
        v42 = v53;
        v43 = v58;
        (*v55)(v53, v56, v58);
        v41(v57, v42, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_1BD1D999C(0, *(v61 + 2) + 1, 1, v61);
        }

        v44 = v51;
        v46 = *(v61 + 2);
        v45 = *(v61 + 3);
        if (v46 >= v45 >> 1)
        {
          v61 = sub_1BD1D999C(v45 > 1, v46 + 1, 1, v61);
        }

        v47 = v61;
        *(v61 + 2) = v46 + 1;
        v41(&v47[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46], v57, v58);
        v2 = v35;
        a1 = v63;
        v22 = v67;
        goto LABEL_8;
      }

      a1 = v63;
    }

    else
    {
    }

    (*v65)(v9, v2);
LABEL_10:
    v26 = v20;
    v27 = v67;
  }

  v28 = v26;
  v29 = v27;
  v20 = v26;
  if (v27)
  {
LABEL_16:
    v67 = (v29 - 1) & v29;
    v30 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v30)
    {
      goto LABEL_35;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v20 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v20 >= ((v21 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v29 = *(v19 + 8 * v20);
    ++v28;
    if (v29)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_1BD8000AC()
{
  sub_1BD0E5E8C(0, &qword_1EBD54B78);
  sub_1BE048C84();
  v0 = sub_1BE052724();

  return v0;
}

BOOL PKISO180135RecognizedElements.isDisplayOnly.getter()
{
  v1 = [v0 retainedElements];
  sub_1BD0E5E8C(0, &qword_1EBD54B78);
  v2 = sub_1BE052744();

  if (v2 >> 62)
  {
    v3 = sub_1BE053704();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    return 0;
  }

  v4 = [v0 nonRetainedElements];
  v5 = sub_1BE052744();

  v6 = v5 >> 62 ? sub_1BE053704() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6)
  {
    return 0;
  }

  v8 = [v0 displayOnlyElements];
  v9 = sub_1BE052744();

  if (v9 >> 62)
  {
    v10 = sub_1BE053704();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v10 != 0;
}

id PKISO180135RecognizedElements.init(documentType:documentElements:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BE052404();

  sub_1BD0E5E8C(0, &qword_1EBD406D0);
  sub_1BD538E04();
  v2 = sub_1BE052A24();

  v3 = [v0 initWithDocumentType:v1 documentElements:v2];

  return v3;
}

id PKISO180135RecognizedElements.init(documentType:documentElements:)(void (*a1)(void, void, void), void *a2, uint64_t a3)
{
  v131 = a1;
  v132 = a2;
  v4 = sub_1BE04D9C4();
  v121 = *(v4 - 8);
  v122 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v126 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v120 = v118 - v9;
  v10 = sub_1BE04DA14();
  v125 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v129 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v135 = v118 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v128 = v118 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v134 = v118 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v118 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v133 = v118 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B80);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = v118 - v31;
  v33 = sub_1BE04DA84();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v118 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v118 - v44;
  sub_1BD7FFA38(a3);
  v46 = v33;
  v47 = v34;
  sub_1BE04DA34();

  if ((*(v34 + 48))(v32, 1, v46))
  {
    v48 = sub_1BD8010AC(v32);
    type metadata accessor for PKISO180135RecognizedElements(v48);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v50 = *(v34 + 32);
    v50(v41, v32, v46);
    v50(v45, v41, v46);
    (*(v47 + 16))(v37, v45, v46);
    type metadata accessor for IdentityDocumentElementCategoryGroupsBox();
    v51 = swift_allocObject();
    v119 = v46;
    v50((v51 + OBJC_IVAR____TtC9PassKitUIP33_A466B0C86051506D4B63D9964ADCC88940IdentityDocumentElementCategoryGroupsBox_wrapped), v37, v46);
    v52 = v127;
    *&v127[OBJC_IVAR___PKISO180135RecognizedElements__elementCategoryGroups] = v51;
    v53 = sub_1BE04DA44();
    v54 = MEMORY[0x1E69E7CC0];
    v55 = *(v53 + 16);
    v123 = v45;
    v124 = v47;
    v56 = v126;
    if (v55)
    {
      v137 = MEMORY[0x1E69E7CC0];
      sub_1BE0538E4();
      v57 = objc_opt_self();
      v131 = *(v125 + 16);
      v132 = v57;
      v58 = (*(v125 + 80) + 32) & ~*(v125 + 80);
      v118[1] = v53;
      v59 = v53 + v58;
      v130 = *(v125 + 72);
      v60 = (v125 + 8);
      v61 = v133;
      do
      {
        v64 = v131;
        (v131)(v61, v59, v10);
        v64(v25, v61, v10);
        v65 = [objc_allocWithZone(PKISO180135GroupRepresentation) init];
        sub_1BE04DA04();
        v66 = sub_1BE052404();

        [v65 setLocalizedTitle_];

        sub_1BE04D9E4();
        v67 = sub_1BE052404();

        v68 = [v132 systemImageNamed_];

        [v65 setIcon_];
        sub_1BD8015B4();
        if (v69)
        {
          v62 = sub_1BE052404();
        }

        else
        {
          v62 = 0;
        }

        [v65 setAnalyticsTag_];

        v63 = *v60;
        (*v60)(v25, v10);
        v61 = v133;
        v63(v133, v10);
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v59 += v130;
        --v55;
      }

      while (v55);

      v70 = v137;
      v56 = v126;
      v52 = v127;
      v45 = v123;
      v47 = v124;
      v54 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v70 = MEMORY[0x1E69E7CC0];
    }

    *&v52[OBJC_IVAR___PKISO180135RecognizedElements_retainedElements] = v70;
    v71 = sub_1BE04DA74();
    v72 = *(v71 + 16);
    if (v72)
    {
      v137 = v54;
      sub_1BE0538E4();
      v73 = objc_opt_self();
      v132 = *(v125 + 16);
      v133 = v73;
      v74 = v71 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v75 = *(v125 + 72);
      v130 = v71;
      v131 = v75;
      v76 = (v125 + 8);
      v77 = v128;
      v78 = v134;
      do
      {
        v81 = v132;
        (v132)(v78, v74, v10);
        v81(v77, v78, v10);
        v82 = [objc_allocWithZone(PKISO180135GroupRepresentation) init];
        sub_1BE04DA04();
        v83 = sub_1BE052404();

        [v82 setLocalizedTitle_];

        sub_1BE04D9E4();
        v84 = sub_1BE052404();

        v85 = [v133 systemImageNamed_];

        [v82 setIcon_];
        sub_1BD8015B4();
        if (v86)
        {
          v79 = sub_1BE052404();
          v77 = v128;
        }

        else
        {
          v79 = 0;
        }

        [v82 setAnalyticsTag_];

        v80 = *v76;
        (*v76)(v77, v10);
        v78 = v134;
        v80(v134, v10);
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v74 += v131;
        --v72;
      }

      while (v72);

      v87 = v137;
      v56 = v126;
      v52 = v127;
      v45 = v123;
      v47 = v124;
      v54 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v87 = MEMORY[0x1E69E7CC0];
    }

    *&v52[OBJC_IVAR___PKISO180135RecognizedElements_nonRetainedElements] = v87;
    v88 = sub_1BE04DA64();
    v89 = *(v88 + 16);
    if (v89)
    {
      v137 = v54;
      sub_1BE0538E4();
      v90 = objc_opt_self();
      v91 = v125 + 16;
      v133 = *(v125 + 16);
      v134 = v90;
      v92 = v88 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v93 = *(v125 + 72);
      v131 = v88;
      v132 = v93;
      v94 = (v125 + 8);
      v95 = v129;
      v96 = v135;
      do
      {
        v99 = v133;
        (v133)(v96, v92, v10);
        v100 = v91;
        v99(v95, v96, v10);
        v101 = [objc_allocWithZone(PKISO180135GroupRepresentation) init];
        sub_1BE04DA04();
        v102 = sub_1BE052404();

        [v101 setLocalizedTitle_];

        sub_1BE04D9E4();
        v103 = sub_1BE052404();

        v104 = [v134 systemImageNamed_];

        [v101 setIcon_];
        sub_1BD8015B4();
        if (v105)
        {
          v97 = sub_1BE052404();
          v95 = v129;
        }

        else
        {
          v97 = 0;
        }

        [v101 setAnalyticsTag_];

        v98 = *v94;
        (*v94)(v95, v10);
        v96 = v135;
        v98(v135, v10);
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v92 += v132;
        --v89;
        v91 = v100;
      }

      while (v89);

      v106 = v137;
      v56 = v126;
      v52 = v127;
      v45 = v123;
      v47 = v124;
      v54 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v106 = MEMORY[0x1E69E7CC0];
    }

    *&v52[OBJC_IVAR___PKISO180135RecognizedElements_displayOnlyElements] = v106;
    v107 = sub_1BE04DA54();
    v108 = v107[2];
    if (v108)
    {
      v137 = v54;
      sub_1BE0538E4();
      v109 = sub_1BD0E5E8C(0, &qword_1EBD406D0);
      v110 = v122;
      v134 = *(v121 + 16);
      v135 = v109;
      v111 = v107 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v112 = *(v121 + 72);
      v132 = v107;
      v133 = v112;
      v113 = v56;
      v114 = (v121 + 8);
      v115 = v120;
      do
      {
        v116 = v134;
        (v134)(v115, v111, v110);
        v116(v113, v115, v110);
        sub_1BD801174(v113);
        (*v114)(v115, v110);
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v111 = &v133[v111];
        --v108;
      }

      while (v108);

      v54 = v137;
      v52 = v127;
      v45 = v123;
      v47 = v124;
    }

    else
    {
    }

    v117 = sub_1BD537668(v54);

    (*(v47 + 8))(v45, v119);
    *&v52[OBJC_IVAR___PKISO180135RecognizedElements_dataElements] = v117;
    v136.receiver = v52;
    v136.super_class = PKISO180135RecognizedElements;
    return objc_msgSendSuper2(&v136, sel_init);
  }
}

uint64_t sub_1BD8010AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IdentityDocumentElementCategoryGroupsBox()
{
  result = qword_1EBD54BA0;
  if (!qword_1EBD54BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BD801174(uint64_t a1)
{
  v2 = sub_1BE04D984();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1BE04D9B4();
  v8 = sub_1BE052404();

  [v7 setElementNamespace_];

  sub_1BE04D974();
  v9 = sub_1BE052404();

  [v7 setIdentifier_];

  sub_1BE04D994();
  v10 = (*(v3 + 88))(v6, v2);
  if (v10 == *MEMORY[0x1E6997C40])
  {
    (*(v3 + 96))(v6, v2);
    v11 = *v6;
    [v7 setRetentionIntent_];
    [v7 setRetentionPeriod_];
  }

  else if (v10 == *MEMORY[0x1E6997C38])
  {
    [v7 setRetentionIntent_];
  }

  else
  {
    if (v10 != *MEMORY[0x1E6997C30])
    {
      [v7 setRetentionIntent_];
      v14 = sub_1BE04D9C4();
      (*(*(v14 - 8) + 8))(a1, v14);
      (*(v3 + 8))(v6, v2);
      return v7;
    }

    [v7 setRetentionIntent_];
  }

  v12 = sub_1BE04D9C4();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v7;
}

id PKISO180135RecognizedElements.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1BD8015B4()
{
  v0 = sub_1BE04D9D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D9F4();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x1E6997C50] || v5 == *MEMORY[0x1E6997CC8] || v5 == *MEMORY[0x1E6997C60] || v5 == *MEMORY[0x1E6997D08] || v5 == *MEMORY[0x1E6997CB0] || v5 == *MEMORY[0x1E6997CB8] || v5 == *MEMORY[0x1E6997CD8] || v5 == *MEMORY[0x1E6997CE0] || v5 == *MEMORY[0x1E6997CF8] || v5 == *MEMORY[0x1E6997D10] || v5 == *MEMORY[0x1E6997CE8] || v5 == *MEMORY[0x1E6997CC0] || v5 == *MEMORY[0x1E6997CD0] || v5 == *MEMORY[0x1E6997C58] || v5 == *MEMORY[0x1E6997CF0] || v5 == *MEMORY[0x1E6997C70] || v5 == *MEMORY[0x1E6997C88] || v5 == *MEMORY[0x1E6997C98] || v5 == *MEMORY[0x1E6997C78] || v5 == *MEMORY[0x1E6997CA8] || v5 == *MEMORY[0x1E6997D00] || v5 == *MEMORY[0x1E6997CA0] || v5 == *MEMORY[0x1E6997C80] || v5 == *MEMORY[0x1E6997C90] || v5 == *MEMORY[0x1E6997C68])
  {
    return sub_1BE052434();
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_1BD801990()
{
  v1 = OBJC_IVAR____TtC9PassKitUIP33_A466B0C86051506D4B63D9964ADCC88940IdentityDocumentElementCategoryGroupsBox_wrapped;
  v2 = sub_1BE04DA84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD801A34()
{
  result = sub_1BE04DA84();
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

void sub_1BD801B0C()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    sub_1BD801C00();
    if (v1 <= 0x3F)
    {
      sub_1BD801D5C(319, &qword_1EBD36A40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD801C00()
{
  if (!qword_1EBD52540)
  {
    v0 = sub_1BE052804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD52540);
    }
  }
}

void sub_1BD801C98()
{
  sub_1BD801D5C(319, &qword_1EBD54BD0, type metadata accessor for SEStorageUsageGroup.PassEntry, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BE04C164();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD801D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD801E28()
{
  type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(319);
  if (v0 <= 0x3F)
  {
    sub_1BD801D5C(319, &qword_1EBD54BE8, type metadata accessor for SEStorageUsageGroup, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD801F04()
{
  v0 = sub_1BE04C164();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BD801F5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BD801FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

id sub_1BD802010()
{
  v1 = v0;
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD809974(v1, v23, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v24 = (*(v3 + 48))(v23, 3, v2);
  if (v24 <= 1)
  {
    if (!v24)
    {
      (*(v3 + 32))(v6, v23, v2);
      v25 = sub_1BD802444();
      (*(v3 + 8))(v6, v2);
      return v25;
    }

    (*(v8 + 104))(v19, *MEMORY[0x1E69B80D8], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v29 = result;
      v25 = sub_1BE04B6F4();

      (*(v8 + 8))(v19, v7);
      return v25;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = *MEMORY[0x1E69B80D8];
  if (v24 == 2)
  {
    (*(v8 + 104))(v15, v26, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v25 = sub_1BE04B6F4();

      (*(v8 + 8))(v15, v7);
      return v25;
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v8 + 104))(v11, v26, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v25 = sub_1BE04B6F4();

    (*(v8 + 8))(v11, v7);
    return v25;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_1BD8023E4()
{
  result = [*v0 uniqueID];
  if (result)
  {
    v2 = result;
    v3 = sub_1BE052434();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD802444()
{
  v0 = sub_1BE04BD74();
  v139 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v119 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v133 = &v119 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v128 = &v119 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v127 = &v119 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v119 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v126 = &v119 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v125 = &v119 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v130 = &v119 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v132 = &v119 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v134 = &v119 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v135 = &v119 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v137 = &v119 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v119 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v124 = &v119 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v129 = &v119 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v131 = &v119 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v136 = &v119 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v122 = &v119 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v121 = &v119 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v63 = &v119 - v62;
  v65 = MEMORY[0x1EEE9AC00](v61, v64);
  v67 = &v119 - v66;
  v69 = MEMORY[0x1EEE9AC00](v65, v68);
  v120 = &v119 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v123 = &v119 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v77 = &v119 - v76;
  MEMORY[0x1EEE9AC00](v75, v78);
  v80 = &v119 - v79;
  v81 = sub_1BE04C164();
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v83);
  v85 = &v119 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[2](v85, v138, v81);
  LODWORD(v86) = (v82[11])(v85, v81);
  if (v86 == *MEMORY[0x1E69B81B0])
  {
    v82 = v139;
    v139[13](v41, *MEMORY[0x1E69B80D8], v0);
    v86 = PKPassKitBundle();
    if (v86)
    {
      v87 = v86;
      v88 = sub_1BE04B6F4();

      (v82[1])(v41, v0);
      return v88;
    }

    __break(1u);
LABEL_75:
    if (v86 == *MEMORY[0x1E69B8230])
    {
      (*(v41 + 13))(v81, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v111 = result;
        v104 = v81;
        goto LABEL_53;
      }

      goto LABEL_108;
    }

LABEL_79:
    if (v86 == *MEMORY[0x1E69B8248])
    {
      (*(v41 + 13))(v85, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v111 = result;
        v104 = v85;
        goto LABEL_53;
      }

      goto LABEL_109;
    }

    goto LABEL_83;
  }

  v138 = v0;
  v41 = v139;
  if (v86 == *MEMORY[0x1E69B8198])
  {
    v89 = v138;
    v139[13](v16, *MEMORY[0x1E69B80D8], v138);
    v86 = PKPassKitBundle();
    if (v86)
    {
      v90 = v86;
      v88 = sub_1BE04B6F4();

      v91 = *(v41 + 1);
      v92 = v16;
LABEL_7:
      v93 = v89;
LABEL_16:
      v91(v92, v93);
      return v88;
    }

    __break(1u);
    goto LABEL_79;
  }

  if (v86 != *MEMORY[0x1E69B8218])
  {
    if (v86 == *MEMORY[0x1E69B81C0])
    {
      v94 = v138;
      v139[13](v77, *MEMORY[0x1E69B80D8], v138);
      v86 = PKPassKitBundle();
      if (!v86)
      {
        __break(1u);
        goto LABEL_87;
      }

      v96 = v86;
      goto LABEL_14;
    }

    if (v86 == *MEMORY[0x1E69B81A0])
    {
      v98 = v137;
      v89 = v138;
      v139[13](v137, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v99 = result;
LABEL_36:
        v88 = sub_1BE04B6F4();

        v91 = *(v41 + 1);
        v92 = v98;
        goto LABEL_7;
      }

      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v86 == *MEMORY[0x1E69B8258])
    {
      v98 = v136;
      v89 = v138;
      v139[13](v136, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v99 = result;
        goto LABEL_36;
      }

      goto LABEL_92;
    }

    if (v86 == *MEMORY[0x1E69B81C8])
    {
      v98 = v135;
      v89 = v138;
      v139[13](v135, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v99 = result;
        goto LABEL_36;
      }

      goto LABEL_93;
    }

    if (v86 == *MEMORY[0x1E69B81A8])
    {
      v98 = v134;
      v89 = v138;
      v139[13](v134, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v99 = result;
        goto LABEL_36;
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v86 == *MEMORY[0x1E69B8200])
    {
      goto LABEL_31;
    }

    if (v86 == *MEMORY[0x1E69B81D0])
    {
      v98 = v132;
      v89 = v138;
      v139[13](v132, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v99 = result;
        goto LABEL_36;
      }

      goto LABEL_96;
    }

    if (v86 == *MEMORY[0x1E69B8208])
    {
      v98 = v130;
      v89 = v138;
      v139[13](v130, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v99 = result;
        goto LABEL_36;
      }

      goto LABEL_97;
    }

    if (v86 == *MEMORY[0x1E69B8220])
    {
      v94 = v138;
      v139[13](v131, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v96 = result;
      v77 = v131;
LABEL_14:
      v88 = sub_1BE04B6F4();

      v91 = *(v41 + 1);
      v92 = v77;
      goto LABEL_15;
    }

    if (v86 == *MEMORY[0x1E69B81E0])
    {
      v100 = v139;
      v101 = v138;
      v139[13](v129, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (result)
      {
        v102 = result;
        v103 = v129;
        v88 = sub_1BE04B6F4();

        v100[1](v103, v101);
        return v88;
      }

      goto LABEL_99;
    }

    if (v86 == *MEMORY[0x1E69B8250] || v86 == *MEMORY[0x1E69B8238])
    {
      v104 = v124;
      (v139[13])();
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v111 = result;
    }

    else
    {
      v104 = v67;
      v136 = v85;
      v137 = v81;
      v105 = v63;
      v107 = v121;
      v106 = v122;
      v108 = v125;
      v81 = v126;
      v85 = v127;
      v63 = v128;
      if (v86 == *MEMORY[0x1E69B8240])
      {
        v139[13](v123, *MEMORY[0x1E69B80D8], v138);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v109 = result;
        v110 = v123;
LABEL_57:
        v88 = sub_1BE04B6F4();

        v91 = *(v41 + 1);
        v92 = v110;
        goto LABEL_58;
      }

      if (v86 == *MEMORY[0x1E69B81F0])
      {
        v139[13](v120, *MEMORY[0x1E69B80D8], v138);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v109 = result;
        v110 = v120;
        goto LABEL_57;
      }

      if (v86 != *MEMORY[0x1E69B8210])
      {
        if (v86 == *MEMORY[0x1E69B81D8])
        {
          v139[13](v105, *MEMORY[0x1E69B80D8], v138);
          result = PKPassKitBundle();
          if (result)
          {
            v112 = result;
            v88 = sub_1BE04B6F4();

            v91 = *(v41 + 1);
            v92 = v105;
            goto LABEL_58;
          }

          goto LABEL_104;
        }

        if (v86 == *MEMORY[0x1E69B81E8])
        {
          v139[13](v121, *MEMORY[0x1E69B80D8], v138);
          result = PKPassKitBundle();
          if (result)
          {
            v113 = result;
            v88 = sub_1BE04B6F4();

            v91 = *(v41 + 1);
            v92 = v107;
            goto LABEL_58;
          }

          goto LABEL_105;
        }

        if (v86 == *MEMORY[0x1E69B81F8])
        {
          v139[13](v122, *MEMORY[0x1E69B80D8], v138);
          result = PKPassKitBundle();
          if (result)
          {
            v114 = result;
            v88 = sub_1BE04B6F4();

            v91 = *(v41 + 1);
            v92 = v106;
            goto LABEL_58;
          }

          goto LABEL_106;
        }

        if (v86 == *MEMORY[0x1E69B8190])
        {
          v139[13](v125, *MEMORY[0x1E69B80D8], v138);
          result = PKPassKitBundle();
          if (result)
          {
            v115 = result;
            v88 = sub_1BE04B6F4();

            v91 = *(v41 + 1);
            v92 = v108;
            goto LABEL_58;
          }

          goto LABEL_107;
        }

        goto LABEL_75;
      }

      v139[13](v104, *MEMORY[0x1E69B80D8], v138);
      result = PKPassKitBundle();
      if (!result)
      {
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
        goto LABEL_111;
      }

      v111 = result;
    }

LABEL_53:
    v88 = sub_1BE04B6F4();

    v91 = *(v41 + 1);
    v92 = v104;
LABEL_58:
    v93 = v138;
    goto LABEL_16;
  }

  v94 = v138;
  v139[13](v80, *MEMORY[0x1E69B80D8], v138);
  v86 = PKPassKitBundle();
  if (v86)
  {
    v95 = v86;
    v88 = sub_1BE04B6F4();

    v91 = *(v41 + 1);
    v92 = v80;
LABEL_15:
    v93 = v94;
    goto LABEL_16;
  }

  __break(1u);
LABEL_83:
  if (v86 == *MEMORY[0x1E69B81B8])
  {
    (*(v41 + 13))(v63, *MEMORY[0x1E69B80D8], v138);
    result = PKPassKitBundle();
    if (result)
    {
      v116 = result;
      v88 = sub_1BE04B6F4();

      v91 = *(v41 + 1);
      v92 = v63;
      goto LABEL_58;
    }

    goto LABEL_110;
  }

LABEL_87:
  if (v86 == *MEMORY[0x1E69B8228] || v86 == *MEMORY[0x1E69B8188])
  {
LABEL_31:
    v98 = v133;
    v89 = v138;
    (*(v41 + 13))(v133, *MEMORY[0x1E69B80D8], v138);
    result = PKPassKitBundle();
    if (result)
    {
      v99 = result;
      goto LABEL_36;
    }

    goto LABEL_95;
  }

  (*(v41 + 13))(v119, *MEMORY[0x1E69B80D8], v138);
  result = PKPassKitBundle();
  if (result)
  {
    v117 = result;
    v118 = v119;
    v88 = sub_1BE04B6F4();

    (*(v41 + 1))(v118, v138);
    (v82[1])(v136, v137);
    return v88;
  }

LABEL_111:
  __break(1u);
  return result;
}

uint64_t sub_1BD8036F8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v29 - v4;
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v17 = *(*v1 + 16);
  if (v17)
  {
    v35 = *(v12 + 24);
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    v20 = (v7 + 48);
    v31 = v7;
    v33 = (v7 + 32);
    v34 = v19;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = &unk_1EBD39970;
    v32 = v6;
    do
    {
      sub_1BD809974(v18, v15, type metadata accessor for SEStorageUsageGroup.PassEntry);
      sub_1BD0DE19C(&v15[v35], v5, v22);
      sub_1BD8099DC(v15, type metadata accessor for SEStorageUsageGroup.PassEntry);
      if ((*v20)(v5, 1, v6) == 1)
      {
        sub_1BD0DE53C(v5, v22);
      }

      else
      {
        v23 = v22;
        v24 = *v33;
        (*v33)(v36, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1BD1D9350(0, v21[2] + 1, 1, v21);
        }

        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          v21 = sub_1BD1D9350(v25 > 1, v26 + 1, 1, v21);
        }

        v21[2] = v26 + 1;
        v27 = v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26;
        v6 = v32;
        v24(v27, v36, v32);
        v22 = v23;
      }

      v18 += v34;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD5DD258(v21, v30);
}

BOOL sub_1BD803A44(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1BD808FF4(v7, v8);
}

uint64_t sub_1BD803AD4@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v70 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v66 - v15;
  v17 = sub_1BE04AF64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v86 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v68 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v84 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v77 = &v66 - v29;
  v30 = type metadata accessor for SEStorageUsageGroup(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v80 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v1 + *(type metadata accessor for SEStorageUsageCategory(0) + 20));
  v76 = *(v34 + 16);
  if (v76)
  {
    v35 = 0;
    v75 = v34 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v74 = *(v31 + 72);
    v89 = (v18 + 48);
    v90 = (v18 + 32);
    v83 = v18 + 16;
    v81 = v18 + 8;
    v71 = (v18 + 56);
    v72 = v16;
    v78 = MEMORY[0x1E69E7CC0];
    v85 = v4;
    v73 = v12;
    v88 = v18;
    while (1)
    {
      v79 = v35;
      v36 = v80;
      sub_1BD809974(v75 + v74 * v35, v80, type metadata accessor for SEStorageUsageGroup);
      v37 = *v36;
      v38 = *(*v36 + 16);
      if (v38)
      {
        v87 = *(v70 + 24);
        v39 = v37 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
        v40 = *(v69 + 72);
        v41 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1BD809974(v39, v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
          sub_1BD0DE19C(&v87[v4], v8, &unk_1EBD39970);
          sub_1BD8099DC(v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if ((*v89)(v8, 1, v17) == 1)
          {
            sub_1BD0DE53C(v8, &unk_1EBD39970);
          }

          else
          {
            v42 = *v90;
            (*v90)(v86, v8, v17);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_1BD1D9350(0, *(v41 + 2) + 1, 1, v41);
            }

            v44 = *(v41 + 2);
            v43 = *(v41 + 3);
            if (v44 >= v43 >> 1)
            {
              v41 = sub_1BD1D9350(v43 > 1, v44 + 1, 1, v41);
            }

            *(v41 + 2) = v44 + 1;
            v42(&v41[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v44], v86, v17);
            v4 = v85;
          }

          v39 += v40;
          --v38;
        }

        while (v38);
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      v45 = *(v41 + 2);
      if (v45)
      {
        v46 = *(v88 + 16);
        v47 = v84;
        v87 = &v41[(*(v88 + 80) + 32) & ~*(v88 + 80)];
        v82 = v46;
        result = (v46)(v84);
        v49 = v68;
        if (v45 != 1)
        {
          v61 = 1;
          while (1)
          {
            v62 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              break;
            }

            v63 = v88;
            v82(v49, &v87[*(v88 + 72) * v61], v17);
            sub_1BD805124(&qword_1EBD525D0, MEMORY[0x1E6969530]);
            v64 = sub_1BE0522F4();
            v65 = *(v63 + 8);
            if (v64)
            {
              v65(v47, v17);
              result = (*v90)(v47, v49, v17);
            }

            else
            {
              result = (v65)(v49, v17);
            }

            ++v61;
            v47 = v84;
            if (v62 == v45)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          return result;
        }

LABEL_18:
        v50 = v47;
        v51 = v73;
        (*v90)(v73, v50, v17);
        (*v71)(v51, 0, 1, v17);
      }

      else
      {
        v51 = v73;
        (*v71)(v73, 1, 1, v17);
      }

      v52 = v72;
      sub_1BD1CBBEC(v51, v72);
      sub_1BD8099DC(v80, type metadata accessor for SEStorageUsageGroup);
      v53 = (*v89)(v52, 1, v17);
      v4 = v85;
      if (v53 == 1)
      {
        sub_1BD0DE53C(v52, &unk_1EBD39970);
      }

      else
      {
        v54 = *v90;
        (*v90)(v77, v52, v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = sub_1BD1D9350(0, *(v78 + 2) + 1, 1, v78);
        }

        v58 = *(v78 + 2);
        v57 = *(v78 + 3);
        if (v58 >= v57 >> 1)
        {
          v78 = sub_1BD1D9350(v57 > 1, v58 + 1, 1, v78);
        }

        v59 = v77;
        v60 = v78;
        *(v78 + 2) = v58 + 1;
        v54(&v60[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v58], v59, v17);
      }

      v35 = v79 + 1;
      if (v79 + 1 == v76)
      {
        goto LABEL_33;
      }
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_33:
  sub_1BD5DD258(v78, v67);
}

uint64_t sub_1BD804328()
{
  v1 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageUsageGroup(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageUsageCategory(0);
  v12 = *(v0 + *(result + 20));
  v22 = *(v12 + 16);
  if (v22)
  {
    v13 = 0;
    v14 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v20 = v12;
    v21 = v7;
    v19 = v14;
    while (2)
    {
      if (v13 >= *(v12 + 16))
      {
LABEL_13:
        __break(1u);
        return result;
      }

      result = sub_1BD809974(v14 + *(v7 + 72) * v13, v10, type metadata accessor for SEStorageUsageGroup);
      v15 = 0;
      ++v13;
      v16 = *v10;
      v17 = *(*v10 + 16);
      while (v17 != v15)
      {
        if (v15 >= *(v16 + 16))
        {
          __break(1u);
          goto LABEL_13;
        }

        sub_1BD809974(v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15++, v5, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v18 = v5[*(v1 + 32)];
        result = sub_1BD8099DC(v5, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if ((v18 & 1) == 0)
        {
          sub_1BD8099DC(v10, type metadata accessor for SEStorageUsageGroup);
          return 0;
        }
      }

      result = sub_1BD8099DC(v10, type metadata accessor for SEStorageUsageGroup);
      v7 = v21;
      v14 = v19;
      v12 = v20;
      if (v13 != v22)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t sub_1BD804594(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04C164();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD809974(v2, v12, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v13 = (*(v5 + 48))(v12, 3, v4);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    goto LABEL_8;
  }

  if (v13)
  {
    v14 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v14);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, v12, v4);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  (*(v5 + 8))(v8, v4);
LABEL_9:
  v15 = type metadata accessor for SEStorageUsageCategory(0);
  return sub_1BD3D6D0C(a1, *(v2 + *(v15 + 20)));
}

uint64_t sub_1BD8047A0()
{
  v1 = v0;
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE053D04();
  sub_1BD809974(v1, v10, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v12);
    goto LABEL_9;
  }

  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  (*(v3 + 8))(v6, v2);
LABEL_9:
  v13 = type metadata accessor for SEStorageUsageCategory(0);
  sub_1BD3D6D0C(v16, *(v1 + *(v13 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD8049C4()
{
  v1 = sub_1BE04C164();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD809974(v0, v9, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v10 = (*(v2 + 48))(v9, 3, v1);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1BFB40DA0](1);
      sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
      sub_1BE052294();
      return (*(v2 + 8))(v5, v1);
    }

    v12 = 0;
  }

  return MEMORY[0x1BFB40DA0](v12);
}

uint64_t sub_1BD804BB0()
{
  v1 = v0;
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD809974(v1, v10, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v12);
    return sub_1BE053D64();
  }

  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  (*(v3 + 8))(v6, v2);
  return sub_1BE053D64();
}

uint64_t sub_1BD804DBC@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  result = sub_1BE053974();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1BD804E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1BD809060(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1BD3FF494(v7, v8);
}

uint64_t sub_1BD804E8C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1BE04C164();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE053D04();
  sub_1BD809974(v4, v13, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v14 = (*(v6 + 48))(v13, 3, v5);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    goto LABEL_8;
  }

  if (v14)
  {
    v15 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v15);
    goto LABEL_9;
  }

  (*(v6 + 32))(v9, v13, v5);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  (*(v6 + 8))(v9, v5);
LABEL_9:
  sub_1BD3D6D0C(v18, *(v4 + *(a2 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD805124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD8051B4()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v16 - v8;
  sub_1BE053084();
  v10 = *(v0 + 8);
  MEMORY[0x1BFB40DA0](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 40;
    do
    {
      sub_1BE048C84();
      sub_1BE052524();

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  v13 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  sub_1BD0DE19C(v0 + *(v13 + 24), v9, &unk_1EBD39970);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1BE053D24();
    sub_1BD805124(&qword_1EBD52550, MEMORY[0x1E6969530]);
    sub_1BE052294();
    (*(v2 + 8))(v5, v1);
  }

  v14 = *(v0 + *(v13 + 28));
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v14);
  return sub_1BE053D24();
}

uint64_t sub_1BD805434(uint64_t a1)
{
  sub_1BD3D6EDC(a1, *v1);
  v2 = type metadata accessor for SEStorageUsageGroup(0);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v3);
  v4 = *(v1 + *(v2 + 28));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1BFB40DD0](*&v4);
}

uint64_t sub_1BD805514()
{
  sub_1BE053D04();
  sub_1BD3D6EDC(v5, *v0);
  v1 = type metadata accessor for SEStorageUsageGroup(0);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v2);
  v3 = *(v0 + *(v1 + 28));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v3);
  return sub_1BE053D64();
}