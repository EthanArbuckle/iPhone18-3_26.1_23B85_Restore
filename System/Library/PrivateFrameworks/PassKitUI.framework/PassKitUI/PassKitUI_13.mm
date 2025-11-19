uint64_t sub_1BD1A91F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;
    sub_1BE048C84();
    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1BD1B6140(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1BD1B6140(v29, v30);
    result = sub_1BE0537A4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1BD1B6140(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BD1A9650(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(id))
{
  v11 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(a2);
  v12 = [objc_opt_self() sharedService];
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v14 = [objc_allocWithZone(PKPaymentTransactionDetailsFactory) initWithContactResolver:0 peerPaymentWebService:v12 paymentServiceDataProvider:v13 detailViewStyle:v11 context:0];

  v15 = sub_1BE04A404();
  v25 = [a3 cashbackGroupForDateComponents:v15 cashbackTransactionSourceCollection:0];

  v16 = [a5 transactionSourceIdentifiers];
  v17 = sub_1BE052A34();

  sub_1BD960F28(v17);
  v19 = v18;

  if (v19)
  {
    if (v25)
    {
      v20 = v25;
      v21 = sub_1BE052404();

      v22 = [v20 transactionForCashbackGroupWithSourceIdentifier_];

      if (v22)
      {
        v23 = [v14 viewControllerForTransaction:v22 sourceCollection:a5 familyCollection:0 account:a6 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 group:v20 navigationController:0];
        v24 = v23;
        a7(v23);

        v25 = v20;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  a7(0);
LABEL_7:
}

char *SavingsInterstitialViewController.__allocating_init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___PKSavingsInterstitialViewController_configuration] = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDE8));
  v5 = a1;
  *&v4[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC] = sub_1BE04F894();
  v10.receiver = v4;
  v10.super_class = v2;
  v6 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  v7 = *&v6[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC];
  v8 = v6;
  [v8 addChildViewController_];

  return v8;
}

char *SavingsInterstitialViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR___PKSavingsInterstitialViewController_configuration] = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDE8));
  v4 = a1;
  *&v2[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC] = sub_1BE04F894();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SavingsInterstitialViewController();
  v5 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  v6 = *&v5[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC];
  v7 = v5;
  [v7 addChildViewController_];

  return v7;
}

id sub_1BD1A9ABC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SavingsInterstitialViewController();
  objc_msgSendSuper2(&v5, sel_loadView);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC;
    result = [*&v0[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC] view];
    if (result)
    {
      v4 = result;
      [v2 addSubview_];

      return [*&v0[v3] didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD1A9BE4(void *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v17.receiver = a1;
  v17.super_class = a3();
  v5 = v17.receiver;
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [*&v5[*a4] view];
    [v16 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD1A9CD4(void (*a1)(void), uint64_t a2)
{
  v74 = a1;
  v76 = a2;
  v84 = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1BE04BD74();
  v7 = *(v77 - 8);
  v9 = MEMORY[0x1EEE9AC00](v77, v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v69 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v78 = 0;
  v75 = v19;
  v20 = [v19 canEvaluatePolicy:2 error:&v78];
  v21 = v78;
  if (!v20)
  {
    v52 = v78;
    sub_1BE04D194();
    v53 = sub_1BE04D204();
    v54 = sub_1BE052C54();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v2;
      v57 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v52;
      *v57 = v21;
      v58 = v52;
      _os_log_impl(&dword_1BD026000, v53, v54, "Cannot evaluate local authentication policy for Savings interstitial due to error: %@", v55, 0xCu);
      sub_1BD0DE53C(v57, &unk_1EBD3E590);
      v59 = v57;
      v2 = v56;
      MEMORY[0x1BFB45F20](v59, -1, -1);
      MEMORY[0x1BFB45F20](v55, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    if (v52)
    {
      v60 = v52;
      v61 = sub_1BE04A844();
    }

    else
    {
      v61 = 0;
    }

    v62 = v76;
    v63 = v74;
    v45 = [objc_opt_self() displayableErrorForError:v61 featureIdentifier:5 genericErrorTitle:0 genericErrorMessage:0];

    if (v45)
    {
      v64 = v45;
      v65 = sub_1BE04A844();
    }

    else
    {
      v65 = 0;
    }

    v66 = swift_allocObject();
    *(v66 + 16) = v63;
    *(v66 + 24) = v62;
    v82 = sub_1BD1B5F6C;
    v83 = v66;
    v78 = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1BD126964;
    v81 = &block_descriptor_16;
    v67 = _Block_copy(&v78);
    sub_1BE048964();

    v68 = PKAlertForDisplayableErrorWithCancelHandler(v65, 0, v67);
    _Block_release(v67);

    if (v68)
    {
      [v73 presentViewController:v68 animated:1 completion:0];
    }

    else
    {
      v63(0);
    }

    v51 = v75;
    goto LABEL_19;
  }

  v72 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v78 = 1021;
  v70 = v21;
  sub_1BE0537C4();
  v23 = *(v7 + 104);
  v23(v18, *MEMORY[0x1E69B80D0], v77);
  v24 = PKPassKitBundle();
  if (!v24)
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = sub_1BE04B6F4();
  v28 = v27;

  v29 = v77;
  v71 = *(v7 + 8);
  v71(v18, v77);
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 72) = v26;
  *(inited + 80) = v28;
  v78 = 1037;
  sub_1BE0537C4();
  v30 = *MEMORY[0x1E69B80E0];
  v69 = v23;
  v23(v15, v30, v29);
  v31 = PKPassKitBundle();
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = sub_1BE04B6F4();
  v35 = v34;

  v36 = v71;
  v71(v15, v77);
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = v33;
  *(inited + 152) = v35;
  v78 = 1031;
  sub_1BE0537C4();
  v37 = sub_1BE052404();
  v38 = PKDeviceSpecificLocalizedStringKeyForKey(v37, 0);

  if (!v38)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1BE052434();

  v39 = v72;
  v69(v72, v30, v77);
  v40 = PKPassKitBundle();
  if (v40)
  {
    v41 = v40;
    v42 = sub_1BE04B6F4();
    v44 = v43;

    v36(v39, v77);
    *(inited + 240) = MEMORY[0x1E69E6158];
    *(inited + 216) = v42;
    *(inited + 224) = v44;
    sub_1BD1AB16C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0);
    swift_arrayDestroy();
    v45 = sub_1BE052224();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v74;
    v47[2] = v46;
    v47[3] = v48;
    v47[4] = v76;
    v82 = sub_1BD1B5F98;
    v83 = v47;
    v78 = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1BD1AA864;
    v81 = &block_descriptor_24;
    v49 = _Block_copy(&v78);
    sub_1BE048964();

    v50 = v75;
    [v75 evaluatePolicy:2 options:v45 reply:v49];

    _Block_release(v49);
    v51 = v70;
LABEL_19:

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1BD1AA534(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1BE04D214();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      v18 = [*(Strong + OBJC_IVAR___PKSavingsInterstitialViewController_configuration) account];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 accountIdentifier];

        if (v20)
        {
          sub_1BE04AEF4();
          v21 = sub_1BE04AE64();
          (*(v12 + 8))(v15, v11);
          PKSavingsSetLastInterstitialAuthDate();
        }
      }

      v22 = 1;
    }

    else
    {
      sub_1BE04D194();
      v23 = a2;
      v24 = sub_1BE04D204();
      v25 = sub_1BE052C54();

      if (os_log_type_enabled(v24, v25))
      {
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
        _os_log_impl(&dword_1BD026000, v24, v25, "Failed when attempting to evaluate local authentication policy for Savings interstitial due to error: %@", v26, 0xCu);
        sub_1BD0DE53C(v27, &unk_1EBD3E590);
        MEMORY[0x1BFB45F20](v27, -1, -1);
        MEMORY[0x1BFB45F20](v26, -1, -1);
      }

      (*(v31 + 8))(v10, v7);
      v22 = 0;
    }

    (a4)(v22);
  }

  else
  {
    a4();
  }
}

uint64_t sub_1BD1AA864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1BE052244();
  }

  else
  {
    v5 = 0;
  }

  sub_1BE048964();
  v6 = a3;
  v4(v5, a3);
}

id _s9PassKitUI26AccountDebugViewControllerC7nibName6bundleACSSSg_So8NSBundleCSgtcfC_0(uint64_t a1, uint64_t a2, void *a3)
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

id sub_1BD1AAA6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD1AAAF0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD1AAB70(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1AAC0C(uint64_t a1)
{
  v2 = sub_1BE04EB24();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE04F094();
}

unint64_t sub_1BD1AACF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v13, &qword_1EBD52080);
      v5 = v13;
      v6 = v14;
      result = sub_1BD148F70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BD1B6140(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AAE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF78);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v11, &qword_1EBD3BF80);
      v5 = v11;
      result = sub_1BD14BFD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AAF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C018);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_1BE048C84();
      result = sub_1BD14BFD0(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE18);
    v3 = sub_1BE053A04();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1BD0DE19C(i, &v11, &qword_1EBD3BE20);
      v5 = v11;
      result = sub_1BD149084(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB16C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, v13, &qword_1EBD403B0);
      result = sub_1BD149040(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1BD1B6140(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF38);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD38B98);
      v12 = *v6;
      result = sub_1BD149228(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE30);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BE28);
      result = sub_1BD1490C0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1BE04C974();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1BD1AB678(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE88);
  v3 = sub_1BE053A04();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1BD149084(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1BE048C84();
    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;
    sub_1BE048C84();
    v9 = sub_1BD149084(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1AB78C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA8);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EE0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BFD8);
      result = sub_1BD148E9C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1BE049B04();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1BE0493F4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC8);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v11, &qword_1EBD3BFD0);
      v5 = v11;
      result = sub_1BD14BFD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABBE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C010);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *i;
      sub_1BE048C84();
      v10 = v7;
      result = sub_1BD148F70(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 16 * result);
      *v14 = v7;
      v14[1] = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE58);
  v3 = sub_1BE053A04();
  sub_1BE048964();
  v4 = *(a1 + 112);
  v34 = *(a1 + 96);
  v35 = v4;
  v5 = *(a1 + 144);
  v36 = *(a1 + 128);
  v37 = v5;
  v6 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v6;
  v7 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v7;
  v9 = *(&v30 + 1);
  v8 = v30;
  sub_1BD0DE19C(&v30, v29, &qword_1EBD3BE60);
  result = sub_1BD148F70(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 160);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = (v3[7] + 112 * result);
    v15 = v31;
    v16 = v33;
    v14[1] = v32;
    v14[2] = v16;
    *v14 = v15;
    v17 = v34;
    v18 = v35;
    v19 = v37;
    v14[5] = v36;
    v14[6] = v19;
    v14[3] = v17;
    v14[4] = v18;
    v20 = v3[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      break;
    }

    v3[2] = v22;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v23 = v12 + 8;
    v24 = v12[5];
    v34 = v12[4];
    v35 = v24;
    v25 = v12[7];
    v36 = v12[6];
    v37 = v25;
    v26 = v12[1];
    v30 = *v12;
    v31 = v26;
    v27 = v12[3];
    v32 = v12[2];
    v33 = v27;
    v9 = *(&v30 + 1);
    v8 = v30;
    sub_1BD0DE19C(&v30, v29, &qword_1EBD3BE60);
    result = sub_1BD148F70(v8, v9);
    v12 = v23;
    if (v28)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1ABED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C008);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF58);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BD14BFD0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF48);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v11, &qword_1EBD3BF50);
      v5 = v11;
      result = sub_1BD14BFD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFF8);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BD1493D0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF30);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BF28);
      v12 = *v6;
      result = sub_1BD149484(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1BD1AC4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB8);
  v3 = sub_1BE053A04();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1BD1494B0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1BE048C84();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;
    sub_1BE048C84();
    v8 = sub_1BD1494B0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1AC5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3C040);
  v3 = sub_1BE053A04();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1BD1495F0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1BD1495F0(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1AC6F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFF0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BFE8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1BD148F70(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1BE04AA64();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC8E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DF0);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      sub_1BE048964();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC9E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DE0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BE68);
      result = sub_1BD14951C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1BE04AFE4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
      result = sub_1BD1B61AC(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1BD1ACC28(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = sub_1BE053A04();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_1BD149084(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1BE048964();
    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 7;
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;
    sub_1BE048964();
    v9 = sub_1BD149084(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1ACD28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v11, &qword_1EBD3BF68);
      v5 = v11;
      result = sub_1BD14BFD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ACE78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC0);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      swift_unknownObjectRetain();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ACF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF20);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BF18);
      v12 = *v6;
      result = sub_1BD14986C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEA0);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EA0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BFB0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1BD148F70(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1BE049184();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD468(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1BE048C84();
      v9 = v8;
      result = sub_1BD148F70(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BF98);
      result = sub_1BD14951C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1BE04AFE4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1BE0495A4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF90);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BF88);
      result = sub_1BD14951C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1BE04AFE4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD96C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE40);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BE38);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1BD148F70(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1BE04AF64();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ADB58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE08);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BE00);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1BD148F70(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for RedemptionPresentation(0);
      result = sub_1BD1B61AC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for RedemptionPresentation);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ADD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF10);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BF08);
      v12 = *v6;
      result = sub_1BD149920(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ADF3C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E90);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = *(i + 40);
      v13 = v11;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = v3[7] + 48 * result;
      *v17 = v8;
      *(v17 + 8) = v7;
      *(v17 + 16) = v9;
      *(v17 + 24) = v10;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF70);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DD0);
    v3 = sub_1BE053A04();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1BD149084(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEF0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BEE8);
      v12 = *v6;
      result = sub_1BD149A00(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE54C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E00);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BE80);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1BD148F70(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
      result = sub_1BD1B61AC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BED8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEE0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BED8);
      v12 = *v6;
      result = sub_1BD149A9C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF40);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AEA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE70);
    v3 = sub_1BE053A04();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1BD0DE19C(i, &v11, &qword_1EBD3BE78);
      v5 = v11;
      result = sub_1BD149084(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6150(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AEB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BED0);
    v8 = sub_1BE053A04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v10, v6, &qword_1EBD3BEC8);
      v12 = *v6;
      result = sub_1BD149AE0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1BE048C04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AED20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEC0);
    v8 = sub_1BE053A04();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v6, &qword_1EBD3BEB8);
      result = sub_1BD14BC7C();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_1BE048C04();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1BD1AEEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

  v8 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(a3);
  v9 = [objc_opt_self() sharedService];
  v10 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v11 = [objc_allocWithZone(PKPaymentTransactionDetailsFactory) initWithContactResolver:0 peerPaymentWebService:v9 paymentServiceDataProvider:v10 detailViewStyle:v8 context:0];

  v12 = [v11 viewControllerForTransaction:a1 sourceCollection:v7 familyCollection:0 account:a2 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 group:0 navigationController:0];
  v13 = [v12 navigationItem];
  [v13 setLargeTitleDisplayMode_];

  return v12;
}

