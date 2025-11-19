uint64_t sub_1BD396980()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  return sub_1BE0516B4();
}

uint64_t sub_1BD396A50(double *a1, __int128 *a2)
{
  v3 = *a1;
  v8 = *a2;
  v9 = v8;
  v10 = *(&v8 + 1);
  sub_1BD0DE19C(&v10, &v7, &qword_1EBD43BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  v8 = a2[1];
  sub_1BE0516B4();
  v8 = v9;
  sub_1BE0516A4();
  if (v7 >= v3)
  {
    v8 = v9;
    v7 = v3;
    sub_1BE0516B4();
    return sub_1BD0DE53C(&v9, &qword_1EBD43BD0);
  }

  else
  {
    sub_1BD0DE53C(&v9, &qword_1EBD43BD0);
    v4 = sub_1BE051D14();
    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1BE04E7D4();
  }
}

uint64_t sub_1BD396BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516B4();
  sub_1BE0516A4();
  return sub_1BE0516B4();
}

uint64_t sub_1BD396CC8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE051694();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE051694();
  type metadata accessor for AccountObservableBalance();
  sub_1BD3975D0(&qword_1EBD43BB8, type metadata accessor for AccountObservableBalance);
  result = sub_1BE04E954();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = result;
  a1[5] = v3;
  return result;
}

uint64_t sub_1BD396E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BD396E88(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_1BD396F00(uint64_t a1, double a2)
{
  v4 = type metadata accessor for AccountBalance(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType() && (v9 = sub_1BD7B5448(), (v10 = *(v9 + 16)) != 0))
  {
    sub_1BD0E5D5C(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v10 - 1), v8);
    v11 = *v8;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v12 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
    v13 = sub_1BE052404();
    v14 = PKCurrencyAmountMake();

    if (v14)
    {
      v15 = [v14 formattedStringValue];

      if (v15)
      {

        sub_1BE052434();

        sub_1BD0E5E24(v8);
        return;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *&v21[2] = a2;
    v21[3] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
    sub_1BE0516A4();
    v16 = *&v21[1];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v17 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
    v18 = sub_1BE052404();
    v19 = PKCurrencyAmountMake();

    if (v19)
    {
      v20 = [v19 formattedStringValue];

      if (v20)
      {

        sub_1BE052434();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t objectdestroyTm_33()
{

  return swift_deallocObject();
}

uint64_t sub_1BD397270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3972E0()
{
  result = qword_1EBD43BE8;
  if (!qword_1EBD43BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43BC8);
    sub_1BD0DE4F4(&qword_1EBD43BF0, &qword_1EBD43BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43BE8);
  }

  return result;
}

unint64_t sub_1BD39740C()
{
  result = qword_1EBD43C00;
  if (!qword_1EBD43C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43C08);
    sub_1BD3972E0();
    sub_1BD3975D0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C00);
  }

  return result;
}

unint64_t sub_1BD3974F4()
{
  result = qword_1EBD43C10;
  if (!qword_1EBD43C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C10);
  }

  return result;
}

unint64_t sub_1BD39754C()
{
  result = qword_1EBD43C18;
  if (!qword_1EBD43C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C18);
  }

  return result;
}

uint64_t sub_1BD3975D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD397618()
{
  result = qword_1EBD43C28;
  if (!qword_1EBD43C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C28);
  }

  return result;
}

void *DynamicPaymentButtonSlotTag.paymentRequest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest);
  v2 = v1;
  return v1;
}

uint64_t DynamicPaymentButtonSlotTag.localizedButtonLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel);
  sub_1BE048C84();
  return v1;
}

uint64_t DynamicPaymentButtonSlotTag.appBundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID);
  sub_1BE048C84();
  return v1;
}

id DynamicPaymentButtonSlotTag.__allocating_init(type:style:paymentRequest:interfaceStyle:localizedButtonLabel:appBundleID:buttonWidth:buttonHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v21 = objc_allocWithZone(v10);
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v22 = &v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v23 = a7;
  *(v23 + 1) = a8;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a9;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a10;
  v25.receiver = v21;
  v25.super_class = v10;
  return objc_msgSendSuper2(&v25, sel_init);
}

id DynamicPaymentButtonSlotTag.init(type:style:paymentRequest:interfaceStyle:localizedButtonLabel:appBundleID:buttonWidth:buttonHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v11 = &v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v12 = a7;
  *(v12 + 1) = a8;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a9;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a10;
  v14.receiver = v10;
  v14.super_class = type metadata accessor for DynamicPaymentButtonSlotTag();
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_1BD39792C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type);
  v4 = sub_1BE052404();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style);
  v6 = sub_1BE052404();
  [a1 encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle);
  v8 = sub_1BE052404();
  [a1 encodeInteger:v7 forKey:v8];

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel + 8))
  {
    v9 = sub_1BE052404();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1BE052404();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID + 8))
  {
    v11 = sub_1BE052404();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1BE052404();
  [a1 encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth);
  v14 = sub_1BE052404();
  *&v15 = v13;
  [a1 encodeFloat:v14 forKey:v15];

  v16 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight);
  v17 = sub_1BE052404();
  *&v18 = v16;
  [a1 encodeFloat:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest);
  v20 = sub_1BE052404();
  [a1 encodeObject:v19 forKey:v20];
}

id DynamicPaymentButtonSlotTag.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1BD397E3C(a1);

  return v4;
}

id DynamicPaymentButtonSlotTag.init(coder:)(void *a1)
{
  v2 = sub_1BD397E3C(a1);

  return v2;
}

id DynamicPaymentButtonSlotTag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicPaymentButtonSlotTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicPaymentButtonSlotTag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD397E3C(void *a1)
{
  v3 = sub_1BE052404();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = v4;
  v5 = sub_1BE052404();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    v7 = swift_dynamicCast();
    v8 = v32;
    v9 = v33;
    if (!v7)
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(&v37);
    v8 = 0;
    v9 = 0;
  }

  v10 = &v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v10 = v8;
  *(v10 + 1) = v9;
  v11 = sub_1BE052404();
  v12 = [a1 decodeObjectForKey_];

  if (v12)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    v13 = swift_dynamicCast();
    v14 = v32;
    v15 = v33;
    if (!v13)
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(&v37);
    v14 = 0;
    v15 = 0;
  }

  v16 = &v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v16 = v14;
  *(v16 + 1) = v15;
  v17 = sub_1BE052404();
  [a1 decodeFloatForKey_];
  v19 = v18;

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = v19;
  v20 = sub_1BE052404();
  [a1 decodeFloatForKey_];
  v22 = v21;

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = v22;
  v23 = sub_1BE052404();
  v24 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = v24;
  v25 = sub_1BE052404();
  v26 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = v26;
  v27 = sub_1BE052404();
  v28 = [a1 decodeObjectForKey_];

  if (v28)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    sub_1BD3982CC();
    v29 = swift_dynamicCast();
    v30 = v32;
    if (!v29)
    {
      v30 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(&v37);
    v30 = 0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = v30;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for DynamicPaymentButtonSlotTag();
  return objc_msgSendSuper2(&v34, sel_init);
}

unint64_t sub_1BD3982CC()
{
  result = qword_1EBD43C80;
  if (!qword_1EBD43C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43C80);
  }

  return result;
}

void sub_1BD398318(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_14;
  }

  v33 = v2;
  v6 = *(v5 + 104);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 32))(ObjectType, v6);
  swift_unknownObjectRelease();
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= 1)
    {
      goto LABEL_4;
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_1BE053704();
  if (v9 < 1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v32 = a1;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1BE0538E4();
  v10 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB40900](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    type metadata accessor for UIFlowNode.CompletedFlowItem();
    v13 = swift_allocObject();
    v13[3] = 0;
    swift_unknownObjectWeakInit();
    v13[6] = v12;
    key = 0;
    v36 = 0xE000000000000000;
    v14 = v12;
    sub_1BE053834();

    key = 0xD00000000000001CLL;
    v36 = 0x80000001BE126460;
    v15 = [v14 description];
    v16 = sub_1BE052434();
    v18 = v17;

    MEMORY[0x1BFB3F610](v16, v18);

    v19 = v36;
    v13[4] = key;
    v13[5] = v19;
    type metadata accessor for UIFlowNode();
    v20 = swift_allocObject();
    v21 = sub_1BD39E0C4(v13, v20);
    v22 = *(v21 + 48);
    *(v21 + 48) = v12;
    sub_1BE048964();
    sub_1BD28B4B8(v22);

    v23 = [v14 navigationController];
    if (v23)
    {
      v24 = v23;
      v25 = type metadata accessor for UIFlowManagerRendererWrapper();
      v26 = objc_allocWithZone(v25);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v34.receiver = v26;
      v34.super_class = v25;
      v27 = objc_msgSendSuper2(&v34, sel_init);
      LOBYTE(key) = 0;
      v28 = v27;
      v29 = v24;
      objc_setAssociatedObject(v29, &key, v28, 1);

      *(v21 + 104) = &off_1F3BAE1D8;
      swift_unknownObjectWeakAssign();
      v14 = v28;
    }

    ++v10;
    *(v21 + 32) = 3;
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v9 != v10);

  sub_1BD6DB5A4(v37);

  v2 = v33;
  a1 = v32;
LABEL_14:
  v30 = (v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  v31 = *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  *v30 = a1;
  v30[1] = a2;
  sub_1BD0D44B8(a1);
  sub_1BD0D4744(v31);
  *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 1;
  sub_1BD39882C(0);
}

id sub_1BD3986F8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode] = 0;
  v6 = &v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented] = MEMORY[0x1E69E7CC0];
  type metadata accessor for UIStaticFlowSection();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 40) = 1953460050;
  *(v7 + 48) = 0xE400000000000000;
  *(v7 + 56) = a1;
  *(v7 + 32) = 514;
  type metadata accessor for UIFlowNode();
  v8 = swift_allocObject();
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] = sub_1BD39DE3C(v7, v8);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD39882C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60 - v10;
  v12 = sub_1BD6DBD34(0x20746E6572727543, 0xED00006574617453, 0);
  v14 = v13;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C24();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v61 = v2;
    v18 = v4;
    v19 = a1;
    v20 = v5;
    v21 = v17;
    v22 = swift_slowAlloc();
    v65[0] = v22;
    *v21 = 136315138;
    v23 = sub_1BD123690(v12, v14, v65);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v15, v16, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1BFB45F20](v22, -1, -1);
    v24 = v21;
    v5 = v20;
    a1 = v19;
    v4 = v18;
    v2 = v61;
    MEMORY[0x1BFB45F20](v24, -1, -1);
  }

  else
  {
  }

  v25 = v5[1];
  v25(v11, v4);
  v26 = sub_1BD399404();
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + 16);
    v29 = *(v26 + 24);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 24);
    swift_unknownObjectRetain();
    v32 = v2;
    v31(v2, &off_1F3BA3140, ObjectType, v29);
    if (*(v27 + 32) != 1)
    {
      *(v27 + 32) = 1;
    }

    v33 = swift_allocObject();
    *(v33 + 16) = 1;
    swift_unknownObjectRetain();
    v34 = v32;
    v35 = sub_1BE048964();
    sub_1BD39F034(v35, v33, v27, v34, v28, v29);

    swift_unknownObjectRelease();
    swift_beginAccess();
    if (*(v33 + 16))
    {
      v36 = *&v34[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode];
      if (v36)
      {
        *(v36 + 56) = 1;
        if (*(v36 + 48) > 2uLL)
        {
          v63 = &unk_1F3CDEF98;
          v37 = swift_dynamicCastObjCProtocolConditional();
          if (v37)
          {
            v38 = v37;
            sub_1BE048964();
            [v38 showLoadingUI:1 animated:1];
          }
        }
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (!a1)
  {
LABEL_23:
    sub_1BD398F04();
    return;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F84C;
  *(inited + 24) = v39;
  swift_retain_n();
  sub_1BE048964();
  sub_1BE048964();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if ((*(a1 + 114) & 1) == 0)
  {
    while (1)
    {
      v42 = Strong;

      if (!Strong)
      {
        break;
      }

      *(v39 + 16) = Strong;
      Strong = swift_weakLoadStrong();
      if (*(v42 + 114))
      {
        goto LABEL_18;
      }
    }

    *(v39 + 16) = 0;

    swift_setDeallocating();

    goto LABEL_23;
  }

  v42 = a1;
LABEL_18:
  *(v39 + 16) = Strong;

  swift_setDeallocating();

  sub_1BE048964();
  v43 = v62;
  sub_1BE04D0E4();
  sub_1BE048964();
  sub_1BE048964();
  v44 = sub_1BE04D204();
  v45 = sub_1BE052C54();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v64 = v60;
    *v46 = 136446466;
    v61 = v5;
    v47 = *(a1 + 24);
    v48 = swift_getObjectType();
    v49 = (*(v47 + 8))(v48, v47);
    v51 = sub_1BD123690(v49, v50, &v64);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2082;
    v52 = *(v42 + 24);
    v53 = swift_getObjectType();
    v54 = (*(v52 + 8))(v53, v52);
    v56 = sub_1BD123690(v54, v55, &v64);

    *(v46 + 14) = v56;
    _os_log_impl(&dword_1BD026000, v44, v45, "Node<%{public}s> failure can be caught by Node<%{public}s>", v46, 0x16u);
    v57 = v60;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v57, -1, -1);
    MEMORY[0x1BFB45F20](v46, -1, -1);

    v58 = v62;
  }

  else
  {

    v58 = v43;
  }

  v25(v58, v4);
  v59 = v2;
  sub_1BD39E348(v59, v42, v59);
}

void sub_1BD398F04()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  v46 = v0;
  v45 = *(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  v10 = sub_1BD6DBD34(0x7453206C616E6946, 0xEB00000000657461, 0);
  v12 = v11;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C24();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47 = v16;
    *v15 = 136315138;
    v17 = sub_1BD123690(v10, v12, &v47);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_1BD026000, v13, v14, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  else
  {
  }

  v18 = *(v2 + 8);
  v18(v9, v1);
  sub_1BE04D0E4();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BD026000, v19, v20, "Flow did complete", v21, 2u);
    MEMORY[0x1BFB45F20](v21, -1, -1);
  }

  v18(v5, v1);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BE0B7020;
  v24 = v45;
  *(v23 + 32) = v45;
  *(v22 + 16) = v23;
  v25 = objc_opt_self();
  sub_1BE048964();
  v26 = [v25 hashTableWithOptions_];
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F6CC;
  *(inited + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
  *(swift_initStackObject() + 16) = inited;
  v29 = sub_1BE048964();
  v30 = *(inited + 16);
  v30(&v47, v29);
  while (1)
  {
    v32 = v47;
    if (!v47)
    {
      break;
    }

    if (*(v47 + 88) == 1 && (*(v47 + 88) = 0, *(v32 + 32)))
    {
      v33 = *(v32 + 24);
      ObjectType = swift_getObjectType();
      (*(v33 + 64))(ObjectType, v33);
    }

    else
    {
    }

    v30(&v47, v31);
  }

  swift_setDeallocating();

  v35 = v46;
  v36 = (v46 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  v37 = *(v46 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  if (v37)
  {
    v38 = sub_1BE048964();
    v37(v38);
    sub_1BD0D4744(v37);
    v39 = *v36;
    *v36 = 0;
    v36[1] = 0;
    sub_1BD0D4744(v39);
    v40 = (v35 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    v41 = *(v35 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    *v40 = 0;
    v40[1] = 0;
    sub_1BD0D4744(v41);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v24 + 104);
    v43 = swift_getObjectType();
    v44 = (*(v42 + 48))(v43, v42);
    (*(v42 + 24))(v44, 1, v43, v42);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD399404()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  *(v3 + 32) = v1;
  *(v2 + 16) = v3;
  v4 = objc_opt_self();
  sub_1BE048964();
  v5 = [v4 hashTableWithOptions_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F854;
  *(inited + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
  *(swift_initStackObject() + 16) = inited;
  v8 = sub_1BE048964();
  v9 = *(inited + 16);
  (v9)(v68, v8);
  v10 = v68[0];
  if (!v68[0])
  {
LABEL_5:

    swift_setDeallocating();

    goto LABEL_6;
  }

  v11 = 0;
  while (1)
  {
    v12 = v10;
    if (*(v10 + 32) < 3u)
    {
      break;
    }

    (v9)(v68, v13);
    v10 = v68[0];
    v11 = v12;
    if (!v68[0])
    {
      goto LABEL_5;
    }
  }

  v65 = v11;

  swift_setDeallocating();

  v15 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    sub_1BE048964();
    goto LABEL_25;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_initStackObject();
  *(v17 + 16) = sub_1BD39F850;
  *(v17 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90);
  *(swift_initStackObject() + 16) = v17;
  v68[0] = v15;
  swift_retain_n();
  sub_1BE048964();

  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  v19(v67, v18);
  v21 = v67[0];
  if (v67[0])
  {
    do
    {
      if (*(v21 + 32) == 1)
      {
        sub_1BE0538C4();
        v9 = *(v68[0] + 16);
        sub_1BE0538F4();
        sub_1BE053904();
        v23 = sub_1BE0538D4();
      }

      else
      {
      }

      v19(v67, v23);
      v21 = v67[0];
    }

    while (v67[0]);
    v22 = v68[0];
  }

  else
  {
    v22 = v15;
  }

  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      goto LABEL_19;
    }
  }

  else if (*(v22 + 16))
  {
LABEL_19:
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_125;
    }

    if (*(v22 + 16))
    {
      v65 = *(v22 + 32);
      sub_1BE048964();
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_127;
  }

  v65 = 0;
  while (1)
  {
LABEL_25:
    v24 = swift_allocObject();
    *(v24 + 16) = v12;
    v25 = swift_initStackObject();
    *(v25 + 16) = sub_1BD39F850;
    *(v25 + 24) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90);
    *(swift_initStackObject() + 16) = v25;
    v68[0] = v15;
    sub_1BE048964();
    sub_1BE048964();

    v27 = *(v25 + 16);
    v28 = *(v25 + 24);
    v22 = v28;
    v27(v67, v26);
    v29 = v67[0];
    if (v67[0])
    {
      do
      {
        if (*(v29 + 32))
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          v30 = sub_1BE0538D4();
        }

        v22 = v28;
        v27(v67, v30);
        v29 = v67[0];
      }

      while (v67[0]);
      v15 = v68[0];
    }

    v31 = *(v15 + 16);
    if (!v31)
    {
      goto LABEL_42;
    }

LABEL_35:
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
LABEL_120:
      __break(1u);
LABEL_121:
      v20 = MEMORY[0x1BFB40900](v33, v15);
LABEL_40:

      sub_1BE048964();

      goto LABEL_43;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_121;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v33 < *(v15 + 16))
    {
      v20 = *(v15 + 8 * v33 + 32);
      sub_1BE048964();
      goto LABEL_40;
    }

    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    v65 = MEMORY[0x1BFB40900](0, v22);
LABEL_22:
  }

  v31 = sub_1BE053704();
  if (v31)
  {
    goto LABEL_35;
  }

LABEL_42:

  v20 = v12;
LABEL_43:
  v34 = v65;
  if (!*(v20 + 32))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v38 = *(Strong + 16);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v38)
      {
        v39 = swift_conformsToProtocol2();

        if (!v39)
        {
          goto LABEL_116;
        }
      }

      else
      {
      }
    }

    v40 = swift_weakLoadStrong();
    if (v40)
    {
      v41 = *(v40 + 16);
      swift_unknownObjectRetain();

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v41)
      {
        swift_unknownObjectRelease();
        v42 = swift_weakLoadStrong();
        if (v42)
        {
          v43 = v42;
          v44 = *(v42 + 16);
          swift_getObjectType();
          if (swift_conformsToProtocol2() && v44)
          {
            swift_beginAccess();
            v45 = *(v43 + 72);
            if (v45 >> 62)
            {
              v22 = sub_1BE053704();
            }

            else
            {
              v22 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_1BE048C84();
            v15 = 0;
            while (v22 != v15)
            {
              if ((v45 & 0xC000000000000001) != 0)
              {
                v46 = MEMORY[0x1BFB40900](v15, v45);
                if (__OFADD__(v15, 1))
                {
                  goto LABEL_70;
                }
              }

              else
              {
                if (v15 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_124;
                }

                v46 = sub_1BE048964();
                if (__OFADD__(v15, 1))
                {
LABEL_70:
                  __break(1u);
                  goto LABEL_71;
                }
              }

              v47 = *(v46 + 32);

              ++v15;
              if (v47 == 3)
              {

                goto LABEL_72;
              }
            }
          }

LABEL_116:
          v63 = swift_weakLoadStrong();
          if (v63)
          {
            v64 = v63;
            swift_beginAccess();
            v36 = *(v64 + 40);
            sub_1BE048C84();

            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }

      else
      {
LABEL_71:
        swift_unknownObjectRelease();
      }
    }

LABEL_72:
    v34 = v65;
    if (*(v20 + 32) == 1)
    {
      goto LABEL_73;
    }

LABEL_45:
    if (v34)
    {
LABEL_46:
      v35 = v34;
      swift_beginAccess();
      v36 = *(v35 + 40);
      sub_1BE048C84();
LABEL_91:
      swift_beginAccess();
      *(v20 + 40) = v36;
      goto LABEL_92;
    }

LABEL_90:
    v36 = sub_1BD1AACF8(MEMORY[0x1E69E7CC0]);
    goto LABEL_91;
  }

  if (*(v20 + 32) != 1)
  {
    goto LABEL_45;
  }

LABEL_73:
  v48 = *(v20 + 16);
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v48 || swift_conformsToProtocol2())
  {
    goto LABEL_93;
  }

  swift_beginAccess();
  v22 = *(v20 + 72);
  v9 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
