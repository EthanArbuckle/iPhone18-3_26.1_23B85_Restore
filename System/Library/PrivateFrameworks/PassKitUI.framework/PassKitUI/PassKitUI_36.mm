id WalletSettingsModel.transactionsModelForPass(pass:)(void *a1)
{
  v2 = v1;
  result = [a1 uniqueID];
  if (result)
  {
    v5 = result;
    v6 = sub_1BE052434();
    v8 = v7;

    swift_getKeyPath();
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    v9 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID;
    swift_beginAccess();
    v10 = *(v2 + v9);
    if (*(v10 + 16) && (sub_1BE048C84(), v11 = sub_1BD148F70(v6, v8), v13 = v12, , (v13 & 1) != 0))
    {
      v14 = *(*(v10 + 56) + 8 * v11);

      return v14;
    }

    else
    {

      return sub_1BD4041A8(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

PKSecureElementPass_optional __swiftcall WalletSettingsModel.passForUniqueID(uniqueID:)(Swift::String uniqueID)
{
  object = uniqueID._object;
  countAndFlagsBits = uniqueID._countAndFlagsBits;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    sub_1BE048C84();
    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 uniqueID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1BE052434();
        v13 = v12;

        if (v11 == countAndFlagsBits && v13 == object)
        {

LABEL_20:

          goto LABEL_21;
        }

        v15 = sub_1BE053B84();

        if (v15)
        {
          goto LABEL_20;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_18:

  v7 = 0;
LABEL_21:
  v17 = v7;
  result.value.super.super.super.isa = v17;
  result.is_nil = v16;
  return result;
}

id sub_1BD4041A8(void *a1)
{
  v2 = v1;
  objc_allocWithZone(type metadata accessor for TransactionsModel());
  v4 = a1;
  sub_1BE048964();
  sub_1BD96BBF4(v4, v2, 0);
  v6 = v5;

  result = [v4 uniqueID];
  if (result)
  {
    v8 = result;
    v9 = sub_1BE052434();
    v11 = v10;

    swift_getKeyPath();
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    v12 = v6;
    sub_1BE04B594();

    aBlock[0] = v2;
    swift_getKeyPath();
    sub_1BE04B5B4();

    v13 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v2[v13];
    *&v2[v13] = 0x8000000000000000;
    sub_1BD1DB498(v12, v9, v11, isUniquelyReferenced_nonNull_native);

    *&v2[v13] = v21;
    swift_endAccess();
    aBlock[0] = v2;
    swift_getKeyPath();
    sub_1BE04B5A4();

    if (![v4 isAppleCardPass])
    {
      return v12;
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v15 = result;
      v16 = [v4 associatedAccountServiceAccountIdentifier];
      v17 = swift_allocObject();
      *(v17 + 16) = v2;
      *(v17 + 24) = v4;
      aBlock[4] = sub_1BD40FB24;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_94_1;
      v18 = _Block_copy(aBlock);
      v19 = v4;
      sub_1BE048964();

      [v15 accountWithIdentifier:v16 completion:v18];
      _Block_release(v18);

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4044C0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_1BE051F54();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v24 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_1BD40FB2C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_100;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = a1;
  sub_1BE048964();
  v20 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v21 = v24;
  MEMORY[0x1BFB3FDF0](0, v15, v11, v17);
  _Block_release(v17);

  (*(v26 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v25);
}

void sub_1BD4047D8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1BE04D1E4();
    v12 = a1;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1BD026000, v13, v14, "Account fetch in WalletSettingsModel failed with error: %@", v15, 0xCu);
      sub_1BD0DE53C(v16, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  else if (a2)
  {
    v19 = a2;
    v22 = WalletSettingsModel.transactionsModelForPass(pass:)(a4);
    TransactionsModel.updateModelWithAccount(updatedAccount:)(v19);

    v20 = v22;
  }
}

Swift::Void __swiftcall WalletSettingsModel.refreshPaymentDefaults()()
{
  v1 = v0;
  swift_getKeyPath();
  v10 = v0;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultInstance];
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    v10 = v1;
    sub_1BE04B594();

    swift_beginAccess();
    v7 = v1[2];
    sub_1BE048C84();
    sub_1BD40DD40(v4, v6, v7, &v10);

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1BE04B584();

    v14 = v11;
    sub_1BD0DE53C(&v14, &qword_1EBD45928);
    v13 = v12;
    sub_1BD0DE53C(&v13, &qword_1EBD45930);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD404C34(unint64_t a1, void *a2)
{
  v3 = a2;
  sub_1BD409EE4(v3);
  v27 = v3;
  v4 = [v3 defaultShippingAddress];
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    sub_1BD40566C(v5);
    sub_1BD40AFAC(v6);
  }

  if (a1 >> 62)
  {
LABEL_19:
    v7 = sub_1BE053704();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_5:
      v8 = 0;
      v9 = a1 & 0xC000000000000001;
      v24 = a1 & 0xFFFFFFFFFFFFFF8;
      v25 = a1 & 0xC000000000000001;
      v10 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v26 = v7;
      do
      {
        if (v9)
        {
          v11 = MEMORY[0x1BFB40900](v8, a1);
        }

        else
        {
          if (v8 >= *(v24 + 16))
          {
            goto LABEL_18;
          }

          v11 = *(a1 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v14 = [v11 v10[51]];
        if (v14)
        {
          v15 = v14;
          v16 = [v27 defaultBillingAddressForPaymentPass_];
          if (v16)
          {
            v17 = v16;
            v18 = a1;
            v19 = [v15 uniqueID];
            if (!v19)
            {
              __break(1u);
              return;
            }

            v20 = v19;
            v21 = sub_1BE052434();
            v23 = v22;

            sub_1BD40A3EC(v21, v23, v17);

            a1 = v18;
            v9 = v25;
            v7 = v26;
            v10 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          }

          else
          {
          }
        }

        ++v8;
      }

      while (v13 != v7);
    }
  }
}

uint64_t WalletSettingsModel.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__orderTrackingEnabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
  v6 = sub_1BE04B5D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t WalletSettingsModel.__deallocating_deinit()
{
  WalletSettingsModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1BD405028()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8680]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0C63C0;
  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  *(inited + 32) = sub_1BE053054();
  *(inited + 40) = sub_1BE053054();
  *(inited + 48) = sub_1BE053054();
  sub_1BD112388(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD22CFF8();
  v4 = sub_1BE052A24();

  aBlock[4] = sub_1BD40F8DC;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3293A4;
  aBlock[3] = &block_descriptor_87;
  v5 = _Block_copy(aBlock);
  sub_1BE048964();

  [v2 activeFPANCardsWithOptions:7 allowedCardTypes:v4 sortType:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_1BD4051E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD40F8E4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_48_0;
  v14 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

uint64_t sub_1BD4054E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors;
  if (!*(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors))
  {
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B584();
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v5 = sub_1BE048C84();
  v6 = sub_1BD3FE328(v5, a2, &qword_1EBD420C0);

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(a1 + v4) = a2;
  sub_1BE048C84();
}

void sub_1BD40566C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
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
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406E0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

Swift::Bool __swiftcall WalletSettingsModel.isDefaultPass(uniqueID:)(Swift::String uniqueID)
{
  object = uniqueID._object;
  countAndFlagsBits = uniqueID._countAndFlagsBits;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v4 = *(v1 + 24);
  if (v4 && (v5 = [v4 uniqueID]) != 0)
  {
    v6 = v5;
    v7 = sub_1BE052434();
    v9 = v8;

    if (v7 == countAndFlagsBits && v9 == object)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1BE053B84();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1BD405920(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  if (a2)
  {
    sub_1BE04D1E4();
    sub_1BE048C84();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();

    v17 = os_log_type_enabled(v15, v16);
    v37 = a1;
    v38 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1BD123690(a1, a2, v39);
      _os_log_impl(&dword_1BD026000, v15, v16, "Updating default pass to pass with unique id: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1BFB45F20](v19, -1, -1);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v7 + 8))(v14, v6);
    swift_getKeyPath();
    v39[0] = v3;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    swift_beginAccess();
    v20 = *(v3 + 16);
    v36 = v3;
    if (v20 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1BFB40900](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v26 = [v23 uniqueID];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1BE052434();
          v30 = v29;

          if (v28 == v37 && v30 == v38)
          {

LABEL_26:

            goto LABEL_27;
          }

          v32 = sub_1BE053B84();

          if (v32)
          {
            goto LABEL_26;
          }
        }

        ++v22;
        if (v25 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_21:

    v24 = 0;
LABEL_27:
    sub_1BD4012D4(v24);
  }

  else
  {
    sub_1BE04D1E4();
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C54();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BD026000, v33, v34, "Attempted to update default pass with nil unique id, skipping", v35, 2u);
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

id WalletSettingsModel.setAutomaticPresentationPassSetting(for:with:newSettings:)(void *a1, char a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    a3 = [a1 settings];
    a1 = v5;
  }

  v6 = 16;
  if ((a2 & 1) == 0)
  {
    v6 = 0;
  }

  return [a1 setSettings_];
}

id WalletSettingsModel.setNotifictionServiceUpdatesPassSetting(for:with:newSettings:)(void *a1, char a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    a3 = [a1 settings];
    a1 = v5;
  }

  v6 = 8;
  if ((a2 & 1) == 0)
  {
    v6 = 0;
  }

  return [a1 setSettings_];
}

void sub_1BD405E54()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  swift_getKeyPath();
  v3 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v55 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults;
  v4 = [*(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults) defaultContactEmail];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 defaultContactEmail];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1BD4065CC(v5, v6);

      if ((v8 & 1) == 0)
      {
LABEL_51:
        v45 = v2;
        sub_1BD402E20(v45);
        swift_getKeyPath();
        v46 = v45;
        sub_1BE04B594();

        swift_getKeyPath();
        sub_1BE04B5B4();

        v47 = *(v1 + 40);
        *(v1 + 40) = v46;

        swift_getKeyPath();
        sub_1BE04B5A4();

        swift_getKeyPath();
        sub_1BE04B594();

        swift_getKeyPath();
        sub_1BE048964();
        sub_1BE04B594();

        swift_beginAccess();
        v48 = sub_1BE048C84();
        sub_1BD404C34(v48, v46);

        return;
      }
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_1BE04B594();

  v9 = [*(v1 + v55) defaultContactPhone];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 defaultContactPhone];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1BD4065CC(v10, v11);

      if ((v13 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_1BE04B594();

  v14 = [*(v1 + v55) defaultContactName];
  if (v14)
  {
    v15 = v14;
    v16 = [v2 defaultContactName];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BD4065CC(v15, v16);

      if ((v18 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_1BE04B594();

  v19 = [*(v1 + v55) defaultShippingAddress];
  if (v19)
  {
    v20 = v19;
    v21 = [v2 defaultShippingAddress];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BD4065CC(v20, v21);

      if ((v23 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_1BE04B594();

  swift_beginAccess();
  v24 = *(v1 + 16);
  if (v24 >> 62)
  {
    goto LABEL_55;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
LABEL_23:
    v56 = v24 & 0xC000000000000001;
    v51 = v24 & 0xFFFFFFFFFFFFFF8;
    v52 = v2;
    sub_1BE048C84();
    v2 = 0;
    v26 = &selRef_currentPassbookState;
    v49 = v3;
    v50 = v1;
    v53 = v25;
    v54 = v24;
    while (1)
    {
      if (v56)
      {
        v31 = MEMORY[0x1BFB40900](v2, v24);
      }

      else
      {
        if (v2 >= *(v51 + 16))
        {
          goto LABEL_54;
        }

        v31 = *(v24 + 8 * v2 + 32);
      }

      v30 = v31;
      v32 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v25 = sub_1BE053704();
        if (!v25)
        {
          break;
        }

        goto LABEL_23;
      }

      v33 = [v31 paymentPass];
      if (v33)
      {
        v34 = v33;
        swift_getKeyPath();
        sub_1BE04B594();

        v35 = *(v1 + v55);
        v36 = v34;
        v37 = [v35 v26[148]];
        if (v37)
        {
          v29 = v37;
          v28 = [v52 v26[148]];

          if (v28)
          {
            v38 = [v29 identifier];
            if (!v38)
            {
              sub_1BE052434();
              v38 = sub_1BE052404();
            }

            v39 = [v28 identifier];
            if (!v39)
            {
              sub_1BE052434();
              v39 = sub_1BE052404();
            }

            v40 = v38;
            v41 = v39;
            v42 = v41;
            if (v38 == v39)
            {

              v1 = v50;
            }

            else
            {
              v1 = v50;
              if (!v40 || !v41)
              {

LABEL_49:
                v44 = [v29 isEqualIgnoringIdentifiers_];

                v3 = v49;
                v25 = v53;
                v24 = v54;
                v26 = &selRef_currentPassbookState;
                if ((v44 & 1) == 0)
                {

                  v2 = v52;
                  goto LABEL_51;
                }

                goto LABEL_27;
              }

              v43 = [v40 isEqualToString:v41];

              if ((v43 & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v27 = v36;
            v3 = v49;
          }

          else
          {
            v27 = v36;
            v28 = v29;
            v29 = v30;
          }
        }

        else
        {
          v27 = v30;
          v28 = v36;
          v29 = v36;
        }

        v30 = v29;
        v25 = v53;
        v24 = v54;
        v26 = &selRef_currentPassbookState;
      }

LABEL_27:
      ++v2;
      if (v32 == v25)
      {

        return;
      }
    }
  }
}

uint64_t sub_1BD4065CC(void *a1, void *a2)
{
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_1BE052434();
    v4 = sub_1BE052404();
  }

  v5 = [a2 identifier];
  if (!v5)
  {
    sub_1BE052434();
    v5 = sub_1BE052404();
  }

  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v4 == v5)
  {

    return 1;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
  }

  else
  {
    v10 = [v6 isEqualToString:v7];

    if (v10)
    {
      return 1;
    }
  }

  return [a1 isEqualIgnoringIdentifiers_];
}

uint64_t sub_1BD406730()
{
  v0 = sub_1BE051F54();
  v60 = *(v0 - 8);
  v61 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE04D214();
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v9);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v57 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v57[0] = v57 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v57 - v21;
  sub_1BE04D1E4();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BD026000, v23, v24, "Pass library did change notification received", v25, 2u);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  v26 = *(v8 + 8);
  v26(v22, v62);
  result = sub_1BE04A2D4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v28 = result;
  v64 = *MEMORY[0x1E69BBC00];
  v29 = v64;
  type metadata accessor for PKPassLibraryNotificationKey(0);
  sub_1BD40F6B8(&qword_1EBD38298, type metadata accessor for PKPassLibraryNotificationKey);
  v30 = v29;
  sub_1BE0537C4();
  if (*(v28 + 16) && (v31 = sub_1BD149040(aBlock), (v32 & 1) != 0))
  {
    sub_1BD038CD0(*(v28 + 56) + 32 * v31, v65);
    sub_1BD149CE8(aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738);
    if (!swift_dynamicCast())
    {

      sub_1BE04D1E4();
      v46 = sub_1BE04D204();
      v47 = sub_1BE052C54();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1BD026000, v46, v47, "Failed to retrieve replacement passes from user info", v48, 2u);
        MEMORY[0x1BFB45F20](v48, -1, -1);
      }

      v49 = v11;
      return (v26)(v49, v62);
    }

    v33 = v64;
  }

  else
  {
    sub_1BD149CE8(aBlock);
    v33 = 0;
  }

  v64 = *MEMORY[0x1E69BBBD0];
  v34 = v64;
  sub_1BE0537C4();
  if (!*(v28 + 16) || (v35 = sub_1BD149040(aBlock), (v36 & 1) == 0))
  {
    sub_1BD149CE8(aBlock);
    v37 = 0;
LABEL_14:
    v64 = *MEMORY[0x1E69BBBF8];
    v38 = v64;
    sub_1BE0537C4();
    if (!*(v28 + 16) || (v39 = sub_1BD149040(aBlock), (v40 & 1) == 0))
    {

      sub_1BD149CE8(aBlock);
      v41 = 0;
      goto LABEL_19;
    }

    sub_1BD038CD0(*(v28 + 56) + 32 * v39, v65);
    sub_1BD149CE8(aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459A0);
    if (swift_dynamicCast())
    {
      v41 = v64;
LABEL_19:
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v42 = sub_1BE052D54();
      v43 = swift_allocObject();
      v43[2] = v57[1];
      v43[3] = v33;
      v43[4] = v37;
      v43[5] = v41;
      aBlock[4] = sub_1BD40F948;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_63_0;
      v44 = _Block_copy(aBlock);
      sub_1BE048964();

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
      v45 = v61;
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v7, v3, v44);
      _Block_release(v44);

      (*(v60 + 8))(v3, v45);
      return (*(v58 + 8))(v7, v59);
    }

    v53 = v57[0];
    sub_1BE04D1E4();
    v54 = sub_1BE04D204();
    v55 = sub_1BE052C54();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1BD026000, v54, v55, "Failed to retrieve removed passes from user info", v56, 2u);
      MEMORY[0x1BFB45F20](v56, -1, -1);
    }

    v49 = v53;
    return (v26)(v49, v62);
  }

  sub_1BD038CD0(*(v28 + 56) + 32 * v35, v65);
  sub_1BD149CE8(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738);
  if (swift_dynamicCast())
  {
    v37 = v64;
    goto LABEL_14;
  }

  sub_1BE04D1E4();
  v50 = sub_1BE04D204();
  v51 = sub_1BE052C54();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1BD026000, v50, v51, "Failed to retrieve added passes from user info", v52, 2u);
    MEMORY[0x1BFB45F20](v52, -1, -1);
  }

  v49 = v15;
  return (v26)(v49, v62);
}

void sub_1BD406F9C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4072B0(a2);
  sub_1BD40790C(a3);
  sub_1BD407C64(a4);
  v13 = [*(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_paymentService) defaultPaymentPassUniqueIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  swift_getKeyPath();
  v29[1] = a1;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v18 = *(a1 + 24);
  if (!v18)
  {
    sub_1BE04D1E4();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BD026000, v25, v26, "Nil default pass, attempting to update", v27, 2u);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    sub_1BD405920(v15, v17);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v19 uniqueID];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BE052434();
    v24 = v23;

    if (v17)
    {
      if (v22 == v15 && v17 == v24)
      {

LABEL_19:

        goto LABEL_20;
      }

      v28 = sub_1BE053B84();

      if (v28)
      {

        goto LABEL_20;
      }
    }

    else
    {
    }

LABEL_18:
    sub_1BD405920(v15, v17);

    goto LABEL_19;
  }

  if (v17)
  {
    goto LABEL_18;
  }

LABEL_20:
  sub_1BD405028();
}

void sub_1BD4072B0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_1BE04D1E4();
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BD026000, v34, v35, "Attempted to replace nil array of passes, skipping", v36, 2u);
      MEMORY[0x1BFB45F20](v36, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return;
  }

  v9 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v11 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
    v12 = a1 & 0xC000000000000001;
    swift_beginAccess();
    v13 = 0;
    v37 = (a1 + 32);
    v38 = a1 & 0xC000000000000001;
    v42 = a1;
    v43 = v2;
    v40 = i;
    v41 = v9;
    v39 = v11;
    while (1)
    {
      if (v12)
      {
        v14 = MEMORY[0x1BFB40900](v13, a1);
      }

      else
      {
        if (v13 >= v9[2])
        {
          goto LABEL_52;
        }

        v14 = *&v37[8 * v13];
      }

      v15 = v14;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v48 = [v14 secureElementPass];
      if (!v48)
      {

        goto LABEL_6;
      }

      v46 = v15;
      swift_getKeyPath();
      v49 = v2;
      v45 = sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
      sub_1BE04B594();

      v17 = *(v2 + 16);
      if (v17 >> 62)
      {
        v18 = sub_1BE053704();
        if (!v18)
        {
LABEL_44:

          goto LABEL_6;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_44;
        }
      }

      v44 = v13;
      v47 = v17 & 0xFFFFFFFFFFFFFF8;
      sub_1BE048C84();
      v19 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1BFB40900](v19, v17);
        }

        else
        {
          if (v19 >= *(v47 + 16))
          {
            goto LABEL_50;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v9 = v20;
        v21 = [v48 uniqueID];
        if (v21)
        {
          v22 = v21;
          v23 = sub_1BE052434();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v26 = [v9 uniqueID];
        if (!v26)
        {
          if (!v25)
          {

LABEL_38:

            goto LABEL_40;
          }

LABEL_31:

          v2 = v25;
LABEL_33:

          goto LABEL_34;
        }

        a1 = v26;
        v27 = sub_1BE052434();
        v2 = v28;

        if (!v25)
        {

          if (!v2)
          {
            goto LABEL_38;
          }

          goto LABEL_33;
        }

        if (!v2)
        {
          goto LABEL_31;
        }

        if (v23 == v27 && v25 == v2)
        {
          break;
        }

        v29 = sub_1BE053B84();

        if (v29)
        {
          goto LABEL_38;
        }

LABEL_34:
        v30 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        ++v19;
        if (v30 == v18)
        {

          a1 = v42;
          v2 = v43;
          i = v40;
          v9 = v41;
          v12 = v38;
          v13 = v44;
          goto LABEL_6;
        }
      }

LABEL_40:
      swift_getKeyPath();
      v2 = v43;
      v49 = v43;
      sub_1BE04B594();

      v49 = v2;
      swift_getKeyPath();
      sub_1BE04B5B4();

      swift_beginAccess();
      v31 = sub_1BD3B371C(v19);
      swift_endAccess();

      v49 = v2;
      swift_getKeyPath();
      sub_1BE04B5A4();

      swift_getKeyPath();
      v49 = v2;
      v32 = v48;
      sub_1BE04B594();

      v49 = v2;
      swift_getKeyPath();
      sub_1BE04B5B4();

      v33 = swift_beginAccess();
      MEMORY[0x1BFB3F7A0](v33);
      v12 = v38;
      v13 = v44;
      if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      swift_endAccess();
      v49 = v2;
      swift_getKeyPath();
      sub_1BE04B5A4();

      v9 = v41;
      a1 = v42;
      i = v40;
LABEL_6:
      if (v13 == i)
      {
        return;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }
}

uint64_t sub_1BD40790C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
LABEL_21:
      v10 = sub_1BE053704();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    while (v10 != v11)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFB40900](v11, a1, v7);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v15 = [v12 secureElementPass];

      ++v11;
      if (v15)
      {
        MEMORY[0x1BFB3F7A0]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v20 = v21;
        v11 = v14;
      }
    }

    swift_getKeyPath();
    v21 = v2;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    v21 = v2;
    swift_getKeyPath();
    sub_1BE04B5B4();

    swift_beginAccess();
    sub_1BDA7AAF8(v20);
    swift_endAccess();
    v21 = v2;
    swift_getKeyPath();
    sub_1BE04B5A4();
  }

  else
  {
    sub_1BE04D1E4();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Attempted to add nil array of passes, skipping", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

void sub_1BD407C64(uint64_t a1)
{
  v51 = sub_1BE04D214();
  v3 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v43 - v9;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v12);
  if (!a1)
  {
    sub_1BE04D1E4();
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C54();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1BD026000, v40, v41, "Attempted to remove nil array of pass dictionaries, skipping", v42, 2u);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    (*(v3 + 8))(v6, v51);
    return;
  }

  v44 = &v43 - v13;
  v45 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v16 = 0;
    v57 = 0;
    v58 = *MEMORY[0x1E69BBBE8];
    v59 = a1 & 0xC000000000000001;
    v53 = *MEMORY[0x1E69BBC08];
    v56 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
    v50 = (v3 + 8);
    v47 = 0x80000001BE1286D0;
    v48 = a1;
    v46 = v10;
    v52 = i;
    v49 = v1;
    while (1)
    {
      if (v59)
      {
        v17 = MEMORY[0x1BFB40900](v16, a1, v14);
      }

      else
      {
        if (v16 >= *(v45 + 16))
        {
          goto LABEL_71;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v61 = v17;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v19 = v58;
      *&v63 = v58;
      type metadata accessor for PKPassLibraryNotificationKey(0);
      v20 = v19;
      v3 = sub_1BE053BF4();
      v21 = [v61 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v21)
      {
        sub_1BE053624();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v65 = v63;
      v66 = v64;
      if (*(&v64 + 1))
      {
        if (!swift_dynamicCast())
        {
          sub_1BE04D1E4();
          v26 = sub_1BE04D204();
          v1 = sub_1BE052C54();
          if (os_log_type_enabled(v26, v1))
          {
            v3 = swift_slowAlloc();
            *v3 = 0;
            _os_log_impl(&dword_1BD026000, v26, v1, "Unable to retrieve passTypeIdentifier from pass dictionary, skipping", v3, 2u);
            MEMORY[0x1BFB45F20](v3, -1, -1);
          }

          (*v50)(v10, v51);
          goto LABEL_6;
        }

        v60 = v16 + 1;
        countAndFlagsBits = v62._countAndFlagsBits;
        object = v62._object;
      }

      else
      {
        v60 = v16 + 1;
        sub_1BD0DE53C(&v65, &qword_1EBD3EC90);
        countAndFlagsBits = 0;
        object = 0;
      }

      *&v63 = v53;
      v24 = v53;
      v25 = [v61 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v25)
      {
        sub_1BE053624();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v65 = v63;
      v66 = v64;
      if (*(&v64 + 1))
      {
        if (!swift_dynamicCast())
        {

          v37 = v44;
          sub_1BE04D1E4();
          v38 = sub_1BE04D204();
          v1 = sub_1BE052C54();
          if (os_log_type_enabled(v38, v1))
          {
            v3 = swift_slowAlloc();
            *v3 = 0;
            _os_log_impl(&dword_1BD026000, v38, v1, "Unable to retrieve serialNumber from pass dictionary, skipping", v3, 2u);
            MEMORY[0x1BFB45F20](v3, -1, -1);
          }

          (*v50)(v37, v51);
          i = v52;
          v18 = v60;
          goto LABEL_6;
        }

        v55 = countAndFlagsBits;
        v28 = v62._countAndFlagsBits;
        v27 = v62._object;
      }

      else
      {
        v55 = countAndFlagsBits;
        sub_1BD0DE53C(&v65, &qword_1EBD3EC90);
        v28 = 0;
        v27 = 0;
      }

      swift_getKeyPath();
      v29 = v49;
      *&v65 = v49;
      v30 = sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE04B594();

      *&v65 = v29;
      swift_getKeyPath();
      v54 = v30;
      sub_1BE04B5B4();

      swift_beginAccess();
      v31 = v57;
      v32 = sub_1BD40EF7C((v29 + 16), v55, object, v28, v27);

      v55 = v27;

      v3 = *(v29 + 16);
      v1 = v3 >> 62;
      v57 = v31;
      if (v3 >> 62)
      {
        v10 = sub_1BE053704();
      }

      else
      {
        v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = &v10[-v32];
      v18 = v60;
      if (v10 < v32)
      {
        goto LABEL_66;
      }

      if (v32 < 0)
      {
        goto LABEL_67;
      }

      if (v1)
      {
        v33 = sub_1BE053704();
      }

      else
      {
        v33 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v33 < v10)
      {
        goto LABEL_68;
      }

      v34 = __OFSUB__(0, a1);
      a1 = v32 - v10;
      if (v34)
      {
        goto LABEL_69;
      }

      if (v1)
      {
        v35 = sub_1BE053704();
      }

      else
      {
        v35 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = __OFADD__(v35, a1);
      a1 += v35;
      if (v34)
      {
        goto LABEL_70;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v29 + 16) = v3;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v1)
        {
LABEL_50:
          sub_1BE053704();
        }

LABEL_51:
        v3 = sub_1BE053884();
        *(v29 + 16) = v3;
        goto LABEL_52;
      }

      if (v1)
      {
        goto LABEL_50;
      }

      if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_51;
      }

LABEL_52:
      sub_1BD1DE5E8(v32, v10, 0);
      *(v29 + 16) = v3;
      swift_endAccess();

      *&v65 = v29;
      swift_getKeyPath();
      sub_1BE04B5A4();

      *&v63 = 0xD000000000000014;
      *(&v63 + 1) = v47;
      v1 = sub_1BE053BF4();
      v39 = [v61 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      a1 = v48;
      if (v39)
      {
        sub_1BE053624();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v10 = v46;
      i = v52;
      v65 = v63;
      v66 = v64;
      if (*(&v64 + 1))
      {
        if (swift_dynamicCast())
        {
          v1 = v29;
          WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v62);
        }
      }

      else
      {

        sub_1BD0DE53C(&v65, &qword_1EBD3EC90);
      }

LABEL_6:
      ++v16;
      if (v18 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }
}

Swift::Void __swiftcall WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(Swift::String uniqueID)
{
  v2 = v1;
  object = uniqueID._object;
  countAndFlagsBits = uniqueID._countAndFlagsBits;
  v15 = sub_1BE04D214();
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v1;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE048C84();
  sub_1BE04B594();

  v16 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  v9 = sub_1BD40F2D8((v1 + 32), countAndFlagsBits, object);

  v10 = *(*(v2 + 32) + 16);
  if (v10 < v9)
  {
    __break(1u);
  }

  else
  {
    sub_1BD1DE6BC(v9, v10);
    swift_endAccess();
    v16 = v2;
    swift_getKeyPath();
    sub_1BE04B5A4();

    sub_1BE04D1E4();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Invalidating navigation paths is not supported on this device, skipping", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v15);
  }
}

Swift::Void __swiftcall WalletSettingsModel.removePass(pass:)(PKSecureElementPass pass)
{
  v2 = [(objc_class *)pass.super.super.super.isa uniqueID];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1BE052434();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v7);

  v8 = [objc_opt_self() sharedInstance];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 removePass_];
}

uint64_t sub_1BD4089F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04A264();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE052404();
  v14 = [a1 localizedValueForFieldKey_];

  if (v14)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_1BD0DE53C(v30, &qword_1EBD3EC90);
    v22 = sub_1BE04AA64();
    return (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }

  result = sub_1BD0DE19C(v30, &v28, &qword_1EBD3EC90);
  if (!*(&v29 + 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = sub_1BE0524A4();
  v18 = v17;
  if (sub_1BE052434() == a2 && v19 == a3)
  {
  }

  else
  {
    v21 = sub_1BE053B84();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  *&v28 = v16;
  *(&v28 + 1) = v18;
  v23 = objc_opt_self();
  sub_1BE048C84();
  v24 = [v23 URLPathAllowedCharacterSet];
  sub_1BE04A234();

  sub_1BD0DDEBC();
  v25 = sub_1BE053594();
  v27 = v26;
  (*(v9 + 8))(v12, v8);

  if (!v27)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *&v28 = 0x2F2F3A6C6574;
  *(&v28 + 1) = 0xE600000000000000;
  MEMORY[0x1BFB3F610](v25, v27);

LABEL_16:
  sub_1BE04AA54();

  return sub_1BD0DE53C(v30, &qword_1EBD3EC90);
}

id sub_1BD408D0C(void *a1)
{
  v2 = v1;
  v76 = sub_1BE04BD74();
  v4 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v5);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v74 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v74 - v17;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v74 - v22;
  if ([a1 isAppleCardPass])
  {
    v24 = WalletSettingsModel.transactionsModelForPass(pass:)(a1);
    swift_getKeyPath();
    v77 = v24;
    sub_1BD40F6B8(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B594();

    v25 = *&v24[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account];
    v26 = v25;

    if (v25)
    {
      v27 = [v26 state];
      if (v27 == 4 || v27 == 3 || v27 == 2)
      {
        v28 = sub_1BE052404();
        v29 = PKLocalizedFeatureString();

        if (v29)
        {
          v30 = sub_1BE052434();

          return v30;
        }

        else
        {

          return 0;
        }
      }
    }
  }

  v32 = [a1 devicePrimaryPaymentApplication];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 state];

    if (PKPaymentApplicationStateIsSuspended())
    {
      v35 = v4;
      v36 = *(v4 + 104);
      v37 = v76;
      v36(v23, *MEMORY[0x1E69B80F0], v76);
      result = PKPassKitBundle();
      if (result)
      {
        v38 = result;
        v39 = sub_1BE04B6F4();
        v41 = v40;

        (*(v35 + 8))(v23, v37);
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v34 = 0;
  }

  if ([a1 passActivationState] == 1)
  {
    v35 = v4;
    v42 = *(v4 + 104);
    v37 = v76;
    v42(v18, *MEMORY[0x1E69B80F0], v76);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v43 = result;
    v39 = sub_1BE04B6F4();
    v41 = v44;

    (*(v35 + 8))(v18, v37);
  }

  else if (!v33 || v34 == 10)
  {
    v35 = v4;
    v55 = *(v4 + 104);
    v37 = v76;
    v55(v14, *MEMORY[0x1E69B80F0], v76);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v56 = result;
    v39 = sub_1BE04B6F4();
    v41 = v57;

    (*(v35 + 8))(v14, v37);
  }

  else
  {
    result = [a1 uniqueID];
    if (!result)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v45 = result;
    v46 = sub_1BE052434();
    v48 = v47;

    swift_getKeyPath();
    v77 = v2;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    v49 = *(v2 + 3);
    if (!v49)
    {

      v39 = 0;
      v41 = 0;
      v35 = v4;
      v37 = v76;
      goto LABEL_33;
    }

    v50 = [v49 uniqueID];
    v35 = v4;
    if (!v50)
    {

      v39 = 0;
      v41 = 0;
      v37 = v76;
      goto LABEL_33;
    }

    v51 = v50;
    v52 = sub_1BE052434();
    v54 = v53;

    v37 = v76;
    if (v46 == v52 && v48 == v54)
    {
    }

    else
    {
      v58 = sub_1BE053B84();

      if ((v58 & 1) == 0)
      {
        v39 = 0;
        v41 = 0;
        goto LABEL_33;
      }
    }

    (*(v35 + 104))(v10, *MEMORY[0x1E69B80F0], v37);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_51:
      __break(1u);
      return result;
    }

    v59 = result;
    v39 = sub_1BE04B6F4();
    v41 = v60;

    (*(v35 + 8))(v10, v37);
  }

LABEL_33:
  v61 = [a1 paymentPass];
  if (!v61)
  {
    goto LABEL_42;
  }

  v62 = v61;
  v63 = PKSanitizedPrimaryAccountRepresentationForPass();
  if (!v63)
  {

    goto LABEL_42;
  }

  v64 = v63;
  v65 = sub_1BE052434();
  v67 = v66;

  v68 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v68 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (!v68)
  {

LABEL_42:
    if (v41)
    {
      return v39;
    }

    else
    {
      return 0;
    }
  }

  result = v65;
  if (v41)
  {
    v69 = v75;
    (*(v35 + 104))(v75, *MEMORY[0x1E69B80F0], v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1BE0B6CA0;
    v71 = MEMORY[0x1E69E6158];
    *(v70 + 56) = MEMORY[0x1E69E6158];
    v72 = sub_1BD110550();
    *(v70 + 32) = v65;
    *(v70 + 40) = v67;
    *(v70 + 96) = v71;
    *(v70 + 104) = v72;
    *(v70 + 64) = v72;
    *(v70 + 72) = v39;
    *(v70 + 80) = v41;
    v73 = sub_1BE04B714();

    (*(v35 + 8))(v69, v37);
    return v73;
  }

  return result;
}

uint64_t sub_1BD40956C()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD409624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_1BE048C84();
}

uint64_t sub_1BD409710(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1BE048C84();
  v4 = sub_1BD3FE328(v3, a1, &qword_1EBD406E0);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD409868(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  sub_1BE048C84();
}

uint64_t sub_1BD4098D0()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD409988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  *a2 = *(v3 + 24);
  return sub_1BE048C84();
}

uint64_t sub_1BD409A48(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1BE048C84();
  v4 = sub_1BD40BC38(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD409B90(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1BE048C84();
  v4 = sub_1BD3FE328(v3, a1, &qword_1EBD406E0);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD409CE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  sub_1BE048C84();
}

id sub_1BD409D50()
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  v1 = *(v0 + 48);

  return v1;
}

id sub_1BD409E00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1BD409EE4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_1BD0E5E8C(0, &qword_1EBD459A8);
  v5 = v4;
  v6 = sub_1BE053074();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD40A050(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  v4 = *(v1 + 16);
  v19 = v2;
  if (v4 >> 62)
  {
LABEL_29:
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_1BE053704();
  }

  else
  {
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  v5 = 0;
  v6 = &selRef_hoursOfDay;
  while (v21 != v5)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB40900](v5, v4);
    }

    else
    {
      if (v5 >= *(v20 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v4 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = [a1 v6[20]];
    if (!v10)
    {
      sub_1BE052434();
      v10 = sub_1BE052404();
    }

    v11 = v6;
    v12 = [v9 v6[20]];
    if (!v12)
    {
      sub_1BE052434();
      v12 = sub_1BE052404();
    }

    v13 = v10;
    v14 = v12;
    v15 = v14;
    if (v10 == v12)
    {

LABEL_25:
    }

    if (v13 && v14)
    {
      v16 = [v13 isEqualToString:v14];

      if (v16)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v7 = [v9 isEqualIgnoringIdentifiers_];

    ++v5;
    v6 = v11;
    if (v7)
    {
    }
  }

  swift_getKeyPath();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  v17 = a1;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v19 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BD40A3EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_getKeyPath();
  v20 = v3;
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  v8 = v3[2];
  v19 = a3;
  v17[2] = &v19;
  sub_1BE048C84();
  v9 = sub_1BD30114C(sub_1BD2ED65C, v17, v8);

  if ((v9 & 1) == 0)
  {
    swift_getKeyPath();
    v19 = v4;
    sub_1BE04B594();

    v19 = v4;
    swift_getKeyPath();
    sub_1BE04B5B4();

    swift_beginAccess();
    v10 = a3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    v19 = v4;
    swift_getKeyPath();
    sub_1BE04B5A4();
  }

  sub_1BE048C84();
  v11 = [a3 identifier];
  v12 = sub_1BE052434();
  v14 = v13;

  swift_getKeyPath();
  v19 = v4;
  sub_1BE04B594();

  v19 = v4;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v4[3];
  v4[3] = 0x8000000000000000;
  sub_1BD1DB308(v12, v14, a1, a2, isUniquelyReferenced_nonNull_native);

  v4[3] = v18;
  swift_endAccess();
  v19 = v4;
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BD40A734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE051F54();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD40A850, 0, 0);
}

uint64_t sub_1BD40A850()
{
  v1 = v0[16];
  v2 = v0[13];
  v17 = v0[15];
  v18 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = [v3 defaultShippingAddress];
  v9 = sub_1BD51D758(v5, v7, v8);

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v9;
  v0[6] = sub_1BD40FE94;
  v0[7] = v11;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_118;
  v12 = _Block_copy(v0 + 2);
  sub_1BE048964();

  sub_1BE051F74();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v12);
  _Block_release(v12);

  (*(v16 + 8))(v2, v15);
  (*(v17 + 8))(v1, v18);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD40AB0C(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE048C84();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BDA7A2A8(a2);
  swift_endAccess();
  swift_getKeyPath();
  sub_1BE04B5A4();

  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BDA7A2A8(a2);
  swift_endAccess();
  swift_getKeyPath();
  sub_1BE04B5A4();
}

void *sub_1BD40AD08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {
    sub_1BE048C84();
    v7 = sub_1BD148F70(a1, a2);
    if (v8)
    {
      v9 = (*(v6 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      sub_1BE048C84();

      swift_getKeyPath();
      sub_1BE04B594();

      swift_beginAccess();
      v12 = *(v3 + 16);
      if (v12 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
      {
        sub_1BE048C84();
        if (!i)
        {
          break;
        }

        v14 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB40900](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = [v15 identifier];
          v19 = sub_1BE052434();
          v21 = v20;

          if (v19 == v11 && v21 == v10)
          {

            return v16;
          }

          v23 = sub_1BE053B84();

          if (v23)
          {

            return v16;
          }

          ++v14;
          if (v17 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_19:
    }
  }

  return 0;
}

uint64_t sub_1BD40AFAC(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  v4 = *(v1 + 40);
  v19 = v2;
  if (v4 >> 62)
  {
LABEL_29:
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_1BE053704();
  }

  else
  {
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  v5 = 0;
  v6 = &selRef_hoursOfDay;
  while (v21 != v5)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB40900](v5, v4);
    }

    else
    {
      if (v5 >= *(v20 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v4 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = [a1 v6[20]];
    if (!v10)
    {
      sub_1BE052434();
      v10 = sub_1BE052404();
    }

    v11 = v6;
    v12 = [v9 v6[20]];
    if (!v12)
    {
      sub_1BE052434();
      v12 = sub_1BE052404();
    }

    v13 = v10;
    v14 = v12;
    v15 = v14;
    if (v10 == v12)
    {

LABEL_25:
    }

    if (v13 && v14)
    {
      v16 = [v13 isEqualToString:v14];

      if (v16)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v7 = [v9 isEqualIgnoringIdentifiers_];

    ++v5;
    v6 = v11;
    if (v7)
    {
    }
  }

  swift_getKeyPath();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  v17 = a1;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v19 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t AddressInformation.deinit()
{

  v1 = OBJC_IVAR____TtC9PassKitUI18AddressInformation___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AddressInformation.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9PassKitUI18AddressInformation___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD40B494(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v85 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v83 = &v65 - v10;
  v84 = sub_1BE049B04();
  v75 = *(v84 - 8);
  v12 = MEMORY[0x1EEE9AC00](v84, v11);
  v76 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v74 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45960);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  result = MEMORY[0x1EEE9AC00](v18, v19);
  v78 = &v65 - v22;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v77 = v21;
  v72 = v8;
  v73 = a2;
  v23 = 0;
  v69 = a1;
  v26 = *(a1 + 64);
  v25 = a1 + 64;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v66 = (v27 + 63) >> 6;
  v67 = v25;
  v68 = v75 + 16;
  v82 = (v75 + 32);
  v80 = v85 + 16;
  v81 = (v85 + 32);
  v70 = (v75 + 8);
  v71 = (v85 + 8);
  while (v29)
  {
    v79 = (v29 - 1) & v29;
    v30 = __clz(__rbit64(v29)) | (v23 << 6);
LABEL_16:
    v37 = v69;
    v39 = v74;
    v38 = v75;
    v40 = v84;
    (*(v75 + 16))(v74, *(v69 + 48) + *(v75 + 72) * v30, v84);
    v41 = *(v37 + 56);
    v42 = v85;
    v43 = v83;
    (*(v85 + 16))(v83, v41 + *(v85 + 72) * v30, v4);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880);
    v45 = *(v44 + 48);
    v46 = *(v38 + 32);
    v34 = v77;
    v46(v77, v39, v40);
    (*(v42 + 32))(v34 + v45, v43, v4);
    (*(*(v44 - 8) + 56))(v34, 0, 1, v44);
    v33 = v78;
    v29 = v79;
LABEL_17:
    sub_1BD40F700(v34, v33);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880);
    v48 = (*(*(v47 - 8) + 48))(v33, 1, v47);
    v49 = v48 == 1;
    if (v48 == 1)
    {
      return v49;
    }

    v50 = *(v47 + 48);
    v51 = v4;
    v52 = v76;
    v53 = v84;
    (*v82)(v76, v33, v84);
    v54 = v72;
    (*v81)(v72, v33 + v50, v51);
    v55 = v73;
    v56 = sub_1BD148E9C(v52);
    v58 = v57;
    (*v70)(v52, v53);
    if ((v58 & 1) == 0)
    {
      (*v71)(v54, v51);
      return 0;
    }

    v59 = v85;
    v60 = *(v55 + 56) + *(v85 + 72) * v56;
    v61 = v83;
    (*(v85 + 16))(v83, v60, v51);
    sub_1BD40F6B8(&qword_1EBD44EA8, MEMORY[0x1E6967790]);
    v62 = sub_1BE052334();
    v63 = *(v59 + 8);
    v63(v61, v51);
    result = (v63)(v54, v51);
    v4 = v51;
    if ((v62 & 1) == 0)
    {
      return v49;
    }
  }

  if (v66 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v66;
  }

  v32 = v31 - 1;
  v34 = v77;
  v33 = v78;
  while (1)
  {
    v35 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v35 >= v66)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880);
      (*(*(v64 - 8) + 56))(v34, 1, 1, v64);
      v29 = 0;
      v23 = v32;
      goto LABEL_17;
    }

    v36 = *(v67 + 8 * v35);
    ++v23;
    if (v36)
    {
      v79 = (v36 - 1) & v36;
      v30 = __clz(__rbit64(v36)) | (v35 << 6);
      v23 = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD40BAC8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);
      sub_1BE048C84();
      v17 = v16;
      v18 = sub_1BD148F70(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      type metadata accessor for TransactionsModel();
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1BE053074();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD40BC38(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];
    sub_1BE048C84();
    sub_1BE048C84();
    v20 = sub_1BD148F70(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1BE053B84();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD40BDDC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_29:
    v27 = sub_1BE053704();
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v27 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB40900](v8, a1);
    }

    else
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v10 passTypeIdentifier];
    v13 = sub_1BE052434();
    v15 = v14;

    if (a3)
    {
      if (v13 == a2 && v15 == a3)
      {
      }

      else
      {
        v17 = sub_1BE053B84();

        if ((v17 & 1) == 0)
        {

          goto LABEL_5;
        }
      }

      v18 = [v11 serialNumber];
      v19 = sub_1BE052434();
      v21 = v20;

      if (a5)
      {
        break;
      }
    }

LABEL_5:
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_28;
    }
  }

  if (v19 != a4 || v21 != a5)
  {
    v22 = sub_1BE053B84();

    if (v22)
    {
      return v8;
    }

    goto LABEL_5;
  }

  return v8;
}

uint64_t sub_1BD40BFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1BE053B84() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1BD40C070(void *a1, void *a2, uint64_t a3)
{
  v53 = a2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49 - v12;
  if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v51 = a1;
  v14 = a1;
  sub_1BE04D8B4();

  v50 = v54;
  if (v54)
  {
    v49 = v6;
    v52 = v5;
    v15 = v54;
    v16 = [v14 identifier];
    v17 = sub_1BE052434();
    v19 = v18;

    v20 = [v15 identifier];
    v21 = sub_1BE052434();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {

      v5 = v52;
      v6 = v49;
LABEL_8:
      sub_1BE04D1E4();
      v25 = sub_1BE04D204();
      v26 = sub_1BE052C54();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1BD026000, v25, v26, "Default email already set to value, returning", v27, 2u);
        MEMORY[0x1BFB45F20](v27, -1, -1);
      }

      else
      {
      }

      (*(v6 + 1))(v13, v5);
      return;
    }

    v24 = sub_1BE053B84();

    v5 = v52;
    v6 = v49;
    if (v24)
    {

      goto LABEL_8;
    }
  }

  v28 = v14;
  sub_1BE04D1E4();
  v29 = v28;
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C54();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = v5;
    v33 = v32;
    v49 = swift_slowAlloc();
    v54 = v49;
    *v33 = 136315138;
    v34 = [v29 description];
    v35 = sub_1BE052434();
    v36 = v6;
    v38 = v37;

    v39 = sub_1BD123690(v35, v38, &v54);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1BD026000, v30, v31, "Setting default email address to existing contact:%s", v33, 0xCu);
    v40 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1BFB45F20](v40, -1, -1);
    MEMORY[0x1BFB45F20](v33, -1, -1);

    v36[1](v9, v52);
  }

  else
  {

    (*(v6 + 1))(v9, v5);
  }

  v41 = (a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v42 = *(a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v42)
  {
    v43 = v41[4];
    v45 = v41[2];
    v44 = v41[3];
    v46 = v41[1];
    v47 = v29;
    sub_1BD36A5EC(v42, v46, v45, v44, v43);
    sub_1BD785FE0(v51, v42, v43);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = v51;
    v48 = v29;
    sub_1BE04D8C4();
  }

  [v53 setDefaultContactEmail_];
}

void sub_1BD40C574(void *a1, void *a2, uint64_t a3)
{
  v53 = a2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49 - v12;
  if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v51 = a1;
  v14 = a1;
  sub_1BE04D8B4();

  v50 = v54;
  if (v54)
  {
    v49 = v6;
    v52 = v5;
    v15 = v54;
    v16 = [v14 identifier];
    v17 = sub_1BE052434();
    v19 = v18;

    v20 = [v15 identifier];
    v21 = sub_1BE052434();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {

      v5 = v52;
      v6 = v49;
LABEL_8:
      sub_1BE04D1E4();
      v25 = sub_1BE04D204();
      v26 = sub_1BE052C54();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1BD026000, v25, v26, "Default phone number already set to value, returning", v27, 2u);
        MEMORY[0x1BFB45F20](v27, -1, -1);
      }

      else
      {
      }

      (*(v6 + 1))(v13, v5);
      return;
    }

    v24 = sub_1BE053B84();

    v5 = v52;
    v6 = v49;
    if (v24)
    {

      goto LABEL_8;
    }
  }

  v28 = v14;
  sub_1BE04D1E4();
  v29 = v28;
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C54();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = v5;
    v33 = v32;
    v49 = swift_slowAlloc();
    v54 = v49;
    *v33 = 136315138;
    v34 = [v29 description];
    v35 = sub_1BE052434();
    v36 = v6;
    v38 = v37;

    v39 = sub_1BD123690(v35, v38, &v54);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1BD026000, v30, v31, "Setting default phone number to existing contact:%s", v33, 0xCu);
    v40 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1BFB45F20](v40, -1, -1);
    MEMORY[0x1BFB45F20](v33, -1, -1);

    v36[1](v9, v52);
  }

  else
  {

    (*(v6 + 1))(v9, v5);
  }

  v41 = (a3 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  v42 = *(a3 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  if (v42)
  {
    v43 = v41[4];
    v45 = v41[2];
    v44 = v41[3];
    v46 = v41[1];
    v47 = v29;
    sub_1BD36A5EC(v42, v46, v45, v44, v43);
    sub_1BD91A048(v51, v42, v43);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = v51;
    v48 = v29;
    sub_1BE04D8C4();
  }

  [v53 setDefaultContactPhone_];
}

id sub_1BD40CA78(void *a1, char a2, void *a3, uint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v69 - v19;
  if (a2)
  {
    sub_1BE04D1E4();
    v21 = a1;
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v72 = a3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v73 = a1;
      v74[0] = v26;
      v27 = v26;
      *v25 = 136315138;
      v28 = [v21 description];
      v29 = sub_1BE052434();
      v70 = v21;
      v71 = v8;
      v30 = v9;
      v31 = v29;
      v33 = v32;

      v34 = sub_1BD123690(v31, v33, v74);

      *(v25 + 4) = v34;
      _os_log_impl(&dword_1BD026000, v22, v23, "Added new default shipping address:%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v35 = v27;
      a1 = v73;
      MEMORY[0x1BFB45F20](v35, -1, -1);
      v36 = v25;
      a3 = v72;
      MEMORY[0x1BFB45F20](v36, -1, -1);

      (*(v30 + 8))(v20, v71);
      v21 = v70;
    }

    else
    {

      (*(v9 + 8))(v20, v8);
    }

    sub_1BE052434();
    sub_1BD51D5B4(v21);

    swift_getKeyPath();
    v74[0] = a4;
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
    sub_1BE04B594();

    v74[0] = a4;
    swift_getKeyPath();
    sub_1BE04B5B4();

    swift_beginAccess();
    v48 = v21;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(a4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    v74[0] = a4;
    swift_getKeyPath();
    sub_1BE04B5A4();

LABEL_21:
    v68 = a1;
    sub_1BD40566C(a1);
    return [a3 setDefaultShippingAddress_];
  }

  swift_getKeyPath();
  v74[0] = a4;
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  v37 = *(a4 + 32);
  v73 = a1;
  if (!v37)
  {
    goto LABEL_17;
  }

  v71 = v9;
  v72 = a3;
  v38 = v8;
  v39 = v37;
  v40 = [a1 identifier];
  v41 = sub_1BE052434();
  v43 = v42;

  v70 = v39;
  v44 = [v39 identifier];
  v45 = sub_1BE052434();
  v47 = v46;

  if (v41 != v45 || v43 != v47)
  {
    v49 = sub_1BE053B84();

    v8 = v38;
    v9 = v71;
    if (v49)
    {
      goto LABEL_13;
    }

    a3 = v72;
    a1 = v73;
LABEL_17:
    sub_1BE04D1E4();
    v54 = a1;
    v55 = sub_1BE04D204();
    v56 = sub_1BE052C54();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v72 = a3;
      v59 = v58;
      v74[0] = v58;
      *v57 = 136315138;
      v60 = [v54 description];
      v61 = sub_1BE052434();
      v71 = v8;
      v62 = v61;
      v63 = v9;
      v65 = v64;

      v66 = sub_1BD123690(v62, v65, v74);

      *(v57 + 4) = v66;
      _os_log_impl(&dword_1BD026000, v55, v56, "Setting default shipping address to existing contact:%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v67 = v59;
      a3 = v72;
      MEMORY[0x1BFB45F20](v67, -1, -1);
      MEMORY[0x1BFB45F20](v57, -1, -1);

      (*(v63 + 8))(v12, v71);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    a1 = v73;
    goto LABEL_21;
  }

  v8 = v38;
  v9 = v71;
LABEL_13:
  sub_1BE04D1E4();
  v50 = sub_1BE04D204();
  v51 = sub_1BE052C54();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1BD026000, v50, v51, "Default shipping address already set to value, returning", v52, 2u);
    MEMORY[0x1BFB45F20](v52, -1, -1);
  }

  return (*(v9 + 8))(v16, v8);
}

void sub_1BD40D1B4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D1E4();
  v11 = a1;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = a2;
    v39 = v15;
    v43 = v15;
    *v14 = 136315138;
    v16 = a3;
    v17 = [v11 description];
    v18 = sub_1BE052434();
    v40 = v6;
    v19 = v18;
    v20 = v11;
    v22 = v21;

    a3 = v16;
    v23 = sub_1BD123690(v19, v22, &v43);
    v11 = v20;

    *(v14 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v12, v13, "Added new default email:%s", v14, 0xCu);
    v24 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    a2 = v41;
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);

    (*(v7 + 8))(v10, v40);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_1BE052434();
  v25 = v11;
  sub_1BD51D5B4(v25);

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v25;
  sub_1BE048964();
  sub_1BE04D8B4();

  MEMORY[0x1BFB3F7A0](v27);
  if (v43[2] >= v43[3] >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v28 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v29 = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v28;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD77C960(v29);

  v30 = (a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v31 = *(a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v31)
  {
    v32 = v30[4];
    v34 = v30[2];
    v33 = v30[3];
    v35 = v30[1];
    v36 = v26;
    sub_1BD36A5EC(v31, v35, v34, v33, v32);
    sub_1BD785FE0(v26, v31, v32);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v26;
    v37 = v26;
    sub_1BE04D8C4();
  }

  [a2 setDefaultContactEmail_];
}

void sub_1BD40D604(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D1E4();
  v11 = a1;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = a2;
    v39 = v15;
    v43 = v15;
    *v14 = 136315138;
    v16 = a3;
    v17 = [v11 description];
    v18 = sub_1BE052434();
    v40 = v6;
    v19 = v18;
    v20 = v11;
    v22 = v21;

    a3 = v16;
    v23 = sub_1BD123690(v19, v22, &v43);
    v11 = v20;

    *(v14 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v12, v13, "Added new default phone number:%s", v14, 0xCu);
    v24 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    a2 = v41;
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);

    (*(v7 + 8))(v10, v40);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_1BE052434();
  v25 = v11;
  sub_1BD51D5B4(v25);

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v25;
  sub_1BE048964();
  sub_1BE04D8B4();

  MEMORY[0x1BFB3F7A0](v27);
  if (v43[2] >= v43[3] >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v28 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v29 = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v28;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD917E9C(v29);

  v30 = (a3 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  v31 = *(a3 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  if (v31)
  {
    v32 = v30[4];
    v34 = v30[2];
    v33 = v30[3];
    v35 = v30[1];
    v36 = v26;
    sub_1BD36A5EC(v31, v35, v34, v33, v32);
    sub_1BD91A048(v26, v31, v32);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v26;
    v37 = v26;
    sub_1BE04D8C4();
  }

  [a2 setDefaultContactPhone_];
}

id sub_1BD40DA54(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - v7;
  *(v2 + 32) = 0;
  sub_1BE04B5C4();
  *(v2 + 48) = a1;
  v39 = a1;
  v9 = [v39 defaultShippingAddress];

  v10 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  v11 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = v10;
  *(v2 + 24) = v11;
  v35 = v8;
  if (a2 >> 62)
  {
LABEL_17:
    v12 = sub_1BE053704();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_18:

    v29 = sub_1BE0528D4();
    v30 = v35;
    (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v32 = v39;
    v31[4] = v39;
    v31[5] = v2;
    v33 = v32;
    sub_1BE048964();
    sub_1BD122C00(0, 0, v30, &unk_1BE0D4F08, v31);

    return v2;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_3:
  v13 = 0;
  v14 = a2 & 0xC000000000000001;
  v36 = a2 & 0xFFFFFFFFFFFFFF8;
  v37 = a2 & 0xC000000000000001;
  v15 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
  v38 = v12;
  while (1)
  {
    if (v14)
    {
      v16 = MEMORY[0x1BFB40900](v13, a2);
    }

    else
    {
      if (v13 >= *(v36 + 16))
      {
        goto LABEL_16;
      }

      v16 = *(a2 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v19 = [v16 v15[51]];
    if (v19)
    {
      break;
    }

LABEL_5:

    ++v13;
    if (v18 == v12)
    {
      goto LABEL_18;
    }
  }

  v20 = v19;
  v21 = [v39 defaultBillingAddressForPaymentPass_];
  if (!v21)
  {

    goto LABEL_5;
  }

  v22 = v21;
  v23 = a2;
  sub_1BD40A050(v21);
  result = [v17 uniqueID];
  if (result)
  {
    v25 = result;
    v26 = sub_1BE052434();
    v28 = v27;

    sub_1BD40A3EC(v26, v28, v22);

    a2 = v23;
    v14 = v37;
    v12 = v38;
    v15 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1BD40DD40(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v130 = a2;
  v132 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v131 = &v127 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D0);
  v9 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v10);
  v134 = &v127 - v11;
  v12 = sub_1BE04D214();
  v136 = *(v12 - 1);
  v137 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v127 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v129 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v128 = &v127 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v127 - v31;
  type metadata accessor for AddressInformation(0);
  swift_allocObject();
  sub_1BE048C84();
  v33 = a1;
  v139 = sub_1BD40DA54(v33, a3);

  v138 = v33;
  v34 = [v33 defaultContactEmail];
  v35 = v34 == 0;
  v133 = v9;
  if (v34)
  {
    sub_1BE052434();
    v36 = v34;
    v37 = sub_1BE052404();

    [v36 setValueSource_];

    v140 = v34;
  }

  else
  {
    sub_1BE04D1E4();
    v38 = sub_1BE04D204();
    v39 = sub_1BE052C54();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1BD026000, v38, v39, "No defaults for default email, will attempt to fall back on me card", v40, 2u);
      MEMORY[0x1BFB45F20](v40, -1, -1);
    }

    v136[1](v32, v137);
    v140 = 0;
  }

  v41 = v138;
  v42 = [v138 defaultContactPhone];
  if (v42)
  {
    sub_1BE052434();
    v43 = v42;
    v44 = sub_1BE052404();

    [v43 setValueSource_];

    v45 = v42;
  }

  else
  {
    sub_1BE04D1E4();
    v46 = sub_1BE04D204();
    v47 = sub_1BE052C54();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1BD026000, v46, v47, "No defaults for default phone number, will attempt to fall back on me card", v48, 2u);
      MEMORY[0x1BFB45F20](v48, -1, -1);
    }

    v136[1](v28, v137);
    v45 = 0;
    v35 = 1;
  }

  v49 = [v41 defaultShippingAddress];
  v50 = v49;
  if (v49)
  {
    v51 = v49;
    if (!v35)
    {
      v52 = v45;
      v51 = v49;
      v53 = v140;
      goto LABEL_32;
    }
  }

  else
  {
    v54 = a3;
    v55 = v45;
    sub_1BE04D1E4();
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v56, v57, "No defaults for default shipping address, will attempt to fall back on me card", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    v136[1](v24, v137);
    v51 = 0;
    v45 = v55;
    a3 = v54;
  }

  v59 = [v130 meCard];
  if (!v59)
  {
    v52 = v45;
    v53 = v140;
    goto LABEL_32;
  }

  v60 = v59;
  v53 = v140;
  if (v140)
  {
    if (v45)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v140 = a3;
    v61 = v51;
    v62 = v45;
    sub_1BE04D1E4();
    v63 = sub_1BE04D204();
    v64 = sub_1BE052C54();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1BD026000, v63, v64, "Falling back on meCard for default email address", v65, 2u);
      MEMORY[0x1BFB45F20](v65, -1, -1);
    }

    v136[1](v128, v137);
    sub_1BE052434();
    v66 = v60;
    v67 = sub_1BE052404();

    [v66 setValueSource_];

    v53 = v60;
    v45 = v62;
    v51 = v61;
    a3 = v140;
    if (v45)
    {
LABEL_20:
      v52 = v45;
      if (v51)
      {
LABEL_21:

        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  v68 = a3;
  v69 = v51;
  sub_1BE04D1E4();
  v70 = sub_1BE04D204();
  v71 = sub_1BE052C54();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1BD026000, v70, v71, "Falling back on meCard for default phone number", v72, 2u);
    MEMORY[0x1BFB45F20](v72, -1, -1);
  }

  v136[1](v129, v137);
  sub_1BE052434();
  v73 = v60;
  v74 = sub_1BE052404();

  [v73 setValueSource_];

  v51 = v69;
  a3 = v68;
  v52 = v60;
  if (v51)
  {
    goto LABEL_21;
  }

LABEL_29:
  v75 = v127;
  sub_1BE04D1E4();
  v76 = sub_1BE04D204();
  v77 = sub_1BE052C54();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_1BD026000, v76, v77, "Falling back on meCard for default shipping address", v78, 2u);
    MEMORY[0x1BFB45F20](v78, -1, -1);
  }

  v136[1](v75, v137);
  v51 = v60;
LABEL_32:
  v137 = v51;
  [v41 setDefaultShippingAddress_];
  sub_1BD404C34(a3, v41);
  v79 = v135;
  if (v53)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459E8);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1BE0B69E0;
    *(v80 + 32) = v53;
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC0];
  }

  v130 = type metadata accessor for EmailAddresses();
  swift_allocObject();
  v136 = v53;
  v129 = sub_1BD77FD44(v53, v80, MEMORY[0x1E69E7CC0], 1);
  v81 = v52;
  v140 = v53;
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459E0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1BE0B69E0;
    *(v82 + 32) = v52;
  }

  else
  {
    v82 = MEMORY[0x1E69E7CC0];
  }

  v128 = type metadata accessor for PhoneNumbers();
  v83 = swift_allocObject();
  v84 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
  v143 = 0;
  v85 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC8);
  v86 = v134;
  sub_1BE04D874();
  v87 = v133;
  (*(v133 + 32))(v83 + v84, v86, v79);
  v88 = (v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  *v88 = 0u;
  v88[1] = 0u;
  v88[2] = 0u;
  v89 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_defaults;
  *(v83 + v89) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  v90 = [objc_opt_self() defaultInstance];
  if (v90)
  {
    *(v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_recents) = v90;
    v91 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
    swift_beginAccess();
    v92 = *(v87 + 8);
    v93 = v85;
    v92(v83 + v91, v79);
    v135 = v81;
    v142 = v81;
    sub_1BE04D874();
    swift_endAccess();
    v142 = MEMORY[0x1E69E7CD0];
    v94 = MEMORY[0x1E69E7CC0];
    v141 = MEMORY[0x1E69E7CC0];
    v95 = *(v82 + 16);
    if (v95)
    {
      v96 = (v82 + 32);
      v97 = v136;
      v98 = v129;
      do
      {
        v99 = *v96;
        v100 = sub_1BD99F5F8(v99);
        v102 = sub_1BD2A5644(&v143, v100, v101);

        if (v102)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v96;
        --v95;
      }

      while (v95);
      v103 = v141;
      v94 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v103 = MEMORY[0x1E69E7CC0];
      v97 = v136;
      v98 = v129;
    }

    swift_beginAccess();
    v142 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    v142 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v142) = 1;
    sub_1BE04D874();
    swift_endAccess();

    v104 = (v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
    v105 = *(v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
    v106 = *(v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 8);
    v107 = *(v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 16);
    v108 = *(v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 24);
    v109 = *(v83 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 32);
    *v104 = 0u;
    v104[1] = 0u;
    v104[2] = 0u;
    sub_1BD40FB5C(v105, v106, v107, v108, v109);
    v110 = v131;
    if (v140)
    {
      v111 = v97;
    }

    v112 = sub_1BE0528D4();
    v113 = *(*(v112 - 8) + 56);
    v113(v110, 1, 1, v112);
    v114 = swift_allocObject();
    v114[2] = 0;
    v114[3] = 0;
    v114[4] = v140;
    v114[5] = v98;
    sub_1BE048964();
    sub_1BD122C00(0, 0, v110, &unk_1BE0D4EE0, v114);

    v115 = v135;
    if (v135)
    {
      v116 = v93;
    }

    v113(v110, 1, 1, v112);
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = 0;
    v117[4] = v115;
    v117[5] = v83;
    sub_1BE048964();
    sub_1BD122C00(0, 0, v110, &unk_1BE0D4EE8, v117);

    sub_1BD40F6B8(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses);
    v118 = sub_1BE04E954();
    v120 = v119;
    sub_1BD40F6B8(&qword_1EBD3A700, type metadata accessor for PhoneNumbers);
    v121 = sub_1BE04E954();
    v123 = v122;
    v124 = v138;

    v125 = v132;
    v126 = v139;
    *v132 = v124;
    v125[1] = v126;
    v125[2] = v118;
    v125[3] = v120;
    v125[4] = v121;
    v125[5] = v123;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD40EC88()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D1E4();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "FMDFMMM lost mode exit is not supported on this device", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD40EDBC()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD40EE78, 0, 0);
}

uint64_t sub_1BD40EE78()
{
  sub_1BE04D1E4();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Checking FMDFMMM lost mode exit requirement is not supported on this device,\nskipping and setting to false", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1BD40EF7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  v11 = *a1;
  v12 = sub_1BD40BDDC(*a1, a2, a3, a4, a5);
  v14 = v12;
  if (v5)
  {
    return v14;
  }

  v41 = a2;
  v39 = v7;
  v40 = v6;
  if (v13)
  {
    if (v11 >> 62)
    {
      return sub_1BE053704();
    }

    return *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = 0;
  v15 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v11 >> 62)
    {
      if (v15 == sub_1BE053704())
      {
        return v14;
      }
    }

    else if (v15 == *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v14;
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1BFB40900](v15, v11);
LABEL_17:
    v20 = v19;
    v21 = [v19 passTypeIdentifier];
    v22 = sub_1BE052434();
    v24 = v23;

    if (!a3)
    {
      goto LABEL_26;
    }

    if (v22 == v41 && v24 == a3)
    {
    }

    else
    {
      v25 = sub_1BE053B84();

      if ((v25 & 1) == 0)
      {

        goto LABEL_29;
      }
    }

    v26 = [v20 serialNumber];
    v27 = sub_1BE052434();
    v29 = v28;

    if (v40)
    {
      if (v27 == v39 && v29 == v40)
      {

        goto LABEL_10;
      }

      v30 = sub_1BE053B84();

      if (v30)
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_26:
    }

LABEL_29:
    if (v14 != v15)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](v14, v11);
        v31 = MEMORY[0x1BFB40900](v15, v11);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v32 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14 >= v32)
        {
          goto LABEL_58;
        }

        if (v15 >= v32)
        {
          goto LABEL_59;
        }

        v33 = *(v11 + 32 + 8 * v15);
        v6 = *(v11 + 32 + 8 * v14);
        v31 = v33;
      }

      v34 = v31;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
      {
        v11 = sub_1BD509758(v11);
        v35 = (v11 >> 62) & 1;
      }

      else
      {
        LODWORD(v35) = 0;
      }

      v7 = v11 & 0xFFFFFFFFFFFFFF8;
      v36 = *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20);
      *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20) = v34;

      if ((v11 & 0x8000000000000000) != 0 || v35)
      {
        v11 = sub_1BD509758(v11);
        v7 = v11 & 0xFFFFFFFFFFFFFF8;
        if ((v15 & 0x8000000000000000) != 0)
        {
LABEL_50:
          __break(1u);
          return v14;
        }
      }

      else if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v15 >= *(v7 + 16))
      {
        goto LABEL_56;
      }