void sub_1BD1AF078(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for SavingsBankVerificationView();
  MEMORY[0x1EEE9AC00](v8, v9);
  v131 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  v136 = v11;
  v137 = v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v130 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v129 = &v128 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v128 = &v128 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v128 - v23;
  v135 = sub_1BE04A474();
  v132 = *(v135 - 8);
  v25 = *(v132 + 64);
  v27 = MEMORY[0x1EEE9AC00](v135, v26);
  v133 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v134 = &v128 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v31 = OBJC_IVAR____PKAccountSavingsViewController_configuration;
  v32 = a2;
  v33 = *(a2 + OBJC_IVAR____PKAccountSavingsViewController_configuration);
  v138 = a3;
  sub_1BE048964();
  v34 = a4;
  v35 = [v33 account];
  if (!v35)
  {

    goto LABEL_10;
  }

  v139 = v35;
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if (a1 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    if ((a1 - 4) < 2)
    {
      goto LABEL_20;
    }

    if (a1 != 6)
    {
      if (a1 != 7)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    v41 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BE0B7020;
    *(v42 + 32) = v139;
    sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
    v43 = v139;
    v44 = sub_1BE052724();

    [v41 setAccounts_];

    v45 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      sub_1BD1A55A4([v34 destination], v45);

LABEL_26:
      return;
    }

    goto LABEL_46;
  }

  if (a1 <= 10)
  {
    if (a1 == 8)
    {
      v48 = [*(v32 + v31) transaction];
      if (v48)
      {
        v49 = v48;
        v50 = [*(v32 + v31) viewStyle];
        v51 = sub_1BD1AEEFC(v49, v139, v50);
        swift_beginAccess();
        v52 = swift_unknownObjectWeakLoadStrong();
        if (v52)
        {
          v53 = v52;
          sub_1BD1A55A4([v34 destination], v51);

          return;
        }

        goto LABEL_57;
      }

      sub_1BE04D1E4();
      v96 = sub_1BE04D204();
      v97 = sub_1BE052C34();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_1BD026000, v96, v97, "Attempted to present transaction without transaction", v98, 2u);
        MEMORY[0x1BFB45F20](v98, -1, -1);
      }

      (*(v137 + 8))(v24, v136);
      goto LABEL_56;
    }

    if (a1 != 9)
    {
      goto LABEL_20;
    }

    v60 = [*(v32 + v31) rewardsDateComponents];
    if (!v60)
    {
      v103 = v128;
      sub_1BE04D1E4();
      v104 = sub_1BE04D204();
      v105 = sub_1BE052C34();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_1BD026000, v104, v105, "Attempted to present rewards without date components", v106, 2u);
        MEMORY[0x1BFB45F20](v106, -1, -1);
      }

      (*(v137 + 8))(v103, v136);
      goto LABEL_56;
    }

    v61 = v134;
    v62 = v60;
    sub_1BE04A424();

    v63 = [*(v32 + v31) viewStyle];
    v64 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
    v65 = [v64 initWithAccount_];
    v66 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

    v67 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
    v68 = objc_allocWithZone(MEMORY[0x1E69B8788]);
    v69 = v66;
    v70 = [v68 initWithTransactionSourceCollection:v69 paymentDataProvider:v67];

    if (v70)
    {
      v71 = v132;
      v72 = *(v132 + 16);
      v138 = v63;
      v73 = v135;
      v72(v133, v61, v135);
      v74 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v75 = (v25 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      *(v77 + 16) = v138;
      *(v77 + 24) = v70;
      (*(v71 + 32))(v77 + v74, v133, v73);
      *(v77 + v75) = v69;
      *(v77 + v76) = v139;
      v78 = (v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v78 = sub_1BD1B6D18;
      v78[1] = v30;
      v145 = sub_1BD1B6FE8;
      v146 = v77;
      aBlock = MEMORY[0x1E69E9820];
      v142 = 1107296256;
      v143 = sub_1BD56AD40;
      v144 = &block_descriptor_340;
      v79 = _Block_copy(&aBlock);
      v80 = v139;
      v81 = v69;
      v82 = v70;
      sub_1BE048964();

      [v82 reloadTransactionsWithCompletion_];
      _Block_release(v79);

      (*(v71 + 8))(v134, v135);
    }

    else
    {

      (*(v132 + 8))(v61, v135);
    }

LABEL_10:

    return;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      v83 = [*(v32 + v31) fundingSource];
      if (v83)
      {
        v84 = v83;
        KeyPath = swift_getKeyPath();
        v86 = v131;
        *&v131[*(v8 + 32)] = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
        swift_storeEnumTagMultiPayload();
        v87 = v139;
        *v86 = v139;
        *(v86 + 1) = v84;
        LOBYTE(v148) = 0;
        v88 = v87;
        v89 = v84;
        sub_1BE051694();
        v90 = v142;
        v86[16] = aBlock;
        *(v86 + 3) = v90;
        *(v86 + 4) = sub_1BD87F37C;
        *(v86 + 5) = 0;
        v86[48] = 0;
        v91 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020));
        v92 = sub_1BE04F894();
        swift_beginAccess();
        v93 = swift_unknownObjectWeakLoadStrong();
        if (v93)
        {
          v94 = v93;
          sub_1BD1A55A4([v34 destination], v92);
        }

        else
        {
        }

        return;
      }

      goto LABEL_42;
    }

    if (a1 != 13)
    {
LABEL_42:

      v95 = v139;

      return;
    }