LABEL_127:
    v49 = sub_1BE053704();
    goto LABEL_78;
  }

  v49 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_78:
  v33 = sub_1BE048C84();
  v15 = 0;
  while (v49 != v15)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x1BFB40900](v15, v22);
      if (__OFADD__(v15, 1))
      {
LABEL_87:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v15 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_120;
      }

      v50 = sub_1BE048964();
      if (__OFADD__(v15, 1))
      {
        goto LABEL_87;
      }
    }

    v51 = *(v50 + 32);

    ++v15;
    if (v51 == 3)
    {

      v34 = v65;
      if (v65)
      {
        goto LABEL_46;
      }

      goto LABEL_90;
    }
  }

LABEL_92:

LABEL_93:
  v52 = *(v20 + 16);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v53 = v52 == 0;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {

    if (!*(v20 + 32))
    {
      return v20;
    }

LABEL_6:

    return 0;
  }

  if (*(v20 + 32))
  {
    if (sub_1BD6DB8A0())
    {
    }

    else
    {
      if (*(v20 + 32) != 3)
      {
        *(v20 + 32) = 3;
      }

      v55 = swift_allocObject();
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1BE0B7020;
      *(v56 + 32) = v20;
      *(v55 + 16) = v56;
      v57 = swift_initStackObject();
      *(v57 + 16) = sub_1BD12FFE4;
      *(v57 + 24) = v55;
      *(swift_initStackObject() + 16) = v57;
      sub_1BE048964();
      v58 = sub_1BE048964();
      v59 = *(v57 + 16);
      v59(&v66, v58);
      for (i = v66; v66; i = v66)
      {
        if (*(i + 32) != 3)
        {
          *(i + 32) = 3;
        }

        v59(&v66, v61);
      }

      swift_setDeallocating();
    }

    v62 = sub_1BD399404(v54);

    return v62;
  }

  else
  {

    return v20;
  }
}

void sub_1BD399EE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  *(a2 + 16) = 0;
  sub_1BD39F5DC(a1, v31);
  if (v32 == 254)
  {
    if (*(a3 + 32) != 3)
    {
      *(a3 + 32) = 3;
    }

    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B7020;
    *(v16 + 32) = a3;
    *(v15 + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
    inited = swift_initStackObject();
    *(inited + 16) = sub_1BD12FFE4;
    *(inited + 24) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
    *(swift_initStackObject() + 16) = inited;
    sub_1BE048964();
    v18 = sub_1BE048964();
    v19 = *(inited + 16);
    v19(v29, v18);
    for (i = *&v29[0]; *&v29[0]; i = *&v29[0])
    {
      if (*(i + 32) != 3)
      {
        *(i + 32) = 3;
      }

      v19(v29, v21);
    }

    swift_setDeallocating();

    goto LABEL_19;
  }

  if (v32 != 255)
  {
    v29[0] = v31[0];
    v29[1] = v31[1];
    v30 = v32;
    sub_1BD39F614(v29, v27);
    if (v28 == 1)
    {
      sub_1BD39F670(v27);
    }

    else if (v28 != 2)
    {
      sub_1BE053994();
      __break(1u);
      return;
    }

    v22 = *(a3 + 16);
    v23 = *(a3 + 24);
    sub_1BD39F614(v29, v27);
    sub_1BD39AEB0(v22, v23, v27, 0, 0);
    sub_1BD0DE53C(v27, &unk_1EBD3F510);
    sub_1BD39F670(v29);
    return;
  }

  v11 = *(a3 + 16);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_19;
  }

  ObjectType = swift_getObjectType();
  v14 = (*(a6 + 56))(ObjectType, a6);
  if ((v14 | 2) == 2)
  {
    if (*(a3 + 32) != 3)
    {
      *(a3 + 32) = 3;
    }

LABEL_19:
    sub_1BD39882C(a3);
    return;
  }

  v24 = *(a3 + 48);
  *(a3 + 48) = v14;
  v25 = v14;
  sub_1BD28B4A8(v14);
  sub_1BD28B4B8(v24);
  v26 = a4;
  sub_1BE048964();
  sub_1BD39E9B4(v26, v26, a3);

  sub_1BD28B4B8(v25);
}

uint64_t sub_1BD39A244(uint64_t a1)
{
  v2 = v1;
  v109[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  i = &v95 - v11;
  v13 = sub_1BD6DB0E0();
  if (!v13)
  {
    sub_1BE04D0E4();
    sub_1BE048964();
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C34();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = a1;
      v30 = swift_slowAlloc();
      v31 = v5;
      v32 = swift_slowAlloc();
      v109[0] = v32;
      *v30 = 136446210;
      key = 0x3C65646F4ELL;
      v108 = 0xE500000000000000;
      v33 = *(v29 + 24);
      ObjectType = swift_getObjectType();
      v35 = (*(v33 + 8))(ObjectType, v33);
      MEMORY[0x1BFB3F610](v35);

      MEMORY[0x1BFB3F610](62, 0xE100000000000000);
      v36 = sub_1BD123690(key, v108, v109);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1BD026000, v27, v28, "%{public}s missing renderer", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1BFB45F20](v32, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);

      return (*(v31 + 8))(v8, v4);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }

  v15 = v13;
  v16 = v14;
  v104 = v5;
  v17 = swift_getObjectType();
  v18 = *(v16 + 80);
  v97 = v2;
  swift_unknownObjectRetain();
  v101 = v16;
  v18(v2, &off_1F3BA3130, v17, v16);
  v100 = v15;
  swift_unknownObjectRelease();
  v103 = *(a1 + 48);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BD39F6C4;
  *(v20 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90);
  *(swift_allocObject() + 16) = v20;
  sub_1BE048964();
  v21 = sub_1BD39D834();
  v22 = v21;
  key = MEMORY[0x1E69E7CC0];
  if (v21 >> 62)
  {
LABEL_89:
    v23 = sub_1BE053704();
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = v4;
  v96 = v2;
  v98 = a1;
  if (v23)
  {
    v4 = 0;
    a1 = v22 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1BFB40900](v4, v22);
        v25 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v26 = key;
          goto LABEL_20;
        }
      }

      else
      {
        if (v4 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v24 = *(v22 + 8 * v4 + 32);
        sub_1BE048964();
        v25 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      if (*(v24 + 32) == 1)
      {
        sub_1BE0538C4();
        v2 = *(key + 16);
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v4;
      if (v25 == v23)
      {
        goto LABEL_16;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v109[0] = v26;
  v38 = sub_1BE048964();
  MEMORY[0x1BFB3F7A0](v38);
  if (*((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v39 = v109[0];
  sub_1BE04D0E4();
  v40 = sub_1BE04D204();
  v4 = sub_1BE052C24();
  v41 = os_log_type_enabled(v40, v4);
  v22 = v100;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    key = v43;
    *v42 = 136446210;
    v44 = type metadata accessor for UIFlowNode();
    v45 = sub_1BE048C84();
    v46 = MEMORY[0x1BFB3F7F0](v45, v44);
    v48 = v47;

    v49 = sub_1BD123690(v46, v48, &key);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_1BD026000, v40, v4, "Activating: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1BFB45F20](v43, -1, -1);
    MEMORY[0x1BFB45F20](v42, -1, -1);
  }

  (*(v104 + 8))(i, v105);
  v50 = v101;
  v51 = v103;
  if (v39 >> 62)
  {
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v39;
  v52 = v51 - 3;
  if (!v2)
  {
    if (v52 > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_84:
      v94 = v98;
      sub_1BD6DB1B4();
      swift_unknownObjectRelease();
      *(v94 + 113) = 1;
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  v95 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented;
  v105 = v39 & 0xC000000000000001;
  v102 = v39 & 0xFFFFFFFFFFFFFF8;
  sub_1BE048C84();
  LODWORD(v104) = 0;
  v53 = 0;
  v99 = a1;
  v103 = v51 - 3;
  while (2)
  {
    v100 = (v50 + 4);
    v101 = v50;
    for (i = v53; ; ++i)
    {
      if (v105)
      {
        v4 = MEMORY[0x1BFB40900](i, a1);
        v53 = (i + 1);
        if (__OFADD__(i, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (i >= *(v102 + 16))
        {
          goto LABEL_88;
        }

        v4 = *(a1 + 8 * i + 32);
        sub_1BE048964();
        v53 = (i + 1);
        if (__OFADD__(i, 1))
        {
          goto LABEL_87;
        }
      }

      if (*(v4 + 32) != 2)
      {
        *(v4 + 114) = 0;
        v54 = *(v4 + 16);
        swift_getObjectType();
        v55 = swift_conformsToProtocol2();
        if (v55)
        {
          v56 = v54 == 0;
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          v57 = v55;
          v58 = swift_getObjectType();
          v59 = v22;
          v60 = *(v57 + 24);
          swift_unknownObjectRetain();
          v61 = v58;
          v50 = v101;
          v60(v61, v57);
          v52 = v103;
          v22 = v59;
          a1 = v99;
          swift_unknownObjectRelease();
        }

        *(v4 + 32) = 2;
      }

      if (v52 >= 0xFFFFFFFFFFFFFFFELL)
      {

        if (v53 == v2)
        {

          goto LABEL_84;
        }

        continue;
      }

      if (v104)
      {
        sub_1BD6DB14C();
        *(v4 + 112) = 0;
        *(v4 + 104) = v50;
        swift_unknownObjectWeakAssign();
        goto LABEL_47;
      }

      v62 = swift_getObjectType();
      v63 = (v50[4])(v62, v50);
      if (v63 >> 62)
      {
        break;
      }

      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v64)
      {
        goto LABEL_64;
      }

LABEL_51:
      if ((sub_1BD6DB14C() & 1) == 0)
      {
        goto LABEL_64;
      }

      *(v4 + 112) = 0;
      *(v4 + 104) = v50;
      swift_unknownObjectWeakAssign();
      objc_opt_self();
      v65 = swift_dynamicCastObjCClass();
      if (!v65)
      {
        goto LABEL_66;
      }

      v66 = v65;
      swift_unknownObjectRetain_n();
      v67 = [v66 transitioningDelegate];
      v52 = v103;
      if (!v67)
      {
        v68 = *(v4 + 48);
        if (v68 == 2)
        {
          v70 = 0;
        }

        else
        {
          if (v68 == 1)
          {
            v69 = 0;
          }

          else
          {
            v69 = *(v4 + 48);
          }

          sub_1BD28B4A8(v68);
          v70 = [v69 transitioningDelegate];

          v50 = v101;
        }

        [v66 setTransitioningDelegate_];
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
LABEL_47:

        if (v53 == v2)
        {
          goto LABEL_85;
        }

        continue;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      if (v53 == v2)
      {
        goto LABEL_85;
      }

LABEL_30:
      ;
    }

    v71 = sub_1BE053704();
    v50 = v101;

    if (!v71)
    {
      goto LABEL_51;
    }

LABEL_64:
    if ((sub_1BD6DB14C() & 1) == 0)
    {
      *(v4 + 104) = v50;
      swift_unknownObjectWeakAssign();
LABEL_66:

      v52 = v103;
      if (v53 == v2)
      {
        break;
      }

      goto LABEL_30;
    }

    v72 = *(v4 + 48);
    if (v72 < 3)
    {
      goto LABEL_69;
    }

    swift_getObjectType();
    v86 = swift_conformsToProtocol2();
    if (v86)
    {
      v87 = v86;
      sub_1BD28B4A8(v72);
      swift_unknownObjectRelease();
      *(v4 + 104) = v87;
      swift_unknownObjectWeakAssign();
      v22 = v72;
      v50 = v87;
    }

    else
    {
      objc_opt_self();
      v88 = swift_dynamicCastObjCClass();
      if (v88)
      {
        v89 = v88;
        v90 = type metadata accessor for UIFlowManagerRendererWrapper();
        v91 = objc_allocWithZone(v90);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        sub_1BD28B4A8(v72);
        v106.receiver = v91;
        v106.super_class = v90;
        v92 = objc_msgSendSuper2(&v106, sel_init);
        LOBYTE(key) = 0;
        v93 = v92;
        sub_1BD28B498(v72);
        v22 = v93;
        objc_setAssociatedObject(v89, &key, v22, 1);

        swift_unknownObjectRelease();
        sub_1BD28B4B8(v72);

        sub_1BD28B4B8(v72);
        v50 = &off_1F3BAE1D8;
        *(v4 + 104) = &off_1F3BAE1D8;
        swift_unknownObjectWeakAssign();
      }

      else
      {
LABEL_69:
        v73 = (v50[8])(v62, v50);
        v75 = v74;
        v76 = v97;
        v77 = v95;
        swift_beginAccess();
        v78 = *&v76[v77];
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v76[v77] = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = sub_1BD1D8950(0, v78[2] + 1, 1, v78);
          *&v97[v95] = v78;
        }

        v81 = v78[2];
        v80 = v78[3];
        if (v81 >= v80 >> 1)
        {
          v78 = sub_1BD1D8950((v80 > 1), v81 + 1, 1, v78);
        }

        v78[2] = v81 + 1;
        v82 = &v78[2 * v81];
        v82[4] = v73;
        v82[5] = v75;
        *&v97[v95] = v78;
        swift_endAccess();
        v83 = swift_getObjectType();
        v84 = *(v75 + 80);
        swift_unknownObjectRetain();
        v85 = v83;
        v50 = v75;
        v84(v96, &off_1F3BA3130, v85, v75);
        swift_unknownObjectRelease();
        *(v4 + 104) = v75;
        swift_unknownObjectWeakAssign();
        v22 = v73;
        a1 = v99;
      }
    }

    sub_1BD6DB1B4();
    LODWORD(v104) = 1;
    *(v4 + 113) = 1;

    v52 = v103;
    if (v53 != v2)
    {
      continue;
    }

    break;
  }

LABEL_85:
  swift_unknownObjectRelease();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1BD39AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = sub_1BD39CF78(a3, a1, a2);
  if (result)
  {
    v35 = a5;
    v36 = a4;
    v11 = *(v5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BE0B7020;
    *(v13 + 32) = v11;
    *(v12 + 16) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
    inited = swift_initStackObject();
    *(inited + 16) = sub_1BD12F81C;
    *(inited + 24) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
    *(swift_initStackObject() + 16) = inited;
    sub_1BE048964();
    v15 = sub_1BE048964();
    v16 = *(inited + 16);
    v16(&v37, v15);
    v17 = v37;
    if (v37)
    {
      v18 = 0;
      while (2)
      {
        v19 = v17;
        while (*(v19 + 16) != a1)
        {
          if (v18)
          {
            if (*(v19 + 32))
            {
              *(v19 + 104) = 0;
              swift_unknownObjectWeakAssign();
              v21 = *(v19 + 48);
              *(v19 + 48) = 2;
              sub_1BD28B4B8(v21);
              *(v19 + 32) = 0;
            }

            if (*(v19 + 57))
            {
              sub_1BD6DBB64();
            }

            else
            {
              v22 = *(v19 + 16);
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v22 && !swift_conformsToProtocol2())
              {
                sub_1BD6DB6B4();
              }
            }
          }

          v16(&v37, v20);
          v19 = v37;
          if (!v37)
          {
            v19 = v18;
            goto LABEL_20;
          }
        }

        v16(&v37, v23);
        v17 = v37;
        v18 = v19;
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_20:

    swift_setDeallocating();

    if (v19)
    {
      *(v6 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode) = v19;
      swift_retain_n();

      if (*(v19 + 32) != 3)
      {
        *(v19 + 32) = 3;
      }

      v24 = swift_allocObject();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BE0B7020;
      *(v25 + 32) = v19;
      *(v24 + 16) = v25;
      v26 = swift_initStackObject();
      *(v26 + 16) = sub_1BD12FFE4;
      *(v26 + 24) = v24;
      *(swift_initStackObject() + 16) = v26;
      sub_1BE048964();
      v27 = sub_1BE048964();
      v28 = *(v26 + 16);
      v28(&v37, v27);
      for (i = v37; v37; i = v37)
      {
        if (*(i + 32) != 3)
        {
          *(i + 32) = 3;
        }

        v28(&v37, v30);
      }

      swift_setDeallocating();

      if (v36)
      {
        if (swift_weakLoadStrong())
        {
          type metadata accessor for UIFlowNode();
          v31 = swift_allocObject();
          ObjectType = swift_getObjectType();
          v33 = swift_unknownObjectRetain_n();
          v34 = sub_1BD6DC1D0(v33, v31, ObjectType, v35);
          sub_1BD6DB314(v34, v19, v19, 1);
          swift_unknownObjectRelease();
        }
      }

      sub_1BD39882C(v19);
    }

    else
    {
      result = sub_1BE053994();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD39B338(uint64_t a1, void *a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, void *a6, void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a7;
  v69 = a8;
  v70 = a6;
  v15 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v28 = &v64 - v27;
  if (a4 <= 1u)
  {
    v39 = a1;
    v40 = a2;
    if (!a4)
    {
      sub_1BE048C84();
LABEL_12:
      ObjectType = swift_getObjectType();
      v42 = swift_allocObject();
      v43 = v70;
      v42[2] = v70;
      v42[3] = a1;
      v42[4] = a2;
      v42[5] = a5;
      v44 = v69;
      v42[6] = v68;
      v42[7] = v44;
      v45 = *(a10 + 48);
      sub_1BE048964();
      v46 = v43;
      sub_1BE048964();
      v45(sub_1BD39F5CC, v42, ObjectType, a10);
    }
  }

  else
  {
    if (a4 != 2)
    {
      v66 = v26;
      v67 = v25;
      if (a4 == 3)
      {
        sub_1BE04D0E4();
        sub_1BD39F54C(a1, a2, a3, 3u);
        sub_1BE048964();
        v29 = sub_1BE04D204();
        v30 = sub_1BE052C54();

        sub_1BD3336EC(a1, a2, a3, 3u);
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 136446466;
          v71 = v32;
          *&v72 = 0x3C65646F4ELL;
          *(&v72 + 1) = 0xE500000000000000;
          v33 = *(a5 + 24);
          v34 = swift_getObjectType();
          v35 = (*(v33 + 8))(v34, v33);
          MEMORY[0x1BFB3F610](v35);

          MEMORY[0x1BFB3F610](62, 0xE100000000000000);
          v36 = sub_1BD123690(v72, *(&v72 + 1), &v71);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          *(v31 + 14) = sub_1BD123690(a1, a2, &v71);
          _os_log_impl(&dword_1BD026000, v29, v30, "%{public}s canceling because '%{public}s'.", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v32, -1, -1);
          MEMORY[0x1BFB45F20](v31, -1, -1);
        }

        (*(v66 + 8))(v22, v67);
        result = [v70 invalidate];
        if ((result & 1) == 0)
        {
          v72 = 0u;
          v73 = 0u;
          v38 = 2;
LABEL_19:
          v74 = v38;
LABEL_24:
          v68(&v72);
          return sub_1BD39F51C(&v72);
        }
      }

      else
      {
        sub_1BE04D0E4();
        sub_1BE048964();
        sub_1BE048C84();
        v55 = sub_1BE04D204();
        v56 = sub_1BE052C54();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 136446466;
          v71 = v58;
          *&v72 = 0x3C65646F4ELL;
          *(&v72 + 1) = 0xE500000000000000;
          v59 = *(a5 + 24);
          v60 = swift_getObjectType();
          v61 = (*(v59 + 8))(v60, v59);
          MEMORY[0x1BFB3F610](v61);

          MEMORY[0x1BFB3F610](62, 0xE100000000000000);
          v62 = sub_1BD123690(v72, *(&v72 + 1), &v71);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2082;
          *(v57 + 14) = sub_1BD123690(a2, a3, &v71);
          _os_log_impl(&dword_1BD026000, v55, v56, "%{public}s failed because '%{public}s'.", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v58, -1, -1);
          MEMORY[0x1BFB45F20](v57, -1, -1);
        }

        (*(v66 + 8))(v18, v67);
        result = [v70 invalidate];
        if ((result & 1) == 0)
        {
          *&v72 = a1;
          v74 = 1;
          v63 = a1;
          goto LABEL_24;
        }
      }

      return result;
    }

    v39 = a2;
    v40 = a3;
    if (a1)
    {
      a1 = 0;
      a2 = 0;
      goto LABEL_12;
    }
  }

  v65 = v39;
  v66 = v26;
  v67 = v25;
  sub_1BE04D0E4();
  sub_1BD39F54C(a1, a2, a3, a4);
  sub_1BE048964();
  v47 = sub_1BE04D204();
  v48 = sub_1BE052C54();

  sub_1BD3336EC(a1, a2, a3, a4);
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 136446466;
    v71 = v50;
    *&v72 = 0x3C65646F4ELL;
    *(&v72 + 1) = 0xE500000000000000;
    v51 = *(a5 + 24);
    v52 = swift_getObjectType();
    v53 = (*(v51 + 8))(v52, v51);
    MEMORY[0x1BFB3F610](v53);

    MEMORY[0x1BFB3F610](62, 0xE100000000000000);
    v54 = sub_1BD123690(v72, *(&v72 + 1), &v71);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_1BD123690(v65, v40, &v71);
    _os_log_impl(&dword_1BD026000, v47, v48, "%{public}s should not be shown because '%{public}s'.", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v50, -1, -1);
    MEMORY[0x1BFB45F20](v49, -1, -1);
  }

  (*(v66 + 8))(v28, v67);
  result = [v70 invalidate];
  if ((result & 1) == 0)
  {
    v72 = 0u;
    v73 = 0u;
    v38 = -2;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1BD39BAAC(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(_OWORD *), uint64_t a7)
{
  v46 = a7;
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v42[-v21];
  result = [a2 invalidate];
  if ((result & 1) == 0)
  {
    v45 = a6;
    if (a4 && (a1 & 1) != 0)
    {
      sub_1BE04D0E4();
      sub_1BE048964();
      sub_1BE048C84();
      v24 = sub_1BE04D204();
      v25 = sub_1BE052C54();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44 = v27;
        *v26 = 136446722;
        v47 = v27;
        *&v48[0] = 0x3C65646F4ELL;
        *(&v48[0] + 1) = 0xE500000000000000;
        v43 = v25;
        v28 = *(a5 + 24);
        ObjectType = swift_getObjectType();
        v30 = (*(v28 + 8))(ObjectType, v28);
        MEMORY[0x1BFB3F610](v30);

        MEMORY[0x1BFB3F610](62, 0xE100000000000000);
        v31 = sub_1BD123690(*&v48[0], *(&v48[0] + 1), &v47);

        *(v26 + 4) = v31;
        *(v26 + 12) = 1024;
        *(v26 + 14) = 1;
        *(v26 + 18) = 2082;
        *(v26 + 20) = sub_1BD123690(a3, a4, &v47);
        _os_log_impl(&dword_1BD026000, v24, v43, "%{public}s finished preflight with shouldBeShown: %{BOOL}d because '%{public}s'", v26, 0x1Cu);
        v32 = v44;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v32, -1, -1);
        MEMORY[0x1BFB45F20](v26, -1, -1);
      }

      (*(v14 + 8))(v22, v13);
      v33 = -1;
    }

    else
    {
      sub_1BE04D0E4();
      sub_1BE048964();
      v34 = sub_1BE04D204();
      v35 = sub_1BE052C54();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 136446466;
        v47 = v37;
        *&v48[0] = 0x3C65646F4ELL;
        *(&v48[0] + 1) = 0xE500000000000000;
        v38 = *(a5 + 24);
        v39 = swift_getObjectType();
        v40 = (*(v38 + 8))(v39, v38);
        MEMORY[0x1BFB3F610](v40);

        MEMORY[0x1BFB3F610](62, 0xE100000000000000);
        v41 = sub_1BD123690(*&v48[0], *(&v48[0] + 1), &v47);

        *(v36 + 4) = v41;
        *(v36 + 12) = 1024;
        *(v36 + 14) = a1 & 1;
        _os_log_impl(&dword_1BD026000, v34, v35, "%{public}s finished preflight with shouldBeShown: %{BOOL}d", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1BFB45F20](v37, -1, -1);
        MEMORY[0x1BFB45F20](v36, -1, -1);
      }

      (*(v14 + 8))(v17, v13);
      if (a1)
      {
        v33 = -1;
      }

      else
      {
        v33 = -2;
      }
    }

    memset(v48, 0, sizeof(v48));
    v49 = v33;
    v45(v48);
    return sub_1BD39F51C(v48);
  }

  return result;
}

uint64_t sub_1BD39BEFC()
{
  v1 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B7020;
  *(v4 + 32) = v2;
  *(v3 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD12FFE4;
  *(inited + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
  *(swift_initStackObject() + 16) = inited;
  sub_1BE048964();
  v6 = sub_1BE048964();
  v7 = *(inited + 16);
  v7(v34, v6);
  v8 = v34[0];
  if (v34[0])
  {
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v8 + 32) == 3 && (sub_1BD6DB1B4() & 1) != 0)
      {
        v11 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v11);
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v9 = v35;
      }

      else
      {
      }

      v7(v34, v10);
      v8 = v34[0];
    }

    while (v34[0]);
  }

  else
  {
    v9 = v1;
  }

  swift_setDeallocating();

  if (v9 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v13 = 0;
    v29 = v9;
    v30 = v9 & 0xC000000000000001;
    v26 = v9 + 32;
    v27 = v9 & 0xFFFFFFFFFFFFFF8;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v14 = MEMORY[0x1BFB40900](v13, v9);
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v13 >= *(v27 + 16))
        {
          goto LABEL_50;
        }

        v14 = *(v26 + 8 * v13);
        sub_1BE048964();
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_49;
        }
      }

      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_44;
      }

      v32 = v13;
      v17 = Strong;
      swift_beginAccess();
      v31 = v17;
      v18 = *(v17 + 72);
      v33 = v1;
      v19 = v18 >> 62 ? sub_1BE053704() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BE048C84();
      if (v19)
      {
        break;
      }

      v22 = v1;
LABEL_39:

      *(v31 + 72) = v22;

      swift_weakAssign();
      if (*(v14 + 88))
      {
        *(v14 + 88) = 0;
        v13 = v32;
        if (*(v14 + 32))
        {
          v23 = *(v14 + 24);
          ObjectType = swift_getObjectType();
          (*(v23 + 64))(ObjectType, v23);
        }

LABEL_44:

        if (v13 == i)
        {
        }
      }

      else
      {

        v13 = v32;
        if (v32 == i)
        {
        }
      }
    }

    v1 = 0;
    v9 = v18 & 0xFFFFFFFFFFFFFF8;
    while ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1BFB40900](v1, v18);
      v21 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_47;
      }

LABEL_32:
      if (v20 == v14)
      {
      }

      else
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      ++v1;
      if (v21 == v19)
      {
        v22 = v33;
        v1 = MEMORY[0x1E69E7CC0];
        i = v28;
        v9 = v29;
        goto LABEL_39;
      }
    }

    if (v1 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v20 = *(v18 + 8 * v1 + 32);
    sub_1BE048964();
    v21 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }
}

void sub_1BD39C368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root];
  swift_getObjectType();
  v12 = sub_1BD6B0320(a1, v11);
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + 57);
    Strong = swift_retain_n();
    if (v14)
    {
LABEL_5:

      v17 = Strong;
    }

    else
    {
      while (1)
      {
        Strong = swift_weakLoadStrong();

        if (!Strong)
        {
          break;
        }

        v16 = *(Strong + 57);
        sub_1BE048964();
        if (v16 == 1)
        {
          goto LABEL_5;
        }
      }

      v17 = 0;
      Strong = v13;
    }

    sub_1BE048964();
    sub_1BE04D0E4();
    sub_1BE048964();
    sub_1BE048964();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v7;
      v21 = v20;
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v21 = 136446466;
      v43 = 0x3C65646F4ELL;
      v44 = 0xE500000000000000;
      v40 = v17;
      v22 = *(v13 + 24);
      ObjectType = swift_getObjectType();
      v41 = v3;
      v24 = ObjectType;
      HIDWORD(v36) = v19;
      v38 = v6;
      v25 = *(v22 + 8);
      sub_1BE048964();
      v26 = v25(v24, v22);
      MEMORY[0x1BFB3F610](v26);

      MEMORY[0x1BFB3F610](62, 0xE100000000000000);

      v27 = sub_1BD123690(v43, v44, v42);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2082;
      v43 = 0x3C65646F4ELL;
      v44 = 0xE500000000000000;
      v28 = *(Strong + 24);
      v29 = swift_getObjectType();
      v30 = *(v28 + 8);
      sub_1BE048964();
      v31 = v29;
      v3 = v41;
      v32 = v30(v31, v28);
      MEMORY[0x1BFB3F610](v32);

      MEMORY[0x1BFB3F610](62, 0xE100000000000000);

      v33 = sub_1BD123690(v43, v44, v42);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_1BD026000, v18, BYTE4(v36), "%{public}s canceled, removing %{public}s", v21, 0x16u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v34, -1, -1);
      MEMORY[0x1BFB45F20](v21, -1, -1);

      (*(v39 + 8))(v10, v38);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_1BE048964();
    v35 = v3;
    sub_1BD39E348(v35, Strong, v35);
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE126420);
    v42[0] = a1;
    v42[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48);
    sub_1BE053974();
    sub_1BE053994();
    __break(1u);
  }
}

