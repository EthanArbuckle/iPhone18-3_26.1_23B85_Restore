uint64_t sub_1BD59A948()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD59A984(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD59A9E0(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v13[0] = a1;
    v14 = 1;
    v8 = a1;
    v9 = v2;
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses);
    *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses) = a1;
    a1;

    v11 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v12 = sub_1BE04BD44();
    v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
    v13[0] = v12;
    v14 = 0;
    v9 = v2;
  }

  sub_1BD865A00(v9, &off_1F3BAEF18, v13, ObjectType, v6);
  swift_unknownObjectRelease();
  return sub_1BD12FF7C(v13);
}

id sub_1BD59AB30(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v9 != 1)
  {
    if (v9)
    {
      v36 = a1;
      v37 = a2;
      v35 = a4;
      if (v8)
      {
        v18 = sub_1BE053704();
      }

      else
      {
        v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = 0;
      v8 = a3 & 0xC000000000000001;
      while (v18 != a2)
      {
        if (v8)
        {
          v19 = MEMORY[0x1BFB40900](a2, a3);
        }

        else
        {
          if (a2 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v19 = *(a3 + 8 * a2 + 32);
        }

        a1 = v19;
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v33 = a4;
          v9 = sub_1BE053704();
          a4 = v33;
          goto LABEL_3;
        }

        result = [v19 items];
        if (!result)
        {
          goto LABEL_34;
        }

        v20 = result;
        sub_1BD59AFB4();
        v21 = sub_1BE052744();

        if (v21 >> 62)
        {
          v22 = sub_1BE053704();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++a2;
        if (v22 > 1)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_1BE0B69E0;
          v27 = type metadata accessor for PaymentSetupServiceProviderProductsFlowItem();
          v28 = objc_allocWithZone(v27);
          *&v28[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController] = 0;
          *&v28[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v29 = &v28[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_identifier];
          *v29 = 0xD00000000000001FLL;
          *(v29 + 1) = 0x80000001BE12F810;
          *&v28[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_context] = v36;
          *&v28[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_product] = v37;
          v39.receiver = v28;
          v39.super_class = v27;
          sub_1BE048964();
          v30 = v37;
          v31 = objc_msgSendSuper2(&v39, sel_init);
          v32 = &off_1F3BAA578;
LABEL_27:
          *(v10 + 32) = v31;
          *(v10 + 40) = v32;
          goto LABEL_28;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BE0B69E0;
      v23 = type metadata accessor for PaymentSetupUpLeveledPurchaseServiceProductFlowItem();
      v24 = objc_allocWithZone(v23);
      *&v24[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController] = 0;
      *&v24[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v25 = &v24[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_identifier];
      *v25 = 0xD00000000000002BLL;
      v25[1] = 0x80000001BE12F860;
      *&v24[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_context] = v36;
      *&v24[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product] = v37;
      *&v24[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_serviceProviderProducts] = a3;
      v24[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_showOtherProviders] = v35 & 1;
      v38.receiver = v24;
      v38.super_class = v23;
      sub_1BE048964();
      v26 = v37;
      v31 = objc_msgSendSuper2(&v38, sel_init);
      v32 = &off_1F3B92D58;
      goto LABEL_27;
    }

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  result = swift_allocObject();
  v10 = result;
  *(result + 1) = xmmword_1BE0B69E0;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v12 = v4;
    sub_1BE048964();
    v34 = a2;
    v15 = MEMORY[0x1BFB40900](0, a3);
    goto LABEL_9;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = v4;
    v13 = *(a3 + 32);
    sub_1BE048964();
    v14 = a2;
    v15 = v13;
LABEL_9:
    v16 = v15;

    v17 = objc_allocWithZone(type metadata accessor for PaymentSetupPurchaseServiceProductFlowItem());
    *(v10 + 32) = sub_1BD4FC05C(a1, a2, v16);
    *(v10 + 40) = &off_1F3BAB238;
    v4 = v12;
LABEL_28:
    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v4 + 40) = 0xD000000000000022;
    *(v4 + 48) = 0x80000001BE12F830;
    *(v4 + 56) = v10;
    *(v4 + 32) = 514;
    return v4;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1BD59AFB4()
{
  result = qword_1EBD39B80;
  if (!qword_1EBD39B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD39B80);
  }

  return result;
}

uint64_t sub_1BD59B000(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BD59B048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD59B0F0(uint64_t a1, void *a2, id a3, unint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t a9, unsigned __int8 a10)
{
  v16 = [a3 uniqueID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE052434();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a8 uniqueID];
  if (!v21)
  {
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v22 = v21;
  v23 = sub_1BE052434();
  v25 = v24;

  if (!v20)
  {
    if (!v25)
    {
      goto LABEL_18;
    }

LABEL_16:

    return 0;
  }

  if (!v25)
  {
    goto LABEL_16;
  }

  if (v18 == v23 && v20 == v25)
  {
  }

  else
  {
    v27 = sub_1BE053B84();

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_18:
  if (sub_1BD400190(a4, a9))
  {
    if (a2)
    {
      if (a7)
      {
        sub_1BD0E5E8C(0, &unk_1EBD3E560);
        v28 = a7;
        v29 = a2;
        v30 = sub_1BE053074();

        if (v30)
        {
          return (a1 == a6) & (a5 ^ a10 ^ 1u);
        }
      }
    }

    else if (!a7)
    {
      return (a1 == a6) & (a5 ^ a10 ^ 1u);
    }
  }

  return 0;
}

void sub_1BD59B2B4(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 paymentOffersController];
  if (!v6)
  {
    sub_1BD0E8E44(a2);

    v17 = 0;
    v12 = 0;
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = WrappedPass.secureElementPass.getter();
  v8 = v7;
  if (!v7)
  {
    sub_1BD0E8E44(a2);

    v6 = 0;
    v17 = 0;
    v12 = 0;
LABEL_10:
    v13 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v9 = v7;
  v10 = [v9 uniqueID];
  if (v10)
  {
    v11 = v10;
    v12 = [v6 eligiblePaymentOfferCriteriaForPassUniqueID_];

    if (v12)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0);
      v13 = sub_1BE052744();

      v14 = [v9 uniqueID];
      v15 = [v6 preconfiguredInstallmentOfferStateForPassUniqueID_];

      v16 = (v15 - 3) < 2;
      v17 = [a1 fundingMode];
      v12 = [a1 selectedPaymentOffer];

      sub_1BD0E8E44(a2);
LABEL_11:
      *a3 = v6;
      *(a3 + 8) = v17;
      *(a3 + 16) = v12;
      *(a3 + 24) = v8;
      *(a3 + 32) = v13;
      *(a3 + 40) = v16;
      return;
    }

    sub_1BD0E8E44(a2);
    v6 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1BD59B49C(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

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
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1BD2A598C(&v8, [v4 type]);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return MEMORY[0x1E69E7CD0];
}

id sub_1BD59B5AC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_18:
  v2 = sub_1BE053704();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v4 type] == 1)
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 suppressPayInFull];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1BD59B6E4(unint64_t a1, SEL *a2)
{
  if (a1 >> 62)
  {
LABEL_19:
    v4 = sub_1BE053704();
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v6 type] == 1)
    {
      break;
    }

    if (v8 == v4)
    {
      return 0;
    }
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v9 *a2];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1BE052434();

      return v12;
    }
  }

  return 0;
}

uint64_t sub_1BD59B85C@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v48 = &v47 - v12;
  if (a1)
  {
    sub_1BE048C84();
    sub_1BE0502A4();
    sub_1BE050394();
    v13 = sub_1BE0503F4();

    v14 = sub_1BE051234();
    LOBYTE(v57[0]) = 1;
    v15 = MEMORY[0x1E6981568];
    v16 = MEMORY[0x1E69815C0];
    v17 = a2;
    v18 = a3;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 0;
    v57[5] = 0;
    v57[6] = 0;
    v57[0] = 0;
  }

  v57[1] = v17;
  v57[2] = v18;
  v57[3] = v13;
  v57[4] = v14;
  v57[7] = v16;
  v57[8] = v15;
  v51 = sub_1BD59BCE8(a1 & 1, a2, a3);
  v52 = v19;
  sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v24 = v23;
  sub_1BE0502A4();
  sub_1BE050394();
  sub_1BE0503F4();

  v25 = sub_1BE0505F4();
  v27 = v26;
  v29 = v28;

  sub_1BD0DDF10(v20, v22, v24 & 1);

  sub_1BE050394();
  v30 = sub_1BE050544();
  v32 = v31;
  v34 = v33;
  sub_1BD0DDF10(v25, v27, v29 & 1);

  sub_1BE0513B4();
  v35 = sub_1BE050564();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;

  sub_1BD0DDF10(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v51 = v35;
  v52 = v37;
  v53 = v25 & 1;
  v54 = v40;
  v55 = KeyPath;
  v56 = 1;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
  sub_1BD0EF0FC();
  v42 = v48;
  sub_1BE050DE4();

  sub_1BD0DDF10(v35, v37, v25 & 1);

  sub_1BD0DE19C(v57, &v51, &qword_1EBD4B770);
  v43 = v50;
  sub_1BD0DE19C(v42, v50, &qword_1EBD38A98);
  v44 = v49;
  sub_1BD0DE19C(&v51, v49, &qword_1EBD4B770);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B778);
  sub_1BD0DE19C(v43, v44 + *(v45 + 48), &qword_1EBD38A98);
  sub_1BD0DE53C(v42, &qword_1EBD38A98);
  sub_1BD0DE53C(v57, &qword_1EBD4B770);
  sub_1BD0DE53C(v43, &qword_1EBD38A98);
  return sub_1BD0DE53C(&v51, &qword_1EBD4B770);
}

uint64_t sub_1BD59BC6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B768);
  return sub_1BD59B85C(v3, v5, v4, a1 + *(v6 + 44));
}

id sub_1BD59BCE8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v23 - v13;
  v16 = *MEMORY[0x1E69B8050];
  v17 = *(v7 + 104);
  if (a1)
  {
    v17(v10, v16, v6, v14);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();

      (*(v7 + 8))(v10, v6);
      return v20;
    }

    __break(1u);
  }

  else
  {
    v17(&v23 - v13, v16, v6, v14);
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      sub_1BE04B6F4();

      (*(v7 + 8))(v15, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B69E0;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1BD110550();
      *(v22 + 32) = a2;
      *(v22 + 40) = a3;
      sub_1BE048C84();
      v20 = sub_1BE052454();

      return v20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD59BF58()
{
  result = qword_1EBD4B790;
  if (!qword_1EBD4B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B790);
  }

  return result;
}

id sub_1BD59BFAC()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 thresholdAmount];
  v9 = sub_1BE052404();
  v10 = PKFormattedCurrencyStringFromNumber();

  if (v10)
  {
    v11 = sub_1BE052434();
    v13 = v12;

    (*(v3 + 104))(v7, *MEMORY[0x1E69B8080], v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B69E0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1BD110550();
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v10 = sub_1BE04B714();

    (*(v3 + 8))(v7, v2);
  }

  return v10;
}

id ProvisioningExternalDeviceFlowItem.__allocating_init(context:pass:externalOptions:cardIdentifier:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = objc_allocWithZone(v4);
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B7020;
  *(v8 + 32) = a2;
  v9 = a2;
  v10 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v11 = sub_1BE04BC74();
  sub_1BE04BCC4();
  sub_1BE04BC44();
  v12 = a1;
  v13 = MEMORY[0x1BFB389E0]();
  v14 = objc_allocWithZone(v4);
  v15 = sub_1BD59FB2C(v13, v11);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

id ProvisioningExternalDeviceFlowItem.init(context:pass:externalOptions:cardIdentifier:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B7020;
  *(v6 + 32) = a2;
  v7 = a2;
  v8 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v9 = sub_1BE04BC74();
  sub_1BE04BCC4();
  sub_1BE04BC44();
  v10 = a1;
  v11 = MEMORY[0x1BFB389E0]();
  v12 = objc_allocWithZone(ObjectType);
  v13 = sub_1BD59FB2C(v11, v9);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

char *ProvisioningExternalDeviceFlowItem.extract()()
{
  v1 = v0;

  return sub_1BD59FA24(v1);
}

id ProvisioningExternalDeviceFlowItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningExternalDeviceFlowItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD59C6A0(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v3 = sub_1BE04BAC4();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v29 = v2;
  v8 = sub_1BD1881A0(v2, KeyPath);

  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  v36 = 0x80000001BE1182F0;
  v37 = 0x80000001BE118310;
  v34 = 0x80000001BE118280;
  v35 = 0x80000001BE1182A0;
  v32 = 0x80000001BE118230;
  v33 = 0x80000001BE118260;
  while (2)
  {
    if (v9)
    {
      switch(*v10)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
          v11 = sub_1BE053B84();

          ++v10;
          --v9;
          if ((v11 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      v16 = 0x6F63206775626564;
      v17 = 0xEC0000006769666ELL;
      goto LABEL_22;
    }

    break;
  }

  sub_1BE04BC34();
  v12 = sub_1BE04B964();
  (*(v27 + 8))(v6, v28);
  if (v12)
  {
    v13 = PKShowFakeExternalDevicePicker();
    v14 = sub_1BE04BD24();
    if (v14)
    {
    }

    else if ((v13 & 1) == 0)
    {
      v15 = "not full wallet flow";
      v16 = 0xD000000000000020;
      goto LABEL_9;
    }

    v19 = sub_1BE04BD24();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 authorizationType];

      if (v21 == 2)
      {
        v22 = sub_1BE04BC84();
        v23 = [v22 devicePrimaryPaymentApplication];

        if (v23)
        {
          v24 = [v23 dpanIdentifier];
          if (v24)
          {

            goto LABEL_19;
          }
        }

        v15 = "isioning options";
        v16 = 0xD000000000000030;
        goto LABEL_9;
      }

      if (!v21)
      {
        v15 = "or authorization";
        v16 = 0xD00000000000001ALL;
        goto LABEL_9;
      }
    }

LABEL_19:
    v16 = 0;
    v17 = 0;
LABEL_22:
    v18 = 0;
    return v31(v16, v17, 0, v18);
  }

  v15 = " authorization request";
  v16 = 0xD000000000000014;
LABEL_9:
  v17 = v15 | 0x8000000000000000;
  v18 = 1;
  return v31(v16, v17, 0, v18);
}

uint64_t sub_1BD59CB78()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B944();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v0 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_provisionedPasses);
  v15 = sub_1BE04BD24();
  if (!v15)
  {
    return 2;
  }

  v16 = v15;
  v65 = v7;
  v67 = v3;
  v68 = v2;
  sub_1BE04BB94();
  v17 = sub_1BE04B934();
  (*(v11 + 8))(v14, v10);
  v18 = [v17 deviceSerialNumber];
  swift_unknownObjectRelease();
  if (v18)
  {
    v73 = sub_1BE052434();
    v20 = v19;
  }

  else
  {
    v73 = 0;
    v20 = 0;
  }

  v21 = [v16 devices];
  sub_1BD0E5E8C(0, &qword_1EBD41B08);
  v22 = sub_1BE052744();

  v75 = MEMORY[0x1E69E7CC0];
  if (v22 >> 62)
  {
    goto LABEL_38;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v66 = v6;
  v71 = v16;
  if (v23)
  {
    v64 = v1;
    v16 = 0;
    v74 = v22 & 0xC000000000000001;
    v1 = v22 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v74)
      {
        v24 = MEMORY[0x1BFB40900](v16, v22);
      }

      else
      {
        if (v16 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v24 = *(v22 + 8 * v16 + 32);
      }

      v25 = v24;
      v26 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v23 = sub_1BE053704();
        goto LABEL_7;
      }

      v6 = v23;
      v27 = [v24 serialNumber];
      v28 = sub_1BE052434();
      v30 = v29;

      if (!v20)
      {
        break;
      }

      if (v28 == v73 && v20 == v30)
      {
      }

      else
      {
        v32 = sub_1BE053B84();

        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_10:
      ++v16;
      v23 = v6;
      if (v26 == v6)
      {
        v33 = v75;
        v16 = v71;
        v1 = v64;
        goto LABEL_27;
      }
    }

LABEL_23:
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
    goto LABEL_10;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v34 = [v16 policy];
  v35 = sub_1BE04BC84();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DevicePickerController(0);
  swift_allocObject();
  v37 = sub_1BD59EB00(v33, v34, v35, sub_1BD59FC90, v36);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = (v37 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  v40 = *(v37 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  *v39 = sub_1BD59FC98;
  v39[1] = v38;
  sub_1BE048964();
  sub_1BD0D4744(v40);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v41 = *(v75 + 16);

  if (!v41)
  {
    v60 = v69;
    sub_1BE04D0F4();
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C54();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1BD026000, v61, v62, "No available devices for external provisioning", v63, 2u);
      MEMORY[0x1BFB45F20](v63, -1, -1);
    }

    else
    {
    }

    (*(v65 + 8))(v60, v66);
    return 2;
  }

  sub_1BD59FE48(&qword_1EBD4B7D0, type metadata accessor for DevicePickerController);
  sub_1BE048964();
  v42 = sub_1BE04E954();
  v44 = v43;
  v46 = v67;
  v45 = v68;
  v47 = v70;
  (*(v67 + 104))(v70, *MEMORY[0x1E69B80D8], v68);
  v48 = v44;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v50 = result;
    v51 = sub_1BE04B6F4();
    v53 = v52;

    (*(v46 + 8))(v47, v45);
    v54 = *(v1 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_reporter);
    v75 = v42;
    v76 = v48;
    v77 = v51;
    v78 = v53;
    v79 = v54;
    v55 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7D8));
    v56 = v54;
    sub_1BE048C84();
    v57 = sub_1BE04F894();
    v58 = [v57 navigationItem];
    [v58 setHidesBackButton_];

    v59 = [v57 navigationItem];
    [v59 pkui:0.0 enableManualScrollEdgeAppearanceWithInitialProgress:?];

    return v57;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD59D378(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1BD59D3F0(a1, a2, a3);
  }
}