LABEL_20:
    [*(v32 + v31) copy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E5E8C(0, &qword_1EBD3C038);
    if (swift_dynamicCast())
    {
      v36 = v148;
      [v148 setDestination_];
      v37 = [objc_allocWithZone(PKSavingsAccountDetailsViewController) initWithConfiguration_];

      swift_beginAccess();
      v38 = swift_unknownObjectWeakLoadStrong();
      if (v38)
      {
        v39 = v38;
        v40 = v37;
        sub_1BD1A55A4([v34 destination], v40);

        return;
      }

      goto LABEL_57;
    }

LABEL_56:

LABEL_57:

    return;
  }

  v54 = [v35 savingsDetails];
  if (!v54)
  {
    v99 = v129;
    sub_1BE04D1E4();
    v100 = sub_1BE04D204();
    v101 = sub_1BE052C34();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1BD026000, v100, v101, "Attempted to present FCC step up without account details", v102, 2u);
      MEMORY[0x1BFB45F20](v102, -1, -1);
    }

    (*(v137 + 8))(v99, v136);
    goto LABEL_56;
  }

  v55 = v54;
  if (([v54 fccStepUpRequired] & 1) != 0 && objc_msgSend(v139, sel_state) != 4)
  {
    v107 = type metadata accessor for SavingsFCCStepUpController();
    v108 = objc_allocWithZone(v107);
    *&v108[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
    v109 = v139;
    *&v108[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v139;
    v147.receiver = v108;
    v147.super_class = v107;
    v110 = v109;
    v111 = objc_msgSendSuper2(&v147, sel_init);
    v112 = swift_allocObject();
    *(v112 + 16) = sub_1BD1B6D18;
    *(v112 + 24) = v30;
    v113 = *&v111[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
    swift_retain_n();
    v114 = [v113 savingsDetails];
    if (v114)
    {
      v115 = v114;
      v116 = [v114 fccStepUpDetails];

      if (!v116 || (v117 = [v116 thresholdExceeded], v116, (v117 & 1) == 0))
      {
        v124 = swift_allocObject();
        *(v124 + 16) = sub_1BD1B6F54;
        *(v124 + 24) = v112;
        sub_1BE048964();
        v125 = sub_1BD8BD4F8();
        if (!v125)
        {

          return;
        }

        v43 = v125;
        v126 = swift_allocObject();
        *(v126 + 16) = sub_1BD1B6F4C;
        *(v126 + 24) = v124;
        v145 = sub_1BD1B6F50;
        v146 = v126;
        aBlock = MEMORY[0x1E69E9820];
        v142 = 1107296256;
        v143 = sub_1BD14E1D8;
        v144 = &block_descriptor_333;
        v127 = _Block_copy(&aBlock);
        sub_1BE048964();

        [v43 nextViewControllerWithCompletion_];

        _Block_release(v127);

        goto LABEL_46;
      }

      v118 = type metadata accessor for SavingsFCCStepUpClosureViewController();
      v119 = objc_allocWithZone(v118);
      *&v119[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v111;
      v140.receiver = v119;
      v140.super_class = v118;
      v120 = v111;
      v121 = objc_msgSendSuper2(&v140, sel_initWithContext_, 0);
      if (v121)
      {
        v122 = v121;
        v43 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
        swift_beginAccess();
        v123 = swift_unknownObjectWeakLoadStrong();
        if (v123)
        {
          v47 = v123;
          sub_1BD1A55A4([v34 destination], v43);

          goto LABEL_26;
        }

LABEL_46:
        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    return;
  }

  v56 = v130;
  sub_1BE04D1E4();
  v57 = sub_1BE04D204();
  v58 = sub_1BE052C34();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1BD026000, v57, v58, "Attempted to present FCC step up when its no longer required", v59, 2u);
    MEMORY[0x1BFB45F20](v59, -1, -1);
  }

  (*(v137 + 8))(v56, v136);
}

void sub_1BD1B0114(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for SavingsBankVerificationView();
  MEMORY[0x1EEE9AC00](v8, v9);
  v178 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1BE04D214();
  v183 = *(v182 - 8);
  v12 = MEMORY[0x1EEE9AC00](v182, v11);
  v177 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v175 = &v175 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v175 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v175 - v22;
  v180 = sub_1BE04A474();
  v179 = *(v180 - 8);
  v24 = *(v179 + 64);
  v26 = MEMORY[0x1EEE9AC00](v180, v25);
  v176 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v181 = &v175 - v28;
  v29 = sub_1BE051F54();
  v187 = *(v29 - 8);
  v188 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v185 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v189 = *(v32 - 8);
  v190 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v186 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  v184 = a4;
  v36 = OBJC_IVAR____PKAccountSavingsViewController_configuration;
  v37 = a2;
  v38 = *(a2 + OBJC_IVAR____PKAccountSavingsViewController_configuration);
  v39 = a3;
  v40 = [v38 account];
  if (!v40)
  {

    goto LABEL_10;
  }

  v191 = v35;
  v192 = v40;
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if (a1 != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    }

    if ((a1 - 4) < 2)
    {
      goto LABEL_20;
    }

    if (a1 != 6)
    {
      if (a1 != 7)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    }

    v53 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1BE0B7020;
    *(v54 + 32) = v192;
    sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
    v55 = v192;
    v56 = sub_1BE052724();

    [v53 setAccounts_];

    v57 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v58 = v57;
    v59 = sub_1BE052D54();
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    v62 = v184;
    v61[2] = v60;
    v61[3] = v62;
    v61[4] = v58;
    v199 = sub_1BD1B6FF4;
    v200 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v196 = 1107296256;
    v197 = sub_1BD126964;
    v198 = &block_descriptor_299;
    v63 = _Block_copy(&aBlock);
    v64 = v58;

    v65 = v186;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v66 = v185;
    v67 = v188;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v65, v66, v63);
    _Block_release(v63);

    (*(v187 + 8))(v66, v67);
    (*(v189 + 8))(v65, v190);

LABEL_23:
    return;
  }

  if (a1 <= 10)
  {
    if (a1 == 8)
    {
      v68 = [*(v37 + v36) transaction];
      if (v68)
      {
        v69 = v68;
        v70 = [*(v37 + v36) viewStyle];
        v71 = sub_1BD1AEEFC(v69, v192, v70);
        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v72 = v71;
        v73 = sub_1BE052D54();
        v74 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v75 = swift_allocObject();
        v76 = v184;
        v75[2] = v74;
        v75[3] = v76;
        v75[4] = v72;
        v199 = sub_1BD1B6FF4;
        v200 = v75;
        aBlock = MEMORY[0x1E69E9820];
        v196 = 1107296256;
        v197 = sub_1BD126964;
        v198 = &block_descriptor_307;
        v77 = _Block_copy(&aBlock);
        v78 = v72;

        v79 = v186;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v80 = v185;
        v81 = v188;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v79, v80, v77);
        _Block_release(v77);

        (*(v187 + 8))(v80, v81);
        (*(v189 + 8))(v79, v190);

        goto LABEL_50;
      }

      sub_1BE04D1E4();
      v136 = sub_1BE04D204();
      v137 = sub_1BE052C34();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_1BD026000, v136, v137, "Attempted to present transaction without transaction", v138, 2u);
        MEMORY[0x1BFB45F20](v138, -1, -1);
      }

      v183[1](v23, v182);
LABEL_49:

      goto LABEL_50;
    }

    if (a1 != 9)
    {
LABEL_20:
      [*(v37 + v36) copy];
      sub_1BE053624();
      swift_unknownObjectRelease();
      sub_1BD0E5E8C(0, &qword_1EBD3C038);
      if (swift_dynamicCast())
      {
        v41 = v201;
        [v201 setDestination_];
        v42 = [objc_allocWithZone(PKSavingsAccountDetailsViewController) initWithConfiguration_];

        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v43 = v42;
        v44 = sub_1BE052D54();
        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v46 = swift_allocObject();
        v47 = v184;
        v46[2] = v45;
        v46[3] = v47;
        v46[4] = v43;
        v199 = sub_1BD1B6C7C;
        v200 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v196 = 1107296256;
        v197 = sub_1BD126964;
        v198 = &block_descriptor_254;
        v48 = _Block_copy(&aBlock);
        v49 = v43;

        v50 = v186;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v51 = v185;
        v52 = v188;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v50, v51, v48);
        _Block_release(v48);

        (*(v187 + 8))(v51, v52);
        (*(v189 + 8))(v50, v190);

LABEL_50:
        return;
      }

      goto LABEL_49;
    }

    v90 = [*(v37 + v36) rewardsDateComponents];
    if (v90)
    {
      v91 = v181;
      v92 = v90;
      sub_1BE04A424();

      v93 = [*(v37 + v36) viewStyle];
      v94 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
      v95 = [v94 initWithAccount_];
      v96 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

      v97 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
      v98 = objc_allocWithZone(MEMORY[0x1E69B8788]);
      v99 = v96;
      v100 = [v98 initWithTransactionSourceCollection:v99 paymentDataProvider:v97];

      if (v100)
      {
        v101 = v179;
        v102 = *(v179 + 16);
        v190 = v93;
        v103 = v176;
        v104 = v180;
        v102(v176, v91, v180);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = (v24 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
        v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
        v108 = swift_allocObject();
        *(v108 + 16) = v190;
        *(v108 + 24) = v100;
        (*(v101 + 32))(v108 + v105, v103, v104);
        *(v108 + v106) = v99;
        v109 = v191;
        *(v108 + v107) = v192;
        v110 = (v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v110 = sub_1BD1B6C34;
        v110[1] = v109;
        v199 = sub_1BD1B6FE8;
        v200 = v108;
        aBlock = MEMORY[0x1E69E9820];
        v196 = 1107296256;
        v197 = sub_1BD56AD40;
        v198 = &block_descriptor_291;
        v111 = _Block_copy(&aBlock);
        v112 = v192;
        v113 = v99;
        v114 = v100;
        sub_1BE048964();

        [v114 reloadTransactionsWithCompletion_];
        _Block_release(v111);

        (*(v101 + 8))(v181, v104);
      }

      else
      {

        (*(v179 + 8))(v91, v180);
      }

LABEL_10:

      return;
    }

    sub_1BE04D1E4();
    v139 = sub_1BE04D204();
    v142 = sub_1BE052C34();
    if (os_log_type_enabled(v139, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_1BD026000, v139, v142, "Attempted to present rewards without date components", v143, 2u);
      MEMORY[0x1BFB45F20](v143, -1, -1);
    }

LABEL_48:

    v183[1](v20, v182);
    goto LABEL_49;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      v115 = [*(v37 + v36) fundingSource];
      if (v115)
      {
        v116 = v115;
        KeyPath = swift_getKeyPath();
        v118 = v178;
        *&v178[*(v8 + 32)] = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
        swift_storeEnumTagMultiPayload();
        v119 = v192;
        *v118 = v192;
        *(v118 + 1) = v116;
        LOBYTE(v201) = 0;
        v120 = v119;
        v121 = v116;
        sub_1BE051694();
        v122 = v196;
        v118[16] = aBlock;
        *(v118 + 3) = v122;
        *(v118 + 4) = sub_1BD87F37C;
        *(v118 + 5) = 0;
        v118[48] = 0;
        v123 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020));
        v124 = sub_1BE04F894();
        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v125 = v124;
        v126 = sub_1BE052D54();
        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = swift_allocObject();
        v129 = v184;
        v128[2] = v127;
        v128[3] = v129;
        v128[4] = v125;
        v199 = sub_1BD1B6FF4;
        v200 = v128;
        aBlock = MEMORY[0x1E69E9820];
        v196 = 1107296256;
        v197 = sub_1BD126964;
        v198 = &block_descriptor_262;
        v130 = _Block_copy(&aBlock);
        v131 = v125;

        v132 = v186;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v133 = v185;
        v134 = v188;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v132, v133, v130);
        _Block_release(v130);

        (*(v187 + 8))(v133, v134);
        (*(v189 + 8))(v132, v190);

        return;
      }

      goto LABEL_37;
    }

    if (a1 != 13)
    {
LABEL_37:

      v135 = v192;

      return;
    }

    goto LABEL_20;
  }

  v82 = [v40 savingsDetails];
  if (!v82)
  {
    v20 = v175;
    sub_1BE04D1E4();
    v139 = sub_1BE04D204();
    v140 = sub_1BE052C34();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_1BD026000, v139, v140, "Attempted to present FCC step up without account details", v141, 2u);
      MEMORY[0x1BFB45F20](v141, -1, -1);
    }

    goto LABEL_48;
  }

  v83 = v82;
  v84 = [v82 fccStepUpRequired];
  v85 = v191;
  if ((v84 & 1) != 0 && [v192 state] != 4)
  {
    v144 = v39;
    v145 = type metadata accessor for SavingsFCCStepUpController();
    v146 = objc_allocWithZone(v145);
    *&v146[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
    v147 = v192;
    *&v146[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v192;
    v194.receiver = v146;
    v194.super_class = v145;
    v148 = v147;
    v149 = objc_msgSendSuper2(&v194, sel_init);
    v150 = swift_allocObject();
    *(v150 + 16) = sub_1BD1B6C34;
    *(v150 + 24) = v85;
    v151 = *&v149[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
    swift_retain_n();
    v152 = [v151 savingsDetails];
    if (v152)
    {
      v153 = v152;
      v154 = [v152 fccStepUpDetails];

      if (!v154 || (v155 = [v154 thresholdExceeded], v154, (v155 & 1) == 0))
      {
        v171 = swift_allocObject();
        *(v171 + 16) = sub_1BD1B6CB0;
        *(v171 + 24) = v150;
        sub_1BE048964();
        v172 = sub_1BD8BD4F8();
        if (!v172)
        {

          return;
        }

        v55 = v172;
        v173 = swift_allocObject();
        *(v173 + 16) = sub_1BD1B6F4C;
        *(v173 + 24) = v171;
        v199 = sub_1BD1B6F50;
        v200 = v173;
        aBlock = MEMORY[0x1E69E9820];
        v196 = 1107296256;
        v197 = sub_1BD14E1D8;
        v198 = &block_descriptor_276;
        v174 = _Block_copy(&aBlock);
        sub_1BE048964();

        [v55 nextViewControllerWithCompletion_];

        _Block_release(v174);

        goto LABEL_23;
      }

      v192 = v148;
      v156 = type metadata accessor for SavingsFCCStepUpClosureViewController();
      v157 = objc_allocWithZone(v156);
      *&v157[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v149;
      v193.receiver = v157;
      v193.super_class = v156;
      v183 = v149;
      v158 = objc_msgSendSuper2(&v193, sel_initWithContext_, 0);
      if (v158)
      {
        v159 = v158;
        v160 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v161 = v160;
        v182 = sub_1BE052D54();
        v162 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v163 = swift_allocObject();
        v164 = v184;
        v163[2] = v162;
        v163[3] = v164;
        v163[4] = v161;
        v199 = sub_1BD1B6FF4;
        v200 = v163;
        aBlock = MEMORY[0x1E69E9820];
        v196 = 1107296256;
        v197 = sub_1BD126964;
        v198 = &block_descriptor_284;
        v165 = _Block_copy(&aBlock);
        v166 = v161;

        v184 = v159;
        v167 = v186;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v168 = v185;
        v169 = v188;
        sub_1BE053664();
        v170 = v182;
        MEMORY[0x1BFB3FDF0](0, v167, v168, v165);
        _Block_release(v165);

        (*(v187 + 8))(v168, v169);
        (*(v189 + 8))(v167, v190);

        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    return;
  }

  v86 = v177;
  sub_1BE04D1E4();
  v87 = sub_1BE04D204();
  v88 = sub_1BE052C34();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_1BD026000, v87, v88, "Attempted to present FCC step up when its no longer required", v89, 2u);
    MEMORY[0x1BFB45F20](v89, -1, -1);
  }

  v183[1](v86, v182);
}

void sub_1BD1B1AC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v211 = type metadata accessor for SavingsBankVerificationView();
  MEMORY[0x1EEE9AC00](v211, v8);
  v212 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  v11 = *(v10 - 1);
  v220 = v10;
  v221 = v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v208 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v207 = &v202 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v210 = &v202 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v202 - v22;
  v214 = sub_1BE04A474();
  v213 = *(v214 - 8);
  v24 = *(v213 + 64);
  v26 = MEMORY[0x1EEE9AC00](v214, v25);
  v209 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v219 = &v202 - v28;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B198);
  v30 = MEMORY[0x1EEE9AC00](v215, v29);
  v216 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v218 = (&v202 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = &v202 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v202 - v40;
  v42 = type metadata accessor for AccountInformationView();
  MEMORY[0x1EEE9AC00](v42, v43);
  v217 = (&v202 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = swift_allocObject();
  v46 = a3;
  *(v45 + 16) = a3;
  *(v45 + 24) = a4;
  if ((a1 - 2) >= 0xC)
  {
    sub_1BE048964();
LABEL_11:

    goto LABEL_13;
  }

  v202 = a4;
  v206 = v45;
  v47 = OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration;
  v203 = a2;
  v48 = *(a2 + OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration);
  v204 = v46;
  sub_1BE048964();
  v49 = [v48 account];
  if (!v49)
  {
    goto LABEL_11;
  }

  v205 = v49;
  if (a1 > 7)
  {
    if (a1 > 10)
    {
      if (a1 != 11)
      {
        if (a1 == 12)
        {
          v92 = [*(v203 + v47) fundingSource];
          if (v92)
          {
            v93 = v92;
            KeyPath = swift_getKeyPath();
            v95 = v212;
            *&v212[*(v211 + 32)] = KeyPath;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
            swift_storeEnumTagMultiPayload();
            v96 = v205;
            *v95 = v205;
            *(v95 + 1) = v93;
            v222 = 0;
            v97 = v96;
            v98 = v93;
            sub_1BE051694();
            v99 = v226;
            v95[16] = aBlock;
            *(v95 + 3) = v99;
            *(v95 + 4) = sub_1BD87F37C;
            *(v95 + 5) = 0;
            v95[48] = 0;
            v100 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020));
            v101 = sub_1BE04F894();
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v56 = Strong;
              sub_1BD1A6550(v202, v101);

LABEL_46:
              return;
            }

            return;
          }

          goto LABEL_47;
        }

        v146 = v203;
        v147 = *(v203 + v47);
        v148 = v205;
        LODWORD(v147) = [v147 isNewAccount];
        v149 = objc_allocWithZone(type metadata accessor for AccountModel());
        v150 = sub_1BD1DF0D8(v148, v147);
        type metadata accessor for AccountUserInfoModel();
        swift_allocObject();
        v151 = sub_1BD2FA644();
        v152 = *(v151 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
        *(v151 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = v205;
        v153 = v148;

        v154 = v150;
        sub_1BE048964();
        v155 = v218;
        sub_1BD3C154C(v154, v151, 0, v218);
        v156 = *(*(v146 + OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC) + *((*MEMORY[0x1E69E7D40] & **(v146 + OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC)) + class metadata base offset for WrapperHostingController + 16));
        type metadata accessor for ObservableHostingController();
        sub_1BD1B6BA4(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
        sub_1BE048964();
        v157 = sub_1BE04D804();
        v158 = (v155 + *(v215 + 36));
        *v158 = v157;
        v158[1] = v156;
        sub_1BD0DE19C(v155, v216, &qword_1EBD3B198);
        v159 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C028));
        v160 = sub_1BE04F894();
        swift_beginAccess();
        v161 = swift_unknownObjectWeakLoadStrong();
        if (v161)
        {
          v162 = v161;
          sub_1BD1A6550(v202, v160);

          v160 = v162;
        }

        else
        {
        }

        sub_1BD0DE53C(v155, &qword_1EBD3B198);
LABEL_13:

        return;
      }

      v128 = [v49 savingsDetails];
      if (v128)
      {
        v129 = v128;
        if (([v128 fccStepUpRequired] & 1) == 0 || objc_msgSend(v205, sel_state) == 4)
        {
          v130 = v210;
          sub_1BE04D1E4();
          v131 = sub_1BE04D204();
          v132 = sub_1BE052C34();
          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            *v133 = 0;
            _os_log_impl(&dword_1BD026000, v131, v132, "Attempted to present FCC step up when its no longer required", v133, 2u);
            MEMORY[0x1BFB45F20](v133, -1, -1);
          }

          v221[1](v130, v220);

          return;
        }

        v171 = type metadata accessor for SavingsFCCStepUpController();
        v172 = objc_allocWithZone(v171);
        *&v172[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
        v173 = v205;
        *&v172[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v205;
        v224.receiver = v172;
        v224.super_class = v171;
        v174 = v173;
        v175 = objc_msgSendSuper2(&v224, sel_init);
        v176 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v177 = swift_allocObject();
        v177[2] = v176;
        v177[3] = sub_1BD1B6BEC;
        v177[4] = v206;
        v178 = *&v175[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
        swift_retain_n();
        swift_retain_n();
        v179 = [v178 savingsDetails];
        if (v179)
        {
          v180 = v179;
          v181 = [v179 fccStepUpDetails];

          if (!v181 || (v182 = [v181 thresholdExceeded], v181, (v182 & 1) == 0))
          {
            v195 = swift_allocObject();
            *(v195 + 16) = sub_1BD1B6F74;
            *(v195 + 24) = v177;
            sub_1BE048964();
            v196 = sub_1BD8BD4F8();
            if (v196)
            {
              v197 = v196;
              v198 = swift_allocObject();
              *(v198 + 16) = sub_1BD1B6F4C;
              *(v198 + 24) = v195;
              v229 = sub_1BD1B6F50;
              v230 = v198;
              aBlock = MEMORY[0x1E69E9820];
              v226 = 1107296256;
              v227 = sub_1BD14E1D8;
              v228 = &block_descriptor_244;
              v199 = _Block_copy(&aBlock);
              sub_1BE048964();

              [v197 nextViewControllerWithCompletion_];

              _Block_release(v199);

              return;
            }

            swift_beginAccess();
            v200 = swift_unknownObjectWeakLoadStrong();
            if (v200)
            {
              v201 = v200;
              [v200 pkui_userInterfaceIdiomSupportsLargeLayouts];

              return;
            }

            goto LABEL_13;
          }

          v183 = type metadata accessor for SavingsFCCStepUpClosureViewController();
          v184 = objc_allocWithZone(v183);
          *&v184[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v175;
          v223.receiver = v184;
          v223.super_class = v183;
          v185 = v175;
          v186 = objc_msgSendSuper2(&v223, sel_initWithContext_, 0);
          if (v186)
          {
            v187 = v186;
            v188 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
            swift_beginAccess();
            v189 = swift_unknownObjectWeakLoadStrong();
            if (v189)
            {
              v190 = v189;
              v191 = [v189 pkui_userInterfaceIdiomSupportsLargeLayouts];

              if (v191)
              {
                [v188 setModalPresentationStyle_];
              }
            }

            swift_beginAccess();
            v192 = swift_unknownObjectWeakLoadStrong();
            if (v192)
            {
              v193 = v192;
              v194 = v188;
              sub_1BD1A6550(v202, v194);

              v174 = v193;
              v187 = v194;
            }

            else
            {
            }

            return;
          }
        }

        else
        {

          __break(1u);
        }

        __break(1u);
        return;
      }

      sub_1BE04D1E4();
      v168 = sub_1BE04D204();
      v169 = sub_1BE052C34();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_1BD026000, v168, v169, "Attempted to present FCC step up without account details", v170, 2u);
        MEMORY[0x1BFB45F20](v170, -1, -1);
      }

      v221[1](v23, v220);
      goto LABEL_68;
    }

    if (a1 == 8)
    {
      v103 = v203;
      v104 = [*(v203 + v47) transaction];
      if (!v104)
      {
        v163 = v207;
        sub_1BE04D1E4();
        v164 = sub_1BE04D204();
        v165 = sub_1BE052C34();
        if (!os_log_type_enabled(v164, v165))
        {
LABEL_67:

          v221[1](v163, v220);
LABEL_68:

LABEL_69:

          return;
        }

        v166 = swift_slowAlloc();
        *v166 = 0;
        v167 = "Attempted to present transaction without transaction";
LABEL_66:
        _os_log_impl(&dword_1BD026000, v164, v165, v167, v166, 2u);
        MEMORY[0x1BFB45F20](v166, -1, -1);
        goto LABEL_67;
      }

      v105 = v104;
      v106 = [*(v103 + v47) viewStyle];
      v107 = sub_1BD1AEEFC(v105, v205, v106);
      swift_beginAccess();
      v108 = swift_unknownObjectWeakLoadStrong();
      if (!v108)
      {

        goto LABEL_69;
      }

      v56 = v108;
      sub_1BD1A6550(v202, v107);
    }

    else
    {
      if (a1 == 9)
      {
        v59 = v203;
        v60 = [*(v203 + v47) rewardsDateComponents];
        if (v60)
        {
          v61 = v219;
          v62 = v60;
          sub_1BE04A424();

          v63 = [*(v59 + v47) viewStyle];
          v64 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
          v65 = [v64 initWithAccount_];
          v66 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

          v67 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
          v68 = objc_allocWithZone(MEMORY[0x1E69B8788]);
          v69 = v66;
          v70 = [v68 initWithTransactionSourceCollection:v69 paymentDataProvider:v67];

          if (v70)
          {
            v71 = v213;
            v72 = *(v213 + 16);
            v221 = v63;
            v73 = v209;
            v74 = v214;
            v72(v209, v61, v214);
            v75 = (*(v71 + 80) + 32) & ~*(v71 + 80);
            v76 = (v24 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
            v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
            v78 = swift_allocObject();
            *(v78 + 16) = v221;
            *(v78 + 24) = v70;
            (*(v71 + 32))(v78 + v75, v73, v74);
            *(v78 + v76) = v69;
            *(v78 + v77) = v205;
            v79 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
            v80 = v206;
            *v79 = sub_1BD1B6BEC;
            v79[1] = v80;
            v229 = sub_1BD1B6FE8;
            v230 = v78;
            aBlock = MEMORY[0x1E69E9820];
            v226 = 1107296256;
            v227 = sub_1BD56AD40;
            v228 = &block_descriptor_228;
            v81 = _Block_copy(&aBlock);
            v82 = v205;
            sub_1BE048964();
            v83 = v69;
            v84 = v70;

            [v84 reloadTransactionsWithCompletion_];
            _Block_release(v81);

            (*(v71 + 8))(v219, v74);
          }

          else
          {

            (*(v213 + 8))(v61, v214);
          }

          goto LABEL_13;
        }

        v163 = v208;
        sub_1BE04D1E4();
        v164 = sub_1BE04D204();
        v165 = sub_1BE052C34();
        if (!os_log_type_enabled(v164, v165))
        {
          goto LABEL_67;
        }

        v166 = swift_slowAlloc();
        *v166 = 0;
        v167 = "Attempted to present rewards without date components";
        goto LABEL_66;
      }

      v134 = *(v203 + v47);
      v135 = objc_allocWithZone(type metadata accessor for AccountNumbersViewController());
      v136 = AccountNumbersViewController.init(withConfiguration:)(v134);
      if (!v136)
      {
LABEL_47:

        v139 = v205;
LABEL_48:

        return;
      }

      v137 = v136;
      swift_beginAccess();
      v138 = swift_unknownObjectWeakLoadStrong();
      if (!v138)
      {

        goto LABEL_69;
      }

      v56 = v138;
      sub_1BD1A6550(v202, v137);
    }

    v58 = v205;
    goto LABEL_45;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v109 = *(v203 + v47);
      v110 = v205;
      LODWORD(v109) = [v109 isNewAccount];
      v221 = type metadata accessor for AccountModel();
      v111 = objc_allocWithZone(v221);
      v112 = sub_1BD1DF0D8(v110, v109);
      type metadata accessor for AccountUserInfoModel();
      swift_allocObject();
      v113 = sub_1BD2FA644();
      v114 = *(v113 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
      *(v113 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = v205;
      v219 = v110;

      v222 = 0;
      v220 = v112;
      sub_1BE048964();
      sub_1BE051694();
      v115 = v226;
      v116 = v217;
      *(v217 + 32) = aBlock;
      v116[5] = v115;
      v117 = type metadata accessor for FeatureError(0);
      (*(*(v117 - 8) + 56))(v41, 1, 1, v117);
      sub_1BD0DE19C(v41, v38, &qword_1EBD416C0);
      sub_1BE051694();
      sub_1BD0DE53C(v41, &qword_1EBD416C0);
      v118 = *(v42 + 32);
      *(v116 + v118) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
      swift_storeEnumTagMultiPayload();
      sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel);
      v119 = v220;
      *v116 = sub_1BE04E954();
      v116[1] = v120;
      sub_1BD1B6BA4(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
      v121 = sub_1BE04E954();
      v123 = v122;

      v116[2] = v121;
      v116[3] = v123;
      v124 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C030));
      v125 = sub_1BE04F894();
      swift_beginAccess();
      v126 = swift_unknownObjectWeakLoadStrong();
      if (v126)
      {
        v127 = v126;
        sub_1BD1A6550(v202, v125);

        v125 = v219;
      }

      else
      {

        v127 = v219;
      }

      return;
    }

    if (a1 == 6)
    {
      v85 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1BE0B7020;
      *(v86 + 32) = v205;
      sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
      v87 = v205;
      v88 = sub_1BE052724();

      [v85 setAccounts_];

      v89 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
      swift_beginAccess();
      v90 = swift_unknownObjectWeakLoadStrong();
      if (v90)
      {
        v91 = v90;
        sub_1BD1A6550(v202, v89);

        v85 = v89;
        v89 = v87;
        v87 = v91;
      }
    }

    else
    {
      v140 = objc_allocWithZone(PKAccountSupportTopicsViewController);
      v141 = [v140 initWithAccount_];
      v142 = [v141 navigationItem];
      [v142 setLargeTitleDisplayMode_];

      v143 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
      swift_beginAccess();
      v144 = swift_unknownObjectWeakLoadStrong();
      if (v144)
      {
        v145 = v144;
        v143 = v143;
        sub_1BD1A6550(v202, v143);

        v141 = v145;
        v205 = v143;
      }
    }

    goto LABEL_13;
  }

  if (a1 == 2 || a1 == 3)
  {
    goto LABEL_47;
  }

  v50 = objc_opt_self();
  v221 = v205;
  v51 = [v50 sharedService];
  v52 = objc_allocWithZone(PKAccountBankAccountsViewController);
  v53 = [v52 initWithAccount:v221 paymentWebService:v51 context:0];

  if (!v53)
  {

    v139 = v221;
    goto LABEL_48;
  }

  v54 = [v53 navigationItem];
  [v54 setLargeTitleDisplayMode_];

  swift_beginAccess();
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    v57 = v53;
    sub_1BD1A6550(v202, v57);

    v58 = v221;
LABEL_45:

    goto LABEL_46;
  }
}

void sub_1BD1B352C(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v299 = a2;
  v283 = type metadata accessor for SavingsBankVerificationView();
  MEMORY[0x1EEE9AC00](v283, v7);
  v284 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04D214();
  v10 = *(v9 - 1);
  v292 = v9;
  v293 = v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v280 = &v274 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v279 = &v274 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v282 = &v274 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v278 = &v274 - v21;
  v286 = sub_1BE04A474();
  v285 = *(v286 - 8);
  v22 = *(v285 + 64);
  v24 = MEMORY[0x1EEE9AC00](v286, v23);
  v281 = &v274 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v291 = &v274 - v26;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B198);
  v28 = MEMORY[0x1EEE9AC00](v288, v27);
  v289 = &v274 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v290 = (&v274 - v31);
  v32 = sub_1BE051F54();
  v33 = *(v32 - 8);
  v296 = v32;
  v297 = v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v295 = &v274 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BE051FA4();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v298 = &v274 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v44 = &v274 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = &v274 - v46;
  v48 = type metadata accessor for AccountInformationView();
  MEMORY[0x1EEE9AC00](v48, v49);
  v287 = (&v274 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = swift_allocObject();
  *(v51 + 16) = a3;
  *(v51 + 24) = a4;
  v294 = a4;
  if ((a1 - 2) >= 0xC)
  {
    v73 = a3;
LABEL_10:

    goto LABEL_12;
  }

  v274 = v36;
  v275 = v37;
  v277 = v51;
  v52 = OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration;
  v53 = v299;
  v54 = *&v299[OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration];
  v55 = a3;
  v56 = [v54 account];
  if (!v56)
  {
    goto LABEL_10;
  }

  v276 = v56;
  if (a1 <= 7)
  {
    if (a1 <= 4)
    {
      if (a1 != 2 && a1 != 3)
      {
        v57 = objc_opt_self();
        v299 = v276;
        v58 = [v57 sharedService];
        v59 = objc_allocWithZone(PKAccountBankAccountsViewController);
        v60 = [v59 initWithAccount:v299 paymentWebService:v58 context:0];

        if (v60)
        {
          v61 = [v60 navigationItem];
          [v61 setLargeTitleDisplayMode_];

          sub_1BD0E5E8C(0, &qword_1EBD35E90);
          v62 = v60;
          v63 = sub_1BE052D54();
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v65 = swift_allocObject();
          v66 = v294;
          v65[2] = v64;
          v65[3] = v66;
          v65[4] = v62;
          v307 = sub_1BD1B6FF0;
          v308 = v65;
          aBlock = MEMORY[0x1E69E9820];
          v304 = 1107296256;
          v305 = sub_1BD126964;
          v306 = &block_descriptor_210;
          v67 = _Block_copy(&aBlock);
          v68 = v62;

          v69 = v298;
          sub_1BE051F74();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
          sub_1BD14ECDC();
          v71 = v295;
          v70 = v296;
          sub_1BE053664();
          MEMORY[0x1BFB3FDF0](0, v69, v71, v67);
          _Block_release(v67);

          (*(v297 + 8))(v71, v70);
          (*(v275 + 8))(v69, v274);

          v72 = v299;
LABEL_40:

          return;
        }

        v72 = v299;
LABEL_38:

        goto LABEL_40;
      }

LABEL_37:

      v72 = v276;
      goto LABEL_38;
    }

    if (a1 == 5)
    {
      v144 = *&v53[v52];
      v145 = v276;
      LODWORD(v144) = [v144 isNewAccount];
      v292 = type metadata accessor for AccountModel();
      v146 = objc_allocWithZone(v292);
      v147 = sub_1BD1DF0D8(v145, v144);
      v293 = v55;
      v148 = v147;
      type metadata accessor for AccountUserInfoModel();
      swift_allocObject();
      v149 = sub_1BD2FA644();
      v150 = *(v149 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
      *(v149 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = v276;
      v299 = v145;

      v300 = 0;
      v291 = v148;
      sub_1BE048964();
      sub_1BE051694();
      v151 = v304;
      v152 = v287;
      *(v287 + 32) = aBlock;
      v152[5] = v151;
      v153 = type metadata accessor for FeatureError(0);
      (*(*(v153 - 8) + 56))(v47, 1, 1, v153);
      sub_1BD0DE19C(v47, v44, &qword_1EBD416C0);
      sub_1BE051694();
      sub_1BD0DE53C(v47, &qword_1EBD416C0);
      v154 = *(v48 + 32);
      *(v152 + v154) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
      swift_storeEnumTagMultiPayload();
      sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel);
      v155 = v291;
      *v152 = sub_1BE04E954();
      v152[1] = v156;
      sub_1BD1B6BA4(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
      v157 = sub_1BE04E954();
      v159 = v158;

      v152[2] = v157;
      v152[3] = v159;
      v160 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C030));
      v161 = sub_1BE04F894();
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v162 = v161;
      v163 = sub_1BE052D54();
      v164 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v165 = swift_allocObject();
      v166 = v294;
      v165[2] = v164;
      v165[3] = v166;
      v165[4] = v162;
      v307 = sub_1BD1B6FF0;
      v308 = v165;
      aBlock = MEMORY[0x1E69E9820];
      v304 = 1107296256;
      v305 = sub_1BD126964;
      v306 = &block_descriptor_202;
      v167 = _Block_copy(&aBlock);
      v168 = v162;

      v169 = v298;
      sub_1BE051F74();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v171 = v295;
      v170 = v296;
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v169, v171, v167);
      _Block_release(v167);

      (*(v297 + 8))(v171, v170);
      (*(v275 + 8))(v169, v274);

      return;
    }

    if (a1 == 6)
    {
      v99 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1BE0B7020;
      *(v100 + 32) = v276;
      sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
      v101 = v276;
      v102 = sub_1BE052724();

      [v99 setAccounts_];

      v103 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v104 = v103;
      v105 = sub_1BE052D54();
      v106 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v107 = swift_allocObject();
      v108 = v294;
      v107[2] = v106;
      v107[3] = v108;
      v107[4] = v104;
      v307 = sub_1BD1B6FF0;
      v308 = v107;
      aBlock = MEMORY[0x1E69E9820];
      v304 = 1107296256;
      v305 = sub_1BD126964;
      v306 = &block_descriptor_132;
      v109 = _Block_copy(&aBlock);
      v110 = v104;

      v111 = v298;
      sub_1BE051F74();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v113 = v295;
      v112 = v296;
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v111, v113, v109);
      _Block_release(v109);

      (*(v297 + 8))(v113, v112);
      (*(v275 + 8))(v111, v274);

      return;
    }

    v192 = objc_allocWithZone(PKAccountSupportTopicsViewController);
    v135 = [v192 initWithAccount_];
    v193 = [v135 navigationItem];
    [v193 setLargeTitleDisplayMode_];

    v194 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v138 = v194;
    v139 = sub_1BE052D54();
    v195 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v196 = swift_allocObject();
    v197 = v294;
    v196[2] = v195;
    v196[3] = v197;
    v196[4] = v138;
    v307 = sub_1BD1B6FF0;
    v308 = v196;
    aBlock = MEMORY[0x1E69E9820];
    v304 = 1107296256;
    v143 = &block_descriptor_191;
    goto LABEL_42;
  }

  if (a1 <= 10)
  {
    if (a1 == 8)
    {
      v134 = [*&v53[v52] transaction];
      if (v134)
      {
        v135 = v134;
        v136 = [*&v53[v52] viewStyle];
        v137 = sub_1BD1AEEFC(v135, v276, v136);
        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v138 = v137;
        v139 = sub_1BE052D54();
        v140 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v141 = swift_allocObject();
        v142 = v294;
        v141[2] = v140;
        v141[3] = v142;
        v141[4] = v138;
        v307 = sub_1BD1B6FF0;
        v308 = v141;
        aBlock = MEMORY[0x1E69E9820];
        v304 = 1107296256;
        v143 = &block_descriptor_146;
LABEL_42:
        v305 = sub_1BD126964;
        v306 = v143;
        v198 = _Block_copy(&aBlock);
        v199 = v138;

        v200 = v298;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v202 = v295;
        v201 = v296;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v200, v202, v198);
        _Block_release(v198);

        (*(v297 + 8))(v202, v201);
        (*(v275 + 8))(v200, v274);

        goto LABEL_55;
      }

      v226 = v279;
      sub_1BE04D1E4();
      v227 = sub_1BE04D204();
      v228 = sub_1BE052C34();
      if (!os_log_type_enabled(v227, v228))
      {
        goto LABEL_53;
      }

      v229 = swift_slowAlloc();
      *v229 = 0;
      v230 = "Attempted to present transaction without transaction";
    }

    else
    {
      if (a1 != 9)
      {
        v178 = *&v53[v52];
        v179 = objc_allocWithZone(type metadata accessor for AccountNumbersViewController());
        v180 = AccountNumbersViewController.init(withConfiguration:)(v178);
        if (!v180)
        {
          goto LABEL_37;
        }

        v181 = v180;
        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v182 = v181;
        v183 = sub_1BE052D54();
        v184 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v185 = swift_allocObject();
        v186 = v294;
        v185[2] = v184;
        v185[3] = v186;
        v185[4] = v182;
        v307 = sub_1BD1B6FF0;
        v308 = v185;
        aBlock = MEMORY[0x1E69E9820];
        v304 = 1107296256;
        v305 = sub_1BD126964;
        v306 = &block_descriptor_183;
        v187 = _Block_copy(&aBlock);
        v188 = v182;

        v189 = v298;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v191 = v295;
        v190 = v296;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v189, v191, v187);
        _Block_release(v187);

        (*(v297 + 8))(v191, v190);
        (*(v275 + 8))(v189, v274);

LABEL_55:
        v72 = v276;
        goto LABEL_40;
      }

      v74 = [*&v53[v52] rewardsDateComponents];
      if (v74)
      {
        v75 = v291;
        v76 = v74;
        sub_1BE04A424();

        v77 = [*&v53[v52] viewStyle];
        v78 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
        v79 = [v78 initWithAccount_];
        v80 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

        v81 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
        v82 = objc_allocWithZone(MEMORY[0x1E69B8788]);
        v83 = v80;
        v84 = [v82 initWithTransactionSourceCollection:v83 paymentDataProvider:v81];

        if (v84)
        {
          v85 = v285;
          v86 = *(v285 + 16);
          v299 = v77;
          v87 = v281;
          v88 = v286;
          v86(v281, v75, v286);
          v89 = (*(v85 + 80) + 32) & ~*(v85 + 80);
          v90 = (v22 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
          v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
          v92 = swift_allocObject();
          *(v92 + 16) = v299;
          *(v92 + 24) = v84;
          (*(v85 + 32))(v92 + v89, v87, v88);
          *(v92 + v90) = v83;
          *(v92 + v91) = v276;
          v93 = (v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8));
          v94 = v277;
          *v93 = sub_1BD1B6B08;
          v93[1] = v94;
          v307 = sub_1BD1B6B84;
          v308 = v92;
          aBlock = MEMORY[0x1E69E9820];
          v304 = 1107296256;
          v305 = sub_1BD56AD40;
          v306 = &block_descriptor_138;
          v95 = _Block_copy(&aBlock);
          v96 = v276;
          sub_1BE048964();
          v97 = v83;
          v98 = v84;

          [v98 reloadTransactionsWithCompletion_];
          _Block_release(v95);

          (*(v85 + 8))(v291, v88);

          return;
        }

        (*(v285 + 8))(v75, v286);
        goto LABEL_12;
      }

      v226 = v280;
      sub_1BE04D1E4();
      v227 = sub_1BE04D204();
      v228 = sub_1BE052C34();
      if (!os_log_type_enabled(v227, v228))
      {
        goto LABEL_53;
      }

      v229 = swift_slowAlloc();
      *v229 = 0;
      v230 = "Attempted to present rewards without date components";
    }

    _os_log_impl(&dword_1BD026000, v227, v228, v230, v229, 2u);
    MEMORY[0x1BFB45F20](v229, -1, -1);