LABEL_8:
      v16 = v7 + 8 * v15;
      v17 = *(v16 + 32);
      *(v16 + 32) = v6;

      *a1 = v11;
    }

    v18 = __OFADD__(v14++, 1);
    if (v18)
    {
      goto LABEL_55;
    }

LABEL_10:
    v18 = __OFADD__(v15++, 1);
    if (v18)
    {
      goto LABEL_54;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v19 = *(v11 + 8 * v15 + 32);
    goto LABEL_17;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return sub_1BE053704();
}

uint64_t sub_1BD40F2D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_1BD40BFD0(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v14 = *(v6 + v12 + 48);
      v15 = *(v6 + v12 + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = sub_1BE053B84();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v17 = (v6 + 32 + 16 * v9);
            v18 = v17[1];
            v20 = *v17;
            sub_1BE048C84();
            sub_1BE048C84();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1BD4FFFA4(v6);
            }

            v19 = v6 + 16 * v9;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            *(v13 + 48) = v20;
            *(v13 + 56) = v18;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD40F458()
{
  sub_1BD1E1120();
  if (v0 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BD40F5D4()
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

uint64_t sub_1BD40F6B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD40F700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD40F820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD40F8A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_1BD40F904()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors) = *(v0 + 24);
  sub_1BE048C84();
}

void sub_1BD40F970()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_1BD40F9A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults) = v2;
  v4 = v2;
}