uint64_t sub_1BD39C81C(uint64_t a1)
{
  v29 = sub_1BD6AF794();
  sub_1BD6AF8F8(a1, v31);
  sub_1BE053944();

  sub_1BE053A14();
  v1 = v32;
  if (!v32)
  {
LABEL_37:

    if (*(a1 + 57))
    {
      sub_1BD6DBB64();
      v17 = v29;
    }

    else
    {
      v17 = v29;
      if (*(a1 + 32))
      {
        *(a1 + 104) = 0;
        swift_unknownObjectWeakAssign();
        v18 = *(a1 + 48);
        *(a1 + 48) = 2;
        sub_1BD28B4B8(v18);
        *(a1 + 32) = 0;
      }
    }

    if (v17)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
      inited = swift_initStackObject();
      *(inited + 16) = sub_1BD39F850;
      *(inited + 24) = v19;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BD6B0218(v19, &v32);
      for (i = v32; v32; i = v32)
      {
        if (*(i + 32) != 2)
        {
          *(i + 114) = 0;
          v22 = *(i + 16);
          swift_getObjectType();
          v23 = swift_conformsToProtocol2();
          if (v23)
          {
            v24 = v22 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v25 = v23;
            ObjectType = swift_getObjectType();
            v27 = *(v25 + 24);
            swift_unknownObjectRetain();
            v27(ObjectType, v25);
            swift_unknownObjectRelease();
          }

          *(i + 32) = 2;
        }

        sub_1BD6B0218(v19, &v32);
      }

      return v29;
    }

    return v17;
  }

  v2 = MEMORY[0x1E69E7CC0];
  while ((*(v1 + 57) & 1) == 0)
  {
    v11 = *(v1 + 16);
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && !swift_conformsToProtocol2())
    {
      sub_1BD6DB6B4();
      if (!*(v1 + 32))
      {
        goto LABEL_32;
      }

LABEL_25:
      *(v1 + 104) = 0;
      swift_unknownObjectWeakAssign();
      v13 = *(v1 + 48);
      *(v1 + 48) = 2;
      sub_1BD28B4B8(v13);
      *(v1 + 32) = 0;
      goto LABEL_32;
    }

    if (*(v1 + 32))
    {
      goto LABEL_25;
    }

LABEL_32:

    sub_1BE053A14();
    v1 = v32;
    if (!v32)
    {
      goto LABEL_37;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_32;
  }

  v4 = Strong;
  swift_beginAccess();
  v5 = *(v4 + 72);
  v32 = v2;
  if (v5 >> 62)
  {
    v6 = sub_1BE053704();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1BE048C84();
  if (!v6)
  {
    v14 = v2;
LABEL_28:

    *(v4 + 72) = v14;

    swift_weakAssign();
    if ((*(v1 + 88) & 1) != 0 && (*(v1 + 88) = 0, *(v1 + 32)))
    {
      v15 = *(v1 + 24);
      v16 = swift_getObjectType();
      (*(v15 + 64))(v16, v15);
    }

    else
    {
    }

    goto LABEL_32;
  }

  v30 = v4;
  v8 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1BFB40900](v8, v5);
    v9 = result;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_54;
    }

LABEL_14:
    if (v9 == v1)
    {
    }

    else
    {
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      result = sub_1BE0538D4();
    }

    ++v8;
    if (v10 == v6)
    {
      v14 = v32;
      v4 = v30;
      v2 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }
  }

  if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  v9 = *(v5 + 8 * v8 + 32);
  result = sub_1BE048964();
  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_14;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1BD39CCAC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode))
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode))
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  return result;
}

uint64_t sub_1BD39CD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation))
  {
    sub_1BE04D0E4();
    swift_unknownObjectRetain();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      ObjectType = swift_getObjectType();
      v21 = (*(a2 + 8))(ObjectType, a2);
      v23 = sub_1BD123690(v21, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1BD026000, v16, v17, "Discarding completion of Node<%{public}s> because already performing mutation", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1BFB45F20](v19, -1, -1);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 1;

    return sub_1BD39AEB0(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1BD39CF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - v14;
  sub_1BD39F6D4(a1, v62);
  if (v63 == 255)
  {
    sub_1BD0DE53C(v62, &unk_1EBD3F510);
LABEL_9:
    v20 = 1;
    return v20 & 1;
  }

  v64[0] = v62[0];
  v64[1] = v62[1];
  v65 = v63;
  sub_1BD39F614(v64, v62);
  if (v63)
  {
    if (v63 != 1)
    {
      sub_1BD39C368(a2, a3);
LABEL_31:
      sub_1BD39F670(v64);
      v20 = 0;
      return v20 & 1;
    }

    v16 = *&v62[0];
    v17 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    if (v17)
    {
      v60[0] = *&v62[0];
      v61 = 1;
      v18 = *&v62[0];
      sub_1BD0D44B8(v17);
      v19 = v17(v60);
      sub_1BD0DE53C(v60, &qword_1EBD43CF0);
      if (v19)
      {
        sub_1BD398F04();
        sub_1BD0D4744(v17);

        sub_1BD39F670(v64);
      }

      else
      {
        sub_1BD39F670(v64);
        sub_1BD0D4744(v17);
      }

      v20 = v19 ^ 1;
      return v20 & 1;
    }

    v23 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root];
    swift_getObjectType();
    v24 = sub_1BD6B0320(a2, v23);
    if (v24)
    {
      v25 = v24;
      v57 = v8;
      v58 = v16;
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
      inited = swift_initStackObject();
      *(inited + 16) = sub_1BD39F84C;
      *(inited + 24) = v26;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (*(v25 + 115))
      {
        v29 = v25;
LABEL_22:
        v56 = v3;
        *(v26 + 16) = Strong;

        swift_setDeallocating();

        sub_1BE048964();
        sub_1BE04D0E4();
        sub_1BE048964();
        sub_1BE048964();
        v30 = sub_1BE04D204();
        v31 = sub_1BE052C54();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v59[0] = v33;
          *v32 = 136446466;
          v34 = *(v25 + 24);
          ObjectType = swift_getObjectType();
          v36 = (*(v34 + 8))(ObjectType, v34);
          v38 = sub_1BD123690(v36, v37, v59);

          *(v32 + 4) = v38;
          *(v32 + 12) = 2082;
          v39 = *(v29 + 24);
          v40 = swift_getObjectType();
          v41 = (*(v39 + 8))(v40, v39);
          v43 = sub_1BD123690(v41, v42, v59);

          *(v32 + 14) = v43;
          _os_log_impl(&dword_1BD026000, v30, v31, "Node<%{public}s> failure can be caught by Node<%{public}s>", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v33, -1, -1);
          MEMORY[0x1BFB45F20](v32, -1, -1);
        }

        else
        {
        }

        (*(v57 + 8))(v15, v7);
        v44 = v58;
        v45 = v56;
        sub_1BD39E348(v45, v29, v45);

        v46 = v44;
        goto LABEL_30;
      }

      while (1)
      {
        v29 = Strong;

        if (!Strong)
        {
          break;
        }

        *(v26 + 16) = Strong;
        Strong = swift_weakLoadStrong();
        if (*(v29 + 115))
        {
          goto LABEL_22;
        }
      }

      *(v26 + 16) = 0;

      swift_setDeallocating();

      v16 = v58;
      v8 = v57;
    }

    sub_1BE04D0E4();
    v47 = v16;
    v48 = sub_1BE04D204();
    v49 = sub_1BE052C54();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = v16;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_1BD026000, v48, v49, "Received flow error and no result handler, terminating. \n %@", v50, 0xCu);
      sub_1BD0DE53C(v51, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v51, -1, -1);
      MEMORY[0x1BFB45F20](v50, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_1BD398F04();
    v46 = v16;
LABEL_30:

    goto LABEL_31;
  }

  sub_1BD1B6140(v62, v59);
  v21 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_0(v59);
    sub_1BD39F670(v64);
    goto LABEL_9;
  }

  sub_1BD038CD0(v59, v60);
  v61 = 0;
  sub_1BE048964();
  v22 = v21(v60);
  sub_1BD0DE53C(v60, &qword_1EBD43CF0);
  if (v22)
  {
    sub_1BD398F04();
  }

  sub_1BD0D4744(v21);
  v20 = v22 ^ 1;
  __swift_destroy_boxed_opaque_existential_0(v59);
  sub_1BD39F670(v64);
  return v20 & 1;
}