LABEL_53:

    (v293)[1](v226, v292);
LABEL_54:

    goto LABEL_55;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      v114 = [*&v53[v52] fundingSource];
      if (v114)
      {
        v115 = v114;
        KeyPath = swift_getKeyPath();
        v117 = v284;
        *&v284[*(v283 + 32)] = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
        swift_storeEnumTagMultiPayload();
        v118 = v276;
        *v117 = v276;
        *(v117 + 1) = v115;
        v300 = 0;
        v119 = v118;
        v120 = v115;
        sub_1BE051694();
        v121 = v304;
        v117[16] = aBlock;
        *(v117 + 3) = v121;
        *(v117 + 4) = sub_1BD87F37C;
        *(v117 + 5) = 0;
        v117[48] = 0;
        v122 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020));
        v123 = sub_1BE04F894();
        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v124 = v123;
        v125 = sub_1BE052D54();
        v126 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v127 = swift_allocObject();
        v128 = v294;
        v127[2] = v126;
        v127[3] = v128;
        v127[4] = v124;
        v307 = sub_1BD1B6B50;
        v308 = v127;
        aBlock = MEMORY[0x1E69E9820];
        v304 = 1107296256;
        v305 = sub_1BD126964;
        v306 = &block_descriptor_124;
        v129 = _Block_copy(&aBlock);
        v130 = v124;

        v131 = v298;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v133 = v295;
        v132 = v296;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v131, v133, v129);
        _Block_release(v129);

        (*(v297 + 8))(v133, v132);
        (*(v275 + 8))(v131, v274);

        return;
      }

      goto LABEL_37;
    }

    v203 = *&v53[v52];
    v204 = v276;
    LODWORD(v203) = [v203 isNewAccount];
    v205 = objc_allocWithZone(type metadata accessor for AccountModel());
    v206 = sub_1BD1DF0D8(v204, v203);
    type metadata accessor for AccountUserInfoModel();
    swift_allocObject();
    v207 = sub_1BD2FA644();
    v208 = *(v207 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
    *(v207 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = v276;
    v293 = v204;

    v209 = v206;
    v292 = v209;
    sub_1BE048964();
    v210 = v290;
    sub_1BD3C154C(v209, v207, 0, v290);
    v211 = *(*&v53[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC] + *((*MEMORY[0x1E69E7D40] & **&v53[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC]) + class metadata base offset for WrapperHostingController + 16));
    type metadata accessor for ObservableHostingController();
    sub_1BD1B6BA4(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
    sub_1BE048964();
    v212 = sub_1BE04D804();
    v213 = (v210 + *(v288 + 36));
    *v213 = v212;
    v213[1] = v211;
    sub_1BD0DE19C(v210, v289, &qword_1EBD3B198);
    v214 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C028));
    v215 = sub_1BE04F894();
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v216 = v215;
    v217 = sub_1BE052D54();
    v218 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v219 = swift_allocObject();
    v220 = v294;
    v219[2] = v218;
    v219[3] = v220;
    v219[4] = v216;
    v307 = sub_1BD1B6FF0;
    v308 = v219;
    aBlock = MEMORY[0x1E69E9820];
    v304 = 1107296256;
    v305 = sub_1BD126964;
    v306 = &block_descriptor_154;
    v221 = _Block_copy(&aBlock);
    v222 = v216;

    v223 = v298;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v224 = v295;
    v225 = v296;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v223, v224, v221);
    _Block_release(v221);

    (*(v297 + 8))(v224, v225);
    (*(v275 + 8))(v223, v274);

    sub_1BD0DE53C(v210, &qword_1EBD3B198);
