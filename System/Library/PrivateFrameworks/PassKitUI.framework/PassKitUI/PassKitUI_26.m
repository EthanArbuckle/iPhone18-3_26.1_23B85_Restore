uint64_t sub_1BD2FACFC()
{
  sub_1BD2FAB2C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountUserInfoModel()
{
  result = qword_1EBD417D0;
  if (!qword_1EBD417D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2FADA8()
{
  sub_1BD0E4578(319, &qword_1EBD417E0, &qword_1EBD417E8);
  if (v0 <= 0x3F)
  {
    sub_1BD1E1120();
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD416B8, &qword_1EBD416C0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD2FAF00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v9[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v9[0]) = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    v1 = swift_allocObject();
    swift_weakInit();
    v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
    if (v2 && (v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_accountService)) != 0)
    {
      sub_1BE048964();
      v4 = v2;
      v5 = [v4 accountIdentifier];
      v6 = swift_allocObject();
      v6[2] = v0;
      v6[3] = v4;
      v6[4] = sub_1BD2FE048;
      v6[5] = v1;
      v9[4] = sub_1BD2FE2E4;
      v9[5] = v6;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1BD14E1D8;
      v9[3] = &block_descriptor_146_0;
      v7 = _Block_copy(v9);
      sub_1BE048964();
      v8 = v4;
      sub_1BE048964();

      [v3 userInfoForAccountIdentifier:v5 forceFetch:1 completion:v7];

      _Block_release(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD2FB134(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v9 = sub_1BE051F54();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE051FA4();
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v29 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = v17;
  v18[4] = a4;
  v18[5] = a1;
  v19 = v28;
  v18[6] = v27;
  v18[7] = v19;
  aBlock[4] = sub_1BD2FDFE4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_110;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = a1;
  sub_1BE048964();
  v23 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v24 = v29;
  MEMORY[0x1BFB3FDF0](0, v16, v12, v20);
  _Block_release(v20);

  (*(v31 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v30);
}

uint64_t sub_1BD2FB420(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v27 - v16;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v18 = a1;
      v19 = [a3 feature];
      v20 = a1;
      FeatureError.init(feature:error:)(v19, a1, v17);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD23C2BC(v17, v12);
      sub_1BE04D8C4();

      sub_1BD23C32C(v17);
    }
  }

  else if (a4)
  {
    v21 = [a4 savingsUserInfo];
    if (v21)
    {
      v22 = v21;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v22 = v22;
        v23 = [v22 primaryUser];
        v24 = sub_1BD2FDB10([v22 beneficiaryInfo]);

        swift_getKeyPath();
        swift_getKeyPath();
        v27[1] = v23;
        v27[2] = v24;
        sub_1BE048C84();
        v25 = v23;
        sub_1BE04D8C4();
      }
    }
  }

  return a5();
}

void sub_1BD2FB688(uint64_t a1)
{
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
  if (v9)
  {
    v29 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_1BE04D8B4();

    if (aBlock[0])
    {
LABEL_20:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchODIAssessment) = 0;
    v11 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchDeviceMetadata;
    *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchDeviceMetadata) = 0;
    v12 = [objc_allocWithZone(MEMORY[0x1E69B8458]) init];
    v13 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest;
    v14 = *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest);
    *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest) = v12;
    v15 = v12;

    if (v15)
    {
      v16 = [v10 accountIdentifier];
      [v15 setAccountIdentifier_];
    }

    v17 = *(v1 + v13);
    v18 = v1;
    if (v17)
    {
      v19 = v17;
      v20 = [v10 accountBaseURL];
      if (v20)
      {
        v21 = v20;
        sub_1BE04A9F4();

        v1 = v18;
        v22 = sub_1BE04A9C4();
        (*(v4 + 8))(v8, v29);
      }

      else
      {
        v22 = 0;
      }

      [v19 setBaseURL_];

      v23 = *(v1 + v13);
      if (v23)
      {
        [v23 setContact_];
      }
    }

    v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService);
    if (v24)
    {
      v25 = [*(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService) targetDevice];
      if (v25)
      {
        v26 = v25;
        if ([v25 respondsToSelector_])
        {
          if ([v26 respondsToSelector_])
          {
            aBlock[4] = sub_1BD2FE038;
            aBlock[5] = v1;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD20815C;
            aBlock[3] = &block_descriptor_125;
            v27 = _Block_copy(aBlock);
            swift_retain_n();
            swift_unknownObjectRetain();

            [v26 paymentWebService:v24 deviceMetadataWithFields:251 completion:v27];
            _Block_release(v27);

            swift_unknownObjectRelease_n();
LABEL_19:
            sub_1BD2FCF04();
            goto LABEL_20;
          }
        }

        else
        {
          *(v1 + v11) = 1;
          sub_1BD2FBA68();
        }

        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    *(v1 + v11) = 1;
    sub_1BD2FBA68();
    goto LABEL_19;
  }
}

void sub_1BD2FBA68()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest);
    if (v2)
    {
      if (*(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchODIAssessment) == 1)
      {
        v3 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchDeviceMetadata;
        if (*(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchDeviceMetadata) == 1)
        {
          *(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchODIAssessment) = 0;
          *(v0 + v3) = 0;
          v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService);
          if (v4)
          {
            v5 = swift_allocObject();
            *(v5 + 16) = v0;
            *(v5 + 24) = v1;
            v11[4] = sub_1BD2FDF98;
            v11[5] = v5;
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 1107296256;
            v11[2] = sub_1BD14E1D8;
            v11[3] = &block_descriptor_84;
            v6 = _Block_copy(v11);
            v7 = v1;
            v8 = v2;
            v9 = v7;
            v10 = v8;
            sub_1BE048964();

            [v4 accountUpdateUserInfoWithRequest:v10 completion:v6];

            _Block_release(v6);
          }
        }
      }
    }
  }
}

uint64_t sub_1BD2FBBD8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a4;
  aBlock[4] = sub_1BD2FDFA0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_91;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v23);
}

void sub_1BD2FBEA4(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29[-v12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest);
    *(Strong + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest) = 0;
  }

  if (a2)
  {
    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    v17 = a2;
    if (v16)
    {
      v18 = [a3 feature];
      v19 = a2;
      FeatureError.init(feature:error:)(v18, a2, v13);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD23C2BC(v13, v9);
      sub_1BE04D8C4();
      sub_1BD23C32C(v13);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v29[15] = 0;
      sub_1BE04D8C4();
    }
  }

  else
  {
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
      if (v21 && (v22 = *(v20 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_accountService)) != 0)
      {
        v23 = v20;
        sub_1BE048964();
        v24 = v21;
        v25 = [v24 accountIdentifier];
        v26 = swift_allocObject();
        v26[2] = v23;
        v26[3] = v24;
        v26[4] = sub_1BD2FDFAC;
        v26[5] = a1;
        aBlock[4] = sub_1BD2FDFD8;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_97;
        v27 = _Block_copy(aBlock);
        v28 = v24;
        sub_1BE048964();
        sub_1BE048964();

        [v22 userInfoForAccountIdentifier:v25 forceFetch:1 completion:v27];

        _Block_release(v27);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1BD2FC1FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD2FC284(_OWORD *a1, void (*a2)(void, double), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x1E69B8490]);
    v16 = v14;
    v17 = [v15 init];
    v18 = [v16 accountIdentifier];
    [v17 setAccountIdentifier_];

    v19 = [v16 accountBaseURL];
    if (v19)
    {
      v20 = v19;
      sub_1BE04A9F4();

      v21 = sub_1BE04A9C4();
      (*(v9 + 8))(v13, v8);
    }

    else
    {
      v21 = 0;
    }

    [v17 setBaseURL_];

    v22 = sub_1BE052404();
    [v17 setBeneficiaryIdentifier_];

    swift_getKeyPath();
    swift_getKeyPath();
    v30[0] = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    v23 = *(v4 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService);
    if (v23)
    {
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v16;
      *(v25 + 32) = a2;
      *(v25 + 40) = a3;
      v26 = a1[1];
      *(v25 + 48) = *a1;
      *(v25 + 64) = v26;
      v27 = a1[3];
      *(v25 + 80) = a1[2];
      *(v25 + 96) = v27;
      aBlock[4] = sub_1BD2FD924;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_66_0;
      v28 = _Block_copy(aBlock);
      v29 = v16;
      v17 = v17;
      sub_1BE048964();
      sub_1BD2FD934(a1, v30);

      [v23 accountDeleteBeneficiaryWithRequest:v17 completion:v28];

      _Block_release(v28);
    }

    else
    {
    }
  }

  else
  {
    a2(0, v11);
  }
}

uint64_t sub_1BD2FC5D0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v34 = a5;
  v11 = sub_1BE051F54();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BE051FA4();
  v15 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v33 = sub_1BE052D54();
    v21 = swift_allocObject();
    v22 = a7[1];
    *(v21 + 56) = *a7;
    *(v21 + 72) = v22;
    v23 = a7[3];
    *(v21 + 88) = a7[2];
    *(v21 + 16) = v20;
    *(v21 + 24) = a2;
    v24 = v34;
    *(v21 + 32) = a4;
    *(v21 + 40) = v24;
    *(v21 + 48) = a6;
    *(v21 + 104) = v23;
    aBlock[4] = sub_1BD2FD96C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_72_1;
    v25 = _Block_copy(aBlock);
    v34 = v15;
    v26 = v36;
    v32 = v25;
    sub_1BE048964();
    v27 = a2;
    v28 = a4;
    sub_1BE048964();
    sub_1BD2FD934(a7, v37);

    sub_1BE051F74();
    v37[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    v29 = v32;
    v30 = v33;
    MEMORY[0x1BFB3FDF0](0, v18, v14, v32);
    _Block_release(v29);

    (*(v26 + 8))(v14, v11);
    return (*(v34 + 8))(v18, v35);
  }

  return result;
}

void sub_1BD2FC900(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5, id *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26[-v16];
  swift_getKeyPath();
  swift_getKeyPath();
  v27[0] = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (a2)
  {
    v18 = a2;
    v19 = [a3 feature];
    v20 = a2;
    FeatureError.init(feature:error:)(v19, a2, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v17, v13);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD23C32C(v17);
    a4(0);

    return;
  }

  v22 = sub_1BD2FA4CC(v28);
  if (!*v21)
  {
    goto LABEL_7;
  }

  v23 = v21 + 1;
  if (!v21[1])
  {
    goto LABEL_7;
  }

  sub_1BD2FD934(a6, v27);
  v24 = sub_1BD2FDD98(v23, a6);
  sub_1BD2FDF68(a6);
  v25 = *(*v23 + 16);
  if (v25 >= v24)
  {
    sub_1BD1DE03C(v24, v25);
LABEL_7:
    (v22)(v28, 0);
    a4(1);
    return;
  }

  __break(1u);
}

uint64_t sub_1BD2FCB58(void *a1)
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
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1BD2FE040;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_132_0;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BD2FCE14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest);

    [v4 setDeviceMetadata_];
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchDeviceMetadata) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD2FBA68();
  }

  return result;
}

void sub_1BD2FCF04()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager;
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager);
  if (v8)
  {
    goto LABEL_5;
  }

  sub_1BE04D1E4();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "ODI assessment was not prewarmed", v11, 2u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B9178]) initWithType_];
  v13 = *(v1 + v7);
  *(v1 + v7) = v12;

  v8 = *(v1 + v7);
  if (v8)
  {
LABEL_5:
    aBlock[4] = sub_1BD2FD5E0;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD858AA4;
    aBlock[3] = &block_descriptor_49;
    v14 = _Block_copy(aBlock);
    v15 = v8;
    sub_1BE048964();

    [v15 waitForAssessmentWithCompletion_];
    _Block_release(v14);
  }
}

uint64_t sub_1BD2FD138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1BD2FD918;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_57_1;
  v16 = _Block_copy(aBlock);
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

uint64_t sub_1BD2FD400(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_updateUserInfoRequest);
    v6 = v5;

    if (v5)
    {
      if (a3)
      {
        a3 = sub_1BE052404();
      }

      [v6 setOdiAssessment_];
    }
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager);

    [v8 provideSessionFeedbackIngested];
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager);
    *(v9 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager) = 0;
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    *(v11 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_didFetchODIAssessment) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD2FBA68();
  }

  return result;
}

uint64_t sub_1BD2FD5A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountUserInfoModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD2FD5E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
  return sub_1BE048C84();
}

uint64_t sub_1BD2FD5F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1BD2FD980(v7, v8) & 1;
}

double sub_1BD2FD640@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BD2FD6C0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD2FDFF4(v1);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2FD810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1BD23C2BC(a1, &v11 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v9, v6);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD23C32C(v9);
}