uint64_t sub_1BD39D6BC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  swift_getObjectType();
  v4 = sub_1BD6B0320(a1, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39DE34;
  *(inited + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
  *(swift_initStackObject() + 16) = inited;
  sub_1BE048964();
  v8 = sub_1BE048964();
  v9 = *(inited + 16);
  while (1)
  {
    v9(&v12, v8);
    if (!v12)
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {

      goto LABEL_8;
    }
  }

  Strong = 0;
LABEL_8:
  swift_setDeallocating();

  return Strong;
}

unint64_t sub_1BD39D834()
{
  v0 = sub_1BE053954();

  if ((v0 & 0x8000000000000000) != 0 || (v0 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v1 = *(v0 + 16);
  v2 = v1 >> 1;
  while (v1 + 1 >= 3)
  {
    v4 = -v2;
    v5 = 4;
    while (1)
    {
      v6 = v1 - (v5 - 3);
      if (__OFSUB__(v1, v5 - 3))
      {
        break;
      }

      v7 = v5 - 4;
      if (v5 - 4 != v6)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB40900]();
          v10 = MEMORY[0x1BFB40900](v1 - (v5 - 3), v0);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          v8 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v8)
          {
            goto LABEL_30;
          }

          if (v6 >= v8)
          {
            goto LABEL_31;
          }

          v9 = *(v0 + 8 * v5);
          v10 = *(v0 + 8 * v6 + 32);
          sub_1BE048964();
          sub_1BE048964();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v0 & 0x8000000000000000) != 0 || (v0 & 0x4000000000000000) != 0)
        {
          v0 = sub_1BD509758(v0);
          v11 = (v0 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v0 & 0xFFFFFFFFFFFFFF8;
        *((v0 & 0xFFFFFFFFFFFFFF8) + 8 * v5) = v10;

        if ((v0 & 0x8000000000000000) != 0 || v11)
        {
          v0 = sub_1BD509758(v0);
          v12 = v0 & 0xFFFFFFFFFFFFFF8;
          if ((v6 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v6 >= *(v12 + 16))
        {
          goto LABEL_32;
        }

        *(v12 + 8 * v6 + 32) = v9;
      }

      ++v5;
      if (v4 + v5 == 4)
      {
        return v0;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v13 = sub_1BE053704();
    if (v13 < -1)
    {
      __break(1u);
    }

    v1 = v13;
    v2 = v13 / 2;
  }

  return v0;
}

unint64_t sub_1BD39DB00()
{
  result = qword_1EBD43CD8;
  if (!qword_1EBD43CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43CD8);
  }

  return result;
}

uint64_t sub_1BD39DB58(uint64_t a1)
{
  result = sub_1BD39CCAC();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(a1, 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD39DBE0(uint64_t a1)
{
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    if (!Strong || (swift_unknownObjectRelease(), (v5 = swift_unknownObjectWeakLoadStrong()) != 0) && (v6 = v5, swift_unknownObjectRelease(), v6 == a1))
    {
      if (*&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion])
      {
        sub_1BD398F04();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v7 = v1;
      v8 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BE0B7020;
      *(v9 + 32) = v3;
      *(v8 + 16) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
      inited = swift_initStackObject();
      *(inited + 16) = sub_1BD12FFE4;
      *(inited + 24) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
      *(swift_initStackObject() + 16) = inited;
      sub_1BE048964();
      v11 = sub_1BE048964();
      v12 = *(inited + 16);
      v12(&v18, v11);
      while (1)
      {
        v14 = v18;
        if (!v18)
        {
          break;
        }

        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          swift_unknownObjectRelease();
          if (v16 == a1)
          {

            sub_1BE048964();
            v17 = v7;
            sub_1BD39E348(v17, v14, v17);
            swift_unknownObjectRelease();

            goto LABEL_20;
          }
        }

        v12(&v18, v13);
      }

      swift_unknownObjectRelease();

LABEL_20:
      swift_setDeallocating();
    }
  }

  else
  {

    sub_1BD398F04();
  }
}

uint64_t sub_1BD39DE3C(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x1E69E7CC8];
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  swift_weakInit();
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 112) = 514;
  *(a2 + 16) = a1;
  *(a2 + 24) = &off_1F3B98C00;
  v4 = byte_1EBDAB281;
  *(a2 + 114) = byte_1EBDAB280;
  *(a2 + 115) = v4;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    v10 = *(v9 + 16);
    if (v10)
    {
      type metadata accessor for UIFlowNode();
      v11 = (v9 + 40);
      do
      {
        v12 = *v11;
        v13 = swift_allocObject();
        v14 = swift_getObjectType();
        v15 = swift_unknownObjectRetain_n();
        v16 = sub_1BD6DC1D0(v15, v13, v14, v12);
        swift_beginAccess();
        v17 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v17);
        if (*((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_weakAssign();
        swift_weakAssign();
        *(v16 + 57) = 0;

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD39E0C4(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x1E69E7CC8];
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  swift_weakInit();
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 112) = 514;
  *(a2 + 16) = a1;
  *(a2 + 24) = &off_1F3BB6778;
  v4 = byte_1EBDAB281;
  *(a2 + 114) = byte_1EBDAB280;
  *(a2 + 115) = v4;
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    v10 = *(v9 + 16);
    if (v10)
    {
      type metadata accessor for UIFlowNode();
      v11 = (v9 + 40);
      do
      {
        v12 = *v11;
        v13 = swift_allocObject();
        v14 = swift_getObjectType();
        v15 = swift_unknownObjectRetain_n();
        v16 = sub_1BD6DC1D0(v15, v13, v14, v12);
        swift_beginAccess();
        v17 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v17);
        if (*((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_weakAssign();
        swift_weakAssign();
        *(v16 + 57) = 0;

        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }

  return a2;
}

uint64_t sub_1BD39E348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v69 = a3;
  v4 = sub_1BE04D214();
  v74 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v67 - v13;
  v73 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  v15 = sub_1BD6DBD34(0xD00000000000001ALL, 0x80000001BE1263E0, 0);
  v17 = v16;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v18 = sub_1BE04D204();
  v19 = sub_1BE052C24();

  v20 = os_log_type_enabled(v18, v19);
  v71 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = a1;
    v23 = v4;
    v24 = swift_slowAlloc();
    v76[0] = v24;
    *v21 = 136446210;
    v25 = sub_1BD123690(v15, v17, v76);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1BD026000, v18, v19, "%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v26 = v24;
    v4 = v23;
    a1 = v22;
    v27 = v74;
    v10 = v71;
    MEMORY[0x1BFB45F20](v26, -1, -1);
    MEMORY[0x1BFB45F20](v21, -1, -1);

    v28 = v27;
  }

  else
  {

    v28 = v74;
  }

  v70 = *(v28 + 8);
  v70(v14, v4);
  v29 = v73;
  v30 = sub_1BD28A12C(v73);
  v31 = sub_1BD39C81C(v68);
  v32 = v31;
  if (v31 && *(v31 + 32) != 2)
  {
    *(v31 + 114) = 0;
    v33 = *(v31 + 16);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    if (v34 && v33)
    {
      v35 = v34;
      ObjectType = swift_getObjectType();
      v37 = *(v35 + 24);
      sub_1BE048964();
      swift_unknownObjectRetain();
      v37(ObjectType, v35);
      v29 = v73;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE048964();
    }

    *(v32 + 32) = 2;
  }

  sub_1BD39BEFC();
  v38 = sub_1BD6DBD34(0xD000000000000019, 0x80000001BE126400, 0);
  v40 = v39;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v41 = sub_1BE04D204();
  v42 = sub_1BE052C24();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v30;
    v44 = a1;
    v45 = v4;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v76[0] = v47;
    *v46 = 136446210;
    v48 = sub_1BD123690(v38, v40, v76);

    *(v46 + 4) = v48;
    _os_log_impl(&dword_1BD026000, v41, v42, "%{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v49 = v47;
    v29 = v73;
    MEMORY[0x1BFB45F20](v49, -1, -1);
    v50 = v46;
    v4 = v45;
    a1 = v44;
    v30 = v43;
    MEMORY[0x1BFB45F20](v50, -1, -1);

    v51 = v71;
  }

  else
  {

    v51 = v10;
  }

  v52 = v70;
  v70(v51, v4);
  v53 = sub_1BD28A12C(v29);
  if (*(v53 + 2) || (v54 & 1) != 0)
  {
    sub_1BD28AB60(v30, v53);

    v59 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode;
    v60 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode);
    if (v60)
    {
      *(v60 + 56) = 0;
      if (*(v60 + 48) > 2uLL)
      {
        v75 = &unk_1F3CDEF98;
        v61 = swift_dynamicCastObjCProtocolConditional();
        if (v61)
        {
          [v61 showLoadingUI:0 animated:0];
        }
      }
    }

    *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 0;
    *(a1 + v59) = v32;
    sub_1BE048964();

    v62 = (a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    v63 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    if (v63)
    {
      v64 = sub_1BE048964();
      v63(v64);
      sub_1BD0D4744(v63);
      v65 = *v62;
      *v62 = 0;
      v62[1] = 0;
      sub_1BD0D4744(v65);
    }

    v66 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented;
    swift_beginAccess();
    *(a1 + v66) = MEMORY[0x1E69E7CC0];
  }

  else
  {

    sub_1BE04D0E4();
    v55 = sub_1BE04D204();
    v56 = sub_1BE052C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1BD026000, v55, v56, "Terminating flow because view updated to empty view", v57, 2u);
      MEMORY[0x1BFB45F20](v57, -1, -1);
    }

    v52(v72, v4);
    sub_1BD398F04();
  }
}

uint64_t sub_1BD39E9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v5 = sub_1BE04D214();
  v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v74 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v70 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  v16 = sub_1BD6DBD34(0xD00000000000001ALL, 0x80000001BE1263E0, 0);
  v18 = v17;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C24();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v72 = v5;
    v70 = a3;
    v22 = a1;
    v23 = v21;
    v24 = v15;
    v25 = swift_slowAlloc();
    v77[0] = v25;
    *v23 = 136446210;
    v26 = sub_1BD123690(v16, v18, v77);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_1BD026000, v19, v20, "%{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v27 = v25;
    v15 = v24;
    MEMORY[0x1BFB45F20](v27, -1, -1);
    v28 = v23;
    a1 = v22;
    a3 = v70;
    v5 = v72;
    MEMORY[0x1BFB45F20](v28, -1, -1);
  }

  else
  {
  }

  v29 = *(v75 + 8);
  v29(v14, v5);
  v30 = sub_1BD28A12C(v15);
  sub_1BD39A244(a3);
  v31 = *(a3 + 32);
  v32 = v74;
  v72 = v29;
  if (v31 == 2)
  {
    sub_1BE048964();
  }

  else
  {
    *(a3 + 114) = 0;
    v33 = *(a3 + 16);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    if (v34 && v33)
    {
      v35 = v34;
      ObjectType = swift_getObjectType();
      v71 = v15;
      v37 = ObjectType;
      v38 = *(v35 + 24);
      sub_1BE048964();
      swift_unknownObjectRetain();
      v39 = v37;
      v15 = v71;
      v38(v39, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE048964();
    }

    *(a3 + 32) = 2;
  }

  sub_1BD39BEFC();
  v40 = sub_1BD6DBD34(0xD000000000000019, 0x80000001BE126400, 0);
  v42 = v41;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v43 = sub_1BE04D204();
  v44 = sub_1BE052C24();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v71 = v15;
    v46 = v45;
    v47 = v30;
    v48 = a3;
    v49 = a1;
    v50 = swift_slowAlloc();
    v77[0] = v50;
    *v46 = 136446210;
    v51 = sub_1BD123690(v40, v42, v77);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1BD026000, v43, v44, "%{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v52 = v50;
    a1 = v49;
    a3 = v48;
    v30 = v47;
    MEMORY[0x1BFB45F20](v52, -1, -1);
    v53 = v46;
    v15 = v71;
    MEMORY[0x1BFB45F20](v53, -1, -1);

    v54 = v74;
  }

  else
  {

    v54 = v32;
  }

  v55 = v72;
  v72(v54, v5);
  v56 = sub_1BD28A12C(v15);
  if (*(v56 + 2) || (v57 & 1) != 0)
  {
    sub_1BD28AB60(v30, v56);

    v62 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode;
    v63 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode);
    if (v63)
    {
      *(v63 + 56) = 0;
      if (*(v63 + 48) > 2uLL)
      {
        v76 = &unk_1F3CDEF98;
        v64 = swift_dynamicCastObjCProtocolConditional();
        if (v64)
        {
          [v64 showLoadingUI:0 animated:0];
        }
      }
    }

    *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 0;
    *(a1 + v62) = a3;
    sub_1BE048964();

    v65 = (a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    v66 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    if (v66)
    {
      v67 = sub_1BE048964();
      v66(v67);
      sub_1BD0D4744(v66);
      v68 = *v65;
      *v65 = 0;
      v65[1] = 0;
      sub_1BD0D4744(v68);
    }

    v69 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented;
    swift_beginAccess();
    *(a1 + v69) = MEMORY[0x1E69E7CC0];
  }

  else
  {

    sub_1BE04D0E4();
    v58 = sub_1BE04D204();
    v59 = sub_1BE052C54();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1BD026000, v58, v59, "Terminating flow because view updated to empty view", v60, 2u);
      MEMORY[0x1BFB45F20](v60, -1, -1);
    }

    v55(v73, v5);
    sub_1BD398F04();
  }
}

uint64_t sub_1BD39F034(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1BE04D214();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  type metadata accessor for UIStaticFlowSection();
  if (swift_dynamicCastClass())
  {
    aBlock = 0u;
    v43 = 0u;
    LOBYTE(v44) = -1;
    sub_1BE048964();
    sub_1BE048964();
    v18 = a4;
    swift_unknownObjectRetain();
    sub_1BD399EE4(&aBlock, a2, a3, v18, a5, a6);
    sub_1BD39F51C(&aBlock);
  }

  else
  {
    v19 = v16;
    v38 = v12;
    sub_1BE048964();
    sub_1BE048964();
    v20 = a4;
    swift_unknownObjectRetain();
    sub_1BE04D0E4();
    sub_1BE048964();
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C24();

    v23 = a1;
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315138;
      v41 = v25;
      *&aBlock = 0x3C65646F4ELL;
      *(&aBlock + 1) = 0xE500000000000000;
      ObjectType = swift_getObjectType();
      v27 = (*(v17 + 8))(ObjectType, v17);
      MEMORY[0x1BFB3F610](v27);

      MEMORY[0x1BFB3F610](62, 0xE100000000000000);
      v28 = sub_1BD123690(aBlock, *(&aBlock + 1), &v41);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1BD026000, v21, v22, "%s starting preflight", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1BFB45F20](v25, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    (*(v39 + 8))(v40, v38);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1BD39F490;
    *(v29 + 24) = v15;
    v30 = objc_allocWithZone(MEMORY[0x1E69B8798]);
    v44 = sub_1BD39F4A0;
    v45 = v29;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_1BD126964;
    *(&v43 + 1) = &block_descriptor_77;
    v31 = _Block_copy(&aBlock);
    sub_1BE048964();
    v32 = [v30 initWithBlock_];
    _Block_release(v31);

    v33 = swift_getObjectType();
    v34 = swift_allocObject();
    v34[2] = v23;
    v34[3] = v32;
    v34[4] = sub_1BD39F490;
    v34[5] = v15;
    v34[6] = v19;
    v34[7] = v17;
    v35 = *(v17 + 40);
    sub_1BE048964();
    sub_1BE048964();
    v36 = v32;
    swift_unknownObjectRetain();
    v35(sub_1BD39F4EC, v34, v33, v17);
  }
}

uint64_t sub_1BD39F4A0()
{
  v1 = *(v0 + 16);
  memset(v3, 0, sizeof(v3));
  v4 = -2;
  v1(v3);
  return sub_1BD39F51C(v3);
}

void *sub_1BD39F54C(void *result, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 4u)
  {

    return sub_1BE048C84();
  }

  if (a4 == 4)
  {
    v5 = result;

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD39F6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI12UIFlowResultO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI13UIFlowManagerC15PreflightResult33_9102DB95F85DD41D8AD4A3C483FCE2FBLLO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD39F774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD39F7BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -2 - a2;
    }
  }

  return result;
}

double sub_1BD39F80C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 32) = -a2;
  }

  return result;
}

uint64_t sub_1BD39F87C(uint64_t a1)
{
  v2 = sub_1BE04F774();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04EF94();
}

uint64_t FlightWidgetPreflightView.content.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t sub_1BD39F988@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for FlightWidgetPreflightView();
  sub_1BD0DE19C(v1 + *(v12 + 20), v11, &qword_1EBD521C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04F774();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double FlightWidgetPreflightView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F7B4();
  v23 = 0;
  sub_1BD39FD4C(v2, &v12);
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v24 = v12;
  v25 = v13;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v33 = v21;
  v35 = v21;
  v34[0] = v12;
  v34[1] = v13;
  sub_1BD0DE19C(&v24, v11, &qword_1EBD43CF8);
  sub_1BD0DE53C(v34, &qword_1EBD43CF8);
  *(&v22[3] + 7) = v27;
  *(&v22[2] + 7) = v26;
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(&v22[8] + 7) = v32;
  *(&v22[9] + 7) = v33;
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  v5 = v22[7];
  *(a1 + 113) = v22[6];
  *(a1 + 129) = v5;
  *(a1 + 145) = v22[8];
  *(a1 + 154) = *(&v22[8] + 9);
  v6 = v22[3];
  *(a1 + 49) = v22[2];
  *(a1 + 65) = v6;
  v7 = v22[5];
  *(a1 + 81) = v22[4];
  *(a1 + 97) = v7;
  result = *v22;
  v9 = v22[1];
  *(a1 + 17) = v22[0];
  v10 = v23;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 33) = v9;
  return result;
}

uint64_t sub_1BD39FD4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD39F988(v8);
  v9 = sub_1BE04F764();
  v29 = *(v5 + 8);
  v29(v8, v4);
  v30 = v9 & 1;
  v10 = 0x4010000000000000;
  if (v9)
  {
    v10 = 0;
  }

  v31 = v10;
  v28 = sub_1BE04F504();
  v32[0] = 0;
  sub_1BD3A00F0(a1, &v37);
  v43 = *&v38[16];
  v44 = *&v38[32];
  v45 = *&v38[48];
  v46 = *&v38[64];
  v41 = v37;
  v42 = *v38;
  v47[2] = *&v38[16];
  v47[3] = *&v38[32];
  v47[4] = *&v38[48];
  v47[5] = *&v38[64];
  v47[0] = v37;
  v47[1] = *v38;
  sub_1BD0DE19C(&v41, &v35, &qword_1EBD43D30);
  sub_1BD0DE53C(v47, &qword_1EBD43D30);
  *&v40[39] = v43;
  *&v40[55] = v44;
  *&v40[71] = v45;
  *&v40[87] = v46;
  *&v40[7] = v41;
  *&v40[23] = v42;
  v11 = v32[0];
  sub_1BD39F988(v8);
  v12 = sub_1BE04F764();
  v29(v8, v4);
  v13 = v28;
  *&v35 = v28;
  *(&v35 + 1) = 0x402C000000000000;
  v36[0] = v11;
  v14 = *&v40[64];
  *&v36[65] = *&v40[64];
  v15 = *&v40[48];
  *&v36[49] = *&v40[48];
  v16 = *&v40[16];
  *&v36[17] = *&v40[16];
  v17 = *v40;
  *&v36[1] = *v40;
  v18 = *&v40[80];
  *&v36[81] = *&v40[80];
  v19 = *&v40[32];
  *&v36[33] = *&v40[32];
  *&v33[86] = *&v36[64];
  *&v33[6] = v35;
  *&v33[22] = *v36;
  *&v33[38] = *&v36[16];
  *&v36[96] = *&v40[95];
  *&v33[70] = *&v36[48];
  *&v33[102] = *&v36[80];
  *&v33[118] = *&v40[95];
  *&v33[54] = *&v36[32];
  v20 = *&v33[32];
  *(a2 + 58) = *&v33[48];
  *(a2 + 42) = v20;
  v21 = *v33;
  *(a2 + 26) = *&v33[16];
  *(a2 + 10) = v21;
  v22 = *&v33[96];
  *(a2 + 120) = *&v33[110];
  *(a2 + 106) = v22;
  v23 = *&v33[64];
  *(a2 + 90) = *&v33[80];
  *(a2 + 74) = v23;
  *&v38[33] = v19;
  *&v38[17] = v16;
  v24 = 0x4028000000000000;
  if (v12)
  {
    v24 = 0;
  }

  v25 = v30;
  v34 = v30;
  v32[127] = v12 & 1;
  *a2 = v31;
  *(a2 + 8) = 0;
  *(a2 + 9) = v25;
  *(a2 + 136) = v24;
  *(a2 + 144) = 0;
  *(a2 + 145) = v12 & 1;
  *&v37 = v13;
  *(&v37 + 1) = 0x402C000000000000;
  v38[0] = v11;
  *&v38[1] = v17;
  *&v39[15] = *&v40[95];
  *v39 = v18;
  *&v38[65] = v14;
  *&v38[49] = v15;
  sub_1BD0DE19C(&v35, v32, &qword_1EBD43D38);
  return sub_1BD0DE53C(&v37, &qword_1EBD43D38);
}

uint64_t sub_1BD3A00F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v50 - v6;
  v8 = a1;
  v9 = *a1;
  v10 = a1[1];
  v11 = v8;
  v69 = v9;
  v70 = v10;
  v64 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  v61 = *(type metadata accessor for FlightWidgetPreflightView() + 24);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  v51 = v11;
  sub_1BE04E534();
  sub_1BE050364();
  v57 = sub_1BE050354();
  v17 = *(v57 - 8);
  v56 = *(v17 + 56);
  v58 = v17 + 56;
  v52 = v7;
  v56(v7, 1, 1, v57);
  sub_1BE0503B4();
  sub_1BD0DE53C(v7, &qword_1EBD49130);
  v18 = sub_1BE0505F4();
  v20 = v19;
  LOBYTE(v11) = v21;

  sub_1BD0DDF10(v12, v14, v16 & 1);

  v69 = sub_1BE051424();
  v22 = sub_1BE050574();
  v65 = v23;
  v66 = v22;
  v62 = v24;
  v63 = v25;
  sub_1BD0DDF10(v18, v20, v11 & 1);

  v59 = sub_1BE051574();
  v55 = sub_1BE0503D4();
  KeyPath = swift_getKeyPath();
  v53 = sub_1BE051424();
  v26 = v51[3];
  v69 = v51[2];
  v70 = v26;
  sub_1BE048C84();
  v27 = sub_1BE0506C4();
  v29 = v28;
  v31 = v30;
  sub_1BE04E534();
  sub_1BE050364();
  v32 = v52;
  v56(v52, 1, 1, v57);
  sub_1BE0503B4();
  sub_1BD0DE53C(v32, &qword_1EBD49130);
  v33 = sub_1BE0505F4();
  v35 = v34;
  LOBYTE(v12) = v36;

  sub_1BD0DDF10(v27, v29, v31 & 1);

  v69 = sub_1BE051424();
  v37 = sub_1BE050574();
  v39 = v38;
  LOBYTE(v27) = v40;
  v42 = v41;
  sub_1BD0DDF10(v33, v35, v12 & 1);

  v43 = v62 & 1;
  LOBYTE(v69) = v62 & 1;
  v68 = v62 & 1;
  LOBYTE(v32) = v27 & 1;
  v67 = v27 & 1;
  v44 = v27 & 1;
  v46 = v65;
  v45 = v66;
  *a2 = v66;
  *(a2 + 8) = v46;
  *(a2 + 16) = v43;
  v47 = v59;
  *(a2 + 24) = v63;
  *(a2 + 32) = v47;
  v48 = v55;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v48;
  *(a2 + 56) = v53;
  *(a2 + 64) = v37;
  *(a2 + 72) = v39;
  *(a2 + 80) = v44;
  *(a2 + 88) = v42;
  sub_1BD0D7F18(v45, v46, v43);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D7F18(v37, v39, v32);
  sub_1BE048C84();
  sub_1BD0DDF10(v37, v39, v32);

  sub_1BD0DDF10(v66, v65, v69);
}