LABEL_12:

    return;
  }

  v172 = [v56 savingsDetails];
  if (!v172)
  {
    v231 = v278;
    sub_1BE04D1E4();
    v232 = sub_1BE04D204();
    v233 = sub_1BE052C34();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      *v234 = 0;
      _os_log_impl(&dword_1BD026000, v232, v233, "Attempted to present FCC step up without account details", v234, 2u);
      MEMORY[0x1BFB45F20](v234, -1, -1);
    }

    (v293)[1](v231, v292);
    goto LABEL_54;
  }

  v173 = v172;
  if (([v172 fccStepUpRequired] & 1) == 0 || objc_msgSend(v276, sel_state) == 4)
  {
    v174 = v282;
    sub_1BE04D1E4();
    v175 = sub_1BE04D204();
    v176 = sub_1BE052C34();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&dword_1BD026000, v175, v176, "Attempted to present FCC step up when its no longer required", v177, 2u);
      MEMORY[0x1BFB45F20](v177, -1, -1);
    }

    (v293)[1](v174, v292);

    return;
  }

  v235 = type metadata accessor for SavingsFCCStepUpController();
  v236 = objc_allocWithZone(v235);
  *&v236[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
  v237 = v276;
  *&v236[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v276;
  v302.receiver = v236;
  v302.super_class = v235;
  v238 = v237;
  v239 = objc_msgSendSuper2(&v302, sel_init);
  v240 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v241 = swift_allocObject();
  v241[2] = v240;
  v241[3] = sub_1BD1B6B08;
  v241[4] = v277;
  v242 = *&v239[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
  swift_retain_n();
  swift_retain_n();
  v243 = [v242 savingsDetails];
  if (!v243)
  {

    __break(1u);
    goto LABEL_71;
  }

  v244 = v243;
  v245 = [v243 fccStepUpDetails];

  if (!v245 || (v246 = [v245 thresholdExceeded], v245, (v246 & 1) == 0))
  {
    v267 = swift_allocObject();
    *(v267 + 16) = sub_1BD1B6B88;
    *(v267 + 24) = v241;
    sub_1BE048964();
    v268 = sub_1BD8BD4F8();
    if (v268)
    {
      v269 = v268;
      v270 = swift_allocObject();
      *(v270 + 16) = sub_1BD1B6B94;
      *(v270 + 24) = v267;
      v307 = sub_1BD1B6B9C;
      v308 = v270;
      aBlock = MEMORY[0x1E69E9820];
      v304 = 1107296256;
      v305 = sub_1BD14E1D8;
      v306 = &block_descriptor_167;
      v271 = _Block_copy(&aBlock);
      sub_1BE048964();

      [v269 nextViewControllerWithCompletion_];

      _Block_release(v271);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v273 = Strong;
        [Strong pkui_userInterfaceIdiomSupportsLargeLayouts];
      }

      else
      {
      }
    }

    return;
  }

  v247 = type metadata accessor for SavingsFCCStepUpClosureViewController();
  v248 = objc_allocWithZone(v247);
  *&v248[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v239;
  v301.receiver = v248;
  v301.super_class = v247;
  v249 = v239;
  v250 = objc_msgSendSuper2(&v301, sel_initWithContext_, 0);
  if (!v250)
  {
LABEL_71:

    __break(1u);
    return;
  }

  v251 = v250;
  v291 = v249;
  v293 = v238;
  v299 = v173;
  v252 = objc_allocWithZone(PKNavigationController);
  v292 = v251;
  v253 = [v252 initWithRootViewController_];
  swift_beginAccess();
  v254 = swift_unknownObjectWeakLoadStrong();
  if (v254)
  {
    v255 = v254;
    v256 = [v254 pkui_userInterfaceIdiomSupportsLargeLayouts];

    if (v256)
    {
      [v253 setModalPresentationStyle_];
    }
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v257 = v253;
  v258 = sub_1BE052D54();
  v259 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v260 = swift_allocObject();
  v261 = v294;
  v260[2] = v259;
  v260[3] = v261;
  v260[4] = v257;
  v307 = sub_1BD1B6FF0;
  v308 = v260;
  aBlock = MEMORY[0x1E69E9820];
  v304 = 1107296256;
  v305 = sub_1BD126964;
  v306 = &block_descriptor_175;
  v262 = _Block_copy(&aBlock);
  v263 = v257;

  v264 = v298;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v265 = v295;
  v266 = v296;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v264, v265, v262);
  _Block_release(v262);

  (*(v297 + 8))(v265, v266);
  (*(v275 + 8))(v264, v274);
}

uint64_t sub_1BD1B5DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1B5E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_1BD1B6140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BD1B61AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD1B6214(void *a1, void (**a2)(void, void))
{
  v74 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v73 = sub_1BE04D214();
  v3 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v4);
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_1BE04BD74();
  v7 = *(v76 - 8);
  v9 = MEMORY[0x1EEE9AC00](v76, v8);
  v72 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v66[-v13];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v66[-v16];
  v75 = swift_allocObject();
  *(v75 + 16) = a2;
  v18 = objc_allocWithZone(MEMORY[0x1E696EE50]);
  v71 = a2;
  _Block_copy(a2);
  v19 = [v18 init];
  v77 = 0;
  v20 = [v19 canEvaluatePolicy:2 error:&v77];
  v21 = v77;
  if (!v20)
  {
    v50 = v77;
    sub_1BE04D194();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v19;
      v55 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v55 = v21;
      v56 = v50;
      _os_log_impl(&dword_1BD026000, v51, v52, "Cannot evaluate local authentication policy for Savings interstitial due to error: %@", v53, 0xCu);
      sub_1BD0DE53C(v55, &unk_1EBD3E590);
      v57 = v55;
      v19 = v54;
      MEMORY[0x1BFB45F20](v57, -1, -1);
      MEMORY[0x1BFB45F20](v53, -1, -1);
    }

    (*(v3 + 8))(v6, v73);
    if (v50)
    {
      v58 = v50;
      v59 = sub_1BE04A844();
    }

    else
    {
      v59 = 0;
    }

    v60 = v75;
    v45 = [objc_opt_self() displayableErrorForError:v59 featureIdentifier:5 genericErrorTitle:0 genericErrorMessage:0];

    if (v45)
    {
      v61 = v45;
      v62 = sub_1BE04A844();
    }

    else
    {
      v62 = 0;
    }

    v63 = swift_allocObject();
    *(v63 + 16) = sub_1BD1B6B00;
    *(v63 + 24) = v60;
    v81 = sub_1BD1B6F78;
    v82 = v63;
    v77 = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1BD126964;
    v80 = &block_descriptor_99;
    v64 = _Block_copy(&v77);
    sub_1BE048964();

    v65 = PKAlertForDisplayableErrorWithCancelHandler(v62, 0, v64);
    _Block_release(v64);

    if (v65)
    {
      [v74 presentViewController:v65 animated:1 completion:0];
    }

    else
    {
      v71[2](v71, 0);
    }

    goto LABEL_18;
  }

  v73 = v14;
  v70 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v77 = 1021;
  v69 = v21;
  sub_1BE0537C4();
  v23 = v7;
  v24 = *(v7 + 104);
  v24(v17, *MEMORY[0x1E69B80D0], v76);
  v25 = PKPassKitBundle();
  if (!v25)
  {
    _Block_release(v71);
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = sub_1BE04B6F4();
  v29 = v28;

  v30 = *(v23 + 8);
  v30(v17, v76);
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 72) = v27;
  *(inited + 80) = v29;
  v77 = 1037;
  sub_1BE0537C4();
  v31 = v73;
  v67 = *MEMORY[0x1E69B80E0];
  v68 = v24;
  (v24)(v73);
  v32 = PKPassKitBundle();
  if (!v32)
  {
LABEL_20:
    _Block_release(v71);
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = sub_1BE04B6F4();
  v36 = v35;

  v30(v31, v76);
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = v34;
  *(inited + 152) = v36;
  v77 = 1031;
  sub_1BE0537C4();
  v37 = sub_1BE052404();
  v38 = PKDeviceSpecificLocalizedStringKeyForKey(v37, 0);

  if (!v38)
  {
LABEL_21:
    _Block_release(v71);
    __break(1u);
    goto LABEL_22;
  }

  sub_1BE052434();

  v39 = v72;
  v68(v72, v67, v76);
  v40 = PKPassKitBundle();
  if (v40)
  {
    v41 = v40;
    v42 = sub_1BE04B6F4();
    v44 = v43;

    v30(v39, v76);
    *(inited + 240) = MEMORY[0x1E69E6158];
    *(inited + 216) = v42;
    *(inited + 224) = v44;
    sub_1BD1AB16C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0);
    swift_arrayDestroy();
    v45 = sub_1BE052224();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = sub_1BD1B6B00;
    v47[4] = v75;
    v81 = sub_1BD1B6F70;
    v82 = v47;
    v77 = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1BD1AA864;
    v80 = &block_descriptor_107;
    v48 = _Block_copy(&v77);
    sub_1BE048964();

    v49 = v70;
    [v70 evaluatePolicy:2 options:v45 reply:v48];

    _Block_release(v48);

    v19 = v69;
LABEL_18:

    return;
  }

LABEL_22:
  _Block_release(v71);
  __break(1u);
}