uint64_t sub_1BD2FD980(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || (*(a1 + 8) != *(a2 + 8) || v4 != v5) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((MEMORY[0x1BFB40440](*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a2 + 24), *(a2 + 32), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD2FDA74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    for (i = (a1 + 88); ; i += 8)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

char *sub_1BD2FDB10(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 beneficiaries];
  sub_1BD0E5E8C(0, &qword_1EBD417F0);
  v2 = sub_1BE052744();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v4 = 0;
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    v31 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v28 = i;
    v29 = v2;
    while (1)
    {
      if (v31)
      {
        v6 = MEMORY[0x1BFB40900](v4, v2);
      }

      else
      {
        if (v4 >= *(v30 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v34 = [v6 contact];
      v9 = [v7 displayableRelationshipString];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1BE052434();
        v32 = v12;
        v33 = v11;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v13 = [v7 allocation];
      v14 = sub_1BE0533F4();
      v16 = v15;
      v18 = v17;

      v19 = [v7 identifier];
      v20 = sub_1BE052434();
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BD1D8468(0, *(v5 + 2) + 1, 1, v5);
      }

      v24 = *(v5 + 2);
      v23 = *(v5 + 3);
      if (v24 >= v23 >> 1)
      {
        v5 = sub_1BD1D8468((v23 > 1), v24 + 1, 1, v5);
      }

      *(v5 + 2) = v24 + 1;
      v25 = &v5[64 * v24];
      *(v25 + 4) = v34;
      *(v25 + 5) = v33;
      *(v25 + 6) = v32;
      *(v25 + 7) = v14;
      *(v25 + 8) = v16;
      *(v25 + 18) = v18;
      ++v4;
      *(v25 + 10) = v20;
      *(v25 + 11) = v22;
      v2 = v29;
      if (v8 == v28)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_24:

  return v5;
}

uint64_t sub_1BD2FDD98(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1BD2FDA74(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = *(v5 + 16);
    if (v9 == v10)
    {
      return v8;
    }

    v11 = result << 6;
    while (v9 < v10)
    {
      v12 = (v5 + v11);
      result = *(v5 + v11 + 144);
      if (result != *(a2 + 48) || *(v5 + v11 + 152) != *(a2 + 56))
      {
        result = sub_1BE053B84();
        if ((result & 1) == 0)
        {
          if (v9 != v8)
          {
            if (v8 >= v10)
            {
              goto LABEL_24;
            }

            v14 = (v5 + 32 + (v8 << 6));
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[3];
            v39 = v14[2];
            v40 = v17;
            v37 = v15;
            v38 = v16;
            v18 = v12[6];
            v19 = v12[7];
            v20 = v12[9];
            v43 = v12[8];
            v44 = v20;
            v41 = v18;
            v42 = v19;
            sub_1BD2FD934(&v37, v36);
            sub_1BD2FD934(&v41, v36);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1BD4FFF7C(v5);
              v5 = result;
            }

            if (v8 >= *(v5 + 16))
            {
              goto LABEL_25;
            }

            v21 = (v5 + (v8 << 6));
            v22 = v21[2];
            v23 = v21[3];
            v24 = v21[5];
            v35[2] = v21[4];
            v35[3] = v24;
            v35[0] = v22;
            v35[1] = v23;
            v25 = v41;
            v26 = v42;
            v27 = v44;
            v21[4] = v43;
            v21[5] = v27;
            v21[2] = v25;
            v21[3] = v26;
            result = sub_1BD2FDF68(v35);
            if (v9 >= *(v5 + 16))
            {
              goto LABEL_26;
            }

            v28 = (v5 + v11);
            v29 = *(v5 + v11 + 96);
            v30 = *(v5 + v11 + 112);
            v31 = *(v5 + v11 + 144);
            v36[2] = *(v5 + v11 + 128);
            v36[3] = v31;
            v36[0] = v29;
            v36[1] = v30;
            v32 = v37;
            v33 = v38;
            v34 = v40;
            v28[8] = v39;
            v28[9] = v34;
            v28[6] = v32;
            v28[7] = v33;
            result = sub_1BD2FDF68(v36);
            *a1 = v5;
          }

          ++v8;
        }
      }

      ++v9;
      v10 = *(v5 + 16);
      v11 += 64;
      if (v9 == v10)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD2FDFF4(id result)
{
  if (result)
  {
    v1 = result;
    sub_1BE048C84();

    return v1;
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{

  return swift_deallocObject();
}

uint64_t destroy for Beneficiary(id *a1)
{
}

uint64_t initializeWithCopy for Beneficiary(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  v6 = v3;
  sub_1BE048C84();
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for Beneficiary(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_1BE048C84();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_1BE048C84();

  return a1;
}

uint64_t assignWithTake for Beneficiary(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;

  return a1;
}

void sub_1BD2FE310()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v78 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v80 = &v71 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v71 - v13;
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, sel_loadView, v12);
  v15 = sub_1BE04BC84();
  v16 = [v1 explanationView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setTopBackgroundColor_];

  [v1 setShowDoneButton_];
  [v1 setShowCancelButton_];
  [v1 setPrivacyLinkController_];
  v19 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v79 = v3;
  [v19 setHideBackground_];
  [v20 setPadding_];
  v81 = v17;
  [v17 setHeroView_];
  [objc_opt_self() recommendedCardImageSize];
  v22 = v21;
  v24 = v23;
  v25 = [objc_opt_self() sharedInstance];
  if (!v25)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  v86 = sub_1BD2FF064;
  v87 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1BD20815C;
  v85 = &block_descriptor_50;
  v28 = _Block_copy(&aBlock);
  v29 = v15;
  v30 = v20;

  [v26 snapshotWithPass:v29 size:v28 completion:{v22, v24}];
  _Block_release(v28);

  v31 = [*&v1[OBJC_IVAR____TtC9PassKitUI49ProvisioningCarInvitationActivationViewController_invitation] activationOptions];
  v32 = v31;
  v33 = v14;
  if (v31)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BE0B7020;
  *(v34 + 32) = [objc_opt_self() vehicleEnteredPin];
  v35 = objc_allocWithZone(MEMORY[0x1E69B8A80]);
  sub_1BD0E5E8C(0, &qword_1EBD41828);
  v36 = sub_1BE052724();

  v37 = [v35 initWithOptions_];

  if (v37)
  {
    v32 = v37;
    v31 = 0;
LABEL_7:
    v73 = v30;
    v74 = v29;
    v38 = v31;
    v39 = [v32 primaryOption];
    v72 = v32;

    aBlock = 0;
    v83 = 0xE000000000000000;
    sub_1BE053834();

    aBlock = 0xD000000000000020;
    v83 = 0x80000001BE1226F0;
    v40 = [v39 localizationKeyPostfixForInitiation];
    v41 = sub_1BE052434();
    v43 = v42;

    MEMORY[0x1BFB3F610](v41, v43);

    v44 = *(v4 + 104);
    v45 = v14;
    v77 = *MEMORY[0x1E69B80F8];
    v46 = v79;
    v44(v45);
    v47 = PKPassKitBundle();
    if (v47)
    {
      v48 = v47;
      sub_1BE04B6F4();

      v50 = *(v4 + 8);
      v49 = (v4 + 8);
      v76 = v50;
      v50(v33, v46);
      v51 = sub_1BE052404();

      v52 = v81;
      [v81 setTitleText_];

      aBlock = 0;
      v83 = 0xE000000000000000;
      sub_1BE053834();

      aBlock = 0xD000000000000021;
      v83 = 0x80000001BE122720;
      v75 = v39;
      v53 = [v39 localizationKeyPostfix];
      v54 = sub_1BE052434();
      v56 = v55;

      MEMORY[0x1BFB3F610](v54, v56);

      v57 = v80;
      (v44)(v80, v77, v46);
      v58 = PKPassKitBundle();
      if (v58)
      {
        v59 = v58;
        v60 = v44;
        sub_1BE04B6F4();

        v80 = v49;
        v61 = v76;
        v76(v57, v46);
        v62 = sub_1BE052404();

        [v52 setBodyText_];

        v63 = [v52 dockView];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 primaryButton];

          v66 = v78;
          v67 = v75;
          if (v65)
          {
            (v60)(v78, *MEMORY[0x1E69B8038], v46);
            v68 = PKPassKitBundle();
            if (v68)
            {
              v69 = v68;
              sub_1BE04B6F4();

              v61(v66, v46);
              v70 = sub_1BE052404();

              [v65 setTitle:v70 forStates:0];

              return;
            }

            goto LABEL_20;
          }

LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1BD2FEB2C(void *a1, void *a2)
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
  aBlock[4] = sub_1BD2FF06C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_7_0;
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

uint64_t sub_1BD2FEFBC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3B9FE30, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD2FF084(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_1BE048C84();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BD2FF130(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;
      sub_1BE048C84();
      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1BD2FF1E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFB40900](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BE053704();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

char *sub_1BD2FF308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC] = 0;
  v10 = &v4[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_selectionHandler];
  *v10 = a3;
  v10[1] = a4;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  sub_1BE048964();
  v11 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  sub_1BE048964();
  v12 = v11;
  sub_1BD437E54(a1, a2, a3, a4, v20);
  v18[4] = v20[0];
  v18[5] = v20[1];
  v18[6] = v20[2];
  v18[7] = v20[3];
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41878));
  sub_1BD300E80(v20, v18);
  v14 = sub_1BE04F894();
  v15 = *&v12[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC];
  *&v12[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC] = v14;
  v16 = v14;

  [v12 addChildViewController_];
  sub_1BD300EDC(v20);

  return v12;
}

void sub_1BD2FF524(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    v3 = sub_1BE052724();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1BD2FF614()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
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

void sub_1BD2FF734()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC];
    if (v11)
    {
      v12 = [v11 view];
    }

    else
    {
      v12 = 0;
    }

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD2FF914(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v7 = sub_1BE04B8E4();
  (*(v3 + 8))(v6, v2);
  v8 = [v7 paymentSetupSupportedInRegion];

  if (v8 == 2)
  {
    v9 = 0x7220666F2074756FLL;
    v10 = 0xED00006E6F696765;
    v11 = 1;
  }

  else
  {
    v10 = 0x80000001BE1228F0;
    v9 = 0xD000000000000019;
    v11 = 0;
  }

  return a1(v9, v10, 0, v11);
}

void sub_1BD2FFA74(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_context);
  if (a1 >> 62)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0);
    sub_1BE048C84();
    v13 = sub_1BE0539A4();

    v3 = v13;
  }

  else
  {
    sub_1BE048C84();
    sub_1BE053BA4();
    sub_1BD0E5E8C(0, &qword_1EBD444C0);
  }

  v5 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v6 = objc_allocWithZone(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v7;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v7;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v8 = 0xD00000000000001ALL;
  v8[1] = 0x80000001BE1228D0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v4;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = v3;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v14.receiver = v6;
  v14.super_class = v5;
  sub_1BE048964();
  v9 = objc_msgSendSuper2(&v14, sel_init);
  v10 = v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3B9DA20, v9, &off_1F3BA3CD0, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

char *sub_1BD2FFD98()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for AutoFillCredentialSelectionHostingViewController());
  sub_1BE048C84();
  v4 = sub_1BE048C84();
  return sub_1BD2FF308(v4, v1, sub_1BD300E78, v2);
}

void sub_1BD2FFE38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      if (*(Strong + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_needsEligibilityCheck))
      {
        v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_autoFillManager);
        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        *(v6 + 24) = a1;
        v16 = sub_1BD300F30;
        v17 = v6;
        *&v14 = MEMORY[0x1E69E9820];
        *(&v14 + 1) = 1107296256;
        *&v15 = sub_1BD3006EC;
        *(&v15 + 1) = &block_descriptor_51;
        v7 = _Block_copy(&v14);
        sub_1BE048C84();
        v8 = v4;

        [v8 checkActiveFPANCardsForEligibilityWithCompletion_];
        _Block_release(v7);
      }

      else
      {
        v13 = sub_1BE048C84();
        sub_1BD2FFA74(v13);
      }
    }

    else
    {
      v9 = Strong + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v14 = 0u;
        v15 = 0u;
        LOBYTE(v16) = 2;
        v12 = v3;
        sub_1BD865A00(v12, &off_1F3B9DA20, &v14, ObjectType, v10);
        swift_unknownObjectRelease();

        sub_1BD12FF7C(&v14);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1BD300034(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v10 = sub_1BE051F54();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v14 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v24 = sub_1BE052D54();
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a1;
  *(v18 + 32) = a4;
  *(v18 + 40) = a2;
  *(v18 + 48) = v23;
  aBlock[4] = sub_1BD300F38;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_16_1;
  v19 = _Block_copy(aBlock);
  sub_1BE048964();
  v20 = a4;
  sub_1BE048C84();
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v21 = v24;
  MEMORY[0x1BFB3FDF0](0, v17, v13, v19);
  _Block_release(v19);

  (*(v26 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v25);
}

void sub_1BD300308(uint64_t a1, char a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  if ((a2 & 1) == 0 || a3)
  {
    goto LABEL_41;
  }

  if (a4 >> 62)
  {
    goto LABEL_38;
  }

  v41 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
LABEL_41:
    v32 = &v9[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v32 + 1);
      ObjectType = swift_getObjectType();
      memset(v44, 0, sizeof(v44));
      v45 = 2;
      v35 = v9;
      sub_1BD865A00(v35, &off_1F3B9DA20, v44, ObjectType, v33);
      swift_unknownObjectRelease();

      sub_1BD12FF7C(v44);
    }

    else
    {
    }

    return;
  }

  v37 = Strong;
  *&v44[0] = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = 0;
    v39 = a4 & 0xFFFFFFFFFFFFFF8;
    v40 = a4 & 0xC000000000000001;
    v36 = a4;
    v38 = a4 + 32;
    v11 = &selRef_currentPassbookState;
LABEL_10:
    if (v40)
    {
      v12 = MEMORY[0x1BFB40900](v10, v36);
    }

    else
    {
      if (v10 >= *(v39 + 16))
      {
        goto LABEL_37;
      }

      v12 = *(v38 + 8 * v10);
    }

    v13 = v12;
    v14 = __OFADD__(v10, 1);
    v15 = v10 + 1;
    if (!v14)
    {
      break;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    if (sub_1BE053704() <= 0)
    {
      goto LABEL_41;
    }

    v37 = v9;
    v31 = MEMORY[0x1E69E7CC0];
    *&v44[0] = MEMORY[0x1E69E7CC0];
    v41 = sub_1BE053704();
    if (!v41)
    {
      goto LABEL_33;
    }
  }

  v42 = v15;
  if (a5 >> 62)
  {
    v16 = sub_1BE053704();
  }

  else
  {
    v16 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  while (1)
  {
    if (v16 == v17)
    {

      goto LABEL_9;
    }

    a4 = &selRef_hoursOfDay;
    if ((a5 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB40900](v17, a5);
    }

    else
    {
      if (v17 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v18 = *(a5 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v20 = [v18 v11[254]];
    if (!v20)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    v21 = v20;
    v22 = [v20 identifier];

    v9 = sub_1BE052434();
    v24 = v23;
    v25 = v11;
    v26 = [v13 v11[254]];
    if (!v26)
    {
      goto LABEL_46;
    }

    v27 = v26;

    a4 = [v27 identifier];
    v28 = sub_1BE052434();
    v30 = v29;

    if (v9 == v28 && v24 == v30)
    {
      break;
    }

    a4 = sub_1BE053B84();

    ++v17;
    v11 = v25;
    if (a4)
    {
      goto LABEL_29;
    }
  }

  v11 = v25;
LABEL_29:
  sub_1BE0538C4();
  sub_1BE0538F4();
  sub_1BE053904();
  sub_1BE0538D4();
LABEL_9:
  v10 = v42;
  if (v42 != v41)
  {
    goto LABEL_10;
  }

  v31 = *&v44[0];
LABEL_33:
  sub_1BD2FFA74(v31);
}

void sub_1BD3006EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  sub_1BD0E5E8C(0, &qword_1EBD41880);
  v8 = sub_1BE052744();
  v9 = sub_1BE052744();
  sub_1BE048964();
  v10 = a5;
  v7(a2, v8, v9, a5);
}

void sub_1BD3007D0(void (*a1)(uint64_t), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials) || *(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials))
  {
    a1(1);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_autoFillManager);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v9[4] = sub_1BD300F4C;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1BD3006EC;
    v9[3] = &block_descriptor_23_2;
    v8 = _Block_copy(v9);
    sub_1BE048964();

    [v4 checkActiveFPANCardsForEligibilityWithCompletion_];
    _Block_release(v8);
  }
}

uint64_t sub_1BD300920(char a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v12 = sub_1BE051F54();
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v16 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 || a4)
  {
    goto LABEL_12;
  }

  if (a2 >> 62)
  {
    if (sub_1BE053704() > 0)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (a3 >> 62)
    {
      if (sub_1BE053704() >= 1)
      {
        goto LABEL_7;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_7;
    }

LABEL_12:
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v22 = sub_1BE052D54();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a7;
    v34 = sub_1BD1B5F6C;
    v35 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1BD126964;
    v33 = &block_descriptor_29_2;
    v26 = _Block_copy(&aBlock);
    sub_1BE048964();

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v19, v15, v26);
    _Block_release(v26);
    goto LABEL_13;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  *(result + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials) = a2;
  v21 = result;

  *&v21[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials] = a3;
  sub_1BE048C84();

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  sub_1BE048C84();
  v22 = sub_1BE052D54();
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  *(v23 + 24) = a7;
  v34 = sub_1BD19E0B8;
  v35 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1BD126964;
  v33 = &block_descriptor_35;
  v24 = _Block_copy(&aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v19, v15, v24);
  _Block_release(v24);

LABEL_13:
  (*(v29 + 8))(v15, v12);
  return (*(v16 + 8))(v19, v28);
}

uint64_t sub_1BD300DE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD300E20(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD300F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_autoFillManager;
  v10 = objc_allocWithZone(MEMORY[0x1E69B8680]);
  v11 = v3;
  *&v4[v9] = [v10 init];
  v12 = OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_eligibleCredentials] = 0;
  v13 = OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_ineligibleCredentials] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = &v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_identifier];
  *v14 = 0xD00000000000001FLL;
  *(v14 + 1) = 0x80000001BE1229B0;
  *&v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_context] = a1;
  *&v11[v12] = a2;
  sub_1BE048964();
  sub_1BE048C84();

  *&v11[v13] = a3;
  sub_1BE048C84();

  v15 = *&v11[v12];
  if (v15)
  {
    sub_1BE048C84();

    if (v15 >> 62)
    {
      v16 = sub_1BE053704();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {

      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = *&v11[v13];
  sub_1BE048C84();

  if (!v17)
  {
    v18 = 0;
    goto LABEL_11;
  }

LABEL_9:
  v18 = 1;
LABEL_11:
  v11[OBJC_IVAR____TtC9PassKitUI27AutoFillCredentialsFlowItem_needsEligibilityCheck] = v18;
  v20.receiver = v11;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

void sub_1BD30117C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69B86A8]) initWithType_];
  v4 = *(a2 + 48);
  v5 = [v4 account];
  if (!v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  if ([v4 featureIdentifier] != 2)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD41910);
    sub_1BE050154();
    v10 = objc_allocWithZone(PKAddBankAccountInformationViewController);
    v11 = v6;
    v12 = v3;
    v13 = sub_1BE052404();
    v14 = [v10 initWithDelegate:v15 bankInformation:v12 accountCountryCode:v13 featureAccount:v11];

    if (v14)
    {
      [v14 setOfferKeychainPreFill_];
      [objc_allocWithZone(PKNavigationController) initWithRootViewController_];

      return;
    }

    goto LABEL_9;
  }

  v7 = [v6 creditDetails];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 countryCode];

    if (v9)
    {
      sub_1BE052434();
    }

    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void sub_1BD301360(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(*(Strong + OBJC_IVAR____TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator_model) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BE0B7020;
    if (a2)
    {
      *(v6 + 32) = a2;
      sub_1BD0E5E8C(0, &qword_1EBD4E090);
      v7 = v5;
      v8 = a2;
      v9 = sub_1BE052724();

      [v7 setFundingSources_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD301560(void *a1, void *a2)
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
  aBlock[4] = sub_1BD301A8C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_52;
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

void sub_1BD30182C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = sub_1BE04A844();
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_opt_self() displayableErrorForError:v7 featureIdentifier:objc_msgSend(*(*&v6[OBJC_IVAR____TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator_model] + 48) genericErrorTitle:sel_featureIdentifier) genericErrorMessage:{0, 0}];

    if (v8)
    {
      v9 = v8;
      v10 = sub_1BE04A844();
    }

    else
    {
      v10 = 0;
    }

    v11 = PKAlertForDisplayableError(v10, 0);

    if (v11)
    {
      if (a3)
      {
        [a3 presentViewController:v11 animated:1 completion:0];

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

id sub_1BD301A24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountAutomaticPaymentsAddBankView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD301AA0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AccountAutomaticPaymentsAddBankView.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator_model] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD301B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD301F2C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD301B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD301F2C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD301BD8()
{
  sub_1BD301F2C();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD301C00(void *a1)
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
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1BD301EBC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_2;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1BD301ED8()
{
  result = qword_1EBD41900;
  if (!qword_1EBD41900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41900);
  }

  return result;
}

unint64_t sub_1BD301F2C()
{
  result = qword_1EBD41908;
  if (!qword_1EBD41908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41908);
  }

  return result;
}

id sub_1BD302060()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v7 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v8 = *MEMORY[0x1E69BC650];
  v9 = objc_allocWithZone(PKNewDevicePasscodeViewController);
  v10 = sub_1BE052404();
  v11 = [v9 initWithContext:v7 minimumPasscodeLength:v8 currentPasscode:v10 delegate:v1];

  sub_1BE052434();
  v12 = sub_1BE04BB74();

  [v11 setReporter_];

  return v11;
}

uint64_t sub_1BD3021F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD302234(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD302300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_identifier];
  *v8 = 0xD00000000000002ELL;
  *(v8 + 1) = 0x80000001BE0CB3C0;
  *&v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_context] = a1;
  v9 = &v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem_currentPasscode];
  *v9 = a2;
  *(v9 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v11.receiver = v3;
  v11.super_class = ObjectType;
  sub_1BE048964();
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1BD3023F4(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - v13;
  if (a2 || (a1 & 1) == 0)
  {
    sub_1BE04D0E4();
    v20 = a2;
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = a2;
      v31 = v24;
      *v23 = 136315138;
      v25 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0);
      v26 = sub_1BE0524A4();
      v28 = sub_1BD123690(v26, v27, &v31);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1BD026000, v21, v22, "Failed to change passcode with error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      sub_1BD25EEEC();
      goto LABEL_11;
    }
  }

  else
  {
    sub_1BE04D0E4();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "Successfully changed passcode", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    (*(v7 + 8))(v14, v6);
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_1BD25EBA0(v3, v18);
LABEL_11:
    }
  }
}