double FlightWidgetPreflightView.init(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE050474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for FlightWidgetPreflightView();
  v12 = *(v11 + 20);
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v15 = 0x403A000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x1E6980F08], v4);
  sub_1BD0DBFDC();
  sub_1BE04E514();
  *(a2 + *(v11 + 28)) = 0x4048000000000000;
  result = v14[0];
  *a2 = *v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t type metadata accessor for FlightWidgetPreflightView()
{
  result = qword_1EBD43D10;
  if (!qword_1EBD43D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD3A07C0()
{
  result = qword_1EBD43D00;
  if (!qword_1EBD43D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D00);
  }

  return result;
}

uint64_t sub_1BD3A0814@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  sub_1BE048C84();

  return sub_1BE048C84();
}

double sub_1BD3A0858@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE050474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = *a1;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a2 + 20);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v16 = 0x403A000000000000;
  (*(v7 + 104))(v10, *MEMORY[0x1E6980F08], v6);
  sub_1BD0DBFDC();
  sub_1BE04E514();
  *(a3 + *(a2 + 28)) = 0x4048000000000000;
  result = v15[0];
  *a3 = *v15;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  return result;
}

unint64_t sub_1BD3A09C4(uint64_t a1)
{
  result = sub_1BD3A09EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD3A09EC()
{
  result = qword_1EBD43D08;
  if (!qword_1EBD43D08)
  {
    type metadata accessor for FlightWidgetPreflightView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D08);
  }

  return result;
}

double sub_1BD3A0A60@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F7B4();
  v23 = 0;
  sub_1BD39FD4C(v2, &v12);
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v24 = v12;
  v25 = v13;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v33 = v21;
  v35 = v21;
  v34[0] = v12;
  v34[1] = v13;
  sub_1BD0DE19C(&v24, v11, &qword_1EBD43CF8);
  sub_1BD0DE53C(v34, &qword_1EBD43CF8);
  *(&v22[3] + 7) = v27;
  *(&v22[2] + 7) = v26;
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(&v22[8] + 7) = v32;
  *(&v22[9] + 7) = v33;
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  v5 = v22[7];
  *(a1 + 113) = v22[6];
  *(a1 + 129) = v5;
  *(a1 + 145) = v22[8];
  *(a1 + 154) = *(&v22[8] + 9);
  v6 = v22[3];
  *(a1 + 49) = v22[2];
  *(a1 + 65) = v6;
  v7 = v22[5];
  *(a1 + 81) = v22[4];
  *(a1 + 97) = v7;
  result = *v22;
  v9 = v22[1];
  *(a1 + 17) = v22[0];
  v10 = v23;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 33) = v9;
  return result;
}

void sub_1BD3A0C44()
{
  sub_1BD3A0CE0();
  if (v0 <= 0x3F)
  {
    sub_1BD0DDCF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD3A0CE0()
{
  if (!qword_1EBD39FD8)
  {
    sub_1BE04F774();
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39FD8);
    }
  }
}

unint64_t sub_1BD3A0D38()
{
  result = qword_1EBD43D20;
  if (!qword_1EBD43D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D20);
  }

  return result;
}

unint64_t sub_1BD3A0DB0()
{
  result = qword_1EBD43D40;
  if (!qword_1EBD43D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D40);
  }

  return result;
}

const char *sub_1BD3A0E18()
{
  if (*v0)
  {
    return "PaymentSheetSelectPassAfterExpressProvisioning";
  }

  else
  {
    return "PaymentSheetExpressProvisioning";
  }
}

uint64_t type metadata accessor for TitleBodyMultiHyperlinkView()
{
  result = qword_1EBD43D48;
  if (!qword_1EBD43D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3A0EBC()
{
  sub_1BD1C2DD8(319, &qword_1EBD4F750);
  if (v0 <= 0x3F)
  {
    sub_1BD3A0F90();
    if (v1 <= 0x3F)
    {
      sub_1BD1C2DD8(319, &qword_1EBD43D68);
      if (v2 <= 0x3F)
      {
        sub_1BD3A0FF8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD3A0F90()
{
  if (!qword_1EBD43D58)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43D60);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD43D58);
    }
  }
}

void sub_1BD3A0FF8()
{
  if (!qword_1EBD43D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45160);
    v0 = sub_1BE051964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD43D70);
    }
  }
}

uint64_t sub_1BD3A1068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD3A10B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1BD3A110C(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1936941424;
  if (v2 != 1)
  {
    v5 = 0x69566D6F74737563;
    v4 = 0xEA00000000007765;
  }

  v6 = v2 == 0;
  if (*(v1 + 8))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6F626D7973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BD3A1180()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D78);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D80);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v17 - v6;
  v8 = sub_1BE051C54();
  v9 = sub_1BE04F7B4();
  v10 = 0x4030000000000000;
  if (v8)
  {
    v10 = 0;
  }

  *v3 = v9;
  *(v3 + 1) = v10;
  v3[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D88);
  sub_1BD3A1408(&v3[*(v11 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0636DC(v3, v7);
  v12 = &v7[*(v4 + 36)];
  v13 = v17[5];
  *(v12 + 4) = v17[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v17[6];
  v14 = v17[1];
  *v12 = v17[0];
  *(v12 + 1) = v14;
  v15 = v17[3];
  *(v12 + 2) = v17[2];
  *(v12 + 3) = v15;
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D90);
  sub_1BD3A2C60();
  sub_1BD3A2D18(&qword_1EBD43DA8, &qword_1EBD43D90, &unk_1BE0D0EB0, sub_1BD3A2C60);
  sub_1BE0510B4();
  return sub_1BD0DE53C(v7, &qword_1EBD43D80);
}

uint64_t sub_1BD3A1408@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DB0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v42 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DB8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DC0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DC8);
  v38 = *(v18 - 8);
  v19 = v38;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v35 - v25;
  sub_1BD3A1848(v17);
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DD0);
  sub_1BD3A2D9C();
  sub_1BD3A33BC();
  v37 = v26;
  sub_1BE0510C4();
  sub_1BD0DE53C(v17, &qword_1EBD43DC0);
  v35 = v13;
  sub_1BD3A1F9C(v13);
  v27 = v42;
  sub_1BD3A21AC(v42);
  v28 = *(v19 + 16);
  v36 = v22;
  v28(v22, v26, v18);
  v29 = v39;
  sub_1BD0DE19C(v13, v39, &qword_1EBD43DB8);
  v30 = v40;
  sub_1BD0DE19C(v27, v40, &qword_1EBD43DB0);
  v31 = v41;
  v28(v41, v22, v18);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E88);
  sub_1BD0DE19C(v29, &v31[*(v32 + 48)], &qword_1EBD43DB8);
  sub_1BD0DE19C(v30, &v31[*(v32 + 64)], &qword_1EBD43DB0);
  sub_1BD0DE53C(v42, &qword_1EBD43DB0);
  sub_1BD0DE53C(v35, &qword_1EBD43DB8);
  v33 = *(v38 + 8);
  v33(v37, v18);
  sub_1BD0DE53C(v30, &qword_1EBD43DB0);
  sub_1BD0DE53C(v29, &qword_1EBD43DB8);
  return (v33)(v36, v18);
}

uint64_t sub_1BD3A1848@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EB8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v8 = (&v39 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EC0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DF8);
  MEMORY[0x1EEE9AC00](v41, v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DE8);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v20, v21);
  v26 = &v39 - v25;
  v27 = *(v1 + 24);
  v28 = *(v1 + 32);
  if (v28 <= 1)
  {
    v39 = v23;
    v40 = v22;
    if (v28)
    {
      *&v5[v2[6]] = v27;
      type metadata accessor for WrappedPass(0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3A382C(v27, 1u);
      sub_1BD3A382C(v27, 1u);
      PKPassFrontFaceContentSize();
      *(v5 + 3) = 0x4059000000000000;
      *(v5 + 4) = v34 / v33 * 100.0;
      *v5 = sub_1BD70C870;
      *(v5 + 1) = 0;
      v5[16] = 0;
      v5[v2[7]] = 1;
      *&v5[v2[8]] = 1911;
      sub_1BD3A3840(v5, v12, type metadata accessor for PassImage);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E08);
      sub_1BD3A2F38();
      sub_1BD25BEA8();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v15, v8, &qword_1EBD43DF8);
      swift_storeEnumTagMultiPayload();
      sub_1BD3A2EAC();
      sub_1BE04F9A4();
      sub_1BD3A38A8(v27, 1u);
      sub_1BD0DE53C(v15, &qword_1EBD43DF8);
      sub_1BD3A38BC(v5);
    }

    else
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EC8);
      v29 = sub_1BE050354();
      (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
      sub_1BD3A3808(v27, 0);
      sub_1BE0503B4();
      sub_1BD0DE53C(v19, &qword_1EBD49130);
      sub_1BDA8E41C(v27, &v44);

      v30 = v47;
      v51 = v47;
      v31 = v46;
      v32 = v45;
      v49 = v45;
      v50 = v46;
      v48 = v44;
      *v12 = v44;
      *(v12 + 1) = v32;
      *(v12 + 2) = v31;
      *(v12 + 24) = v30;
      swift_storeEnumTagMultiPayload();
      sub_1BD3A3918(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, SHIBYTE(v51));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E08);
      sub_1BD3A2F38();
      sub_1BD25BEA8();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v15, v8, &qword_1EBD43DF8);
      swift_storeEnumTagMultiPayload();
      sub_1BD3A2EAC();
      sub_1BE04F9A4();
      sub_1BD3A38A8(v27, 0);
      sub_1BD0DE53C(&v48, &qword_1EBD43E08);
      sub_1BD0DE53C(v15, &qword_1EBD43DF8);
    }

    goto LABEL_7;
  }

  if (v28 == 2)
  {
    v39 = v23;
    v40 = v22;
    *v8 = v27;
    swift_storeEnumTagMultiPayload();
    sub_1BD3A3808(v27, 2u);
    sub_1BD3A2EAC();
    sub_1BE04F9A4();
LABEL_7:
    v35 = v43;
    sub_1BD0DE204(v26, v43, &qword_1EBD43DE8);
    return (*(v39 + 56))(v35, 0, 1, v40);
  }

  v37 = *(v23 + 56);
  v38 = v43;

  return v37(v38, 1, 1, v24);
}

uint64_t sub_1BD3A1EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BD0DE19C(a1, a2, &qword_1EBD43DC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DD0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1BD3A1F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EB0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v3, v4);
  v9 = &v19 - v8;
  v10 = v1[1];
  if (v10)
  {
    v21 = *v1;
    v22 = v10;
    v19 = v6;
    v20 = v5;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v21 = v11;
    v22 = v12;
    v15 = v14 & 1;
    v23 = v14 & 1;
    v24 = v16;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43268);
    sub_1BD3A377C();
    sub_1BE050DE4();

    sub_1BD0DDF10(v11, v13, v15);

    sub_1BD0DE204(v9, a1, &qword_1EBD43EB0);
    return (*(v19 + 56))(a1, 0, 1, v20);
  }

  else
  {
    v18 = *(v6 + 56);

    return v18(a1, 1, 1, v7);
  }
}

uint64_t sub_1BD3A21AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TitleBodyMultiHyperlinkView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E90);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v19 = &v42 - v18;
  v20 = *(v2 + 16);
  if (v20)
  {
    v43 = v15;
    v46 = v19;
    v47 = a1;
    v48 = v16;
    v21 = v20;
    v22 = PKOBKTextAlignment();
    v45 = PKOBKBodyFont();
    v23 = PKOBKBodyTextColor();
    v44 = sub_1BE0511C4();
    sub_1BD3A3840(v2, v12, type metadata accessor for TitleBodyMultiHyperlinkView);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v25 = swift_allocObject();
    sub_1BD3A346C(v12, v25 + v24);
    sub_1BD3A3840(v2, v8, type metadata accessor for TitleBodyMultiHyperlinkView);
    v26 = swift_allocObject();
    sub_1BD3A346C(v8, v26 + v24);
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = sub_1BD3A34D0;
    v28[4] = v25;
    v28[5] = sub_1BD3A36FC;
    v28[6] = v26;
    v53 = sub_1BD3A376C;
    v54 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1BD198918;
    v52 = &block_descriptor_78;
    v29 = _Block_copy(&aBlock);
    sub_1BE048964();
    sub_1BE048964();

    v30 = [v27 hyperlinkSourcesFromApplyFooter:v21 linkTapped:v29];
    _Block_release(v29);
    if (v30)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EA8);
      v31 = sub_1BE052744();
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v34 = [v21 footerText];
    v35 = sub_1BE052434();
    v37 = v36;

    aBlock = v31;
    v50 = v22;
    LOBYTE(v51) = 0;
    v52 = v35;
    v53 = v37;
    v38 = v45;
    v54 = v45;
    v55 = v44;
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E98);
    sub_1BD10E4BC();
    sub_1BD3A2D18(&qword_1EBD43EA0, &qword_1EBD43E98, &unk_1BE0D0F60, sub_1BD10E4BC);
    v39 = v46;
    sub_1BE0510C4();

    v40 = v47;
    v41 = v43;
    (*(v48 + 32))(v47, v39, v43);
    return (*(v48 + 56))(v40, 0, 1, v41);
  }

  else
  {
    v32 = *(v16 + 56);

    return v32(a1, 1, 1, v17);
  }
}

uint64_t sub_1BD3A26BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BD0DE19C(a1, a2, &qword_1EBD43D80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D90);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double sub_1BD3A2760@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = sub_1BE050204();
  *(inited + 32) = v5;
  v6 = sub_1BE050224();
  *(inited + 33) = v6;
  v7 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v5)
  {
    v7 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v6)
  {
    v7 = sub_1BE050214();
  }

  sub_1BD0DE19C(a1, a2, &qword_1EBD43D80);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D90) + 36);
  *v8 = v7;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

uint64_t sub_1BD3A2890(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v17 - v12);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = type metadata accessor for MultiHyperLinkDetailSheet();
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  type metadata accessor for TitleBodyMultiHyperlinkView();
  sub_1BD0DE19C(v13, v9, &unk_1EBD45160);
  v15 = a1;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v13, &unk_1EBD45160);
}

uint64_t sub_1BD3A2A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = sub_1BE04AA64();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = type metadata accessor for MultiHyperLinkDetailSheet();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  type metadata accessor for TitleBodyMultiHyperlinkView();
  sub_1BD0DE19C(v9, v5, &unk_1EBD45160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v9, &unk_1EBD45160);
}

id sub_1BD3A2BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[6];
  v15 = a1[5];
  v9 = sub_1BE0501E4();
  sub_1BE04E1F4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v15;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = 0;
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();

  return v15;
}

unint64_t sub_1BD3A2C60()
{
  result = qword_1EBD43D98;
  if (!qword_1EBD43D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D80);
    sub_1BD0DE4F4(&qword_1EBD43DA0, &qword_1EBD43D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D98);
  }

  return result;
}

uint64_t sub_1BD3A2D18(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD3A2D9C()
{
  result = qword_1EBD43DD8;
  if (!qword_1EBD43DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DC0);
    sub_1BD3A2E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43DD8);
  }

  return result;
}

unint64_t sub_1BD3A2E20()
{
  result = qword_1EBD43DE0;
  if (!qword_1EBD43DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DE8);
    sub_1BD3A2EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43DE0);
  }

  return result;
}

unint64_t sub_1BD3A2EAC()
{
  result = qword_1EBD43DF0;
  if (!qword_1EBD43DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DF8);
    sub_1BD3A2F38();
    sub_1BD25BEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43DF0);
  }

  return result;
}

unint64_t sub_1BD3A2F38()
{
  result = qword_1EBD43E00;
  if (!qword_1EBD43E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E08);
    sub_1BD3A2FC4();
    sub_1BD3A31C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E00);
  }

  return result;
}

unint64_t sub_1BD3A2FC4()
{
  result = qword_1EBD43E10;
  if (!qword_1EBD43E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E18);
    sub_1BD3A3050();
    sub_1BD3A3108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E10);
  }

  return result;
}

unint64_t sub_1BD3A3050()
{
  result = qword_1EBD43E20;
  if (!qword_1EBD43E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E28);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD43E30, &qword_1EBD43E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E20);
  }

  return result;
}

unint64_t sub_1BD3A3108()
{
  result = qword_1EBD43E40;
  if (!qword_1EBD43E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E48);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD41F30, &qword_1EBD41F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E40);
  }

  return result;
}

unint64_t sub_1BD3A31C0()
{
  result = qword_1EBD43E50;
  if (!qword_1EBD43E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E58);
    sub_1BD3A324C();
    sub_1BD3A3304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E50);
  }

  return result;
}

unint64_t sub_1BD3A324C()
{
  result = qword_1EBD43E60;
  if (!qword_1EBD43E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E68);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E60);
  }

  return result;
}

unint64_t sub_1BD3A3304()
{
  result = qword_1EBD43E70;
  if (!qword_1EBD43E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E78);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E70);
  }

  return result;
}

unint64_t sub_1BD3A33BC()
{
  result = qword_1EBD43E80;
  if (!qword_1EBD43E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DD0);
    sub_1BD3A2D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E80);
  }

  return result;
}

void sub_1BD3A3448(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_1BD3A346C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleBodyMultiHyperlinkView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3A34D0(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TitleBodyMultiHyperlinkView();

  return sub_1BD3A2890(a1, a2, a3);
}

uint64_t objectdestroyTm_34()
{
  v1 = type metadata accessor for TitleBodyMultiHyperlinkView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 32);
  if (v3 != 255)
  {
    sub_1BD3A3448(*(v2 + 24), v3);
  }

  v4 = v2 + *(v1 + 28);

  v5 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8) + 32));
  v6 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1BE04AA64();
      (*(*(v7 - 8) + 8))(v5, v7);
    }

    else
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD3A36FC(uint64_t a1)
{
  type metadata accessor for TitleBodyMultiHyperlinkView();

  return sub_1BD3A2A0C(a1);
}

unint64_t sub_1BD3A377C()
{
  result = qword_1EBD43260;
  if (!qword_1EBD43260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43268);
    sub_1BD376A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43260);
  }

  return result;
}

id sub_1BD3A3808(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return sub_1BE048964();
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

id sub_1BD3A382C(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1BD3A3808(result, a2);
  }

  return result;
}

uint64_t sub_1BD3A3840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD3A38A8(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_1BD3A3448(a1, a2);
  }
}

uint64_t sub_1BD3A38BC(uint64_t a1)
{
  v2 = type metadata accessor for PassImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD3A3918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  if (a8)
  {
    return sub_1BD3A39BC(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
    return sub_1BD3A392C(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_1BD3A392C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1BE048964();
  }

  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE048964();
}

uint64_t sub_1BD3A39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1BE048964();
  }

  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE048964();
}

uint64_t sub_1BD3A3A24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1BD3A3A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BD3A3AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v46 = sub_1BE04F434();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43ED0);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43ED8);
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v43 = &v39 - v20;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE0);
  MEMORY[0x1EEE9AC00](v42, v21);
  v23 = &v39 - v22;
  v47 = a1;
  v49 = a1;
  v50 = a2;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE8);
  sub_1BD3A5218();
  sub_1BE0504E4();
  (*(v10 + 104))(v13, *MEMORY[0x1E69B80E0], v9);
  v24 = PKPassKitBundle();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1BE04B6F4();
    v28 = v27;

    (*(v10 + 8))(v13, v9);
    v51 = v26;
    v52 = v28;
    v29 = v46;
    (*(v5 + 104))(v8, *MEMORY[0x1E697C438], v46);
    sub_1BD0DE4F4(&qword_1EBD43F90, &qword_1EBD43ED0);
    sub_1BD0DDEBC();
    v30 = v43;
    v31 = v41;
    sub_1BE050C94();
    (*(v5 + 8))(v8, v29);

    (*(v40 + 8))(v17, v31);
    v32 = sub_1BE051D74();
    v33 = v47;
    if (v47)
    {
      v34 = v32;
      swift_getKeyPath();
      swift_getKeyPath();
      v35 = v33;
      sub_1BE04D8B4();

      v36 = v51;
      (*(v44 + 32))(v23, v30, v45);
      v37 = &v23[*(v42 + 36)];
      *v37 = v34;
      *(v37 + 1) = v36;
      return sub_1BD063890(v23, v48);
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for TaxFormsModel(0);
  sub_1BD3A5834(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD3A4024@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F10);
  sub_1BD3A5334();
  sub_1BE051A44();
  v2 = sub_1BE04F794();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE8);
  v4 = (a1 + *(result + 36));
  *v4 = v2;
  v4[1] = sub_1BD3A51BC;
  v4[2] = 0;
  return result;
}