void sub_1BD59D3F0(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04B944();
  v82 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D214();
  v83 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v77 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v77 - v16;
  if (a1 >> 62)
  {
    v18 = sub_1BE053704();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x1E69E7CC0];
  v84 = a2;
  v85 = a3;
  v86 = v4;
  if (v18)
  {
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
      return;
    }

    v78 = v17;
    v79 = v11;
    v80 = v8;
    v19 = aBlock;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        MEMORY[0x1BFB40900](v20, a1);
        v21 = [swift_unknownObjectRetain() serialNumber];
        v22 = sub_1BE052434();
        v24 = v23;
        swift_unknownObjectRelease_n();

        aBlock = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1BD03B254((v25 > 1), v26 + 1, 1);
          v19 = aBlock;
        }

        ++v20;
        *(v19 + 16) = v26 + 1;
        v27 = v19 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
      }

      while (v18 != v20);
    }

    else
    {
      v28 = (a1 + 32);
      do
      {
        v29 = *v28;
        v30 = [v29 serialNumber];
        v31 = sub_1BE052434();
        v33 = v32;

        aBlock = v19;
        v35 = *(v19 + 16);
        v34 = *(v19 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1BD03B254((v34 > 1), v35 + 1, 1);
          v19 = aBlock;
        }

        *(v19 + 16) = v35 + 1;
        v36 = v19 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        ++v28;
        --v18;
      }

      while (v18);
    }

    v11 = v79;
    v8 = v80;
    v17 = v78;
  }

  sub_1BE04D0F4();
  sub_1BE048C84();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C54();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = v8;
    v41 = v17;
    v42 = swift_slowAlloc();
    aBlock = v42;
    *v39 = 136315138;
    v43 = MEMORY[0x1BFB3F7F0](v19, MEMORY[0x1E69E6158]);
    v45 = sub_1BD123690(v43, v44, &aBlock);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_1BD026000, v37, v38, "Initiating external provisioning for devices: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1BFB45F20](v42, -1, -1);
    MEMORY[0x1BFB45F20](v39, -1, -1);

    v46 = v83[1];
    v47 = v41;
    v8 = v40;
    v46(v47, v11);
  }

  else
  {

    v46 = v83[1];
    v46(v17, v11);
  }

  if (!*(v19 + 16))
  {

    v84(0);
    return;
  }

  v48 = v11;
  v49 = [objc_allocWithZone(MEMORY[0x1E69B8C28]) init];
  v50 = sub_1BE052724();

  [v49 setExternalDestinationDevices_];

  v51 = sub_1BE04BC84();
  v52 = [v51 passTypeIdentifier];

  if (!v52)
  {
    sub_1BE052434();
    v52 = sub_1BE052404();
  }

  [v49 setRegion_];

  sub_1BE04BCB4();
  if (v53)
  {
    v54 = sub_1BE052404();

LABEL_27:
    [v49 setCardIdentifier_];

    v55 = [objc_allocWithZone(MEMORY[0x1E69B8658]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    v56 = v81;
    sub_1BE04BB94();
    v57 = sub_1BE04B8E4();
    (*(v82 + 8))(v56, v8);
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = v49;
    v60[4] = v58;
    v91 = sub_1BD59FDD0;
    v92 = v60;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = sub_1BD3B2110;
    v90 = &block_descriptor_130;
    v61 = _Block_copy(&aBlock);
    v62 = v49;
    sub_1BE048964();

    v63 = v55;
    [v55 addOperation_];
    _Block_release(v61);
    v64 = swift_allocObject();
    v64[2] = v57;
    v64[3] = v62;
    v64[4] = v58;
    v91 = sub_1BD59FDDC;
    v92 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = sub_1BD3B2110;
    v90 = &block_descriptor_29_4;
    v65 = _Block_copy(&aBlock);
    v83 = v62;
    sub_1BE048964();
    v66 = v57;

    [v63 addOperation_];
    _Block_release(v65);
    v67 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = swift_allocObject();
    v69[2] = v68;
    v69[3] = v58;
    v70 = v85;
    v69[4] = v84;
    v69[5] = v70;
    v91 = sub_1BD59FDE8;
    v92 = v69;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = sub_1BD3B21E4;
    v90 = &block_descriptor_36_2;
    v71 = _Block_copy(&aBlock);
    sub_1BE048964();
    sub_1BE048964();

    v72 = [v63 evaluateWithInput:v67 completion:v71];
    _Block_release(v71);

    swift_unknownObjectRelease();

    return;
  }

  if (PKShowFakeExternalDevicePicker())
  {
    v54 = sub_1BE052404();
    goto LABEL_27;
  }

  v73 = v77;
  sub_1BE04D0F4();
  v74 = sub_1BE04D204();
  v75 = sub_1BE052C54();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1BD026000, v74, v75, "External provisioning attempted, but missing cardIdentifier", v76, 2u);
    MEMORY[0x1BFB45F20](v76, -1, -1);
  }

  v46(v73, v48);
  v84(0);
}

void sub_1BD59DD60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = v1;
      sub_1BD8659A4(v5, &off_1F3BAF118, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD59DE10(uint64_t a1, void *a2, void (*a3)(id, BOOL), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = a6;
    sub_1BE048964();
    sub_1BE048964();
    v15 = a2;
    sub_1BD59FE9C(v13, v14, a7, a3, a4, v15);
  }
}

uint64_t sub_1BD59DED8(void *a1, char a2, id a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    *(a4 + 16) = a1;
    v12 = a1;
  }

  else
  {
    [a3 setAuthorization_];
  }

  swift_beginAccess();
  return a5(a7, *(a4 + 16) != 0);
}

void sub_1BD59DF8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a2;
  v16[4] = sub_1BD59FE90;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BD28F728;
  v16[3] = &block_descriptor_49_2;
  v14 = _Block_copy(v16);
  sub_1BE048964();
  sub_1BE048964();
  v15 = a2;

  [a5 initiateExternalProvisioningForRequest:a6 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1BD59E0A0(int a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = a2;
    if ((PKShowFakeExternalDevicePicker() & 1) != 0 || (v11 = [objc_opt_self() errorWithCommonType:2 severity:4], swift_beginAccess(), v12 = *(a3 + 16), *(a3 + 16) = v11, v12, swift_beginAccess(), (v13 = *(a3 + 16)) == 0))
    {
    }

    else
    {
      v14 = v13;
      v15 = sub_1BE04A844();
      [v14 setUnderlyingError_];
    }
  }

  return a4(a6, 0);
}

uint64_t sub_1BD59E1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1BE051F54();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v14 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v18 = sub_1BE052D54();
  v19 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = v19;
  v21[4] = a6;
  v21[5] = a7;
  aBlock[4] = sub_1BD59FE3C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_43_2;
  v22 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD59FE48(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v17, v13, v22);
  _Block_release(v22);

  (*(v26 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v25);
}

void sub_1BD59E4E4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12)
  {
    v30 = a4;
    v31 = a3;
    v13 = v12;
    sub_1BE04D0F4();
    v14 = v13;
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v7;
      v18 = v17;
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v14;
      *v19 = v12;
      v20 = v14;
      _os_log_impl(&dword_1BD026000, v15, v16, "Unable to initiate external provisioning with error: %@", v18, 0xCu);
      sub_1BD1E236C(v19);
      MEMORY[0x1BFB45F20](v19, -1, -1);
      v21 = v18;
      v7 = v29;
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    else
    {
      v20 = v15;
      v15 = v14;
    }

    (*(v8 + 8))(v11, v7);
    a3 = v31;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = *(Strong + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_reporter);
    v24 = Strong;
    v25 = v23;

    if (v23)
    {
      swift_beginAccess();
      [v25 reportPageCompleted:*(a1 + 16) == 0 context:0];
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 16);
  v27 = v26;
  a3(v26);
}

void sub_1BD59E778(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t))
{
  if (a2 >> 60 == 15 || a3 == 0)
  {
    if (a4)
    {
      v9 = sub_1BE04A844();
    }

    else
    {
      v9 = 0;
    }

    v20 = [objc_opt_self() errorWithUnderlyingError:v9 defaultSeverity:5];

    v21 = sub_1BE052404();
    [v20 addInternalDebugDescription_];

    v17 = v20;
    a7(v20, 1);
    v24 = v17;
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69B8C30]);
    v24 = a3;
    sub_1BD030394(a1, a2);
    v14 = sub_1BE052404();
    v15 = sub_1BE04AAB4();
    v16 = [v13 initWithDPANID:v14 signatureData:v15 signatureInfo:v24];

    if (v16)
    {
      v17 = v16;
      v18 = v16;
      v19 = 0;
    }

    else
    {
      v22 = [objc_opt_self() errorWithSeverity_];
      v23 = sub_1BE052404();
      [v22 addInternalDebugDescription_];

      v17 = v22;
      v18 = v22;
      v19 = 1;
    }

    a7(v18, v19);
    sub_1BD030220(a1, a2);
  }
}

uint64_t sub_1BD59E9A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1BE048964();
    v8 = v6;
    v6 = sub_1BE04AAC4();
    v10 = v9;
  }

  else
  {
    sub_1BE048964();
    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1BD030220(v6, v10);
}

uint64_t sub_1BD59EA70()
{
  v1 = *(v0 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD59EAAC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

size_t sub_1BD59EB00(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v128 = a5;
  v125 = a4;
  v127 = a3;
  v126 = a2;
  v137 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v136 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v132 = &v124 - v12;
  v13 = type metadata accessor for DeviceViewModel(0);
  v143 = *(v13 - 8);
  v144 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v130 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v138 = &v124 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v133 = &v124 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v131 = &v124 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v124 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7E0);
  v141 = *(v29 - 8);
  v142 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v124 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v124 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7E8);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v124 - v41;
  v43 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__selectionCount;
  v146 = 0;
  sub_1BE04D874();
  (*(v39 + 32))(v6 + v43, v42, v38);
  v44 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__loading;
  LOBYTE(v146) = 0;
  sub_1BE04D874();
  (*(v34 + 32))(v6 + v44, v37, v33);
  v45 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__error;
  v146 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F0);
  sub_1BE04D874();
  (*(v141 + 32))(v6 + v45, v32, v142);
  v46 = v137;
  *(v6 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) = 1;
  v129 = v6;
  v47 = (v6 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  *v47 = 0;
  v47[1] = 0;
  if (v46 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v123)
  {
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v136;
    if (i)
    {
      v51 = v46;
      v146 = MEMORY[0x1E69E7CC0];
      result = sub_1BD531FB0(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v53 = 0;
      v49 = v146;
      v54 = v51;
      v134 = v51 & 0xC000000000000001;
      v135 = i;
      v55 = &selRef_metricsForTextStyle_;
      do
      {
        if (v134)
        {
          v56 = MEMORY[0x1BFB40900](v53, v54);
        }

        else
        {
          v56 = *(v54 + 8 * v53 + 32);
        }

        v57 = v56;
        v58 = [v56 identifier];
        v59 = sub_1BE052434();
        v141 = v60;
        v142 = v59;

        v61 = [v57 v55[77]];
        if (v61 || (v61 = [v57 model]) != 0)
        {
          v62 = v61;
          v63 = sub_1BE052434();
          v139 = v64;
          v140 = v63;
        }

        else
        {
          v139 = 0xE000000000000000;
          v140 = 0;
        }

        v65 = v144[6];
        PKScreenScale();
        if (v66 == 2.0)
        {
          v67 = [v57 imageURL2x];
          if (!v67)
          {
            v69 = 1;
            v50 = v132;
            goto LABEL_20;
          }

          v50 = v132;
        }

        else
        {
          v67 = [v57 imageURL3x];
          if (!v67)
          {
            v69 = 1;
            goto LABEL_20;
          }
        }

        v68 = v67;
        sub_1BE04A9F4();

        v69 = 0;
LABEL_20:
        v70 = sub_1BE04AA64();
        (*(*(v70 - 8) + 56))(v50, v69, 1, v70);
        sub_1BD226B4C(v50, v28 + v65);
        v71 = [v57 osType];
        if (v71)
        {
          v72 = v71;
          v73 = sub_1BE052434();
          v75 = v74;
        }

        else
        {
          v73 = 0;
          v75 = 0xE000000000000000;
        }

        v76 = [v57 v55[77]];
        if (v76 && (v76, (v77 = [v57 model]) != 0))
        {
          v78 = v77;
          v79 = sub_1BE052434();
          v81 = v80;
        }

        else
        {
          v79 = 0;
          v81 = 0xE000000000000000;
        }

        v82 = sub_1BD41EED8();
        v84 = v83;

        v85 = v141;
        *v28 = v142;
        v28[1] = v85;
        v86 = v139;
        v28[2] = v140;
        v28[3] = v86;
        v87 = v144;
        v88 = (v28 + v144[7]);
        *v88 = v73;
        v88[1] = v75;
        v89 = (v28 + v87[8]);
        *v89 = v79;
        v89[1] = v81;
        v90 = (v28 + v87[9]);
        *v90 = v82;
        v90[1] = v84;
        *(v28 + v87[10]) = 0;
        v146 = v49;
        v92 = *(v49 + 16);
        v91 = *(v49 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_1BD531FB0(v91 > 1, v92 + 1, 1);
          v49 = v146;
        }

        ++v53;
        *(v49 + 16) = v92 + 1;
        sub_1BD59FCA0(v28, v49 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v92);
        v50 = v136;
        v54 = v137;
        v55 = &selRef_metricsForTextStyle_;
      }

      while (v135 != v53);
    }

    v93 = v130;
    v94 = v131;
    v95 = *(v49 + 16);
    if (v95)
    {
      v96 = 0;
      v28 = (v131 + 8);
      v97 = MEMORY[0x1E69E7CC0];
      while (v96 < *(v49 + 16))
      {
        v98 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v99 = *(v143 + 72);
        sub_1BD59FD04(v49 + v98 + v99 * v96, v94);
        if (*(v28 + v144[9]))
        {
          sub_1BD59FD68(v94);
        }

        else
        {
          sub_1BD59FCA0(v94, v93);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v146 = v97;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BD531FB0(0, *(v97 + 16) + 1, 1);
            v93 = v130;
            v97 = v146;
          }

          v102 = *(v97 + 16);
          v101 = *(v97 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_1BD531FB0(v101 > 1, v102 + 1, 1);
            v93 = v130;
            v97 = v146;
          }

          *(v97 + 16) = v102 + 1;
          sub_1BD59FCA0(v93, v97 + v98 + v102 * v99);
          v94 = v131;
        }

        if (v95 == ++v96)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_59;
    }

    v97 = MEMORY[0x1E69E7CC0];
LABEL_42:
    swift_beginAccess();
    v145 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8);
    sub_1BE04D874();
    swift_endAccess();
    if (!v95)
    {
      break;
    }

    v103 = 0;
    v104 = v133;
    v28 = (v133 + 8);
    v105 = MEMORY[0x1E69E7CC0];
    while (v103 < *(v49 + 16))
    {
      v106 = (*(v143 + 80) + 32) & ~*(v143 + 80);
      v107 = *(v143 + 72);
      sub_1BD59FD04(v49 + v106 + v107 * v103, v104);
      if (*(v28 + v144[9]))
      {
        sub_1BD59FCA0(v104, v138);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v146 = v105;
        if ((v108 & 1) == 0)
        {
          sub_1BD531FB0(0, *(v105 + 16) + 1, 1);
          v105 = v146;
        }

        v110 = *(v105 + 16);
        v109 = *(v105 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_1BD531FB0(v109 > 1, v110 + 1, 1);
          v105 = v146;
        }

        *(v105 + 16) = v110 + 1;
        sub_1BD59FCA0(v138, v105 + v106 + v110 * v107);
        v104 = v133;
      }

      else
      {
        sub_1BD59FD68(v104);
      }

      if (v95 == ++v103)
      {
        goto LABEL_54;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v122 = v46;
    v123 = sub_1BE053704();
    v46 = v122;
  }

  v105 = MEMORY[0x1E69E7CC0];
LABEL_54:

  v111 = v129;
  swift_beginAccess();
  v145 = v105;
  sub_1BE04D874();
  swift_endAccess();
  v112 = v126;
  *(v111 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_policy) = v126;
  v113 = v127;
  *(v111 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_pass) = v127;
  v114 = swift_allocObject();
  v115 = v125;
  *(v114 + 2) = v137;
  *(v114 + 3) = v115;
  *(v114 + 4) = v128;
  v116 = (v111 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onSelection);
  *v116 = sub_1BD59FDC4;
  v116[1] = v114;
  v117 = v112;
  v118 = v113;
  sub_1BE048964();
  sub_1BD64A1CC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v119 = v146;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v120 = *(v146 + 16);

  if (v119 == v120)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v121 = v146 > 2;
  }

  else
  {

    v121 = 0;
  }

  *(v111 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) = v121;
  return v111;
}

uint64_t sub_1BD59F714(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v8 = type metadata accessor for DeviceViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v42 = a4;
  if (v13)
  {
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v13, 0);
    v15 = v43[0];
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);
    do
    {
      sub_1BD59FD04(v16, v12);
      v18 = *v12;
      v19 = v12[1];
      sub_1BE048C84();
      sub_1BD59FD68(v12);
      v43[0] = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1BD03B254((v20 > 1), v21 + 1, 1);
        v15 = v43[0];
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v16 += v17;
      --v13;
    }

    while (v13);
    a4 = v42;
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v44 = v14;
  if (a4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v24 = 0;
    v40 = a4 & 0xFFFFFFFFFFFFFF8;
    v41 = a4 & 0xC000000000000001;
    while (1)
    {
      if (v41)
      {
        v25 = MEMORY[0x1BFB40900](v24, a4);
      }

      else
      {
        if (v24 >= *(v40 + 16))
        {
          goto LABEL_21;
        }

        v25 = *(a4 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 identifier];
      v29 = sub_1BE052434();
      v31 = v30;

      v43[0] = v29;
      v43[1] = v31;
      MEMORY[0x1EEE9AC00](v32, v33);
      *(&v35 - 2) = v43;
      LOBYTE(v28) = sub_1BD2FF084(sub_1BD20DFC4, (&v35 - 4), v15);

      if (v28)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      a4 = v42;
      ++v24;
      if (v27 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  v39(v44, v36, v37);
}

char *sub_1BD59FA24(void *a1)
{
  v2 = type metadata accessor for ExtractedUIFlowItem();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___PKExtractedUIFlowItem_completion];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR___PKExtractedUIFlowItem_flowItem];
  *v5 = a1;
  *(v5 + 1) = &off_1F3BAF118;
  v12.receiver = v3;
  v12.super_class = v2;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = *&v6[OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 24);
  v10 = v6;
  swift_unknownObjectRetain();
  v9(v6, &off_1F3B9BB10, ObjectType, v7);

  swift_unknownObjectRelease();
  return v10;
}

id sub_1BD59FB2C(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_identifier];
  *v7 = 0xD000000000000019;
  *(v7 + 1) = 0x80000001BE12FB30;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_context] = a1;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_provisionedPasses] = a2;
  sub_1BE052434();
  sub_1BE048964();
  v8 = a2;
  v9 = sub_1BE04BB74();

  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_reporter] = v9;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BD59FCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD59FD04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD59FD68(uint64_t a1)
{
  v2 = type metadata accessor for DeviceViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1BD59FE48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD59FE9C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, BOOL), uint64_t a5, void *a6)
{
  v11 = sub_1BE052484();
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B944();
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v19 = a2;
  sub_1BE048964();
  sub_1BE048964();
  v52 = a6;
  v20 = sub_1BE04BD24();
  if (v20)
  {
    v51 = a4;
    v21 = v20;
    v22 = [v20 authorizationType];

    if (v22 == 2)
    {
      v28 = sub_1BE04BC84();
      v29 = [v28 devicePrimaryPaymentApplication];

      if (v29)
      {
        v30 = [v29 dpanIdentifier];
        if (v30)
        {
          v52 = v29;
          v31 = v30;
          v32 = sub_1BE052434();
          v34 = v33;

          sub_1BE04BB94();
          v35 = sub_1BE04B934();
          v36 = sub_1BE04B8E4();
          sub_1BE052464();
          v37 = sub_1BE052444();
          v39 = v38;
          (*(v47 + 8))(v14, v11);
          if (v39 >> 60 == 15)
          {
            v40 = 0;
          }

          else
          {
            v40 = sub_1BE04AAB4();
            sub_1BD030220(v37, v39);
          }

          v44 = swift_allocObject();
          v44[2] = v32;
          v44[3] = v34;
          v44[4] = sub_1BD5A0420;
          v44[5] = v18;
          aBlock[4] = sub_1BD5A0434;
          aBlock[5] = v44;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD59E9A8;
          aBlock[3] = &block_descriptor_58;
          v45 = _Block_copy(aBlock);
          sub_1BE048964();

          [v35 paymentWebService:v36 signData:v40 signatureEntanglementMode:0 withCompletionHandler:v45];

          _Block_release(v45);
          swift_unknownObjectRelease();

          (*(v48 + 8))(v50, v49);
          goto LABEL_6;
        }
      }

      v41 = [objc_opt_self() errorWithSeverity_];
      swift_beginAccess();
      v42 = *(a3 + 16);
      *(a3 + 16) = v41;
      v43 = v41;

      swift_beginAccess();
      v51(v52, *(a3 + 16) != 0);

      return;
    }

    a4 = v51;
    if (!v22)
    {
      v23 = [objc_opt_self() errorWithSeverity_];
      v24 = a4;
      v25 = sub_1BE052404();
      [v23 addInternalDebugDescription_];

      swift_beginAccess();
      v26 = *(a3 + 16);
      *(a3 + 16) = v23;
      v27 = v23;

      swift_beginAccess();
      v24(v52, *(a3 + 16) != 0);

      return;
    }
  }

  [v19 setAuthorization_];
  swift_beginAccess();
  a4(v52, *(a3 + 16) != 0);
LABEL_6:
}