uint64_t sub_1BD1B6BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_120Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_134Tm()
{
  v1 = sub_1BE04A474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1BD1B6E24(uint64_t a1)
{
  v3 = *(sub_1BE04A474() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD1A9650(a1, v9, v10, v1 + v4, v7, v8, v11);
}

void sub_1BD1B6FF8()
{
  sub_1BD1B7F00();
  if (v0 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v1 <= 0x3F)
    {
      sub_1BD0FA9D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD1B70B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1BE04CF34() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 40) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v73 = sub_1BE04DA84();
  v9 = *(v73 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  v14 = *(sub_1BE04AF64() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 - 1;
  if (v13 <= v18 - 1)
  {
    v20 = v18 - 1;
  }

  else
  {
    v20 = v13;
  }

  if (v17 <= 0x7FFFFFFD)
  {
    v21 = 2147483645;
  }

  else
  {
    v21 = v17;
  }

  v22 = v21 - 1;
  if (v20 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = v24 - 1;
  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = *(v27 + 84);
  v30 = v29 - 1;
  if (!v29)
  {
    v30 = 0;
  }

  if (v25 <= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v24 - 1;
  }

  if (v31 <= 0x7FFFFFFF)
  {
    v32 = 0x7FFFFFFF;
  }

  else
  {
    v32 = v31;
  }

  v33 = *(v14 + 64);
  if (v16)
  {
    v34 = v33;
  }

  else
  {
    v34 = v33 + 1;
  }

  v35 = *(v9 + 80);
  v36 = *(v15 + 80);
  v37 = *(v9 + 64);
  v38 = *(v27 + 80);
  v39 = *(v27 + 64);
  if (v29)
  {
    v40 = v39;
  }

  else
  {
    v40 = v39 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v41 = v36 | 7;
  v42 = v35 | v6 | v36;
  v43 = v42 | 7;
  v72 = v42 + 8;
  v71 = (v35 | 7) + v8 + 2;
  v70 = ((((((v37 + ((v35 + 16) & ~v35) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (v36 | 7) + 16;
  v69 = ((v36 + 10) & ~v36) + v34 + 7;
  v44 = ((((((v42 + 8) & ~(v42 | 7)) + ((((v34 + ((v34 + v36 + ((v36 + 113) & ~v36)) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v36 + 8 + ((((v69 + ((v70 + (v71 & ~(v35 | 7))) & ~(v36 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v36 | 7)) + 119) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v32 < a2)
  {
    v45 = ((v40 + ((v44 + v38 + ((v42 + 16) & ~v43)) & ~v38)) & 0xFFFFFFFFFFFFFFF8) + 24;
    if ((v45 & 0xFFFFFFF8) != 0)
    {
      v46 = 2;
    }

    else
    {
      v46 = a2 - v32 + 1;
    }

    if (v46 >= 0x10000)
    {
      v47 = 4;
    }

    else
    {
      v47 = 2;
    }

    if (v46 < 0x100)
    {
      v47 = 1;
    }

    if (v46 >= 2)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v49 = *(a1 + v45);
        if (*(a1 + v45))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v49 = *(a1 + v45);
        if (v49)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v48)
    {
      v49 = *(a1 + v45);
      if (*(a1 + v45))
      {
LABEL_55:
        v50 = v49 - 1;
        if ((v45 & 0xFFFFFFF8) != 0)
        {
          v50 = 0;
          v51 = *a1;
        }

        else
        {
          v51 = 0;
        }

        return v32 + (v51 | v50) + 1;
      }
    }
  }

  if ((v31 & 0x80000000) != 0)
  {
    v54 = ((a1 + v43 + 16) & ~v43);
    if (v25 == v32)
    {
      if ((v23 & 0x80000000) == 0)
      {
        v55 = *v54;
        if (*v54 >= 0xFFFFFFFF)
        {
          LODWORD(v55) = -1;
        }

        v56 = v55 + 1;
        goto LABEL_105;
      }

      v58 = (v71 + ((v54 + v72) & ~v43)) & ~(v35 | 7);
      if (v13 == v24)
      {
        if ((v11 & 0x80000000) != 0)
        {
          v60 = (*(v10 + 48))((v35 + 16 + v58) & ~v35, v11, v73);
        }

        else
        {
          v59 = *(((v71 + ((v54 + v72) & ~v43)) & ~(v35 | 7)) + 8);
          if (v59 >= 0xFFFFFFFF)
          {
            LODWORD(v59) = -1;
          }

          v60 = v59 + 1;
        }

        v56 = v60 - 1;
        if (v60 < 2)
        {
          v56 = 0;
        }

        goto LABEL_105;
      }

      v61 = ~v41;
      v62 = ((v70 + v58) & ~v41);
      if (v19 == v24)
      {
        if ((v17 & 0x80000000) == 0)
        {
          v63 = *v62;
          if (*v62 >= 0xFFFFFFFF)
          {
            LODWORD(v63) = -1;
          }

          v64 = v63 + 1;
LABEL_102:
          if (v64 >= 2)
          {
            v56 = v64 - 1;
          }

          else
          {
            v56 = 0;
          }

LABEL_105:
          if (v56 >= 2)
          {
            return v56 - 1;
          }

          else
          {
            return 0;
          }
        }

        v68 = v62 + v36 + 10;
      }

      else
      {
        v65 = (v36 + 8 + ((((v62 + v69) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v61;
        if (v17 <= 0x7FFFFFFD)
        {
          v66 = *(v65 + 16);
          if (v66 >= 0xFFFFFFFF)
          {
            LODWORD(v66) = -1;
          }

          v64 = v66 - 1;
          if (v64 < 0)
          {
            v64 = -1;
          }

          v67 = v64 + 1;
          goto LABEL_100;
        }

        v68 = v36 + 113 + v65;
      }

      v67 = (*(v15 + 48))(v68 & ~v36);
      v64 = v67 - 1;
LABEL_100:
      if (v67 < 2)
      {
        v64 = 0;
      }

      goto LABEL_102;
    }

    if (v29 >= 2)
    {
      v57 = (*(v28 + 48))((v54 + v38 + v44) & ~v38, v29, v26);
      if (v57 >= 2)
      {
        return v57 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v52 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v52) = -1;
  }

  return (v52 + 1);
}

void sub_1BD1B7668(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1BE04CF34() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 40) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1BE04DA84() - 8);
  v89 = v9;
  v10 = *(v9 + 84);
  v78 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  v82 = v10;
  v11 = v10 - 1;
  v12 = 0;
  v13 = *(sub_1BE04AF64() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v80 = v17;
  v18 = v17 - 1;
  v81 = v18;
  if (v11 > v18)
  {
    v18 = v11;
  }

  if (v16 <= 0x7FFFFFFD)
  {
    v19 = 2147483645;
  }

  else
  {
    v19 = v16;
  }

  v79 = v19;
  v20 = v19 - 1;
  if (v18 <= v20)
  {
    v18 = v20;
  }

  v83 = v11;
  v84 = v18;
  if (v18 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v18;
  }

  v85 = *(a4 + 16);
  v22 = *(v85 - 8);
  v23 = *(v22 + 84);
  v24 = *(v13 + 64);
  v25 = *(v9 + 80);
  v76 = v14;
  v26 = *(v14 + 80);
  v27 = *(v22 + 80);
  v86 = v21;
  v28 = v21 - 1;
  v29 = v23 - 1;
  if (!v23)
  {
    v29 = 0;
  }

  if (v28 <= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v21 - 1;
  }

  if (v30 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v30;
  }

  if (v15)
  {
    v32 = v24;
  }

  else
  {
    v32 = v24 + 1;
  }

  v33 = v25 | v6;
  v34 = v26 | 7;
  v35 = v33 | v26;
  v36 = v35 | 7;
  v37 = v35 + 8;
  v38 = (v25 | 7) + v8 + 2;
  v39 = ((((((*(v9 + 64) + ((v25 + 16) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v40 = v39 + (v26 | 7);
  v77 = ((v26 + 10) & ~v26) + v32;
  v41 = (v26 + 8 + ((((v77 + 7 + ((v40 + (v38 & ~(v25 | 7))) & ~(v26 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v26 | 7);
  v42 = ((v32 + v26 + ((v26 + 113) & ~v26)) & ~v26) + v32;
  v43 = (v35 + 8) & ~(v35 | 7);
  v44 = ((((v43 + ((((v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v41 + 119) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v45 = (v44 + v27 + ((v35 + 16) & ~(v35 | 7))) & ~v27;
  if (v23)
  {
    v46 = *(*(v85 - 8) + 64);
  }

  else
  {
    v46 = *(*(v85 - 8) + 64) + 1;
  }

  v47 = ((v45 + v46) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v31 < a3)
  {
    if (((v45 + v46) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v48 = a3 - v31 + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v12 = v49;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v31)
  {
    if (v47)
    {
      v50 = 1;
    }

    else
    {
      v50 = a2 - v31;
    }

    if (v47)
    {
      v51 = ~v31 + a2;
      bzero(a1, v47);
      *a1 = v51;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v47) = v50;
      }

      else
      {
        *(a1 + v47) = v50;
      }
    }

    else if (v12)
    {
      *(a1 + v47) = v50;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v47) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_66;
    }

    *(a1 + v47) = 0;
  }

  else if (v12)
  {
    *(a1 + v47) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_66;
  }

  if (!a2)
  {
    return;
  }

LABEL_66:
  if ((v30 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }

    return;
  }

  v52 = ((a1 + v36 + 16) & ~v36);
  if (v28 == v31)
  {
    if (a2 >= v86)
    {
      v56 = (((v43 + ((((v42 + 7) & 0xFFFFFFF8) + v41 + 119) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8;
      if (v56 != -8)
      {
        bzero(((a1 + v36 + 16) & ~v36), (v56 + 8));
        *v52 = a2 - v86;
      }
    }

    else
    {
      v53 = a2 + 1;
      if ((v84 & 0x80000000) == 0)
      {
        if ((v53 & 0x80000000) != 0)
        {
          v54 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v54 = a2;
        }

        *v52 = v54;
        return;
      }

      v57 = ((v38 + ((v52 + v37) & ~v36)) & ~(v25 | 7));
      if (v83 == v86)
      {
        v58 = a2 + 2;
        if (v58 > v82)
        {
          if (v39)
          {
            v59 = v53 - v82;
            bzero(v57, v39);
            *v57 = v59;
          }

          return;
        }

        if ((v78 & 0x80000000) == 0)
        {
          if ((v58 & 0x80000000) != 0)
          {
            *v57 = a2 - 2147483646;
            v57[1] = 0;
          }

          else
          {
            v57[1] = v53;
          }

          return;
        }

        v69 = *(v89 + 56);
        v70 = (v57 + v25 + 16) & ~v25;
        goto LABEL_141;
      }

      v60 = ~v26;
      v61 = (v57 + v40) & ~v34;
      if (v81 == v86)
      {
        v62 = a2 + 2;
        if (a2 + 2 > v80)
        {
          if (v77 <= 3)
          {
            v63 = ~(-1 << (8 * v77));
          }

          else
          {
            v63 = -1;
          }

          if (v77)
          {
            v64 = v63 & (v53 - v80);
            if (v77 <= 3)
            {
              v65 = ((v26 + 10) & ~v26) + v32;
            }

            else
            {
              v65 = 4;
            }

            bzero(((v57 + v40) & ~v34), v77);
            if (v65 > 2)
            {
              if (v65 == 3)
              {
                *v61 = v64;
                *(v61 + 2) = BYTE2(v64);
              }

              else
              {
                *v61 = v64;
              }
            }

            else if (v65 == 1)
            {
              *v61 = v64;
            }

            else
            {
              *v61 = v64;
            }
          }

          return;
        }

        if ((v16 & 0x80000000) == 0)
        {
          if ((v62 & 0x80000000) != 0)
          {
            v53 = a2 - 2147483646;
          }

          *v61 = v53;
          return;
        }

        v71 = ((v26 + 10 + v61) & v60);
        if (v62 > v16)
        {
          if (v32 <= 3)
          {
            v75 = ~(-1 << (8 * v32));
          }

          else
          {
            v75 = -1;
          }

          if (!v32)
          {
            return;
          }

          v73 = v75 & (v53 - v16);
          if (v32 <= 3)
          {
            v74 = v32;
          }

          else
          {
            v74 = 4;
          }

          bzero(v71, v32);
          if (v74 <= 2)
          {
            if (v74 != 1)
            {
              goto LABEL_139;
            }

            goto LABEL_127;
          }

          goto LABEL_149;
        }

        goto LABEL_140;
      }

      v66 = ((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34);
      if (a2 + 2 <= v79)
      {
        if (v16 <= 0x7FFFFFFD)
        {
          if (a2 > 0x7FFFFFFB)
          {
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 8) = 0u;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x38) = 0;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x28) = 0u;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x18) = 0u;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 8) = a2 - 2147483644;
          }

          else
          {
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x10) = a2 + 3;
          }

          return;
        }

        v71 = ((v66 + v26 + 113) & v60);
        if (a2 + 2 > v16)
        {
          if (v32 <= 3)
          {
            v72 = ~(-1 << (8 * v32));
          }

          else
          {
            v72 = -1;
          }

          if (!v32)
          {
            return;
          }

          v73 = v72 & (v53 - v16);
          if (v32 <= 3)
          {
            v74 = v32;
          }

          else
          {
            v74 = 4;
          }

          bzero(v71, v32);
          if (v74 <= 2)
          {
            if (v74 != 1)
            {
LABEL_139:
              *v71 = v73;
              return;
            }

LABEL_127:
            *v71 = v73;
            return;
          }

LABEL_149:
          if (v74 == 3)
          {
            *v71 = v73;
            v71[2] = BYTE2(v73);
          }

          else
          {
            *v71 = v73;
          }

          return;
        }

LABEL_140:
        v69 = *(v76 + 56);
        v58 = a2 + 3;
        v70 = v71;
LABEL_141:

        v69(v70, v58);
        return;
      }

      v67 = (v42 + 7) & 0xFFFFFFF8;
      if (v67 != -8)
      {
        v68 = v53 - v79;
        bzero(v66, (v67 + 8));
        *v66 = v68;
      }
    }
  }

  else if (v23 >= 2)
  {
    v55 = *(v22 + 56);

    v55((v52 + v27 + v44) & ~v27, a2 + 1, v23, v85);
  }
}

void sub_1BD1B7F00()
{
  if (!qword_1EBD36458)
  {
    type metadata accessor for PeerPaymentModel();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36458);
    }
  }
}

uint64_t sub_1BD1B7F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60);
  v6 = *(a1 + 16);
  v7 = sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8);
  v8 = sub_1BD1B9AAC();
  v9 = *(a1 + 24);
  v57 = MEMORY[0x1E6981748];
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v48 = v6;
  v61 = MEMORY[0x1E6981710];
  v62 = v7;
  v63 = v8;
  v64 = v9;
  v47 = v9;
  sub_1BE04C6F4();
  sub_1BE0500D4();
  v10 = sub_1BE04EBD4();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v46 = &v46 - v17;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1BD0F15A0();
  v55 = WitnessTable;
  v56 = v19;
  v50 = swift_getWitnessTable();
  v20 = sub_1BE051754();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v46 - v27;
  v29 = sub_1BE04F9B4();
  v30 = a1;
  v49 = v29;
  v31 = *(v29 - 8);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v52 = &v46 - v35;
  v36 = *&v2[*(v33 + 48)];
  if (v36)
  {
    v46 = &v46;
    MEMORY[0x1EEE9AC00](v33, v34);
    v37 = v47;
    *(&v46 - 4) = v48;
    *(&v46 - 3) = v37;
    *(&v46 - 2) = v2;
    sub_1BD0D44B8(v36);
    sub_1BE048964();
    v48 = v31;
    v38 = v50;
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308(v25);
    v39 = *(v21 + 8);
    v39(v25, v20);
    sub_1BD147308(v28);
    v40 = v38;
    v31 = v48;
    sub_1BD13A700(v25, v20);
    sub_1BD0D4744(v36);
    v39(v25, v20);
    v39(v28, v20);
  }

  else
  {
    sub_1BD1B8770(v33, v15);
    v41 = v46;
    v40 = v50;
    sub_1BD147308(v15);
    v42 = *(v11 + 8);
    v42(v15, v10);
    sub_1BD147308(v41);
    swift_getWitnessTable();
    sub_1BD13A7F8(v15, v20, v10);
    v42(v15, v10);
    v42(v41, v10);
  }

  v53 = swift_getWitnessTable();
  v54 = v40;
  v43 = v49;
  swift_getWitnessTable();
  v44 = v52;
  sub_1BD147308(v52);
  return (*(v31 + 1))(v44, v43);
}

uint64_t sub_1BD1B8524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60);
  v7 = sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8);
  v8 = sub_1BD1B9AAC();
  v23[2] = MEMORY[0x1E6981748];
  v23[3] = v5;
  v23[4] = v6;
  v23[5] = a2;
  v23[6] = MEMORY[0x1E6981710];
  v23[7] = v7;
  v23[8] = v8;
  v23[9] = a3;
  sub_1BE04C6F4();
  sub_1BE0500D4();
  v9 = sub_1BE04EBD4();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v23 - v16;
  v18 = type metadata accessor for BankAccountMainItem();
  sub_1BD1B8770(v18, v14);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1BD0F15A0();
  v23[0] = WitnessTable;
  v23[1] = v20;
  swift_getWitnessTable();
  sub_1BD147308(v14);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_1BD147308(v17);
  return (v21)(v17, v9);
}

uint64_t sub_1BD1B8770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = sub_1BE04C624();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v4);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE04C744();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8);
  v39 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60);
  v38 = v9;
  v10 = *(a1 + 16);
  v11 = sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8);
  v37 = v11;
  v36 = sub_1BD1B9AAC();
  v12 = *(a1 + 24);
  v60 = MEMORY[0x1E6981748];
  v61 = v8;
  v62 = v9;
  v63 = v10;
  v64 = MEMORY[0x1E6981710];
  v65 = v11;
  v66 = v36;
  v67 = v12;
  v13 = sub_1BE04C6F4();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  sub_1BE0500D4();
  v17 = sub_1BE04EBD4();
  v46 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v35 - v23;
  v55 = v10;
  v56 = v12;
  v57 = v2;
  v52 = v10;
  v53 = v12;
  v25 = *(v2 + *(a1 + 48));
  v26 = *(v41 + 104);
  v54 = v2;
  if (v25)
  {
    v27 = MEMORY[0x1E69BC950];
  }

  else
  {
    v27 = MEMORY[0x1E69BC940];
  }

  v26(v40, *v27, v42);
  v49 = v10;
  v50 = v12;
  v28 = *(v2 + *(a1 + 44));
  v29 = *(v45 + 104);
  v51 = v2;
  if (v28)
  {
    v30 = MEMORY[0x1E69BC910];
  }

  else
  {
    v30 = MEMORY[0x1E69BC908];
  }

  v29(v43, *v30, v47);
  sub_1BE04C684();
  sub_1BE052434();
  WitnessTable = swift_getWitnessTable();
  sub_1BE050DE4();

  (*(v44 + 8))(v16, v13);
  v32 = sub_1BD0F15A0();
  v58 = WitnessTable;
  v59 = v32;
  swift_getWitnessTable();
  sub_1BD147308(v21);
  v33 = *(v46 + 8);
  v33(v21, v17);
  sub_1BD147308(v24);
  return (v33)(v24, v17);
}

uint64_t sub_1BD1B8D4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = PKPassKitUIBundle();
  result = sub_1BE0515F4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD1B8DA4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E0);
  return sub_1BD1B8E14(a1 + *(v2 + 44));
}

uint64_t sub_1BD1B8E14@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0F0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v24 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v24 - v18;
  type metadata accessor for BankAccountMainItem();
  sub_1BD1B9104();
  sub_1BE052434();
  sub_1BD1B9BC4();
  sub_1BE050DE4();

  sub_1BD0DE53C(v4, &qword_1EBD3C0E8);
  sub_1BD1B92F0();
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DE53C(v4, &qword_1EBD3C0E8);
  sub_1BD0DE19C(v19, v12, &qword_1EBD3C0F0);
  v20 = v24;
  sub_1BD0DE19C(v16, v24, &qword_1EBD3C0F0);
  v21 = v25;
  sub_1BD0DE19C(v12, v25, &qword_1EBD3C0F0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C110);
  sub_1BD0DE19C(v20, v21 + *(v22 + 48), &qword_1EBD3C0F0);
  sub_1BD0DE53C(v16, &qword_1EBD3C0F0);
  sub_1BD0DE53C(v19, &qword_1EBD3C0F0);
  sub_1BD0DE53C(v20, &qword_1EBD3C0F0);
  return sub_1BD0DE53C(v12, &qword_1EBD3C0F0);
}

uint64_t sub_1BD1B9104()
{
  v1 = [*v0 bankName];
  if (v1)
  {
    v2 = v1;
    sub_1BE052434();
  }

  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  sub_1BE050324();
  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;

  sub_1BD0DDF10(v3, v5, v7 & 1);

  sub_1BE051224();
  v13 = sub_1BE050564();
  v15 = v14;
  v17 = v16;

  sub_1BD0DDF10(v8, v10, v12 & 1);

  swift_getKeyPath();
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v13, v15, v17 & 1);
}

uint64_t sub_1BD1B92F0()
{
  sub_1BD41F634(*v0);
  sub_1BD0DDEBC();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  sub_1BE0502C4();
  v6 = sub_1BE0505F4();
  v8 = v7;
  v10 = v9;

  sub_1BD0DDF10(v1, v3, v5 & 1);

  sub_1BE051234();
  v11 = sub_1BE050564();
  v13 = v12;
  v15 = v14;

  sub_1BD0DDF10(v6, v8, v10 & 1);

  swift_getKeyPath();
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v11, v13, v15 & 1);
}

uint64_t sub_1BD1B94A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v48 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v7);
  v51 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for PeerPaymentModel();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BankAccountMainItem();
  sub_1BD0DE19C(a1 + *(v18 + 36), v12, &qword_1EBD45480);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD45480);
LABEL_8:
    v43 = 1;
    v44 = v55;
    return (*(v6 + 56))(v44, v43, 1, v54);
  }

  sub_1BD1B9B60(v12, v17);
  if (v17[*(v13 + 52)] != 1)
  {
    sub_1BD1104F4(v17);
    goto LABEL_8;
  }

  v19 = *(a1 + 8);
  if (v19 && (v20 = [v19 formattedStringValue]) != 0)
  {
    v21 = v20;
    v22 = sub_1BE052434();
    v24 = v23;

    v56 = v22;
    v57 = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    LOBYTE(v24) = v28;
    sub_1BE0502C4();
    v49 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;

    sub_1BD0DDF10(v25, v27, v24 & 1);

    sub_1BE051234();
    v33 = v49;
    v34 = sub_1BE050564();
    v36 = v35;
    LOBYTE(v27) = v37;
    v48 = v38;

    sub_1BD0DDF10(v33, v30, v32 & 1);

    v56 = v34;
    v57 = v36;
    v39 = v36;
    v58 = v27 & 1;
    v59 = v48;
    sub_1BE052434();
    v40 = v50;
    sub_1BE050DE4();

    sub_1BD0DDF10(v34, v39, v27 & 1);

    sub_1BD1104F4(v17);
    v41 = v51;
    sub_1BD0DE204(v40, v51, &qword_1EBD452C0);
    v42 = 0;
  }

  else
  {
    sub_1BD1104F4(v17);
    v42 = 1;
    v41 = v51;
  }

  (*(v52 + 56))(v41, v42, 1, v53);
  v45 = v41;
  v46 = v55;
  sub_1BD0DE204(v45, v55, &unk_1EBD5BB60);
  v44 = v46;
  v43 = 0;
  return (*(v6 + 56))(v44, v43, 1, v54);
}

uint64_t sub_1BD1B996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE0534B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  v10 = *(type metadata accessor for BankAccountMainItem() + 40);
  v12[1] = a3;
  swift_getWitnessTable();
  sub_1BD147308(a1 + v10);
  sub_1BD147308(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1BD1B9AAC()
{
  result = qword_1EBD3C0D8;
  if (!qword_1EBD3C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C0D8);
  }

  return result;
}

uint64_t sub_1BD1B9B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1B9BC4()
{
  result = qword_1EBD3C0F8;
  if (!qword_1EBD3C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0E8);
    sub_1BD1B9C50();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C0F8);
  }

  return result;
}

unint64_t sub_1BD1B9C50()
{
  result = qword_1EBD3C100;
  if (!qword_1EBD3C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C108);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C100);
  }

  return result;
}

uint64_t AccountAutomaticPaymentsSetupCompleteView.init(model:dismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BE051694();
  *a4 = v9;
  *(a4 + 8) = v10;
  result = sub_1BE051694();
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t AccountAutomaticPaymentsSetupCompleteView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C118);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C120);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v21[-v7];
  v9 = v0[1];
  v25 = *v0;
  v26 = v9;
  v27 = v0[2];
  v28 = *(v0 + 6);
  v23 = &v25;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C128);
  sub_1BD1BA234();
  sub_1BE04E304();
  v10 = swift_allocObject();
  v11 = v26;
  *(v10 + 16) = v25;
  *(v10 + 32) = v11;
  *(v10 + 48) = v27;
  *(v10 + 64) = v28;
  v12 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C158) + 36)];
  sub_1BE04E7B4();
  sub_1BD1BB688(&v25, v24);
  sub_1BE0528B4();
  *v12 = &unk_1BE0BDF40;
  v12[1] = v10;
  v13 = swift_allocObject();
  v14 = v26;
  *(v13 + 16) = v25;
  *(v13 + 32) = v14;
  *(v13 + 48) = v27;
  *(v13 + 64) = v28;
  v15 = &v4[*(v1 + 36)];
  sub_1BD1BB688(&v25, v24);
  sub_1BE0528B4();
  *v15 = &unk_1BE0BDF58;
  v15[1] = v13;
  v22 = &v25;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160);
  sub_1BD1BC00C();
  v16 = sub_1BD1BC1B0();
  v24[0] = &type metadata for SetupFooterView;
  v24[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE050954();
  sub_1BD0DE53C(v4, &qword_1EBD3C118);
  v17 = sub_1BE04EC54();
  v18 = sub_1BE0501F4();
  v19 = &v8[*(v5 + 36)];
  *v19 = v17;
  v19[8] = v18;
  sub_1BD1BC204();
  sub_1BE050E74();
  return sub_1BD0DE53C(v8, &qword_1EBD3C120);
}

uint64_t sub_1BD1BA0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1A0);
  sub_1BD1BA378(a1, a2 + *(v4 + 44));
  v5 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C140) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C128);
  v25 = a2 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

unint64_t sub_1BD1BA234()
{
  result = qword_1EBD3C130;
  if (!qword_1EBD3C130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C128);
    sub_1BD1BA2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C130);
  }

  return result;
}

unint64_t sub_1BD1BA2C0()
{
  result = qword_1EBD3C138;
  if (!qword_1EBD3C138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C140);
    sub_1BD0DE4F4(&qword_1EBD3C148, &qword_1EBD3C150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C138);
  }

  return result;
}

uint64_t sub_1BD1BA378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for SetupAttentionView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v62 - v10;
  v69 = sub_1BE04AA64();
  v12 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v13);
  v68 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1A8);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v75 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1B0);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v71 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v62 - v27;
  *v28 = sub_1BE04F504();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1B8);
  sub_1BD1BA9D8(a1, &v28[*(v29 + 44)]);
  v30 = *(a1 + 32);
  sub_1BDA2493C();
  *&v78 = v31;
  *(&v78 + 1) = v32;
  sub_1BD0DDEBC();
  v33 = sub_1BE0506C4();
  v72 = v34;
  v73 = v33;
  v70 = v35;
  v74 = v36;
  v78 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v37 = 1;
  if (v77 == 1)
  {
    sub_1BD1BC520();
    sub_1BE052C04();
    sub_1BE04AA54();

    if ((*(v12 + 48))(v11, 1, v69) == 1)
    {
      sub_1BD0DE53C(v11, &unk_1EBD3CF70);
      v37 = 1;
    }

    else
    {
      v66 = *(v12 + 32);
      v38 = v69;
      v66(v68, v11, v69);
      v39 = *(v30 + 48);
      v67 = v21;
      [v39 featureIdentifier];
      v40 = sub_1BE04C124();
      v64 = v41;
      v65 = v40;
      [v39 featureIdentifier];
      v42 = sub_1BE04C124();
      v62 = v43;
      v63 = v42;
      [v39 featureIdentifier];
      v44 = sub_1BE04C124();
      v46 = v45;
      v47 = *(v3 + 32);
      v66(&v7[v47], v68, v38);
      (*(v12 + 56))(&v7[v47], 0, 1, v38);
      *v7 = xmmword_1BE0BDEF0;
      *(v7 + 2) = 0;
      v7[24] = 0;
      v48 = v64;
      *(v7 + 4) = v65;
      *(v7 + 5) = v48;
      v49 = v62;
      *(v7 + 6) = v63;
      *(v7 + 7) = v49;
      *(v7 + 8) = v44;
      *(v7 + 9) = v46;
      v21 = v67;
      sub_1BD1BC56C(v7, v67);
      v37 = 0;
    }
  }

  (*(v4 + 56))(v21, v37, 1, v3);
  v50 = v71;
  sub_1BD0DE19C(v28, v71, &qword_1EBD3C1B0);
  v51 = v75;
  sub_1BD0DE19C(v21, v75, &qword_1EBD3C1A8);
  v52 = v76;
  sub_1BD0DE19C(v50, v76, &qword_1EBD3C1B0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1C0);
  v54 = v52 + v53[12];
  v55 = v28;
  v57 = v72;
  v56 = v73;
  *v54 = v73;
  *(v54 + 8) = v57;
  v58 = v70 & 1;
  *(v54 + 16) = v70 & 1;
  *(v54 + 24) = v74;
  v59 = v52 + v53[16];
  *v59 = 0x403A000000000000;
  *(v59 + 8) = 0;
  sub_1BD0DE19C(v51, v52 + v53[20], &qword_1EBD3C1A8);
  v60 = v52 + v53[24];
  *v60 = 0;
  *(v60 + 8) = 1;
  sub_1BD0D7F18(v56, v57, v58);
  sub_1BE048C84();
  sub_1BD0DE53C(v21, &qword_1EBD3C1A8);
  sub_1BD0DE53C(v55, &qword_1EBD3C1B0);
  sub_1BD0DE53C(v51, &qword_1EBD3C1A8);
  sub_1BD0DDF10(v56, v57, v58);

  return sub_1BD0DE53C(v50, &qword_1EBD3C1B0);
}

uint64_t sub_1BD1BA9D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v3 = sub_1BE051F34();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE051EF4();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v6);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v53 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1E0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v53 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1E8);
  v22 = MEMORY[0x1EEE9AC00](v54, v21);
  v60 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v53 - v25;
  v61 = a1;
  [*(*(a1 + 32) + 48) featureIdentifier];
  *&v69 = sub_1BE04C124();
  *(&v69 + 1) = v27;
  sub_1BD0DDEBC();
  v28 = sub_1BE0506C4();
  v57 = v29;
  v58 = v28;
  v55 = v30;
  v59 = v31;
  v32 = sub_1BE051574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1F0);
  sub_1BE04EA34();
  *v15 = v32;
  v33 = sub_1BE0503E4();
  KeyPath = swift_getKeyPath();
  v35 = (v15 + *(v12 + 36));
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = sub_1BD1BC5D0();
  sub_1BE050EA4();
  sub_1BD0DE53C(v15, &qword_1EBD3C1D8);
  v37 = *MEMORY[0x1E697E6C0];
  v38 = sub_1BE04EB24();
  (*(*(v38 - 8) + 104))(v11, v37, v38);
  sub_1BD1BC740(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    *&v69 = v12;
    *(&v69 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    sub_1BE050B34();
    sub_1BD0DE53C(v11, &qword_1EBD3C1D0);
    (*(v17 + 8))(v20, v16);
    v40 = v56;
    sub_1BE051EE4();
    v69 = *v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    v41 = v68;
    v42 = v63;
    sub_1BE051F24();
    v43 = &v26[*(v54 + 36)];
    v44 = sub_1BE050124();
    v46 = v65;
    v45 = v66;
    (*(v65 + 16))(&v43[*(v44 + 20)], v42, v66);
    sub_1BD1BC740(&qword_1EBD3C228, MEMORY[0x1E69820F0]);
    v47 = v64;
    sub_1BE051ED4();
    (*(v46 + 8))(v42, v45);
    (*(v62 + 8))(v40, v47);
    v43[*(v44 + 24)] = v41;
    v48 = v60;
    sub_1BD0DE19C(v26, v60, &qword_1EBD3C1E8);
    v49 = v67;
    v51 = v57;
    v50 = v58;
    *v67 = v58;
    v49[1] = v51;
    LOBYTE(v44) = v55 & 1;
    *(v49 + 16) = v55 & 1;
    v49[3] = v59;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C230);
    sub_1BD0DE19C(v48, v49 + *(v52 + 48), &qword_1EBD3C1E8);
    sub_1BD0D7F18(v50, v51, v44);
    sub_1BE048C84();
    sub_1BD0DE53C(v26, &qword_1EBD3C1E8);
    sub_1BD0DE53C(v48, &qword_1EBD3C1E8);
    sub_1BD0DDF10(v50, v51, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1BB0CC(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1BE053924();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB1C4, v4, v3);
}

uint64_t sub_1BD1BB1C4()
{
  v1 = sub_1BE053DB4();
  v3 = v2;
  sub_1BE053C44();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1BD1BB2A4;

  return sub_1BD60F4D4(v1, v3, 0, 0, 1);
}

uint64_t sub_1BD1BB2A4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1BD1BB444;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v9 = sub_1BD1BB460;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BD1BB460()
{
  *(v0 + 104) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB4EC, v2, v1);
}