uint64_t sub_1BD3A40D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v70 = sub_1BE04BD74();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v3);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v65 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F48);
  MEMORY[0x1EEE9AC00](v73, v12);
  v14 = &v65 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F98);
  MEMORY[0x1EEE9AC00](v75, v15);
  v17 = &v65 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FA0);
  MEMORY[0x1EEE9AC00](v72, v18);
  v20 = &v65 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F20);
  MEMORY[0x1EEE9AC00](v76, v21);
  v74 = &v65 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F30);
  v23 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v24);
  v26 = &v65 - v25;
  if (!a1)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = a1;
  sub_1BE04D8B4();

  if (v78 >> 62)
  {
    v28 = sub_1BE053704();
  }

  else
  {
    v28 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28 > 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50270);
    type metadata accessor for TaxFormCell();
    sub_1BD0DE4F4(&qword_1EBD43FB8, &qword_1EBD50270);
    sub_1BD3A5834(&qword_1EBD43FC0, sub_1BD3A57E8);
    sub_1BD3A5834(&qword_1EBD43F38, type metadata accessor for TaxFormCell);
    sub_1BE0519C4();
    v29 = v71;
    (*(v23 + 16))(v20, v26, v71);
    swift_storeEnumTagMultiPayload();
    sub_1BD3A5478();
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48);
    v30 = v74;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v30, v17, &qword_1EBD43F20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58);
    sub_1BD3A53C0();
    sub_1BD3A552C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v30, &qword_1EBD43F20);
    return (*(v23 + 8))(v26, v29);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v78 == 1)
  {
    *v14 = sub_1BE04F504();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v65 = v14;
    v32 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FA8) + 44)];
    sub_1BE04E4F4();
    v33 = v67;
    v34 = *(v67 + 16);
    v35 = v68;
    v34(v7, v11, v68);
    *v32 = 0;
    v32[8] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FB0);
    v34(&v32[*(v36 + 48)], v7, v35);
    v37 = &v32[*(v36 + 64)];
    *v37 = 0;
    v37[8] = 1;
    v38 = *(v33 + 8);
    v38(v11, v35);
    v38(v7, v35);
    v39 = v65;
    sub_1BD0DE19C(v65, v20, &qword_1EBD43F48);
    swift_storeEnumTagMultiPayload();
    sub_1BD3A5478();
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48);
    v40 = v74;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v40, v17, &qword_1EBD43F20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58);
    sub_1BD3A53C0();
    sub_1BD3A552C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v40, &qword_1EBD43F20);
    return sub_1BD0DE53C(v39, &qword_1EBD43F48);
  }

  v41 = v69;
  v42 = v66;
  v43 = v70;
  (*(v69 + 104))(v66, *MEMORY[0x1E69B80E0], v70);
  v44 = PKPassKitBundle();
  if (!v44)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for TaxFormsModel(0);
    sub_1BD3A5834(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
    result = sub_1BE04EEB4();
    __break(1u);
    return result;
  }

  v45 = v44;
  v46 = sub_1BE04B6F4();
  v48 = v47;

  (*(v41 + 8))(v42, v43);
  *&v78 = v46;
  *(&v78 + 1) = v48;
  sub_1BD0DDEBC();
  v74 = sub_1BE0506C4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(v45) = v52 & 1;
  v85 = v52 & 1;
  v55 = sub_1BE050414();
  KeyPath = swift_getKeyPath();
  v57 = [objc_opt_self() secondaryLabelColor];
  v58 = sub_1BE0511C4();
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v61 = sub_1BE0501D4();
  v86 = 1;
  *v17 = v74;
  *(v17 + 1) = v50;
  v17[16] = v45;
  *(v17 + 3) = v54;
  v62 = v83;
  *(v17 + 6) = v82;
  *(v17 + 7) = v62;
  *(v17 + 8) = v84;
  v63 = v79;
  *(v17 + 2) = v78;
  *(v17 + 3) = v63;
  v64 = v81;
  *(v17 + 4) = v80;
  *(v17 + 5) = v64;
  *(v17 + 18) = KeyPath;
  *(v17 + 19) = v55;
  *(v17 + 20) = v59;
  *(v17 + 21) = v58;
  *(v17 + 22) = v60;
  v17[184] = 1;
  v17[192] = v61;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  v17[232] = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58);
  sub_1BD3A53C0();
  sub_1BD3A552C();
  return sub_1BE04F9A4();
}

id sub_1BD3A4C4C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v74 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v68 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v69 = &v65 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v65 - v20;
  v22 = *a1;
  type metadata accessor for TaxFormsModel(0);
  sub_1BD3A5834(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
  v23 = v22;
  v24 = sub_1BE04EEC4();
  v72 = v25;
  v73 = v24;
  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD3A5834(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  v26 = sub_1BE04EEC4();
  v70 = v27;
  v71 = v26;
  *a2 = v23;
  v28 = type metadata accessor for TaxFormCell();
  v29 = sub_1BE04AA64();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  sub_1BD0DE19C(v21, v17, &unk_1EBD3CF70);
  sub_1BE051694();
  sub_1BD0DE53C(v21, &unk_1EBD3CF70);
  v30 = a2 + v28[6];
  LOBYTE(v75) = 0;
  sub_1BE051694();
  v31 = *(&v77 + 1);
  *v30 = v77;
  *(v30 + 1) = v31;
  v32 = (a2 + v28[7]);
  v33 = v72;
  *v32 = v73;
  v32[1] = v33;
  v34 = v28[8];
  v73 = a2;
  v35 = (a2 + v34);
  v36 = v70;
  *v35 = v71;
  v35[1] = v36;
  v37 = *MEMORY[0x1E69B80E0];
  v38 = v74;
  v39 = *(v74 + 104);
  v39(v13, v37, v4);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v41 = result;
  v42 = sub_1BE04B6F4();
  v71 = v43;
  v72 = v42;

  v45 = v38 + 8;
  v44 = *(v38 + 8);
  v44(v13, v4);
  v46 = v69;
  v39(v69, v37, v4);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v47 = result;
  v48 = sub_1BE04B6F4();
  v66 = v49;
  v67 = v48;

  v74 = v45;
  v44(v46, v4);
  v50 = v68;
  v70 = v4;
  v39(v68, v37, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (result)
  {
    v52 = result;
    v53 = v73;
    v54 = (v73 + v28[9]);
    v55 = sub_1BE052434();
    v57 = v56;

    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1BD110550();
    *(v51 + 32) = v55;
    *(v51 + 40) = v57;
    v58 = sub_1BE04B714();
    v60 = v59;

    v44(v50, v70);
    v61 = v71;
    *v54 = v72;
    v54[1] = v61;
    v62 = v66;
    v54[2] = v67;
    v54[3] = v62;
    v54[4] = v58;
    v54[5] = v60;
    v63 = v53 + v28[10];
    v75 = 0;
    v76 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    result = sub_1BE051694();
    v64 = v78;
    *v63 = v77;
    *(v63 + 16) = v64;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1BD3A51BC()
{
  v0 = 0.0;
  if (sub_1BE051C54())
  {
    v1 = sub_1BE04F7C4();
    return MEMORY[0x1BFB3BB10](v1) + 50.0;
  }

  return v0;
}

unint64_t sub_1BD3A5218()
{
  result = qword_1EBD43EF0;
  if (!qword_1EBD43EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43EE8);
    sub_1BD3A52A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43EF0);
  }

  return result;
}

unint64_t sub_1BD3A52A4()
{
  result = qword_1EBD43EF8;
  if (!qword_1EBD43EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F00);
    sub_1BD3A5334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43EF8);
  }

  return result;
}

unint64_t sub_1BD3A5334()
{
  result = qword_1EBD43F08;
  if (!qword_1EBD43F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F10);
    sub_1BD3A53C0();
    sub_1BD3A552C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F08);
  }

  return result;
}

unint64_t sub_1BD3A53C0()
{
  result = qword_1EBD43F18;
  if (!qword_1EBD43F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F20);
    sub_1BD3A5478();
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F18);
  }

  return result;
}

unint64_t sub_1BD3A5478()
{
  result = qword_1EBD43F28;
  if (!qword_1EBD43F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F30);
    sub_1BD3A5834(&qword_1EBD43F38, type metadata accessor for TaxFormCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F28);
  }

  return result;
}

unint64_t sub_1BD3A552C()
{
  result = qword_1EBD43F50;
  if (!qword_1EBD43F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F58);
    sub_1BD3A55B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F50);
  }

  return result;
}

unint64_t sub_1BD3A55B8()
{
  result = qword_1EBD43F60;
  if (!qword_1EBD43F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F68);
    sub_1BD3A5670();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F60);
  }

  return result;
}

unint64_t sub_1BD3A5670()
{
  result = qword_1EBD43F70;
  if (!qword_1EBD43F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F78);
    sub_1BD3A5728();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F70);
  }

  return result;
}

unint64_t sub_1BD3A5728()
{
  result = qword_1EBD43F80;
  if (!qword_1EBD43F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F88);
    sub_1BD19D16C();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F80);
  }

  return result;
}

unint64_t sub_1BD3A57E8()
{
  result = qword_1EBD43FC8;
  if (!qword_1EBD43FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43FC8);
  }

  return result;
}

uint64_t sub_1BD3A5834(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD3A587C()
{
  result = qword_1EBD43FD0;
  if (!qword_1EBD43FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43FD8);
    sub_1BD3A5908();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43FD0);
  }

  return result;
}

unint64_t sub_1BD3A5908()
{
  result = qword_1EBD43FE0;
  if (!qword_1EBD43FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43ED0);
    sub_1BD0DE4F4(&qword_1EBD43F90, &qword_1EBD43ED0);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD43FE8, &qword_1EBD43FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43FE0);
  }

  return result;
}

uint64_t FlightWidgetViewModel.__allocating_init(perspective:boardingPassAttributes:contentState:)(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FlightWidgetViewModel.init(perspective:boardingPassAttributes:contentState:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1BD3A5AA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v108 = a2;
  v3 = sub_1BE04D214();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v109 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v102 = &v98 - v8;
  v111 = sub_1BE04C004();
  v103 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04AF64();
  v104 = *(v12 - 8);
  v13 = v104;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v100 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v98 = &v98 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v99 = &v98 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v101 = &v98 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v98 - v28;
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v98 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44020);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v98 - v36;
  sub_1BE04BFF4();
  v38 = sub_1BE04B6D4();
  v39 = v33;
  v40 = v103;
  (*(v34 + 8))(v37, v39);
  v41 = v11;
  sub_1BE04AEF4();
  (*(v40 + 16))(v11, a1, v111);
  v105 = v13;
  v42 = *(v13 + 16);
  v110 = v32;
  v112 = v12;
  v42(v29, v32, v12);
  v43 = [v38 state];
  if (v43 <= 3)
  {
    v47 = v11;
    v48 = v101;
    v49 = v102;
    if (v43 > 1)
    {
      v50 = v104;
      if (v43 == 2)
      {
        v100 = *(v104 + 8);
        v100(v29, v112);
        (*(v40 + 8))(v47, v111);
        v51 = v38;
        v52 = [v38 arrival];
        v53 = [v52 currentGateTime];

        if (v53)
        {
          v54 = v51;
          v55 = v99;
          sub_1BE04AEE4();

          v56 = *(v50 + 32);
          v57 = v112;
          v56(v49, v55, v112);
          (*(v50 + 56))(v49, 0, 1, v57);
          v56(v48, v49, v57);
          v58 = v109;
          v59 = v98;
        }

        else
        {
          v83 = v49;
          v84 = v112;
          (*(v50 + 56))(v49, 1, 1, v112);
          v54 = v51;
          v85 = [v51 arrival];
          v86 = [v85 scheduledGateTime];

          sub_1BE04AEE4();
          v87 = (*(v50 + 48))(v49, 1, v84);
          v58 = v109;
          v59 = v98;
          if (v87 != 1)
          {
            sub_1BD0DE53C(v83, &unk_1EBD39970);
          }
        }

        sub_1BE04ADD4();
        sub_1BD3AB21C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
        v88 = v112;
        v89 = sub_1BE0522F4();
        v90 = v59;
        v91 = v100;
        v100(v90, v88);
        v91(v48, v88);
        if (v89)
        {
          v46 = 6;
        }

        else
        {
          v46 = 7;
        }

        v38 = v54;
        v45 = v91;
        goto LABEL_24;
      }

      v45 = *(v104 + 8);
      v45(v29, v112);
      (*(v40 + 8))(v47, v111);
      v46 = 11;
      goto LABEL_23;
    }

    v44 = v104;
    if (!v43)
    {
      v45 = *(v104 + 8);
      v45(v29, v112);
      (*(v40 + 8))(v47, v111);
      v46 = 14;
      goto LABEL_23;
    }

    v41 = v47;
    if (v43 == 1)
    {
      sub_1BD3A6764(v38, v47, v29, &v114);
      v45 = *(v44 + 8);
      v45(v29, v112);
      (*(v40 + 8))(v47, v111);
      v46 = v114;
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  if (v43 > 5)
  {
    v44 = v104;
    switch(v43)
    {
      case 6:
        v45 = *(v104 + 8);
        v45(v29, v112);
        (*(v40 + 8))(v41, v111);
        v46 = 13;
        goto LABEL_23;
      case 7:
        v45 = *(v104 + 8);
        v45(v29, v112);
        (*(v40 + 8))(v41, v111);
        v46 = 5;
        goto LABEL_23;
      case 8:
        v45 = *(v104 + 8);
        v45(v29, v112);
        (*(v40 + 8))(v41, v111);
        v46 = 8;
        goto LABEL_23;
    }

LABEL_36:
    (*(v44 + 8))(v29, v112);
    (*(v40 + 8))(v41, v111);
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE1269C0);
    v113 = [v38 state];
    type metadata accessor for PKFlightState(0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](0x6867696C66207C20, 0xEC0000003D444974);
    v92 = [v38 identifier];
    v93 = sub_1BE052434();
    v95 = v94;

    MEMORY[0x1BFB3F610](v93, v95);

    v96 = v114;
    v97 = v115;
    v114 = 0xD000000000000014;
    v115 = 0x80000001BE1269A0;
    MEMORY[0x1BFB3F610](v96, v97);

    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  if (v43 == 4)
  {
    v45 = *(v104 + 8);
    v45(v29, v112);
    (*(v40 + 8))(v41, v111);
    v60 = v38;
    v61 = [v38 arrival];
    v62 = [v61 currentGateTime];

    if (v62 && (v63 = v100, sub_1BE04AEE4(), v62, v64 = v99, sub_1BE04ADD4(), sub_1BD3AB21C(&qword_1EBD525D0, MEMORY[0x1E6969530]), v65 = v112, v66 = sub_1BE0522F4(), v45(v64, v65), v45(v63, v65), (v66 & 1) == 0))
    {
      v46 = 10;
    }

    else
    {
      v46 = 9;
    }

    v58 = v109;
    v38 = v60;
    goto LABEL_24;
  }

  v45 = *(v104 + 8);
  v45(v29, v112);
  (*(v40 + 8))(v41, v111);
  v46 = 12;
LABEL_23:
  v58 = v109;
LABEL_24:
  sub_1BE04D1D4();
  v67 = v38;
  v68 = sub_1BE04D204();
  v69 = sub_1BE052C14();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v100 = v45;
    v71 = v70;
    v72 = v58;
    v73 = swift_slowAlloc();
    v114 = v73;
    *v71 = 136315394;
    LOBYTE(v113) = v46;
    v74 = FlightExtendedState.description.getter();
    v76 = sub_1BD123690(v74, v75, &v114);

    *(v71 + 4) = v76;
    *(v71 + 12) = 2080;
    v77 = [v67 identifier];
    v78 = sub_1BE052434();
    v80 = v79;

    v81 = sub_1BD123690(v78, v80, &v114);

    *(v71 + 14) = v81;
    _os_log_impl(&dword_1BD026000, v68, v69, "[FlightWidgetViewModel] Extended flight state: %s | flightID=%s", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v73, -1, -1);
    MEMORY[0x1BFB45F20](v71, -1, -1);

    (*(v106 + 8))(v72, v107);
    result = (v100)(v110, v112);
  }

  else
  {

    (*(v106 + 8))(v58, v107);
    result = (v45)(v110, v112);
  }

  *v108 = v46;
  return result;
}

uint64_t sub_1BD3A6764@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v51 = a3;
  v53 = a2;
  v54 = a4;
  v5 = sub_1BE04D214();
  v52 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v48 - v11;
  v13 = sub_1BE04AF64();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v48 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v49 = &v48 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v50 = &v48 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v48 - v30;
  v32 = [a1 departure];
  v33 = [v32 currentGateTime];

  if (!v33)
  {
    v35 = v52;
    sub_1BE04D1D4();
    v36 = sub_1BE04D204();
    v37 = sub_1BE052C34();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1BD123690(0xD000000000000014, 0x80000001BE1269A0, &v55);
      _os_log_impl(&dword_1BD026000, v36, v37, "%s: expected currentGateTime to be set", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1BFB45F20](v39, -1, -1);
      MEMORY[0x1BFB45F20](v38, -1, -1);
    }

    result = (*(v35 + 8))(v8, v5);
    goto LABEL_7;
  }

  sub_1BE04AEE4();

  sub_1BE04BF94();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v14 + 8))(v31, v13);
    result = sub_1BD0DE53C(v12, &unk_1EBD39970);
LABEL_7:
    v40 = 2;
    goto LABEL_8;
  }

  v41 = v50;
  (*(v14 + 32))(v50, v12, v13);
  v42 = v49;
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  if (sub_1BE04AE84())
  {
    v43 = *(v14 + 8);
    v43(v18, v13);
    v43(v22, v13);
    v43(v42, v13);
    v43(v41, v13);
    result = (v43)(v31, v13);
    v40 = 0;
    goto LABEL_8;
  }

  if (sub_1BE04AE84())
  {
    v44 = *(v14 + 8);
    v44(v18, v13);
    v44(v22, v13);
    v44(v42, v13);
    v44(v41, v13);
    result = (v44)(v31, v13);
    v40 = 1;
    goto LABEL_8;
  }

  if (sub_1BE04AE84())
  {
    v45 = *(v14 + 8);
    v45(v18, v13);
    v45(v22, v13);
    v45(v42, v13);
    v45(v41, v13);
    result = (v45)(v31, v13);
    goto LABEL_7;
  }

  v46 = sub_1BE04AE74();
  v47 = *(v14 + 8);
  v47(v18, v13);
  v47(v22, v13);
  v47(v42, v13);
  v47(v41, v13);
  result = (v47)(v31, v13);
  if (v46)
  {
    v40 = 4;
  }

  else
  {
    v40 = 3;
  }

LABEL_8:
  *v54 = v40;
  return result;
}

unint64_t FlightExtendedState.description.getter()
{
  result = 0xD000000000000024;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
    case 5:
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 6:
    case 9:
    case 0xE:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 0xA:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 0xB:
      result = 0xD00000000000001ELL;
      break;
    case 0xD:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t BoardingPassAttributes.init(airlineIcon:passSnapshot:seatNumber:boardingGroup:boardingZone:boardingTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v11 = type metadata accessor for BoardingPassAttributes(0);
  return sub_1BD0DE204(a10, a9 + *(v11 + 36), &unk_1EBD39970);
}

void *FlightWidgetViewModel.flight.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id FlightWidgetViewModel.progressIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 8);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1BD3AA604(v2, v3, v4);
}

uint64_t FlightWidgetViewModel.currentTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_currentTimeZone;
  v4 = sub_1BE04B3B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlightWidgetViewModel.arrivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 8);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 16);
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 24);
  v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 32);
  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1BD3AA614(v2, v3);
}

void *FlightWidgetViewModel.airlineIcon.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineIcon);
  v2 = v1;
  return v1;
}

void *FlightWidgetViewModel.passSnapshot.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot);
  v2 = v1;
  return v1;
}

uint64_t FlightWidgetViewModel.airlineName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineName);
  sub_1BE048C84();
  return v1;
}

uint64_t FlightWidgetViewModel.flightCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_flightCode);
  sub_1BE048C84();
  return v1;
}

uint64_t FlightWidgetViewModel.departureAirportCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode);
  sub_1BE048C84();
  return v1;
}

uint64_t FlightWidgetViewModel.arrivalAirportCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3A7264(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1BE048964();
}