uint64_t sub_1BD40F9E8()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
  sub_1BE048964();
}

void sub_1BD40FA24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext) = v2;
  v4 = v2;
}

void sub_1BD40FA64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

void sub_1BD40FAB8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;

  WalletSettingsModel.updateDefaultPassToSelection()();
}

void sub_1BD40FB5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD40FBCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD781CD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1BD40FC8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD9189E8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_102Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD40FD94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD40A734(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_38()
{

  return swift_deallocObject();
}

uint64_t sub_1BD40FE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD40FF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD40FFD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1BD41001C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD410088(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v58 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v58 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v58 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v58 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v58 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v58 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v58 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v43 = &v58 - v39;
  v58 = v41;
  v59 = v38;
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        (*(v41 + 104))(v16, *MEMORY[0x1E69B8068], v40);
        v56 = PKPassKitBundle();
        if (v56)
        {
          v45 = v56;
          v46 = sub_1BE04B6F4();
          v43 = v16;
          goto LABEL_33;
        }

        goto LABEL_43;
      }

      (*(v41 + 104))(v20, *MEMORY[0x1E69B8068], v40);
      v49 = PKPassKitBundle();
      if (v49)
      {
        v45 = v49;
        v46 = sub_1BE04B6F4();
        v43 = v20;
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    switch(a1)
    {
      case 7:
        (*(v41 + 104))(v12, *MEMORY[0x1E69B8068], v40);
        v51 = PKPassKitBundle();
        if (v51)
        {
          v45 = v51;
          v46 = sub_1BE04B6F4();
          v43 = v12;
          goto LABEL_33;
        }

        goto LABEL_35;
      case 8:
        v43 = v42;
        (*(v41 + 104))(v42, *MEMORY[0x1E69B8068], v40);
        v47 = PKPassKitBundle();
        if (!v47)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v45 = v47;
LABEL_15:
        v46 = sub_1BE04B6F4();
        goto LABEL_33;
      case 9:
        (*(v41 + 104))(v6, *MEMORY[0x1E69B80E0], v40);
        v53 = PKPassKitBundle();
        if (v53)
        {
          v45 = v53;
          v46 = sub_1BE04B6F4();
          v43 = v6;
          goto LABEL_33;
        }

        goto LABEL_41;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          (*(v41 + 104))(v24, *MEMORY[0x1E69B8068], v40);
          v52 = PKPassKitBundle();
          if (v52)
          {
            v45 = v52;
            v46 = sub_1BE04B6F4();
            v43 = v24;
            goto LABEL_33;
          }

          goto LABEL_40;
        }

        (*(v41 + 104))(v28, *MEMORY[0x1E69B8068], v40);
        v44 = PKPassKitBundle();
        if (v44)
        {
          v45 = v44;
          v46 = sub_1BE04B6F4();
          v43 = v28;
LABEL_33:

          (*(v58 + 8))(v43, v59);
          return v46;
        }

        goto LABEL_36;
      }

      (*(v41 + 104))(v36, *MEMORY[0x1E69B8068], v40);
      v50 = PKPassKitBundle();
      if (v50)
      {
        v45 = v50;
        v46 = sub_1BE04B6F4();
        v43 = v36;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!a1)
    {
      (*(v41 + 104))(&v58 - v39, *MEMORY[0x1E69B8068], v40);
      v48 = PKPassKitBundle();
      if (!v48)
      {
LABEL_38:
        __break(1u);
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
        goto LABEL_44;
      }

      v45 = v48;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      (*(v41 + 104))(v32, *MEMORY[0x1E69B8068], v40);
      v54 = PKPassKitBundle();
      if (v54)
      {
        v55 = v54;
        v46 = sub_1BE04B6F4();
        v43 = v32;
        v45 = v55;
        goto LABEL_33;
      }

      goto LABEL_42;
    }
  }