uint64_t sub_1BD1BB4EC()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *v1;
  *(v0 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB588, v2, v3);
}

uint64_t sub_1BD1BB588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD1BB5F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD1BB0CC(v0 + 16);
}

uint64_t sub_1BD1BB6C0(uint64_t a1)
{
  v1[23] = a1;
  v1[24] = sub_1BE0528A4();
  v1[25] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[26] = v3;
  v1[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB75C, v3, v2);
}

uint64_t sub_1BD1BB75C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[28] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_1BD1BB8A0;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C198);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD1BD93C;
    v0[13] = &block_descriptor_17;
    v0[14] = v3;
    [v2 authorizationStatusWithCompletion_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD1BB8A0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB9A8, v2, v1);
}

uint64_t sub_1BD1BB9A8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  if (v2 != 1 || v1 == 2)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD1BBA5C, 0, 0);
  }
}

uint64_t sub_1BD1BBA5C()
{
  *(v0 + 232) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1BBAE8, v2, v1);
}

uint64_t sub_1BD1BBAE8()
{
  v1 = *(v0 + 184);

  *(v0 + 144) = *(v1 + 16);
  *(v0 + 80) = *(v1 + 16);
  *(v0 + 176) = *(v0 + 152);
  sub_1BD0DE19C(v0 + 176, v0 + 160, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v2 = *(v0 + 240);
  *(v0 + 160) = *(v0 + 144);
  *(v0 + 241) = (v2 & 1) == 0;
  sub_1BE0516B4();
  sub_1BD0DE53C(v0 + 144, &qword_1EBD54350);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1BD1BBBF0, v3, v4);
}

uint64_t sub_1BD1BBBF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD1BBC50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD126968;

  return sub_1BD1BB6C0(v0 + 16);
}

id sub_1BD1BBCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = sub_1BE04F714();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80D0], v7);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v17 = swift_allocObject();
    v18 = *(a1 + 16);
    *(v17 + 16) = *a1;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(a1 + 32);
    *(v17 + 64) = *(a1 + 48);
    sub_1BD1BB688(a1, v27);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EBDAB648;
    v20 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v20 != -1)
    {
      swift_once();
    }

    *&v23 = v14;
    *(&v23 + 1) = v16;
    *&v24 = v19;
    *(&v24 + 1) = qword_1EBDAB650;
    LOWORD(v25) = 0;
    *(&v25 + 1) = sub_1BD1BC4C4;
    *&v26[0] = v17;
    *(v26 + 8) = 0u;
    *(&v26[1] + 8) = 0u;
    *(&v26[2] + 8) = 0u;
    *(&v26[3] + 8) = 0u;
    *(&v26[4] + 8) = 0u;
    *(&v26[5] + 1) = 0;
    sub_1BE048964();
    sub_1BE04F704();
    sub_1BD1BC1B0();
    sub_1BE050CB4();
    (*(v3 + 8))(v6, v22);
    v27[6] = v26[3];
    v27[7] = v26[4];
    v27[8] = v26[5];
    v27[2] = v25;
    v27[3] = v26[0];
    v27[4] = v26[1];
    v27[5] = v26[2];
    v27[0] = v23;
    v27[1] = v24;
    return sub_1BD1BC4CC(v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1BC00C()
{
  result = qword_1EBD3C168;
  if (!qword_1EBD3C168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C118);
    sub_1BD1BC0C8();
    sub_1BD1BC740(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C168);
  }

  return result;
}

unint64_t sub_1BD1BC0C8()
{
  result = qword_1EBD3C170;
  if (!qword_1EBD3C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C158);
    sub_1BD0DE4F4(&qword_1EBD3C178, &qword_1EBD3C180);
    sub_1BD1BC740(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C170);
  }

  return result;
}

unint64_t sub_1BD1BC1B0()
{
  result = qword_1EBD3C188;
  if (!qword_1EBD3C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C188);
  }

  return result;
}

unint64_t sub_1BD1BC204()
{
  result = qword_1EBD3C190;
  if (!qword_1EBD3C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C160);
    sub_1BD1BC00C();
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C190);
  }

  return result;
}

uint64_t sub_1BD1BC340(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 delegate];
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      [v4 accountAutomaticPaymentsControllerDidSelectSetupCompletionDone_];
    }

    v3 = swift_unknownObjectRelease();
  }

  return (*(a1 + 40))(v3);
}

uint64_t sub_1BD1BC3D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BD1BC418(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

unint64_t sub_1BD1BC520()
{
  result = qword_1EBD3C1C8;
  if (!qword_1EBD3C1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3C1C8);
  }

  return result;
}

uint64_t sub_1BD1BC56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupAttentionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1BC5D0()
{
  result = qword_1EBD3C1F8;
  if (!qword_1EBD3C1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D8);
    sub_1BD1BC688();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C1F8);
  }

  return result;
}

unint64_t sub_1BD1BC688()
{
  result = qword_1EBD3C200;
  if (!qword_1EBD3C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1F0);
    sub_1BD0DE4F4(&qword_1EBD3C208, &qword_1EBD3C210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C200);
  }

  return result;
}

uint64_t sub_1BD1BC740(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BD1BC7A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD1BC7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD1BC868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v16 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C238);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v3);
  v5 = &v13 - v4;
  v23 = *(v2 + 16);
  v24 = v23;
  v18 = *(v2 + 40);
  LOBYTE(v19) = *(v2 + 56);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  sub_1BE051914();
  v17 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C240);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248);
  v8 = sub_1BD0DE4F4(&qword_1EBD3C250, &qword_1EBD3C240);
  v11 = sub_1BD0DDEBC();
  v12 = sub_1BD1BCD34();
  sub_1BE050C84();

  sub_1BD1BCDE4(&v24);
  *&v18 = v6;
  *(&v18 + 1) = MEMORY[0x1E69E6158];
  v19 = v7;
  v20 = v8;
  v21 = v11;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  v9 = v14;
  sub_1BE050844();
  return (*(v15 + 8))(v5, v9);
}

uint64_t sub_1BD1BCAF0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v15 - v7;
  v19 = *a1;
  v9 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v10 = v19;
    v18 = v19;
    v16 = v6;
    v11 = swift_allocObject();
    v12 = a1[1];
    *(v11 + 16) = *a1;
    *(v11 + 32) = v12;
    *(v11 + 48) = a1[2];
    *(v11 + 57) = *(a1 + 41);
    *(v11 + 80) = v10;
    *(v11 + 88) = v9;
    sub_1BD1BCE40(&v19, v17);
    sub_1BD1BCE40(&v19, v17);
    sub_1BD1BCEB0(a1, v17);
    sub_1BD0DDEBC();
    sub_1BE051744();
    (*(v16 + 32))(a2, v8, v4);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v14 = *(v6 + 56);

    return v14(a2, 1, 1, v4);
  }
}

unint64_t sub_1BD1BCD34()
{
  result = qword_1EBD3C258;
  if (!qword_1EBD3C258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C248);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C258);
  }

  return result;
}

uint64_t sub_1BD1BCE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD1BCEE8()
{
  v0 = sub_1BE04AA64();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = sub_1BE052404();
  v10 = PKTelephoneURLFromPhoneNumber();

  if (v10)
  {
    sub_1BE04A9F4();

    (*(v1 + 32))(v8, v5, v0);
    v11 = [objc_opt_self() sharedApplication];
    v12 = sub_1BE04A9C4();
    sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1BD1BD0CC();
    v13 = sub_1BE052224();

    [v11 openURL:v12 options:v13 completionHandler:0];

    (*(v1 + 8))(v8, v0);
  }
}

unint64_t sub_1BD1BD0CC()
{
  result = qword_1EBD37B90;
  if (!qword_1EBD37B90)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37B90);
  }

  return result;
}

uint64_t sub_1BD1BD124()
{
  swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();

  return *(v0 + 16);
}

uint64_t sub_1BD1BD198@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1BD1BD24C(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v4);
  sub_1BD1BDC70();
  sub_1BE04B584();
}

uint64_t sub_1BD1BD350()
{
  swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();

  return *(v0 + 25);
}

uint64_t sub_1BD1BD3C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1BD1BD438(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD1BDC70();
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD1BD538()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8960]) init];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD1BD6A8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C280);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD1BD93C;
    v0[13] = &block_descriptor_18;
    v0[14] = v3;
    [v2 hasValidSecurityConfigurationWithType:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1BD1BD6A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD1BD788, 0, 0);
}

uint64_t sub_1BD1BD788()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v1 + 24) & 1) != 0 || *(v1 + 16) != v2)
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v4 + 32) = 0;
    *(v0 + 80) = v1;
    sub_1BD1BDC70();
    sub_1BE04B584();
  }

  else
  {
    *(v1 + 24) = 0;
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  if (v3 == *(v5 + 25))
  {

    *(v5 + 25) = v3;
  }

  else
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v3;
    *(v0 + 80) = v5;
    sub_1BD1BDC70();
    sub_1BE04B584();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BD1BD93C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *(*(v5 + 64) + 40);
  *v6 = a2;
  *(v6 + 8) = a3;

  return MEMORY[0x1EEE6DED8](v5);
}

uint64_t HardwareConfigurationModel.updateHardwareConfigurationModel()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD1BD518();
}