uint64_t sub_1BD5A0764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD5A07D4(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED790(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD5A0888(v5);
  *a1 = v3;
}

void sub_1BD5A0888(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
        v6 = sub_1BE0527B4();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BD5A0F30(v8, v9, a1, v4);
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
    sub_1BD5A09CC(0, v2, 1, a1);
  }
}

void sub_1BD5A09CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v61 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v60 = &v41[-v14];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  MEMORY[0x1EEE9AC00](v58, v15);
  v57 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v18);
  v65 = &v41[-v19];
  MEMORY[0x1EEE9AC00](v20, v21);
  v64 = &v41[-v23];
  v47 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v22 + 72);
    v63 = (v9 + 16);
    v26 = (v9 + 88);
    v62 = *MEMORY[0x1E6967AA0];
    v59 = *MEMORY[0x1E6967A68];
    v54 = *MEMORY[0x1E6967AB8];
    v53 = *MEMORY[0x1E6967A98];
    v52 = *MEMORY[0x1E6967AB0];
    v42 = (v9 + 8);
    v27 = v24 + v25 * (a3 - 1);
    v55 = -v25;
    v46 = *MEMORY[0x1E6967A78];
    v28 = a1 - a3;
    v56 = v24;
    v45 = v25;
    v29 = v24 + v25 * a3;
    LODWORD(v24) = *MEMORY[0x1E6967A88];
    v43 = *MEMORY[0x1E6967AC8];
    v44 = v24;