uint64_t type metadata accessor for FinanceKitFoundInMailRowView()
{
  result = qword_1EBD419C0;
  if (!qword_1EBD419C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD302744()
{
  sub_1BD302840(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      sub_1BD302840(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1BD0FA9D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD302840(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BD3028B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419D0);
  MEMORY[0x1EEE9AC00](v32, v4);
  v31 = (v30 - v5);
  v6 = type metadata accessor for FinanceKitFoundInMailRowView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419D8);
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v13);
  v15 = v30 - v14;
  v16 = (v2 + *(v7 + 52));
  v17 = *v16;
  if (*v16)
  {
    v30[2] = a1;
    v18 = v16[1];
    sub_1BD30443C(v2, v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = sub_1BD3044A0(v11, v21 + v19);
    v30[1] = v30;
    v23 = (v21 + v20);
    *v23 = v17;
    v23[1] = v18;
    MEMORY[0x1EEE9AC00](v22, v24);
    v30[-2] = v2;
    sub_1BD0D44B8(v17);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419E8);
    sub_1BD0DE4F4(&qword_1EBD419F8, &qword_1EBD419E8);
    sub_1BE051704();
    v25 = v33;
    (*(v12 + 16))(v31, v15, v33);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD419F0, &qword_1EBD419D8);
    sub_1BE04F9A4();
    sub_1BD0D4744(v17);
    return (*(v12 + 8))(v15, v25);
  }

  else
  {
    v27 = sub_1BE04F504();
    v37 = 1;
    sub_1BD30301C(v2, v35);
    memcpy(v38, v35, sizeof(v38));
    memcpy(v39, v35, 0x1E8uLL);
    sub_1BD0DE19C(v38, &v34, &qword_1EBD419E0);
    sub_1BD0DE53C(v39, &qword_1EBD419E0);
    memcpy(&v36[7], v38, 0x1E8uLL);
    v28 = v37;
    v29 = v31;
    *v31 = v27;
    v29[1] = 0;
    *(v29 + 16) = v28;
    memcpy(v29 + 17, v36, 0x1EFuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD419E8);
    sub_1BD0DE4F4(&qword_1EBD419F0, &qword_1EBD419D8);
    sub_1BD0DE4F4(&qword_1EBD419F8, &qword_1EBD419E8);
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD302D80(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FinanceKitFoundInMailRowView();
  sub_1BD0DE19C(a1 + *(v13 + 40), v7, &unk_1EBD3CF70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1BD0DE53C(v7, &unk_1EBD3CF70);
  }

  (*(v9 + 32))(v12, v7, v8);
  a2(v12);
  return (*(v9 + 8))(v12, v8);
}

void *sub_1BD302F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v10 = 1;
  sub_1BD30301C(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_1BD0DE19C(__dst, v7, &qword_1EBD419E0);
  sub_1BD0DE53C(v12, &qword_1EBD419E0);
  memcpy(&v9[7], __dst, 0x1E8uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x1EFuLL);
}

uint64_t sub_1BD30301C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *a1;
  v25 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v44[0] = 0;
  LOBYTE(v44[1]) = -1;
  sub_1BE048C84();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A00);
  sub_1BE051694();
  v6 = __src[0];
  v24 = __src[0];
  v7 = __src[1];
  v23 = __src[1];
  v8 = __src[2];
  v22 = __src[2];
  v20 = sub_1BE04F7C4();
  v27.i8[0] = 1;
  sub_1BD303304(v2, __src);
  memcpy(__dst, __src, 0x141uLL);
  memcpy(v38, __src, 0x141uLL);
  sub_1BD0DE19C(__dst, v44, &qword_1EBD41A08);
  sub_1BD0DE53C(v38, &qword_1EBD41A08);
  memcpy(&v36[7], __dst, 0x141uLL);
  LOBYTE(v2) = sub_1BE050204();
  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(__src[0]) = 0;
  v17 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v21 = vdupq_n_s64(0x4046800000000000uLL);
  v39 = v21;
  *&v40 = v6;
  BYTE8(v40) = v7;
  *&v41 = v8;
  *(&v41 + 1) = v3;
  *&v42 = v25;
  *(&v42 + 1) = v5;
  v43 = v4;
  *&v35[64] = v4;
  *&v35[32] = v41;
  *&v35[48] = v42;
  *v35 = v21;
  *&v35[16] = v40;
  v44[0] = v20;
  v44[1] = 0;
  LOBYTE(v44[2]) = 1;
  memcpy(&v44[2] + 1, v36, 0x148uLL);
  LOBYTE(v44[44]) = v2;
  v44[45] = v10;
  v44[46] = v12;
  v44[47] = v14;
  v44[48] = v16;
  LOBYTE(v44[49]) = 0;
  v44[50] = KeyPath;
  v44[51] = v17;
  memcpy(&v35[72], v44, 0x1A0uLL);
  memcpy(a2, v35, 0x1E8uLL);
  __src[0] = v20;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v36, 0x148uLL);
  v46 = v2;
  v47 = v10;
  v48 = v12;
  v49 = v14;
  v50 = v16;
  v51 = 0;
  v52 = KeyPath;
  v53 = v17;
  sub_1BD3065EC(&v39, &v27);
  sub_1BD0DE19C(v44, &v27, &qword_1EBD41A10);
  sub_1BD0DE53C(__src, &qword_1EBD41A10);
  v27 = v21;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v3;
  v32 = v25;
  v33 = v5;
  v34 = v4;
  return sub_1BD306624(&v27);
}

uint64_t sub_1BD303304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1BE04F504();
  LOBYTE(v80) = 1;
  sub_1BD303B80(a1, &v109);
  v104 = *&v110[112];
  v105 = *&v110[128];
  v106 = *&v110[144];
  v107 = *&v110[160];
  v100 = *&v110[48];
  v101 = *&v110[64];
  v102 = *&v110[80];
  v103 = *&v110[96];
  v96 = v109;
  v97 = *v110;
  v98 = *&v110[16];
  v99 = *&v110[32];
  v108[8] = *&v110[112];
  v108[9] = *&v110[128];
  v108[10] = *&v110[144];
  v108[11] = *&v110[160];
  v108[4] = *&v110[48];
  v108[5] = *&v110[64];
  v108[6] = *&v110[80];
  v108[7] = *&v110[96];
  v108[0] = v109;
  v108[1] = *v110;
  v108[2] = *&v110[16];
  v108[3] = *&v110[32];
  sub_1BD0DE19C(&v96, v94, &qword_1EBD41A18);
  sub_1BD0DE53C(v108, &qword_1EBD41A18);
  *&v94[135] = v104;
  *&v94[151] = v105;
  *&v94[167] = v106;
  *&v94[183] = v107;
  *&v94[71] = v100;
  *&v94[87] = v101;
  *&v94[103] = v102;
  *&v94[119] = v103;
  *&v94[7] = v96;
  *&v94[23] = v97;
  *&v94[39] = v98;
  *&v94[55] = v99;
  *&v110[145] = *&v94[144];
  *&v110[161] = *&v94[160];
  *&v110[177] = *&v94[176];
  *&v110[81] = *&v94[80];
  *&v110[97] = *&v94[96];
  *&v110[113] = *&v94[112];
  *&v110[129] = *&v94[128];
  *&v110[17] = *&v94[16];
  *&v110[33] = *&v94[32];
  *&v110[49] = *&v94[48];
  *&v110[65] = *&v94[64];
  v109 = v3;
  v110[0] = 1;
  *&v110[192] = *(&v107 + 1);
  *&v110[1] = *v94;
  v4 = type metadata accessor for FinanceKitFoundInMailRowView();
  v5 = (a1 + *(v4 + 32));
  v6 = v5[1];
  if (v6)
  {
    *v94 = *v5;
    *&v94[8] = v6;
    v57 = a1;
    v7 = v4;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    sub_1BE050454();
    v13 = sub_1BE0505F4();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    sub_1BD0DDF10(v8, v10, v12 & 1);

    KeyPath = swift_getKeyPath();
    v62 = v15;
    v63 = v13;
    v60 = v17 & 1;
    sub_1BD0D7F18(v13, v15, v17 & 1);
    v61 = v19;
    sub_1BE048C84();
    v56 = KeyPath;
    sub_1BE048964();
    v4 = v7;
    a1 = v57;
    v59 = 1;
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v56 = 0;
    v59 = 0;
  }

  v21 = (a1 + *(v4 + 36));
  v22 = v21[1];
  if (v22)
  {
    *v94 = *v21;
    *&v94[8] = v22;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    sub_1BE050454();
    v28 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;

    sub_1BD0DDF10(v23, v25, v27 & 1);

    v33 = [objc_opt_self() secondaryLabelColor];
    *v94 = sub_1BE0511C4();
    v34 = v30;
    v35 = sub_1BE050574();
    v37 = v36;
    LOBYTE(v25) = v38;
    v40 = v39;
    sub_1BD0DDF10(v28, v34, v32 & 1);

    v41 = swift_getKeyPath();
    v55 = v35;
    v58 = v37;
    v42 = v25 & 1;
    sub_1BD0D7F18(v35, v37, v25 & 1);
    v43 = v40;
    sub_1BE048C84();
    v53 = v41;
    sub_1BE048964();
    v52 = 1;
  }

  else
  {
    v55 = 0;
    v58 = 0;
    v42 = 0;
    v43 = 0;
    v52 = 0;
    v53 = 0;
  }

  v75 = *&v110[160];
  v76 = *&v110[176];
  v70 = *&v110[80];
  v71 = *&v110[96];
  v72 = *&v110[112];
  v73 = *&v110[128];
  v74 = *&v110[144];
  v66 = *&v110[16];
  v67 = *&v110[32];
  v68 = *&v110[48];
  v69 = *&v110[64];
  v64 = v109;
  v65 = *v110;
  v78[10] = *&v110[144];
  v78[11] = *&v110[160];
  v78[12] = *&v110[176];
  v78[6] = *&v110[80];
  v78[7] = *&v110[96];
  v78[8] = *&v110[112];
  v78[9] = *&v110[128];
  v78[2] = *&v110[16];
  v78[3] = *&v110[32];
  v78[4] = *&v110[48];
  v78[5] = *&v110[64];
  v78[0] = v109;
  v78[1] = *v110;
  v90 = *&v110[144];
  v91 = *&v110[160];
  v92 = *&v110[176];
  v86 = *&v110[80];
  v87 = *&v110[96];
  v88 = *&v110[112];
  v89 = *&v110[128];
  v82 = *&v110[16];
  v83 = *&v110[32];
  v84 = *&v110[48];
  v85 = *&v110[64];
  v77 = *&v110[192];
  v79 = *&v110[192];
  v93 = *&v110[192];
  v80 = v109;
  v81 = *v110;
  sub_1BD0DE19C(&v109, v94, &qword_1EBD41A20);
  sub_1BD0DE19C(v78, v94, &qword_1EBD41A20);
  sub_1BD2B5270(v63, v62, v60, v61);
  sub_1BD2B5270(v55, v58, v42, v43);
  sub_1BD2B52C0(v63, v62, v60, v61);
  sub_1BD2B52C0(v55, v58, v42, v43);
  sub_1BD0DE53C(&v109, &qword_1EBD41A20);
  v44 = v91;
  *(a2 + 160) = v90;
  *(a2 + 176) = v44;
  *(a2 + 192) = v92;
  v45 = v93;
  v46 = v87;
  *(a2 + 96) = v86;
  *(a2 + 112) = v46;
  v47 = v89;
  *(a2 + 128) = v88;
  *(a2 + 144) = v47;
  v48 = v83;
  *(a2 + 32) = v82;
  *(a2 + 48) = v48;
  v49 = v85;
  *(a2 + 64) = v84;
  *(a2 + 80) = v49;
  v50 = v81;
  *a2 = v80;
  *(a2 + 16) = v50;
  *(a2 + 208) = v45;
  *(a2 + 216) = v63;
  *(a2 + 224) = v62;
  *(a2 + 232) = v60;
  *(a2 + 240) = v61;
  *(a2 + 248) = v56;
  *(a2 + 256) = v59;
  *(a2 + 264) = 0;
  *(a2 + 272) = v55;
  *(a2 + 280) = v58;
  *(a2 + 288) = v42;
  *(a2 + 296) = v43;
  *(a2 + 304) = v53;
  *(a2 + 312) = v52;
  *(a2 + 320) = 0;
  sub_1BD2B52C0(v55, v58, v42, v43);
  sub_1BD2B52C0(v63, v62, v60, v61);
  *&v94[160] = v74;
  *&v94[176] = v75;
  *&v94[192] = v76;
  *&v94[96] = v70;
  *&v94[112] = v71;
  v95 = v77;
  *&v94[128] = v72;
  *&v94[144] = v73;
  *&v94[32] = v66;
  *&v94[48] = v67;
  *&v94[64] = v68;
  *&v94[80] = v69;
  *v94 = v64;
  *&v94[16] = v65;
  return sub_1BD0DE53C(v94, &qword_1EBD41A20);
}

uint64_t sub_1BD303B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v100 = v90 - v5;
  v6 = sub_1BE04AB24();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v93 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BE04AB54();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v9);
  v91 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v97 = v90 - v13;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  v104 = v14;
  v105 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v99 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for FinanceKitFoundInMailRowView();
  v18 = (a1 + v106[7]);
  v19 = v18[1];
  v118 = *v18;
  v119 = v19;
  v20 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v90[1] = v20;
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  sub_1BE050324();
  v26 = sub_1BE0505F4();
  v28 = v27;
  LOBYTE(v20) = v29;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  v109 = sub_1BE0505D4();
  v101 = v30;
  v102 = v31;
  v98 = v32;
  v33 = v28;
  v34 = v97;
  sub_1BD0DDF10(v26, v33, v20 & 1);

  KeyPath = swift_getKeyPath();
  sub_1BD0DE19C(v107 + v106[6], v34, &unk_1EBD39970);
  v35 = v105;
  if ((*(v105 + 48))(v34, 1) == 1)
  {
    sub_1BD0DE53C(v34, &unk_1EBD39970);
    v36 = 0;
    v37 = 0;
    v104 = 0;
    v105 = 0;
    v38 = 0;
    v39 = 0;
  }

  else
  {
    (*(v35 + 32))();
    v40 = v91;
    sub_1BE04AB14();
    v41 = v93;
    sub_1BE04AB04();
    v42 = sub_1BE04AF24();
    v44 = v43;
    (*(v95 + 8))(v41, v96);
    (*(v92 + 8))(v40, v94);
    v118 = v42;
    v119 = v44;
    v45 = sub_1BE0506C4();
    v47 = v46;
    v49 = v48;
    sub_1BE050454();
    v50 = sub_1BE0505F4();
    v52 = v51;
    v54 = v53;

    sub_1BD0DDF10(v45, v47, v49 & 1);

    v55 = [objc_opt_self() secondaryLabelColor];
    v118 = sub_1BE0511C4();
    v56 = sub_1BE050574();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_1BD0DDF10(v50, v52, v54 & 1);

    (*(v105 + 8))(v99, v104);
    v63 = swift_getKeyPath();
    v64 = v60 & 1;
    v36 = v56;
    v37 = v58;
    v104 = v64;
    sub_1BD0D7F18(v56, v58, v64);
    v38 = v62;
    sub_1BE048C84();
    v105 = v63;
    sub_1BE048964();
    v39 = 1;
  }

  v65 = v100;
  sub_1BD0DE19C(v107 + v106[10], v100, &unk_1EBD3CF70);
  v66 = sub_1BE04AA64();
  v67 = (*(*(v66 - 8) + 48))(v65, 1, v66);
  sub_1BD0DE53C(v65, &unk_1EBD3CF70);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (v67 != 1)
  {
    v68 = sub_1BE04F7B4();
    LOBYTE(v118) = 1;
    v69 = sub_1BE051574();
    v71 = sub_1BE050454();
    v75 = swift_getKeyPath();
    v76 = [objc_opt_self() tertiaryLabelColor];
    v77 = sub_1BE0511C4();
    v72 = swift_getKeyPath();
    v73 = v77;
    v70 = v75;
    v74 = v118;
  }

  v94 = v69;
  v95 = v74;
  v96 = v68;
  v97 = v70;
  v99 = v71;
  v100 = v72;
  v106 = v73;
  v113 = v98 & 1;
  LODWORD(v107) = v98 & 1;
  v112 = 0;
  v111 = 1;
  v114 = v68;
  *&v115 = v74;
  *(&v115 + 1) = v69;
  *&v116 = v70;
  *(&v116 + 1) = v71;
  *&v117 = v72;
  *(&v117 + 1) = v73;
  v78 = v109;
  v79 = v101;
  sub_1BD0D7F18(v109, v101, v98 & 1);
  v80 = v102;
  sub_1BE048C84();
  sub_1BE048964();
  v82 = v104;
  v81 = v105;
  sub_1BD2B5270(v36, v37, v104, v38);
  sub_1BD0DE19C(&v114, &v118, &qword_1EBD41A28);
  sub_1BD2B52C0(v36, v37, v82, v38);
  *&v110[7] = v114;
  *&v110[23] = v115;
  *&v110[39] = v116;
  *&v110[55] = v117;
  v83 = *v110;
  v84 = v103;
  *(v103 + 137) = *&v110[16];
  v85 = *&v110[48];
  *(v84 + 153) = *&v110[32];
  *(v84 + 169) = v85;
  v86 = v113;
  v87 = v112;
  v88 = v111;
  *v84 = v78;
  *(v84 + 8) = v79;
  *(v84 + 16) = v86;
  *(v84 + 24) = v80;
  *(v84 + 32) = KeyPath;
  *(v84 + 40) = 1;
  *(v84 + 48) = v87;
  *(v84 + 56) = 0;
  *(v84 + 64) = v88;
  *(v84 + 72) = v36;
  *(v84 + 80) = v37;
  *(v84 + 88) = v82;
  *(v84 + 96) = v38;
  *(v84 + 104) = v81;
  *(v84 + 112) = v39;
  *(v84 + 120) = 0;
  *(v84 + 184) = *&v110[63];
  *(v84 + 121) = v83;
  v118 = v96;
  v119 = 0;
  v120 = v95;
  v121 = v94;
  v122 = v97;
  v123 = v99;
  v124 = v100;
  v125 = v106;
  sub_1BD0DE53C(&v118, &qword_1EBD41A28);
  sub_1BD2B52C0(v36, v37, v82, v38);
  sub_1BD0DDF10(v109, v79, v107);
}