LABEL_44:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD4107D4()
{
  v1 = *(v0 + 24);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD410814()
{
  v1 = *(v0 + 96);
  sub_1BD0D44B8(v1);
  return v1;
}

id sub_1BD410858(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_identifier];
  *v6 = 0xD00000000000001ELL;
  *(v6 + 1) = 0x80000001BE128980;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD410A00(void (*a1)(void, void, void, void), uint64_t a2)
{
  if ([*(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController) uiOnly])
  {
    a1(0, 0, 0, 0);
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = a1;
      v8[4] = a2;
      v10[4] = sub_1BD412554;
      v10[5] = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1BD3F08C0;
      v10[3] = &block_descriptor_88;
      v9 = _Block_copy(v10);
      sub_1BE048964();

      [v6 backgroundProvisionInProgressForFeature:4 withCompletion:v9];
      _Block_release(v9);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD410B80(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = v22;
  *(v18 + 40) = a4;
  aBlock[4] = sub_1BD412560;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23_5;
  v19 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v19);
  _Block_release(v19);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v23);
}

void sub_1BD410E78(uint64_t a1, char a2, void (*a3)(void, void, void, void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = sub_1BE052404();
      v10 = PKLocalizedFeatureString();

      if (v10)
      {
        v11 = sub_1BE052404();
        v12 = PKLocalizedFeatureString();

        if (v12)
        {
          v13 = [objc_opt_self() errorWithTitle:v10 message:v12 severity:5];

          v14 = swift_allocObject();
          *(v14 + 16) = a3;
          *(v14 + 24) = a4;
          sub_1BE048964();
          sub_1BD411018(v13, sub_1BD412570, v14);

LABEL_7:

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

    a3(0, 0, 0, 0);
    goto LABEL_7;
  }
}

void sub_1BD411018(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x1E69B80D0], v6, v9);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    sub_1BD0E5E8C(0, &qword_1EBD3D280);
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v7 + 8))(v11, v6);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    swift_retain_n();
    v19 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v14, v16, sub_1BD1B6F78, v17, sub_1BD1B5F6C, v18, 0, 0);

    v20 = v23[1] + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 24))(v19, ObjectType, v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD4112A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v61 = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04BAC4();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BE04B944();
  v7 = *(v52 - 8);
  v9 = MEMORY[0x1EEE9AC00](v52, v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController);
  v50 = v2;
  v13 = [v12 credential];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v14 = sub_1BE04C384();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v55 = xmmword_1BE0B69E0;
  *(v17 + 16) = xmmword_1BE0B69E0;
  *(v17 + v16) = v13;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E69B82A8], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
  *(swift_allocObject() + 16) = v55;
  v18 = *(v3 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_context);
  v19 = v13;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v20 = sub_1BE04C394();
  v21 = type metadata accessor for ProvisioningUICoordinator();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v23 = &v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v18;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v20;
  swift_unknownObjectWeakAssign();
  *(v23 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
  *&v55 = v20;
  sub_1BE048964();
  sub_1BE048964();
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v60.receiver = v22;
  v60.super_class = v21;
  v24 = objc_msgSendSuper2(&v60, sel_init);
  *&v24[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BA5A50;
  v25 = v50;
  swift_unknownObjectWeakAssign();
  v26 = sub_1BE04BBD4();
  sub_1BE04BB04();
  v27 = sub_1BE04B8E4();
  (*(v7 + 8))(v11, v52);
  v28 = v51;
  sub_1BE04BC34();
  v29 = sub_1BE04B9A4();
  (*(v53 + 8))(v28, v54);
  v30 = [v19 product];
  v31 = [objc_allocWithZone(PKNewPaymentCredentialProvisioningViewController) initWithProvisioningController:v26 webService:v27 context:v29 paymentCredential:v19 setupProduct:v30 allowsManualEntry:0 reporter:0];

  v32 = v25;
  [v31 setFlowItemDelegate_];
  v33 = PKAccountHeroImageName();
  v34 = PKUIImageNamed(v33);

  if (v34)
  {
    [v31 setPassSnapshot:v34 needsCorners:1];
  }

  swift_unknownObjectWeakAssign();
  v35 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
  v36 = objc_allocWithZone(v35);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v59.receiver = v36;
  v59.super_class = v35;
  v37 = v31;
  v38 = objc_msgSendSuper2(&v59, sel_init);
  key = 0;
  objc_setAssociatedObject(v37, &key, v38, 1);

  *&v24[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BC1D90;
  swift_unknownObjectWeakAssign();

  [v37 setCoordinator_];
  v39 = *(v25 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController);
  *(v32 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController) = v31;
  v40 = v37;

  v41 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v44 = v56;
  v45 = v57;
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = v45;
  v43[5] = v19;
  v43[6] = v40;
  v46 = v19;
  v47 = v40;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD814B5C(v41, 11, sub_1BD4124DC, v43);
}

void sub_1BD411A1C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      v13 = a1;
      sub_1BD411018(v13, a3, a4);
LABEL_14:

      return;
    }

    sub_1BD411C9C(a5);
    v13 = v14;
    [a6 setFieldsModel_];
    v15 = [v13 paymentSetupFields];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
    v17 = sub_1BE052744();

    if (v17 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_7;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB40900](0, v17);
        goto LABEL_10;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(v17 + 32);
LABEL_10:
        v19 = v18;
        v27 = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1BE0B69E0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1BE0B69E0;
        v22 = [v19 identifier];
        v23 = sub_1BE052434();
        v25 = v24;

        *(v21 + 32) = v23;
        *(v21 + 40) = v25;
        *(v20 + 32) = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
        v26 = sub_1BE052724();

        [a6 setSectionIdentifiers_];

LABEL_13:
        a3(1);
        goto LABEL_14;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_13;
  }
}