uint64_t sub_1BD3A7314(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t FlightWidgetViewModel.passUniqueID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passUniqueID);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3A7408()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v98 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v99 = &v91[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v10);
  v100 = &v91[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v91[-v19];
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v91[-v22];
  v24 = sub_1BE04AF64();
  v101 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v91[-v29];
  MEMORY[0x1EEE9AC00](v28, v31);
  v34 = *(v0 + 16);
  if (v34)
  {
    v96 = v33;
    v97 = &v91[-v32];
    v95 = v2;
    v35 = v34;
    if ([v35 isEstimated])
    {
      v36 = [v35 lastUpdatedDate];
      v93 = v1;
      if (v36)
      {
        v37 = v36;
        sub_1BE04AEE4();

        v38 = v101;
        v39 = v101[4];
        v39(v20, v30, v24);
        v94 = v6;
        v40 = v5;
        v41 = v38[7];
        v41(v20, 0, 1, v24);
        v39(v23, v20, v24);
        v41(v23, 0, 1, v24);
        v5 = v40;
        v6 = v94;
        v42 = (v38[6])(v23, 1, v24);
      }

      else
      {
        v44 = 1;
        v94 = v101[7];
        (v94)(v20, 1, 1, v24);
        v45 = [v35 publishedDate];
        if (v45)
        {
          v46 = v45;
          sub_1BE04AEE4();

          v44 = 0;
        }

        (v94)(v16, v44, 1, v24);
        sub_1BD0DE204(v16, v23, &unk_1EBD39970);
        v38 = v101;
        v47 = v101[6];
        if (v47(v20, 1, v24) != 1)
        {
          sub_1BD0DE53C(v20, &unk_1EBD39970);
        }

        v42 = v47(v23, 1, v24);
      }

      if (v42 == 1)
      {
        sub_1BD0DE53C(v23, &unk_1EBD39970);
        v48 = v99;
        sub_1BE04D1D4();
        v49 = v35;
        v50 = sub_1BE04D204();
        v51 = sub_1BE052C34();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v102 = v53;
          *v52 = 136315138;
          v54 = [v49 identifier];
          v55 = v5;
          v56 = sub_1BE052434();
          v58 = v57;

          v59 = sub_1BD123690(v56, v58, &v102);

          *(v52 + 4) = v59;
          _os_log_impl(&dword_1BD026000, v50, v51, "Flight has no lastUpdatedDate or publishedDate | flightID=%s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v53);
          MEMORY[0x1BFB45F20](v53, -1, -1);
          MEMORY[0x1BFB45F20](v52, -1, -1);

          (*(v6 + 8))(v99, v55);
        }

        else
        {

          (*(v6 + 8))(v48, v5);
        }
      }

      else
      {
        v60 = v97;
        (v38[4])(v97, v23, v24);
        v61 = v100;
        sub_1BE04D1D4();
        v62 = v96;
        (v38[2])(v96, v60, v24);
        v63 = v35;
        v64 = sub_1BE04D204();
        v65 = sub_1BE052C14();

        v66 = os_log_type_enabled(v64, v65);
        v99 = v63;
        if (v66)
        {
          v67 = swift_slowAlloc();
          v92 = v65;
          v68 = v67;
          v69 = swift_slowAlloc();
          v94 = v6;
          v70 = v69;
          v102 = v69;
          *v68 = 136315394;
          sub_1BD3AB21C(&unk_1EBD38830, MEMORY[0x1E6969530]);
          v71 = sub_1BE053B24();
          v73 = v72;
          v96 = v38[1];
          v96(v62, v24);
          v74 = sub_1BD123690(v71, v73, &v102);

          *(v68 + 4) = v74;
          *(v68 + 12) = 2080;
          v75 = [v63 identifier];
          v76 = sub_1BE052434();
          v78 = v77;

          v79 = sub_1BD123690(v76, v78, &v102);

          *(v68 + 14) = v79;
          _os_log_impl(&dword_1BD026000, v64, v92, "Offline mode detected, last updated: %s | flightID=%s", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v70, -1, -1);
          MEMORY[0x1BFB45F20](v68, -1, -1);

          (*(v94 + 8))(v100, v5);
        }

        else
        {

          v96 = v38[1];
          v96(v62, v24);
          (*(v6 + 8))(v61, v5);
        }

        v80 = v93;
        v81 = v97;
        v82 = sub_1BE04AE64();
        v83 = PKRelativeDateString();

        if (v83)
        {
          v84 = sub_1BE052434();
          v86 = v85;

          v87 = v95;
          v88 = v98;
          (*(v95 + 104))(v98, *MEMORY[0x1E69B80C0], v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_1BE0B69E0;
          *(v89 + 56) = MEMORY[0x1E69E6158];
          *(v89 + 64) = sub_1BD110550();
          *(v89 + 32) = v84;
          *(v89 + 40) = v86;
          v90 = sub_1BE04B714();

          (*(v87 + 8))(v88, v80);
          v96(v81, v24);
          return v90;
        }

        v96(v81, v24);
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_1BD3A7DCC()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_state);
  if (v7 >= 7 || ((0x7Bu >> v7) & 1) == 0)
  {
    sub_1BE04AEF4();
    sub_1BE04ADC4();
    (*(v3 + 8))(v6, v2);
    sub_1BE04ADC4();
  }
}

uint64_t FlightWidgetViewModel.init(perspective:boardingPassAttributes:contentState:)(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v193 = a3;
  v196 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44010);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v175 = &v172 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44018);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v174 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v173 = &v172 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v189 = &v172 - v17;
  v197 = sub_1BE04B3B4();
  v191 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197, v18);
  v188 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v187 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v185 = &v172 - v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v181 = &v172 - v28;
  v29 = sub_1BE04AF64();
  v194 = *(v29 - 8);
  v195 = v29;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v184 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v190 = &v172 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v192 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v182 = &v172 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v176 = (&v172 - v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v183 = &v172 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v180 = (&v172 - v50);
  MEMORY[0x1EEE9AC00](v49, v51);
  v53 = (&v172 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44020);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v56);
  v58 = &v172 - v57;
  v59 = sub_1BE051384();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v61);
  v63 = &v172 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  v65 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_backgroundColor;
  *(v4 + v65) = sub_1BE0513F4();
  v66 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_tintColor;
  *(v4 + v66) = sub_1BE0513C4();
  v67 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  (*(v60 + 104))(v63, *MEMORY[0x1E69814D8], v59);
  *(v4 + v67) = sub_1BE0514A4();
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_perspective) = v64;
  v186 = v64;
  sub_1BD28B4A8(v64);
  v68 = v193;
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_isRecipient) = sub_1BE04BF84() & 1;
  v69 = v68;
  sub_1BE04BFF4();
  v70 = sub_1BE04B6D4();
  (*(v55 + 8))(v58, v54);
  v71 = v196;
  *(v4 + 16) = v70;
  sub_1BD0DE19C(v71, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingPassAttributes, &qword_1EBD3D178);
  v72 = v70;
  sub_1BD3A5AA4(v69, v198);
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) = v198[0];
  v73 = [v72 airlineCode];
  v74 = sub_1BE052434();
  v76 = v75;

  *&v198[0] = v74;
  *(&v198[0] + 1) = v76;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  v199 = [v72 flightNumber];
  v77 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v77);

  v78 = *(&v198[0] + 1);
  v79 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_flightCode);
  *v79 = *&v198[0];
  v79[1] = v78;
  sub_1BD0DE19C(v71, v53, &qword_1EBD3D178);
  v80 = type metadata accessor for BoardingPassAttributes(0);
  v81 = *(v80 - 8);
  v82 = *(v81 + 48);
  v83 = v81 + 48;
  if (v82(v53, 1, v80) == 1)
  {
    sub_1BD0DE53C(v53, &qword_1EBD3D178);
    v84 = 0;
  }

  else
  {
    v84 = *v53;
    v85 = *v53;
    sub_1BD3AA664(v53);
  }

  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineIcon) = v84;
  v86 = [v72 airlineName];
  v87 = sub_1BE052434();
  v89 = v88;

  v90 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineName);
  *v90 = v87;
  v90[1] = v89;
  v91 = v180;
  sub_1BD0DE19C(v71, v180, &qword_1EBD3D178);
  if (v82(v91, 1, v80) == 1)
  {
    sub_1BD0DE53C(v91, &qword_1EBD3D178);
    v92 = 0;
  }

  else
  {
    v92 = v91[1];
    v93 = v92;
    sub_1BD3AA664(v91);
  }

  v178 = v82;
  v179 = v80;
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot) = v92;
  v94 = [v72 state];
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_state) = v94;
  v95 = [v72 departure];
  v96 = [v95 airport];

  v97 = [v96 code];
  v98 = sub_1BE052434();
  v100 = v99;

  v101 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode);
  *v101 = v98;
  v101[1] = v100;
  v180 = v96;
  v102 = [v96 timeZone];
  v177 = v83;
  if (v102)
  {
    v103 = v176;
    v104 = v102;
    sub_1BE04B394();

    v105 = 0;
    v106 = v195;
  }

  else
  {
    v105 = 1;
    v106 = v195;
    v103 = v176;
  }

  v176 = *(v191 + 56);
  v176(v103, v105, 1, v197);
  sub_1BD0DE204(v103, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone, &unk_1EBD3D260);
  v107 = [v72 departure];
  v108 = [v107 currentGateTime];

  if (v108)
  {
    v109 = v190;
    sub_1BE04AEE4();

    v110 = v194;
    v111 = *(v194 + 32);
    v112 = v181;
    v111(v181, v109, v106);
    v113 = *(v110 + 56);
    v113(v112, 0, 1, v106);
    v114 = v192;
    v111(v192, v112, v106);
    v115 = v114;
  }

  else
  {
    v116 = v194;
    v113 = *(v194 + 56);
    v117 = v181;
    v113(v181, 1, 1, v106);
    v118 = [v72 departure];
    v119 = [v118 scheduledGateTime];

    v115 = v192;
    sub_1BE04AEE4();

    if ((*(v116 + 48))(v117, 1, v106) != 1)
    {
      sub_1BD0DE53C(v117, &unk_1EBD39970);
    }

    v110 = v194;
  }

  (*(v110 + 16))(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate, v115, v106);
  v120 = [v72 arrival];
  v121 = [v120 airport];

  v122 = [v121 code];
  v123 = sub_1BE052434();
  v125 = v124;

  v126 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode);
  *v126 = v123;
  v126[1] = v125;
  v181 = v121;
  v127 = [v121 timeZone];
  if (v127)
  {
    v128 = v182;
    v129 = v127;
    sub_1BE04B394();

    v130 = 0;
    v131 = v185;
  }

  else
  {
    v130 = 1;
    v131 = v185;
    v128 = v182;
  }

  v176(v128, v130, 1, v197);
  sub_1BD0DE204(v128, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone, &unk_1EBD3D260);
  v132 = [v72 arrival];
  v133 = [v132 currentGateTime];

  v134 = v195;
  if (v133)
  {
    v135 = v190;
    sub_1BE04AEE4();

    v136 = v194;
    v137 = *(v194 + 32);
    v137(v131, v135, v134);
    v113(v131, 0, 1, v134);
    v138 = v184;
    v137(v184, v131, v134);
    v139 = v187;
  }

  else
  {
    v136 = v194;
    v113(v131, 1, 1, v195);
    v140 = [v72 arrival];
    v141 = [v140 scheduledGateTime];

    v138 = v184;
    sub_1BE04AEE4();

    v142 = (*(v136 + 48))(v131, 1, v134);
    v139 = v187;
    if (v142 != 1)
    {
      sub_1BD0DE53C(v131, &unk_1EBD39970);
    }
  }

  (*(v136 + 32))(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate, v138, v134);
  v143 = v196;
  v144 = v183;
  sub_1BD0DE19C(v196, v183, &qword_1EBD3D178);
  v145 = v179;
  if (v178(v144, 1, v179) == 1)
  {
    sub_1BD0DE53C(v144, &qword_1EBD3D178);
    v113(v139, 1, 1, v134);
  }

  else
  {
    sub_1BD0DE19C(v144 + *(v145 + 36), v139, &unk_1EBD39970);
    sub_1BD3AA664(v144);
  }

  v146 = v189;
  sub_1BD0DE204(v139, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingTime, &unk_1EBD39970);
  v147 = v188;
  v148 = v193;
  sub_1BE04BFB4();
  (*(v191 + 32))(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_currentTimeZone, v147, v197);
  v149 = sub_1BE04BFA4();
  v150 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passUniqueID);
  *v150 = v149;
  v150[1] = v151;
  v152 = v186;
  if (v186 == 1)
  {
    v153 = v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon;
    *v153 = 0xD000000000000014;
    *(v153 + 8) = 0x80000001BE1267D0;
    *(v153 + 16) = 0;
    sub_1BE04BFE4();
    if (v154)
    {
      v155 = v173;
      sub_1BE04B554();
      sub_1BD0DE204(v155, v146, &qword_1EBD44018);
    }

    else
    {
      v160 = sub_1BE04B564();
      (*(*(v160 - 8) + 56))(v146, 1, 1, v160);
    }

    v161 = v175;
    sub_1BE04BFC4();
    v162 = sub_1BE04BFD4();
    v164 = v163;
    v165 = v174;
    sub_1BD0DE19C(v146, v174, &qword_1EBD44018);
    FlightWidgetArrivedContent.init(flight:destinationTemperature:destinationWeatherSymbol:destinationWeatherCondition:)(v72, v161, v162, v164, v165, v198);

    v166 = sub_1BE04C004();
    (*(*(v166 - 8) + 8))(v148, v166);
    sub_1BD0DE53C(v196, &qword_1EBD3D178);
    sub_1BD0DE53C(v146, &qword_1EBD44018);
    (*(v136 + 8))(v192, v195);
    v167 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
    v168 = v198[1];
    *v167 = v198[0];
    v167[1] = v168;
    v167[2] = v198[2];
  }

  else
  {
    v156 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
    *v156 = 0u;
    v156[1] = 0u;
    v156[2] = 0u;
    if (v152)
    {
      v157 = v152;

      sub_1BD28B4C8(v152);
      v158 = sub_1BE04C004();
      (*(*(v158 - 8) + 8))(v148, v158);
      sub_1BD0DE53C(v143, &qword_1EBD3D178);
      (*(v136 + 8))(v192, v134);
      v159 = v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon;
      *v159 = v152;
      *(v159 + 8) = 0;
      *(v159 + 16) = 1;
    }

    else
    {

      sub_1BD28B4C8(0);
      v169 = sub_1BE04C004();
      (*(*(v169 - 8) + 8))(v148, v169);
      sub_1BD0DE53C(v143, &qword_1EBD3D178);
      (*(v136 + 8))(v192, v134);
      v170 = v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon;
      *v170 = xmmword_1BE0D11F0;
      *(v170 + 16) = 0;
    }
  }

  return v4;
}

void sub_1BD3A9168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38 - v6;
  v8 = sub_1BE04B3B4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v38 - v15;
  sub_1BD0DE19C(a2, v7, &unk_1EBD3D260);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &unk_1EBD3D260);
    v17 = sub_1BE04AE64();
    sub_1BE04B3A4();
    v18 = sub_1BE04B374();
    (*(v9 + 8))(v13, v8);
    v19 = PKTimeStringFromDate(v17, v18);

    if (v19)
    {
      v20 = sub_1BE052434();
      v22 = v21;

      v38 = v20;
      v39 = v22;
      sub_1BD0DDEBC();
      sub_1BE053554();
LABEL_14:

      return;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  (*(v9 + 32))(v16, v7, v8);
  v23 = *(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_perspective);
  if (v23 != 1)
  {
    goto LABEL_9;
  }

  sub_1BD28B4C8(1);
  sub_1BD28B4C8(1);
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_isRecipient) != 1)
  {
    goto LABEL_10;
  }

  v24 = sub_1BE04B364();
  v25 = sub_1BE04B364();
  v26 = sub_1BE04AE64();
  v27 = sub_1BE04B374();
  if (v24 == v25)
  {
    v23 = PKTimeStringFromDate(v26, v27);

    if (!v23)
    {
      __break(1u);
LABEL_9:
      v28 = v23;
      sub_1BD28B4C8(v23);
      sub_1BD28B4C8(1);
LABEL_10:
      v29 = sub_1BE04AE64();
      v30 = sub_1BE04B374();
      v31 = PKTimeStringFromDate(v29, v30);

      if (v31)
      {
        v32 = sub_1BE052434();
        v34 = v33;

        v38 = v32;
        v39 = v34;
        sub_1BD0DDEBC();
        sub_1BE053554();
        (*(v9 + 8))(v16, v8);
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_13:
    v35 = sub_1BE052434();
    v37 = v36;

    v38 = v35;
    v39 = v37;
    sub_1BD0DDEBC();
    sub_1BE053554();
    (*(v9 + 8))(v16, v8);
    goto LABEL_14;
  }

  v23 = PKTimeStringWithTimeZoneFromDate();

  if (v23)
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1BD3A958C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) >= 5u)
  {
    v11 = (v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
    v12 = *(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 8);
    if (v12)
    {
      v14 = v11[4];
      v13 = v11[5];
      v16 = v11[2];
      v15 = v11[3];
      v17 = *v11;
      *(a2 + 24) = &type metadata for FlightWidgetArrivedContent;
      *(a2 + 32) = sub_1BD3AA6C0();
      v18 = swift_allocObject();
      *a2 = v18;
      v18[2] = v17;
      v18[3] = v12;
      v18[4] = v16;
      v18[5] = v15;
      v18[6] = v14;
      v18[7] = v13;
      sub_1BE048C84();
      sub_1BE048C84();

      return sub_1BE048C84();
    }

    else
    {
      v26 = *a1;
      static FlightWidgetProgressContent.createContent(viewModel:context:)(v2, &v26, v27);
      result = get_enum_tag_for_layout_string_13PaymentUIBase16ClientViewSource_pSg_0(v27);
      if (result == 1)
      {
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
      }

      else
      {
        *(a2 + 24) = &type metadata for FlightWidgetProgressContent;
        *(a2 + 32) = sub_1BD0DCB64();
        result = swift_allocObject();
        *a2 = result;
        v19 = v27[13];
        *(result + 208) = v27[12];
        *(result + 224) = v19;
        *(result + 240) = v27[14];
        *(result + 256) = v28;
        v20 = v27[9];
        *(result + 144) = v27[8];
        *(result + 160) = v20;
        v21 = v27[11];
        *(result + 176) = v27[10];
        *(result + 192) = v21;
        v22 = v27[5];
        *(result + 80) = v27[4];
        *(result + 96) = v22;
        v23 = v27[7];
        *(result + 112) = v27[6];
        *(result + 128) = v23;
        v24 = v27[1];
        *(result + 16) = v27[0];
        *(result + 32) = v24;
        v25 = v27[3];
        *(result + 48) = v27[2];
        *(result + 64) = v25;
      }
    }
  }

  else
  {
    v4 = sub_1BE0524C4();
    v6 = v5;
    v7 = sub_1BE0524C4();
    v9 = v8;
    *(a2 + 24) = &type metadata for FlightWidgetPreflightContent;
    *(a2 + 32) = sub_1BD3A07C0();
    result = swift_allocObject();
    *a2 = result;
    *(result + 16) = v4;
    *(result + 24) = v6;
    *(result + 32) = v7;
    *(result + 40) = v9;
  }

  return result;
}

uint64_t sub_1BD3A97A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  if (v3 > 3)
  {
    if (v3 - 5 < 9)
    {
LABEL_3:
      v4 = &type metadata for FlightWidgetStatusSymbolContent;
      v5 = sub_1BD3AA714();
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v3 - 1 >= 2)
  {
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState))
    {
      v4 = type metadata accessor for FlightWidgetStatusMessageContent(0);
      v6 = &unk_1EBD44058;
      v7 = type metadata accessor for FlightWidgetStatusMessageContent;
LABEL_12:
      v5 = sub_1BD3AB21C(v6, v7);
      goto LABEL_13;
    }

LABEL_11:
    v4 = type metadata accessor for FlightWidgetPassSnapshotContent();
    v6 = &qword_1EBD44068;
    v7 = type metadata accessor for FlightWidgetPassSnapshotContent;
    goto LABEL_12;
  }

LABEL_8:
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = v8;
    v10 = PKCurrentlyReleventFlightStepForFlight();
    v11 = [v10 status];

    if (v11 == 3)
    {
      goto LABEL_3;
    }
  }

  v4 = &type metadata for FlightWidgetDetailsContent;
  v5 = sub_1BD3AA768();
LABEL_13:
  v12 = v5;
  v24 = 3;
  v13 = *(v5 + 24);
  v14 = sub_1BE0534B4();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v23 - v18;
  v13(v1, &v24, v4, v12, v17);
  Description = v4[-1].Description;
  if (Description[6](v19, 1, v4) == 1)
  {
    result = (*(v15 + 8))(v19, v14);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return Description[4](boxed_opaque_existential_1, v19, v4);
  }

  return result;
}

uint64_t sub_1BD3A9A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  v4 = v3 < 5 || v3 == 14;
  if (!v4 || (v5 = *(v1 + 16)) != 0 && (v6 = v5, v7 = PKCurrentlyReleventFlightStepForFlight(), v8 = [v7 status], v7, v6, v8 == 3))
  {
    v9 = &type metadata for FlightWidgetStatusSymbolContent;
    v10 = sub_1BD3AA714();
  }

  else
  {
    v9 = type metadata accessor for FlightWidgetPassSnapshotContent();
    v10 = sub_1BD3AB21C(&qword_1EBD44068, type metadata accessor for FlightWidgetPassSnapshotContent);
  }

  v11 = v10;
  v23 = 2;
  v12 = *(v10 + 24);
  v13 = sub_1BE0534B4();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v22 - v17;
  v12(v1, &v23, v9, v11, v16);
  Description = v9[-1].Description;
  if (Description[6](v18, 1, v9) == 1)
  {
    result = (*(v14 + 8))(v18, v13);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return Description[4](boxed_opaque_existential_1, v18, v9);
  }

  return result;
}