Swift::String_optional __swiftcall HardwareConfigurationModel.securityErrorTitleMessage()()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  swift_getKeyPath();
  v20 = v0;
  sub_1BD1BDC70();
  sub_1BE04B594();

  if ((*(v0 + 24) & 1) == 0)
  {
    v10 = *(v0 + 16);
    if (v10 == 2)
    {
      (*(v2 + 104))(v5, *MEMORY[0x1E69B80F0], v1);
      v11 = PKPassKitBundle();
      if (v11)
      {
        v13 = v11;
        v14 = sub_1BE04B6F4();
        v16 = v17;
        v9 = v5;
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (v10 == 1)
    {
      (*(v2 + 104))(v9, *MEMORY[0x1E69B80F0], v1);
      v11 = PKPassKitBundle();
      if (v11)
      {
        v13 = v11;
        v14 = sub_1BE04B6F4();
        v16 = v15;
LABEL_9:

        (*(v2 + 8))(v9, v1);
        v11 = v14;
        v12 = v16;
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_13:
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

unint64_t sub_1BD1BDC70()
{
  result = qword_1EBD3C268;
  if (!qword_1EBD3C268)
  {
    type metadata accessor for HardwareConfigurationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C268);
  }

  return result;
}

uint64_t type metadata accessor for HardwareConfigurationModel()
{
  result = qword_1EBD3C270;
  if (!qword_1EBD3C270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String_optional __swiftcall HardwareConfigurationModel.securityErrorButtonTitle()()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  swift_getKeyPath();
  v20 = v0;
  sub_1BD1BDC70();
  sub_1BE04B594();

  if ((*(v0 + 24) & 1) == 0)
  {
    v10 = *(v0 + 16);
    if (v10 == 2)
    {
      (*(v2 + 104))(v5, *MEMORY[0x1E69B80F0], v1);
      v11 = PKPassKitBundle();
      if (v11)
      {
        v13 = v11;
        v14 = sub_1BE04B6F4();
        v16 = v17;
        v9 = v5;
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (v10 == 1)
    {
      (*(v2 + 104))(v9, *MEMORY[0x1E69B80F0], v1);
      v11 = PKPassKitBundle();
      if (v11)
      {
        v13 = v11;
        v14 = sub_1BE04B6F4();
        v16 = v15;
LABEL_9:

        (*(v2 + 8))(v9, v1);
        v11 = v14;
        v12 = v16;
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_13:
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t HardwareConfigurationModel.securityErrorButtonURL()@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();

  if ((*(v1 + 24) & 1) == 0)
  {
    v5 = *(v1 + 16);
    if (v5)
    {
      if (v5 == 2 || v5 == 1)
      {
        return sub_1BE04AA54();
      }
    }
  }

  v3 = sub_1BE04AA64();
  return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

uint64_t HardwareConfigurationModel.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26HardwareConfigurationModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HardwareConfigurationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26HardwareConfigurationModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD1BE178()
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

void sub_1BD1BE234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_1BD1BE294(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BD1BE310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2D0);
  MEMORY[0x1EEE9AC00](v43, v3);
  v42 = (&v39 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2D8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2E0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v39 = (&v39 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2C0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v41 = (&v39 - v17);
  v18 = sub_1BE04F3D4();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a1 + 48);
  v45 = a1;
  v24 = *(a1 + 40);
  v47 = v24;
  if (v48 != 1)
  {
    v29 = v21;
    sub_1BE048964();
    sub_1BE052C44();
    v30 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v47, &qword_1EBD5C6E0);
    (*(v19 + 8))(v23, v29);
    if (v46 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = sub_1BE04F504();
    v26 = v41;
    *v41 = v31;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v32 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2F0) + 44);
    v33 = sub_1BE04F7C4();
    v34 = v39;
    *v39 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2F8);
    sub_1BD1BE82C(0, v34 + *(v35 + 44));
    v36 = v40;
    sub_1BD0DE19C(v34, v40, &qword_1EBD3C2E0);
    sub_1BD0DE19C(v36, v32, &qword_1EBD3C2E0);
    v37 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C300) + 48);
    *v37 = 0;
    *(v37 + 8) = 0;
    sub_1BD0DE53C(v34, &qword_1EBD3C2E0);
    sub_1BD0DE53C(v36, &qword_1EBD3C2E0);
    v28 = &qword_1EBD3C2C0;
    sub_1BD0DE19C(v26, v8, &qword_1EBD3C2C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD1BEF98(&qword_1EBD3C2B8, &qword_1EBD3C2C0);
    goto LABEL_6;
  }

  if (v24)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25 = sub_1BE04F504();
  v26 = v42;
  *v42 = v25;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2E8);
  sub_1BD1BE82C(1, v26 + *(v27 + 44));
  v28 = &qword_1EBD3C2D0;
  sub_1BD0DE19C(v26, v8, &qword_1EBD3C2D0);
  swift_storeEnumTagMultiPayload();
  sub_1BD1BEF98(&qword_1EBD3C2B8, &qword_1EBD3C2C0);
LABEL_6:
  sub_1BD1BEF98(&qword_1EBD3C2C8, &qword_1EBD3C2D0);
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v26, v28);
}

void sub_1BD1BE82C(int a1@<W0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C308);
  v4 = v3 - 8;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v58 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v55 - v9;
  v11 = *v2;
  v12 = v2[1];
  v61 = v2[2];
  v62 = v11;
  v63 = v12;
  v13 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v55[1] = v13;
  v14 = sub_1BE0506C4();
  v16 = v15;
  LOBYTE(v13) = v17;
  sub_1BE051224();
  v18 = sub_1BE050564();
  v59 = v19;
  v60 = v20;
  v22 = v21;

  sub_1BD0DDF10(v14, v16, v13 & 1);

  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C310) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318) + 28);
  v25 = *MEMORY[0x1E6980FA8];
  v26 = sub_1BE050554();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v27 = v59;
  *v10 = v18;
  *(v10 + 1) = v27;
  v10[16] = v22 & 1;
  *(v10 + 3) = v60;
  KeyPath = swift_getKeyPath();
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C320) + 36)];
  *v29 = KeyPath;
  v29[8] = 1;
  v30 = swift_getKeyPath();
  v31 = &v10[*(v4 + 44)];
  *v31 = v30;
  *(v31 + 1) = 2;
  v31[16] = 0;
  v32 = sub_1BE052404();
  v33 = PKFormattedCurrencyStringFromNumber();

  if (v33)
  {
    v34 = v56;
    LODWORD(v61) = v56 & 1;
    v35 = sub_1BE052434();
    v37 = v36;

    v62 = v35;
    v63 = v37;
    v38 = sub_1BE0506C4();
    v40 = v39;
    v42 = v41;
    sub_1BE051234();
    v43 = sub_1BE050564();
    v45 = v44;
    LODWORD(v60) = v46;
    v48 = v47;

    sub_1BD0DDF10(v38, v40, v42 & 1);

    v49 = v58;
    sub_1BD0DE19C(v10, v58, &qword_1EBD3C308);
    v50 = v57;
    sub_1BD0DE19C(v49, v57, &qword_1EBD3C308);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C328);
    v52 = v50 + *(v51 + 48);
    *v52 = 0;
    *(v52 + 8) = v61;
    *(v52 + 9) = (v34 & 1) == 0;
    v53 = v50 + *(v51 + 64);
    *v53 = v43;
    *(v53 + 8) = v45;
    v54 = v60;
    LOBYTE(v50) = v60 & 1;
    *(v53 + 16) = v60 & 1;
    *(v53 + 24) = v48;
    sub_1BD0D7F18(v43, v45, v54 & 1);
    sub_1BE048C84();
    sub_1BD0DE53C(v10, &qword_1EBD3C308);
    sub_1BD0DDF10(v43, v45, v50);

    sub_1BD0DE53C(v49, &qword_1EBD3C308);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD1BEC20()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C288);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v19 - v8;
  v10 = v0[1];
  v19[0] = *v0;
  v19[1] = v10;
  v11 = v0[3];
  v19[2] = v0[2];
  v19[3] = v11;
  sub_1BD1BE310(v19, v19 - v8);
  v12 = sub_1BE050234();
  sub_1BE04E1F4();
  v13 = &v9[*(v6 + 36)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_1BE04FF44();
  sub_1BD1BEDCC();
  sub_1BE050D14();
  (*(v2 + 8))(v5, v1);
  return sub_1BD0DE53C(v9, &qword_1EBD3C288);
}

unint64_t sub_1BD1BEDCC()
{
  result = qword_1EBD3C290;
  if (!qword_1EBD3C290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C288);
    sub_1BD1BEE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C290);
  }

  return result;
}

unint64_t sub_1BD1BEE58()
{
  result = qword_1EBD3C298;
  if (!qword_1EBD3C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C2A0);
    sub_1BD1BEEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C298);
  }

  return result;
}

unint64_t sub_1BD1BEEDC()
{
  result = qword_1EBD3C2A8;
  if (!qword_1EBD3C2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C2B0);
    sub_1BD1BEF98(&qword_1EBD3C2B8, &qword_1EBD3C2C0);
    sub_1BD1BEF98(&qword_1EBD3C2C8, &qword_1EBD3C2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C2A8);
  }

  return result;
}

uint64_t sub_1BD1BEF98(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PaymentTotalAmountDetails()
{
  result = qword_1EBD3C348;
  if (!qword_1EBD3C348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1BF060()
{
  _s11TotalAmountVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1BF164(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD1BF164(319, &qword_1EBD3C358, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1BD1BF1B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD1BF164(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BD1BF1B4()
{
  result = qword_1EBD3C360;
  if (!qword_1EBD3C360)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBD3C360);
  }

  return result;
}

id sub_1BD1BF234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B98D0;
  v1 = *MEMORY[0x1E69DDDB8];
  v2 = *MEMORY[0x1E69DDDC0];
  *(v0 + 32) = *MEMORY[0x1E69DDDB8];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x1E69DDDC8];
  *(v0 + 48) = *MEMORY[0x1E69DDDC8];
  off_1EBD3C330 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

double sub_1BD1BF2D8()
{
  result = *MEMORY[0x1E69DB980];
  qword_1EBD3C338 = *MEMORY[0x1E69DB980];
  return result;
}

void sub_1BD1BF2F0()
{
  if (qword_1EBD36B28 != -1)
  {
LABEL_12:
    swift_once();
  }

  v0 = off_1EBD3C330;
  v1 = *(off_1EBD3C330 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v3 = 0;
    v4 = *MEMORY[0x1E69DB8D8];
    v5 = *MEMORY[0x1E69DDC90];
    while (1)
    {
      if (v3 >= v0[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      v6 = qword_1EBD36B30;
      v7 = v0[v3 + 4];
      if (v6 != -1)
      {
        swift_once();
      }

      if (!PKFontForDesign(v4, v7, v5, 2, 0, *&qword_1EBD3C338))
      {
        break;
      }

      ++v3;

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      if (v1 == v3)
      {
        v2 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    qword_1EBD3C340 = v2;
  }
}

id sub_1BD1BF480@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v39 = sub_1BE04FF64();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C368);
  MEMORY[0x1EEE9AC00](v36, v5);
  v7 = &v34 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C370);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v8);
  v35 = &v34 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C378);
  MEMORY[0x1EEE9AC00](v42, v10);
  v41 = &v34 - v11;
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BD1C8894();
  v19 = v18;
  if (*(v1 + *(_s11TotalAmountVMa(0) + 44)) != 1)
  {
    sub_1BD1C93D0();
    v22 = v25;
    v24 = v26;
    goto LABEL_5;
  }

  v34 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69B8068], v12);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    (*(v13 + 8))(v16, v12);
    v17 = v34;
LABEL_5:
    *v7 = sub_1BE04F7C4();
    *(v7 + 1) = 0x4000000000000000;
    v7[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C380);
    sub_1BD1BF9AC(v1, v17, v19, v22, v24, &v7[*(v27 + 44)]);

    sub_1BE04FF44();
    v28 = sub_1BD0DE4F4(&qword_1EBD3C388, &qword_1EBD3C368);
    v30 = v35;
    v29 = v36;
    sub_1BE050D14();
    (*(v37 + 8))(v4, v39);
    sub_1BD0DE53C(v7, &qword_1EBD3C368);
    sub_1BE052434();
    v44 = v29;
    v45 = v28;
    swift_getOpaqueTypeConformance2();
    v31 = v41;
    v32 = v40;
    sub_1BE050DE4();

    (*(v38 + 8))(v30, v32);
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C390);
    v33 = sub_1BD1C07FC();
    v44 = v42;
    v45 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1BE0510C4();
    return sub_1BD052E20(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1BF9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v127 = a4;
  *(&v127 + 1) = a5;
  *&v137 = a2;
  *(&v137 + 1) = a3;
  v131 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3A0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v132 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v130 = &v120 - v12;
  v13 = sub_1BE04F454();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v139 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v134 = &v120 - v19;
  v20 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3A8);
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v129 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v120 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3B0);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v128 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v120 - v35;
  v37 = type metadata accessor for PaymentTotalAmountDetails();
  v38 = (a1 + *(v37 + 20));
  v39 = v38[1];
  v135 = a1;
  v136 = v36;
  v140 = v29;
  v141 = v14;
  v138 = v37;
  v133 = v13;
  if (v39)
  {
    v40 = *v38;
    v123 = v39;
    v124 = v40;
    sub_1BE04F604();
    sub_1BE04F5F4();
    sub_1BE051574();
    sub_1BE04F5D4();

    sub_1BE04F5F4();
    sub_1BE04F5E4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v41 = sub_1BE050694();
    v43 = v42;
    v45 = v44;
    v126 = v22;
    v46 = sub_1BE0505F4();
    v125 = v23;
    v47 = v133;
    v49 = v48;
    v51 = v50;
    sub_1BD0DDF10(v41, v43, v45 & 1);

    *&v149 = sub_1BE0513B4();
    v52 = sub_1BE050574();
    v121 = v53;
    v122 = v52;
    v55 = v54;
    v57 = v56;
    sub_1BD0DDF10(v46, v49, v51 & 1);

    KeyPath = swift_getKeyPath();
    v59 = swift_getKeyPath();
    v57 &= 1u;
    LOBYTE(v149) = v57;
    LOBYTE(v142) = 0;
    v60 = v134;
    sub_1BE04F444();
    v61 = v141;
    (*(v141 + 16))(v139, v60, v47);
    sub_1BD1C0928(&unk_1EBD367A0, MEMORY[0x1E697F260]);
    v62 = sub_1BE04E644();
    (*(v61 + 8))(v60, v47);
    *&v149 = 0x676E696E726177;
    *(&v149 + 1) = 0xE700000000000000;
    MEMORY[0x1BFB3F610](v124, v123);
    *&v142 = v122;
    *(&v142 + 1) = v55;
    LOBYTE(v143) = v57;
    *(&v143 + 1) = v121;
    *&v144 = KeyPath;
    a1 = v135;
    BYTE8(v144) = 0;
    *&v145 = v59;
    *(&v145 + 1) = 2;
    LOBYTE(v146) = 0;
    *(&v146 + 1) = v62;
    v147[0] = v149;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3B8);
    sub_1BD0DE4F4(&qword_1EBD3C3C0, &qword_1EBD3C3B8);
    v63 = v140;
    sub_1BE050DE4();

    v151 = v144;
    v152 = v145;
    v153 = v146;
    v154 = v147[0];
    v149 = v142;
    v150 = v143;
    v64 = v138;
    sub_1BD0DE53C(&v149, &qword_1EBD3C3B8);
    v65 = v136;
    sub_1BD1C0970(v63, v136);
    (*(v125 + 7))(v65, 0, 1, v126);
  }

  else
  {
    v64 = v37;
    (*(v23 + 56))(v36, 1, 1, v22);
  }

  v66 = (a1 + *(v64 + 32));
  v67 = v66[3];
  v125 = v66[4];
  v124 = __swift_project_boxed_opaque_existential_1(v66, v67);
  v149 = v137;
  v126 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v68 = sub_1BE0506C4();
  v70 = v69;
  v72 = v71;
  v73 = sub_1BE0505F4();
  v75 = v74;
  v77 = v76;
  sub_1BD0DDF10(v68, v70, v72 & 1);

  v78 = sub_1BE050574();
  v121 = v79;
  LOBYTE(v67) = v80;
  v82 = v81;
  sub_1BD0DDF10(v73, v75, v77 & 1);

  v83 = swift_getKeyPath();
  v84 = swift_getKeyPath();
  v85 = v67 & 1;
  LOBYTE(v149) = v67 & 1;
  LOBYTE(v142) = 0;
  v86 = v134;
  sub_1BE04F444();
  v87 = v141;
  v88 = *(v141 + 16);
  v124 = (v141 + 16);
  v125 = v88;
  v89 = v133;
  v88(v139, v86, v133);
  v123 = sub_1BD1C0928(&unk_1EBD367A0, MEMORY[0x1E697F260]);
  v90 = sub_1BE04E644();
  v91 = *(v87 + 8);
  v141 = v87 + 8;
  v122 = v91;
  v91(v86, v89);
  *&v149 = 0x656C746974;
  *(&v149 + 1) = 0xE500000000000000;
  MEMORY[0x1BFB3F610](v137, *(&v137 + 1));
  v92 = v149;
  *&v149 = v78;
  *(&v149 + 1) = v121;
  LOBYTE(v150) = v85;
  *(&v150 + 1) = v82;
  *&v151 = v83;
  BYTE8(v151) = 0;
  *&v152 = v84;
  *(&v152 + 1) = 2;
  LOBYTE(v153) = 0;
  *(&v153 + 1) = v90;
  v154 = v92;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3B8);
  sub_1BD0DE4F4(&qword_1EBD3C3C0, &qword_1EBD3C3B8);
  sub_1BE050DE4();

  v148[2] = v151;
  v148[3] = v152;
  v148[4] = v153;
  v148[5] = v154;
  v148[0] = v149;
  v148[1] = v150;
  sub_1BD0DE53C(v148, &qword_1EBD3C3B8);
  v93 = v127;
  v149 = v127;
  sub_1BE048C84();
  v94 = sub_1BE0506C4();
  v96 = v95;
  LOBYTE(v78) = v97;
  sub_1BE051224();
  v98 = sub_1BE050564();
  *&v137 = v99;
  *(&v137 + 1) = v98;
  LODWORD(v121) = v100;
  v126 = v101;

  sub_1BD0DDF10(v94, v96, v78 & 1);

  v102 = swift_getKeyPath();
  sub_1BE04F444();
  v125(v139, v86, v89);
  v103 = sub_1BE04E644();
  v122(v86, v89);
  if (qword_1EBD36B38 != -1)
  {
    swift_once();
  }

  v104 = qword_1EBD3C340;
  v105 = (v135 + *(v138 + 24));
  v106 = v105[1];
  v107 = v105[2];
  *&v149 = *v105;
  *(&v149 + 1) = v106;
  *&v150 = v107;
  sub_1BE048C84();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8);
  MEMORY[0x1BFB3E970](&v142, v108);
  v109 = v142;
  v110 = v121 & 1;
  LOBYTE(v142) = v121 & 1;
  *&v149 = 0x746E756F6D61;
  *(&v149 + 1) = 0xE600000000000000;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v93, *(&v93 + 1));
  *&v142 = *(&v137 + 1);
  *(&v142 + 1) = v137;
  LOBYTE(v143) = v110;
  *(&v143 + 1) = v126;
  *&v144 = v102;
  BYTE8(v144) = 0;
  *&v145 = v103;
  *(&v145 + 1) = v104;
  v146 = v93;
  *&v147[0] = v109;
  *(v147 + 8) = v149;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3D0);
  sub_1BD0DE4F4(&qword_1EBD3C3D8, &qword_1EBD3C3D0);
  v111 = v130;
  sub_1BE050DE4();

  v153 = v146;
  v154 = v147[0];
  v155 = *&v147[1];
  v149 = v142;
  v150 = v143;
  v151 = v144;
  v152 = v145;
  sub_1BD0DE53C(&v149, &qword_1EBD3C3D0);
  v112 = v136;
  v113 = v128;
  sub_1BD0DE19C(v136, v128, &qword_1EBD3C3B0);
  v114 = v140;
  v115 = v129;
  sub_1BD0DE19C(v140, v129, &qword_1EBD3C3A8);
  v116 = v132;
  sub_1BD0DE19C(v111, v132, &qword_1EBD3C3A0);
  v117 = v131;
  sub_1BD0DE19C(v113, v131, &qword_1EBD3C3B0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3E0);
  sub_1BD0DE19C(v115, v117 + *(v118 + 48), &qword_1EBD3C3A8);
  sub_1BD0DE19C(v116, v117 + *(v118 + 64), &qword_1EBD3C3A0);
  sub_1BD0DE53C(v111, &qword_1EBD3C3A0);
  sub_1BD0DE53C(v114, &qword_1EBD3C3A8);
  sub_1BD0DE53C(v112, &qword_1EBD3C3B0);
  sub_1BD0DE53C(v116, &qword_1EBD3C3A0);
  sub_1BD0DE53C(v115, &qword_1EBD3C3A8);
  return sub_1BD0DE53C(v113, &qword_1EBD3C3B0);
}