void sub_1BD411C9C(void *a1)
{
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 state];
  if (!v9)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v9 eligibilityResponse];

  if (v11)
  {
    v12 = [v11 supplementaryData];

    v13 = [v12 lightweightAccount];
    if (v13)
    {
      v14 = v13;
      v15 = v14;
      goto LABEL_7;
    }
  }

  v16 = [*(v1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController) account];
  if (v16)
  {
    v14 = v16;
    v15 = 0;
LABEL_7:
    v17 = sub_1BD0E5E8C(0, &unk_1EBD45AB0);
    v18 = [swift_getObjCClassFromMetadata() paymentSetupFieldWithIdentifier_];
    if (v18)
    {
      v19 = v18;
      v59 = v1;
      v60 = v3;
      v20 = [v14 appleBalanceDetails];
      if (v20)
      {
        v21 = v20;
        v22 = v14;
        v23 = v17;
        v24 = v15;
        v25 = [v20 accountSummary];
        if (!v25)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v26 = v25;
        v27 = [v25 currentBalance];

        v28 = [v21 currencyCode];
        v29 = PKCurrencyAmountMake();

        if (v29)
        {
          v30 = v19;
          v31 = [v29 formattedStringValue];
          if (!v31)
          {
LABEL_27:
            __break(1u);
            return;
          }

          v32 = v31;
          [v30 setCurrentValue_];

          v21 = v32;
        }

        v15 = v24;
        v17 = v23;
        v14 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8);
      inited = swift_initStackObject();
      v58 = xmmword_1BE0B69E0;
      *(inited + 16) = xmmword_1BE0B69E0;
      v61 = sub_1BE052434();
      v62 = v34;
      v35 = v19;
      sub_1BE0537C4();
      *(inited + 96) = MEMORY[0x1E69E6370];
      *(inited + 72) = 1;
      sub_1BD1AB16C(inited);
      swift_setDeallocating();
      sub_1BD4124EC(inited + 32);
      v36 = sub_1BE052224();

      [v35 updateWithConfiguration_];

      sub_1BE04BB94();
      v37 = sub_1BE04B934();
      (*(v4 + 8))(v8, v60);
      v38 = [v37 appleAccountInformation];
      swift_unknownObjectRelease();
      if (v38 && (v39 = [v38 appleID], v38, v39))
      {
        v40 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

        v41 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
        v42 = sub_1BE052404();
        v43 = [v41 initWithIdentifier:v42 body:v40];

        [v43 setPosition_];
        [v43 setAlingment_];
        [v43 setFontScale_];
        v44 = [v35 identifier];

        v45 = sub_1BE052434();
        v47 = v46;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1BE0B7020;
        *(v48 + 32) = v43;
        v49 = MEMORY[0x1E69E7CC8];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v49;
        sub_1BD1DB4D8(v48, v45, v47, isUniquelyReferenced_nonNull_native);
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
      v51 = swift_allocObject();
      *(v51 + 16) = v58;
      *(v51 + 56) = v17;
      *(v51 + 32) = v35;
      v52 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
      v53 = v35;
      v54 = sub_1BE052724();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0);
      v55 = sub_1BE052224();
      v56 = [v52 initWithPaymentSetupFields:v54 footerFields:v55];

      if (v56)
      {

        return;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v57 = objc_allocWithZone(MEMORY[0x1E69B8E38]);

  [v57 init];
}

uint64_t sub_1BD41236C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4123A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD4123FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD4124EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4125B8(void *a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    sub_1BD0E5E8C(0, qword_1EBD45AD0);
    sub_1BD412688();
    swift_willThrowTypedImpl();
    v3 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses);
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses) = v3;

  v6 = v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v2, &off_1F3BA5A60, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1BD412688()
{
  result = qword_1EBD56500;
  if (!qword_1EBD56500)
  {
    sub_1BD0E5E8C(255, qword_1EBD45AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56500);
  }

  return result;
}

void sub_1BD4126F8()
{
  sub_1BD4130E0(319, &qword_1EBD59660, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BD4130E0(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1BD131ACC(319, &qword_1EBD39020, &qword_1EBD579E0);
        if (v3 <= 0x3F)
        {
          sub_1BD131ACC(319, &qword_1EBD45B58, &qword_1EBD3C3C8);
          if (v4 <= 0x3F)
          {
            sub_1BE04C894();
            if (v5 <= 0x3F)
            {
              sub_1BE04EDE4();
              if (v6 <= 0x3F)
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

uint64_t sub_1BD412868(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BE04C894();
  v9 = *(v8 - 8);
  v39 = v8;
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  v12 = sub_1BE04F684();
  v13 = *(v12 - 8);
  v14 = *(v6 + 80);
  v15 = *(v9 + 80);
  v16 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v11;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + 7;
  v20 = v16 | 7;
  v21 = (v16 | 7) + *(v9 + 64);
  if (a2 > v18)
  {
    v22 = *(*(v12 - 8) + 64) - ((-17 - v16) | v16) - ((((-25 - v15 - ((((v19 + ((v14 + 64) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v15) - v21) | v20) - 2;
    v23 = 8 * v22;
    if (v22 > 3)
    {
      goto LABEL_13;
    }

    v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 >= 2)
    {
LABEL_13:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

LABEL_21:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v28 = v22;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      v32 = v18 + (v29 | v27);
      return (v32 + 1);
    }
  }

LABEL_34:
  v30 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v17 <= 0x7FFFFFFE)
  {
    v31 = *(v30 + 56);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 - 1;
    if (v32 < 0)
    {
      v32 = -1;
    }

    return (v32 + 1);
  }

  v33 = (v30 + v14 + 64) & ~v14;
  if (v7 == v18)
  {
    v34 = *(v6 + 48);
    v35 = v7;
    v36 = v5;

    return v34(v33, v35, v36);
  }

  v33 = (v15 + ((((v19 + v33) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v15;
  if (v10 == v18)
  {
    v34 = *(v9 + 48);
    v35 = v10;
    v36 = v39;

    return v34(v33, v35, v36);
  }

  v37 = *(v13 + 48);
  v38 = (v16 + ((v21 + v33) & ~v20) + 16) & ~v16;

  return v37(v38);
}

void sub_1BD412C54(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v7 = *(v37 - 8);
  v38 = v7;
  v8 = *(v7 + 84);
  v36 = sub_1BE04C894();
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_1BE04F684();
  v13 = *(v12 - 8);
  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v9 + 80);
  v17 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v17 | 7) + *(v9 + 64);
  v21 = -2 - (((-17 - v17) | v17) - *(*(v12 - 8) + 64)) - ((((((((-65 - v14) | v14) - (v15 + 7)) | 7) - (v16 + 24) - 16) | v16) - v20) | v17 | 7);
  if (a3 <= v19)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v19 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v19 < a2)
  {
    v23 = ~v19 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_57:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v21) = 0;
  }

  else if (v22)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  v28 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v18 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFE)
    {
      *(v28 + 48) = (a2 - 0x7FFFFFFF);
      *(v28 + 56) = 0;
    }

    else
    {
      *(v28 + 56) = a2;
    }

    return;
  }

  v29 = (v28 + v14 + 64) & ~v14;
  if (v8 == v19)
  {
    v30 = *(v38 + 56);
    v31 = a2;
    v32 = v8;
    v33 = v37;

LABEL_43:
    v30(v29, v31, v32, v33);
    return;
  }

  v29 = (v16 + 24 + ((((v15 + 7 + v29) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
  if (v10 == v19)
  {
    v30 = *(v9 + 56);
    v31 = a2;
    v32 = v10;
    v33 = v36;

    goto LABEL_43;
  }

  v34 = *(v13 + 56);
  v35 = (v17 + ((v20 + v29) & ~(v17 | 7)) + 16) & ~v17;

  v34(v35, a2);
}

void sub_1BD4130E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD413178()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v7 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1BD4132C0()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v7 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1BD413408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a1;
  v14[2] = a2;
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  sub_1BE051534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  v14[14] = swift_getWitnessTable();
  v14[15] = MEMORY[0x1E697EBF8];
  v14[12] = swift_getWitnessTable();
  v14[13] = MEMORY[0x1E697EBE0];
  v14[10] = swift_getWitnessTable();
  v14[11] = swift_getWitnessTable();
  v14[9] = swift_getWitnessTable();
  v14[7] = swift_getWitnessTable();
  v14[8] = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v14[5] = swift_getWitnessTable();
  v14[6] = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_1BE051754();
  v3 = sub_1BE04F9B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v14 - v10;
  sub_1BD41381C(v14[0], v7);
  v14[3] = swift_getWitnessTable();
  v14[4] = WitnessTable;
  swift_getWitnessTable();
  sub_1BD147308(v7);
  v12 = *(v4 + 8);
  v12(v7, v3);
  sub_1BD147308(v11);
  return (v12)(v11, v3);
}

uint64_t sub_1BD41381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v2 = *(a1 + 16);
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  v39 = v2;
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  sub_1BE051534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v3 = sub_1BE04EBD4();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v38 - v9;
  WitnessTable = swift_getWitnessTable();
  v58 = MEMORY[0x1E697EBF8];
  v55 = swift_getWitnessTable();
  v56 = MEMORY[0x1E697EBE0];
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v53 = v10;
  v54 = v11;
  v52 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v50 = v12;
  v51 = v13;
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x1E697E5D8];
  v14 = swift_getWitnessTable();
  v15 = sub_1BE051754();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v38 - v22;
  v24 = sub_1BE04F9B4();
  v25 = v43;
  v41 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v42, v26);
  v45 = &v38 - v29;
  v30 = *&v25[*(v27 + 52)];
  if (v30)
  {
    v38 = &v38;
    MEMORY[0x1EEE9AC00](v27, v28);
    v40 = v14;
    v32 = *(v31 + 24);
    *(&v38 - 4) = v39;
    *(&v38 - 3) = v32;
    *(&v38 - 2) = v25;
    sub_1BD0D44B8(v30);
    sub_1BE048964();
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308(v19);
    v33 = *(v16 + 8);
    v33(v19, v15);
    sub_1BD147308(v23);
    v14 = v40;
    sub_1BD13A700(v19, v15);
    sub_1BD0D4744(v30);
    v33(v19, v15);
    v33(v23, v15);
  }

  else
  {
    sub_1BD4142E4(v27, v28, v6);
    v34 = v38;
    sub_1BD147308(v6);
    v35 = *(v40 + 8);
    v35(v6, v3);
    sub_1BD147308(v34);
    swift_getWitnessTable();
    sub_1BD13A7F8(v6, v15, v3);
    v35(v6, v3);
    v35(v34, v3);
  }

  v46 = swift_getWitnessTable();
  v47 = v14;
  swift_getWitnessTable();
  v36 = v45;
  sub_1BD147308(v45);
  return (*(v41 + 8))(v36, v24);
}

uint64_t sub_1BD413F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[3] = a1;
  v19[4] = a2;
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04EBD4();
  v19[0] = sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  v19[1] = sub_1BE051534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  v19[2] = sub_1BE04EBD4();
  v2 = sub_1BE04EBD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v19 - v9;
  v11 = type metadata accessor for PaymentChinItem();
  sub_1BD4142E4(v11, v12, v6);
  v19[14] = swift_getWitnessTable();
  v19[15] = MEMORY[0x1E697EBF8];
  v19[12] = swift_getWitnessTable();
  v19[13] = MEMORY[0x1E697EBE0];
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v19[10] = WitnessTable;
  v19[11] = v14;
  v19[9] = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v19[7] = v15;
  v19[8] = v16;
  v19[5] = swift_getWitnessTable();
  v19[6] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308(v6);
  v17 = *(v3 + 8);
  v17(v6, v2);
  sub_1BD147308(v10);
  return (v17)(v10, v2);
}

uint64_t sub_1BD4142E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = *(a1 - 8);
  v52 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  v41 = sub_1BE04EBD4();
  v40 = sub_1BE04EBD4();
  v39 = v8;
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  v9 = sub_1BE051534();
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v37 = &v36 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  v45 = sub_1BE04EBD4();
  v50 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v45);
  v43 = &v36 - v12;
  v48 = sub_1BE04EBD4();
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v13);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v36 - v17;
  v18 = *(a1 + 24);
  v54 = v8;
  v55 = v18;
  v38 = v3;
  v56 = v3;
  WitnessTable = swift_getWitnessTable();
  v69 = MEMORY[0x1E697EBF8];
  v42 = MEMORY[0x1E697E858];
  v66 = swift_getWitnessTable();
  v67 = MEMORY[0x1E697EBE0];
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v64 = v19;
  v65 = v20;
  v21 = swift_getWitnessTable();
  sub_1BE051524();
  v22 = v49;
  (*(v5 + 16))(v49, v3, a1);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v39;
  *(v24 + 24) = v18;
  (*(v5 + 32))(v24 + v23, v22, a1);
  v62 = sub_1BD415FC4;
  v63 = v24;
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70);
  v61 = v21;
  v25 = swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70);
  v26 = v43;
  v27 = v37;
  sub_1BE050834();

  (*(v47 + 8))(v27, v9);
  sub_1BD415C9C();
  v28 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v59 = v25;
  v60 = v28;
  v29 = v45;
  v30 = swift_getWitnessTable();
  v31 = v44;
  sub_1BE051004();
  (*(v50 + 8))(v26, v29);
  v57 = v30;
  v58 = MEMORY[0x1E697E5D8];
  v32 = v48;
  swift_getWitnessTable();
  v33 = v46;
  sub_1BD147308(v31);
  v34 = *(v51 + 8);
  v34(v31, v32);
  sub_1BD147308(v33);
  return (v34)(v33, v32);
}

uint64_t sub_1BD414A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v59 = a4;
  swift_getTupleTypeMetadata2();
  v45[2] = sub_1BE051E34();
  v45[1] = swift_getWitnessTable();
  v6 = sub_1BE051774();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v47 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = v45 - v11;
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1BE051774();
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v12);
  v14 = v45 - v13;
  v60 = v15;
  v16 = sub_1BE04EBD4();
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = v45 - v17;
  v57 = v19;
  v20 = sub_1BE04EBD4();
  v52 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v45 - v26;
  v58 = v6;
  v56 = sub_1BE04F9B4();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v28);
  v54 = v45 - v29;
  v30 = *(v53 + *(type metadata accessor for PaymentChinItem() + 52));
  v61 = a2;
  v62 = a3;
  v63 = v53;
  sub_1BE04F504();
  if (v30)
  {
    sub_1BE051764();
    sub_1BE051CD4();
    v53 = MEMORY[0x1E69817F8];
    v43 = v60;
    v44 = swift_getWitnessTable();
    sub_1BE050F54();
    (*(v50 + 8))(v14, v43);
    v66 = v44;
    v67 = MEMORY[0x1E697EBF8];
    v31 = v57;
    v32 = swift_getWitnessTable();
    sub_1BE051104();
    (*(v51 + 8))(v18, v31);
    v64 = v32;
    v65 = MEMORY[0x1E697EBE0];
    swift_getWitnessTable();
    sub_1BD147308(v23);
    v33 = *(v52 + 8);
    v33(v23, v20);
    sub_1BD147308(v27);
    swift_getWitnessTable();
    v34 = v54;
    sub_1BD13A700(v23, v20);
    v33(v23, v20);
    v33(v27, v20);
  }

  else
  {
    v35 = v47;
    sub_1BE051764();
    v36 = v58;
    swift_getWitnessTable();
    v37 = v46;
    sub_1BD147308(v35);
    v38 = *(v48 + 8);
    v38(v35, v36);
    sub_1BD147308(v37);
    v76 = swift_getWitnessTable();
    v77 = MEMORY[0x1E697EBF8];
    v74 = swift_getWitnessTable();
    v75 = MEMORY[0x1E697EBE0];
    swift_getWitnessTable();
    v34 = v54;
    sub_1BD13A7F8(v35, v20, v36);
    v38(v35, v36);
    v38(v37, v36);
  }

  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x1E697EBF8];
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x1E697EBE0];
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v68 = v39;
  v69 = v40;
  v41 = v56;
  swift_getWitnessTable();
  sub_1BD147308(v34);
  return (*(v55 + 8))(v34, v41);
}