uint64_t sub_1BD30443C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitFoundInMailRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3044A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitFoundInMailRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD304504()
{
  v1 = *(type metadata accessor for FinanceKitFoundInMailRowView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD302D80(v0 + v2, v3);
}

uint64_t sub_1BD30459C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A40);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v32 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A48);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A50);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v32 - v14);
  v33 = *(v1 + 16);
  *&v34 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A58);
  sub_1BE0516A4();
  v16 = v37;
  if (v37 == 255)
  {
    v32[0] = sub_1BE051404();
    KeyPath = swift_getKeyPath();
    v23 = swift_allocObject();
    v24 = *(v2 + 48);
    *(v23 + 48) = *(v2 + 32);
    *(v23 + 64) = v24;
    *(v23 + 80) = *(v2 + 64);
    v25 = *(v2 + 16);
    *(v23 + 16) = *v2;
    *(v23 + 32) = v25;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A60) + 36);
    v32[1] = a1;
    v27 = (v7 + v26);
    sub_1BE04E7B4();
    sub_1BD3065EC(v2, &v33);
    sub_1BE0528B4();
    *v27 = &unk_1BE0CB730;
    v27[1] = v23;
    v28 = v32[0];
    *v7 = KeyPath;
    v7[1] = v28;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v29 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A68) + 36));
    v30 = v34;
    *v29 = v33;
    v29[1] = v30;
    v29[2] = v35;
    *(v7 + *(v4 + 36)) = 257;
    sub_1BD0DE19C(v7, v11, &qword_1EBD41A40);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD41A70, &qword_1EBD41A50);
    sub_1BD306D6C(&qword_1EBD41A78, &qword_1EBD41A40, &unk_1BE0CB708, sub_1BD306978);
    sub_1BE04F9A4();
    v20 = v7;
    v21 = &qword_1EBD41A40;
  }

  else
  {
    v17 = v36;
    *v15 = sub_1BE051CB4();
    v15[1] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AA8);
    sub_1BD3049E0(v2, v17, v16 & 1, v15 + *(v19 + 44));
    sub_1BD0DE19C(v15, v11, &qword_1EBD41A50);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD41A70, &qword_1EBD41A50);
    sub_1BD306D6C(&qword_1EBD41A78, &qword_1EBD41A40, &unk_1BE0CB708, sub_1BD306978);
    sub_1BE04F9A4();
    sub_1BD306BF4(v17, v16);
    v20 = v15;
    v21 = &qword_1EBD41A50;
  }

  return sub_1BD0DE53C(v20, v21);
}

uint64_t sub_1BD3049E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AB0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34.i8[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34.i8[-v15];
  sub_1BD304C50(a2, a3 & 1, v34.i64 - v15);
  sub_1BE051E54();
  v17 = &v16[*(v9 + 44)];
  *v17 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v17[1].i64[0] = v18;
  v17[1].i64[1] = v19;
  v20 = sub_1BE052434();
  v22 = v21;
  v23 = *a1;
  v24 = a1[1];
  v25 = swift_allocObject();
  v25[2] = v20;
  v25[3] = v22;
  v25[4] = v23;
  v25[5] = v24;
  sub_1BE051E74();
  v27 = v26;
  v29 = v28;
  LOBYTE(v39[0]) = 0;
  sub_1BD0DE19C(v16, v12, &qword_1EBD41AB0);
  sub_1BD0DE19C(v12, a4, &qword_1EBD41AB0);
  v30 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AB8) + 48);
  *&v35 = sub_1BD306C0C;
  *(&v35 + 1) = v25;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = v23;
  *v37 = v24;
  v34 = vdupq_n_s64(0x3FDD70A3D70A3D71uLL);
  *&v37[8] = v34;
  *&v37[24] = v27;
  v38 = v29;
  v31 = v36;
  *v30 = v35;
  *(v30 + 16) = v31;
  v32 = *&v37[16];
  *(v30 + 32) = *v37;
  *(v30 + 48) = v32;
  *(v30 + 64) = v38;
  sub_1BD0DE19C(&v35, v39, &qword_1EBD41AC0);
  sub_1BD0DE53C(v16, &qword_1EBD41AB0);
  v39[0] = sub_1BD306C0C;
  v39[1] = v25;
  v40 = 0;
  v41 = v23;
  v42 = v24;
  v43 = v34;
  v44 = v27;
  v45 = v29;
  sub_1BD0DE53C(v39, &qword_1EBD41AC0);
  return sub_1BD0DE53C(v12, &qword_1EBD41AB0);
}

id sub_1BD304C50@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AC8);
  MEMORY[0x1EEE9AC00](v57, v5);
  v56 = &v53 - v6;
  v7 = sub_1BE051584();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AD0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v53 - v22;
  if ((a2 & 1) == 0)
  {
    v41 = a1;
    sub_1BE051544();
    (*(v8 + 104))(v11, *MEMORY[0x1E6981630], v7);
    v55 = sub_1BE0515E4();

    (*(v8 + 8))(v11, v7);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v54 = v61;
    v42 = v62;
    v43 = v63;
    v44 = v64;
    v45 = v65;
    v46 = v66;
    v60 = v62;
    v59 = v64;
    v47 = &v23[*(v12 + 36)];
    v48 = *(sub_1BE04EDE4() + 20);
    v49 = *MEMORY[0x1E697F468];
    v50 = sub_1BE04F684();
    (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
    __asm { FMOV            V0.2D, #8.0 }

    *v47 = _Q0;
    *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v52 = v54;
    *v23 = v55;
    *(v23 + 1) = v52;
    v23[16] = v42;
    *(v23 + 3) = v43;
    v23[32] = v44;
    *(v23 + 5) = v45;
    *(v23 + 6) = v46;
    *(v23 + 28) = 257;
    sub_1BD0DE19C(v23, v56, &qword_1EBD41AD0);
    swift_storeEnumTagMultiPayload();
    sub_1BD306C88();
    sub_1BE04F9A4();
    v40 = v23;
    return sub_1BD0DE53C(v40, &qword_1EBD41AD0);
  }

  sub_1BE049874();
  result = PKMapsIconForMerchantCategory();
  if (result)
  {
    sub_1BE051544();
    (*(v8 + 104))(v11, *MEMORY[0x1E6981630], v7);
    v55 = sub_1BE0515E4();

    (*(v8 + 8))(v11, v7);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v25 = v62;
    v26 = v63;
    v27 = v64;
    v28 = v65;
    v53 = v66;
    v54 = v61;
    v60 = v62;
    v59 = v64;
    v29 = &v15[*(v12 + 36)];
    v30 = *(sub_1BE04EDE4() + 20);
    v31 = *MEMORY[0x1E697F468];
    v32 = sub_1BE04F684();
    (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
    __asm { FMOV            V0.2D, #8.0 }

    *v29 = _Q0;
    *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v38 = v54;
    *v15 = v55;
    *(v15 + 1) = v38;
    v15[16] = v25;
    *(v15 + 3) = v26;
    v15[32] = v27;
    v39 = v53;
    *(v15 + 5) = v28;
    *(v15 + 6) = v39;
    *(v15 + 28) = 257;
    sub_1BD306C18(v15, v19);
    sub_1BD0DE19C(v19, v56, &qword_1EBD41AD0);
    swift_storeEnumTagMultiPayload();
    sub_1BD306C88();
    sub_1BE04F9A4();
    v40 = v19;
    return sub_1BD0DE53C(v40, &qword_1EBD41AD0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3051E0(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v1[10] = sub_1BE052894();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_1BD305298;

  return sub_1BD305748();
}

uint64_t sub_1BD305298(uint64_t a1)
{
  v2 = *v1;
  v2[12] = a1;

  v4 = sub_1BE052844();
  v2[13] = v4;
  v2[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD3053E4, v4, v3);
}

uint64_t sub_1BD3053E4()
{
  if (v0[12])
  {

    v0[17] = v0[12];
    v2 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD30568C, v2, v1);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1BD3054DC;

    return sub_1BD305C98();
  }
}

uint64_t sub_1BD3054DC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1BD305604, v4, v3);
}

uint64_t sub_1BD305604()
{

  *(v0 + 136) = *(v0 + 128);
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD30568C, v2, v1);
}

uint64_t sub_1BD30568C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);

  v4 = *(v3 + 16);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 16) = v4;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A58);
  sub_1BE0516B4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD305748()
{
  v1[2] = v0;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1BE0528A4();
  v1[6] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD30583C, v4, v3);
}

uint64_t sub_1BD30583C()
{
  v1 = v0[2];
  sub_1BE0490F4();
  v0[9] = sub_1BE0490B4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD305900;

  return MEMORY[0x1EEDC14F8](v2, v3, 1);
}

uint64_t sub_1BD305900(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;

  if (v2)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1BD305AF8;
  }

  else
  {

    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1BD305A20;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD305A20()
{
  v1 = v0[12];

  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v6 = sub_1BE04AAB4();
    v2 = [v5 initWithData_];

    sub_1BD030220(v4, v3);
  }

  v7 = v0[1];

  return v7(v2);
}

uint64_t sub_1BD305AF8()
{
  v1 = v0[13];

  sub_1BE04D054();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Could not generate icon for mail item: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1BD305C98()
{
  v1[3] = v0;
  v2 = sub_1BE04D214();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = sub_1BE0528A4();
  v1[8] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD305D90, v4, v3);
}

uint64_t sub_1BD305D90()
{
  v1 = objc_allocWithZone(MEMORY[0x1E699B240]);
  v2 = sub_1BE052404();
  v3 = [v1 initWithString_];

  if (v3 && (v4 = [v3 highLevelDomain], v3, v4))
  {
    v5 = sub_1BE052434();
    v7 = v6;

    v0[11] = v7;
    v8 = sub_1BE052894();
    v0[12] = v8;
    v9 = swift_task_alloc();
    v0[13] = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v7;
    v10 = swift_task_alloc();
    v0[14] = v10;
    type metadata accessor for PKMerchantCategory(0);
    *v10 = v0;
    v10[1] = sub_1BD305F74;
    v12 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 2, v8, v12, 0xD000000000000010, 0x80000001BE122AF0, sub_1BD306DF0, v9, v11);
  }

  else
  {

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_1BD305F74()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BD30611C;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BD3060AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD3060AC()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BD30611C()
{
  v1 = v0[15];

  sub_1BE04D054();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Could not generate category for mail item: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11(0);
}

void sub_1BD3062D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  v8 = sub_1BE052404();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_1BD306DF8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD306530;
  aBlock[3] = &block_descriptor_53;
  v11 = _Block_copy(aBlock);

  [v7 merchantCategoryForDomain:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1BD3064B0(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0);
    return sub_1BE052854();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0);
    return sub_1BE052864();
  }
}

void sub_1BD306530(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v6 = a3;
  v5(a2, a3);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BD306674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BD3066BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t get_enum_tag_for_layout_string_9PassKitUI12MailItemIcon33_2C6649BC22EC7149CAD523C6E3265ED4LLV0F4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD306730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD306778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD3067D8()
{
  result = qword_1EBD41A30;
  if (!qword_1EBD41A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A38);
    sub_1BD0DE4F4(&qword_1EBD419F0, &qword_1EBD419D8);
    sub_1BD0DE4F4(&qword_1EBD419F8, &qword_1EBD419E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A30);
  }

  return result;
}

void sub_1BD3068D8(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_1BD3068E4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD3051E0(v0 + 16);
}

unint64_t sub_1BD306978()
{
  result = qword_1EBD41A80;
  if (!qword_1EBD41A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A68);
    sub_1BD306A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A80);
  }

  return result;
}

unint64_t sub_1BD306A04()
{
  result = qword_1EBD41A88;
  if (!qword_1EBD41A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A60);
    sub_1BD306A90();
    sub_1BD306B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A88);
  }

  return result;
}

unint64_t sub_1BD306A90()
{
  result = qword_1EBD41A90;
  if (!qword_1EBD41A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41A98);
    sub_1BD306B48();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41A90);
  }

  return result;
}

unint64_t sub_1BD306B48()
{
  result = qword_1EBD41AA0;
  if (!qword_1EBD41AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41AA0);
  }

  return result;
}

unint64_t sub_1BD306B9C()
{
  result = qword_1EBD37148;
  if (!qword_1EBD37148)
  {
    sub_1BE04E7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37148);
  }

  return result;
}

void sub_1BD306BF4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BD3068D8(a1, a2 & 1);
  }
}

uint64_t sub_1BD306C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD306C88()
{
  result = qword_1EBD41AD8;
  if (!qword_1EBD41AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41AD0);
    sub_1BD306D6C(&qword_1EBD41AE0, &qword_1EBD41AE8, &unk_1BE0CB790, sub_1BD1A3410);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41AD8);
  }

  return result;
}

uint64_t sub_1BD306D6C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1BD306DF8(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0);

  return sub_1BD3064B0(a1, a2);
}

unint64_t sub_1BD306E84()
{
  result = qword_1EBD41AF8;
  if (!qword_1EBD41AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41B00);
    sub_1BD0DE4F4(&qword_1EBD41A70, &qword_1EBD41A50);
    sub_1BD306D6C(&qword_1EBD41A78, &qword_1EBD41A40, &unk_1BE0CB708, sub_1BD306978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41AF8);
  }

  return result;
}

uint64_t sub_1BD306F68()
{

  sub_1BD0D4534(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_1BD306FDC(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v3 = sub_1BE04BAC4();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v54 = v2;
  v6 = sub_1BD187C30(v2);

  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  v60 = 0x80000001BE1182F0;
  v61 = 0x80000001BE118310;
  v58 = 0x80000001BE118280;
  v59 = 0x80000001BE1182A0;
  v57 = 0x80000001BE118260;
  while (2)
  {
    if (v7)
    {
      switch(*v8)
      {
        case 0xC:

          break;
        default:
          v9 = sub_1BE053B84();

          ++v8;
          --v7;
          if ((v9 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v11 = 0x6F63206775626564;
      v12 = 0xEC0000006769666ELL;
      v13 = 0;
      goto LABEL_19;
    }

    break;
  }

  swift_getKeyPath();
  v10 = sub_1BD187DFC(v54);

  if (v10)
  {
    v11 = 0xD00000000000001DLL;
    v12 = 0x80000001BE122BF0;
    v13 = 1;
LABEL_19:
    v55(v11, v12, 0, v13);
    return;
  }

  v61 = sub_1BE04BC84();
  if (![v61 passActivationState])
  {
    if ([v61 isCarKeyPass])
    {
      v14 = 0x2079656B20726163;
      v15 = 0xEC00000073736170;
      goto LABEL_11;
    }

    v17 = sub_1BE04BCE4();
    v19 = v17;
    if (v18)
    {
      if (v18 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1BE0B69E0;
        v21 = [v19 serialNumber];
        v22 = sub_1BE052434();
        v24 = v23;

        *(v20 + 32) = v22;
        *(v20 + 40) = v24;
        sub_1BD307F28(v19, 1u);
      }

      else if (v17)
      {
        v14 = 0xD000000000000026;
        v15 = 0x80000001BE122BA0;
        goto LABEL_11;
      }

LABEL_35:
      v42 = objc_opt_self();
      v43 = v61;
      v44 = v51;
      sub_1BE04BC34();
      v45 = sub_1BE04B9A4();
      (*(v52 + 8))(v44, v53);
      v46 = sub_1BE052724();

      v47 = swift_allocObject();
      v48 = v56;
      *(v47 + 16) = v55;
      *(v47 + 24) = v48;
      aBlock[4] = sub_1BD307F3C;
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD307AA0;
      aBlock[3] = &block_descriptor_11;
      v49 = _Block_copy(aBlock);
      sub_1BE048964();

      [v42 shouldShowAddToWatchOfferForPass:v43 inContext:v45 externalProvisioningDeviceSerialNumbers:v46 completion:v49];

      _Block_release(v49);
      return;
    }

    v25 = [v17 devices];
    sub_1BD0E5E8C(0, &qword_1EBD41B08);
    v26 = sub_1BE052744();

    if (v26 >> 62)
    {
      v27 = sub_1BE053704();
      if (v27)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_22:
        v59 = v19;
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1BD03B254(0, v27 & ~(v27 >> 63), 0);
        if (v27 < 0)
        {
          __break(1u);
          return;
        }

        v28 = 0;
        v29 = aBlock[0];
        v30 = v26;
        v60 = v26 & 0xC000000000000001;
        v31 = v26;
        v32 = v27;
        do
        {
          if (v60)
          {
            v33 = MEMORY[0x1BFB40900](v28, v30);
          }

          else
          {
            v33 = *(v30 + 8 * v28 + 32);
          }

          v34 = v33;
          v35 = [v34 serialNumber];
          v36 = sub_1BE052434();
          v38 = v37;

          aBlock[0] = v29;
          v40 = *(v29 + 16);
          v39 = *(v29 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1BD03B254((v39 > 1), v40 + 1, 1);
            v29 = aBlock[0];
          }

          ++v28;
          *(v29 + 16) = v40 + 1;
          v41 = v29 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          v30 = v31;
        }

        while (v32 != v28);
        sub_1BD307F28(v59, 0);

        goto LABEL_35;
      }
    }

    sub_1BD307F28(v19, 0);
    goto LABEL_35;
  }

  v14 = 0x746F6E2073736170;
  v15 = 0xEF65766974636120;
LABEL_11:
  v55(v14, v15, 0, 1);
  v16 = v61;
}

uint64_t sub_1BD3077E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a2;
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v17 = sub_1BE052D54();
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v23;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1;
  *(v18 + 40) = v19;
  *(v18 + 48) = a3;
  aBlock[4] = sub_1BD307F44;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_17_0;
  v20 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v16, v12, v20);
  _Block_release(v20);

  (*(v9 + 8))(v12, v8);
  return (*(v13 + 8))(v16, v25);
}

uint64_t sub_1BD307AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_1BE048964();
  v4(a2, v5, v7);
}

unint64_t sub_1BD307B2C()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BE04BD44();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    return 2;
  }

  v16 = result;
  v17 = sub_1BE053704();
  result = v16;
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1BFB40900](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 32);
LABEL_6:
    v7 = v6;

    v8 = v7;
    sub_1BE04BC34();
    v9 = sub_1BE04B9A4();
    (*(v1 + 8))(v4, v0);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = objc_allocWithZone(PKPaymentSetupAddToWatchOfferViewController);
    aBlock[4] = sub_1BD307F20;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD307EA8;
    aBlock[3] = &block_descriptor_54;
    v12 = _Block_copy(aBlock);
    sub_1BE048964();

    v13 = [v11 initWithPaymentPass:v8 context:v9 dismissalHandler:v12];
    _Block_release(v12);

    if (v13)
    {
      sub_1BE052434();
      v14 = v13;
      v15 = sub_1BE04BB74();

      [v14 setReporter_];
    }

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD307DF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      v4 = sub_1BE048964();
      sub_1BD8659A4(v4, &off_1F3B9DF80, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1BD307EA8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v6 = a2;
  v5(a2, a3);
}