double sub_1BD3A9CA4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  if (v3 <= 4)
  {
    if (v3 < 3 || v3 != 3)
    {
      v7 = *(v1 + 16);
      if (!v7 || (v8 = v7, v9 = PKCurrentlyReleventFlightStepForFlight(), v10 = [v9 status], v9, v8, v10 != 3))
      {
        v4 = &type metadata for FlightWidgetDetailsContent;
        v5 = sub_1BD3AA768();
        goto LABEL_11;
      }
    }
  }

  else if (((1 << v3) & 0x3DE0) == 0)
  {
    if (v3 == 9)
    {
      v23 = sub_1BE051424();
      *(a1 + 24) = &type metadata for FlightWidgetStatusSymbolContent;
      *(a1 + 32) = sub_1BD3AA714();
      v24 = swift_allocObject();
      *a1 = v24;
      *(v24 + 16) = 0xD000000000000015;
      *(v24 + 24) = 0x80000001BE118FF0;
      *(v24 + 32) = v23;
      *(v24 + 40) = 2;
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    return result;
  }

  v4 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v5 = sub_1BD3AB21C(&qword_1EBD44058, type metadata accessor for FlightWidgetStatusMessageContent);
LABEL_11:
  v11 = v5;
  v26 = 2;
  v12 = *(v5 + 24);
  v13 = sub_1BE0534B4();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v25 - v17;
  v12(v1, &v26, v4, v11, v16);
  Description = v4[-1].Description;
  if ((Description[6])(v18, 1, v4) == 1)
  {
    (*(v14 + 8))(v18, v13);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  else
  {
    *(&v28 + 1) = v4;
    v29 = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    Description[4](boxed_opaque_existential_1, v18, v4);
  }

  result = *&v27;
  v22 = v28;
  *a1 = v27;
  *(a1 + 16) = v22;
  *(a1 + 32) = v29;
  return result;
}

uint64_t sub_1BD3A9FE4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) == 13)
  {
    v6 = type metadata accessor for FlightWidgetStatusMessageContent(0);
    v7 = &qword_1EBD44058;
    v8 = type metadata accessor for FlightWidgetStatusMessageContent;
  }

  else
  {
    v6 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
    v7 = &unk_1EBD440B0;
    v8 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent;
  }

  v9 = sub_1BD3AB21C(v7, v8);
  v21 = v5;
  v10 = *(v9 + 24);
  v11 = sub_1BE0534B4();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v20 - v15;
  v10(v3, &v21, v6, v9, v14);
  v17 = *(v6 - 8);
  if ((*(v17 + 48))(v16, 1, v6) == 1)
  {
    result = (*(v12 + 8))(v16, v11);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v6;
    *(a2 + 32) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v17 + 32))(boxed_opaque_existential_1, v16, v6);
  }

  return result;
}

uint64_t FlightWidgetViewModel.deinit()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingPassAttributes, &qword_1EBD3D178);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingTime, &unk_1EBD39970);
  sub_1BD3AA7BC(*(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 16));
  v1 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_currentTimeZone;
  v2 = sub_1BE04B3B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BD3AA7CC(*(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 8));

  sub_1BD28B4C8(*(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_perspective));
  v3 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
  v4 = sub_1BE04AF64();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone, &unk_1EBD3D260);
  v5(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate, v4);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone, &unk_1EBD3D260);
  return v0;
}

uint64_t FlightWidgetViewModel.__deallocating_deinit()
{
  FlightWidgetViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s9PassKitUI23FlightWidgetPerspectiveO2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != 1)
  {
    if (v3 != 1)
    {
      if (v2)
      {
        if (!v3)
        {
          sub_1BD28B4A8(0);
          v4 = 0;
          goto LABEL_6;
        }

        sub_1BD3AACE8();
        sub_1BD28B4A8(v3);
        sub_1BD28B4A8(v2);
        sub_1BD28B4A8(v3);
        sub_1BD28B4A8(v2);
        v6 = sub_1BE053074();
        sub_1BD28B4C8(v2);
        sub_1BD28B4C8(v3);
        sub_1BD28B4C8(v2);
        sub_1BD28B4C8(v3);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v7 = v3;
        sub_1BD28B4A8(v3);
        sub_1BD28B4A8(0);
        sub_1BD28B4C8(0);
        sub_1BD28B4C8(v3);
        if (v3)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }

LABEL_5:
    v4 = *a2;
LABEL_6:
    sub_1BD28B4A8(v4);
    sub_1BD28B4A8(v2);
    sub_1BD28B4C8(v2);
LABEL_7:
    sub_1BD28B4C8(v3);
    return 0;
  }

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  sub_1BD28B4C8(1);
  sub_1BD28B4C8(1);
  return v3;
}

id sub_1BD3AA604(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1BE048C84();
  }
}

uint64_t sub_1BD3AA614(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD3AA664(uint64_t a1)
{
  v2 = type metadata accessor for BoardingPassAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3AA6C0()
{
  result = qword_1EBD44048;
  if (!qword_1EBD44048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44048);
  }

  return result;
}

unint64_t sub_1BD3AA714()
{
  result = qword_1EBD44050;
  if (!qword_1EBD44050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44050);
  }

  return result;
}

unint64_t sub_1BD3AA768()
{
  result = qword_1EBD44060;
  if (!qword_1EBD44060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44060);
  }

  return result;
}

void sub_1BD3AA7BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BD3AA7CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BD3AA820()
{
  result = qword_1EBD44070;
  if (!qword_1EBD44070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44070);
  }

  return result;
}

unint64_t sub_1BD3AA878()
{
  result = qword_1EBD44078;
  if (!qword_1EBD44078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44078);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI23FlightWidgetPerspectiveO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD3AA8F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD3AA94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BD3AA9A8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t sub_1BD3AA9EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t sub_1BD3AAA34(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FlightExtendedState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlightExtendedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BD3AAC0C()
{
  sub_1BD3AAD34(319, &qword_1EBD44090, sub_1BD3AACE8);
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      sub_1BD3AAD34(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD3AACE8()
{
  result = qword_1EBD4F790[0];
  if (!qword_1EBD4F790[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD4F790);
  }

  return result;
}

void sub_1BD3AAD34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1BD3AADC0()
{
  sub_1BD3AAD34(319, &qword_1EBD440A8, type metadata accessor for BoardingPassAttributes);
  if (v0 <= 0x3F)
  {
    sub_1BD3AAD34(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1BE04B3B4();
      if (v2 <= 0x3F)
      {
        sub_1BE04AF64();
        if (v3 <= 0x3F)
        {
          sub_1BD3AAD34(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD3AB21C(unint64_t *a1, void (*a2)(uint64_t))
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

void static BankCredentialListView.invalidInputErrorAlert(action:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - v6;
  v8 = sub_1BE052404();
  v9 = PKLocalizedPaymentString(v8);

  if (v9)
  {
    v24[0] = a1;
    v24[1] = a2;
    v10 = sub_1BE052434();
    v12 = v11;

    v25 = v10;
    v26 = v12;
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    v13 = sub_1BE052404();
    v14 = PKLocalizedPaymentString(v13);

    if (v14)
    {
      v15 = sub_1BE052434();
      v17 = v16;

      v25 = v15;
      v26 = v17;
      v18 = sub_1BE0506C4();
      v20 = v19;
      v22 = v21;
      sub_1BE051184();
      sub_1BD0DDF10(v18, v20, v22 & 1);

      v23 = sub_1BE0511A4();
      (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
      sub_1BE051174();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void static BankCredentialListView.genericErrorAlert(action:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - v6;
  v8 = sub_1BE052404();
  v9 = PKLocalizedPaymentString(v8);

  if (v9)
  {
    v24[0] = a1;
    v24[1] = a2;
    v10 = sub_1BE052434();
    v12 = v11;

    v25 = v10;
    v26 = v12;
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    v13 = sub_1BE052404();
    v14 = PKLocalizedPaymentString(v13);

    if (v14)
    {
      v15 = sub_1BE052434();
      v17 = v16;

      v25 = v15;
      v26 = v17;
      v18 = sub_1BE0506C4();
      v20 = v19;
      v22 = v21;
      sub_1BE051184();
      sub_1BD0DDF10(v18, v20, v22 & 1);

      v23 = sub_1BE0511A4();
      (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
      sub_1BE051174();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t BankCredentialListView.init(model:)@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_1BE051694();
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD3AEDB8(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel);
  result = sub_1BE04E954();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t BankCredentialListView.body.getter()
{
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD3AEDB8(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440C0);
  sub_1BD0DE4F4(&qword_1EBD440C8, &qword_1EBD3C8F0);
  sub_1BD0DE4F4(&qword_1EBD440D0, &qword_1EBD3C8F0);
  sub_1BD0DE4F4(&qword_1EBD440D8, &qword_1EBD3C8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E8);
  type metadata accessor for CredentialCenterPathIdentifier(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440F0);
  sub_1BD0DE4F4(&qword_1EBD440F8, &qword_1EBD440E8);
  sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier);
  sub_1BD3ABE5C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EBF4();
}

uint64_t sub_1BD3ABAC8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440E0);
  v9 = *(v8 - 8);
  v22 = v8;
  v23 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v25 = &v22 - v11;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44150);
  sub_1BD3AE9A0();
  sub_1BE0504A4();
  v12 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v13 = swift_allocObject();
  v14 = a1[1];
  v13[1] = *a1;
  v13[2] = v14;
  v13[3] = a1[2];
  sub_1BD3AEA64(a1, v29);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440F0);
  v16 = sub_1BD0DE4F4(&qword_1EBD440F8, &qword_1EBD440E8);
  v17 = sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier);
  v21 = sub_1BD3ABE5C();
  sub_1BE050D64();

  (*(v4 + 8))(v7, v3);
  v28 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v26 = a1;
  v29[0] = v3;
  v29[1] = v12;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v21;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  v19 = v25;
  sub_1BE050EE4();

  return (*(v23 + 8))(v19, v18);
}

unint64_t sub_1BD3ABE5C()
{
  result = qword_1EBD44108;
  if (!qword_1EBD44108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440F0);
    sub_1BD3AEDB8(&qword_1EBD44110, type metadata accessor for AddBankCredentialSheet);
    sub_1BD3ABF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44108);
  }

  return result;
}

unint64_t sub_1BD3ABF18()
{
  result = qword_1EBD44118;
  if (!qword_1EBD44118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44120);
    sub_1BD3ABF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44118);
  }

  return result;
}

unint64_t sub_1BD3ABF9C()
{
  result = qword_1EBD44128;
  if (!qword_1EBD44128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44130);
    sub_1BD3AEDB8(&qword_1EBD44138, type metadata accessor for ACHCredentialDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44128);
  }

  return result;
}

void sub_1BD3AC058()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    v2 = sub_1BE052404();
    v3 = PKLocalizedPaymentString(v2);

    if (v3)
    {
      sub_1BE052434();

      sub_1BE0506C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44168);
      sub_1BD0DE4F4(&qword_1EBD44160, &qword_1EBD44168);
      sub_1BE051A34();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD3AC21C(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v51 = &v42 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44188);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v9);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v52 = CredentialCenterModel.achCredentials.getter();
  v15 = swift_allocObject();
  v16 = a1[1];
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = a1[2];
  sub_1BD3AEA64(a1, v54);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D4B0);
  sub_1BE04AFE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44190);
  sub_1BD0DE4F4(&qword_1EBD44198, &unk_1EBD4D4B0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441A0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441A8);
  v19 = sub_1BD0DE4F4(&qword_1EBD441B0, &qword_1EBD441A0);
  v20 = sub_1BD3AEC60();
  v54[0] = v17;
  v54[1] = v18;
  v54[2] = v19;
  v54[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BD3AEDB8(&qword_1EBD441E0, MEMORY[0x1E6967750]);
  v21 = v14;
  sub_1BE0519D4();
  v22 = sub_1BE052404();
  v23 = PKLocalizedPaymentString(v22);

  if (v23)
  {
    v24 = sub_1BE052434();
    v26 = v25;

    v52 = v24;
    v53 = v26;
    v27 = swift_allocObject();
    v28 = a1[1];
    v27[1] = *a1;
    v27[2] = v28;
    v27[3] = a1[2];
    sub_1BD3AEA64(a1, v54);
    sub_1BD0DDEBC();
    v29 = v51;
    sub_1BE051744();
    v31 = v43;
    v30 = v44;
    v32 = *(v43 + 16);
    v42 = v21;
    v33 = v45;
    v32(v44, v21, v45);
    v34 = v48;
    v50 = *(v48 + 16);
    v35 = v46;
    v36 = v29;
    v37 = v49;
    v50(v46, v36, v49);
    v38 = v47;
    v32(v47, v30, v33);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441E8);
    v50(&v38[*(v39 + 48)], v35, v37);
    v40 = *(v34 + 8);
    v40(v51, v37);
    v41 = *(v31 + 8);
    v41(v42, v33);
    v40(v35, v37);
    v41(v30, v33);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3AC738()
{
  v0 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v1 = v0 - 8;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 28);
  v7 = sub_1BE04AFE4();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *v5 = 0;
  v5[*(v1 + 32)] = 2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_1BE04D8A4();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1BD1D8BC8(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1BD1D8BC8(v13 > 1, v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  sub_1BD3AED4C(v5, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14);
  v8(v16, 0);
}

uint64_t sub_1BD3AC940@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v87 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44170);
  MEMORY[0x1EEE9AC00](v75, v4);
  v78 = v68 - v5;
  v77 = type metadata accessor for ACHCredentialDetailsView();
  MEMORY[0x1EEE9AC00](v77, v6);
  v71 = (v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_1BE049364();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v8);
  v69 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44130);
  v84 = *(v13 - 8);
  v85 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v76 = v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v68 - v18;
  v20 = sub_1BE049394();
  v80 = *(v20 - 8);
  v81 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v73 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v79 = v68 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = v68 - v28;
  v30 = sub_1BE04AFE4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v82 = v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44120);
  MEMORY[0x1EEE9AC00](v34, v35);
  v83 = v68 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44178);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v68 - v39;
  v41 = type metadata accessor for AddBankCredentialSheet();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = v68 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    sub_1BE048964();
    AddBankCredentialSheet.init(model:)(v44);
    sub_1BD3AEB88(v44, v40, type metadata accessor for AddBankCredentialSheet);
    swift_storeEnumTagMultiPayload();
    sub_1BD3AEDB8(&qword_1EBD44110, type metadata accessor for AddBankCredentialSheet);
    sub_1BD3ABF18();
    sub_1BE04F9A4();
    return sub_1BD3AEBF0(v44, type metadata accessor for AddBankCredentialSheet);
  }

  v45 = v86;
  v68[1] = v37;
  v68[2] = v41;
  v46 = type metadata accessor for CredentialCenterPathIdentifier(0);
  sub_1BD0DE19C(&a1[*(v46 + 20)], v29, &qword_1EBD39980);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1BD0DE53C(v29, &qword_1EBD39980);
  }

  else
  {
    v48 = v30;
    v49 = v82;
    (*(v31 + 32))(v82, v29, v30);
    v89[0] = *v45;
    v50 = *(&v89[0] + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    v86 = v50;
    sub_1BE04D8B4();

    v52 = v88;
    MEMORY[0x1EEE9AC00](v51, v53);
    v68[-2] = v49;
    sub_1BD1CED58(sub_1BD3AEAF8, v52, v19);

    v55 = v80;
    v54 = v81;
    if ((*(v80 + 48))(v19, 1, v81) != 1)
    {
      v57 = v79;
      (*(v55 + 32))(v79, v19, v54);
      v58 = v73;
      (*(v55 + 16))(v73, v57, v54);
      if ((*(v55 + 88))(v58, v54) == *MEMORY[0x1E6967770])
      {
        (*(v55 + 96))(v58, v54);
        v59 = v70;
        v60 = *(v70 + 32);
        v61 = v74;
        v73 = v48;
        v62 = v72;
        v60();
        v63 = v69;
        (*(v59 + 16))(v69, v61, v62);
        v64 = v71;
        ACHCredentialDetailsView.init(model:credential:)(v63, v71);
        sub_1BD3AEB88(v64, v78, type metadata accessor for ACHCredentialDetailsView);
        swift_storeEnumTagMultiPayload();
        sub_1BD3AEDB8(&qword_1EBD44138, type metadata accessor for ACHCredentialDetailsView);
        v65 = v76;
        sub_1BE04F9A4();
        sub_1BD3AEBF0(v64, type metadata accessor for ACHCredentialDetailsView);
        v66 = v62;
        v48 = v73;
        (*(v59 + 8))(v74, v66);
        (*(v55 + 8))(v79, v81);
      }

      else
      {
        sub_1BD0DE53C(v89, &qword_1EBD44180);
        swift_storeEnumTagMultiPayload();
        sub_1BD3AEDB8(&qword_1EBD44138, type metadata accessor for ACHCredentialDetailsView);
        v65 = v76;
        sub_1BE04F9A4();
        v67 = *(v55 + 8);
        v67(v57, v54);
        v67(v58, v54);
      }

      v56 = v83;
      sub_1BD3AEB18(v65, v83);
      (*(v84 + 56))(v56, 0, 1, v85);
      (*(v31 + 8))(v82, v48);
      goto LABEL_12;
    }

    sub_1BD0DE53C(v89, &qword_1EBD44180);
    sub_1BD0DE53C(v19, &unk_1EBD4D450);
    (*(v31 + 8))(v49, v48);
  }

  v56 = v83;
  (*(v84 + 56))(v83, 1, 1, v85);
LABEL_12:
  sub_1BD0DE19C(v56, v40, &qword_1EBD44120);
  swift_storeEnumTagMultiPayload();
  sub_1BD3AEDB8(&qword_1EBD44110, type metadata accessor for AddBankCredentialSheet);
  sub_1BD3ABF18();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v56, &qword_1EBD44120);
}

uint64_t sub_1BD3AD444()
{
  v0 = sub_1BE04AFE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0492D4();
  v5 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1BD3AD530@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  sub_1BD3AEA64(a1, &v7);
  static BankCredentialListView.genericErrorAlert(action:)(sub_1BD3AEAA4, a2);
}

uint64_t sub_1BD3AD5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441A0);
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v13 = *(v12 + 20);
  MEMORY[0x1BFB363C0]();
  v14 = sub_1BE04AFE4();
  (*(*(v14 - 8) + 56))(&v7[v13], 0, 1, v14);
  *v7 = 1;
  v7[*(v12 + 24)] = 2;
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v23 = a1;
  type metadata accessor for ACHCredentialRow();
  sub_1BD3AEDB8(&qword_1EBD4D4E0, type metadata accessor for ACHCredentialRow);
  sub_1BD3AEDB8(&qword_1EBD441F8, type metadata accessor for CredentialCenterPathIdentifier);
  sub_1BD3AEDB8(&qword_1EBD44200, type metadata accessor for CredentialCenterPathIdentifier);
  sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier);
  sub_1BE04E8E4();
  v21 = v18;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441A8);
  sub_1BD0DE4F4(&qword_1EBD441B0, &qword_1EBD441A0);
  sub_1BD3AEC60();
  v15 = v19;
  sub_1BE0509F4();
  return (*(v8 + 8))(v11, v15);
}

uint64_t sub_1BD3AD93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE049364();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = type metadata accessor for ACHCredentialRow();
  *(a2 + *(result + 20)) = 0;
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_1BD3AD9B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE049364();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  (*(v7 + 16))(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6, v10);
  v11 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = a1[1];
  *(v12 + 1) = *a1;
  *(v12 + 2) = v13;
  *(v12 + 3) = a1[2];
  (*(v7 + 32))(&v12[v11], v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1BD3AEA64(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
  sub_1BE051704();
  v14 = sub_1BE0513B4();
  KeyPath = swift_getKeyPath();
  v19[0] = v14;
  v16 = sub_1BE04E5F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441A8);
  v18 = (a3 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v16;
  return result;
}

uint64_t sub_1BD3ADBD0(_OWORD *a1, uint64_t a2)
{
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20[-v11];
  v13 = sub_1BE0528D4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a2, v4);
  sub_1BE0528A4();
  sub_1BD3AEA64(a1, v20);
  v14 = sub_1BE052894();
  v15 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  v18 = a1[1];
  *(v16 + 32) = *a1;
  *(v16 + 48) = v18;
  *(v16 + 64) = a1[2];
  (*(v5 + 32))(v16 + v15, v8, v4);
  sub_1BD122C00(0, 0, v12, &unk_1BE0D1860, v16);
}

uint64_t sub_1BD3ADDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_1BE04D214();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_1BE04AFE4();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_1BE0528A4();
  v5[19] = sub_1BE052894();
  v9 = sub_1BE052844();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD3ADF3C, v9, v8);
}