LABEL_5:
    v50 = v27;
    v51 = a3;
    v48 = v29;
    v49 = v28;
    while (1)
    {
      v30 = v64;
      sub_1BD5A0764(v29, v64);
      sub_1BD5A0764(v27, v65);
      v31 = *v63;
      v32 = v60;
      (*v63)(v60, v30, v8);
      v33 = *v26;
      v34 = (*v26)(v32, v8);
      if (v34 == v62)
      {
        v35 = 7;
      }

      else if (v34 == v59)
      {
        v35 = 5;
      }

      else if (v34 == v54)
      {
        v35 = 4;
      }

      else if (v34 == v53)
      {
        v35 = 3;
      }

      else if (v34 == v52)
      {
        v35 = 1;
      }

      else if (v34 == v46)
      {
        v35 = 0;
      }

      else if (v34 == v44)
      {
        v35 = 6;
      }

      else if (v34 == v43)
      {
        v35 = 2;
      }

      else
      {
        (*v42)(v60, v8);
        v35 = 8;
      }

      v36 = v61;
      v31(v61, v65, v8);
      v37 = v33(v36, v8);
      if (v37 == v62)
      {
        v38 = 7;
      }

      else if (v37 == v59)
      {
        v38 = 5;
      }

      else if (v37 == v54)
      {
        v38 = 4;
      }

      else if (v37 == v53)
      {
        v38 = 3;
      }

      else if (v37 == v52)
      {
        v38 = 1;
      }

      else if (v37 == v46)
      {
        v38 = 0;
      }

      else if (v37 == v44)
      {
        v38 = 6;
      }

      else if (v37 == v43)
      {
        v38 = 2;
      }

      else
      {
        (*v42)(v61, v8);
        v38 = 8;
      }

      sub_1BD0DE53C(v65, &qword_1EBD49BE0);
      sub_1BD0DE53C(v64, &qword_1EBD49BE0);
      if (v35 >= v38)
      {
LABEL_4:
        a3 = v51 + 1;
        v27 = v50 + v45;
        v28 = v49 - 1;
        v29 = v48 + v45;
        if (v51 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v39 = v57;
      sub_1BD5A3384(v29, v57);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD5A3384(v39, v27);
      v27 += v55;
      v29 += v55;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD5A0F30(unint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v157 = a1;
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v181 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v180 = &v149 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v167 = &v149 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v166 = &v149 - v18;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  v19 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v20);
  v161 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v178 = &v149 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v187 = &v149 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v183 = &v149 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v175 = &v149 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v171 = &v149 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v153 = &v149 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = *(a3 + 8);
  if (v43 < 1)
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_164:
    v7 = *v157;
    if (!*v157)
    {
      goto LABEL_204;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v173;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_166;
  }

  v151 = &v149 - v42;
  v44 = 0;
  v186 = (v7 + 16);
  v185 = (v7 + 88);
  v184 = *MEMORY[0x1E6967AA0];
  v182 = *MEMORY[0x1E6967A68];
  v176 = *MEMORY[0x1E6967AB8];
  v174 = *MEMORY[0x1E6967A98];
  v169 = *MEMORY[0x1E6967AB0];
  v162 = *MEMORY[0x1E6967A78];
  v158 = *MEMORY[0x1E6967A88];
  v152 = (v7 + 8);
  v155 = *MEMORY[0x1E6967AC8];
  v45 = MEMORY[0x1E69E7CC0];
  v170 = v19;
  v156 = a4;
  v159 = a3;
  while (1)
  {
    v46 = v44;
    if (v44 + 1 >= v43)
    {
      v57 = v44 + 1;
    }

    else
    {
      v172 = v43;
      v47 = *a3;
      v48 = *(v19 + 72);
      v7 = v47 + v48 * (v44 + 1);
      v49 = v151;
      sub_1BD5A0764(v7, v151);
      v177 = v47;
      v50 = v47 + v48 * v44;
      v51 = v153;
      sub_1BD5A0764(v50, v153);
      v52 = v173;
      LODWORD(v168) = sub_1BD5A2AF0(v49, v51);
      v173 = v52;
      if (v52)
      {
        sub_1BD0DE53C(v51, &qword_1EBD49BE0);
        sub_1BD0DE53C(v49, &qword_1EBD49BE0);
        goto LABEL_176;
      }

      sub_1BD0DE53C(v51, &qword_1EBD49BE0);
      sub_1BD0DE53C(v49, &qword_1EBD49BE0);
      v154 = v44;
      v53 = v44 + 2;
      v54 = v177 + v48 * (v44 + 2);
      v55 = v48;
      v177 = v48;
      while (1)
      {
        v57 = v172;
        if (v172 == v53)
        {
          break;
        }

        v58 = v45;
        v59 = v171;
        sub_1BD5A0764(v54, v171);
        sub_1BD5A0764(v7, v175);
        v60 = *v186;
        v61 = v166;
        (*v186)(v166, v59, v6);
        v62 = *v185;
        v63 = (*v185)(v61, v6);
        if (v63 == v184)
        {
          v64 = 7;
        }

        else if (v63 == v182)
        {
          v64 = 5;
        }

        else if (v63 == v176)
        {
          v64 = 4;
        }

        else if (v63 == v174)
        {
          v64 = 3;
        }

        else if (v63 == v169)
        {
          v64 = 1;
        }

        else if (v63 == v162)
        {
          v64 = 0;
        }

        else if (v63 == v158)
        {
          v64 = 6;
        }

        else if (v63 == v155)
        {
          v64 = 2;
        }

        else
        {
          (*v152)(v166, v6);
          v64 = 8;
        }

        v65 = v167;
        v60(v167, v175, v6);
        v66 = v62(v65, v6);
        if (v66 == v184)
        {
          v56 = 7;
          v45 = v58;
        }

        else
        {
          v45 = v58;
          if (v66 == v182)
          {
            v56 = 5;
          }

          else if (v66 == v176)
          {
            v56 = 4;
          }

          else if (v66 == v174)
          {
            v56 = 3;
          }

          else if (v66 == v169)
          {
            v56 = 1;
          }

          else if (v66 == v162)
          {
            v56 = 0;
          }

          else if (v66 == v158)
          {
            v56 = 6;
          }

          else if (v66 == v155)
          {
            v56 = 2;
          }

          else
          {
            (*v152)(v167, v6);
            v56 = 8;
          }
        }

        sub_1BD0DE53C(v175, &qword_1EBD49BE0);
        sub_1BD0DE53C(v171, &qword_1EBD49BE0);
        ++v53;
        v55 = v177;
        v54 += v177;
        v7 += v177;
        v19 = v170;
        if (((v168 ^ (v64 >= v56)) & 1) == 0)
        {
          v57 = v53 - 1;
          break;
        }
      }

      a4 = v156;
      a3 = v159;
      v46 = v154;
      if (v168)
      {
        if (v57 < v154)
        {
          goto LABEL_197;
        }

        if (v154 < v57)
        {
          v150 = v45;
          v67 = v55 * (v57 - 1);
          v68 = v57;
          v69 = v57 * v55;
          v172 = v57;
          v70 = v154;
          v71 = v154 * v55;
          do
          {
            if (v70 != --v68)
            {
              v72 = *v159;
              if (!*v159)
              {
                goto LABEL_201;
              }

              v7 = v72 + v71;
              sub_1BD5A3384(v72 + v71, v161);
              if (v71 < v67 || v7 >= v72 + v69)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v71 != v67)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1BD5A3384(v161, v72 + v67);
              v19 = v170;
              v55 = v177;
            }

            ++v70;
            v67 -= v55;
            v69 -= v55;
            v71 += v55;
          }

          while (v70 < v68);
          a4 = v156;
          v45 = v150;
          a3 = v159;
          v57 = v172;
          v46 = v154;
        }
      }
    }

    v73 = *(a3 + 8);
    if (v57 < v73)
    {
      if (__OFSUB__(v57, v46))
      {
        goto LABEL_194;
      }

      if (v57 - v46 < a4)
      {
        if (__OFADD__(v46, a4))
        {
          goto LABEL_195;
        }

        if (v46 + a4 >= v73)
        {
          v74 = *(a3 + 8);
        }

        else
        {
          v74 = v46 + a4;
        }

        if (v74 < v46)
        {
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          v45 = sub_1BD5ED6C8(v45);
LABEL_166:
          v188 = v45;
          v143 = *(v45 + 2);
          if (v143 >= 2)
          {
            do
            {
              v144 = *a3;
              if (!*a3)
              {
                goto LABEL_202;
              }

              v145 = a3;
              a3 = v143 - 1;
              v146 = *&v45[16 * v143];
              v147 = *&v45[16 * v143 + 24];
              sub_1BD5A1F44(v144 + *(v19 + 72) * v146, v144 + *(v19 + 72) * *&v45[16 * v143 + 16], v144 + *(v19 + 72) * v147, v7);
              if (v6)
              {
                break;
              }

              if (v147 < v146)
              {
                goto LABEL_191;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = sub_1BD5ED6C8(v45);
              }

              if (v143 - 2 >= *(v45 + 2))
              {
                goto LABEL_192;
              }

              v148 = &v45[16 * v143];
              *v148 = v146;
              *(v148 + 1) = v147;
              v188 = v45;
              sub_1BD5ED63C(a3);
              v45 = v188;
              v143 = *(v188 + 2);
              a3 = v145;
            }

            while (v143 > 1);
          }

LABEL_176:

          return;
        }

        if (v57 != v74)
        {
          break;
        }
      }
    }

    v75 = v57;
    if (v57 < v46)
    {
      goto LABEL_193;
    }

LABEL_69:
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v163 = v75;
    if ((v76 & 1) == 0)
    {
      v45 = sub_1BD1D7844(0, *(v45 + 2) + 1, 1, v45);
    }

    v78 = *(v45 + 2);
    v77 = *(v45 + 3);
    v7 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v45 = sub_1BD1D7844((v77 > 1), v78 + 1, 1, v45);
    }

    *(v45 + 2) = v7;
    v79 = &v45[16 * v78];
    v80 = v163;
    *(v79 + 4) = v46;
    *(v79 + 5) = v80;
    if (!*v157)
    {
      goto LABEL_203;
    }

    if (v78)
    {
      v81 = *v157;
      while (1)
      {
        v82 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v83 = *(v45 + 4);
          v84 = *(v45 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_89:
          if (v86)
          {
            goto LABEL_182;
          }

          v99 = &v45[16 * v7];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_185;
          }

          v105 = &v45[16 * v82 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_188;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_189;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v82 = v7 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v109 = &v45[16 * v7];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_103:
        if (v104)
        {
          goto LABEL_184;
        }

        v112 = &v45[16 * v82];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_187;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_110:
        v120 = v82 - 1;
        if (v82 - 1 >= v7)
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        v121 = *a3;
        if (!*a3)
        {
          goto LABEL_200;
        }

        v122 = a3;
        v7 = *&v45[16 * v120 + 32];
        a3 = *&v45[16 * v82 + 40];
        v123 = v173;
        sub_1BD5A1F44(v121 + *(v19 + 72) * v7, v121 + *(v19 + 72) * *&v45[16 * v82 + 32], v121 + *(v19 + 72) * a3, v81);
        v173 = v123;
        if (v123)
        {
          goto LABEL_176;
        }

        if (a3 < v7)
        {
          goto LABEL_178;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1BD5ED6C8(v45);
        }

        if (v120 >= *(v45 + 2))
        {
          goto LABEL_179;
        }

        v124 = &v45[16 * v120];
        *(v124 + 4) = v7;
        *(v124 + 5) = a3;
        v188 = v45;
        sub_1BD5ED63C(v82);
        v45 = v188;
        v7 = *(v188 + 2);
        a3 = v122;
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v45[16 * v7 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_180;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_181;
      }

      v94 = &v45[16 * v7];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_183;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_186;
      }

      if (v98 >= v90)
      {
        v116 = &v45[16 * v82 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_190;
        }

        if (v85 < v119)
        {
          v82 = v7 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_3:
    v43 = *(a3 + 8);
    v44 = v163;
    a4 = v156;
    if (v163 >= v43)
    {
      goto LABEL_164;
    }
  }

  v150 = v45;
  v125 = *a3;
  v126 = *(v19 + 72);
  v127 = *a3 + v126 * (v57 - 1);
  v128 = -v126;
  v154 = v46;
  v129 = v46 - v57;
  v172 = v57;
  v177 = v125;
  v160 = v126;
  v7 = v125 + v57 * v126;
  v163 = v74;
LABEL_121:
  v164 = v7;
  v165 = v129;
  v168 = v127;
  v130 = v127;
  while (1)
  {
    v131 = v183;
    sub_1BD5A0764(v7, v183);
    sub_1BD5A0764(v130, v187);
    v132 = *v186;
    v133 = v180;
    (*v186)(v180, v131, v6);
    v134 = *v185;
    v135 = (*v185)(v133, v6);
    if (v135 == v184)
    {
      v136 = 7;
    }

    else if (v135 == v182)
    {
      v136 = 5;
    }

    else if (v135 == v176)
    {
      v136 = 4;
    }

    else if (v135 == v174)
    {
      v136 = 3;
    }

    else if (v135 == v169)
    {
      v136 = 1;
    }

    else if (v135 == v162)
    {
      v136 = 0;
    }

    else if (v135 == v158)
    {
      v136 = 6;
    }

    else if (v135 == v155)
    {
      v136 = 2;
    }

    else
    {
      (*v152)(v180, v6);
      v136 = 8;
    }

    v137 = v181;
    v132(v181, v187, v6);
    v138 = v134(v137, v6);
    if (v138 == v184)
    {
      v139 = 7;
    }

    else if (v138 == v182)
    {
      v139 = 5;
    }

    else if (v138 == v176)
    {
      v139 = 4;
    }

    else if (v138 == v174)
    {
      v139 = 3;
    }

    else if (v138 == v169)
    {
      v139 = 1;
    }

    else if (v138 == v162)
    {
      v139 = 0;
    }

    else if (v138 == v158)
    {
      v139 = 6;
    }

    else if (v138 == v155)
    {
      v139 = 2;
    }

    else
    {
      (*v152)(v181, v6);
      v139 = 8;
    }

    sub_1BD0DE53C(v187, &qword_1EBD49BE0);
    sub_1BD0DE53C(v183, &qword_1EBD49BE0);
    if (v136 >= v139)
    {
LABEL_120:
      v127 = v168 + v160;
      v129 = v165 - 1;
      v7 = v164 + v160;
      ++v172;
      v75 = v163;
      if (v172 != v163)
      {
        goto LABEL_121;
      }

      a3 = v159;
      v19 = v170;
      v45 = v150;
      v46 = v154;
      if (v163 < v154)
      {
        goto LABEL_193;
      }

      goto LABEL_69;
    }

    if (!v177)
    {
      break;
    }

    v140 = v178;
    sub_1BD5A3384(v7, v178);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD5A3384(v140, v130);
    v130 += v128;
    v7 += v128;
    if (__CFADD__(v129++, 1))
    {
      goto LABEL_120;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}

void sub_1BD5A1F44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v100 = sub_1BE049B04();
  v8 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v9);
  v91 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v89 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v93 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v92 = &v76 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  MEMORY[0x1EEE9AC00](v94, v20);
  v97 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v96 = (&v76 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v98 = &v76 - v31;
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (a2 - a1 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_130;
  }

  v34 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v33 != -1)
  {
    v35 = (a2 - a1) / v33;
    v103 = a1;
    v102 = a4;
    if (v35 < v34 / v33)
    {
      v36 = v35 * v33;
      if (a4 < a1 || a1 + v36 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v91 = (a4 + v36);
      v101 = a4 + v36;
      if (v36 >= 1 && a2 < a3)
      {
        v96 = (v8 + 88);
        v97 = (v8 + 16);
        LODWORD(v95) = *MEMORY[0x1E6967AA0];
        LODWORD(v89) = *MEMORY[0x1E6967A68];
        LODWORD(v88) = *MEMORY[0x1E6967AB8];
        LODWORD(v87) = *MEMORY[0x1E6967A98];
        LODWORD(v86) = *MEMORY[0x1E6967AB0];
        v85 = *MEMORY[0x1E6967A78];
        v82 = (v8 + 8);
        v39 = *MEMORY[0x1E6967A88];
        v83 = *MEMORY[0x1E6967AC8];
        LODWORD(v84) = v39;
        v90 = a3;
        do
        {
          v40 = v33;
          v41 = a2;
          v42 = v98;
          sub_1BD5A0764(a2, v98);
          sub_1BD5A0764(a4, v28);
          v43 = *v97;
          v44 = v92;
          v45 = v100;
          (*v97)(v92, v42, v100);
          v46 = *v96;
          v47 = (*v96)(v44, v45);
          v99 = a4;
          if (v47 == v95)
          {
            v48 = 7;
          }

          else if (v47 == v89)
          {
            v48 = 5;
          }

          else if (v47 == v88)
          {
            v48 = 4;
          }

          else if (v47 == v87)
          {
            v48 = 3;
          }

          else if (v47 == v86)
          {
            v48 = 1;
          }

          else if (v47 == v85)
          {
            v48 = 0;
          }

          else if (v47 == v84)
          {
            v48 = 6;
          }

          else if (v47 == v83)
          {
            v48 = 2;
          }

          else
          {
            (*v82)(v92, v100);
            v48 = 8;
          }

          v49 = v93;
          v50 = v28;
          v51 = v28;
          v52 = v100;
          v43(v93, v51, v100);
          v53 = v46(v49, v52);
          if (v53 == v95)
          {
            v54 = 7;
            a2 = v41;
            v33 = v40;
            v28 = v50;
          }

          else
          {
            a2 = v41;
            v28 = v50;
            if (v53 == v89)
            {
              v54 = 5;
              v33 = v40;
            }

            else
            {
              v33 = v40;
              if (v53 == v88)
              {
                v54 = 4;
              }

              else if (v53 == v87)
              {
                v54 = 3;
              }

              else if (v53 == v86)
              {
                v54 = 1;
              }

              else if (v53 == v85)
              {
                v54 = 0;
              }

              else if (v53 == v84)
              {
                v54 = 6;
              }

              else if (v53 == v83)
              {
                v54 = 2;
              }

              else
              {
                (*v82)(v93, v100);
                v54 = 8;
              }
            }
          }

          sub_1BD0DE53C(v28, &qword_1EBD49BE0);
          sub_1BD0DE53C(v98, &qword_1EBD49BE0);
          if (v48 >= v54)
          {
            a4 = v99 + v33;
            if (a1 < v99 || a1 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v55 = v90;
            }

            else
            {
              v55 = v90;
              if (a1 != v99)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v102 = a4;
          }

          else
          {
            a4 = v99;
            if (a1 < a2 || a1 >= a2 + v33)
            {
              swift_arrayInitWithTakeFrontToBack();
              a2 += v33;
              v55 = v90;
            }

            else
            {
              v55 = v90;
              if (a1 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              a2 += v33;
            }
          }

          a1 += v33;
          v103 = a1;
        }

        while (a4 < v91 && a2 < v55);
      }

      goto LABEL_128;
    }

    v37 = v34 / v33 * v33;
    if (a4 < a2 || a2 + v37 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v37;
    if (v37 < 1)
    {
LABEL_127:
      v103 = a2;
      v101 = v56;
LABEL_128:
      sub_1BD935298(&v103, &v102, &v101);
      return;
    }

    v88 = a1;
    v57 = -v33;
    v98 = (v8 + 16);
    v95 = (v8 + 88);
    LODWORD(v93) = *MEMORY[0x1E6967AA0];
    v85 = *MEMORY[0x1E6967A68];
    v83 = *MEMORY[0x1E6967AB8];
    LODWORD(v82) = *MEMORY[0x1E6967A98];
    v81 = *MEMORY[0x1E6967AB0];
    v79 = *MEMORY[0x1E6967A78];
    v76 = (v8 + 8);
    v78 = *MEMORY[0x1E6967A88];
    v58 = a4 + v37;
    v77 = *MEMORY[0x1E6967AC8];
    v99 = a4;
    v86 = -v33;
LABEL_74:
    v80 = v56;
    v59 = a2;
    a2 += v57;
    v90 = v59;
    v87 = a2;
    while (1)
    {
      if (v59 <= v88)
      {
        v103 = v59;
        v101 = v80;
        goto LABEL_128;
      }

      v60 = a3;
      v84 = v56;
      v61 = v58 + v57;
      v62 = v96;
      sub_1BD5A0764(v58 + v57, v96);
      sub_1BD5A0764(a2, v97);
      v63 = *v98;
      v64 = v89;
      v65 = v62;
      v66 = v100;
      (*v98)(v89, v65, v100);
      v67 = *v95;
      v68 = (*v95)(v64, v66);
      if (v68 == v93)
      {
        break;
      }

      if (v68 == v85)
      {
        v69 = 5;
        goto LABEL_88;
      }

      if (v68 == v83)
      {
        v69 = 4;
        goto LABEL_88;
      }

      if (v68 == v82)
      {
        v69 = 3;
        goto LABEL_88;
      }

      if (v68 == v81)
      {
        v69 = 1;
        goto LABEL_88;
      }

      if (v68 != v79)
      {
        if (v68 == v78)
        {
          v69 = 6;
        }

        else if (v68 == v77)
        {
          v69 = 2;
        }

        else
        {
          (*v76)(v89, v100);
          v69 = 8;
        }

        goto LABEL_88;
      }

      v92 = 0;
LABEL_89:
      v70 = v91;
      v71 = v100;
      v63(v91, v97, v100);
      v72 = v67(v70, v71);
      if (v72 == v93)
      {
        v73 = 7;
        v74 = v86;
        a2 = v87;
      }

      else
      {
        a2 = v87;
        if (v72 == v85)
        {
          v73 = 5;
          v74 = v86;
        }

        else
        {
          v74 = v86;
          if (v72 == v83)
          {
            v73 = 4;
          }

          else if (v72 == v82)
          {
            v73 = 3;
          }

          else if (v72 == v81)
          {
            v73 = 1;
          }

          else if (v72 == v79)
          {
            v73 = 0;
          }

          else if (v72 == v78)
          {
            v73 = 6;
          }

          else if (v72 == v77)
          {
            v73 = 2;
          }

          else
          {
            v75 = v86;
            (*v76)(v91, v100);
            v74 = v75;
            v73 = 8;
          }
        }
      }

      v57 = v74;
      a3 = v60 + v74;
      sub_1BD0DE53C(v97, &qword_1EBD49BE0);
      sub_1BD0DE53C(v96, &qword_1EBD49BE0);
      if (v92 < v73)
      {
        if (v60 < v90 || a3 >= v90)
        {
          swift_arrayInitWithTakeFrontToBack();
          v56 = v84;
        }

        else
        {
          v56 = v84;
          if (v60 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v58 <= v99)
        {
          goto LABEL_127;
        }

        goto LABEL_74;
      }

      v56 = v61;
      v59 = v90;
      if (v60 < v58 || a3 >= v58)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v60 != v58)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v58 = v61;
      if (v61 <= v99)
      {
        a2 = v59;
        goto LABEL_127;
      }
    }

    v69 = 7;
LABEL_88:
    v92 = v69;
    goto LABEL_89;
  }

LABEL_131:
  __break(1u);
}

BOOL sub_1BD5A2AF0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_1BE049B04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v21 - v11;
  v13 = *(v4 + 16);
  v13(&v21 - v11, a1, v3, v10);
  v14 = *(v4 + 88);
  v15 = v14(v12, v3);
  v16 = *MEMORY[0x1E6967AA0];
  if (v15 == *MEMORY[0x1E6967AA0])
  {
    v17 = 7;
  }

  else if (v15 == *MEMORY[0x1E6967A68])
  {
    v17 = 5;
  }

  else if (v15 == *MEMORY[0x1E6967AB8])
  {
    v17 = 4;
  }

  else if (v15 == *MEMORY[0x1E6967A98])
  {
    v17 = 3;
  }

  else if (v15 == *MEMORY[0x1E6967AB0])
  {
    v17 = 1;
  }

  else if (v15 == *MEMORY[0x1E6967A78])
  {
    v17 = 0;
  }

  else if (v15 == *MEMORY[0x1E6967A88])
  {
    v17 = 6;
  }

  else if (v15 == *MEMORY[0x1E6967AC8])
  {
    v17 = 2;
  }

  else
  {
    (*(v4 + 8))(v12, v3);
    v17 = 8;
  }

  (v13)(v7, v22, v3);
  v18 = v14(v7, v3);
  if (v18 == v16)
  {
    v19 = 7;
  }

  else if (v18 == *MEMORY[0x1E6967A68])
  {
    v19 = 5;
  }

  else if (v18 == *MEMORY[0x1E6967AB8])
  {
    v19 = 4;
  }

  else if (v18 == *MEMORY[0x1E6967A98])
  {
    v19 = 3;
  }

  else if (v18 == *MEMORY[0x1E6967AB0])
  {
    v19 = 1;
  }

  else if (v18 == *MEMORY[0x1E6967A78])
  {
    v19 = 0;
  }

  else if (v18 == *MEMORY[0x1E6967A88])
  {
    v19 = 6;
  }

  else if (v18 == *MEMORY[0x1E6967AC8])
  {
    v19 = 2;
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    v19 = 8;
  }

  return v17 < v19;
}

void *sub_1BD5A2E3C(uint64_t a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880);
  MEMORY[0x1EEE9AC00](v58, v3);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - v10;
  v12 = *(a1 + *(type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0) + 24));
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1BD53220C(0, v13, 0);
    v14 = v64;
    v15 = v12 + 64;
    v16 = sub_1BE053674();
    v17 = 0;
    v18 = *(v12 + 36);
    v48 = v12 + 72;
    v49 = v13;
    v52 = v12 + 64;
    v53 = v11;
    v50 = v18;
    v51 = v12;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v12 + 32))
    {
      if ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_22;
      }

      if (v18 != *(v12 + 36))
      {
        goto LABEL_23;
      }

      v60 = 1 << v16;
      v61 = v16 >> 6;
      v59 = v17;
      v20 = v58;
      v21 = *(v58 + 48);
      v22 = *(v12 + 48);
      v23 = sub_1BE049B04();
      v24 = *(v23 - 8);
      v25 = v24;
      v26 = v22 + *(v24 + 72) * v16;
      v62 = *(v24 + 16);
      v63 = v14;
      v27 = v56;
      v62(v56, v26, v23);
      v28 = *(v12 + 56);
      v29 = sub_1BE0493F4();
      v30 = *(v29 - 8);
      (*(v30 + 16))(&v27[v21], v28 + *(v30 + 72) * v16, v29);
      v31 = v57;
      (*(v25 + 32))(v57, v27, v23);
      v32 = *(v20 + 48);
      v33 = v53;
      (*(v30 + 32))(v31 + v32, &v27[v21], v29);
      v34 = *(v55 + 48);
      v62(v33, v31, v23);
      sub_1BE0493C4();
      v35 = sub_1BE053344();
      [v35 doubleValue];
      v37 = v36;

      v38 = v33;
      *(v33 + v34) = v37;
      v14 = v63;
      sub_1BD0DE53C(v31, &unk_1EBD4B880);
      v64 = v14;
      v1 = v14[2];
      v39 = v14[3];
      if (v1 >= v39 >> 1)
      {
        sub_1BD53220C(v39 > 1, v1 + 1, 1);
        v14 = v64;
      }

      v14[2] = v1 + 1;
      sub_1BD5A3384(v38, v14 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v1);
      v12 = v51;
      v15 = v52;
      v19 = 1 << *(v51 + 32);
      if (v16 >= v19)
      {
        goto LABEL_24;
      }

      v40 = *(v52 + 8 * v61);
      if ((v40 & v60) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v18) = v50;
      if (v50 != *(v51 + 36))
      {
        goto LABEL_26;
      }

      v41 = v40 & (-2 << (v16 & 0x3F));
      if (v41)
      {
        v19 = __clz(__rbit64(v41)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v61 << 6;
        v43 = v61 + 1;
        v44 = (v48 + 8 * v61);
        while (v43 < (v19 + 63) >> 6)
        {
          v45 = *v44++;
          v1 = v45;
          v42 += 64;
          ++v43;
          if (v45)
          {
            sub_1BD20DE9C(v16, v50, 0);
            v19 = __clz(__rbit64(v1)) + v42;
            goto LABEL_4;
          }
        }

        sub_1BD20DE9C(v16, v50, 0);
      }

LABEL_4:
      v17 = v59 + 1;
      v16 = v19;
      if (v59 + 1 == v49)
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
LABEL_26:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_20:
    v64 = v14;
    sub_1BE048C84();
    sub_1BD5A07D4(&v64);

    return v64;
  }

  return result;
}

uint64_t sub_1BD5A3384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5A3420(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a4;
  v9 = a5;
  return MEMORY[0x1BFB3E0D0](v6, a3, &type metadata for RoundedRectangleViewModifier);
}

uint64_t sub_1BD5A3460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D1>)
{
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B890);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B898);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v44 - v15;
  v17 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v21 + 28);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1BE04F684();
  (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
  *v20 = a4;
  v20[1] = a4;
  v25 = &v16[*(v13 + 44)];
  sub_1BD1E4B10(v20, v25);
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8A0);
  (*(*(v26 - 8) + 16))(v16, a1, v26);
  sub_1BE04E3F4();
  sub_1BD1E4B10(v20, v11);
  v27 = *&v45 * 0.5;
  v28 = &v11[*(v8 + 76)];
  sub_1BD1E4B10(v20, v28);
  *(v28 + *(sub_1BE04EDD4() + 20)) = v27;
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8A8) + 36);
  v30 = v46;
  *v29 = v45;
  *(v29 + 16) = v30;
  *(v29 + 32) = v47;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B0);
  *(v28 + *(v31 + 52)) = a2;
  *(v28 + *(v31 + 56)) = 256;
  sub_1BE048964();
  v32 = sub_1BE051CD4();
  v34 = v33;
  v35 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B8) + 36));
  *v35 = v32;
  v35[1] = v34;
  v36 = sub_1BE051CD4();
  v38 = v37;
  sub_1BD1E4B74(v20);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8C0);
  v40 = v44;
  v41 = v44 + *(v39 + 36);
  sub_1BD088A48(v11, v41);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8C8) + 36));
  *v42 = v36;
  v42[1] = v38;
  return sub_1BD5A37E0(v16, v40);
}