void sub_1BD307F28(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_1BD307F44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  if (v3)
  {
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  sub_1BE048C84();
  v1(v2, v4, v5, 2);
}

id PKDataReleaseRelyingPartyCellConfiguration.__allocating_init(name:icon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_icon] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKDataReleaseRelyingPartyCellConfiguration.init(name:icon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_icon] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKDataReleaseRelyingPartyCellConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *PKDataReleaseRelyingPartyCell.configuration.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PKDataReleaseRelyingPartyCell.configuration.setter(void *a1)
{
  sub_1BD308A68(a1);
}

void (*PKDataReleaseRelyingPartyCell.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B28);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  v5[11] = v8;
  v5[12] = v9;
  swift_beginAccess();
  return sub_1BD30844C;
}

void sub_1BD30844C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if (a2)
  {
    v6 = *(v3 + 88);
  }

  else
  {
    if (*(*(v3 + 64) + *(v3 + 96)))
    {
      v8 = *(v3 + 80);
      v7 = *(v3 + 88);
      v9 = *(v3 + 72);
      MEMORY[0x1EEE9AC00](v4, v5);
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B30);
      sub_1BD308C6C();
      sub_1BE04FCE4();
      sub_1BE0501D4();
      *(v3 + 24) = v9;
      *(v3 + 32) = sub_1BD0DE4F4(&qword_1EBD41B78, &qword_1EBD41B28);
      __swift_allocate_boxed_opaque_existential_1(v3);
      sub_1BE04FCD4();

      (*(v8 + 8))(v7, v9);
    }

    else
    {
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
    }

    v12 = *(v3 + 88);
    MEMORY[0x1BFB3FEF0](v3);
    v6 = v12;
  }

  free(v6);
  free(v3);
}

double sub_1BD3085D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *(a1 + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name + 8);
  v23 = *(a1 + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_icon);
  sub_1BE048C84();
  if (v3)
  {
    v4 = v3;
    v21 = sub_1BE051544();
  }

  else
  {
    v21 = 0;
  }

  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1BE0501F4();
  v17 = sub_1BE050324();
  v18 = swift_getKeyPath();
  v19 = sub_1BE051464();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v23;
  *(a2 + 40) = v22;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = v21;
  *(a2 + 72) = 1;
  *(a2 + 80) = v7;
  *(a2 + 88) = v9;
  *(a2 + 96) = v11;
  *(a2 + 104) = v13;
  *(a2 + 112) = v15;
  *(a2 + 120) = 0;
  *(a2 + 128) = v16;
  result = 0.0;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 1;
  *(a2 + 176) = v18;
  *(a2 + 184) = v17;
  *(a2 + 192) = v19;
  return result;
}

id PKDataReleaseRelyingPartyCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDataReleaseRelyingPartyCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKDataReleaseRelyingPartyCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDataReleaseRelyingPartyCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1BD3089E8@<X0>(void *a1@<X8>)
{
  result = sub_1BE04EF44();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD308A3C@<X0>(void *a1@<X8>)
{
  result = sub_1BE04F124();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD308A68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    MEMORY[0x1EEE9AC00](v11, v12);
    *(&v14 - 2) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41B30);
    sub_1BD308C6C();
    sub_1BE04FCE4();
    sub_1BE0501D4();
    *(&v15 + 1) = v3;
    v16 = sub_1BD0DE4F4(&qword_1EBD41B78, &qword_1EBD41B28);
    __swift_allocate_boxed_opaque_existential_1(&v14);
    sub_1BE04FCD4();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  return MEMORY[0x1BFB3FEF0](&v14);
}

unint64_t sub_1BD308C6C()
{
  result = qword_1EBD41B38;
  if (!qword_1EBD41B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41B30);
    sub_1BD308D24();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41B38);
  }

  return result;
}

unint64_t sub_1BD308D24()
{
  result = qword_1EBD41B40;
  if (!qword_1EBD41B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41B48);
    sub_1BD308E38(&qword_1EBD41B50, &qword_1EBD41B58, &unk_1BE0CB898, sub_1BD308E08);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41B40);
  }

  return result;
}

uint64_t sub_1BD308E38(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD308EBC()
{
  result = qword_1EBD41B70;
  if (!qword_1EBD41B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41B70);
  }

  return result;
}

uint64_t sub_1BD308F8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

id sub_1BD309000()
{
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_familyMembers] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUsers] = 0;
  v1 = &v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol];
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x80000001BE118FF0;
  v2 = OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor;
  *&v0[v2] = [objc_opt_self() systemGreenColor];
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountCardNumbersPresenter] = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter] = 0;
  swift_beginAccess();
  v9 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41C00);
  sub_1BE04D874();
  swift_endAccess();
  result = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_paymentDataProvider] = result;
    v8.receiver = v0;
    v8.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsManager();
    v4 = objc_msgSendSuper2(&v8, sel_init);
    v5 = objc_opt_self();
    v6 = v4;
    result = [v5 sharedInstance];
    if (result)
    {
      v7 = result;
      [result registerObserver_];

      sub_1BD309550();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD3091FC()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result unregisterObserver_];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsManager();
    return objc_msgSendSuper2(&v3, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardFeaturesAndBenefitsManager()
{
  result = qword_1EBD41BE8;
  if (!qword_1EBD41BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD309490()
{
  sub_1BD3128D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD309550()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1BD3145AC;
  v22 = v1;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD3B2110;
  v20 = &block_descriptor_89;
  v2 = _Block_copy(&v17);

  [v0 addOperation_];
  _Block_release(v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1BD3145B4;
  v22 = v3;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD3B2110;
  v20 = &block_descriptor_93_0;
  v4 = _Block_copy(&v17);

  [v0 addOperation_];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1BD3145BC;
  v22 = v5;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD3B2110;
  v20 = &block_descriptor_97_0;
  v6 = _Block_copy(&v17);

  [v0 addOperation_];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1BD3145C4;
  v22 = v7;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD3B2110;
  v20 = &block_descriptor_101;
  v8 = _Block_copy(&v17);

  [v0 addOperation_];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1BD3145CC;
  v22 = v9;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD3B2110;
  v20 = &block_descriptor_105;
  v10 = _Block_copy(&v17);

  [v0 addOperation_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1BD3145D4;
  v22 = v11;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD3B2110;
  v20 = &block_descriptor_109;
  v12 = _Block_copy(&v17);

  [v0 addOperation_];
  _Block_release(v12);
  v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1BD3145DC;
  v22 = v14;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BD3B21E4;
  v20 = &block_descriptor_113;
  v15 = _Block_copy(&v17);

  v16 = [v0 evaluateWithInput:v13 completion:v15];
  _Block_release(v15);

  swift_unknownObjectRelease();
}

void sub_1BD309A14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = a3;
    v11[4] = a4;
    v11[5] = a2;
    aBlock[4] = sub_1BD314738;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD309FF0;
    aBlock[3] = &block_descriptor_186;
    v12 = _Block_copy(aBlock);
    sub_1BE048964();
    v13 = a2;

    [v8 accountsWithCompletion_];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD309B84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a5;
  v46 = a6;
  v44 = a1;
  v9 = sub_1BE051F54();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04D214();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v42 = a4;
    v43 = a3;
    v22 = a2;
    sub_1BE04D184();
    v23 = a2;
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = v9;
      v27 = v26;
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1BD026000, v24, v25, "error loading accounts info: %@", v27, 0xCu);
      sub_1BD0DE53C(v28, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v28, -1, -1);
      v31 = v27;
      v9 = v41;
      MEMORY[0x1BFB45F20](v31, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v21, v17);
    a4 = v42;
    a3 = v43;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v32 = sub_1BE052D54();
  v33 = swift_allocObject();
  v34 = v44;
  v35 = v45;
  v33[2] = a3;
  v33[3] = v34;
  v33[4] = a4;
  v33[5] = v35;
  v36 = v46;
  v33[6] = v46;
  aBlock[4] = sub_1BD3147AC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_192;
  v37 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  v38 = v36;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v16, v12, v37);
  _Block_release(v37);

  (*(v49 + 8))(v12, v9);
  return (*(v47 + 8))(v16, v48);
}

void sub_1BD30A004(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = sub_1BD30C28C(), v13, v14))
  {
    v15 = [objc_opt_self() sharedInstance];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 accountIdentifier];
      v18 = swift_allocObject();
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v20 = swift_allocObject();
      v20[2] = v18;
      v20[3] = a3;
      v20[4] = a4;
      v20[5] = a2;
      aBlock[4] = sub_1BD3146FC;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD30A6F0;
      aBlock[3] = &block_descriptor_173;
      v21 = _Block_copy(aBlock);
      sub_1BE048964();
      v22 = a2;

      [v16 accountUsersForAccountWithIdentifier:v17 completion:v21];
      _Block_release(v21);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BE04D184();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "no card account", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    a3(a2, 0);
  }
}

uint64_t sub_1BD30A304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v9 = sub_1BE051F54();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v24 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v18 = v23;
  v17[6] = v23;
  aBlock[4] = sub_1BD314708;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_179;
  v19 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  v20 = v18;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v21 = v24;
  MEMORY[0x1BFB3FDF0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v26 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v25);
}

uint64_t sub_1BD30A5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = objc_allocWithZone(MEMORY[0x1E69B8450]);
      sub_1BD0E5E8C(0, &qword_1EBD41C18);
      sub_1BD214890(&qword_1EBD41C20, &qword_1EBD41C18);
      v10 = sub_1BE052A24();
      v11 = [v9 initWithAccountUsers_];

      v12 = *&v8[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection];
      *&v8[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection] = v11;
    }
  }

  return a3(a5, 0);
}

void sub_1BD30A70C(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUserCollection);
    v14 = Strong;
    v15 = v13;

    if (v13)
    {
      v16 = [v15 currentAccountUser];

      if (v16)
      {
        swift_beginAccess();
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          v18 = v17;
          v19 = sub_1BD30C28C();

          if (v19)
          {
            v20 = [objc_opt_self() sharedInstance];
            if (v20)
            {
              v21 = v20;
              v22 = [v19 accountIdentifier];
              v23 = swift_allocObject();
              swift_beginAccess();
              v24 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v25 = swift_allocObject();
              v25[2] = v23;
              v25[3] = v19;
              v25[4] = v16;
              v25[5] = a3;
              v25[6] = a4;
              v25[7] = a2;
              aBlock[4] = sub_1BD3146D8;
              aBlock[5] = v25;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1BD30AEC0;
              aBlock[3] = &block_descriptor_160;
              v26 = _Block_copy(aBlock);
              v27 = v19;
              v28 = v16;
              sub_1BE048964();
              v29 = a2;

              [v21 physicalCardsForAccountWithIdentifier:v22 completion:v26];
              _Block_release(v26);
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }
      }
    }
  }

  sub_1BE04D184();
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1BD026000, v30, v31, "no accountUserCollection or card account", v32, 2u);
    MEMORY[0x1BFB45F20](v32, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  a3(a2, 0);
}

uint64_t sub_1BD30AA88(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v29 = a6;
  v30 = a7;
  v28 = a5;
  v31 = sub_1BE051F54();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v32 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  v19 = v29;
  v18[6] = v28;
  v18[7] = v19;
  v20 = v30;
  v18[8] = v30;
  aBlock[4] = sub_1BD3146E8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_166;
  v21 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  v22 = v20;
  sub_1BE048964();
  v23 = a3;
  v24 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v25 = v31;
  sub_1BE053664();
  v26 = v32;
  MEMORY[0x1BFB3FDF0](0, v17, v13, v21);
  _Block_release(v21);

  (*(v35 + 8))(v13, v25);
  return (*(v33 + 8))(v17, v34);
}

uint64_t sub_1BD30AD68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, void), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [objc_opt_self() sharedInstance];
    if (a4)
    {
      sub_1BD0E5E8C(0, &qword_1EBD41C08);
      sub_1BD214890(&qword_1EBD41C10, &qword_1EBD41C08);
      a4 = sub_1BE052A24();
    }

    v15 = [objc_allocWithZone(PKPhysicalCardController) initWithAccountService:v14 paymentPass:0 account:a2 accountUser:a3 physicalCards:a4];

    v16 = *&v13[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController];
    *&v13[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController] = v15;
  }

  return a5(a7, 0);
}

uint64_t sub_1BD30AEDC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, a3);
    sub_1BD214890(a5, a3);
    v5 = sub_1BE052A34();
  }

  sub_1BE048964();
  v6(v5);
}

void sub_1BD30AF90(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = sub_1BD30C28C(), v8, v9))
  {
    v10 = [objc_opt_self() sharedInstance];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 accountIdentifier];
      v13 = swift_allocObject();
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v15 = swift_allocObject();
      v15[2] = v13;
      v15[3] = a3;
      v15[4] = a4;
      v15[5] = a2;
      v18[4] = sub_1BD3146C0;
      v18[5] = v15;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1BD30B550;
      v18[3] = &block_descriptor_147;
      v16 = _Block_copy(v18);
      sub_1BE048964();
      v17 = a2;

      [v11 scheduledPaymentsWithAccountIdentifier:v12 includeFailedRecurringPayments:1 completion:v16];
      _Block_release(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a3(a2, 0);
  }
}

uint64_t sub_1BD30B184(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v39 = a3;
  v40 = a5;
  v38 = a4;
  v8 = sub_1BE051F54();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  v14 = *(v13 - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v15);
  v41 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v18;
  if (a1)
  {
    v35 = v14;
    v36 = v12;
    v37 = v9;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v33 = a6;
      v34 = v8;
      a6 = 0;
      v8 = &selRef_initWithVerificationController_fieldsModel_;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1BFB40900](a6, a1, v16);
        }

        else
        {
          if (a6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v20 = *(a1 + 8 * a6 + 32);
        }

        v21 = v20;
        v22 = (a6 + 1);
        if (__OFADD__(a6, 1))
        {
          break;
        }

        if ([v20 isRecurring])
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++a6;
        if (v22 == i)
        {
          v23 = aBlock[0];
          a6 = v33;
          v8 = v34;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v12 = v36;
    v9 = v37;
    v14 = v35;
  }

  else
  {
    v23 = 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v24 = sub_1BE052D54();
  v25 = swift_allocObject();
  v26 = v38;
  v25[2] = v39;
  v25[3] = v23;
  v27 = v40;
  v25[4] = v26;
  v25[5] = v27;
  v25[6] = a6;
  aBlock[4] = sub_1BD3146CC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_153;
  v28 = a6;
  v29 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();
  v30 = v28;

  v31 = v41;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v31, v12, v29);
  _Block_release(v29);

  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v31, v42);
}

uint64_t sub_1BD30B564(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, a4);
    v5 = sub_1BE052744();
  }

  sub_1BE048964();
  v7 = a3;
  v6(v5, a3);
}

void sub_1BD30B600(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = sub_1BD30C28C(), v10, v11))
  {
    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 accountIdentifier];
      v15 = swift_allocObject();
      v15[2] = a5;
      v15[3] = a3;
      v15[4] = a4;
      v15[5] = a2;
      aBlock[4] = sub_1BD314648;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD30A6F0;
      aBlock[3] = &block_descriptor_134_0;
      v16 = _Block_copy(aBlock);
      sub_1BE048964();
      sub_1BE048964();
      v17 = a2;

      [v13 accountUsersForAccountWithIdentifier:v14 completion:v16];
      _Block_release(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a3(a2, 0);
  }
}