uint64_t sub_1BD41531C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_1BE04C894();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BE04C764();
  v11 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v12);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v33 - v25;
  v27 = type metadata accessor for PaymentChinItem();
  sub_1BD147308(a1 + *(v27 + 48));
  (*(v34 + 16))(v10, a1 + *(v27 + 60), v35);
  sub_1BE04C754();
  (*(v18 + 16))(v22, v26, a2);
  v42 = 0x4024000000000000;
  v43 = 0;
  v44[0] = v22;
  v44[1] = &v42;
  v28 = v33;
  v29 = v36;
  (*(v11 + 16))(v33, v17, v36);
  v44[2] = v28;
  v41[0] = a2;
  v41[1] = MEMORY[0x1E6981840];
  v41[2] = v29;
  v38 = a3;
  v39 = MEMORY[0x1E6981838];
  v40 = sub_1BD1C32BC();
  sub_1BD13A4C4(v44, 3uLL, v41);
  v30 = *(v11 + 8);
  v30(v17, v29);
  v31 = *(v18 + 8);
  v31(v26, a2);
  v30(v28, v29);
  return (v31)(v22, a2);
}

uint64_t sub_1BD415658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - v11;
  v13 = type metadata accessor for PaymentChinItem();
  sub_1BD147308(a1 + *(v13 + 48));
  (*(v6 + 16))(v8, v12, a2);
  v18 = 0;
  v19 = 0;
  v20[0] = v8;
  v20[1] = &v18;
  v17[0] = a2;
  v17[1] = MEMORY[0x1E6981840];
  v16[0] = a3;
  v16[1] = MEMORY[0x1E6981838];
  sub_1BD13A4C4(v20, 2uLL, v17);
  v14 = *(v6 + 8);
  v14(v12, a2);
  return (v14)(v8, a2);
}

uint64_t sub_1BD4157DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a1;
  v33 = a3;
  v29 = a2;
  v30 = a5;
  v6 = sub_1BE04E6A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v27[0] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaymentChinItem();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v27 - v14;
  v34 = sub_1BE051404();
  v28 = *(v11 + 16);
  v28(v15, a2, v10);
  v16 = v6;
  (*(v7 + 16))(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v6);
  v17 = *(v11 + 80);
  v18 = (v17 + 32) & ~v17;
  v27[1] = v17 | 7;
  v27[2] = v18 + v12;
  v19 = (v18 + v12 + *(v7 + 80)) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = v33;
  *(v20 + 24) = v21;
  v22 = *(v11 + 32);
  v22(v20 + v18, v15, v10);
  (*(v7 + 32))(v20 + v19, v27[0], v16);
  v36 = v34;
  v37 = sub_1BD416060;
  v38 = v20;
  v39 = 0;
  v40 = 0;
  sub_1BE04E684();
  v35 = v23;
  v28(v15, v29, v10);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v33;
  *(v24 + 24) = v25;
  v22(v24 + v18, v15, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
}

uint64_t sub_1BD415AFC(uint64_t a1)
{
  result = type metadata accessor for PaymentChinItem();
  if (*(a1 + *(result + 56) + 8))
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04E684();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8);
    sub_1BE0518F4();
  }

  return result;
}

uint64_t sub_1BD415BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for PaymentChinItem();
  v5 = (a3 + *(result + 56));
  v6 = v5[1];
  if (v6)
  {
    sub_1BD416440(*v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8);
    sub_1BE0518F4();
  }

  return result;
}

double sub_1BD415C9C()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BE051C54())
  {
    return 16.0;
  }

  if (sub_1BD413178())
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BD4132C0();
  }

  v8 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v8)
    {
      v6 = 16.0;
    }

    else
    {
      v6 = 12.0;
    }
  }

  else
  {
    v14[2] = v7;
    sub_1BE048964();
    sub_1BE052C44();
    v9 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v8, 0);
    v10 = *(v2 + 8);
    v10(v5, v1);
    if (v15)
    {
      v6 = 16.0;
    }

    else
    {
      v6 = 12.0;
    }

    sub_1BE048964();
    sub_1BE052C44();
    v11 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v8, 0);
    v10(v5, v1);
    sub_1BE048964();
    sub_1BE052C44();
    v12 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v8, 0);
    v10(v5, v1);
  }

  sub_1BE051C54();
  return v6;
}

uint64_t sub_1BD415FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PaymentChinItem() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BD4157DC(a1, v8, v5, v6, a2);
}

uint64_t sub_1BD416060()
{
  v1 = *(type metadata accessor for PaymentChinItem() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  sub_1BE04E6A4();

  return sub_1BD415AFC(v0 + v2);
}

uint64_t objectdestroyTm_39()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PaymentChinItem();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  sub_1BD0D4604(*v3, *(v3 + 8));
  sub_1BD0D4604(*(v3 + 16), *(v3 + 24));
  sub_1BD0D4604(*(v3 + 32), *(v3 + 40));

  (*(*(v1 - 8) + 8))(v3 + v2[12], v1);
  if (*(v3 + v2[13]))
  {
  }

  if (*(v3 + v2[14] + 8))
  {
  }

  v4 = v2[15];
  v5 = sub_1BE04C894();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v2[16];
  v7 = v6 + *(sub_1BE04EDE4() + 20);
  v8 = sub_1BE04F684();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1BD416320(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PaymentChinItem() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1BD415BD4(a1, a2, v6);
}

unint64_t sub_1BD4163BC()
{
  result = qword_1EBD45B88;
  if (!qword_1EBD45B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45B88);
  }

  return result;
}

uint64_t sub_1BD416440(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t type metadata accessor for VirtualCardAuthorizationModel()
{
  result = qword_1EBD45B90;
  if (!qword_1EBD45B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BD416524(void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[4];
  v12 = a1[3];
  v13 = v2;
  v5 = v4;
  v6 = v3;
  sub_1BD0DE19C(&v13, v11, &qword_1EBD3D490);
  sub_1BD0DE19C(&v12, v11, &qword_1EBD40150);
  sub_1BE048964();
  v7 = sub_1BD46A578(a1);

  sub_1BD0DE53C(&v13, &qword_1EBD3D490);
  sub_1BD0DE53C(&v12, &qword_1EBD40150);

  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1BD416A34;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BD126964;
  v11[3] = &block_descriptor_89;
  v9 = _Block_copy(v11);

  [v5 setUpdateHandler_];

  sub_1BD0DE53C(&v13, &qword_1EBD3D490);
  sub_1BD0DE53C(&v12, &qword_1EBD40150);

  _Block_release(v9);
  return v7;
}

uint64_t sub_1BD4166F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + qword_1EBDAAD68 + 24);
    v1 = *(result + qword_1EBDAAD68 + 32);
    v3 = v2;
    v4 = v1;
    sub_1BD2B1238(v4, v2, &v9);
    v5 = v10;
    if (v10)
    {
      v6 = v9;
      sub_1BD1C2B14();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      v8 = v12;
      *(v7 + 32) = v11;
      *(v7 + 48) = v8;
    }

    sub_1BE04C8F4();
  }

  return result;
}

uint64_t sub_1BD4167F0(uint64_t a1)
{
  v2 = *a1;
  v22 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(v1 + qword_1EBDAAD68);
  v7 = *(v1 + qword_1EBDAAD68 + 24);
  v8 = *(v1 + qword_1EBDAAD68 + 32);
  v9 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v9;
  v5[2] = *(a1 + 32);
  v10 = v3;
  v11 = v2;
  v12 = v4;
  sub_1BE048964();
  sub_1BD0DE19C(&v22, &v18, &qword_1EBD3D490);

  swift_unknownObjectRelease();
  sub_1BD2B1238(v12, v3, &v18);
  v13 = v19;
  if (v19)
  {
    v14 = v18;
    sub_1BD1C2B14();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v16 = v21;
    *(v15 + 32) = v20;
    *(v15 + 48) = v16;
  }

  return sub_1BE04C8F4();
}

uint64_t sub_1BD416938()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *EducationalMessageView.init(with:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____PKEducationalMessageView_actionHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____PKEducationalMessageView_actionButton] = 0;
  *&v1[OBJC_IVAR____PKEducationalMessageView_animationView] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____PKEducationalMessageView_titleLabel;
  *&v1[OBJC_IVAR____PKEducationalMessageView_titleLabel] = v4;
  v6 = *MEMORY[0x1E69DDD80];
  v7 = *MEMORY[0x1E69DDC38];
  v8 = v4;
  v9 = PKFontForDefaultDesign(v6, v7, 32770, 0);
  [v8 setFont_];

  [*&v1[v5] setNumberOfLines_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____PKEducationalMessageView_messageLabel;
  *&v1[OBJC_IVAR____PKEducationalMessageView_messageLabel] = v10;
  v12 = v10;
  v13 = PKFontForDefaultDesign(v6, v7, 0x8000, 0);
  [v12 setFont_];

  [*&v1[v11] setNumberOfLines_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____PKEducationalMessageView_imageView] = v14;
  [v14 setContentMode_];
  v22.receiver = v1;
  v22.super_class = type metadata accessor for EducationalMessageView();
  v15 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____PKEducationalMessageView_titleLabel];
  v17 = v15;
  [v17 addSubview_];
  [v17 addSubview_];
  [v17 addSubview_];
  v18 = [v17 layer];
  [v18 setMasksToBounds_];

  v19 = [v17 layer];
  [v19 setCornerRadius_];

  v20 = [objc_opt_self() systemGray5Color];
  [v17 setBackgroundColor_];

  sub_1BD416E04(a1);
  return v17;
}