uint64_t sub_1BD5A37E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD5A3850()
{
  result = qword_1EBD4B8D0;
  if (!qword_1EBD4B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B8C0);
    sub_1BD5A3908();
    sub_1BD0DE4F4(&qword_1EBD4B8E8, &qword_1EBD4B8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B8D0);
  }

  return result;
}

unint64_t sub_1BD5A3908()
{
  result = qword_1EBD4B8D8;
  if (!qword_1EBD4B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B898);
    sub_1BD0DE4F4(&qword_1EBD4B8E0, &qword_1EBD4B8A0);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B8D8);
  }

  return result;
}

double sub_1BD5A39EC()
{
  v0 = sub_1BE051C54();
  result = 10.0;
  if (v0)
  {
    return 26.0;
  }

  return result;
}

id sub_1BD5A3B28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddBankAccountInformationView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD5A3BE4()
{
  result = qword_1EBD4B908;
  if (!qword_1EBD4B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B908);
  }

  return result;
}

id sub_1BD5A3C44@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AddBankAccountInformationView.Coordinator();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded] = 0;
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_completionAction];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD5A3CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A3DB4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD5A3D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A3DB4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD5A3D8C()
{
  sub_1BD5A3DB4();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD5A3DB4()
{
  result = qword_1EBD4B910;
  if (!qword_1EBD4B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B910);
  }

  return result;
}

id sub_1BD5A3E08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69B86A8]) initWithType_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v5 = [v19 type];
  if (v5 != 4)
  {
    if (v5 != 1)
    {
      goto LABEL_9;
    }

    result = [v19 creditDetails];
    if (!result)
    {
      __break(1u);
      goto LABEL_14;
    }

    v7 = result;
    v8 = [result countryCode];

    if (v8)
    {
LABEL_8:
      sub_1BE052434();

      goto LABEL_9;
    }

    __break(1u);
  }

  result = [v19 savingsDetails];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = result;
  v8 = [result countryCode];

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B918);
  sub_1BE050154();
  v10 = objc_allocWithZone(PKAddBankAccountInformationViewController);
  v11 = v19;
  v12 = v4;
  v13 = sub_1BE052404();

  v14 = [v10 initWithDelegate:v19 bankInformation:v12 accountCountryCode:v13 featureAccount:v11];

  if (v14)
  {
    [v14 setOfferKeychainPreFill_];
    v15 = v14;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  }

  v16 = objc_allocWithZone(PKNavigationController);
  v17 = v14;
  v18 = [v16 initWithRootViewController_];

  return v18;
}

uint64_t sub_1BD5A40B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationController();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t static SetupHeaderView.Configuration.Plain(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = -64;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t static SetupHeaderView.Configuration.Symbol(name:symbolColor:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = 0;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();

  return sub_1BE048C84();
}

uint64_t static SetupHeaderView.Configuration.Icon(name:bundle:pdf:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 | 0x40;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  sub_1BE048C84();
  sub_1BE048C84();
  v10 = a3;

  return sub_1BE048C84();
}

uint64_t SetupHeaderView.Configuration.CardSize.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t static SetupHeaderView.Configuration.CardArt(pass:size:title:subtitle:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a2;
  *a7 = a1;
  *(a7 + 8) = v8;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0x80;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  sub_1BE048C84();
  v9 = a1;

  return sub_1BE048C84();
}

__n128 SetupHeaderView.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t SetupHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B920);
  return sub_1BD5A43A8(v7, a1 + *(v5 + 44));
}

uint64_t sub_1BD5A43A8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B958);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = a1[1];
  v65 = *a1;
  v66 = v10;
  v11 = a1[3];
  v67 = a1[2];
  v68 = v11;
  v60 = &v54 - v12;
  sub_1BD5A485C(&v54 - v12);
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  v16 = *(a1 + 24);
  v17 = *(a1 + 4);
  v18 = *(a1 + 5);
  v19 = *(a1 + 6);
  v20 = *(a1 + 7);
  *&v65 = v17;
  *(&v65 + 1) = v18;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v59 = sub_1BE0506C4();
  v58 = v21;
  v23 = v22;
  v57 = v24;
  v56 = sub_1BE0501E4();
  if ((v16 >> 6 == 2 || v16 >> 6 == 3 && !(v14 | v13 | v15) && v16 == 192) && qword_1EBD36DC8 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23 & 1;
  v72 = v23 & 1;
  v71 = 0;
  if (v20)
  {
    *&v65 = v19;
    *(&v65 + 1) = v20;
    sub_1BE048C84();
    v34 = sub_1BE0506C4();
    v36 = v35;
    v38 = v37;
    v40 = v39 & 1;
    sub_1BD0D7F18(v34, v35, v39 & 1);
    sub_1BE048C84();
  }

  else
  {
    v34 = 0;
    v36 = 0;
    v40 = 0;
    v38 = 0;
  }

  v41 = v60;
  sub_1BD0DE19C(v60, v7, &qword_1EBD4B958);
  sub_1BD0DE19C(v7, a2, &qword_1EBD4B958);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B960);
  v43 = (a2 + *(v42 + 48));
  v44 = v59;
  *&v61 = v59;
  v45 = a2;
  v46 = v58;
  *(&v61 + 1) = v58;
  LOBYTE(v62) = v33;
  v55 = v33;
  v47 = v57;
  *(&v62 + 1) = v57;
  v48 = v56;
  LOBYTE(v63) = v56;
  *(&v63 + 1) = v26;
  *v64 = v28;
  *&v64[8] = v30;
  *&v64[16] = v32;
  v64[24] = 0;
  v49 = v62;
  *v43 = v61;
  v43[1] = v49;
  v50 = *v64;
  v43[2] = v63;
  v43[3] = v50;
  *(v43 + 57) = *&v64[9];
  v51 = *(v42 + 64);
  v54 = v7;
  v52 = (v45 + v51);
  sub_1BD0DE19C(&v61, &v65, &qword_1EBD3FF20);
  sub_1BD1969AC(v34, v36, v40, v38);
  sub_1BD1969F0(v34, v36, v40, v38);
  *v52 = v34;
  v52[1] = v36;
  v52[2] = v40;
  v52[3] = v38;
  sub_1BD0DE53C(v41, &qword_1EBD4B958);
  sub_1BD1969F0(v34, v36, v40, v38);
  *&v65 = v44;
  *(&v65 + 1) = v46;
  LOBYTE(v66) = v55;
  *(&v66 + 1) = v47;
  LOBYTE(v67) = v48;
  *(&v67 + 1) = v26;
  *&v68 = v28;
  *(&v68 + 1) = v30;
  v69 = v32;
  v70 = 0;
  sub_1BD0DE53C(&v65, &qword_1EBD3FF20);
  return sub_1BD0DE53C(v54, &qword_1EBD4B958);
}

unint64_t sub_1BD5A47A8()
{
  result = qword_1EBD4B928;
  if (!qword_1EBD4B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B928);
  }

  return result;
}

uint64_t sub_1BD5A485C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v62 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v62, v2);
  v4 = (v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v59 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B968);
  MEMORY[0x1EEE9AC00](v61, v9);
  v11 = v59 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B970);
  MEMORY[0x1EEE9AC00](v65, v12);
  v63 = v59 - v13;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B978);
  MEMORY[0x1EEE9AC00](v64, v19);
  v21 = v59 - v20;
  v22 = *v1;
  v23 = *(v1 + 8);
  v24 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v25 >> 6;
  if (v25 >> 6 <= 1)
  {
    if (!v26)
    {
      v27 = *(v1 + 16);
      sub_1BE048964();
      sub_1BE048C84();
      v67 = sub_1BE0515A4();
      v68 = v27;
      v69 = 1;
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B9B0);
      sub_1BD5A59F0();
      sub_1BE04F9A4();
      v28 = v71;
      *v21 = v70;
      v21[16] = v28;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998);
      sub_1BD5A5964();
      sub_1BD5A5AD0();
      sub_1BE04F9A4();
    }

    if (v25)
    {
      if (v24)
      {
        v38 = *v1;
        v39 = *v1;
        v40 = *(v1 + 8);
        v41 = *(v1 + 16);
        sub_1BD5A5738(v39, v40, v24, v25);
        v60 = v41;
        v42 = v41;
        v59[1] = v38;
        v43 = sub_1BE052404();
        v44 = sub_1BE052404();
        v45 = v42;
        v46 = [v42 URLForResource:v43 withExtension:v44];

        if (v46)
        {
          sub_1BE04A9F4();

          v46 = sub_1BE04A9C4();
          (*(v15 + 8))(v18, v14);
        }

        if (qword_1EBD36D88 != -1)
        {
          swift_once();
        }

        v47 = *&qword_1EBDAB4E8;
        v48 = unk_1EBDAB4F0;
        v49 = PKUIScreenScale();
        v50 = PKUIImageFromPDF(v46, v47, v48, v49);

        if (v50)
        {
          v51 = v50;
          v67 = sub_1BE051544();
          LOBYTE(v68) = 0;
          sub_1BE048964();
          sub_1BE04F9A4();

LABEL_19:
          v57 = BYTE8(v70);
          *v11 = v70;
          v11[8] = v57;
          swift_storeEnumTagMultiPayload();
          swift_retain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B980);
          sub_1BD5A5884();
          sub_1BD25BEA8();
          v58 = v63;
          sub_1BE04F9A4();
          sub_1BD0DE19C(v58, v21, &qword_1EBD4B970);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998);
          sub_1BD5A5964();
          sub_1BD5A5AD0();
          sub_1BE04F9A4();

          return sub_1BD0DE53C(v58, &qword_1EBD4B970);
        }

        v55 = v60;
LABEL_18:
        v45 = v55;
        sub_1BE048C84();
        v67 = sub_1BE0515F4();
        LOBYTE(v68) = 1;
        sub_1BE04F9A4();

        goto LABEL_19;
      }

      v53 = *v1;
      v54 = *(v1 + 8);
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v53 = *v1;
      v54 = *(v1 + 8);
      v55 = *(v1 + 16);
      v56 = v24;
    }

    sub_1BD5A5738(v53, v54, v56, v25);
    goto LABEL_18;
  }

  if (v26 == 2)
  {
    v60 = *(v1 + 16);
    v30 = v22;
    v31 = v22;
    v32 = PKOBKCardHeaderViewSize(v23);
    v33 = v62;
    *(v4 + *(v62 + 24)) = v31;
    type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    v34 = v31;
    PKPassFrontFaceContentSize();
    v4[3] = v32;
    v4[4] = v32 * (v36 / v35);
    *v4 = sub_1BD70C870;
    v4[1] = 0.0;
    *(v4 + 16) = 0;
    *(v4 + *(v33 + 28)) = 1;
    *(v4 + *(v33 + 32)) = 1911;
    sub_1BD5A57BC(v4, v8);
    sub_1BD5A5820(v8, v11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B980);
    sub_1BD5A5884();
    sub_1BD25BEA8();
    v37 = v63;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v37, v21, &qword_1EBD4B970);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998);
    sub_1BD5A5964();
    sub_1BD5A5AD0();
    sub_1BE04F9A4();
    sub_1BD5A5B5C(v30, v23, v60, v25);
    sub_1BD0DE53C(v37, &qword_1EBD4B970);
    return sub_1BD3A38BC(v8);
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B9B0);
    sub_1BD5A59F0();
    sub_1BE04F9A4();
    v52 = v71;
    *v21 = v70;
    v21[16] = v52;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998);
    sub_1BD5A5964();
    sub_1BD5A5AD0();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD5A50FC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B920);
  return sub_1BD5A43A8(v7, a1 + *(v5 + 44));
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI15SetupHeaderViewV13ConfigurationV11ContentTypeO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BD5A5190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BD5A51D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD5A5248(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 25))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BD5A529C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1BD5A5308(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 1 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = -64;
  }

  return result;
}

uint64_t sub_1BD5A5348(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v22[0] = *a1;
  v22[1] = v2;
  v22[2] = v4;
  v23 = v5;
  v24 = v7;
  v25 = v6;
  v26 = v8;
  v10 = v5 >> 6;
  v27 = v9;
  if (v5 >> 6 <= 1)
  {
    if (v10)
    {
      if (v9 & 0xC0) == 0x40 && (v3 == v7 && v2 == v6 || (sub_1BE053B84()))
      {
        if (v4)
        {
          if (!v8)
          {
            v11 = v7;
            v12 = v6;
            v19 = 0;
            goto LABEL_29;
          }

          sub_1BD0E5E8C(0, &qword_1EBD35DA8);
          sub_1BD5A5738(v7, v6, v8, v9);
          sub_1BD5A5738(v3, v2, v4, v5);
          v16 = v8;
          v17 = v4;
          v18 = sub_1BE053074();
          sub_1BD0DE53C(v22, &qword_1EBD4B950);

          if ((v18 & 1) == 0)
          {
LABEL_30:
            v15 = 0;
            return v15 & 1;
          }
        }

        else
        {
          sub_1BD5A5738(v7, v6, v8, v9);
          sub_1BD5A5738(v3, v2, 0, v5);
          v21 = v8;
          sub_1BD0DE53C(v22, &qword_1EBD4B950);
          if (v8)
          {

            goto LABEL_30;
          }
        }

        v15 = v9 ^ v5 ^ 1;
        return v15 & 1;
      }
    }

    else if (v9 < 0x40 && (v3 == v7 && v2 == v6 || (sub_1BE053B84() & 1) != 0))
    {
      v11 = v7;
      v12 = v6;
      if (!v4)
      {
        sub_1BD5A5738(v7, v6, v8, v9);
        sub_1BD5A5738(v3, v2, 0, v5);
        sub_1BE048964();
        sub_1BD0DE53C(v22, &qword_1EBD4B950);
        if (!v8)
        {
LABEL_36:
          v15 = 1;
          return v15 & 1;
        }

        goto LABEL_30;
      }

      if (v8)
      {
        sub_1BD5A5738(v7, v6, v8, v9);
        sub_1BD5A5738(v3, v2, v4, v5);
        sub_1BE048964();
        sub_1BE048964();
        v13 = sub_1BE051394();

        sub_1BD0DE53C(v22, &qword_1EBD4B950);

        if (v13)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      v19 = 0;
      goto LABEL_29;
    }

LABEL_28:
    v11 = v7;
    v12 = v6;
    v19 = v8;
LABEL_29:
    sub_1BD5A5738(v11, v12, v19, v9);
    sub_1BD5A5738(v3, v2, v4, v5);
    sub_1BD0DE53C(v22, &qword_1EBD4B950);
    goto LABEL_30;
  }

  if (v10 == 2)
  {
    if ((v9 & 0xC0) != 0x80)
    {
      goto LABEL_28;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    sub_1BD5A5738(v7, v6, v8, v9);
    sub_1BD5A5738(v3, v2, v4, v5);
    v14 = sub_1BE053074();
    sub_1BD0DE53C(v22, &qword_1EBD4B950);
    v15 = v6 == v2;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
    }
  }

  else
  {
    if (v9 < 0xC0 || v6 | v7 | v8 || v9 != 192)
    {
      goto LABEL_28;
    }

    sub_1BD0DE53C(v22, &qword_1EBD4B950);
    v15 = 1;
  }

  return v15 & 1;
}

id sub_1BD5A5738(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {

      return result;
    }
  }

  else
  {
    if (a4 >> 6)
    {
      v4 = a3;
    }

    else
    {
      sub_1BE048964();
    }

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD5A57BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5A5820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD5A5884()
{
  result = qword_1EBD4B988;
  if (!qword_1EBD4B988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B980);
    sub_1BD50CBB4();
    sub_1BD5A5910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B988);
  }

  return result;
}

unint64_t sub_1BD5A5910()
{
  result = qword_1EBD4B990;
  if (!qword_1EBD4B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B990);
  }

  return result;
}

unint64_t sub_1BD5A5964()
{
  result = qword_1EBD4B9A0;
  if (!qword_1EBD4B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B998);
    sub_1BD5A59F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9A0);
  }

  return result;
}

unint64_t sub_1BD5A59F0()
{
  result = qword_1EBD4B9A8;
  if (!qword_1EBD4B9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B9B0);
    sub_1BD5A5A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9A8);
  }

  return result;
}

unint64_t sub_1BD5A5A7C()
{
  result = qword_1EBD4B9B8;
  if (!qword_1EBD4B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9B8);
  }

  return result;
}

unint64_t sub_1BD5A5AD0()
{
  result = qword_1EBD4B9C0;
  if (!qword_1EBD4B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B970);
    sub_1BD5A5884();
    sub_1BD25BEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9C0);
  }

  return result;
}

void sub_1BD5A5B5C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 != 2)
    {
      return;
    }
  }

  else
  {
    if (!(a4 >> 6))
    {

      return;
    }

    a1 = a3;
  }
}

uint64_t sub_1BD5A5BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 == v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (sub_1BE053B84() & 1) == 0 || ((v2 ^ v4))
  {
    return 0;
  }

LABEL_7:

  return sub_1BD3FE590(v3, v5);
}