uint64_t sub_1BD30B7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *a6) = a2;
    v11 = Strong;
    sub_1BE048C84();
  }

  return a3(a5, 0);
}

void sub_1BD30B850(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_paymentDataProvider);

    v12 = swift_allocObject();
    v12[2] = a5;
    v12[3] = a3;
    v12[4] = a4;
    v12[5] = a2;
    aBlock[4] = sub_1BD3145EC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD30BE08;
    aBlock[3] = &block_descriptor_122;
    v13 = _Block_copy(aBlock);
    sub_1BE048964();
    sub_1BE048964();
    v14 = a2;

    [v11 familyMembersWithCompletion_];
    _Block_release(v13);
  }
}

uint64_t sub_1BD30B990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v27 = a5;
  v28 = a7;
  v26 = a3;
  v11 = sub_1BE051F54();
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v15 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v29 = sub_1BE052D54();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a1;
  v20 = v27;
  v19[4] = v26;
  v19[5] = a4;
  v19[6] = v20;
  aBlock[4] = v28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v30;
  v21 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  v22 = v20;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v23 = v29;
  MEMORY[0x1BFB3FDF0](0, v18, v14, v21);
  _Block_release(v21);

  (*(v32 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v31);
}

uint64_t sub_1BD30BC50(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v18 = MEMORY[0x1E69E7CC0];
      if (a2 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; Strong = v13)
      {
        v15 = Strong;
        v16 = a5;
        v17 = a3;
        v10 = 0;
        a3 = (a2 & 0xC000000000000001);
        while (1)
        {
          if (a3)
          {
            Strong = MEMORY[0x1BFB40900](v10, a2);
          }

          else
          {
            if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            Strong = *(a2 + 8 * v10 + 32);
          }

          v11 = Strong;
          a5 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if ([Strong status])
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            Strong = sub_1BE0538D4();
          }

          else
          {
          }

          ++v10;
          if (a5 == i)
          {
            a3 = v17;
            v12 = v18;
            a5 = v16;
            Strong = v15;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v13 = Strong;
        i = sub_1BE053704();
      }

      v12 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
    *&Strong[OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_familyMembers] = v12;
  }

  return a3(a5, 0);
}

uint64_t sub_1BD30BE08(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C28);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v3(v2);
}

uint64_t sub_1BD30BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  aBlock[4] = sub_1BD3145E4;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_116;
  v16 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

void sub_1BD30C110()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD30C390();
  }
}

void *sub_1BD30C164()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 type] == 4 && objc_msgSend(v5, sel_state) != 4)
        {

          return v5;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_15:
  }

  return 0;
}

void *sub_1BD30C28C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 type] == 1)
        {

          return v5;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_14:
  }

  return 0;
}

uint64_t sub_1BD30C390()
{
  if (PKIsPhone())
  {
    sub_1BD30E87C(v22);
    v1 = sub_1BD1D8694(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1BD1D8694((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[56 * v3];
    v5 = v22[1];
    *(v4 + 2) = v22[0];
    *(v4 + 3) = v5;
    *(v4 + 4) = v22[2];
    *(v4 + 10) = v23;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD310F80(v24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1BD1D8694(0, *(v1 + 2) + 1, 1, v1);
  }

  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v1 = sub_1BD1D8694((v6 > 1), v7 + 1, 1, v1);
  }

  *(v1 + 2) = v7 + 1;
  v8 = &v1[56 * v7];
  v9 = v24[0];
  v10 = v24[1];
  v11 = v24[2];
  *(v8 + 10) = v25;
  *(v8 + 3) = v10;
  *(v8 + 4) = v11;
  *(v8 + 2) = v9;
  v12 = sub_1BD30C28C();
  if (v12)
  {
    v13 = v12;
    if ([objc_opt_self() canInviteAccountUserWithAccount_])
    {
      sub_1BD312178(v26);
      v15 = *(v1 + 2);
      v14 = *(v1 + 3);
      if (v15 >= v14 >> 1)
      {
        v1 = sub_1BD1D8694((v14 > 1), v15 + 1, 1, v1);
      }

      *(v1 + 2) = v15 + 1;
      v16 = &v1[56 * v15];
      v17 = v26[0];
      v18 = v26[1];
      v19 = v26[2];
      *(v16 + 10) = v27;
      *(v16 + 3) = v18;
      *(v16 + 4) = v19;
      *(v16 + 2) = v17;
    }

    else
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v0;
  return sub_1BE04D8C4();
}

id sub_1BD30C5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v31 - v11;
  v13 = *MEMORY[0x1E69B80B0];
  v14 = *(v4 + 104);
  v14(&v31 - v11, v13, v3, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v31 = v18;
    v32 = v17;

    v19 = *(v4 + 8);
    v19(v12, v3);
    (v14)(v7, v13, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;

      v19(v7, v3);
      v25 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v26 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v27 = v26;
      v28 = sub_1BD313F8C();
      v29 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v34 = 0;
      *a1 = 0xD000000000000012;
      *(a1 + 8) = 0x80000001BE123780;
      v30 = v31;
      *(a1 + 16) = v32;
      *(a1 + 24) = v30;
      *(a1 + 32) = v21;
      *(a1 + 40) = v23;
      *(a1 + 48) = v25;
      *(a1 + 56) = v24;
      *(a1 + 64) = v26;
      *(a1 + 72) = v28;
      *(a1 + 80) = xmmword_1BE0CB9B0;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v33;
      *(a1 + 100) = *&v33[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD31457C;
      *(a1 + 128) = v29;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD30C854()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
LABEL_25:
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  if (!v2)
  {
LABEL_15:

    return 0;
  }

  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ([v4 type] == 4 && objc_msgSend(v5, sel_state) != 4)
    {
      break;
    }

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_15;
    }
  }

  v7 = [objc_allocWithZone(PKAccountViewInterfaceConfiguration) init];
  [v7 setAccount_];
  result = [v5 savingsDetails];
  if (result)
  {
    v9 = result;
    v10 = [result fccStepUpDetails];

    if (v10 && (v11 = [v10 thresholdExceeded], v10, (v11 & 1) != 0))
    {
      v12 = 11;
    }

    else
    {
      v12 = 0;
    }

    [v7 setDestination_];
    v13 = [objc_opt_self() initialAccountViewControllerWithConfiguration_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD30CA54()
{
  v1 = OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager____lazy_storage___percentFormatter);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v5 setNumberStyle_];
    [v5 setMinimumFractionDigits_];
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    v6 = sub_1BE053054();
    [v5 setMultiplier_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1BD30CB34(uint64_t a1@<X8>)
{
  v69 = sub_1BE04BD74();
  v3 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v4);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v61 - v16;
  v18 = sub_1BD30C28C();
  v67 = v1;
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 redeemRewardsFeatureDescriptor];

  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = [v20 productForFeature_];

  if (!v21)
  {
LABEL_11:
    v66 = 0;
    goto LABEL_13;
  }

  v70 = sub_1BE052434();
  v71 = v22;
  sub_1BE048C84();
  v23 = v21;
  sub_1BE0537C4();
  v24 = [v23 clientInfo];
  if (v24)
  {
    v25 = v24;
    v66 = v23;

    v26 = sub_1BE052244();

    if (*(v26 + 16))
    {
      v27 = sub_1BD149040(v72);
      if (v28)
      {
        sub_1BD038CD0(*(v26 + 56) + 32 * v27, &v73);
        sub_1BD149CE8(v72);

        if (*(&v74 + 1))
        {
          sub_1BD0E5E8C(0, &qword_1EBD38840);
          if (swift_dynamicCast())
          {
            v29 = v72[0];
            v30 = sub_1BD30CA54();
            v31 = [v30 stringFromNumber_];

            v65 = v29;
            if (v31)
            {
              v32 = sub_1BE052434();
              v63 = v33;
              v64 = v32;

              v62 = "EFITS_SAVINGS_SET_UP_ACTION";
              v34 = *MEMORY[0x1E69B80B0];
              v35 = v3;
              v36 = v29;
              v37 = *(v3 + 104);
              v38 = v69;
              v37(v17, v34, v69);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
              v39 = swift_allocObject();
              *(v39 + 16) = xmmword_1BE0B69E0;
              *(v39 + 56) = MEMORY[0x1E69E6158];
              *(v39 + 64) = sub_1BD110550();
              v40 = v63;
              *(v39 + 32) = v64;
              *(v39 + 40) = v40;
              v41 = sub_1BE04B714();
              v63 = v42;
              v64 = v41;

              v13 = v17;
              goto LABEL_18;
            }

LABEL_16:
            v34 = *MEMORY[0x1E69B80B0];
            v35 = v3;
            v37 = *(v3 + 104);
            v38 = v69;
            v37(v13, v34, v69);
            v43 = PKPassKitBundle();
            if (!v43)
            {
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            v44 = v43;
            v45 = sub_1BE04B6F4();
            v63 = v46;
            v64 = v45;

LABEL_18:
            v47 = *(v35 + 8);
            v47(v13, v38);
            v37(v9, v34, v38);
            v48 = PKPassKitBundle();
            if (v48)
            {
              v49 = v48;
              v69 = sub_1BE04B6F4();
              v62 = v50;

              v47(v9, v38);
              v51 = sub_1BD313F8C();
              v52 = v68;
              v37(v68, v34, v38);
              v53 = PKPassKitBundle();
              if (v53)
              {
                v54 = v53;
                v55 = sub_1BE04B6F4();
                v57 = v56;

                v47(v52, v38);
                v58 = swift_allocObject();
                swift_unknownObjectWeakInit();
                LOBYTE(v73) = 0;
                *a1 = 0xD000000000000013;
                *(a1 + 8) = 0x80000001BE123700;
                v59 = v62;
                *(a1 + 16) = v69;
                *(a1 + 24) = v59;
                v60 = v63;
                *(a1 + 32) = v64;
                *(a1 + 40) = v60;
                *(a1 + 48) = 0;
                *(a1 + 56) = 0;
                *(a1 + 64) = 0;
                *(a1 + 72) = v51;
                *(a1 + 80) = xmmword_1BE0CB9B0;
                *(a1 + 96) = 0;
                *(a1 + 97) = v72[0];
                *(a1 + 100) = *(v72 + 3);
                *(a1 + 104) = v55;
                *(a1 + 112) = v57;
                *(a1 + 120) = sub_1BD31454C;
                *(a1 + 128) = v58;
                return;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_24;
          }

LABEL_15:
          v65 = 0;
          goto LABEL_16;
        }

LABEL_14:
        sub_1BD0DE53C(&v73, &qword_1EBD3EC90);
        goto LABEL_15;
      }
    }

    sub_1BD149CE8(v72);
LABEL_13:
    v73 = 0u;
    v74 = 0u;
    goto LABEL_14;
  }

LABEL_26:
  __break(1u);
}

void sub_1BD30D15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_27:
      v2 = sub_1BE053704();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v2)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if ([v4 type] == 1)
        {
          break;
        }

        ++v3;
        if (v6 == v2)
        {
          goto LABEL_14;
        }
      }

      v7 = [v5 redeemRewardsFeatureDescriptor];

      if (!v7)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v8 = [v7 productForFeature_];

      if (!v8)
      {
        return;
      }

      v9 = [objc_opt_self() sharedService];
      v10 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

      v11 = [v8 onboardingItems];
      if (!v11)
      {
        goto LABEL_34;
      }

      v12 = v11;
      sub_1BD0E5E8C(0, &unk_1EBD41C48);
      v13 = sub_1BE052744();

      if (v13 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_21;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFB40900](0, v13);
          goto LABEL_24;
        }

        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v13 + 32);
LABEL_24:
          v15 = v14;
LABEL_30:

          v16 = objc_allocWithZone(PKFeatureOnBoardingViewController);
          v17 = v8;
          [v16 initWithParentFlowController:0 setupDelegate:0 setupContext:0 onboardingContext:0 featureIdentifier:5 provisioningController:v10 paymentSetupProduct:v17 currentPage:v15];

          return;
        }

        __break(1u);
        goto LABEL_33;
      }

      v15 = 0;
      goto LABEL_30;
    }

LABEL_14:
  }
}

id sub_1BD30D414@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v35 - v14;
  v16 = *MEMORY[0x1E69B80B0];
  v17 = *(v3 + 104);
  v17(&v35 - v14, v16, v2, v13);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = result;
  v20 = sub_1BE04B6F4();
  v40 = v21;
  v41 = v20;

  v22 = *(v3 + 8);
  v22(v15, v2);
  (v17)(v10, v16, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = result;
  v24 = sub_1BE04B6F4();
  v38 = v25;
  v39 = v24;

  v22(v10, v2);
  v37 = sub_1BD314128();
  v36 = [objc_opt_self() blackColor];
  (v17)(v6, v16, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    v22(v6, v2);
    v30 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v43 = 0;
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001BE123640;
    v31 = v40;
    *(a1 + 16) = v41;
    *(a1 + 24) = v31;
    v32 = v38;
    *(a1 + 32) = v39;
    *(a1 + 40) = v32;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v34 = v36;
    v33 = v37;
    *(a1 + 64) = 0;
    *(a1 + 72) = v33;
    *(a1 + 80) = v34;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v42;
    *(a1 + 100) = *&v42[3];
    *(a1 + 104) = v27;
    *(a1 + 112) = v29;
    *(a1 + 120) = sub_1BD314544;
    *(a1 + 128) = v30;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD30D760(void (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1BE048964();
    v7 = sub_1BD30C28C();
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() sharedInstance];
      if (!v9)
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = v9;
      v11 = [v8 associatedPassUniqueID];
      v12 = [v10 passWithUniqueID_];

      if (v12)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
          v15 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
          v16 = [objc_opt_self() sharedInstance];
          if (v16)
          {
            v17 = v16;
            v18 = objc_allocWithZone(PKRewardsHubViewController);
            v19 = v15;
            v20 = v8;
            v21 = [v18 initWithAccount:v20 transactionSourceCollection:v19 accountService:v17];

            v22 = swift_allocObject();
            v22[2] = sub_1BD1B6F54;
            v22[3] = v6;
            v22[4] = v21;
            aBlock[4] = sub_1BD314814;
            aBlock[5] = v22;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3F08C0;
            aBlock[3] = &block_descriptor_81;
            v23 = _Block_copy(aBlock);
            sub_1BE048964();
            v24 = v21;

            [v24 preflightWithCompletion_];

            _Block_release(v23);
            v5 = v24;
LABEL_12:

            return;
          }

LABEL_15:
          __break(1u);
          return;
        }
      }

      else
      {
        v12 = v8;
      }
    }

    a1(0);

    goto LABEL_12;
  }
}

void sub_1BD30DA68(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BD30C28C();
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = [v8 creditDetails];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v10 rewardsDestination];

  if (v11)
  {
    v12 = sub_1BD30DD1C(v11);
    v30 = v13;
    v31 = v12;
  }

  else
  {
LABEL_5:
    v30 = 0;
    v31 = 0;
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69B80B0], v3);
  v14 = PKPassKitBundle();
  if (v14)
  {
    v15 = v14;
    v29 = 0x80000001BE1234E0;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v4 + 8))(v7, v3);
    v20 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
    v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
    v21 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
    sub_1BE048C84();
    v22 = v21;
    v23 = sub_1BD314128();
    v24 = [objc_opt_self() blackColor];
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = 0;
    *a1 = 0xD000000000000014;
    *(a1 + 8) = v29;
    *(a1 + 16) = v16;
    v26 = v30;
    v27 = v31;
    *(a1 + 24) = v18;
    *(a1 + 32) = v27;
    *(a1 + 40) = v26;
    *(a1 + 48) = v20;
    *(a1 + 56) = v19;
    *(a1 + 64) = v21;
    *(a1 + 72) = v23;
    *(a1 + 80) = v24;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v32;
    *(a1 + 100) = *&v32[3];
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = sub_1BD31453C;
    *(a1 + 128) = v25;
    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

id sub_1BD30DD1C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - v13;
  if (a1 == 3)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B80B0], v2, v14);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v15 = v6;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v10, *MEMORY[0x1E69B80B0], v2, v14);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v15 = v10;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    return 0;
  }

  (*(v3 + 104))(&v19 - v13, *MEMORY[0x1E69B80B0], v2, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
LABEL_10:

    (*(v3 + 8))(v15, v2);
    return v18;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1BD30DFB4(void (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1BE048964();
    v7 = sub_1BD30C28C();
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() sharedInstance];
      if (!v9)
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = v9;
      v11 = [v8 associatedPassUniqueID];
      v12 = [v10 passWithUniqueID_];

      if (v12)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
          v15 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
          v16 = [objc_opt_self() sharedInstance];
          if (v16)
          {
            v17 = v16;
            v18 = objc_allocWithZone(PKRewardsHubViewController);
            v19 = v15;
            v20 = v8;
            v21 = [v18 initWithAccount:v20 transactionSourceCollection:v19 accountService:v17];

            v22 = swift_allocObject();
            v22[2] = sub_1BD1B6F54;
            v22[3] = v6;
            v22[4] = v21;
            aBlock[4] = sub_1BD314814;
            aBlock[5] = v22;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3F08C0;
            aBlock[3] = &block_descriptor_70;
            v23 = _Block_copy(aBlock);
            sub_1BE048964();
            v24 = v21;

            [v24 preflightWithCompletion_];

            _Block_release(v23);
            v5 = v24;
LABEL_12:

            return;
          }

LABEL_15:
          __break(1u);
          return;
        }
      }

      else
      {
        v12 = v8;
      }
    }

    a1(0);

    goto LABEL_12;
  }
}