void sub_1BD416E04(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44678);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v70 - v6;
  v8 = sub_1BE053174();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE053274();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v70 - v19;
  v21 = sub_1BE04D3C4();
  v22 = *(v21 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21, v23);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v76 = v24;
    v77 = v11;
    v74 = v16;
    v75 = v7;
    v28 = a1;
    v29 = [v28 title];
    if (v29 || (v29 = [v28 message]) != 0 || (v29 = objc_msgSend(v28, sel_image)) != 0)
    {
      v72 = v13;

      v30 = [v28 title];
      v31 = *&v2[OBJC_IVAR____PKEducationalMessageView_titleLabel];
      if (v30)
      {
        v32 = v30;
        v33 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

        [v31 setAttributedText_];
      }

      else
      {
        [*&v2[OBJC_IVAR____PKEducationalMessageView_titleLabel] setAttributedText_];
      }

      v73 = v12;
      v34 = [v28 titleColor];
      if (!v34)
      {
        v34 = [objc_opt_self() labelColor];
      }

      [v31 setTextColor_];

      v35 = *&v2[OBJC_IVAR____PKEducationalMessageView_messageLabel];
      v36 = [v28 &selRef_metrics];
      [v35 setText_];

      v37 = [v28 messageColor];
      if (!v37)
      {
        v37 = [objc_opt_self() secondaryLabelColor];
      }

      [v35 setTextColor_];

      v38 = [v28 actionTitle];
      v39 = &selRef_activateWithCompletionBlock_;
      v40 = v77;
      if (v38)
      {
        v41 = v38;
        v42 = [v28 actionHandler];
        if (v42)
        {
          v43 = v42;
          v44 = swift_allocObject();
          v70 = v27;
          v71 = v44;
          *(v44 + 16) = v43;
          sub_1BE04D3D4();
          sub_1BE053224();
          sub_1BE053164();
          (*(v78 + 104))(v40, *MEMORY[0x1E69DC540], v79);
          sub_1BE053194();
          v45 = v75;
          v46 = v76;
          (*(v22 + 16))(v75, v27, v76);
          (*(v22 + 56))(v45, 0, 1, v46);
          sub_1BE0531F4();
          v47 = sub_1BE0530D4();
          sub_1BE04D244();
          v47(v80, 0);
          sub_1BD418150();
          v49 = v72;
          v48 = v73;
          (*(v72 + 16))(v74, v20, v73);
          v50 = sub_1BE053284();
          [v50 setTitle:v41 forState:0];

          [v50 addTarget:v2 action:sel_handleAction forControlEvents:64];
          [v2 addSubview_];
          (*(v49 + 8))(v20, v48);
          v39 = &selRef_activateWithCompletionBlock_;
          (*(v22 + 8))(v70, v46);
          v51 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton];
          *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton] = v50;

          v52 = &v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
          v53 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
          v54 = v71;
          *v52 = sub_1BD418140;
          v52[1] = v54;
LABEL_17:
          sub_1BD0D4744(v53);
          v57 = *&v2[OBJC_IVAR____PKEducationalMessageView_imageView];
          v58 = [v28 image];
          [v57 setImage_];

          v59 = OBJC_IVAR____PKEducationalMessageView_animationView;
          v60 = *&v2[OBJC_IVAR____PKEducationalMessageView_animationView];
          if (v60)
          {
            [v60 removeFromSuperview];
          }

          v61 = [v28 animation];
          v62 = objc_allocWithZone(type metadata accessor for EducationalMessageAnimationView());
          v63 = sub_1BD4FC824(v61);
          if (v63)
          {
            v64 = v63;
            [v2 v39[110]];

            v65 = *&v2[v59];
            *&v2[v59] = v64;
          }

          else
          {
          }

          return;
        }
      }

      v55 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton];
      *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton] = 0;

      v56 = &v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
      v53 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
      *v56 = 0;
      *(v56 + 1) = 0;
      goto LABEL_17;
    }
  }

  [*&v2[OBJC_IVAR____PKEducationalMessageView_titleLabel] setAttributedText_];
  [*&v2[OBJC_IVAR____PKEducationalMessageView_messageLabel] setText_];
  v66 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton];
  *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton] = 0;

  v67 = &v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
  v68 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
  *v67 = 0;
  *(v67 + 1) = 0;
  sub_1BD0D4744(v68);
  [*&v2[OBJC_IVAR____PKEducationalMessageView_imageView] setImage_];
  v69 = *&v2[OBJC_IVAR____PKEducationalMessageView_animationView];
  if (v69)
  {

    [v69 removeFromSuperview];
  }
}

uint64_t sub_1BD417618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04A604();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 0x8000, 0);
  sub_1BD1EB2D0();
  return sub_1BE04A614();
}

uint64_t sub_1BD417738()
{
  result = [*(v0 + OBJC_IVAR____PKEducationalMessageView_titleLabel) attributedText];
  if (result)
  {
    goto LABEL_3;
  }

  result = [*(v0 + OBJC_IVAR____PKEducationalMessageView_messageLabel) text];
  if (result)
  {
    goto LABEL_3;
  }

  if (*(v0 + OBJC_IVAR____PKEducationalMessageView_actionButton))
  {
    return 1;
  }

  result = [*(v0 + OBJC_IVAR____PKEducationalMessageView_imageView) image];
  if (result)
  {
LABEL_3:

    return 1;
  }

  return result;
}

double sub_1BD417958(char a1, double a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = UIEdgeInsetsInsetRect(0.0);
  v8 = v7;
  v9 = v4;
  v10 = v5;
  v11 = OBJC_IVAR____PKEducationalMessageView_animationView;
  v12 = *(v2 + OBJC_IVAR____PKEducationalMessageView_animationView);
  v72 = v7;
  v73 = v6;
  v71 = v4;
  if (v12)
  {
    [v12 sizeThatFits_];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v17 = [*(v2 + OBJC_IVAR____PKEducationalMessageView_imageView) image];
    if (!v17)
    {
      v76 = 0.0;
      v33 = v6;
      goto LABEL_11;
    }

    v18 = v17;
    [v17 size];
    v14 = v19;
    v16 = v20;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v81.origin.x = v6;
  v81.origin.y = v8;
  v81.size.width = v9;
  v81.size.height = v10;
  CGRectDivide(v81, &slice, &remainder, v14, CGRectMaxXEdge);
  v82 = slice;
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v76 = v16;
  CGRectDivide(v82, &slice, &remainder, v16, CGRectMinYEdge);
  if ((a1 & 1) == 0)
  {
    v25 = slice.origin.x;
    v26 = slice.origin.y;
    v27 = slice.size.width;
    v28 = slice.size.height;
    v29 = *(v2 + v11);
    if (v29)
    {
      v30 = v29;
      [v30 setFrame_];
      [*(v2 + OBJC_IVAR____PKEducationalMessageView_imageView) setFrame_];
    }

    else
    {
      v31 = *(v2 + OBJC_IVAR____PKEducationalMessageView_imageView);
      v32 = [v31 image];
      if (v32)
      {

        [v31 setFrame_];
      }
    }
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  CGRectDivide(v83, &slice, &remainder, 16.0, CGRectMaxXEdge);
  v33 = remainder.origin.x;
  v8 = remainder.origin.y;
  v9 = remainder.size.width;
  v10 = remainder.size.height;
LABEL_11:
  v34 = *(v2 + OBJC_IVAR____PKEducationalMessageView_titleLabel);
  [v34 sizeThatFits_];
  v36 = v35;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v84.origin.x = v33;
  v84.origin.y = v8;
  v84.size.width = v9;
  v84.size.height = v10;
  CGRectDivide(v84, &slice, &remainder, v36, CGRectMinYEdge);
  v37 = slice.origin.x;
  v38 = slice.origin.y;
  v39 = slice.size.width;
  v40 = slice.size.height;
  v41 = remainder.origin.x;
  v42 = remainder.origin.y;
  v44 = remainder.size.width;
  v43 = remainder.size.height;
  if ((a1 & 1) == 0)
  {
    [v34 setFrame_];
  }

  v77 = v40 + 0.0;
  v85.origin.x = v37;
  v85.origin.y = v38;
  v85.size.width = v39;
  v85.size.height = v40;
  if (CGRectGetHeight(v85) > 0.0)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v86.origin.x = v41;
    v86.origin.y = v42;
    v86.size.width = v44;
    v86.size.height = v43;
    CGRectDivide(v86, &slice, &remainder, 2.0, CGRectMinYEdge);
    v41 = remainder.origin.x;
    v42 = remainder.origin.y;
    v44 = remainder.size.width;
    v43 = remainder.size.height;
    v77 = v77 + slice.size.height;
  }

  v45 = *(v2 + OBJC_IVAR____PKEducationalMessageView_messageLabel);
  [v45 sizeThatFits_];
  v47 = v46;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v87.origin.x = v41;
  v87.origin.y = v42;
  v87.size.width = v44;
  v87.size.height = v43;
  CGRectDivide(v87, &slice, &remainder, v47, CGRectMinYEdge);
  v48 = slice.origin.x;
  v49 = slice.origin.y;
  v51 = slice.size.width;
  v50 = slice.size.height;
  v52 = remainder.origin.x;
  rect = remainder.origin.y;
  v54 = remainder.size.width;
  v53 = remainder.size.height;
  v55 = v77 + slice.size.height;
  if (a1)
  {
    v56 = *(v2 + OBJC_IVAR____PKEducationalMessageView_actionButton);
    if (!v56)
    {
      return a2;
    }
  }

  else
  {
    [v45 setFrame_];
    v56 = *(v2 + OBJC_IVAR____PKEducationalMessageView_actionButton);
    if (!v56)
    {
      if (v76 >= v55)
      {
        return a2;
      }

      goto LABEL_27;
    }
  }

  v57 = v56;
  v88.origin.x = v48;
  v88.origin.y = v49;
  v88.size.width = v51;
  v88.size.height = v50;
  if (CGRectGetHeight(v88) <= 0.0)
  {
    v58 = v52;
    v59 = rect;
  }

  else
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v89.origin.x = v52;
    v89.origin.y = rect;
    v89.size.width = v54;
    v89.size.height = v53;
    CGRectDivide(v89, &slice, &remainder, 2.0, CGRectMinYEdge);
    v58 = remainder.origin.x;
    v59 = remainder.origin.y;
    v54 = remainder.size.width;
    v53 = remainder.size.height;
    v55 = v55 + slice.size.height;
  }

  v60 = v57;
  [v60 sizeThatFits_];
  v62 = v61;
  v64 = v63;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v90.origin.x = v58;
  v90.origin.y = v59;
  v90.size.width = v54;
  v90.size.height = v53;
  CGRectDivide(v90, &slice, &remainder, v64, CGRectMinYEdge);
  v91 = slice;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v91, &slice, &remainder, v62, CGRectMinXEdge);
  v55 = v55 + slice.size.height;
  if (a1)
  {

    return a2;
  }

  [v60 setFrame_];

  if (v76 >= v55)
  {
    return a2;
  }

LABEL_27:
  if (!*(v2 + v11))
  {
    v65 = *(v2 + OBJC_IVAR____PKEducationalMessageView_imageView);
    v66 = [v65 image];
    if (v66)
    {
      v67 = v66;
      [v66 size];
      v69 = v68;

      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v92.origin.y = v72;
      v92.origin.x = v73;
      v92.size.width = v71;
      v92.size.height = v55;
      CGRectDivide(v92, &slice, &remainder, v69, CGRectMaxXEdge);
      [v65 frame];
      UIRectCenteredYInRect();
      [v65 setFrame_];
    }
  }

  return a2;
}

id EducationalMessageView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EducationalMessageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EducationalMessageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD418150()
{
  result = qword_1EBD4A9F0;
  if (!qword_1EBD4A9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4A9F0);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferActionExplanationView()
{
  result = qword_1EBD45BD8;
  if (!qword_1EBD45BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD4182C0()
{
  sub_1BD0E5E8C(319, &qword_1EBD496B0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &unk_1EBD496A0);
    if (v1 <= 0x3F)
    {
      sub_1BD4184F8();
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          sub_1BD418560(319, &qword_1EBD45BE8, &type metadata for PaymentOfferActionExplanationView.ButtonType, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD33A100(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD33A100(319, &qword_1EBD39358, &unk_1EBD45160, &unk_1BE0C25A0, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD418560(319, &qword_1EBD3E998, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                if (v7 <= 0x3F)
                {
                  sub_1BD418560(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
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

void sub_1BD4184F8()
{
  if (!qword_1EBD57CB0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD456C0);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD57CB0);
    }
  }
}

void sub_1BD418560(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for PaymentOfferActionExplanationView.ButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 5)
  {
    return v9 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD418678(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BD4186A4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BD418728@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45BF0);
  v81 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v68 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45BF8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  v10 = sub_1BE04FE84();
  v80 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C00);
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v68 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C08);
  v78 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v17);
  v19 = &v68 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C10);
  MEMORY[0x1EEE9AC00](v83, v20);
  v24 = &v68 - v23;
  if (*(v1 + 184) == 1)
  {
    v73 = &v68;
    MEMORY[0x1EEE9AC00](v21, v22);
    v72 = &v68 - 4;
    *(&v68 - 2) = v1;
    v81 = v25;
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C20);
    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C28);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C30);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38);
    v70 = v2;
    v28 = v27;
    v29 = type metadata accessor for MultiHyperLinkDetailSheet();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    v76 = v9;
    v31 = v30;
    v32 = sub_1BD41CF04();
    v74 = v10;
    v33 = v32;
    v34 = sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    v75 = v6;
    v35 = v34;
    v36 = sub_1BD10CC54();
    v85 = v28;
    v86 = v29;
    v87 = v31;
    v88 = v33;
    v89 = v35;
    v90 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v85 = v26;
    v86 = OpaqueTypeConformance2;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78);
    v40 = sub_1BD41D104();
    v85 = v39;
    v86 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v85 = v71;
    v86 = v69;
    v87 = v38;
    v88 = v41;
    swift_getOpaqueTypeConformance2();
    sub_1BE04EC04();
    v42 = sub_1BD0DE4F4(&qword_1EBD45C18, &qword_1EBD45C00);
    sub_1BE050E54();
    (*(v77 + 8))(v16, v13);
    v43 = v79;
    sub_1BE04FE74();
    v85 = v13;
    v86 = v42;
    v44 = swift_getOpaqueTypeConformance2();
    v45 = sub_1BD41D8A8(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    v46 = v82;
    v47 = v74;
    sub_1BE0507D4();
    (*(v80 + 8))(v43, v47);
    (*(v78 + 8))(v19, v46);
    v48 = v81;
    v49 = v83;
    (*(v81 + 16))(v76, v24, v83);
    swift_storeEnumTagMultiPayload();
    v85 = v46;
    v86 = v47;
    v87 = v44;
    v88 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v48 + 8))(v24, v49);
  }

  else
  {
    sub_1BD4190E8(v5);
    v51 = v81;
    (*(v81 + 16))(v9, v5, v2);
    swift_storeEnumTagMultiPayload();
    v52 = sub_1BD0DE4F4(&qword_1EBD45C18, &qword_1EBD45C00);
    v85 = v13;
    v86 = v52;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = sub_1BD41D8A8(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    v85 = v82;
    v86 = v10;
    v87 = v53;
    v88 = v54;
    v82 = swift_getOpaqueTypeConformance2();
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C20);
    v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C28);
    v55 = v2;
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C30);
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38);
    v58 = type metadata accessor for MultiHyperLinkDetailSheet();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    v60 = sub_1BD41CF04();
    v61 = sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    v62 = sub_1BD10CC54();
    v85 = v57;
    v86 = v58;
    v87 = v59;
    v88 = v60;
    v89 = v61;
    v90 = v62;
    v63 = swift_getOpaqueTypeConformance2();
    v85 = v56;
    v86 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78);
    v66 = sub_1BD41D104();
    v85 = v65;
    v86 = v66;
    v67 = swift_getOpaqueTypeConformance2();
    v85 = v80;
    v86 = v79;
    v87 = v64;
    v88 = v67;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v51 + 8))(v5, v55);
  }
}

uint64_t sub_1BD4190E8@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_1BE04F434();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v59 = &v53 - v7;
  v8 = type metadata accessor for PaymentOfferActionExplanationView();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = type metadata accessor for TitleBodyMultiHyperlinkView();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C50);
  MEMORY[0x1EEE9AC00](v54, v15);
  v17 = &v53 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C38);
  MEMORY[0x1EEE9AC00](v58, v18);
  v56 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C30);
  v21 = *(v20 - 8);
  v60 = v20;
  v61 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v68 = &v53 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C20);
  v25 = *(v24 - 8);
  v62 = v24;
  v63 = v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v57 = &v53 - v27;
  sub_1BD419908(v14);
  sub_1BD419F04(&v70);
  v98 = v82;
  v99[0] = v83[0];
  *(v99 + 9) = *(v83 + 9);
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v90 = v74;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v86 = v70;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  PKEdgeInsetsMake(&v86, v28);
  v84[12] = v98;
  v85[0] = v99[0];
  *(v85 + 9) = *(v99 + 9);
  v84[8] = v94;
  v84[9] = v95;
  v84[10] = v96;
  v84[11] = v97;
  v84[4] = v90;
  v84[5] = v91;
  v84[6] = v92;
  v84[7] = v93;
  v84[0] = v86;
  v84[1] = v87;
  v84[2] = v88;
  v84[3] = v89;
  sub_1BD9008B8(v14, v84, v17);
  sub_1BD41D840(v1, &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v29 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v30 = swift_allocObject();
  sub_1BD2141B8(&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v31 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C60) + 36)];
  *v31 = sub_1BD41D2D8;
  v31[1] = v30;
  v31[2] = 0;
  v31[3] = 0;
  v53 = v1;
  sub_1BD41D840(v1, &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v32 = swift_allocObject();
  sub_1BD2141B8(&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v29);
  v33 = &v17[*(v54 + 36)];
  *v33 = 0;
  *(v33 + 1) = 0;
  *(v33 + 2) = sub_1BD41D334;
  *(v33 + 3) = v32;
  sub_1BE052434();
  sub_1BD41CFC0();
  v34 = v56;
  sub_1BE050DE4();

  sub_1BD0DE53C(v17, &qword_1EBD45C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v35 = v59;
  sub_1BE0516C4();
  v36 = type metadata accessor for MultiHyperLinkDetailSheet();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0);
  v38 = sub_1BD41CF04();
  *&v52 = sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  *(&v52 + 1) = sub_1BD10CC54();
  v39 = v58;
  sub_1BE050F74();
  sub_1BD0DE53C(v35, &qword_1EBD393E8);
  sub_1BD0DE53C(v34, &qword_1EBD45C38);
  v40 = v64;
  v41 = v65;
  v42 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E697C438], v66);
  *&v70 = v39;
  *(&v70 + 1) = v36;
  *&v71 = v37;
  *(&v71 + 1) = v38;
  v72 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  v45 = v40;
  v46 = v60;
  v47 = v68;
  sub_1BE050E84();
  (*(v41 + 8))(v45, v42);
  (*(v61 + 8))(v47, v46);
  v69 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C28);
  *&v70 = v46;
  *(&v70 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78);
  v49 = sub_1BD41D104();
  *&v70 = v48;
  *(&v70 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v62;
  sub_1BE051024();
  return (*(v63 + 8))(v44, v50);
}