id sub_1BD5A5C94(void *a1)
{
  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  sub_1BD1C4810(v10, &v8);
  if (!*(&v9 + 1))
  {

    sub_1BD14EC0C(&v8);
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  sub_1BD5A5E50();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  result = [v7 couponCode];
  if (result)
  {
    v3 = result;
    v4 = sub_1BE052434();

    [v7 isAwaitingCouponCodeUpdate];
    result = [v7 errors];
    if (result)
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v6 = sub_1BE052744();

      sub_1BD3F00D4(v6);

LABEL_12:
      sub_1BD14EC0C(v10);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD5A5E50()
{
  result = qword_1EBD4B9C8;
  if (!qword_1EBD4B9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4B9C8);
  }

  return result;
}

uint64_t sub_1BD5A5E9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BD5A5EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1BD5A5F54()
{
  result = qword_1EBD59840;
  if (!qword_1EBD59840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59840);
  }

  return result;
}

size_t sub_1BD5A5FA8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v4 = type metadata accessor for AdaptiveHStack.SubviewMeasurement();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v27[1] = v2;
  v29 = MEMORY[0x1E69E7CC0];
  result = sub_1BD53222C(0, v9, 0);
  v10 = v29;
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = *(v5 + 72);
  while (1)
  {
    v15 = *(v13 + v4[8]);
    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *(*v28 + 16))
    {
      goto LABEL_10;
    }

    v16 = v4[10];
    v17 = *(v13 + v4[11]);
    v18 = *(v13 + v16);
    v19 = *(*v28 + 8 * v15 + 32) - v17 + *(v13 + v16 + 8);
    v20 = sub_1BE04E724();
    (*(*(v20 - 8) + 16))(v8, v13, v20);
    v21 = v4[6];
    v22 = *(v13 + v4[7]);
    v23 = *(v13 + v4[9]);
    *&v8[v4[5]] = *(v13 + v4[5]);
    *&v8[v4[6]] = *(v13 + v21);
    *&v8[v4[7]] = v22;
    *&v8[v4[8]] = v15;
    *&v8[v4[9]] = v23;
    v24 = &v8[v4[10]];
    *v24 = v18;
    *(v24 + 1) = v19;
    *&v8[v4[11]] = v17;
    v29 = v10;
    v26 = *(v10 + 16);
    v25 = *(v10 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1BD53222C(v25 > 1, v26 + 1, 1);
      v10 = v29;
    }

    *(v10 + 16) = v26 + 1;
    result = sub_1BD5A79DC(v8, v10 + v12 + v26 * v14);
    v13 += v14;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BD5A6200(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  result = sub_1BE052B04();
  if (v15 != v14)
  {
    if (a4)
    {
      v11 = INFINITY;
    }

    else
    {
      v11 = *&a3;
    }

    if (a2)
    {
      v12 = INFINITY;
    }

    else
    {
      v12 = *&a1;
    }

    v13 = sub_1BD5A631C(a1, a2 & 1, a3, a4 & 1, a5);
    sub_1BD5A6BF8(v13, 0, 0.0, 0.0, v12, v11);
  }

  return result;
}

uint64_t sub_1BD5A631C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v110) = a2;
  v104 = *&a1;
  v103 = sub_1BE04E4B4();
  v98 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v6);
  v102 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v101 = &v96 - v10;
  v115 = sub_1BE04E724();
  v96 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v11);
  *&v109 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AdaptiveHStack.SubviewMeasurement();
  v112 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v14);
  v100 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v96 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v96 - v30);
  v32 = sub_1BE04E854();
  v33 = sub_1BD5A7878();
  v114 = v32;
  v34 = sub_1BE052AE4();
  if (v34)
  {
    v35 = v34;
    v118 = MEMORY[0x1E69E7CC0];
    sub_1BD53222C(0, v34 & ~(v34 >> 63), 0);
    v36 = v33;
    v37 = v118;
    v111 = v36;
    result = sub_1BE052AD4();
    if (v35 < 0)
    {
      goto LABEL_43;
    }

    v99 = v19;
    *&v106 = v96 + 16;
    v39 = v104;
    v105 = (v96 + 32);
    v108 = a5;
    v107 = v31;
    do
    {
      v40 = sub_1BE052B34();
      v41 = v109;
      (**&v106)(*&v109);
      v40(v117, 0);
      sub_1BE04EDA4();
      LOBYTE(v117[0]) = v42 & 1;
      v116 = v43 & 1;
      sub_1BE04E6F4();
      v45 = v44;
      v47 = v46;
      if (v110)
      {
        v48 = v37;
      }

      else
      {
        v48 = v37;
        if (v44 > v39)
        {
          LOBYTE(v117[0]) = 0;
          v116 = 1;
          sub_1BE04E6F4();
          v45 = v49;
          v47 = v50;
        }
      }

      (*v105)(v27, COERCE_DOUBLE(*&v41), v115);
      v51 = &v27[v13[5]];
      *v51 = v45;
      *(v51 + 1) = v47;
      v52 = &v27[v13[6]];
      *v52 = 0;
      *(v52 + 1) = 0;
      *&v27[v13[7]] = 0;
      *&v27[v13[8]] = 0;
      *&v27[v13[9]] = 0;
      v53 = &v27[v13[10]];
      *v53 = 0;
      *(v53 + 1) = 0;
      *&v27[v13[11]] = 0;
      v118 = v48;
      v55 = *(*&v48 + 16);
      v54 = *(*&v48 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1BD53222C(v54 > 1, v55 + 1, 1);
        v48 = v118;
      }

      *(*&v48 + 16) = v55 + 1;
      v37 = v48;
      sub_1BD5A79DC(v27, *&v48 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v55);
      sub_1BE052B14();
      --v35;
      v31 = v107;
    }

    while (v35);
    v104 = v48;
    v19 = v99;
  }

  else
  {
    v104 = MEMORY[0x1E69E7CC0];
  }

  v56 = *(*&v104 + 16);
  v57 = v113;
  if (!v56)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v58 = (v31 + v13[5]);
  v111 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v59 = *&v104 + v111;
  v60 = *(v112 + 72);
  v61 = 0.0;
  v62 = *&v104 + v111;
  v112 = v56;
  v63 = 0.0;
  do
  {
    sub_1BD5A791C(v62, v31);
    v64 = v58[1];
    if (v63 <= *v58)
    {
      v63 = *v58;
    }

    sub_1BD5A7980(v31);
    if (v61 <= v64)
    {
      v61 = v64;
    }

    v62 += v60;
    --v56;
  }

  while (v56);
  v117[0] = MEMORY[0x1E69E7CC0];
  sub_1BD53222C(0, v112, 0);
  v65 = 0;
  v66 = v117[0];
  LODWORD(v108) = *v57;
  v99 = (v96 + 8);
  ++v98;
  v107 = (v96 + 16);
  v96 = -v60;
  v67 = *(v57 + 6);
  v106 = *(v57 + 5);
  v105 = v67;
  v110 = v60;
  v109 = v61;
  v97 = v23;
  while (1)
  {
    result = sub_1BD5A791C(v59, v19);
    if (!v65)
    {
      v75 = 0;
LABEL_27:
      v114 = v75;
      goto LABEL_28;
    }

    if ((v57[24] & 1) == 0)
    {
      v75 = *(v57 + 2);
      goto LABEL_27;
    }

    if ((v65 - 1) >= *(*&v104 + 16))
    {
      break;
    }

    v68 = v100;
    sub_1BD5A791C(v59 + v96, v100);
    v69 = v101;
    sub_1BE04E714();
    (*v99)(v68, v115);
    v70 = v102;
    sub_1BE04E714();
    sub_1BE04E4A4();
    v114 = v71;
    v72 = *v98;
    v73 = v70;
    v74 = v103;
    (*v98)(v73, v103);
    v72(v69, v74);
    v23 = v97;
LABEL_28:
    v76 = v61;
    v77 = v63;
    if ((v108 & 1) == 0)
    {
      v78 = (v19 + v13[5]);
      v77 = *v78;
      v76 = v78[1];
    }

    if (v77 > v106)
    {
      v79 = v77;
    }

    else
    {
      v79 = v106;
    }

    if (v76 > *&v105)
    {
      v80 = v76;
    }

    else
    {
      v80 = *&v105;
    }

    (*v107)(v23, v19, v115);
    v81 = v19 + v13[5];
    v83 = *v81;
    v82 = *(v81 + 1);
    v84 = *(v19 + v13[8]);
    v85 = *(v19 + v13[9]);
    v86 = v19 + v13[10];
    v88 = *v86;
    v87 = *(v86 + 1);
    v89 = *(v19 + v13[11]);
    sub_1BD5A7980(v19);
    v90 = &v23[v13[5]];
    *v90 = v83;
    *(v90 + 1) = v82;
    v91 = &v23[v13[6]];
    *v91 = v79;
    v91[1] = v80;
    *&v23[v13[7]] = v114;
    *&v23[v13[8]] = v84;
    *&v23[v13[9]] = v85;
    v92 = &v23[v13[10]];
    *v92 = v88;
    *(v92 + 1) = v87;
    *&v23[v13[11]] = v89;
    v117[0] = v66;
    v94 = *(v66 + 16);
    v93 = *(v66 + 24);
    if (v94 >= v93 >> 1)
    {
      sub_1BD53222C(v93 > 1, v94 + 1, 1);
      v66 = v117[0];
    }

    ++v65;
    *(v66 + 16) = v94 + 1;
    v95 = v110;
    sub_1BD5A79DC(v23, v66 + v111 + v94 * v110);
    v59 += v95;
    v57 = v113;
    v61 = v109;
    if (v112 == v65)
    {

      return v66;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1BD5A6BF8(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v116 = a2;
  v123 = sub_1BE04E724();
  v13 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v14);
  v122 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = COERCE_DOUBLE(sub_1BE04EA64());
  v16 = *(*&v121 - 8);
  MEMORY[0x1EEE9AC00](*&v121, v17);
  v120 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AdaptiveHStack.SubviewMeasurement();
  v20 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19, v21);
  v105 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v114 = &v104 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v104 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v104 - v32;
  v127.origin.x = a3;
  v127.origin.y = a4;
  v127.size.width = a5;
  v127.size.height = a6;
  MinX = CGRectGetMinX(v127);
  v110.origin.x = a3;
  v128.origin.x = a3;
  v110.origin.y = a4;
  v128.origin.y = a4;
  v110.size.width = a5;
  v128.size.width = a5;
  v110.size.height = a6;
  v128.size.height = a6;
  MinY = CGRectGetMinY(v128);
  v34 = *(a1 + 16);
  v106 = v20;
  v113 = v13;
  if (v34)
  {
    v126 = MEMORY[0x1E69E7CC0];
    v115 = v16;
    sub_1BD53222C(0, v34, 0);
    v112 = v7;
    v35 = *(v7 + 8);
    v36 = v126;
    v118 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v119 = v35;
    v37 = a1 + v118;
    v117 = *(v20 + 72);
    ++v115;
    v38 = v13 + 2;
    do
    {
      sub_1BD5A791C(v37, v29);
      v39 = &v29[v19[5]];
      v40 = *v39;
      v41 = *(v39 + 1);
      LOBYTE(v124) = 0;
      v125 = 0;
      v42 = v120;
      sub_1BE04E6E4();
      v43 = MEMORY[0x1BFB3BB00](*&v119);
      (*v115)(v42, COERCE_DOUBLE(*&v121));
      (*v38)(v33, v29, v123);
      v44 = &v29[v19[6]];
      v45 = *v44;
      v46 = *(v44 + 1);
      v47 = *&v29[v19[7]];
      v48 = *&v29[v19[8]];
      v49 = *&v29[v19[9]];
      v50 = &v29[v19[10]];
      v51 = *v50;
      v52 = *(v50 + 1);
      sub_1BD5A7980(v29);
      v53 = &v33[v19[5]];
      *v53 = v40;
      *(v53 + 1) = v41;
      v54 = &v33[v19[6]];
      *v54 = v45;
      *(v54 + 1) = v46;
      *&v33[v19[7]] = v47;
      *&v33[v19[8]] = v48;
      *&v33[v19[9]] = v49;
      v55 = &v33[v19[10]];
      *v55 = v51;
      *(v55 + 1) = v52;
      *&v33[v19[11]] = v43;
      v126 = v36;
      v57 = *(v36 + 2);
      v56 = *(v36 + 3);
      if (v57 >= v56 >> 1)
      {
        sub_1BD53222C(v56 > 1, v57 + 1, 1);
        v36 = v126;
      }

      *(v36 + 2) = v57 + 1;
      v58 = v117;
      sub_1BD5A79DC(v33, &v36[v118 + v57 * *&v117]);
      v37 += *&v58;
      --v34;
    }

    while (v34);
    *&v59 = MEMORY[0x1E69E7CC0];
    v7 = v112;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
    *&v59 = MEMORY[0x1E69E7CC0];
  }

  v126 = v59;
  v60 = *(v36 + 2);
  if (v60)
  {
    v124 = v59;
    v107 = *(v7 + 32);
    sub_1BD53222C(0, v60, 0);
    v61 = 0;
    v62 = 0;
    v63 = v124;
    v64 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v115 = (v113 + 2);
    v113 += 4;
    v111 = *(v106 + 72);
    v112 = v64;
    v117 = 0.0;
    v65 = 0.0;
    v66 = 0.0;
    v67 = 0.0;
    while (1)
    {
      v68 = *&v36[v64 + v19[7]];
      v69 = &v36[v64 + v19[6]];
      v71 = *v69;
      v70 = v69[1];
      if (v62)
      {
        v72 = v67 + v68;
        if (CGRectGetWidth(v110) >= v72 + v71)
        {
          v75 = v72;
          goto LABEL_17;
        }

        v73 = __OFADD__(v62++, 1);
        if (v73)
        {
          goto LABEL_57;
        }

        v74 = v107;
      }

      else
      {
        v74 = 0.0;
        v62 = 1;
      }

      v61 = 0;
      v117 = v117 + v65 + v74;
      v65 = 0.0;
      v75 = 0.0;
LABEL_17:
      v120 = v62;
      v73 = __OFSUB__(v62, 1);
      v76 = v62 - 1;
      if (v73)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }

      v77 = *&v36[v19[11] + v64];
      v78 = *(v59 + 2);
      if (v78 == v76)
      {
        v79 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v59 = COERCE_DOUBLE(sub_1BD1D7E30(0, v76 + 1, 1, v59));
        }

        v81 = *(v59 + 2);
        v80 = *(v59 + 3);
        v82 = v59;
        if (v81 >= v80 >> 1)
        {
          *&v82 = COERCE_DOUBLE(sub_1BD1D7E30((v80 > 1), v81 + 1, 1, v59));
        }

        *(v82 + 2) = v81 + 1;
        v59 = v82;
        v83 = v77;
      }

      else
      {
        if (v76 >= v78)
        {
          goto LABEL_55;
        }

        v84 = &v59[8 * v76];
        if (*(v84 + 4) > v77)
        {
          v83 = *(v84 + 4);
        }

        else
        {
          v83 = *&v36[v19[11] + v64];
        }

        v79 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v59 = COERCE_DOUBLE(sub_1BD500008(v59));
        }

        v81 = v76;
        if (v76 >= *(v59 + 2))
        {
          goto LABEL_56;
        }
      }

      v118 = *&v77;
      v119 = v65;
      v121 = v66;
      *&v59[8 * v81 + 32] = v83;
      if (v61 <= 0)
      {
        v68 = 0.0;
      }

      (*v115)(v122, &v36[v64], v123);
      v85 = &v36[v64 + v19[5]];
      v87 = *v85;
      v86 = *(v85 + 1);
      if (v116)
      {
        v88 = MinX + v75;
        v89 = v75;
        v90 = MinY + v117;
      }

      else
      {
        v91 = &v36[v64 + v19[10]];
        v89 = v75;
        v88 = *v91;
        v90 = v91[1];
      }

      v63 = v79;
      v92 = v114;
      (*v113)(v114, v122, v123);
      v93 = (v92 + v19[5]);
      *v93 = v87;
      v93[1] = v86;
      v94 = (v92 + v19[6]);
      *v94 = v71;
      v94[1] = v70;
      *(v92 + v19[7]) = v68;
      *(v92 + v19[8]) = v76;
      *(v92 + v19[9]) = v61;
      v95 = (v92 + v19[10]);
      *v95 = v88;
      v95[1] = v90;
      *(v92 + v19[11]) = v118;
      v67 = v71 + v89;
      v66 = v121;
      if (v121 <= v71 + v89)
      {
        v66 = v71 + v89;
      }

      v65 = v119;
      if (v119 <= v70)
      {
        v65 = v70;
      }

      v73 = __OFADD__(v61++, 1);
      if (v73)
      {
        goto LABEL_54;
      }

      v121 = *&v59;
      v124 = v63;
      v97 = *(v63 + 16);
      v96 = *(v63 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1BD53222C(v96 > 1, v97 + 1, 1);
        v63 = v124;
      }

      *(v63 + 16) = v97 + 1;
      v98 = v111;
      sub_1BD5A79DC(v92, v63 + v112 + v97 * v111);
      v64 += v98;
      --v60;
      v62 = v120;
      *&v59 = v121;
      if (!v60)
      {

        v126 = v59;
        if (v116)
        {
          goto LABEL_48;
        }

        return;
      }
    }
  }

  if (v116)
  {
    v63 = MEMORY[0x1E69E7CC0];
    v121 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v99 = sub_1BD5A5FA8(v63, &v126);

    v100 = *(v99 + 16);
    v101 = v105;
    if (v100)
    {
      v102 = v99 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
      v103 = *(v106 + 72);
      do
      {
        sub_1BD5A791C(v102, v101);
        sub_1BE051E54();
        LOBYTE(v124) = 0;
        v125 = 0;
        sub_1BE04E704();
        sub_1BD5A7980(v101);
        v102 += v103;
        --v100;
      }

      while (v100);
    }
  }
}

uint64_t sub_1BD5A75C8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  result = sub_1BE052B04();
  if (v21 != v20)
  {
    v19 = sub_1BD5A631C(a1, a2 & 1, a3, a4 & 1, a5);
    sub_1BD5A6BF8(v19, 1, a6, a7, a8, a9);
  }

  return result;
}

void (*sub_1BD5A7794(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE04E0F4();
  return sub_1BD122AB4;
}

unint64_t sub_1BD5A7824()
{
  result = qword_1EBD4B9D0;
  if (!qword_1EBD4B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9D0);
  }

  return result;
}