id sub_1BD30E2BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v27 - v10;
  v12 = *MEMORY[0x1E69B80B0];
  v13 = *(v3 + 104);
  v13(&v27 - v10, v12, v2, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v28 = v17;
    v29 = v16;

    v18 = *(v3 + 8);
    v18(v11, v2);
    (v13)(v6, v12, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
      v22 = v21;

      v18(v6, v2);
      v23 = sub_1BD314128();
      v24 = [objc_opt_self() blackColor];
      v25 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v31 = 0;
      *a1 = 0x4973647261776572;
      *(a1 + 8) = 0xEB000000006D6574;
      v26 = v28;
      *(a1 + 16) = v29;
      *(a1 + 24) = v26;
      *(a1 + 32) = v20;
      *(a1 + 40) = v22;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = v23;
      *(a1 + 80) = v24;
      *(a1 + 88) = 4;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v30;
      *(a1 + 100) = *&v30[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD314504;
      *(a1 + 128) = v25;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD30E574(void (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1BE048964();
    v7 = sub_1BD30C28C();
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() sharedInstance];
      if (!v9)
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = v9;
      v11 = [v8 associatedPassUniqueID];
      v12 = [v10 passWithUniqueID_];

      if (v12)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
          v15 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
          v16 = [objc_opt_self() sharedInstance];
          if (v16)
          {
            v17 = v16;
            v18 = objc_allocWithZone(PKRewardsHubViewController);
            v19 = v15;
            v20 = v8;
            v21 = [v18 initWithAccount:v20 transactionSourceCollection:v19 accountService:v17];

            v22 = swift_allocObject();
            v22[2] = sub_1BD1B6CB0;
            v22[3] = v6;
            v22[4] = v21;
            aBlock[4] = sub_1BD31450C;
            aBlock[5] = v22;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3F08C0;
            aBlock[3] = &block_descriptor_59;
            v23 = _Block_copy(aBlock);
            sub_1BE048964();
            v24 = v21;

            [v24 preflightWithCompletion_];

            _Block_release(v23);
            v5 = v24;
LABEL_12:

            return;
          }

LABEL_15:
          __break(1u);
          return;
        }
      }

      else
      {
        v12 = v8;
      }
    }

    a1(0);

    goto LABEL_12;
  }
}