uint64_t sub_1BD419908@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v55, v2);
  v54 = v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v59 = v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C98);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v51 - v12;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v14 = (v1 + 16);
  v17 = *(v1 + 96);
  v58 = v18;
  v57 = v1;
  if (v17)
  {
    sub_1BE048C84();
    v56 = v16;
    v16 = v15;
  }

  else
  {
    v52 = v5;
    v53 = v4;
    v19 = *(v1 + 32);
    v20 = *(v1 + 48);
    v21 = *(v1 + 64);
    v23 = *(v1 + 80);
    v22 = *(v1 + 88);
    v24 = *(v1 + 72);
    v25 = *(v1 + 56);
    v26 = *(v1 + 40);
    *&v62 = v15;
    *(&v62 + 1) = v16;
    *&v63 = v19;
    *(&v63 + 1) = v26;
    *&v64 = v20;
    *(&v64 + 1) = v25;
    *&v65 = v21;
    *(&v65 + 1) = v24;
    *&v66 = v23;
    *(&v66 + 1) = v22;
    v51[1] = v22;
    v67 = v17;
    sub_1BD0DE19C(&v62, v61, &qword_1EBD45C90);
    v27 = [v15 title];
    if (v27)
    {
      v28 = v27;
      v16 = sub_1BE052434();
      v30 = v29;

      v56 = v30;
    }

    else
    {
      v56 = v19;
    }

    v4 = v53;
    v5 = v52;
  }

  v67 = *(v14 + 80);
  v31 = v14[2];
  v32 = v14[4];
  v65 = v14[3];
  v66 = v32;
  v33 = *v14;
  v63 = v14[1];
  v64 = v31;
  v62 = v33;
  if (v67)
  {
    if (*(&v63 + 1))
    {
      v34 = objc_allocWithZone(MEMORY[0x1E69B85D0]);
      sub_1BD41D7D8(&v62, v61);
      sub_1BE048C84();
      v35 = [v34 init];
      v36 = sub_1BE052404();

      [v35 setFooterText_];

      sub_1BD41D810(&v62);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v37 = v16;
    v38 = v62;
    sub_1BD41D7D8(&v62, v61);

    v35 = [v38 bodyLinkContent];

    v16 = v37;
  }

  v39 = v56;
  v40 = sub_1BD41AFB0();
  v42 = v41;
  type metadata accessor for PaymentOfferActionExplanationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516C4();
  (*(v5 + 56))(v13, 0, 1, v4);
  v43 = v60;
  *v60 = v16;
  v43[1] = v39;
  v43[2] = v35;
  v43[3] = v40;
  *(v43 + 32) = v42;
  v44 = v58;
  sub_1BD0DE19C(v13, v58, &qword_1EBD45C98);
  v45 = *(v5 + 48);
  if (v45(v44, 1, v4) == 1)
  {
    v46 = type metadata accessor for MultiHyperLinkDetailSheet();
    v47 = v54;
    (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
    v48 = v59;
    sub_1BE051944();
    sub_1BD0DE53C(v47, &unk_1EBD45160);
    sub_1BD0DE53C(v13, &qword_1EBD45C98);
    if (v45(v44, 1, v4) != 1)
    {
      sub_1BD0DE53C(v44, &qword_1EBD45C98);
    }
  }

  else
  {
    sub_1BD0DE53C(v13, &qword_1EBD45C98);
    v48 = v59;
    sub_1BD41D768(v44, v59);
  }

  v49 = type metadata accessor for TitleBodyMultiHyperlinkView();
  return sub_1BD41D768(v48, v43 + *(v49 + 28));
}

uint64_t sub_1BD419F04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = sub_1BE04F3D4();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentOfferActionExplanationView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BD41B390();
  v56 = v12;
  v55 = sub_1BD41B4C4();
  v54 = v13;
  sub_1BD41D840(v1, v11, type metadata accessor for PaymentOfferActionExplanationView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1BD2141B8(v11, v15 + v14);
  v52 = sub_1BD41B618();
  v51 = v16;
  v17 = v2 + *(v7 + 72);
  v18 = *(v17 + 8);
  v20 = *(v17 + 16);
  *&v66 = *v17;
  v19 = v66;
  *(&v66 + 1) = v18;
  LOBYTE(v67) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](v60);
  v53 = LOBYTE(v60[0]);
  *&v66 = v19;
  *(&v66 + 1) = v18;
  LOBYTE(v67) = v20;
  MEMORY[0x1BFB3E970](v60, v21);
  v22 = v60[0];
  v59 = 1;
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C88)) init];
  sub_1BD41B90C(v60);
  v69 = v60[3];
  v70 = v60[4];
  v71 = v60[5];
  v66 = v60[0];
  v67 = v60[1];
  v72 = v61;
  v68 = v60[2];
  v58 = 1;
  v24 = &v23[qword_1EBD56240];
  v25 = *&v23[qword_1EBD56240];
  *v24 = sub_1BD41D3D0;
  v24[1] = v15;
  sub_1BD0D4744(v25);
  v26 = &v23[qword_1EBD56248];
  v27 = *&v23[qword_1EBD56248];
  v28 = v51;
  *v26 = v52;
  v26[1] = v28;
  sub_1BD0D4744(v27);
  v29 = v59;
  LODWORD(v52) = v58;
  v30 = sub_1BE0501F4();
  v31 = v2 + *(v7 + 76);
  v32 = *v31;
  if (*(v31 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v33 = v22;
    v34 = sub_1BE050174();
    sub_1BE04CF84();

    v22 = v33;
    v35 = v48;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v32, 0);
    (*(v49 + 8))(v35, v50);
  }

  v36 = v53 ^ 1;
  result = sub_1BE04E1F4();
  *a1 = v23;
  *(a1 + 8) = 0;
  v38 = v69;
  v39 = v71;
  *(a1 + 80) = v70;
  *(a1 + 96) = v39;
  *(a1 + 112) = v72;
  v40 = v67;
  *(a1 + 16) = v66;
  *(a1 + 32) = v40;
  *(a1 + 48) = v68;
  *(a1 + 64) = v38;
  *(a1 + 113) = v22;
  *(a1 + 118) = v65;
  *(a1 + 114) = *&v64[7];
  v41 = v56;
  *(a1 + 120) = v57;
  *(a1 + 128) = v41;
  *(a1 + 136) = 1;
  *(a1 + 137) = *v64;
  *(a1 + 140) = *&v64[3];
  v42 = v54;
  *(a1 + 144) = v55;
  *(a1 + 152) = v42;
  *(a1 + 160) = 0;
  *(a1 + 168) = v29;
  *(a1 + 169) = v36;
  *(a1 + 170) = v62;
  *(a1 + 174) = v63;
  *(a1 + 176) = 0;
  *(a1 + 184) = v52;
  *(a1 + 192) = v30;
  *(a1 + 200) = v43;
  *(a1 + 208) = v44;
  *(a1 + 216) = v45;
  *(a1 + 224) = v46;
  *(a1 + 232) = 0;
  return result;
}

void sub_1BD41A3F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E69BABE8];
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  *(inited + 56) = *MEMORY[0x1E69BABE8];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v2;
  v8 = v4;
  sub_1BE048C84();
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v9 = *(v0 + 8);
  if ([v9 type] == 1)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v9;
    }

    v12 = *v0;
    v13 = *MEMORY[0x1E69BA9C0];
    v14 = [v12 ineligibleDetailsForCriteria_];
    v15 = [v14 analyticsValue];

    v16 = sub_1BE052434();
    v18 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v16, v18, v13, isUniquelyReferenced_nonNull_native);

    v20 = *MEMORY[0x1E69BAA28];
    v21 = *MEMORY[0x1E69BAA28];
    if (v10)
    {
      v22 = [v10 issuerName];
      v23 = sub_1BE052434();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v23, v25, v20, v26);
  }

  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BE0B98E0;
  v29 = *MEMORY[0x1E69BB6E0];
  v30 = *MEMORY[0x1E69BB6C0];
  *(v28 + 32) = *MEMORY[0x1E69BB6E0];
  *(v28 + 40) = v30;
  v31 = *MEMORY[0x1E69BB6F8];
  v32 = *MEMORY[0x1E69BB728];
  *(v28 + 48) = *MEMORY[0x1E69BB6F8];
  *(v28 + 56) = v32;
  type metadata accessor for PKAnalyticsSubject(0);
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = sub_1BE052724();

  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD41D8A8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v38 = sub_1BE052224();

  [v27 subjects:v37 sendEvent:v38];
}

uint64_t sub_1BD41A768(uint64_t result)
{
  v1 = *(result + 192);
  if (v1)
  {
    v2 = sub_1BE048964();
    v1(v2);

    return sub_1BD0D4744(v1);
  }

  return result;
}

uint64_t sub_1BD41A7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v34 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E28);
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v37 = v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C78);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v34 - v21;
  if (*(a1 + 184) == 1)
  {
    v23 = sub_1BE04FB04();
    v34[1] = v34;
    MEMORY[0x1EEE9AC00](v23, v24);
    v35 = v8;
    v36 = a2;
    v34[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68);
    v34[0] = v11;
    sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68);
    v25 = v37;
    sub_1BE04E424();
    v26 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
    v27 = v35;
    v28 = v34[0];
    MEMORY[0x1BFB3CC50](v25, v34[0], v26);
    (*(v5 + 16))(v17, v27, v4);
    (*(v5 + 56))(v17, 0, 1, v4);
    v39 = v28;
    v40 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v17, v4, OpaqueTypeConformance2);
    sub_1BD068360(v17);
    (*(v5 + 8))(v27, v4);
    (*(v38 + 8))(v25, v28);
  }

  else
  {
    (*(v5 + 56))(v17, 1, 1, v4, v20);
    v30 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
    v39 = v11;
    v40 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v17, v4, v31);
    sub_1BD068360(v17);
  }

  v32 = sub_1BD41D104();
  MEMORY[0x1BFB3CC50](v22, v14, v32);
  return sub_1BD068360(v22);
}

uint64_t sub_1BD41AC5C(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferActionExplanationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD41D840(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD2141B8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78);
  sub_1BD12DFE4();
  return sub_1BE051704();
}

id sub_1BD41AE4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD41AFB0()
{
  v1 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  MEMORY[0x1EEE9AC00](v1, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  if (v9)
  {
    v10 = *(v0 + 104);
    sub_1BE048964();
    v11 = 0;
    if (v8)
    {
LABEL_3:
      v37 = v8;
      sub_1BE048964();
      v12 = sub_1BE0518D4();

      return v12;
    }
  }

  else
  {
    v31 = v7;
    v32 = (&v30 - v6);
    v33 = v5;
    v13 = *(v0 + 88);
    v14 = *(v0 + 64);
    v35 = *(v0 + 72);
    v15 = *(v0 + 48);
    v34 = *(v0 + 56);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);
    v37 = *(v0 + 16);
    v11 = v37;
    v38 = v18;
    v39 = v17;
    v40 = v16;
    v41 = v15;
    v42 = v34;
    v43 = v14;
    v44 = v35;
    v45 = v8;
    v46 = v13;
    v47 = v9;
    sub_1BD0DE19C(&v37, v36, &qword_1EBD45C90);

    v37 = v11;
    v38 = v18;
    v39 = v17;
    v40 = v16;
    v41 = v15;
    v42 = v34;
    v43 = v14;
    v44 = v35;
    v45 = v8;
    v46 = v13;
    v47 = v9;
    sub_1BD0DE19C(&v37, v36, &qword_1EBD45C90);

    v10 = *(v0 + 104);
    if (v11)
    {
      v19 = *(v0 + 8);
      v20 = [v11 systemIcon];
      if (v20)
      {
        v12 = v20;

        return v12;
      }

      v21 = [v11 iconURL];
      if (v21)
      {
        v22 = v21;
        v23 = v19;
        if ([v23 type] == 1)
        {
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            v25 = v24;
            v26 = *(v33 + 28);
            KeyPath = swift_getKeyPath();
            v28 = v32;
            *(v32->i64 + v26) = KeyPath;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
            swift_storeEnumTagMultiPayload();
            v28->i64[0] = v22;
            v28->i64[1] = v25;
            v28[1] = vdupq_n_s64(0x4051800000000000uLL);
            sub_1BD41D840(v28, v31, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
            sub_1BD41D8A8(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
            v12 = sub_1BE0518D4();

            sub_1BD23FB50(v28);
            return v12;
          }
        }
      }
    }

    v8 = v13;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  if (v10)
  {
    v12 = [v10 paymentPass];
  }

  else
  {

    return 0;
  }

  return v12;
}

id sub_1BD41B390()
{
  v1 = *(v0 + 144);
  if ((v1 - 2) < 5 || (v1 & 1) == 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 96);
    if (v4)
    {
      if (v2)
      {
        sub_1BE048C84();
        return v3;
      }
    }

    else
    {
      v7 = *(v0 + 80);
      v6 = *(v0 + 88);
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = *(v0 + 24);
      v16[0] = *(v0 + 16);
      v11 = v16[0];
      v16[1] = v10;
      v16[2] = v9;
      v16[3] = v8;
      v16[4] = v3;
      v16[5] = v2;
      v17 = *(v0 + 64);
      v18 = v7;
      v19 = v6;
      v20 = v4;
      sub_1BD0DE19C(v16, v15, &qword_1EBD45C90);

      v12 = [v11 primaryActionTitle];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1BE052434();

        return v14;
      }
    }
  }

  return sub_1BD41BE2C(*(v0 + 112), *(v0 + 120), v1);
}

id sub_1BD41B4C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 96);
  if (v3)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    sub_1BE048C84();
  }

  else
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);
    v16[0] = *(v0 + 16);
    v9 = v16[0];
    v16[1] = v8;
    v16[2] = v7;
    v16[3] = v6;
    v17 = *(v0 + 48);
    v18 = v1;
    v19 = v2;
    v20 = v5;
    v21 = v4;
    v22 = v3;
    sub_1BD0DE19C(v16, v15, &qword_1EBD45C90);

    v10 = [v9 secondaryActionTitle];
    if (!v10)
    {

LABEL_10:
      v13 = *(v0 + 145);
      if (v13 == 7)
      {
        return 0;
      }

      else
      {
        return sub_1BD41BE2C(*(v0 + 112), *(v0 + 120), v13);
      }
    }

    v11 = v10;
    v1 = sub_1BE052434();
  }

  v12 = *(v0 + 145);
  if (v12 - 2) >= 6 && (v12)
  {

    goto LABEL_10;
  }

  return v1;
}

void (*sub_1BD41B618())()
{
  v1 = type metadata accessor for PaymentOfferActionExplanationView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v27 - v7;
  v9 = *(v0 + 96);
  if ((v9 & 1) != 0 || (v11 = *(v0 + 80), v10 = *(v0 + 88), v13 = *(v0 + 32), v12 = *(v0 + 40), v14 = *(v0 + 24), v29[0] = *(v0 + 16), v15 = v29[0], v29[1] = v14, v29[2] = v13, v29[3] = v12, v16 = *(v0 + 64), v27[0] = *(v0 + 48), v27[1] = v16, v30 = v27[0], v31 = v16, v32 = v11, v33 = v10, v34 = v9, sub_1BD0DE19C(v29, v28, &qword_1EBD45C90), , , , , , v17 = [v15 secondaryActionDetails], v15, !v17))
  {
    v20 = 0;
  }

  else
  {
    v18 = v17;
    v19 = [v18 linkURL];
    v20 = v19 != 0;
    if (v19)
    {
      v21 = v19;
      sub_1BE04A9F4();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = sub_1BE04AA64();
    (*(*(v23 - 8) + 56))(v8, v22, 1, v23);
    sub_1BD0DE53C(v8, &unk_1EBD3CF70);
    if (v20)
    {
      goto LABEL_10;
    }
  }

  if (*(v0 + 145) == 7)
  {
    return 0;
  }

LABEL_10:
  sub_1BD41D840(v0, v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v25 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v26 = swift_allocObject();
  sub_1BD2141B8(v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  *(v26 + v25 + v3) = v20;
  return sub_1BD41D6E8;
}

double sub_1BD41B90C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferActionExplanationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 96);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
LABEL_7:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_10;
  }

  v12 = *(v1 + 80);
  v11 = *(v1 + 88);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  v15 = *(v1 + 24);
  v36[0] = *(v1 + 16);
  v16 = v36[0];
  v36[1] = v15;
  v36[2] = v14;
  v36[3] = v13;
  v17 = *(v1 + 64);
  v33[0] = *(v1 + 48);
  v33[1] = v17;
  v37 = v33[0];
  v38 = v17;
  v39 = v12;
  v40 = v11;
  v41 = v8;
  sub_1BD0DE19C(v36, aBlock, &qword_1EBD45C90);

  v10 = [v16 footerContent];

  if (!v10)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v18 = v10;
  v10 = PKOBKTextAlignment();
  sub_1BD41D840(v1, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1BD2141B8(v7, v20 + v19);
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  v22[3] = 0;
  v22[4] = 0;
  v22[2] = 0;
  v22[5] = sub_1BD41D678;
  v22[6] = v20;
  aBlock[4] = sub_1BD3A376C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD198918;
  aBlock[3] = &block_descriptor_90;
  v23 = _Block_copy(aBlock);
  sub_1BE048964();

  v24 = [v21 hyperlinkSourcesFromApplyFooter:v18 linkTapped:v23];
  _Block_release(v23);
  if (v24)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43EA8);
    v9 = sub_1BE052744();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v29 = [v18 footerText];
  v25 = sub_1BE052434();
  v26 = v30;

  v31 = sub_1BE050204();

  LOBYTE(aBlock[0]) = 0;
  v27 = 1;
  v34 = 1;
  v28 = v31;
LABEL_10:
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = v25;
  *(a1 + 32) = v26;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v28;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = v27;
  return result;
}