unint64_t sub_1BD5A7878()
{
  result = qword_1EBD4B9D8;
  if (!qword_1EBD4B9D8)
  {
    sub_1BE04E854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9D8);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveHStack.SubviewMeasurement()
{
  result = qword_1EBD4B9E0;
  if (!qword_1EBD4B9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5A791C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveHStack.SubviewMeasurement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5A7980(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveHStack.SubviewMeasurement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD5A79DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveHStack.SubviewMeasurement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD5A7A68()
{
  sub_1BE04E724();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id PKAccountRewardsSummaryCollectionViewCell.configure(rewardsTierSummary:)(void *a1)
{
  [v1 setDirectionalLayoutMargins_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1BE048964();
  v5 = a1;
  sub_1BE052E74();

  return [v1 setNeedsUpdateConfiguration];
}

void sub_1BD5A7BF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong, v1);
    v3 = v2;
    v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B9F0);
    v5[4] = sub_1BD5A7EF4();
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1BD5A7F58();
    v4 = v3;
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FEF0](v5);
  }
}

id sub_1BD5A7D08@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v4 = [a1 contentView];
  [v4 directionalLayoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_1BE051694();
  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;

  return a2;
}

unint64_t sub_1BD5A7EF4()
{
  result = qword_1EBD4B9F8;
  if (!qword_1EBD4B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9F8);
  }

  return result;
}

unint64_t sub_1BD5A7F58()
{
  result = qword_1EBD4BA00;
  if (!qword_1EBD4BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA00);
  }

  return result;
}

uint64_t sub_1BD5A801C()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB2E0);
  __swift_project_value_buffer(v9, qword_1EBDAB2E0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD5A822C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_1BE0528A4();
  v1[10] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD5A83B4, v5, v4);
}

uint64_t sub_1BD5A83B4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v4 = sub_1BE052434();
  MEMORY[0x1BFB37400](v4);
  sub_1BE04A364();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[3];

    sub_1BD226BBC(v5);
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_1BD5A85BC;
    v12 = v0[6];

    return sub_1BD0D7A54(v12);
  }
}

uint64_t sub_1BD5A85BC(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BD5A86E4, v4, v3);
}

uint64_t sub_1BD5A86E4()
{
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    sub_1BE048774();
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BD5A8864@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB2E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD5A890C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD5A822C(a1);
}

id sub_1BD5A89B4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = [v5 primaryString];

  [a1 setPrimaryString_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v3 = [v5 secondaryString];

  [a1 setSecondaryString_];
  [a1 setShowsDisclosureView_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  [a1 setPrimaryImage_];

  return [a1 setStrokeImage_];
}

uint64_t sub_1BD5A8B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A8CC8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5A8BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A8CC8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD5A8C48()
{
  sub_1BD5A8CC8();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD5A8C74()
{
  result = qword_1EBD4BA18;
  if (!qword_1EBD4BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA18);
  }

  return result;
}

unint64_t sub_1BD5A8CC8()
{
  result = qword_1EBD4BA20;
  if (!qword_1EBD4BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA20);
  }

  return result;
}

uint64_t sub_1BD5A8D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5A8DBC, 0, 0);
}

uint64_t sub_1BD5A8DBC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698F6A0]) init];
  v0[23] = v1;
  v2 = sub_1BE052404();
  v0[24] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD5A8F24;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BA28);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD16F63C;
  v0[13] = &block_descriptor_131;
  v0[14] = v3;
  [v1 fetchBrandWithIdentifier:v2 serviceType:5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD5A8F24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1BD5A918C;
  }

  else
  {
    v2 = sub_1BD5A9034;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD5A9034()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = [v2 brandId];
  v5 = sub_1BE052434();
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  v3[2] = sub_1BD5A9214();
  v3[3] = v8;
  v9 = [v2 logoURL];
  if (v9)
  {
    v10 = v9;
    sub_1BE04A9F4();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 152);
  v14 = sub_1BE04AA64();
  (*(*(v14 - 8) + 56))(v12, v11, 1, v14);
  v15 = type metadata accessor for IdentityWebPresentmentBrand();
  sub_1BD226B4C(v12, v13 + *(v15 + 24));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BD5A918C()
{
  v1 = v0[24];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD5A9214()
{
  v1 = [v0 localizedNames];
  v2 = sub_1BE052244();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1BD1D9FA0(*(v2 + 16), 0);
    v5 = sub_1BD5EDB0C(&v30, v4 + 4, v3, v2);
    sub_1BD0D45FC();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v6 = objc_opt_self();
  v7 = sub_1BE052724();

  sub_1BE04B034();
  v8 = sub_1BE052724();

  v9 = [v6 preferredLocalizationsFromArray:v7 forPreferences:v8];

  v10 = sub_1BE052744();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v10 + 40);
    v14 = v11 - 1;
    while (1)
    {
      v16 = *(v13 - 1);
      v15 = *v13;
      sub_1BE048C84();
      v17 = [v29 localizedNames];
      v18 = sub_1BE052244();

      if (*(v18 + 16))
      {
        v19 = sub_1BD148F70(v16, v15);
        v21 = v20;

        if (v21)
        {
          v27 = *(*(v18 + 56) + 16 * v19);
          sub_1BE048C84();

          return v27;
        }
      }

      else
      {
      }

      if (v14 == v12)
      {
        break;
      }

      ++v12;
      v13 += 2;
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        break;
      }
    }
  }

  v22 = [v29 localizedNames];
  v23 = sub_1BE052244();

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_1BD1D9FA0(*(v23 + 16), 0);
    v26 = sub_1BD5ED9B4(&v30, v25 + 4, v24, v23);
    sub_1BE048C84();
    sub_1BD0D45FC();
    if (v26 == v24)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v30 = v25;
  sub_1BD5A9C58(&v30);

  if (*(v30 + 2))
  {
    v27 = *(v30 + 4);
    sub_1BE048C84();
  }

  else
  {

    return 0;
  }

  return v27;
}