uint64_t sub_1BD30E87C@<X0>(void *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v84 = &v73 - v9;
  v10 = sub_1BD30C28C();
  v83 = a1;
  if (!v10 || (v11 = v10, v12 = [v10 redeemRewardsFeatureDescriptor], v11, !v12))
  {
    v25 = MEMORY[0x1E69E7CC0];
    v26 = sub_1BD30C28C();
    if (!v26)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v81 = v6;
  v82 = v2;
  v13 = [v12 supportedDestinations];
  if (!v13)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v13;
  v15 = v3;
  v16 = sub_1BE052744();

  v17 = PKAccountRewardRedemptionTypeToString();
  if (v17)
  {
    v18 = v17;
    v19 = sub_1BE052434();
    v21 = v20;

    *&v107[0] = v19;
    *(&v107[0] + 1) = v21;
    MEMORY[0x1EEE9AC00](v22, v23);
    *(&v73 - 2) = v107;
    LOBYTE(v19) = sub_1BD2FF084(sub_1BD20DFC4, (&v73 - 2), v16);

    if (v19)
    {
      v24 = sub_1BD30C164();
      if (v24)
      {

        sub_1BD30C5B0(v93);
      }

      else
      {
        sub_1BD30CB34(v93);
      }

      v79 = v102;
      v80 = v101;
      v77 = v98;
      v78 = v99;
      v75 = v97;
      v76 = v96;
      v73 = v95;
      v74 = v94;
      v27 = v93[0];
      v28 = v93[1];
      LOBYTE(v107[0]) = v100;
      v25 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v30 = *(v25 + 2);
      v29 = *(v25 + 3);
      if (v30 >= v29 >> 1)
      {
        v25 = sub_1BD1D8574((v29 > 1), v30 + 1, 1, v25);
      }

      *(v25 + 2) = v30 + 1;
      v31 = &v25[136 * v30];
      *(v31 + 4) = v27;
      *(v31 + 5) = v28;
      v32 = v73;
      *(v31 + 3) = v74;
      *(v31 + 4) = v32;
      v33 = v75;
      *(v31 + 5) = v76;
      *(v31 + 6) = v33;
      v34 = v78;
      *(v31 + 14) = v77;
      *(v31 + 15) = v34;
      v31[128] = v107[0];
      v35 = v80;
      *(v31 + 152) = v79;
      *(v31 + 136) = v35;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    v3 = v15;
    v6 = v81;
    v2 = v82;
    v26 = sub_1BD30C28C();
    if (!v26)
    {
      goto LABEL_18;
    }

LABEL_16:
    v36 = v26;
    v37 = [v26 creditDetails];

    if (!v37)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v38 = [v37 rewardsDestination];

    if (!v38)
    {
      sub_1BD30D414(v103);
      goto LABEL_20;
    }

LABEL_18:
    sub_1BD30DA68(v103);
LABEL_20:
    v86 = v103[0];
    v87 = v103[1];
    v88 = v103[2];
    v89 = v103[3];
    v90 = v103[4];
    v91 = v103[5];
    v92[0] = v104;
    *&v92[8] = v105;
    *&v92[24] = v106;
    sub_1BD31435C(&v86, v107);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1BD1D8574(0, *(v25 + 2) + 1, 1, v25);
    }

    v40 = *(v25 + 2);
    v39 = *(v25 + 3);
    if (v40 >= v39 >> 1)
    {
      v25 = sub_1BD1D8574((v39 > 1), v40 + 1, 1, v25);
    }

    *(v25 + 2) = v40 + 1;
    v41 = &v25[136 * v40];
    *(v41 + 2) = v86;
    v42 = v87;
    v43 = v88;
    v44 = v90;
    *(v41 + 5) = v89;
    *(v41 + 6) = v44;
    *(v41 + 3) = v42;
    *(v41 + 4) = v43;
    v45 = v91;
    v46 = *v92;
    v47 = *&v92[16];
    *(v41 + 20) = *&v92[32];
    *(v41 + 8) = v46;
    *(v41 + 9) = v47;
    *(v41 + 7) = v45;
    sub_1BD30E2BC(v107);
    v49 = *(v25 + 2);
    v48 = *(v25 + 3);
    if (v49 >= v48 >> 1)
    {
      v25 = sub_1BD1D8574((v48 > 1), v49 + 1, 1, v25);
    }

    *(v25 + 2) = v49 + 1;
    v50 = &v25[136 * v49];
    *(v50 + 2) = v107[0];
    v51 = v107[1];
    v52 = v107[2];
    v53 = v107[4];
    *(v50 + 5) = v107[3];
    *(v50 + 6) = v53;
    *(v50 + 3) = v51;
    *(v50 + 4) = v52;
    v54 = v107[5];
    v55 = v107[6];
    v56 = v107[7];
    *(v50 + 20) = v108;
    *(v50 + 8) = v55;
    *(v50 + 9) = v56;
    *(v50 + 7) = v54;
    v85 = v25;
    sub_1BE048C84();
    sub_1BD312F2C(&v85);

    v82 = v85;
    v57 = *MEMORY[0x1E69B80B0];
    v58 = v3;
    v59 = *(v3 + 104);
    v60 = v84;
    v59(v84, v57, v2);
    v61 = PKPassKitBundle();
    if (v61)
    {
      v62 = v61;
      v81 = sub_1BE04B6F4();
      *&v80 = v63;

      v64 = *(v58 + 8);
      v64(v60, v2);
      v59(v6, v57, v2);
      v65 = PKPassKitBundle();
      if (v65)
      {
        v66 = v65;
        v67 = sub_1BE04B6F4();
        v69 = v68;

        sub_1BD3143B8(&v86);
        result = (v64)(v6, v2);
        v71 = v83;
        *v83 = 0xD000000000000010;
        v71[1] = 0x80000001BE123430;
        v72 = v80;
        v71[2] = v81;
        v71[3] = v72;
        v71[4] = v67;
        v71[5] = v69;
        v71[6] = v82;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_33:
  __break(1u);

  __break(1u);
  return result;
}

id sub_1BD30EEE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v35 - v13;
  v15 = *MEMORY[0x1E69B80B0];
  v16 = *(v3 + 104);
  v16(&v35 - v13, v15, v2, v12);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = result;
  v19 = sub_1BE04B6F4();
  v39 = v20;
  v40 = v19;

  v21 = *(v3 + 8);
  v21(v14, v2);
  (v16)(v9, v15, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v22 = result;
  v23 = sub_1BE04B6F4();
  v37 = v24;
  v38 = v23;

  v21(v9, v2);
  v25 = sub_1BE052404();
  v36 = PKUIImageNamed(v25);

  v26 = v41;
  (v16)(v41, v15, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    v21(v26, v2);
    v31 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v43 = 0;
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001BE1233A0;
    v32 = v39;
    *(a1 + 16) = v40;
    *(a1 + 24) = v32;
    v33 = v37;
    *(a1 + 32) = v38;
    *(a1 + 40) = v33;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v34 = v36;
    *(a1 + 64) = 0;
    *(a1 + 72) = v34;
    *(a1 + 80) = xmmword_1BE0CB9B0;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v42;
    *(a1 + 100) = *&v42[3];
    *(a1 + 104) = v28;
    *(a1 + 112) = v30;
    *(a1 + 120) = sub_1BD3144D4;
    *(a1 + 128) = v31;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1BD30F22C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 type] == 1)
        {

          v8 = [objc_opt_self() sharedInstance];
          v9 = [objc_opt_self() sharedService];
          v10 = [objc_allocWithZone(PKOrderPhysicalCardController) initWithAccountService:v8 paymentWebService:v9 paymentPass:0 account:v5 accountUser:0 orderReason:0 context:0 currentPhysicalCard:0];

          v11 = [objc_allocWithZone(PKOrderPhysicalCardViewController) initWithController_];
          return v11;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return 0;
}

void sub_1BD30F3E8(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v32 - v11;
  v13 = *MEMORY[0x1E69B80B0];
  v14 = *(v4 + 104);
  v14(&v32 - v11, v13, v3, v10);
  v15 = PKPassKitBundle();
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE04B6F4();
    v32 = v18;
    v33 = v17;

    v19 = *(v4 + 8);
    v19(v12, v3);
    (v14)(v7, v13, v3);
    v20 = PKPassKitBundle();
    if (v20)
    {
      v21 = v20;
      v22 = sub_1BE04B6F4();
      v24 = v23;

      v19(v7, v3);
      v26 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v25 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v27 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v28 = v27;
      v29 = sub_1BE052404();
      v30 = PKUIImageNamed(v29);

      v35 = 0;
      *a1 = 0xD000000000000017;
      *(a1 + 8) = 0x80000001BE123320;
      v31 = v32;
      *(a1 + 16) = v33;
      *(a1 + 24) = v31;
      *(a1 + 32) = v22;
      *(a1 + 40) = v24;
      *(a1 + 48) = v26;
      *(a1 + 56) = v25;
      *(a1 + 64) = v27;
      *(a1 + 72) = v30;
      *(a1 + 80) = xmmword_1BE0CB9B0;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v34;
      *(a1 + 100) = *&v34[3];
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD30F68C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v36 - v14;
  v16 = *MEMORY[0x1E69B80B0];
  v17 = *(v3 + 104);
  v17(&v36 - v14, v16, v2, v13);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = result;
  v42 = v6;
  v20 = sub_1BE04B6F4();
  v40 = v21;
  v41 = v20;

  v22 = *(v3 + 8);
  v22(v15, v2);
  (v17)(v10, v16, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = result;
  v24 = sub_1BE04B6F4();
  v38 = v25;
  v39 = v24;

  v22(v10, v2);
  v37 = sub_1BD314128();
  v36 = [objc_opt_self() blackColor];
  v26 = v42;
  (v17)(v42, v16, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    v22(v26, v2);
    v31 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v44 = 0;
    *a1 = 0xD000000000000011;
    *(a1 + 8) = 0x80000001BE123290;
    v32 = v40;
    *(a1 + 16) = v41;
    *(a1 + 24) = v32;
    v33 = v38;
    *(a1 + 32) = v39;
    *(a1 + 40) = v33;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v35 = v36;
    v34 = v37;
    *(a1 + 64) = 0;
    *(a1 + 72) = v34;
    *(a1 + 80) = v35;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v43;
    *(a1 + 100) = *&v43[3];
    *(a1 + 104) = v28;
    *(a1 + 112) = v30;
    *(a1 + 120) = sub_1BD3144CC;
    *(a1 + 128) = v31;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD30F9D4(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD30FA44(a1);
  }
}

void sub_1BD30FA44(void (*a1)(void))
{
  v10 = sub_1BD30C28C();
  if (v10)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [objc_opt_self() sharedService];
    v4 = [objc_allocWithZone(PKAccountAutomaticPaymentsController) initWithAccountService:v2 paymentWebService:v3 account:v10 context:0];

    if (v4)
    {
      v5 = type metadata accessor for AccountAutomaticPaymentsViewController();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = 0;
      type metadata accessor for AccountAutomaticPaymentsModel(0);
      swift_allocObject();
      v7 = v4;
      AccountAutomaticPaymentsModel.init(controller:)(v7);
      *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model] = v8;
      v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt] = 0;
      v11.receiver = v6;
      v11.super_class = v5;
      v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
      a1();
    }

    else
    {
      (a1)(0);
    }
  }

  else
  {
    a1();
  }
}

id sub_1BD30FC08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v32 - v10;
  v12 = *MEMORY[0x1E69B80B0];
  v13 = *(v3 + 104);
  v13(&v32 - v10, v12, v2, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v35 = v17;
    v36 = v16;

    v18 = *(v3 + 8);
    v18(v11, v2);
    (v13)(v6, v12, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v34 = 0x80000001BE123210;
      v33 = sub_1BE04B6F4();
      v21 = v20;

      v18(v6, v2);
      v22 = *(v37 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v23 = *(v37 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v24 = *(v37 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v25 = v24;
      v26 = sub_1BD314128();
      v27 = [objc_opt_self() blackColor];
      v28 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v39 = 0;
      *a1 = 0xD000000000000017;
      v30 = v35;
      v29 = v36;
      *(a1 + 8) = v34;
      *(a1 + 16) = v29;
      v31 = v33;
      *(a1 + 24) = v30;
      *(a1 + 32) = v31;
      *(a1 + 40) = v21;
      *(a1 + 48) = v22;
      *(a1 + 56) = v23;
      *(a1 + 64) = v24;
      *(a1 + 72) = v26;
      *(a1 + 80) = v27;
      *(a1 + 88) = 4;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v38;
      *(a1 + 100) = *&v38[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD31449C;
      *(a1 + 128) = v28;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD30FF00()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
LABEL_24:
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  if (!v2)
  {
LABEL_14:

    return 0;
  }

  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v4 type] == 1)
    {
      break;
    }

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_14;
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments);
  if (!v7)
  {
    goto LABEL_26;
  }

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_18;
    }

LABEL_26:

    return 0;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    v9 = MEMORY[0x1BFB40900](0, v7);

    goto LABEL_21;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_21:
    v10 = [objc_opt_self() sharedService];
    v11 = objc_allocWithZone(PKCreditAccountPaymentDetailsViewController);
    v12 = v5;
    v13 = [v11 initWithAccount:v12 payment:v9 paymentWebService:v10 detailViewStyle:0];

    return v13;
  }

  __break(1u);
  return result;
}

id sub_1BD3100FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v35 - v14;
  v16 = *MEMORY[0x1E69B80B0];
  v17 = *(v3 + 104);
  v17(&v35 - v14, v16, v2, v13);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = result;
  v20 = sub_1BE04B6F4();
  v40 = v21;
  v41 = v20;

  v22 = *(v3 + 8);
  v22(v15, v2);
  (v17)(v10, v16, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = result;
  v24 = sub_1BE04B6F4();
  v38 = v25;
  v39 = v24;

  v22(v10, v2);
  v37 = sub_1BD314128();
  v36 = [objc_opt_self() blackColor];
  (v17)(v6, v16, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    v22(v6, v2);
    v30 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v43 = 0;
    *a1 = 0xD000000000000021;
    *(a1 + 8) = 0x80000001BE123180;
    v31 = v40;
    *(a1 + 16) = v41;
    *(a1 + 24) = v31;
    v32 = v38;
    *(a1 + 32) = v39;
    *(a1 + 40) = v32;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v34 = v36;
    v33 = v37;
    *(a1 + 64) = 0;
    *(a1 + 72) = v33;
    *(a1 + 80) = v34;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v42;
    *(a1 + 100) = *&v42[3];
    *(a1 + 104) = v27;
    *(a1 + 112) = v29;
    *(a1 + 120) = sub_1BD31447C;
    *(a1 + 128) = v30;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD31044C(int a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = sub_1BD30C28C();
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = v8;
  v10 = [v8 creditDetails];
  if (!v10)
  {
    __break(1u);
    goto LABEL_64;
  }

  v11 = v10;
  v12 = [v10 virtualCards];

  if (!v12)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_1BD0E5E8C(0, &qword_1EBD41C30);
  sub_1BD214890(&qword_1EBD41C38, &qword_1EBD41C30);
  v13 = sub_1BE052A34();

  v14 = sub_1BD960F14(v13);

  if (!v14)
  {
LABEL_32:

    goto LABEL_33;
  }

  v15 = [objc_opt_self() sharedInstance];
  if (!v15)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v16 = v15;
  v17 = [v9 associatedPassUniqueID];
  v18 = [v16 passWithUniqueID_];

  if (!v18)
  {

    goto LABEL_32;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19 || (v20 = *(v4 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController)) == 0)
  {

LABEL_33:
    a2(0);
    return;
  }

  v73 = v18;
  v74 = a1;
  v69 = v19;
  v21 = [v20 physicalCards];
  if (!v21)
  {
LABEL_66:
    __break(1u);
    return;
  }

  v22 = v21;
  sub_1BD0E5E8C(0, &qword_1EBD41C08);
  sub_1BD214890(&qword_1EBD41C10, &qword_1EBD41C08);
  v23 = sub_1BE052A34();

  v70 = a3;
  v71 = v14;
  v72 = a2;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1E69E7CD0];
    aBlock[0] = MEMORY[0x1E69E7CD0];
    sub_1BE0536B4();
    for (i = sub_1BE053744(); i; i = sub_1BE053744())
    {
      v75 = i;
      swift_dynamicCast();
      if ([v76 state] == 1 || objc_msgSend(v76, sel_state) == 2)
      {
        v34 = v76;
        v35 = v25[2];
        if (v25[3] <= v35)
        {
          sub_1BD2A81F0(v35 + 1);
        }

        v25 = aBlock[0];
        v23 = v76;
        v27 = sub_1BE053064();
        v29 = aBlock[0] + 56;
        v30 = -1 << *(aBlock[0] + 32);
        v31 = v27 & ~v30;
        v32 = v31 >> 6;
        if (((-1 << v31) & ~*(aBlock[0] + 56 + 8 * (v31 >> 6))) != 0)
        {
          v33 = __clz(__rbit64((-1 << v31) & ~*(aBlock[0] + 56 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v36 = 0;
          v37 = (63 - v30) >> 6;
          do
          {
            if (++v32 == v37 && (v36 & 1) != 0)
            {
              __break(1u);
              goto LABEL_59;
            }

            v38 = v32 == v37;
            if (v32 == v37)
            {
              v32 = 0;
            }

            v36 |= v38;
            v39 = *(v29 + 8 * v32);
          }

          while (v39 == -1);
          v33 = __clz(__rbit64(~v39)) + (v32 << 6);
        }

        *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        *(v25[6] + 8 * v33) = v34;
        ++v25[2];
      }

      else
      {
      }
    }

    LOBYTE(v40) = v74;
    goto LABEL_54;
  }

  v41 = *(v23 + 32);
  v66 = ((1 << v41) + 63) >> 6;
  v28 = 8 * v66;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_60;
  }

  while (2)
  {
    v65[1] = v65;
    MEMORY[0x1EEE9AC00](v24, v28);
    v67 = v65 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v67, v42);
    v68 = 0;
    v43 = 0;
    v44 = 1 << *(v23 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v40 = v45 & *(v23 + 56);
    v46 = (v44 + 63) >> 6;
    while (v40)
    {
      v47 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v48 = v47 | (v43 << 6);
      v49 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
LABEL_46:
      v52 = *(*(v23 + 48) + 8 * v48);
      if ([v52 v49[24]] == 1)
      {

LABEL_50:
        *&v67[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        if (__OFADD__(v68++, 1))
        {
          __break(1u);
LABEL_53:
          v25 = sub_1BD2AF0E8(v67, v66, v68, v23);
          goto LABEL_54;
        }
      }

      else
      {
        v53 = [v52 v49[24]];

        if (v53 == 2)
        {
          goto LABEL_50;
        }
      }
    }

    v50 = v43;
    LOBYTE(v40) = v74;
    v49 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
    while (1)
    {
      v43 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v43 >= v46)
      {
        goto LABEL_53;
      }

      v51 = *(v23 + 56 + 8 * v43);
      ++v50;
      if (v51)
      {
        v40 = (v51 - 1) & v51;
        v48 = __clz(__rbit64(v51)) | (v43 << 6);
        goto LABEL_46;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v64 = v28;
    sub_1BE048C84();
    if (swift_stdlib_isStackAllocationSafe())
    {

      v28 = v64;
      continue;
    }

    break;
  }

  v40 = swift_slowAlloc();
  v25 = sub_1BD313EEC(v40, v66, v23, sub_1BD3129B4, 0, sub_1BD2AF0E8);

  MEMORY[0x1BFB45F20](v40, -1, -1);
  LOBYTE(v40) = v74;
LABEL_54:
  v55 = sub_1BD961014(v25);

  v56 = v71;
  a2 = v72;
  if (!v55)
  {

    goto LABEL_33;
  }

  v57 = objc_allocWithZone(PKAccountCardNumbersPresenter);
  v58 = [v57 initWithVirtualCard:v56 physicalCard:v55 account:v9 peerPaymentAccount:0 pass:v69 context:0];
  v59 = *(v4 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountCardNumbersPresenter);
  *(v4 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountCardNumbersPresenter) = v58;
  v60 = v58;

  if (v60)
  {
    v61 = swift_allocObject();
    *(v61 + 16) = v40 & 1;
    v62 = v70;
    *(v61 + 24) = a2;
    *(v61 + 32) = v62;
    aBlock[4] = sub_1BD314468;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD20815C;
    aBlock[3] = &block_descriptor_55;
    v63 = _Block_copy(aBlock);
    sub_1BE048964();

    [v60 presentCardNumbersWithCompletion_];

    _Block_release(v63);
  }

  else
  {
  }
}

id sub_1BD310C18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v32 - v10;
  v12 = *MEMORY[0x1E69B80B0];
  v13 = *(v3 + 104);
  v13(&v32 - v10, v12, v2, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v33 = v17;
    v34 = v16;

    v18 = *(v3 + 8);
    v18(v11, v2);
    (v13)(v6, v12, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v32 = 0x80000001BE1230D0;
      v20 = sub_1BE04B6F4();
      v22 = v21;

      v18(v6, v2);
      v23 = *(v35 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
      v24 = *(v35 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
      v25 = *(v35 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
      sub_1BE048C84();
      v26 = v25;
      v27 = sub_1BD314128();
      v28 = [objc_opt_self() blackColor];
      v29 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      v37 = 0;
      *a1 = 0xD000000000000027;
      v30 = v33;
      v31 = v34;
      *(a1 + 8) = v32;
      *(a1 + 16) = v31;
      *(a1 + 24) = v30;
      *(a1 + 32) = v20;
      *(a1 + 40) = v22;
      *(a1 + 48) = v23;
      *(a1 + 56) = v24;
      *(a1 + 64) = v25;
      *(a1 + 72) = v27;
      *(a1 + 80) = v28;
      *(a1 + 88) = 4;
      *(a1 + 96) = 0;
      *(a1 + 97) = *v36;
      *(a1 + 100) = *&v36[3];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = sub_1BD314448;
      *(a1 + 128) = v29;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD310F08(void (*a1)(void), uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BD31044C(a4 & 1, a1, a2);
  }
}

uint64_t sub_1BD310F80@<X0>(void *a1@<X8>)
{
  v67 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v69 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_cardController);
  v7 = MEMORY[0x1E69E7CC0];
  v70 = v8;
  v68 = v3;
  if (!v6)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v12 = sub_1BD30C28C();
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v9 = v6;
  if ([v9 canRequestNewPhysicalCard] && (objc_msgSend(v9, sel_canReplacePhysicalCard) & 1) == 0)
  {
    sub_1BD30EEE0(v73);
  }

  else
  {
    if (([v9 hasPrimaryPhysicalCard] & 1) == 0)
    {
      v10 = [v9 unactivatedPhysicalCard];
      if (!v10)
      {

        v11 = MEMORY[0x1E69E7CC0];
        v12 = sub_1BD30C28C();
        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_14;
      }
    }

    sub_1BD30F3E8(v73);
  }

  v11 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1BD1D8574((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[136 * v14];
  v16 = v73[7];
  *(v15 + 8) = v73[6];
  *(v15 + 9) = v16;
  *(v15 + 20) = v74;
  v17 = v73[3];
  *(v15 + 4) = v73[2];
  *(v15 + 5) = v17;
  v18 = v73[5];
  *(v15 + 6) = v73[4];
  *(v15 + 7) = v18;
  v19 = v73[1];
  *(v15 + 2) = v73[0];
  *(v15 + 3) = v19;
  v2 = v70;
  v12 = sub_1BD30C28C();
  if (v12)
  {
LABEL_14:
    v20 = v12;
    if ([v12 supportsScheduleRecurringPayments])
    {
      if (*(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments))
      {
        v21 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_recurringPayments);
      }

      else
      {
        v21 = v7;
      }

      if (v21 >> 62)
      {
        v22 = sub_1BE053704();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();

      if (v22)
      {
        sub_1BD30FC08(v75);
      }

      else
      {
        sub_1BD30F68C(v75);
      }

      v65 = v84;
      v66 = v83;
      v24 = v80;
      v23 = v81;
      v63 = v79;
      v64 = v78;
      v61 = v77;
      v62 = v76;
      v25 = v75[0];
      v26 = v75[1];
      LOBYTE(v72) = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD1D8574(0, *(v11 + 2) + 1, 1, v11);
      }

      v28 = *(v11 + 2);
      v27 = *(v11 + 3);
      if (v28 >= v27 >> 1)
      {
        v11 = sub_1BD1D8574((v27 > 1), v28 + 1, 1, v11);
      }

      *(v11 + 2) = v28 + 1;
      v29 = &v11[136 * v28];
      *(v29 + 4) = v25;
      *(v29 + 5) = v26;
      v30 = v61;
      *(v29 + 3) = v62;
      *(v29 + 4) = v30;
      v31 = v63;
      *(v29 + 5) = v64;
      *(v29 + 6) = v31;
      *(v29 + 14) = v24;
      *(v29 + 15) = v23;
      v29[128] = v72;
      v32 = v85[0];
      *(v29 + 33) = *(v85 + 3);
      *(v29 + 129) = v32;
      v33 = v66;
      *(v29 + 152) = v65;
      *(v29 + 136) = v33;
      v2 = v70;
    }

    else
    {
    }
  }

LABEL_29:
  v34 = sub_1BD30C28C();
  if (!v34)
  {
LABEL_45:
    v72 = v11;
    sub_1BE048C84();
    sub_1BD312F2C(&v72);

    v52 = v72;
    v53 = v68;
    v35 = v69;
    (*(v68 + 104))(v69, *MEMORY[0x1E69B80B0], v2);
    v54 = PKPassKitBundle();
    if (v54)
    {
      v55 = v54;
      v56 = sub_1BE04B6F4();
      v58 = v57;

      result = (*(v53 + 8))(v35, v2);
      v60 = v67;
      *v67 = 0xD00000000000001ALL;
      v60[1] = 0x80000001BE123050;
      v60[2] = v56;
      v60[3] = v58;
      v60[4] = 0;
      v60[5] = 0;
      v60[6] = v52;
      return result;
    }

    __break(1u);
    goto LABEL_51;
  }

  v35 = v34;
  if (![v34 supportsDynamicSecurityCodes])
  {

    goto LABEL_45;
  }

  v36 = [v35 creditDetails];
  if (!v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v37 = v36;
  v38 = [v36 virtualCards];

  if (v38)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C30);
    sub_1BD214890(&qword_1EBD41C38, &qword_1EBD41C30);
    v39 = sub_1BE052A34();

    v40 = sub_1BD960F14(v39);

    if (v40)
    {
      if ([v40 hasDynamicSecurityCode])
      {
        sub_1BD310C18(v85);
      }

      else
      {
        sub_1BD3100FC(v85);
      }

      v65 = v94;
      v66 = v93;
      v42 = v90;
      v41 = v91;
      v63 = v89;
      v64 = v88;
      v61 = v87;
      v62 = v86;
      v43 = v85[0];
      v44 = v85[1];
      v71 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD1D8574(0, *(v11 + 2) + 1, 1, v11);
      }

      v46 = *(v11 + 2);
      v45 = *(v11 + 3);
      if (v46 >= v45 >> 1)
      {
        v11 = sub_1BD1D8574((v45 > 1), v46 + 1, 1, v11);
      }

      *(v11 + 2) = v46 + 1;
      v47 = &v11[136 * v46];
      *(v47 + 4) = v43;
      *(v47 + 5) = v44;
      v48 = v61;
      *(v47 + 3) = v62;
      *(v47 + 4) = v48;
      v49 = v63;
      *(v47 + 5) = v64;
      *(v47 + 6) = v49;
      *(v47 + 14) = v42;
      *(v47 + 15) = v41;
      v47[128] = v71;
      v50 = v72;
      *(v47 + 33) = *(&v72 + 3);
      *(v47 + 129) = v50;
      v51 = v66;
      *(v47 + 152) = v65;
      *(v47 + 136) = v51;
    }

    else
    {
    }

    v2 = v70;
    goto LABEL_45;
  }

LABEL_52:
  __break(1u);

  __break(1u);
  return result;
}

id sub_1BD3115CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v36 - v14;
  v16 = *MEMORY[0x1E69B80B0];
  v17 = *(v3 + 104);
  v17(&v36 - v14, v16, v2, v13);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = result;
  v42 = v6;
  v20 = sub_1BE04B6F4();
  v40 = v21;
  v41 = v20;

  v22 = *(v3 + 8);
  v22(v15, v2);
  (v17)(v10, v16, v2);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = result;
  v24 = sub_1BE04B6F4();
  v38 = v25;
  v39 = v24;

  v22(v10, v2);
  v37 = sub_1BD314128();
  v36 = [objc_opt_self() blackColor];
  v26 = v42;
  (v17)(v42, v16, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    v22(v26, v2);
    v31 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v44 = 0;
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001BE123000;
    v32 = v40;
    *(a1 + 16) = v41;
    *(a1 + 24) = v32;
    v33 = v38;
    *(a1 + 32) = v39;
    *(a1 + 40) = v33;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v35 = v36;
    v34 = v37;
    *(a1 + 64) = 0;
    *(a1 + 72) = v34;
    *(a1 + 80) = v35;
    *(a1 + 88) = 4;
    *(a1 + 96) = 0;
    *(a1 + 97) = *v43;
    *(a1 + 100) = *&v43[3];
    *(a1 + 104) = v28;
    *(a1 + 112) = v30;
    *(a1 + 120) = sub_1BD314418;
    *(a1 + 128) = v31;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD311914(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a4();
  }

  else
  {
    v8 = 0;
  }

  a1(v8);
}

id sub_1BD3119A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_21:
      v2 = sub_1BE053704();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v2)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v4 type] == 1)
        {
          break;
        }

        ++v3;
        if (v6 == v2)
        {
          goto LABEL_14;
        }
      }

      if (*(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_familyMembers))
      {
        v8 = objc_allocWithZone(MEMORY[0x1E69B88A0]);
        sub_1BD0E5E8C(0, &qword_1EBD41C28);
        sub_1BE048C84();
        v9 = v5;
        v10 = sub_1BE052724();

        v11 = [v8 initWithFamilyMembers_];

        v12 = [objc_allocWithZone(PKAccountInvitationController) initWithAccount:v9 context:0 familyMemberCollection:v11];
        v13 = [objc_allocWithZone(PKAccountInvitationOnboardingViewController) initWithController_];

        return v13;
      }
    }

    else
    {
LABEL_14:
    }
  }

  return 0;
}

id sub_1BD311B8C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v51 = &v46 - v12;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v46 - v16;
  v18 = *(v6 + 104);
  (v18)(&v46 - v16, *MEMORY[0x1E69B80D0], v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E6530];
  *(v19 + 16) = xmmword_1BE0B69E0;
  v21 = MEMORY[0x1E69E65A8];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = a1;
  v22 = sub_1BE04B714();
  v48 = v23;
  v49 = v22;

  v24 = *(v6 + 8);
  v24(v17, v5);
  v25 = 0;
  v52 = 0;
  v26 = *MEMORY[0x1E69B80B0];
  if (v53)
  {
    v27 = *MEMORY[0x1E69B80B0];
    v47 = v18;
    v18(v51, v27, v5);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_7;
    }

    v29 = result;
    v30 = v51;
    v25 = sub_1BE04B6F4();
    v52 = v31;

    v24(v30, v5);
    v18 = v47;
  }

  v51 = v25;
  v18(v9, v26, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v32 = result;
    v47 = 0x80000001BE122F30;
    v33 = sub_1BE04B6F4();
    v35 = v34;

    v24(v9, v5);
    v36 = *(v50 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol);
    v37 = *(v50 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkSymbol + 8);
    v38 = *(v50 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_checkmarkColor);
    sub_1BE048C84();
    v39 = v38;
    v40 = sub_1BD314128();
    v41 = [objc_opt_self() blackColor];
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = swift_allocObject();
    *(result + 16) = v53 & 1;
    *(result + 3) = v42;
    v55 = 0;
    v43 = v47;
    *a3 = 0xD000000000000014;
    *(a3 + 8) = v43;
    *(a3 + 16) = v33;
    *(a3 + 24) = v35;
    v44 = v48;
    *(a3 + 32) = v49;
    *(a3 + 40) = v44;
    *(a3 + 48) = v36;
    *(a3 + 56) = v37;
    *(a3 + 64) = v38;
    *(a3 + 72) = v40;
    *(a3 + 80) = v41;
    *(a3 + 88) = 4;
    *(a3 + 96) = 0;
    LODWORD(v44) = *v54;
    *(a3 + 100) = *&v54[3];
    *(a3 + 97) = v44;
    v45 = v52;
    *(a3 + 104) = v51;
    *(a3 + 112) = v45;
    *(a3 + 120) = sub_1BD31440C;
    *(a3 + 128) = result;
    return result;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void sub_1BD311FA0(void (*a1)(void *), uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_1BD31204C();
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_1BD3119A0();
LABEL_6:
  v8 = v6;

LABEL_8:
  a1(v8);
}

id sub_1BD31204C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accounts);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 type] == 1)
        {

          v8 = [objc_allocWithZone(PKAccountUserLimitReachedViewController) initWithAccount:v5 context:0];

          return v8;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return 0;
}