uint64_t type metadata accessor for IdentityWebPresentmentBrand()
{
  result = qword_1EBD4BA30;
  if (!qword_1EBD4BA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5A95D0()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12 - v8;
  sub_1BE052524();
  if (*(v0 + 24))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  v10 = type metadata accessor for IdentityWebPresentmentBrand();
  sub_1BD38F438(v0 + *(v10 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1BE053D24();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1BE053D24();
  sub_1BD5AAAFC(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
  sub_1BE052294();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1BD5A97E4()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12 - v8;
  sub_1BE053D04();
  sub_1BE052524();
  if (*(v0 + 24))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  v10 = type metadata accessor for IdentityWebPresentmentBrand();
  sub_1BD38F438(v0 + *(v10 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1BE053D24();
    sub_1BD5AAAFC(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
    sub_1BE052294();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD5A9A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v14 - v11;
  sub_1BE053D04();
  sub_1BE052524();
  if (*(v2 + 24))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BD38F438(v2 + *(a2 + 24), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1BE053D24();
    sub_1BD5AAAFC(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
    sub_1BE052294();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD5A9C58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BD5ED718(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BD5A9CC4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BD5A9CC4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BE053B14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BE0527B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BD5A9E8C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BD5A9DBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BD5A9DBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1BE053B84(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5A9E8C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1BD5ED6C8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1BD5AA468((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1BE053B84();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1BE053B84();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BD1D7844(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1BD1D7844((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1BD5AA468((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BD5ED6C8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1BD5ED63C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1BE053B84(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1BD5AA468(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1BE053B84() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1BD5AA6B8()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD3F7300();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1BD5AA794(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(type metadata accessor for IdentityWebPresentmentBrand() + 24);
  v20 = *(v13 + 48);
  sub_1BD38F438(a1 + v19, v16);
  sub_1BD38F438(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD3CF70);
      return 1;
    }

    goto LABEL_16;
  }

  sub_1BD38F438(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_16:
    sub_1BD0DE53C(v16, &qword_1EBD44E78);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  sub_1BD5AAAFC(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0]);
  v23 = sub_1BE052334();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1BD0DE53C(v16, &unk_1EBD3CF70);
  return (v23 & 1) != 0;
}

uint64_t sub_1BD5AAAFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD5AAB44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD5AAB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BD5AABC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD5AAC74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  sub_1BE051914();
  return v1;
}

uint64_t sub_1BD5AACD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v64 = a3;
  swift_getWitnessTable();
  v5 = sub_1BE04FC14();
  v6 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v8 = *(a2 + 24);
  v68 = v5;
  v69 = v6;
  v70 = WitnessTable;
  v71 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v10);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v52 = &v51 - v14;
  v65 = v5;
  v68 = v5;
  v69 = v6;
  v62 = WitnessTable;
  v63 = v6;
  v70 = WitnessTable;
  v71 = v8;
  v61 = v8;
  v15 = swift_getOpaqueTypeMetadata2();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51 - v21;
  v23 = sub_1BE04F3D4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v15;
  v60 = OpaqueTypeMetadata2;
  v28 = sub_1BE04F9B4();
  v58 = *(v28 - 8);
  v59 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v57 = &v51 - v30;
  v73 = *(v3 + 48);
  v31 = *(v3 + 40);
  v72 = v31;
  if (v73 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v41 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD5AB484(&v72);
    (*(v24 + 8))(v27, v23);
    if (v68 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1BD5AAC74();
    v42 = swift_checkMetadataState();
    v33 = v61;
    v34 = v62;
    v35 = v63;
    sub_1BE051114();

    v68 = v42;
    v69 = v35;
    v70 = v34;
    v71 = v33;
    swift_getOpaqueTypeConformance2();
    v43 = v55;
    sub_1BD147308(v18);
    v44 = *(v51 + 8);
    v44(v18, v43);
    sub_1BD147308(v22);
    v68 = v42;
    v69 = v35;
    v70 = v34;
    v71 = v33;
    swift_getOpaqueTypeConformance2();
    v45 = v57;
    sub_1BD13A700(v18, v43);
    v44(v18, v43);
    v44(v22, v43);
    v40 = v45;
    goto LABEL_6;
  }

  if (v31)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1BD5AAC74();
  v32 = swift_checkMetadataState();
  v33 = v61;
  v34 = v62;
  v35 = v63;
  v36 = v53;
  sub_1BE050F64();

  v68 = v32;
  v69 = v35;
  v70 = v34;
  v71 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v52;
  v38 = v60;
  sub_1BD147308(v36);
  v39 = *(v54 + 8);
  v39(v36, v38);
  sub_1BD147308(v37);
  v68 = v32;
  v69 = v35;
  v70 = v34;
  v71 = v33;
  swift_getOpaqueTypeConformance2();
  v40 = v57;
  sub_1BD13A7F8(v36, v55, v38);
  v39(v36, v38);
  v39(v37, v38);
LABEL_6:
  v46 = v65;
  v68 = v65;
  v69 = v35;
  v70 = v34;
  v71 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v46;
  v69 = v35;
  v70 = v34;
  v71 = v33;
  v48 = swift_getOpaqueTypeConformance2();
  v66 = OpaqueTypeConformance2;
  v67 = v48;
  v49 = v59;
  swift_getWitnessTable();
  sub_1BD147308(v40);
  return (*(v58 + 8))(v40, v49);
}

uint64_t sub_1BD5AB484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD5AB67C()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B944();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  v52.receiver = v0;
  v52.super_class = v12;
  objc_msgSendSuper2(&v52, sel_loadView);
  v13 = [v0 headerView];
  if (!v13)
  {
LABEL_13:
    v41 = [v1 dockView];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 footerView];

      if (v43)
      {
        v44 = [v43 skipCardButton];
        if (v44)
        {
          v45 = v44;
          [v44 addTarget:v1 action:sel_setUpLaterButtonPressed forControlEvents:0x2000];
          (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2);
          v46 = PKPassKitBundle();
          if (v46)
          {
            v47 = v46;
            sub_1BE04B6F4();

            (*(v3 + 8))(v6, v2);
            v48 = sub_1BE052404();

            [v45 setTitle:v48 forState:0];

            return;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = sub_1BE052404();
  v16 = PKUIImageNamed(v15);

  v50 = v16;
  [v14 setImageViewImage:v16 withSize:0 animated:{130.0, 82.0}];
  v17 = v14;
  [v17 sizeToFit];
  v18 = [v1 tableView];
  if (v18)
  {
    v19 = v18;
    [v17 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v53.origin.x = v21;
    v53.origin.y = v23;
    v53.size.width = v25;
    v53.size.height = v27;
    [v19 _tableHeaderHeightDidChangeToHeight_];

    sub_1BE04BB94();
    v28 = sub_1BE04B934();
    (*(v8 + 8))(v11, v7);
    v29 = [v28 secureElementIdentifiers];
    swift_unknownObjectRelease();
    if (!v29 || (v30 = sub_1BE052744(), v29, v31 = sub_1BD3FD334(v30), , !v31))
    {
    }

    v32 = [*&v1[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential] underlyingPaymentPass];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1BE052724();

      v35 = [v33 remoteAssetsDownloadedForSEIDs_];

      if (v35)
      {
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = v33;
        *(v37 + 32) = v17;
        *(v37 + 40) = xmmword_1BE0E47C0;
        aBlock[4] = sub_1BD5ADF10;
        aBlock[5] = v37;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_132;
        v38 = _Block_copy(aBlock);
        v39 = v17;
        v40 = v33;

        [v40 loadImageSetAsync:0 preheat:1 withCompletion:v38];

        _Block_release(v38);
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    v40 = v50;
    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1BD5ABC60(double a1, double a2, uint64_t a3, void *a4, void *a5)
{
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v15);
  v17 = &aBlock[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v18 = sub_1BE052D54();
  v19 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = v19;
  aBlock[4] = sub_1BD5ADF20;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_21_3;
  v22 = _Block_copy(aBlock);
  v23 = a4;
  v24 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v17, v13, v22);
  _Block_release(v22);

  (*(v10 + 8))(v13, v9);
  return (*(v14 + 8))(v17, v26);
}

void sub_1BD5ABF60(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = [objc_allocWithZone(PKPassView) initWithPass:a1 content:5 suppressedContent:4087];
  if (v7)
  {
    v13 = v7;
    v8 = [v7 snapshotOfFrontFace];
    if (v8)
    {
      v9 = v8;
      [a2 setImageViewImage:v8 withSize:0 animated:{a3, a4}];
      [a2 sizeToFit];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = [Strong tableView];

        if (!v12)
        {
          __break(1u);
          return;
        }

        [a2 bounds];
        [v12 _tableHeaderHeightDidChangeToHeight_];
      }
    }

    else
    {
    }
  }
}

void sub_1BD5AC110()
{
  [v0 setHidesBackButton:1 animated:0];
  v1 = [v0 navigationItem];
  v6 = [v1 leftBarButtonItem];

  v2 = v6;
  if (!v6)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v0 action:sel_cancel];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = v3;
    sub_1BD0E5E8C(0, &qword_1EBD41C40);
    v5 = v3;
    v7 = sub_1BE052724();

    [v0 _setLeftBarButtonItems_animated_];

    v2 = v7;
  }
}

id sub_1BD5AC264()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    goto LABEL_6;
  }

  result = [v0 navigationController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result viewControllers];

  sub_1BD0E5E8C(0, &qword_1EBD43450);
  v5 = sub_1BE052744();

  v6 = v5 >> 62 ? sub_1BE053704() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6 >= 2)
  {
LABEL_6:
    [v0 setHidesBackButton:0 animated:0];

    return [v0 _setLeftBarButtonItems_animated_];
  }

  return result;
}

void sub_1BD5AC3B8(char *a1, uint64_t a2, void (*a3)(void))
{
  v3 = *&a1[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator];
  if (v3)
  {
    v6 = a1;
    v5 = v3;
    a3();
  }
}

id sub_1BD5AC460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD5AC694()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v29 - v13;
  v15 = *(v2 + 104);
  v15(&v29 - v13, *MEMORY[0x1E69B8038], v1, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v29 = v19;
    v30 = v18;

    v20 = *(v2 + 8);
    v20(v14, v1);
    v21 = [*(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential) longDescription];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BE052434();
      v25 = v24;

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        (v15)(v9, *MEMORY[0x1E69B80D8], v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1BE0B69E0;
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = sub_1BD110550();
        *(v27 + 32) = v23;
        *(v27 + 40) = v25;
        sub_1BE04B714();

        v5 = v9;
LABEL_10:
        v20(v5, v1);
        return v30;
      }
    }

    (v15)(v5, *MEMORY[0x1E69B80D8], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      sub_1BE04B6F4();

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD5ACAD0(unsigned __int8 *a1, int a2)
{
  v5 = sub_1BE04BAC4();
  v136 = *(v5 - 8);
  v137 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v135 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v134 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v124 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v133 = v124 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v124 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v132 = (v124 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v131 = v124 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v129 = v124 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v130 = v124 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v128 = v124 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v127 = v124 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = v124 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = v124 - v47;
  v49 = *a1;
  v141 = v2;
  sub_1BD5AC694();
  v138 = v52;
  v139 = a2;
  v140 = v51;
  if ((a2 & 1) == 0)
  {
    v72 = v49 == 12;
    if (v49 == 12)
    {
      v73 = v8;
      v74 = *MEMORY[0x1E69B80D8];
      v75 = *(v9 + 104);
      v75(v15, v74, v73);
      v76 = PKPassKitBundle();
      if (!v76)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v77 = v76;
      v132 = sub_1BE04B6F4();
      v133 = v78;

      v79 = *(v9 + 8);
      v79(v15, v73);
      v80 = sub_1BE052404();
      v81 = v135;
      sub_1BE04BC34();
      LOBYTE(v77) = sub_1BE04BAB4();
      (*(v136 + 8))(v81, v137);
      v82 = PKDeviceSpecificLocalizedStringKeyForKey(v80, v77 & 1);

      if (!v82)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      sub_1BE052434();

      v83 = v134;
      v75(v134, v74, v73);
      v84 = PKPassKitBundle();
      if (!v84)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v85 = v84;
      sub_1BE04B6F4();

      v79(v83, v73);
      v61 = v141;
      [v141 showCheckmarkAnimated_];
      v86 = sub_1BE052404();

      v87 = sub_1BE052404();

      [v61 hideActivitySpinnerWithTitle:v86 subtitle:v87 animated:0];

      [v61 endUserInteraction];
      v88 = v139;
    }

    else
    {
      v89 = v140;
      sub_1BE048C84();
      sub_1BE048C84();
      v90 = sub_1BE052404();

      if (v89)
      {
        v91 = sub_1BE052404();
      }

      else
      {
        v91 = 0;
      }

      v61 = v141;
      v88 = v139;
      [v141 hideActivitySpinnerWithTitle:v90 subtitle:v91 animated:1];
    }

    sub_1BD5AC264();
    goto LABEL_55;
  }

  v53 = v51;
  v134 = v50;
  v54 = *MEMORY[0x1E69B80D8];
  v125 = *(v9 + 104);
  v125(v48, v54, v8);
  sub_1BE048C84();
  v55 = PKPassKitBundle();
  if (!v55)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v56 = v55;
  v126 = sub_1BE04B6F4();
  v58 = v57;

  v59 = *(v9 + 8);
  v124[1] = v9 + 8;
  v59(v48, v8);
  v60 = 0;
  if (v49 > 9)
  {
    if (v49 == 10)
    {
      v124[0] = v58;

      v125(v22, *MEMORY[0x1E69B80D0], v8);
      v94 = PKPassKitCoreBundle();
      if (!v94)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v65 = v94;
      v134 = sub_1BE04B6F4();
      v53 = v95;
      v60 = 0;
      v44 = v22;
      v61 = v141;
      goto LABEL_49;
    }

    if (v49 == 11)
    {
      v132 = v59;
      v98 = v8;

      v99 = sub_1BE052404();
      v100 = v135;
      sub_1BE04BC34();
      v101 = sub_1BE04BAB4();
      (*(v136 + 8))(v100, v137);
      v102 = PKDeviceSpecificLocalizedStringKeyForKey(v99, v101 & 1);

      v124[0] = v58;
      if (v102)
      {
        sub_1BE052434();
      }

      v44 = v133;
      v125(v133, *MEMORY[0x1E69B80D0], v98);
      v110 = PKPassKitCoreBundle();
      v61 = v141;
      if (!v110)
      {
        goto LABEL_69;
      }

      v65 = v110;
      v134 = sub_1BE04B6F4();
      v53 = v111;

      v60 = 0;
      v8 = v98;
      v59 = v132;
      goto LABEL_49;
    }

    v61 = v141;
    if (v49 != 12)
    {
LABEL_25:
      v124[0] = v58;

      v44 = v132;
      v125(v132, *MEMORY[0x1E69B80D0], v8);
      v92 = PKPassKitCoreBundle();
      if (!v92)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v65 = v92;
      v134 = sub_1BE04B6F4();
      v53 = v93;
      v60 = 0;
      goto LABEL_49;
    }

LABEL_50:
    v115 = sub_1BE052404();

    if (v53)
    {
      v116 = sub_1BE052404();
    }

    else
    {
      v116 = 0;
    }

    v88 = v139;
    [v61 showActivitySpinnerWithTitle:v115 subtitle:{v116, v124[0]}];

    if ((v60 & 1) == 0)
    {
      sub_1BD5AC264();
      v117 = 0;
      LOBYTE(v72) = 0;
      goto LABEL_57;
    }

    sub_1BD5AC110();
    v72 = 0;
LABEL_55:
    v117 = !v72;
LABEL_57:
    [v61 _setNavigationBarEnabled_animated_];
    [v61 _setPrimaryButtonEnabled_];
    v118 = [v61 dockView];
    if (v118)
    {
      v119 = v118;

      [v119 setButtonsEnabled_];

      return;
    }

    __break(1u);
    goto LABEL_62;
  }

  v61 = v141;
  if (v49 == 4)
  {
    goto LABEL_50;
  }

  if (v49 == 6)
  {
    v124[0] = v58;

    v125(v44, *MEMORY[0x1E69B8038], v8);
    v96 = PKPassKitBundle();
    if (!v96)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v65 = v96;
    v134 = sub_1BE04B6F4();
    v53 = v97;
    v60 = 1;
    goto LABEL_49;
  }

  if (v49 != 7)
  {
    goto LABEL_25;
  }

  v62 = v59;
  v124[0] = v58;

  v63 = [*&v61[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential] localAppletSubcredentialPassCredential];
  if (!v63 || (v64 = v63, v65 = [v63 credentialToShare], v64, !v65))
  {
    v103 = sub_1BE04BBC4();
    if (v103 && (v104 = v8, v105 = v103, v106 = [v103 hasFetchedMessageSession], v105, v8 = v104, v106))
    {
      v44 = v129;
      v125(v129, *MEMORY[0x1E69B8038], v104);
      v107 = PKPassKitBundle();
      if (!v107)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v65 = v107;
    }

    else
    {
      v44 = v131;
      v125(v131, *MEMORY[0x1E69B8038], v8);
      v108 = PKPassKitBundle();
      if (!v108)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v65 = v108;
    }

    v134 = sub_1BE04B6F4();
    v53 = v109;
    goto LABEL_47;
  }

  if (!PKAppletSubcredentialSupportsSharingInAChain())
  {
    v44 = v130;
    v125(v130, *MEMORY[0x1E69B8038], v8);
    v112 = PKPassKitBundle();
    if (!v112)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v113 = v112;
    v134 = sub_1BE04B6F4();
    v53 = v114;

LABEL_47:
    v60 = 1;
    goto LABEL_48;
  }

  v66 = sub_1BE04BBC4();
  if (!v66 || (v137 = v8, v67 = v66, v68 = [v66 hasFetchedMessageSession], v67, v8 = v137, !v68))
  {
    v44 = v128;
    v120 = v8;
    v125(v128, *MEMORY[0x1E69B8038], v8);
    v121 = PKPassKitBundle();
    if (!v121)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v122 = v121;
    v134 = sub_1BE04B6F4();
    v53 = v123;

    v60 = 1;
    v8 = v120;
    goto LABEL_48;
  }

  v44 = v127;
  v125(v127, *MEMORY[0x1E69B8038], v137);
  v69 = PKPassKitBundle();
  if (v69)
  {
    v70 = v69;
    v134 = sub_1BE04B6F4();
    v53 = v71;

    v60 = 1;
    v65 = v70;
    v8 = v137;
LABEL_48:
    v59 = v62;
LABEL_49:

    v59(v44, v8);
    goto LABEL_50;
  }

LABEL_74:
  __break(1u);
}

void sub_1BD5AD874(id a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v24 - v11;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v27 = a1;
  v13 = *MEMORY[0x1E69B80D8];
  v26 = *(v4 + 104);
  v26(v12, v13, v3);
  v14 = PKPassKitBundle();
  if (v14)
  {
    v15 = v14;
    sub_1BE04B6F4();

    v25 = *(v4 + 8);
    v25(v12, v3);
    v16 = sub_1BE052404();

    a1 = v27;
    [v27 setLocalizedTitle_];

    v26(v7, v13, v3);
    v17 = PKPassKitBundle();
    if (v17)
    {
      v18 = v17;
      sub_1BE04B6F4();

      v25(v7, v3);
      v19 = sub_1BE052404();

      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v20 = swift_allocObject();
      *(v20 + 16) = v1;
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = v1;
      v23 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, PKEdgeInsetsMake, 0, sub_1BD5ADCD4, v20, sub_1BD5ADCDC, v21);

      [v22 presentViewController:v23 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD5ADBE0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD3188FC();
  }
}

void sub_1BD5ADC3C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD317B18(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD5ADCE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04B944();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_provisioningContext] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential] = a2;
  sub_1BE048964();
  v16 = a2;
  sub_1BE04BB94();
  v17 = sub_1BE04B8E4();
  (*(v12 + 8))(v15, v11);
  sub_1BE04BC34();
  v18 = sub_1BE04B9A4();
  (*(v7 + 8))(v10, v6);
  v19 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  v20 = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  v22.receiver = v3;
  v22.super_class = v20;
  v21 = objc_msgSendSuper2(&v22, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v17, v18, 0, v19);

  if (!v21)
  {
    __break(1u);
  }
}

uint64_t sub_1BD5ADFFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B69E0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_context);
  v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_provisionedPassesGroups);
  v4 = type metadata accessor for ProvisioningVerificationNoticeFlowItem();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_identifier];
  *v6 = 0xD00000000000001ALL;
  *(v6 + 1) = 0x80000001BE12FFD0;
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_context] = v2;
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_provisionedPassesGroups] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  sub_1BE048C84();
  sub_1BE048964();
  *(v1 + 32) = objc_msgSendSuper2(&v8, sel_init);
  *(v1 + 40) = &off_1F3BB6830;
  return v1;
}

uint64_t sub_1BD5AE13C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5AE178(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD5AE1C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BD5AE20C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD5AE25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0C63C0;
  v8 = sub_1BE052404();
  v9 = PKLocalizedBankConnectString(v8);

  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1BD3FB6B0();
  sub_1BE052434();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  sub_1BE048964();
  sub_1BE048964();
  *(v7 + 32) = sub_1BE0530B4();
  v11 = sub_1BE052404();
  v12 = PKLocalizedBankConnectString(v11);

  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE052434();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  sub_1BE048964();
  sub_1BE048964();
  *(v7 + 40) = sub_1BE0530B4();
  v14 = sub_1BE052404();
  v15 = PKLocalizedBankConnectString(v14);

  if (v15)
  {
    sub_1BE052434();

    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    *(v16 + 32) = a4;
    sub_1BE048964();
    sub_1BE048964();
    v21 = v16;
    *(v7 + 48) = sub_1BE0530B4();
    v17 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
    v18 = sub_1BE052724();

    v19 = [v17 initWithFrame:v18 actions:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_1BD5AE7F0, v21}];

    [v19 _setUseGlass_];
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB08);
    MEMORY[0x1BFB3E970](&v22, v20);
    [v19 setSelectedSegmentIndex_];
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BD5AE5EC(void *a1)
{
  v3 = v1[1];
  v4 = *(v1 + 16);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB08);
  MEMORY[0x1BFB3E970](&v7, v5);
  return [a1 setSelectedSegmentIndex_];
}

uint64_t sub_1BD5AE658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5AE854();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5AE6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5AE854();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD5AE720()
{
  sub_1BD5AE854();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD5AE74C()
{
  result = qword_1EBD4BB00;
  if (!qword_1EBD4BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BB00);
  }

  return result;
}

uint64_t objectdestroyTm_63()
{

  return swift_deallocObject();
}

unint64_t sub_1BD5AE854()
{
  result = qword_1EBD4BB10;
  if (!qword_1EBD4BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BB10);
  }

  return result;
}

void sub_1BD5AE8E4(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 identifier];
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0xE900000000000073;
    v4 = 0x657469726F766166;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD5AE95C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v49 = sub_1BE04FE84();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB18);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v6);
  v8 = &v44 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB20);
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v9);
  v57 = &v44 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB28);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v11);
  v51 = &v44 - v12;
  v58 = v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB30);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB38);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB40);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB50);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB58);
  v17 = sub_1BD5B2F8C();
  v18 = sub_1BD0DDEBC();
  v19 = MEMORY[0x1E69E6158];
  *&v59 = v16;
  *(&v59 + 1) = MEMORY[0x1E69E6158];
  v60 = v17;
  v61 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v59 = v15;
  *(&v59 + 1) = v19;
  v60 = OpaqueTypeConformance2;
  v61 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  *&v59 = v14;
  *(&v59 + 1) = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB78);
  v24 = sub_1BD0DE4F4(&qword_1EBD4BB80, &qword_1EBD4BB78);
  *&v59 = v23;
  *(&v59 + 1) = v24;
  v25 = swift_getOpaqueTypeConformance2();
  *&v59 = v45;
  *(&v59 + 1) = v13;
  v60 = v22;
  v61 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E934();
  sub_1BE04FE74();
  v26 = sub_1BD0DE4F4(&qword_1EBD4BB88, &qword_1EBD4BB18);
  v27 = sub_1BD5B37E0(&qword_1EBD39E50, MEMORY[0x1E697C938]);
  v28 = v47;
  v29 = v49;
  sub_1BE0507D4();
  (v50)[1](v5, v29);
  (*(v48 + 8))(v8, v28);
  v64 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90);
  sub_1BE0516C4();
  v50 = v60;
  v64 = v59;
  v65 = v60;
  v30 = swift_allocObject();
  v31 = v2[7];
  v30[7] = v2[6];
  v30[8] = v31;
  v30[9] = v2[8];
  v32 = v2[3];
  v30[3] = v2[2];
  v30[4] = v32;
  v33 = v2[5];
  v30[5] = v2[4];
  v30[6] = v33;
  v34 = v2[1];
  v30[1] = *v2;
  v30[2] = v34;
  sub_1BD5B30DC(v2, &v59);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB98);
  *&v59 = v28;
  *(&v59 + 1) = v29;
  v60 = v26;
  v61 = v27;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_1BD5B3114();
  v43 = sub_1BD5B3168();
  v38 = v51;
  v39 = v52;
  v40 = v57;
  sub_1BE051124();

  sub_1BD28B4C8(v50);
  (*(v53 + 8))(v40, v39);
  sub_1BE052434();
  *&v59 = v39;
  *(&v59 + 1) = &type metadata for ShippingAddressPicker.Sheet;
  v60 = v35;
  v61 = v36;
  v62 = v37;
  v63 = v43;
  swift_getOpaqueTypeConformance2();
  v41 = v54;
  sub_1BE050DE4();

  return (*(v55 + 8))(v38, v41);
}

id sub_1BD5AF0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v97 = sub_1BE04F434();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v3);
  v95 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v106 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BE04FA74();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v8);
  v81 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1BE04F3D4();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v10);
  v78 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BE04FA94();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v12);
  v111 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04E9A4();
  v15 = *(v14 - 8);
  v104 = v14;
  v105 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB68);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v19);
  v21 = &v78 - v20;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB58);
  MEMORY[0x1EEE9AC00](v110, v22);
  v24 = (&v78 - v23);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB50);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v25);
  v84 = &v78 - v26;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB48);
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v27);
  v86 = &v78 - v28;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB38);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v29);
  v92 = &v78 - v30;
  v31 = *(a1 + 112);
  v101 = *(a1 + 104);
  v100 = v31;
  v99 = *(a1 + 120);
  type metadata accessor for AddressSearchingModel();
  sub_1BD5B37E0(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel);
  v32 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v34 = v116;
  v33 = v117;

  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  v112 = v35 == 0;
  v109 = a1;
  v113 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBE8);
  sub_1BD0DE4F4(&qword_1EBD4BBF0, &qword_1EBD4BBE8);
  sub_1BE0504E4();
  sub_1BE04E994();
  sub_1BD0DE4F4(&qword_1EBD4BB70, &qword_1EBD4BB68);
  v36 = v102;
  v37 = v104;
  sub_1BE051144();
  v105[1](v18, v37);
  (*(v103 + 8))(v21, v36);
  v38 = sub_1BE051274();
  v39 = sub_1BE0501D4();
  v40 = sub_1BE051CD4();
  v41 = *(v110 + 36);
  v105 = v24;
  v42 = v24 + v41;
  *v42 = v38;
  v42[8] = v39;
  *(v42 + 2) = v40;
  *(v42 + 3) = v43;
  v44 = sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  if (sub_1BE051C54())
  {
    v121 = *(v109 + 96);
    v45 = *(v109 + 88);
    v120 = v45;
    if (v121 == 1)
    {
      if ((v45 & 1) == 0)
      {
LABEL_6:
        sub_1BE04FA84();
        goto LABEL_9;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v46 = sub_1BE050174();
      sub_1BE04CF84();

      v47 = v78;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v120, &qword_1EBD5C6E0);
      (*(v79 + 8))(v47, v80);
      if ((v114 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v48 = v81;
  sub_1BE04FA64();
  sub_1BE04FA54();
  (*(v82 + 8))(v48, v83);
LABEL_9:
  v50 = v106;
  v49 = v107;
  v51 = v108;
  (*(v107 + 104))(v106, *MEMORY[0x1E69B8068], v108);
  result = PKPassKitBundle();
  if (result)
  {
    v53 = result;
    v54 = sub_1BE04B6F4();
    v56 = v55;

    (*(v49 + 8))(v50, v51);
    v114 = v54;
    v115 = v56;
    v57 = sub_1BD5B2F8C();
    v77 = sub_1BD0DDEBC();
    v58 = v84;
    v60 = v110;
    v59 = v111;
    v61 = v105;
    sub_1BE050874();

    (*(v89 + 8))(v59, v90);
    sub_1BD0DE53C(v61, &qword_1EBD4BB58);
    v114 = sub_1BD5B15F0();
    v115 = v62;
    v116 = v60;
    v117 = MEMORY[0x1E69E6158];
    v118 = v57;
    v119 = v77;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v86;
    v65 = v87;
    sub_1BE050B74();

    (*(v85 + 8))(v58, v65);
    v66 = v96;
    v67 = v95;
    v68 = v97;
    (*(v96 + 104))(v95, *MEMORY[0x1E697C438], v97);
    v116 = v65;
    v117 = MEMORY[0x1E69E6158];
    v118 = OpaqueTypeConformance2;
    v119 = v77;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = v92;
    v71 = v91;
    sub_1BE050E84();
    (*(v66 + 8))(v67, v68);
    v72 = (*(v88 + 8))(v64, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB40);
    v116 = v71;
    v117 = v69;
    swift_getOpaqueTypeConformance2();
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB78);
    v75 = sub_1BD0DE4F4(&qword_1EBD4BB80, &qword_1EBD4BB78);
    v116 = v74;
    v117 = v75;
    swift_getOpaqueTypeConformance2();
    v76 = v94;
    sub_1BE051024();
    return (*(v93 + 8))(v70, v76);
  }

  else
  {
    __break(1u);
  }

  return result;
}