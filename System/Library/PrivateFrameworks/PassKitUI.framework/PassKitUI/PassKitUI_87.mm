void *PKPassDetailBankConnectSectionController.connectedInstitution.getter()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v7 = *(v6 + 2);
    v8 = v7;
  }

  else
  {
    sub_1BE04D114();
    v9 = v0;
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v12 = 136315138;
      v25 = v10;
      v13 = *v6;
      v14 = *(v6 + 1);
      v15 = *(v6 + 2);
      v16 = v6[24];
      sub_1BD9753A8(*v6, v14, v15, v16);
      v17 = sub_1BD96E2A0(v13, v14, v15, v16);
      HIDWORD(v24) = v11;
      v18 = v17;
      v20 = v19;
      sub_1BD9753F4(v13, v14, v15, v16);
      v21 = sub_1BD123690(v18, v20, &v27);

      *(v12 + 4) = v21;
      v10 = v25;
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return v7;
}

id PKPassDetailBankConnectSectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKPassDetailBankConnectSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PKPassDetailBankConnectSectionController.accountDidChange(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] != 1)
  {
    return;
  }

  v48 = v5;
  v49 = v9;
  v50 = v17;
  v51 = v16;
  v52 = v10;
  v22 = *v20;
  v21 = *(v20 + 1);
  v23 = *(v20 + 2);
  if (!a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    sub_1BD9753A8(v22, v21, v23, 1);
    v33 = sub_1BE052D54();
    v34 = swift_allocObject();
    v34[2] = v2;
    v34[3] = v23;
    v34[4] = v21;
    v57 = sub_1BD975440;
    v58 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1BD126964;
    v56 = &block_descriptor_222;
    v35 = _Block_copy(&aBlock);
    v36 = v2;
    v37 = v23;

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v38 = v49;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v19, v13, v35);
    _Block_release(v35);

LABEL_8:
    (*(v52 + 8))(v13, v38);
    (*(v50 + 8))(v19, v51);
    return;
  }

  sub_1BD0E5E8C(0, &unk_1EBD59D60);
  sub_1BD9753A8(v22, v21, v23, 1);
  v24 = v22;
  v25 = a1;
  v26 = v24;
  v27 = v25;
  v28 = sub_1BE053074();

  if ((v28 & 1) == 0)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v39 = v27;
    v40 = v26;
    v41 = v39;
    v33 = sub_1BE052D54();
    v42 = swift_allocObject();
    v42[2] = v2;
    v42[3] = v41;
    v42[4] = v21;
    v42[5] = v23;
    v57 = sub_1BD97544C;
    v58 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1BD126964;
    v56 = &block_descriptor_14_5;
    v43 = _Block_copy(&aBlock);
    v44 = v41;
    v45 = v2;
    v46 = v23;

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v38 = v49;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v19, v13, v43);
    _Block_release(v43);

    goto LABEL_8;
  }

  v29 = v23;
  sub_1BE04D114();
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1BD026000, v30, v31, "Bank Connect account was not changed", v32, 2u);
    MEMORY[0x1BFB45F20](v32, -1, -1);
  }

  else
  {
  }

  (*(v48 + 8))(v8, v4);
}

id sub_1BD9707E0(uint64_t a1, void *a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *v3 = a2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v7 = *(v3 + 24);
  *(v3 + 24) = 0;
  sub_1BD9753F4(v4, v5, v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = a2;
  if (Strong)
  {
    [Strong didUpdateBankConnectAccount_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void PKPassDetailBankConnectSectionController.consentStatusDidChange(to:)(uint64_t a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v37 = v9;
    v20 = *(v19 + 2);
    v21 = *v19;
    if (*(v19 + 1) == a1)
    {
      v22 = v21;
      v23 = v20;
      sub_1BE04D114();
      v24 = sub_1BE04D204();
      v25 = sub_1BE052C34();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1BD026000, v24, v25, "Bank Connect consent status was not changed", v26, 2u);
        MEMORY[0x1BFB45F20](v26, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v36 = v15;
      v27 = v16;
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v28 = v21;
      v29 = v20;
      v30 = sub_1BE052D54();
      v31 = swift_allocObject();
      v31[2] = v1;
      v31[3] = v28;
      v31[4] = a1;
      v31[5] = v29;
      aBlock[4] = sub_1BD976228;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_20_2;
      v32 = _Block_copy(aBlock);
      v33 = v1;
      v34 = v28;
      v35 = v29;

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v18, v12, v32);
      _Block_release(v32);

      (*(v37 + 8))(v12, v8);
      (*(v27 + 8))(v18, v36);
    }
  }
}

void *sub_1BD970D48(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v7 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v8 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 8);
  v9 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 16);
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  v10 = *(v6 + 24);
  *(v6 + 24) = 1;
  v11 = a2;
  v12 = a4;
  sub_1BD9753F4(v7, v8, v9, v10);
  result = swift_unknownObjectWeakLoadStrong();
  v14 = result;
  if (a3)
  {
    if (!result)
    {
      return result;
    }

    [result didUpdateBankConnectAccount_];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v15 = v11;
    [v14 didUpdateBankConnectAccount_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD970EA8(unint64_t a1)
{
  v3 = [v1 amount];
  v4 = [v3 isAboveZero];

  if (v4 && a1 <= 1 && [v1 creditDebitIndicator] == 1)
  {
    v5 = [v1 amount];
    v6 = [v5 negate];
  }

  else
  {
    v6 = [v1 amount];
  }

  v7 = [v6 formatted];

  v8 = sub_1BE052434();
  return v8;
}

id sub_1BD970FBC()
{
  if ([v0 accountType])
  {
    return 0;
  }

  result = [v0 balance];
  if (result)
  {
    v2 = result;
    v3 = [result bookedBalance];

    if (v3)
    {
      v4 = sub_1BD971118([v0 accountType]);

      return v4;
    }

    return 0;
  }

  return result;
}

id sub_1BD971068()
{
  if ([v0 accountType] != 1)
  {
    return 0;
  }

  result = [v0 balance];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result bookedBalance];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BD971118([v0 accountType]);

  return v4;
}

uint64_t sub_1BD971118(uint64_t a1)
{
  v3 = [v1 amount];
  v4 = [v3 isAboveZero];

  if (!v4)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    if (a1 != 1 || [v1 creditDebitIndicator])
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = [v1 amount];
    v5 = [v9 negate];

    goto LABEL_6;
  }

  if ([v1 creditDebitIndicator] == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = [v1 amount];
LABEL_6:
  v6 = [v5 formatted];

  v7 = sub_1BE052434();
  return v7;
}

void PKPassDetailBankConnectSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 0xD000000000000015 && 0x80000001BE118070 == a4 || (sub_1BE053B84() & 1) != 0)
  {
    if (v4[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24])
    {
      return;
    }

    v8 = sub_1BE052404();
    v9 = PKLocalizedBankConnectString(v8);

    if (v9)
    {
      v10 = [v4 linkCellWithText:v9 forTableView:a1];

      v11 = MEMORY[0x1E69B98F8];
LABEL_8:
      PKAccessibilityIDCellSet(v10, *v11);
      return;
    }

    goto LABEL_42;
  }

  if (a3 == 0xD000000000000019 && 0x80000001BE118090 == a4 || (sub_1BE053B84() & 1) != 0)
  {
    v12 = sub_1BE04B3F4();
    v13 = sub_1BD9754B4();
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v13 + 2))
    {
      v14 = v13[v12 + 32];

      if (v14 > 1)
      {
        if (v14 == 2)
        {

          sub_1BD97350C(a1);
        }

        else
        {

          sub_1BD973830(a1);
        }
      }

      else if (v14)
      {

        sub_1BD9731E8(a1);
      }

      else
      {

        sub_1BD972E48(a1);
      }

      return;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((a3 != 0xD000000000000021 || 0x80000001BE1180B0 != a4) && (sub_1BE053B84() & 1) == 0)
  {
    return;
  }

  v15 = sub_1BE04B3F4();
  if (v15 > 1)
  {
    goto LABEL_41;
  }

  if (byte_1F3B8FA80[v15 + 32])
  {
    v16 = sub_1BE052404();
    v17 = PKLocalizedBankConnectString(v16);

    if (v17)
    {
      v10 = [v4 linkCellWithText:v17 forTableView:a1];

      v11 = MEMORY[0x1E69B9920];
      goto LABEL_8;
    }

LABEL_43:
    __break(1u);
    return;
  }

  sub_1BD972A08(a1);
}

Swift::String_optional __swiftcall PKPassDetailBankConnectSectionController.titleForFooter(inSectionIdentifier:)(Swift::String inSectionIdentifier)
{
  object = inSectionIdentifier._object;
  countAndFlagsBits = inSectionIdentifier._countAndFlagsBits;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - v11;
  if ((countAndFlagsBits != 0xD000000000000015 || 0x80000001BE118070 != object) && (sub_1BE053B84() & 1) == 0)
  {
    if ((countAndFlagsBits != 0xD000000000000019 || 0x80000001BE118090 != object) && (sub_1BE053B84() & 1) == 0 || *(v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24) != 1)
    {
      goto LABEL_5;
    }

    v30 = *(v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
    v31 = [v30 balance];
    if (!v31)
    {

      goto LABEL_5;
    }

    v32 = v31;
    v33 = [v31 lastUpdatedAt];

    sub_1BE04AEE4();
    (*(v5 + 32))(v12, v8, v4);
    v34 = [objc_allocWithZone(type metadata accessor for BankConnectFormatter()) init];
    v35 = [v30 balance];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 hasMultipleBalances];
    }

    else
    {
      v37 = 0;
    }

    BankConnectFormatter.formatAsOfDateWithFullStop(_:hasMultipleBalances:)(v12, v37);
    v27 = v38;
    v29 = v39;

    (*(v5 + 8))(v12, v4);
LABEL_8:
    v15 = v29;
    v14 = v27;
    goto LABEL_21;
  }

  v13 = v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  if (!*(v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24))
  {
    v16 = *v13;
    v17 = *(v13 + 8);
    v18 = *(v13 + 16);
    v19 = *v13;
    v20 = sub_1BE052404();
    v21 = PKLocalizedBankConnectString(v20);

    if (!v21)
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BE0B69E0;
    v23 = [v19 name];
    v24 = sub_1BE052434();
    v26 = v25;

    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1BD110550();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v27 = sub_1BE052454();
    v29 = v28;

    sub_1BD9753F4(v16, v17, v18, 0);
    goto LABEL_8;
  }

LABEL_5:
  v14 = 0;
  v15 = 0;
LABEL_21:
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

void PKPassDetailBankConnectSectionController.tableView(_:didSelectRowAt:sectionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v90 - v17;
  v19 = sub_1BE04AA64();
  v92 = *(v19 - 8);
  v93 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v91 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v90 - v24;
  if ((a3 != 0xD000000000000015 || 0x80000001BE118070 != a4) && (sub_1BE053B84() & 1) == 0)
  {
    if (a3 == 0xD000000000000019 && 0x80000001BE118090 == a4 || (sub_1BE053B84() & 1) != 0)
    {
      if (*(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24) != 1)
      {
        goto LABEL_5;
      }

      v32 = *(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
      v33 = [v32 actions];
      if (!v33)
      {

        (*(v92 + 56))(v18, 1, 1, v93);
LABEL_29:
        sub_1BD0DE53C(v18, &unk_1EBD3CF70);
        goto LABEL_9;
      }

      v34 = v33;
      v35 = [v33 payNowURL];

      v36 = v92;
      if (v35)
      {
        sub_1BE04A9F4();

        v37 = *(v36 + 56);
        v38 = v14;
        v39 = 0;
      }

      else
      {
        v37 = *(v92 + 56);
        v38 = v14;
        v39 = 1;
      }

      v64 = v93;
      v37(v38, v39, 1, v93);
      sub_1BD226B4C(v14, v18);
      if ((*(v36 + 48))(v18, 1, v64) == 1)
      {

        goto LABEL_29;
      }

      (*(v36 + 32))(v25, v18, v64);
      v65 = sub_1BE04B3F4();
      v66 = sub_1BD9754B4();
      if ((v65 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v65 < *(v66 + 2))
      {
        v67 = v66[v65 + 32];

        if (v67 == 3)
        {
          v68 = *MEMORY[0x1E69BB6F8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BE0B98D0;
          v70 = *MEMORY[0x1E69BA680];
          *(inited + 32) = *MEMORY[0x1E69BA680];
          v71 = sub_1BE052434();
          v72 = MEMORY[0x1E69BABE8];
          *(inited + 40) = v71;
          *(inited + 48) = v73;
          v74 = *v72;
          *(inited + 56) = *v72;
          *(inited + 64) = sub_1BE052434();
          *(inited + 72) = v75;
          v76 = *MEMORY[0x1E69BA440];
          *(inited + 80) = *MEMORY[0x1E69BA440];
          v77 = v70;
          v78 = v74;
          v79 = v76;
          [v32 accountType];
          v80 = sub_1BE052434();
          v82 = v81;
          v83 = objc_opt_self();
          *(inited + 88) = v80;
          *(inited + 96) = v82;
          sub_1BD1AAF50(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
          swift_arrayDestroy();
          type metadata accessor for PKAnalyticsKey(0);
          sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
          v84 = sub_1BE052224();

          [v83 subject:v68 sendEvent:v84];

          v85 = sub_1BE04A9C4();
          v99 = sub_1BD972724;
          v100 = 0;
          v95 = MEMORY[0x1E69E9820];
          v96 = 1107296256;
          v97 = sub_1BD976224;
          v98 = &block_descriptor_28_5;
          v86 = _Block_copy(&v95);
          PKOpenURL();

          _Block_release(v86);
          (*(v92 + 8))(v25, v93);
        }

        else
        {
          (*(v36 + 8))(v25, v64);
        }

        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      if ((a3 != 0xD000000000000021 || 0x80000001BE1180B0 != a4) && (sub_1BE053B84() & 1) == 0 || *(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24) != 1)
      {
        goto LABEL_5;
      }

      v40 = *(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 16);
      v41 = sub_1BE04B3F4();
      if (v41 <= 1)
      {
        if ((byte_1F3B8FAA8[v41 + 32] & 1) == 0)
        {

          goto LABEL_5;
        }

        v42 = objc_opt_self();
        v90 = *MEMORY[0x1E69BB6F8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
        v43 = swift_initStackObject();
        *(v43 + 16) = xmmword_1BE0B98D0;
        v44 = *MEMORY[0x1E69BA680];
        *(v43 + 32) = *MEMORY[0x1E69BA680];
        v45 = sub_1BE052434();
        v46 = MEMORY[0x1E69BABE8];
        *(v43 + 40) = v45;
        *(v43 + 48) = v47;
        v48 = *v46;
        *(v43 + 56) = *v46;
        v49 = sub_1BE052434();
        v50 = MEMORY[0x1E69BA440];
        *(v43 + 64) = v49;
        *(v43 + 72) = v51;
        v52 = *v50;
        *(v43 + 80) = *v50;
        *(v43 + 88) = sub_1BE052434();
        *(v43 + 96) = v53;
        v54 = v44;
        v55 = v48;
        v56 = v52;
        sub_1BD1AAF50(v43);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
        swift_arrayDestroy();
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
        v57 = sub_1BE052224();

        [v42 subject:v90 sendEvent:v57];

        v95 = 0;
        v96 = 0xE000000000000000;
        sub_1BE053834();

        v95 = 0xD000000000000025;
        v96 = 0x80000001BE143220;
        v58 = [v40 institutionIdentifier];
        v59 = sub_1BE052434();
        v61 = v60;

        MEMORY[0x1BFB3F610](v59, v61);

        sub_1BE04AA54();

        v63 = v92;
        v62 = v93;
        if ((*(v92 + 48))(v10, 1, v93) == 1)
        {

          sub_1BD0DE53C(v10, &unk_1EBD3CF70);
        }

        else
        {
          v87 = v91;
          (*(v63 + 32))(v91, v10, v62);
          v88 = sub_1BE04A9C4();
          v99 = PKEdgeInsetsMake;
          v100 = 0;
          v95 = MEMORY[0x1E69E9820];
          v96 = 1107296256;
          v97 = sub_1BD976224;
          v98 = &block_descriptor_25_5;
          v89 = _Block_copy(&v95);
          PKOpenURL();

          _Block_release(v89);
          (*(v63 + 8))(v87, v62);
        }

LABEL_9:
        v31 = sub_1BE04B3C4();
        [v94 deselectRowAtIndexPath:v31 animated:1];

        return;
      }
    }

    __break(1u);
    return;
  }

  v26 = v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  if (!*(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24))
  {
    v29 = *(v26 + 8);
    v28 = *(v26 + 16);
    v30 = *v26;
    sub_1BD972620(*v26);
    sub_1BD9753F4(v30, v29, v28, 0);
    goto LABEL_9;
  }

LABEL_5:
  v93 = sub_1BE04B3C4();
  [v94 deselectRowAtIndexPath:v93 animated:1];
  v27 = v93;
}

void sub_1BD972620(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v8[4] = sub_1BD9760A8;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1BD976224;
    v8[3] = &block_descriptor_50_5;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v4 didStartBankConnectAuthorizationForInstitution:a1 withCompletion:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

void sub_1BD972724(char a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_1BE04D114();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Failed to perform a pay now action", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

id sub_1BD972A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v10 = *v9;
    v11 = [v2 subtitleCellForTableView_];
    v12 = [v11 textLabel];
    if (v12)
    {
      v13 = v12;
      v14 = [v10 displayName];
      if (!v14)
      {
        sub_1BE052434();
        v14 = sub_1BE052404();
      }

      [v13 setText_];
    }

    v15 = [v11 textLabel];
    if (v15)
    {
      v16 = v15;
      v17 = [v2 primaryTextColor];
      [v16 setTextColor_];
    }

    v18 = [v11 detailTextLabel];
    if (v18)
    {
      v19 = v18;
      v20 = [v10 displayAccountNumberValue];
      if (!v20)
      {
        sub_1BE052434();
        v20 = sub_1BE052404();
      }

      [v19 setText_];
    }

    v21 = [v11 detailTextLabel];
    if (v21)
    {
      v22 = v21;
      v23 = [v2 detailTextColor];
      if (!v23)
      {
        v23 = [objc_opt_self() secondaryLabelColor];
      }

      [v22 setTextColor_];
    }

    [v11 setSelectionStyle_];
    PKAccessibilityIDCellSet(v11, *MEMORY[0x1E69B93A8]);
  }

  else
  {
    sub_1BE04D114();
    v24 = v2;
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v27 = 136315138;
      v40 = v26;
      v28 = *v9;
      v29 = *(v9 + 1);
      v30 = *(v9 + 2);
      v31 = v9[24];
      sub_1BD9753A8(*v9, v29, v30, v31);
      v32 = sub_1BD96E2A0(v28, v29, v30, v31);
      v39 = v25;
      v34 = v33;
      sub_1BD9753F4(v28, v29, v30, v31);
      v35 = sub_1BD123690(v32, v34, &v42);

      *(v27 + 4) = v35;
      v36 = v39;
      v37 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1BFB45F20](v37, -1, -1);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v11;
}

void sub_1BD972E48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v10 = *v9;
    v11 = [v10 balance];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 availableBalance];

      if (v13)
      {
        sub_1BD970EA8([v10 accountType]);

        [v10 accountType];
        v14 = sub_1BE052404();

        v15 = PKLocalizedBankConnectString(v14);

        if (v15)
        {
          v16 = sub_1BE052404();

          v17 = [v2 stackedInfoCellWithPrimaryText:v15 detailText:v16 cellStyle:1 forTableView:a1];

          [v17 setSelectionStyle_];
          PKAccessibilityIDCellSet(v17, *MEMORY[0x1E69B94E0]);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  sub_1BE04D114();
  v18 = v2;
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    v34 = v4;
    v35 = v22;
    v23 = *v9;
    v24 = *(v9 + 1);
    v33 = v5;
    v25 = *(v9 + 2);
    v26 = v9[24];
    sub_1BD9753A8(v23, v24, v25, v26);
    v27 = sub_1BD96E2A0(v23, v24, v25, v26);
    v29 = v28;
    sub_1BD9753F4(v23, v24, v25, v26);
    v30 = sub_1BD123690(v27, v29, &v35);

    *(v21 + 4) = v30;
    v31 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1BFB45F20](v31, -1, -1);
    MEMORY[0x1BFB45F20](v21, -1, -1);

    (*(v33 + 8))(v8, v34);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BD9731E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v10 = *v9;
    sub_1BD970FBC();
    if (v11)
    {
      v12 = sub_1BE052404();
      v13 = PKLocalizedBankConnectString(v12);

      if (v13)
      {
        v14 = sub_1BE052404();

        v15 = [v2 stackedInfoCellWithPrimaryText:v13 detailText:v14 cellStyle:1 forTableView:a1];

        [v15 setSelectionStyle_];
        PKAccessibilityIDSet(v15, *MEMORY[0x1E69B9500]);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_1BE04D114();
  v16 = v2;
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C34();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v32 = v4;
    v33 = v20;
    v21 = *v9;
    v22 = *(v9 + 1);
    v31 = v5;
    v23 = *(v9 + 2);
    v24 = v9[24];
    sub_1BD9753A8(v21, v22, v23, v24);
    v25 = sub_1BD96E2A0(v21, v22, v23, v24);
    v27 = v26;
    sub_1BD9753F4(v21, v22, v23, v24);
    v28 = sub_1BD123690(v25, v27, &v33);

    *(v19 + 4) = v28;
    v29 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1BFB45F20](v29, -1, -1);
    MEMORY[0x1BFB45F20](v19, -1, -1);

    (*(v31 + 8))(v8, v32);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BD97350C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v10 = *v9;
    sub_1BD971068();
    if (v11)
    {
      v12 = sub_1BE052404();
      v13 = PKLocalizedBankConnectString(v12);

      if (v13)
      {
        v14 = sub_1BE052404();

        v15 = [v2 stackedInfoCellWithPrimaryText:v13 detailText:v14 cellStyle:1 forTableView:a1];

        [v15 setSelectionStyle_];
        PKAccessibilityIDCellSet(v15, *MEMORY[0x1E69B9500]);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_1BE04D114();
  v16 = v2;
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C34();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v32 = v4;
    v33 = v20;
    v21 = *v9;
    v22 = *(v9 + 1);
    v31 = v5;
    v23 = *(v9 + 2);
    v24 = v9[24];
    sub_1BD9753A8(v21, v22, v23, v24);
    v25 = sub_1BD96E2A0(v21, v22, v23, v24);
    v27 = v26;
    sub_1BD9753F4(v21, v22, v23, v24);
    v28 = sub_1BD123690(v25, v27, &v33);

    *(v19 + 4) = v28;
    v29 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1BFB45F20](v29, -1, -1);
    MEMORY[0x1BFB45F20](v19, -1, -1);

    (*(v31 + 8))(v8, v32);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BD973830(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] != 1)
  {
    goto LABEL_6;
  }

  v11 = *&v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  v12 = [v11 actions];
  if (!v12)
  {

LABEL_6:
    v16 = sub_1BE04AA64();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
LABEL_7:
    sub_1BD0DE53C(v10, &unk_1EBD3CF70);
    return;
  }

  v13 = v12;
  v14 = [v12 payNowURL];

  if (v14)
  {
    sub_1BE04A9F4();

    v15 = sub_1BE04AA64();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  }

  else
  {

    v15 = sub_1BE04AA64();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_1BD226B4C(v6, v10);
  sub_1BE04AA64();
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  sub_1BD0DE53C(v10, &unk_1EBD3CF70);
  v17 = sub_1BE052404();
  v18 = PKLocalizedBankConnectString(v17);

  if (v18)
  {
    v19 = [v1 linkCellWithText:v18 forTableView:a1];

    v20 = sub_1BE052404();
    v21 = [objc_opt_self() systemImageNamed_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v19 setAccessoryView_];

    PKAccessibilityIDCellSet(v19, *MEMORY[0x1E69B9D68]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD973BA0(char a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - v11;
  if (a1)
  {
    v13 = sub_1BE0528D4();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v15 = a2;
    sub_1BDA543A4(0, 0, v12, &unk_1BE107FB8, v14);
  }

  else
  {
    sub_1BE04D114();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Bank Connect authorisation has failed", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BD973DE0()
{
  v3 = (*MEMORY[0x1E6967C10] + MEMORY[0x1E6967C10]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1BD973E90;

  return v3();
}

uint64_t sub_1BD973E90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD973FC4, 0, 0);
  }
}

uint64_t sub_1BD973FC4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    sub_1BD96F4AC(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

void *sub_1BD974040()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdateBankConnectAccount_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD9740A4(void *a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v14 = a1;
      v23 = v3;
      v15 = v14;
      v22 = sub_1BE052D54();
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      *(v16 + 24) = v15;
      aBlock[4] = sub_1BD97617C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_78_2;
      v17 = _Block_copy(aBlock);
      v18 = v15;
      v19 = v13;

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      sub_1BE053664();
      v20 = v22;
      MEMORY[0x1BFB3FDF0](0, v11, v6, v17);
      _Block_release(v17);

      (*(v23 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
    }
  }
}

void *sub_1BD9743C4(uint64_t a1, void *a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *v3 = a2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v7 = *(v3 + 24);
  *(v3 + 24) = 0;
  sub_1BD9753F4(v4, v5, v6, v7);
  sub_1BD97445C(a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didFindLinkableBankConnectInstitution];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD97445C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  v4 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BA680];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BAC90];
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  v12 = *v10;
  *(inited + 80) = *v10;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v13;
  v14 = *MEMORY[0x1E69BAA28];
  *(inited + 104) = *MEMORY[0x1E69BAA28];
  v15 = v4;
  v16 = v8;
  v17 = v12;
  v18 = v14;
  v19 = [a1 name];
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v20;
  v21 = *MEMORY[0x1E69BAD48];
  *(inited + 128) = *MEMORY[0x1E69BAD48];
  v22 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  v23 = v21;
  v24 = PKDefaultPaymentNetworkNameForPaymentPass();
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = v24;

  v26 = sub_1BE052434();
  v28 = v27;

  *(inited + 136) = v26;
  *(inited + 144) = v28;
  v29 = *MEMORY[0x1E69BA9E8];
  *(inited + 152) = *MEMORY[0x1E69BA9E8];
  *(inited + 160) = 1702195828;
  *(inited + 168) = 0xE400000000000000;
  v30 = v29;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v31 = *(v1 + v22);
  if (!v31)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v32 = [v31 issuerCountryCode];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BE052434();
    v36 = v35;

    v37 = *MEMORY[0x1E69BAC78];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v34, v36, v37, isUniquelyReferenced_nonNull_native);
  }

  v39 = objc_opt_self();
  v40 = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v41 = sub_1BE052224();

  [v39 subject:v40 sendEvent:v41];
}

void sub_1BD97474C(uint64_t a1, id a2)
{
  v4 = [a2 account];
  v5 = [a2 consentStatus];
  v6 = [a2 institution];
  v7 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v9 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v8 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 8);
  v10 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 16);
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  v11 = *(v7 + 24);
  *(v7 + 24) = 1;
  sub_1BD9753F4(v9, v8, v10, v11);
  v12 = [a2 account];
  v13 = [a2 consentStatus];
  v14 = [a2 institution];
  sub_1BD974934(v12, v13, v14);

  v19 = [a2 account];
  v15 = [a2 consentStatus];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v19 || v15)
  {
    if (Strong)
    {
      [Strong didUpdateBankConnectAccount_];

      goto LABEL_7;
    }
  }

  else if (Strong)
  {
    v17 = Strong;
    v18 = v19;
    [v17 didUpdateBankConnectAccount_];

LABEL_7:

    swift_unknownObjectRelease();
    return;
  }
}

void sub_1BD974934(void *a1, uint64_t a2, void *a3)
{
  v120 = a3;
  v117 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v113[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v113[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v113[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v113[-v18];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v113[-v22];
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v113[-v27];
  v29 = [a1 actions];
  if (!v29)
  {
    v33 = sub_1BE04AA64();
    (*(*(v33 - 8) + 56))(v28, 1, 1, v33);
LABEL_7:
    sub_1BD0DE53C(v28, &unk_1EBD3CF70);
    v119 = 0;
    goto LABEL_9;
  }

  v30 = v29;
  v31 = [v29 payNowURL];

  if (v31)
  {
    sub_1BE04A9F4();

    v32 = sub_1BE04AA64();
    (*(*(v32 - 8) + 56))(v23, 0, 1, v32);
  }

  else
  {
    v32 = sub_1BE04AA64();
    (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
  }

  sub_1BD226B4C(v23, v28);
  sub_1BE04AA64();
  if ((*(*(v32 - 8) + 48))(v28, 1, v32) == 1)
  {
    goto LABEL_7;
  }

  sub_1BD0DE53C(v28, &unk_1EBD3CF70);
  v119 = [a1 accountType] == 0;
LABEL_9:
  v34 = [a1 actions];
  v35 = v121;
  if (!v34)
  {
    v42 = sub_1BE04AA64();
    (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
LABEL_15:
    sub_1BD0DE53C(v19, &unk_1EBD3CF70);
    v118 = 0;
    goto LABEL_17;
  }

  v116 = a1;
  v36 = v11;
  v37 = v7;
  v38 = v121;
  v39 = v34;
  v40 = [v34 payNowURL];

  if (v40)
  {
    sub_1BE04A9F4();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v43 = sub_1BE04AA64();
  v44 = *(v43 - 8);
  (*(v44 + 56))(v15, v41, 1, v43);
  sub_1BD226B4C(v15, v19);
  v45 = (*(v44 + 48))(v19, 1, v43);
  v35 = v38;
  v7 = v37;
  v11 = v36;
  a1 = v116;
  if (v45 == 1)
  {
    goto LABEL_15;
  }

  sub_1BD0DE53C(v19, &unk_1EBD3CF70);
  v118 = [a1 accountType] == 1;
LABEL_17:
  v46 = [a1 actions];
  if (!v46)
  {
    v50 = sub_1BE04AA64();
    (*(*(v50 - 8) + 56))(v11, 1, 1, v50);
LABEL_23:
    v53 = 0;
    goto LABEL_24;
  }

  v47 = v46;
  v48 = [v46 digitalServicingURL];

  if (v48)
  {
    sub_1BE04A9F4();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v51 = sub_1BE04AA64();
  v52 = *(v51 - 8);
  v53 = 1;
  (*(v52 + 56))(v7, v49, 1, v51);
  sub_1BD226B4C(v7, v11);
  if ((*(v52 + 48))(v11, 1, v51) == 1)
  {
    goto LABEL_23;
  }

LABEL_24:
  LODWORD(v116) = v53;
  sub_1BD0DE53C(v11, &unk_1EBD3CF70);
  v114 = [a1 isAccountEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE107E80;
  v55 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v115 = inited + 32;
  v56 = sub_1BE052434();
  v57 = MEMORY[0x1E69BA680];
  *(inited + 40) = v56;
  *(inited + 48) = v58;
  v59 = *v57;
  *(inited + 56) = *v57;
  v60 = sub_1BE052434();
  v61 = MEMORY[0x1E69BAC90];
  *(inited + 64) = v60;
  *(inited + 72) = v62;
  v63 = *v61;
  *(inited + 80) = *v61;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v64;
  v65 = *MEMORY[0x1E69BAC88];
  *(inited + 104) = *MEMORY[0x1E69BAC88];
  v66 = v55;
  v67 = v59;
  v68 = v63;
  v69 = v65;
  [a1 accountType];
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v70;
  v71 = *MEMORY[0x1E69BA2C0];
  if (v119)
  {
    v72 = 1702195828;
  }

  else
  {
    v72 = 0x65736C6166;
  }

  if (v119)
  {
    v73 = 0xE400000000000000;
  }

  else
  {
    v73 = 0xE500000000000000;
  }

  *(inited + 128) = v71;
  *(inited + 136) = v72;
  v74 = *MEMORY[0x1E69BACC8];
  *(inited + 144) = v73;
  *(inited + 152) = v74;
  if (v118)
  {
    v75 = 1702195828;
  }

  else
  {
    v75 = 0x65736C6166;
  }

  if (v118)
  {
    v76 = 0xE400000000000000;
  }

  else
  {
    v76 = 0xE500000000000000;
  }

  *(inited + 160) = v75;
  *(inited + 168) = v76;
  v77 = *MEMORY[0x1E69BAA28];
  *(inited + 176) = *MEMORY[0x1E69BAA28];
  v78 = v71;
  v79 = v74;
  v80 = v77;
  v81 = [v120 name];
  *(inited + 184) = sub_1BE052434();
  *(inited + 192) = v82;
  v83 = *MEMORY[0x1E69BAD48];
  *(inited + 200) = *MEMORY[0x1E69BAD48];
  v84 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  v85 = v83;
  v86 = PKDefaultPaymentNetworkNameForPaymentPass();
  if (!v86)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  v87 = v86;
  v88 = v35;
  v89 = v117 == 0;

  v90 = sub_1BE052434();
  v92 = v91;

  *(inited + 208) = v90;
  *(inited + 216) = v92;
  v93 = *MEMORY[0x1E69BA608];
  if (v116)
  {
    v94 = 1702195828;
  }

  else
  {
    v94 = 0x65736C6166;
  }

  if (v116)
  {
    v95 = 0xE400000000000000;
  }

  else
  {
    v95 = 0xE500000000000000;
  }

  *(inited + 224) = v93;
  *(inited + 232) = v94;
  v96 = *MEMORY[0x1E69BA9F0];
  *(inited + 240) = v95;
  *(inited + 248) = v96;
  if ((v114 & v89) != 0)
  {
    v97 = 1702195828;
  }

  else
  {
    v97 = 0x65736C6166;
  }

  if ((v114 & v89) != 0)
  {
    v98 = 0xE400000000000000;
  }

  else
  {
    v98 = 0xE500000000000000;
  }

  *(inited + 256) = v97;
  *(inited + 264) = v98;
  v99 = v93;
  v100 = v96;
  v101 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v102 = *(v88 + v84);
  if (!v102)
  {
    goto LABEL_54;
  }

  v103 = [v102 issuerCountryCode];
  if (v103)
  {
    v104 = v103;
    v105 = sub_1BE052434();
    v107 = v106;

    v108 = *MEMORY[0x1E69BAC78];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v101;
    sub_1BD1DAE70(v105, v107, v108, isUniquelyReferenced_nonNull_native);
  }

  v110 = objc_opt_self();
  v111 = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v112 = sub_1BE052224();

  [v110 subject:v111 sendEvent:v112];
}

uint64_t sub_1BD9752F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD96FCE8();
}

id sub_1BD9753A8(id result, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    v5 = result;
    result = a3;
  }

  return result;
}

void sub_1BD9753F4(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

char *sub_1BD9754B4()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v57 - v12;
  v14 = &v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] != 1)
  {
    sub_1BE04D114();
    v23 = v0;
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v57 = v27;
      *v26 = 136315138;
      v59 = v1;
      v60 = v27;
      v58 = v2;
      v28 = *v14;
      v29 = *(v14 + 1);
      v30 = *(v14 + 2);
      v31 = v14[24];
      sub_1BD9753A8(*v14, v29, v30, v31);
      v32 = sub_1BD96E2A0(v28, v29, v30, v31);
      v34 = v33;
      sub_1BD9753F4(v28, v29, v30, v31);
      v35 = sub_1BD123690(v32, v34, &v60);

      *(v26 + 4) = v35;
      v36 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x1BFB45F20](v36, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);

      (*(v58 + 8))(v5, v59);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v15 = *v14;
  v16 = [v15 accountType];
  if (v16 == 1)
  {
    sub_1BD971068();
    if (v37)
    {

      v20 = sub_1BD1D9A78(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v39 = *(v20 + 2);
      v38 = *(v20 + 3);
      if (v39 >= v38 >> 1)
      {
        v20 = sub_1BD1D9A78((v38 > 1), v39 + 1, 1, v20);
      }

      *(v20 + 2) = v39 + 1;
      v20[v39 + 32] = 2;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v45 = [v15 balance];
    if (!v45)
    {
      goto LABEL_33;
    }

    v46 = v45;
    v47 = [v45 availableBalance];

    if (!v47)
    {
      goto LABEL_33;
    }

    sub_1BD970EA8([v15 accountType]);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1BD1D9A78(0, *(v20 + 2) + 1, 1, v20);
    }

    v42 = *(v20 + 2);
    v48 = *(v20 + 3);
    v43 = v42 + 1;
    if (v42 >= v48 >> 1)
    {
      v20 = sub_1BD1D9A78((v48 > 1), v42 + 1, 1, v20);
    }

    v44 = 0;
LABEL_32:
    *(v20 + 2) = v43;
    v20[v42 + 32] = v44;
    goto LABEL_33;
  }

  if (!v16)
  {
    v17 = [v15 balance];
    if (v17 && (v18 = v17, v19 = [v17 availableBalance], v18, v19))
    {
      sub_1BD970EA8([v15 accountType]);

      v20 = sub_1BD1D9A78(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1BD1D9A78((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v20[v22 + 32] = 0;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_1BD970FBC();
    if (!v40)
    {
      goto LABEL_33;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1BD1D9A78(0, *(v20 + 2) + 1, 1, v20);
    }

    v42 = *(v20 + 2);
    v41 = *(v20 + 3);
    v43 = v42 + 1;
    v44 = 1;
    if (v42 >= v41 >> 1)
    {
      v20 = sub_1BD1D9A78((v41 > 1), v42 + 1, 1, v20);
    }

    goto LABEL_32;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v49 = [v15 actions];
  if (!v49)
  {

    v53 = sub_1BE04AA64();
    (*(*(v53 - 8) + 56))(v13, 1, 1, v53);
LABEL_40:
    sub_1BD0DE53C(v13, &unk_1EBD3CF70);
    return v20;
  }

  v50 = v49;
  v51 = [v49 payNowURL];

  if (v51)
  {
    sub_1BE04A9F4();

    v52 = sub_1BE04AA64();
    (*(*(v52 - 8) + 56))(v9, 0, 1, v52);
  }

  else
  {
    v52 = sub_1BE04AA64();
    (*(*(v52 - 8) + 56))(v9, 1, 1, v52);
  }

  sub_1BD226B4C(v9, v13);
  sub_1BE04AA64();
  if ((*(*(v52 - 8) + 48))(v13, 1, v52) == 1)
  {

    goto LABEL_40;
  }

  sub_1BD0DE53C(v13, &unk_1EBD3CF70);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1BD1D9A78(0, *(v20 + 2) + 1, 1, v20);
  }

  v55 = *(v20 + 2);
  v54 = *(v20 + 3);
  if (v55 >= v54 >> 1)
  {
    v20 = sub_1BD1D9A78((v54 > 1), v55 + 1, 1, v20);
  }

  *(v20 + 2) = v55 + 1;
  v20[v55 + 32] = 3;
  return v20;
}

uint64_t _s9PassKitUI40PKPassDetailBankConnectSectionControllerC14titleForHeader02inH10IdentifierSSSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  if ((a1 != 0xD000000000000015 || 0x80000001BE118070 != a2) && (sub_1BE053B84() & 1) == 0 && (a1 != 0xD000000000000021 || 0x80000001BE1180B0 != a2) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_1BE052404();
  v5 = PKLocalizedBankConnectString(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1BE052434();

  return v6;
}

uint64_t sub_1BD975D58(uint64_t a1, uint64_t a2)
{
  v4 = PKPassDetailBankConnectSectionController.sectionIdentifiers.getter();
  v9[0] = a1;
  v9[1] = a2;
  v8[2] = v9;
  v5 = sub_1BD2FF084(sub_1BD20DFC4, v8, v4);

  result = 0;
  if (v5)
  {
    if (a1 == 0xD000000000000015 && 0x80000001BE118070 == a2 || (sub_1BE053B84() & 1) != 0)
    {
      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001BE118090 == a2 || (sub_1BE053B84() & 1) != 0)
    {
      v7 = *(sub_1BD9754B4() + 2);

      return v7;
    }

    else if (a1 == 0xD000000000000021 && 0x80000001BE1180B0 == a2)
    {
      return 2;
    }

    else if (sub_1BE053B84())
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI40PKPassDetailBankConnectSectionControllerC15ConnectionState33_3BB1D4DBFFC79AA2714DB6AC179A5AACLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1BD975F40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BD975F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD975FD0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1BD975FFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD96F8EC(v2, v3);
}

uint64_t sub_1BD9760B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD973DC0(a1, v4, v5, v6);
}

unint64_t sub_1BD976198()
{
  result = qword_1EBD59D70;
  if (!qword_1EBD59D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59D70);
  }

  return result;
}

uint64_t sub_1BD976258(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if ((a2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_mapsOnly] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BDA7AB7C(v11);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BDA7AB7C(v11);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD50340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8);
  sub_1BD0DE4F4(&qword_1EBD59D80, &unk_1EBD50340);
  sub_1BD598D7C();
  sub_1BD977080();
  return sub_1BE0519D4();
}

uint64_t sub_1BD97644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v11;
  *(v13 + 56) = v12;
  type metadata accessor for AddressSearchingResults.ResultRow();
  sub_1BD5990AC();
  v14 = a3;
  sub_1BE048964();
  v15 = v11;
  sub_1BE048964();
  sub_1BE051704();
  sub_1BE051274();
  v16 = sub_1BE0518D4();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8);
  *(a6 + *(result + 36)) = v16;
  return result;
}

id sub_1BD976588@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for AddressSearchingResults.ResultRow();
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x1E6980FA8];
  v8 = sub_1BE050554();
  (*(*(v8 - 8) + 104))(a3 + v6, v7, v8);
  v9 = *(v5 + 24);
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;

  return a1;
}

uint64_t sub_1BD976684@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DC0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  if ((*(a1 + 8) & 1) != 0 || (v12 = *a1, v13 = *a1, (v14 = sub_1BD50D434(v12)) == 0))
  {
    if (qword_1EBD36C60 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBDAB200;
    v18 = *algn_1EBDAB208;
    v19 = qword_1EBDAB210;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
  }

  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DC8);
  sub_1BD976894(a1, &v11[*(v20 + 44)]);
  sub_1BD0DE19C(v11, v7, &qword_1EBD59DC0);
  *a2 = v17;
  a2[1] = v18;
  a2[2] = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DD0);
  sub_1BD0DE19C(v7, a2 + *(v21 + 48), &qword_1EBD59DC0);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE53C(v11, &qword_1EBD59DC0);
  sub_1BD0DE53C(v7, &qword_1EBD59DC0);
}

uint64_t sub_1BD976894@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v104 = a2;
  v3 = sub_1BE04F774();
  KeyPath = *(v3 - 8);
  v96 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD0);
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DD8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v103 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v102 = &v87 - v18;
  v19 = *a1;
  v98 = a1;
  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = [v19 title];
  }

  else
  {
    v21 = [v19 pk_displayName];
    if (!v21)
    {
      v39 = 0;
      v40 = 0;
      v36 = 0;
      v41 = 0;
      goto LABEL_8;
    }
  }

  v99 = v19;
  v22 = sub_1BE052434();
  v24 = v23;

  v106 = v22;
  v107 = v24;
  sub_1BD0DDEBC();
  v25 = sub_1BE0506C4();
  v27 = v26;
  LOBYTE(v24) = v28;
  sub_1BE050324();
  v29 = sub_1BE0505F4();
  v31 = v30;
  v33 = v32;

  sub_1BD0DDF10(v25, v27, v24 & 1);

  sub_1BE051224();
  v34 = sub_1BE050564();
  v36 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;

  sub_1BD0DDF10(v29, v31, v33 & 1);

  v40 = (v24 & 1);
  v41 = v34;
  sub_1BD0D7F18(v34, v36, v40);
  sub_1BE048C84();
  if (v20)
  {
    v42 = [v99 subtitle];
    goto LABEL_9;
  }

  v19 = v99;
LABEL_8:
  v42 = [v19 pkSingleLineFormattedContactAddress];
  if (!v42)
  {
LABEL_16:
    v81 = v102;
    (*(v100 + 56))(v102, 1, 1, v101);
    goto LABEL_17;
  }

LABEL_9:
  v99 = v40;
  v43 = sub_1BE052434();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {

    v40 = v99;
    goto LABEL_16;
  }

  v106 = v43;
  v107 = v45;
  sub_1BD0DDEBC();
  v47 = sub_1BE0506C4();
  v49 = v48;
  v51 = v50;
  sub_1BE0502E4();
  v52 = sub_1BE0505F4();
  v91 = v36;
  v92 = v39;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v90 = v41;

  sub_1BD0DDF10(v47, v49, v51 & 1);

  sub_1BE051234();
  v89 = sub_1BE050564();
  v88 = v58;
  v60 = v59;
  v87 = v61;

  sub_1BD0DDF10(v53, v55, v57 & 1);

  v62 = type metadata accessor for AddressSearchingResults.ResultRow();
  v63 = v98;
  v64 = v94;
  sub_1BD70A4D0(v94);
  LOBYTE(v49) = sub_1BE04F764();
  (*(KeyPath + 8))(v64, v96);
  v65 = 1;
  if (v49)
  {
    v65 = 2;
  }

  v96 = v65;
  KeyPath = swift_getKeyPath();
  v66 = swift_getKeyPath();
  v67 = v60 & 1;
  LOBYTE(v106) = v60 & 1;
  v105 = 0;
  v68 = swift_getKeyPath();
  v69 = *(v62 + 20);
  v70 = swift_getKeyPath();
  v71 = v101;
  v72 = v93;
  v73 = &v93[*(v101 + 36)];
  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318) + 28);
  v75 = sub_1BE050554();
  v76 = v63 + v69;
  v36 = v91;
  (*(*(v75 - 8) + 16))(v73 + v74, v76, v75);
  *v73 = v70;
  v77 = v88;
  *v72 = v89;
  *(v72 + 8) = v77;
  *(v72 + 16) = v67;
  v39 = v92;
  v79 = KeyPath;
  v78 = v96;
  *(v72 + 24) = v87;
  *(v72 + 32) = v79;
  *(v72 + 40) = v78;
  *(v72 + 48) = 0;
  *(v72 + 56) = v66;
  *(v72 + 64) = 0;
  *(v72 + 72) = v68;
  *(v72 + 80) = 1;
  v80 = v97;
  sub_1BD9772B8(v72, v97);
  v81 = v102;
  sub_1BD9772B8(v80, v102);
  v82 = v71;
  v41 = v90;
  (*(v100 + 56))(v81, 0, 1, v82);
  v40 = v99;
LABEL_17:
  v83 = v103;
  sub_1BD0DE19C(v81, v103, &qword_1EBD59DD8);
  v84 = v104;
  *v104 = v41;
  v84[1] = v36;
  v84[2] = v40;
  v84[3] = v39;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DE0);
  sub_1BD0DE19C(v83, v84 + *(v85 + 48), &qword_1EBD59DD8);
  sub_1BD1969AC(v41, v36, v40, v39);
  sub_1BD1969F0(v41, v36, v40, v39);
  sub_1BD0DE53C(v81, &qword_1EBD59DD8);
  sub_1BD0DE53C(v83, &qword_1EBD59DD8);
  return sub_1BD1969F0(v41, v36, v40, v39);
}

uint64_t sub_1BD976FC4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DB0);
  sub_1BD976684(v1, (a1 + *(v3 + 44)));
  v4 = sub_1BE050234();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DB8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_1BD977080()
{
  result = qword_1EBD59D88;
  if (!qword_1EBD59D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59D88);
  }

  return result;
}

uint64_t type metadata accessor for AddressSearchingResults.ResultRow()
{
  result = qword_1EBD59D90;
  if (!qword_1EBD59D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD977184()
{
  sub_1BE050554();
  if (v0 <= 0x3F)
  {
    sub_1BD3A0CE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD977218()
{
  result = qword_1EBD59DA0;
  if (!qword_1EBD59DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59DA8);
    sub_1BD598D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59DA0);
  }

  return result;
}

uint64_t sub_1BD9772B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD977328()
{
  result = qword_1EBD59DE8;
  if (!qword_1EBD59DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59DB8);
    sub_1BD0DE4F4(&qword_1EBD59DF0, &qword_1EBD59DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59DE8);
  }

  return result;
}

uint64_t PeerPaymentIdentityManagementSectionController.__allocating_init(with:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1BD978264();
  v5 = v4;

  return v5;
}

uint64_t PeerPaymentIdentityManagementSectionController.init(with:)(void *a1)
{
  sub_1BD978264();
  v3 = v2;

  return v3;
}

uint64_t PeerPaymentIdentityManagementSectionController.preflight(_:)(uint64_t (*a1)(uint64_t))
{
  swift_getKeyPath();
  sub_1BD38EA34();
  sub_1BE04B584();

  return a1(v2);
}

void *PeerPaymentIdentityManagementSectionController.sectionIdentifiers.getter()
{
  if ([v0 currentSegment] || !objc_msgSend(*&v0[OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_account], sel_supportsDeviceTap) || (PKIsVision() & 1) != 0 || !PKIsPhone() || objc_msgSend(v0, sel_detailViewStyle) == 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F3B8FB30;
  }
}

Swift::String_optional __swiftcall PeerPaymentIdentityManagementSectionController.titleForHeader(inSectionIdentifier:)(Swift::String inSectionIdentifier)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v6, *MEMORY[0x1E69B8050], v1, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v9 = v7;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v2 + 8))(v6, v1);
    v7 = v10;
    v8 = v12;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

Swift::String_optional __swiftcall PeerPaymentIdentityManagementSectionController.titleForFooter(inSectionIdentifier:)(Swift::String inSectionIdentifier)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v6, *MEMORY[0x1E69B8050], v1, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v9 = v7;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v2 + 8))(v6, v1);
    v7 = v10;
    v8 = v12;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void PeerPaymentIdentityManagementSectionController.peerPaymentIdentityManager(_:didUpdateProfileAppearanceData:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    PeerPaymentIdentityManagementSectionController.sectionIdentifiers.getter();
    v1 = sub_1BE052724();

    [v2 reloadSections_];
  }
}

id PeerPaymentIdentityManagementSectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentIdentityManagementSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD978264()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_identityManager;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager()) init];
  swift_unknownObjectWeakInit();
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 account];

    if (v5)
    {
      *&v0[OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_account] = v5;
      v6 = [objc_opt_self() defaultSettings];
      v7 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];

      *&v0[OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_renderer] = v7;
      swift_unknownObjectWeakAssign();
      v8.receiver = v0;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, sel_init);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC5valid3forSbSo09PKPaymentA0C_tFZ_0(void *a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result account];

    if (!v4)
    {
      return 0;
    }

    if ([a1 hasAssociatedPeerPaymentAccount] && !objc_msgSend(a1, sel_passActivationState))
    {
      v5 = [v4 supportsDeviceTap];
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC9tableView_12cellForRowAt17sectionIdentifierSo07UITableK4CellCSgSo0rK0C_10Foundation9IndexPathVSStF_0(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D324();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_identityManager);
  swift_getKeyPath();
  v28[0] = v9;
  sub_1BD38EA34();
  sub_1BE04B594();

  v10 = *(v9 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  v11 = sub_1BE052404();
  v12 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v12)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69DD028]);
    v14 = sub_1BE052404();
    v12 = [v13 initWithStyle:0 reuseIdentifier:v14];
  }

  sub_1BE04D2F4();
  v15 = [v10 displayName];
  sub_1BE052434();

  sub_1BE04D304();
  v16 = [v10 imageData];
  if (!v16)
  {
    v26 = [objc_msgSend(*(v2 + OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_renderer) placeholderImageProvider)];
    swift_unknownObjectRelease();
    sub_1BE04D314();
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = v16;
  v18 = sub_1BE04AAC4();
  v20 = v19;

  v21 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v18, v20);
  v22 = sub_1BE04AAB4();
  [v21 initWithData_];

  sub_1BD1245AC(v18, v20);
  sub_1BE04D314();
  v23 = sub_1BE04D2E4();
  sub_1BE04D2D4();
  v23(v28, 0);
  sub_1BD1245AC(v18, v20);
  if (v12)
  {
LABEL_5:
    [v12 setAccessoryType_];
    v28[3] = v4;
    v28[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
    MEMORY[0x1BFB3FD10](v28);
  }

LABEL_6:

  (*(v5 + 8))(v8, v4);
  return v12;
}

void _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC9tableView_14didSelectRowAt17sectionIdentifierySo07UITableK0C_10Foundation9IndexPathVSStF_0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_identityManager);
  v4 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController());
  v5 = NearbyPeerPaymentAppearancePreferencesViewController.init(context:identityManager:)(2, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong navigationController], v7, v8))
  {
    if ([v8 _pk_settings_useStateDrivenNavigation])
    {
      [v8 _pk_settings_pushViewController_];
    }

    else
    {
      [v8 pushViewController:v5 animated:1];
    }
  }

  else
  {
    v8 = v5;
  }

  v9 = sub_1BE04B3C4();
  [a1 deselectRowAtIndexPath:v9 animated:1];
}

unint64_t sub_1BD9789D0()
{
  result = qword_1EBD59E28;
  if (!qword_1EBD59E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E28);
  }

  return result;
}

uint64_t sub_1BD978A40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD9793C8();
  *a1 = result;
  return result;
}

void sub_1BD978A70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656D69546C6C61;
  v5 = 0xE800000000000000;
  v6 = 0x726165597473616CLL;
  if (v2 != 6)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0x746E6F4D7473616CLL;
  v8 = 0xEB00000000726165;
  if (v2 == 4)
  {
    v8 = 0xE900000000000068;
  }

  else
  {
    v7 = 0x59746E6572727563;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE900000000000079;
  v10 = 0x6164726574736579;
  if (v2 != 2)
  {
    v10 = 0x4D746E6572727563;
    v9 = 0xEC00000068746E6FLL;
  }

  if (*v1)
  {
    v4 = 0x7961646F74;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1BD978B84()
{
  result = qword_1EBD59E30;
  if (!qword_1EBD59E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E30);
  }

  return result;
}

unint64_t sub_1BD978BDC()
{
  result = qword_1EBD59E38;
  if (!qword_1EBD59E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E38);
  }

  return result;
}

unint64_t sub_1BD978C34()
{
  result = qword_1EBD59E40;
  if (!qword_1EBD59E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E40);
  }

  return result;
}

unint64_t sub_1BD978C8C()
{
  result = qword_1EBD59E48;
  if (!qword_1EBD59E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E48);
  }

  return result;
}

unint64_t sub_1BD978CE0()
{
  result = qword_1EBD59E50;
  if (!qword_1EBD59E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E50);
  }

  return result;
}

unint64_t sub_1BD978D38()
{
  result = qword_1EBD59E58;
  if (!qword_1EBD59E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E58);
  }

  return result;
}

uint64_t sub_1BD978D8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAB7B8);
  __swift_project_value_buffer(v15, qword_1EBDAB7B8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD9790A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB7B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD97919C(uint64_t a1)
{
  v2 = sub_1BD871070();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD9791EC()
{
  result = qword_1EBD59E60;
  if (!qword_1EBD59E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E60);
  }

  return result;
}

unint64_t sub_1BD979244()
{
  result = qword_1EBD59E68;
  if (!qword_1EBD59E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E68);
  }

  return result;
}

unint64_t sub_1BD97929C()
{
  result = qword_1EBD59E70;
  if (!qword_1EBD59E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E70);
  }

  return result;
}

uint64_t sub_1BD9792F4()
{
  sub_1BD978D38();

  return sub_1BE048E14();
}

unint64_t sub_1BD979344()
{
  result = qword_1EBD59E78;
  if (!qword_1EBD59E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E78);
  }

  return result;
}

uint64_t sub_1BD9793C8()
{
  v0 = sub_1BE053A44();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BD979414()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v78 = v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v61 - v5;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1BE04A874();
  v11 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v12);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1BE04A884();
  v83 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v19);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59E88);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BED8);
  v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
  v75 = *(*(v22 - 8) + 72);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BE0B76F0;
  v66 = v24;
  v82 = v22;
  v80 = v24 + v23;
  *(v24 + v23) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v25 = v81;
  v70 = __swift_project_value_buffer(v81, qword_1EBDAB400);
  v26 = v11 + 16;
  v72 = *(v11 + 16);
  v72(v14, v70, v25);
  v77 = v10;
  sub_1BE04B0A4();
  sub_1BE04A894();
  v27 = *(v83 + 56);
  v83 += 56;
  v74 = v27;
  v28 = v6;
  v27(v6, 1, 1, v76);
  v79 = sub_1BE048BB4();
  v29 = *(v79 - 8);
  v69 = *(v29 + 56);
  v73 = v29 + 56;
  v69(v78, 1, 1, v79);
  v30 = v80;
  sub_1BE048BD4();
  v71 = v26;
  v65 = *(v82 + 48);
  *(v30 + v75) = 1;
  sub_1BE052354();
  v31 = v70;
  v32 = v81;
  v33 = v72;
  v72(v14, v70, v81);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v34 = v14;
  v35 = v76;
  v74(v28, 1, 1, v76);
  v69(v78, 1, 1, v79);
  sub_1BE048BD4();
  v65 = 2 * v75;
  v63 = (v80 + 2 * v75);
  v64 = *(v82 + 48);
  *v63 = 2;
  sub_1BE052354();
  v33(v34, v31, v32);
  sub_1BE04B0A4();
  v67 = v21;
  sub_1BE04A894();
  v36 = v28;
  v37 = v74;
  v74(v28, 1, 1, v35);
  v69(v78, 1, 1, v79);
  sub_1BE048BD4();
  v38 = v75;
  v39 = v80;
  v40 = *(v82 + 48);
  v64 = v80 + v65 + v75;
  v65 = v40;
  *v64 = 3;
  v61[1] = v18;
  sub_1BE052354();
  v41 = v72;
  v72(v34, v70, v81);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v68 = v36;
  v42 = v76;
  v37(v36, 1, 1, v76);
  v43 = v69;
  v69(v78, 1, 1, v79);
  sub_1BE048BD4();
  v65 = 4 * v38;
  v63 = (v39 + 4 * v38);
  v64 = *(v82 + 48);
  *v63 = 4;
  sub_1BE052354();
  v44 = v34;
  v45 = v70;
  v46 = v81;
  v41(v44, v70, v81);
  sub_1BE04B0A4();
  v47 = v44;
  sub_1BE04A894();
  v74(v68, 1, 1, v42);
  v43(v78, 1, 1, v79);
  sub_1BE048BD4();
  v48 = v75;
  v49 = (v80 + v65 + v75);
  v65 = *(v82 + 48);
  *v49 = 5;
  sub_1BE052354();
  v62 = v47;
  v72(v47, v45, v46);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v50 = v76;
  v51 = v78;
  v52 = v74;
  v74(v68, 1, 1, v76);
  v69(v51, 1, 1, v79);
  sub_1BE048BD4();
  v53 = v80;
  v54 = *(v82 + 48);
  v64 = v80 + 6 * v48;
  v65 = v54;
  *v64 = 6;
  sub_1BE052354();
  v55 = v62;
  v72(v62, v70, v81);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v56 = v68;
  v52(v68, 1, 1, v50);
  v57 = v79;
  v58 = v69;
  v69(v51, 1, 1, v79);
  sub_1BE048BD4();
  *(v53 - v75 + 8 * v75) = 7;
  sub_1BE052354();
  v72(v55, v70, v81);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v74(v56, 1, 1, v76);
  v58(v51, 1, 1, v57);
  sub_1BE048BD4();
  v59 = sub_1BD1AE734(v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v59;
}

uint64_t sub_1BD97A070(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD97A0DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD317324;
}

uint64_t sub_1BD97A17C(uint64_t a1, uint64_t *a2)
{
  sub_1BD97A8E4(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD266DC0(v6, v3 + v4);
  swift_endAccess();
  sub_1BD97A1FC();
  return sub_1BD0DE53C(v6, &qword_1EBD3F678);
}

uint64_t sub_1BD97A1FC()
{
  v1 = v0;
  v2 = sub_1BE04B794();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v50 - v9;
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD97A8E4(&v1[v16], &v58);
  if (!v59)
  {
    return sub_1BD0DE53C(&v58, &qword_1EBD3F678);
  }

  v55 = v6;
  v56 = v3;
  sub_1BD043990(&v58, v60);
  sub_1BE04D094();
  sub_1BD0EE8CC(v60, &v58);
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C54();
  v19 = os_log_type_enabled(v17, v18);
  v57 = v10;
  if (v19)
  {
    v53 = v2;
    v54 = v1;
    v20 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v20;
    *v20 = 138412290;
    v21 = v59;
    v22 = __swift_project_boxed_opaque_existential_1(&v58, v59);
    v50 = &v50;
    v23 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22, v22);
    v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    if (sub_1BE053B54())
    {
      (*(v23 + 8))(v26, v21);
    }

    else
    {
      swift_allocError();
      (*(v23 + 32))(v28, v26, v21);
    }

    v29 = _swift_stdlib_bridgeErrorToNSError();
    __swift_destroy_boxed_opaque_existential_0(&v58);
    v31 = v51;
    v30 = v52;
    *(v52 + 1) = v29;
    *v31 = v29;
    _os_log_impl(&dword_1BD026000, v17, v18, "NearbyPeerPayment: presenting error %@", v30, 0xCu);
    sub_1BD0DE53C(v31, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v31, -1, -1);
    MEMORY[0x1BFB45F20](v30, -1, -1);

    (*(v12 + 8))(v15, v11);
    v2 = v53;
    v1 = v54;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_0(&v58);
  }

  v32 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView];
  __swift_project_boxed_opaque_existential_1(v60, v61);
  sub_1BE04A484();
  __swift_project_boxed_opaque_existential_1(v60, v61);
  sub_1BE04A494();
  v34 = v33;
  v35 = *&v32[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  v36 = sub_1BE052404();

  [v35 setText_];

  v37 = *&v32[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  v38 = v55;
  if (v34)
  {
    v39 = sub_1BE052404();
  }

  else
  {
    v39 = 0;
  }

  v41 = v56;
  v40 = v57;
  [v37 setText_];

  [v32 setNeedsLayout];

  v42 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView];
  __swift_project_boxed_opaque_existential_1(v60, v61);
  sub_1BE04B894();
  (*(v41 + 16))(v38, v40, v2);
  v43 = (*(v41 + 88))(v38, v2);
  if (v43 == *MEMORY[0x1E69B7E90])
  {
    v44 = [objc_opt_self() systemRedColor];
    (*(v41 + 8))(v40, v2);
  }

  else
  {
    v45 = v43;
    v46 = *MEMORY[0x1E69B7E98];
    v47 = objc_opt_self();
    v48 = (v41 + 8);
    if (v45 == v46)
    {
      v44 = [v47 grayColor];
      (*v48)(v40, v2);
    }

    else
    {
      v44 = [v47 systemRedColor];
      v49 = *v48;
      (*v48)(v40, v2);
      v49(v38, v2);
    }
  }

  [v42 setTintColor_];

  sub_1BD97B678();
  [v1 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t sub_1BD97A88C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  return sub_1BD97A8E4(v1 + v3, a1);
}

uint64_t sub_1BD97A8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F678);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD97A954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD266DC0(a1, v1 + v3);
  swift_endAccess();
  sub_1BD97A1FC();
  return sub_1BD0DE53C(a1, &qword_1EBD3F678);
}

uint64_t (*sub_1BD97A9D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD97AA34;
}

uint64_t sub_1BD97AA34(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BD97A1FC();
  }

  return result;
}

id sub_1BD97AA68()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  v5 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentButtonsView(0)) init];
  *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error];
  v7 = type metadata accessor for NearbyPeerPaymentErrorView();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = v0;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BD97AD80();

  return v8;
}

id sub_1BD97ABEC(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v6 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  v7 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView;
  *&v1[v7] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentButtonsView(0)) init];
  *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error];
  v9 = type metadata accessor for NearbyPeerPaymentErrorView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v14.receiver = v1;
  v14.super_class = v9;
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_1BD97AD80();
  }

  return v11;
}

void sub_1BD97AD80()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor_];

  [v2 setAlpha_];
  [v0 addSubview_];
  v5 = [objc_opt_self() configurationWithPointSize:3 weight:63.0];
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView];
  v10 = v5;
  v7 = sub_1BE052404();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v10];

  [v6 setImage_];
  [v6 setContentMode_];
  v9 = [v3 systemRedColor];
  [v6 setTintColor_];

  [v1 addSubview_];
  [v1 addSubview_];
  sub_1BD97B678();
  [v0 addSubview_];
}

id sub_1BD97AFA0()
{
  v72 = *MEMORY[0x1E69E9840];
  v71.receiver = v0;
  v71.super_class = type metadata accessor for NearbyPeerPaymentErrorView();
  objc_msgSendSuper2(&v71, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 safeAreaInsets];
  v10 = v9;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v73.origin.x = v2;
  v73.origin.y = v4;
  v73.size.width = v6;
  v73.size.height = v8;
  CGRectDivide(v73, &slice, &remainder, v10, CGRectMinYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  [v0 safeAreaInsets];
  v16 = v15;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  CGRectDivide(v74, &slice, &remainder, v16, CGRectMaxYEdge);
  v17 = remainder.origin.x;
  v18 = remainder.origin.y;
  v19 = remainder.size.width;
  v20 = remainder.size.height;
  if (PKIsSmallDevice() || (v21 = [v0 traitCollection], v22 = objc_msgSend(v21, sel_preferredContentSizeCategory), v21, LOBYTE(v21) = sub_1BE052E84(), v22, (v21 & 1) != 0))
  {
    v23 = 1;
    v24 = 16.0;
    v25 = 16.0;
  }

  else
  {
    v23 = 0;
    v25 = 24.0;
    v24 = 70.0;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v75.origin.x = v17;
  v75.origin.y = v18;
  v75.size.width = v19;
  v75.size.height = v20;
  CGRectDivide(v75, &slice, &remainder, v24, CGRectMaxYEdge);
  v76 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v76, &slice, &remainder, v25, CGRectMinXEdge);
  v77 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v77, &slice, &remainder, v25, CGRectMaxXEdge);
  v26 = remainder.origin.x;
  v27 = remainder.origin.y;
  v28 = remainder.size.width;
  v29 = remainder.size.height;
  v30 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView];
  [v30 sizeThatFits_];
  v32 = v31;
  PKSizeAlignedInRect();
  [v30 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v78.origin.x = v26;
  v78.origin.y = v27;
  v78.size.width = v28;
  v78.size.height = v29;
  CGRectDivide(v78, &slice, &remainder, v32 + 16.0, CGRectMaxYEdge);
  v33 = remainder.origin.x;
  v34 = remainder.origin.y;
  v35 = remainder.size.width;
  v36 = remainder.size.height;
  [v0 bounds];
  CGRectGetWidth(v79);
  v37 = PKUIPixelLength();
  PKSizeAlignedInRect();
  v38 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider];
  [v38 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v80.origin.x = v33;
  v80.origin.y = v34;
  v80.size.width = v35;
  v80.size.height = v36;
  CGRectDivide(v80, &slice, &remainder, v37, CGRectMaxYEdge);
  v40 = remainder.origin.x;
  v39 = remainder.origin.y;
  v41 = remainder.size.width;
  v42 = remainder.size.height;
  if ((v23 & 1) == 0)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v43 = v40;
    v44 = v41;
    v45 = v42;
    CGRectDivide(*(&v39 - 1), &slice, &remainder, v25, CGRectMinXEdge);
    v81 = remainder;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    CGRectDivide(v81, &slice, &remainder, v25, CGRectMaxXEdge);
    v40 = remainder.origin.x;
    v39 = remainder.origin.y;
    v41 = remainder.size.width;
    v42 = remainder.size.height;
  }

  v46 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView];
  v47 = v40;
  v48 = v39;
  v49 = v41;
  v50 = v42;
  MinY = CGRectGetMinY(*(&v39 - 1));
  [v0 bounds];
  v52 = CGRectGetWidth(v82);
  v83.origin.x = v40;
  v83.origin.y = v48;
  v83.size.width = v41;
  v83.size.height = v42;
  v53 = 0.0;
  [v46 setFrame_];
  v54 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView];
  [v54 sizeThatFits_];
  v56 = v55;
  v57 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView];
  [v57 sizeThatFits_];
  v59 = v56 + v58 + 16.0;
  [v46 frame];
  [v46 setContentSize_];
  v85.origin.y = 0.0;
  v85.origin.x = v40;
  v85.size.width = v41;
  v85.size.height = v42;
  if (v59 >= CGRectGetHeight(v85) - v24)
  {
    [v46 setContentInset_];
    [v46 setContentOffset_];
    [v38 setAlpha_];
  }

  else
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v86.origin.y = 0.0;
    v86.origin.x = v40;
    v86.size.width = v41;
    v86.size.height = v42;
    CGRectDivide(v86, &slice, &remainder, v24, CGRectMinYEdge);
    v60 = remainder.origin.x;
    v61 = remainder.origin.y;
    v62 = remainder.size.width;
    v63 = remainder.size.height;
    v64 = CGRectGetHeight(remainder);
    memset(&slice, 0, sizeof(slice));
    v65 = (v64 - v59) * 0.5;
    memset(&remainder, 0, sizeof(remainder));
    v87.origin.x = v60;
    v87.origin.y = v61;
    v87.size.width = v62;
    v87.size.height = v63;
    CGRectDivide(v87, &slice, &remainder, v65, CGRectMinYEdge);
    v88 = remainder;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    CGRectDivide(v88, &slice, &remainder, v65, CGRectMaxYEdge);
    v40 = remainder.origin.x;
    v53 = remainder.origin.y;
    v41 = remainder.size.width;
    v42 = remainder.size.height;
  }

  PKSizeAlignedInRect();
  v67 = v66;
  [v57 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v89.origin.x = v40;
  v89.origin.y = v53;
  v89.size.width = v41;
  v89.size.height = v42;
  CGRectDivide(v89, &slice, &remainder, v67 + 16.0, CGRectMinYEdge);
  PKSizeAlignedInRect();
  return [v54 setFrame_];
}

id sub_1BD97B678()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v62 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57 - v19;
  v21 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD97A8E4(v0 + v21, &v63);
  if (v64)
  {
    v61 = v13;
    sub_1BD043990(&v63, v65);
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    if (sub_1BE04B8A4())
    {
      v58 = *(v0 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView);
      v22 = *(v2 + 104);
      v60 = *MEMORY[0x1E69B8050];
      v23 = v1;
      v59 = v22;
      v22(v12);
      result = PKPassKitBundle();
      if (result)
      {
        v25 = result;
        v26 = sub_1BE04B6F4();
        v28 = v27;

        v57 = *(v2 + 8);
        v57(v12, v23);
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BD0EE8CC(v65, &v63);
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        sub_1BD043990(&v63, v30 + 24);
        sub_1BE04AFD4();
        v31 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
        v32 = &v20[*(v31 + 20)];
        *v32 = v26;
        v32[1] = v28;
        v33 = &v20[*(v31 + 24)];
        *v33 = sub_1BD97CA30;
        v33[1] = v30;
        v34 = v62;
        v59(v62, v60, v23);
        result = PKPassKitBundle();
        if (result)
        {
          v35 = result;
          v36 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688) + 48)];
          v37 = sub_1BE04B6F4();
          v39 = v38;

          v57(v34, v23);
          v40 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1BD0EE8CC(v65, &v63);
          v41 = swift_allocObject();
          *(v41 + 16) = v40;
          sub_1BD043990(&v63, v41 + 24);
          sub_1BE04AFD4();
          v42 = &v36[*(v31 + 20)];
          *v42 = v37;
          v42[1] = v39;
          v43 = &v36[*(v31 + 24)];
          *v43 = sub_1BD97CA7C;
          v43[1] = v41;
          swift_storeEnumTagMultiPayload();
          v44 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
          v45 = v58;
          swift_beginAccess();
          sub_1BD3BE2EC(v20, v45 + v44);
          swift_endAccess();
          sub_1BD3BB48C();
          sub_1BD97C9D4(v20);
          return __swift_destroy_boxed_opaque_existential_0(v65);
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v65);
  }

  else
  {
    sub_1BD0DE53C(&v63, &qword_1EBD3F678);
  }

  v46 = *(v0 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView);
  v47 = v1;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B8050], v1);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v48 = result;
  v49 = sub_1BE04B6F4();
  v51 = v50;

  (*(v2 + 8))(v5, v47);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE04AFD4();
  v53 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  v54 = &v16[*(v53 + 20)];
  *v54 = v49;
  v54[1] = v51;
  v55 = &v16[*(v53 + 24)];
  *v55 = sub_1BD97C9CC;
  v55[1] = v52;
  swift_storeEnumTagMultiPayload();
  v56 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(v16, v46 + v56);
  swift_endAccess();
  sub_1BD3BB48C();
  return sub_1BD97C9D4(v16);
}

void sub_1BD97BC80(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v39 - v5;
  v7 = sub_1BE04B824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_1BD0EE8CC(a2, &v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0);
    if (swift_dynamicCast())
    {
      sub_1BD043990(v40, v43);
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      sub_1BE04B854();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1BD0DE53C(v6, &unk_1EBD3F6C0);
      }

      else
      {
        (*(v8 + 32))(v11, v6, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B98E0;
        v15 = *MEMORY[0x1E69BA440];
        *(inited + 32) = *MEMORY[0x1E69BA440];
        v39[1] = inited + 32;
        v16 = sub_1BE052434();
        v17 = MEMORY[0x1E69BABE8];
        *(inited + 40) = v16;
        *(inited + 48) = v18;
        v19 = *v17;
        *(inited + 56) = *v17;
        v20 = sub_1BE052434();
        v21 = MEMORY[0x1E69BAFB0];
        *(inited + 64) = v20;
        *(inited + 72) = v22;
        v23 = *v21;
        *(inited + 80) = *v21;
        v24 = sub_1BE052434();
        v25 = MEMORY[0x1E69BAF60];
        *(inited + 88) = v24;
        *(inited + 96) = v26;
        v27 = *v25;
        *(inited + 104) = *v25;
        *(inited + 112) = sub_1BE052434();
        *(inited + 120) = v28;
        v29 = v15;
        v30 = v19;
        v31 = v23;
        v32 = v27;
        v33 = sub_1BD1AAF50(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
        swift_arrayDestroy();
        _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v33);

        v34 = sub_1BE052434();
        _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v34, v35);

        (*(v8 + 8))(v11, v7);
      }

      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    else
    {
      v41 = 0;
      memset(v40, 0, sizeof(v40));
      sub_1BD0DE53C(v40, &qword_1EBD3F6E8);
    }

    v36 = &v13[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 1);
      ObjectType = swift_getObjectType();
      (*(v37 + 16))(v13, ObjectType, v37);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD97C094(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - v5;
  v7 = sub_1BE04B824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_1BD0EE8CC(a2, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0);
    if (swift_dynamicCast())
    {
      sub_1BD043990(v19, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      sub_1BE04B854();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1BD0DE53C(v6, &unk_1EBD3F6C0);
      }

      else
      {
        (*(v8 + 32))(v11, v6, v7);
        v14 = sub_1BE052434();
        _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v14, v15);

        (*(v8 + 8))(v11, v7);
      }

      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      sub_1BD0DE53C(v19, &qword_1EBD3F6E8);
    }

    v16 = &v13[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 1);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v13, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD97C380()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_1BE04B824();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
    swift_beginAccess();
    sub_1BD97A8E4(&v10[v11], v21);
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_1BD043990(&v18, v21);
          __swift_project_boxed_opaque_existential_1(v21, v22);
          sub_1BE04B854();
          if ((*(v5 + 48))(v3, 1, v4) == 1)
          {
            sub_1BD0DE53C(v3, &unk_1EBD3F6C0);
          }

          else
          {
            (*(v5 + 32))(v8, v3, v4);
            v15 = sub_1BE052434();
            _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v15, v16);

            (*(v5 + 8))(v8, v4);
          }

          __swift_destroy_boxed_opaque_existential_0(v21);
          goto LABEL_10;
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }
    }

    else
    {
      sub_1BD0DE53C(v21, &qword_1EBD3F678);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_1BD0DE53C(&v18, &qword_1EBD3F6E8);
LABEL_10:
    v12 = &v10[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(v10, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id NearbyPeerPaymentErrorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentErrorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentErrorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD97C9D4(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_6Tm_1()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v147 = a8;
  v148 = a6;
  v149 = a7;
  v150 = a4;
  v15 = sub_1BE04BD74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v145 - v22;
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v145 - v26;
  if (a3)
  {
    v152 = a3;
    if (a5)
    {
LABEL_3:
      sub_1BE048C84();
      v151 = a5;
      goto LABEL_8;
    }
  }

  else
  {
    (*(v16 + 104))(&v145 - v26, *MEMORY[0x1E69B80D0], v15, v27.n128_f64[0]);
    v29 = PKPassKitBundle();
    if (!v29)
    {
      __break(1u);
      goto LABEL_57;
    }

    v30 = v29;
    a2 = sub_1BE04B6F4();
    v152 = v31;

    (*(v16 + 8))(v28, v15);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  (*(v16 + 104))(v23, *MEMORY[0x1E69B80D8], v15, v27);
  sub_1BE048C84();
  v32 = PKPassKitBundle();
  if (!v32)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v33 = v32;
  v150 = sub_1BE04B6F4();
  v151 = v34;

  (*(v16 + 8))(v23, v15);
LABEL_8:
  v146 = a9;
  sub_1BE048C84();
  v35 = [a1 localizedTitle];
  sub_1BE052434();

  v36 = [a1 localizedMessage];
  sub_1BE052434();

  v37 = sub_1BE052404();

  v38 = sub_1BE052404();

  v39 = [objc_opt_self() alertControllerWithTitle:v37 message:v38 preferredStyle:1];

  PKApplyDefaultIconToAlertController(v39);
  v40 = [a1 severity];
  if (v40 > 3)
  {
    if (v40 > 5)
    {
      if (v40 == 6)
      {

        v77 = swift_allocObject();
        *(v77 + 16) = v147;
        *(v77 + 24) = v146;
        sub_1BE048964();
        v42 = sub_1BE052404();

        v155 = sub_1BD267328;
        v156 = v77;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v154 = sub_1BD198918;
        *(&v154 + 1) = &block_descriptor_12_8;
        v43 = _Block_copy(&aBlock);

        v44 = [objc_opt_self() actionWithTitle:v42 style:1 handler:v43];
        goto LABEL_42;
      }

      if (v40 == 7)
      {

        v112 = [a1 localizedRecoveryDescription];
        if (!v112)
        {
          v133 = swift_allocObject();
          *(v133 + 16) = v147;
          *(v133 + 24) = v146;
          sub_1BE048964();
          v42 = sub_1BE052404();

          v155 = sub_1BD267328;
          v156 = v133;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v154 = sub_1BD198918;
          *(&v154 + 1) = &block_descriptor_223;
          v43 = _Block_copy(&aBlock);

          v44 = [objc_opt_self() actionWithTitle:v42 style:1 handler:v43];
          goto LABEL_42;
        }

        v113 = v112;
        sub_1BE052434();

        v114 = swift_allocObject();
        v115 = v146;
        v114[2] = v145;
        v114[3] = a1;
        v114[4] = v147;
        v114[5] = v115;
        v114[6] = 0;
        v114[7] = 0;
        v116 = a1;
        sub_1BE048964();
        v117 = sub_1BE052404();

        v155 = sub_1BD9803F8;
        v156 = v114;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v154 = sub_1BD198918;
        *(&v154 + 1) = &block_descriptor_6_2;
        v118 = _Block_copy(&aBlock);

        v75 = [objc_opt_self() actionWithTitle:v117 style:0 handler:v118];
        _Block_release(v118);

        [v39 addAction_];
        v119 = [v116 userInfo];
        v120 = sub_1BE052244();

        v121 = sub_1BE052434();
        if (*(v120 + 16))
        {
          v123 = v39;
          v124 = sub_1BD148F70(v121, v122);
          v126 = v125;

          if (v126)
          {
            sub_1BD038CD0(*(v120 + 56) + 32 * v124, &aBlock);

            sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
            v39 = v123;
            [v123 setPreferredAction_];

            goto LABEL_49;
          }

          v39 = v123;
        }

        else
        {
        }

        aBlock = 0u;
        v154 = 0u;
        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);

        return v39;
      }

      goto LABEL_59;
    }

    if (v40 != 4)
    {

      v78 = swift_allocObject();
      v80 = v146;
      v79 = v147;
      *(v78 + 16) = v147;
      *(v78 + 24) = v80;
      sub_1BE048964();
      v81 = sub_1BE052404();

      v155 = sub_1BD267328;
      v156 = v78;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v154 = sub_1BD198918;
      *(&v154 + 1) = &block_descriptor_18_3;
      v82 = _Block_copy(&aBlock);

      v83 = objc_opt_self();
      v84 = [v83 actionWithTitle:v81 style:1 handler:v82];
      _Block_release(v82);

      [v39 addAction_];
      v85 = [a1 localizedRecoveryDescription];
      if (!v85)
      {
        return v39;
      }

      v86 = v85;
      sub_1BE052434();

      v87 = swift_allocObject();
      v152 = v39;
      v88 = v87;
      v87[2] = v145;
      v87[3] = a1;
      v87[4] = v79;
      v87[5] = v80;
      v87[6] = 0;
      v87[7] = 0;
      v89 = a1;
      sub_1BE048964();
      v90 = sub_1BE052404();

      v155 = sub_1BD981080;
      v156 = v88;
      v39 = v152;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v154 = sub_1BD198918;
      *(&v154 + 1) = &block_descriptor_25_6;
      v91 = _Block_copy(&aBlock);

      v75 = [v83 actionWithTitle:v90 style:0 handler:v91];
      _Block_release(v91);

      [v39 addAction_];
      v76 = [v89 userInfo];
      goto LABEL_24;
    }

    v45 = v39;
    v46 = [a1 localizedRecoveryDescription];
    if (!v46)
    {
      v127 = swift_allocObject();
      *(v127 + 16) = v148;
      *(v127 + 24) = v149;
      sub_1BE048964();
      v128 = v152;
      v129 = sub_1BE052404();
      v155 = sub_1BD267328;
      v156 = v127;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v154 = sub_1BD198918;
      *(&v154 + 1) = &block_descriptor_31_4;
      v130 = _Block_copy(&aBlock);

      v131 = objc_opt_self();
      v132 = [v131 actionWithTitle:v129 style:0 handler:v130];
      _Block_release(v130);

      [v45 addAction_];
      if (a2 == v150 && v128 == v151)
      {
      }

      else
      {
        v141 = sub_1BE053B84();

        if ((v141 & 1) == 0)
        {
          v142 = swift_allocObject();
          *(v142 + 16) = v147;
          *(v142 + 24) = v146;
          sub_1BE048964();
          v143 = sub_1BE052404();

          v155 = sub_1BD267328;
          v156 = v142;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v154 = sub_1BD198918;
          *(&v154 + 1) = &block_descriptor_37_4;
          v144 = _Block_copy(&aBlock);

          v75 = [v131 actionWithTitle:v143 style:1 handler:v144];
          _Block_release(v144);

          v39 = v45;
          [v45 addAction_];
          goto LABEL_49;
        }
      }

      return v45;
    }

    v47 = v46;
    sub_1BE052434();

    v48 = swift_allocObject();
    v48[2] = v145;
    v48[3] = a1;
    v48[4] = v148;
    v48[5] = v149;
    v48[6] = a10;
    v48[7] = a11;
    sub_1BE048964();
    v49 = a1;
    sub_1BD0D44B8(a10);
    v50 = sub_1BE052404();

    v155 = sub_1BD981080;
    v156 = v48;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v154 = sub_1BD198918;
    *(&v154 + 1) = &block_descriptor_44_2;
    v51 = _Block_copy(&aBlock);

    v52 = objc_opt_self();
    v53 = [v52 actionWithTitle:v50 style:0 handler:v51];
    _Block_release(v51);

    v39 = v45;
    [v45 addAction_];
    v54 = [v49 userInfo];
    v55 = sub_1BE052244();

    v56 = sub_1BE052434();
    if (*(v55 + 16))
    {
      v58 = sub_1BD148F70(v56, v57);
      v60 = v59;

      if (v60)
      {
        sub_1BD038CD0(*(v55 + 56) + 32 * v58, &aBlock);

        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
        v39 = v45;
        [v45 setPreferredAction_];

        goto LABEL_47;
      }

      v39 = v45;
    }

    else
    {
    }

    aBlock = 0u;
    v154 = 0u;
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);

LABEL_47:
    v136 = v146;
    v135 = v147;
    v137 = swift_allocObject();
    *(v137 + 16) = v135;
    *(v137 + 24) = v136;
    sub_1BE048964();
    v138 = sub_1BE052404();

    v155 = sub_1BD267328;
    v156 = v137;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v154 = sub_1BD198918;
    *(&v154 + 1) = &block_descriptor_50_6;
    v139 = _Block_copy(&aBlock);

    v75 = [v52 actionWithTitle:v138 style:1 handler:v139];
    _Block_release(v139);

    [v39 addAction_];
    goto LABEL_49;
  }

  if (v40 < 2)
  {

    v41 = swift_allocObject();
    *(v41 + 16) = v148;
    *(v41 + 24) = v149;
    sub_1BE048964();
    v42 = sub_1BE052404();

    v155 = sub_1BD267328;
    v156 = v41;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v154 = sub_1BD198918;
    *(&v154 + 1) = &block_descriptor_81_3;
    v43 = _Block_copy(&aBlock);

    v44 = [objc_opt_self() actionWithTitle:v42 style:0 handler:v43];
LABEL_42:
    v134 = v44;
    _Block_release(v43);

    [v39 addAction_];
    return v39;
  }

  if (v40 == 2)
  {

    v61 = swift_allocObject();
    v63 = v148;
    v62 = v149;
    *(v61 + 16) = v148;
    *(v61 + 24) = v62;
    sub_1BE048964();
    v64 = sub_1BE052404();

    v155 = sub_1BD214190;
    v156 = v61;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v154 = sub_1BD198918;
    *(&v154 + 1) = &block_descriptor_68_0;
    v65 = _Block_copy(&aBlock);

    v66 = objc_opt_self();
    v67 = [v66 actionWithTitle:v64 style:0 handler:v65];
    _Block_release(v65);

    [v39 addAction_];
    v68 = [a1 localizedRecoveryDescription];
    if (!v68)
    {
      return v39;
    }

    v69 = v68;
    sub_1BE052434();

    v70 = swift_allocObject();
    v152 = v39;
    v71 = v70;
    v70[2] = v145;
    v70[3] = a1;
    v70[4] = v63;
    v70[5] = v62;
    v70[6] = 0;
    v70[7] = 0;
    sub_1BE048964();
    v72 = a1;
    v73 = sub_1BE052404();

    v155 = sub_1BD981080;
    v156 = v71;
    v39 = v152;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v154 = sub_1BD198918;
    *(&v154 + 1) = &block_descriptor_75_3;
    v74 = _Block_copy(&aBlock);

    v75 = [v66 actionWithTitle:v73 style:0 handler:v74];
    _Block_release(v74);

    [v39 addAction_];
    v76 = [v72 userInfo];
LABEL_24:
    v92 = v76;
    v93 = sub_1BE052244();

    v94 = sub_1BE052434();
    if (*(v93 + 16))
    {
      v96 = sub_1BD148F70(v94, v95);
      v98 = v97;

      if (v98)
      {
        sub_1BD038CD0(*(v93 + 56) + 32 * v96, &aBlock);

        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
        v39 = v152;
        [v152 setPreferredAction_];
LABEL_49:

        return v39;
      }

      v39 = v152;
    }

    else
    {
    }

    aBlock = 0u;
    v154 = 0u;
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
    return v39;
  }

  if (v40 == 3)
  {
    v99 = v39;

    (*(v16 + 104))(v19, *MEMORY[0x1E69B80D8], v15);
    v100 = PKPassKitBundle();
    v102 = v148;
    v101 = v149;
    if (v100)
    {
      v103 = v100;
      sub_1BE04B6F4();

      (*(v16 + 8))(v19, v15);
      v104 = swift_allocObject();
      *(v104 + 16) = v102;
      *(v104 + 24) = v101;
      sub_1BE048964();
      v105 = sub_1BE052404();

      v155 = sub_1BD267328;
      v156 = v104;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v154 = sub_1BD198918;
      *(&v154 + 1) = &block_descriptor_56_1;
      v106 = _Block_copy(&aBlock);

      v107 = objc_opt_self();
      v108 = [v107 actionWithTitle:v105 style:0 handler:v106];
      _Block_release(v106);

      [v99 addAction_];
      v109 = swift_allocObject();
      *(v109 + 16) = v147;
      *(v109 + 24) = v146;
      sub_1BE048964();
      v110 = sub_1BE052404();

      v155 = sub_1BD267328;
      v156 = v109;
      v39 = v99;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v154 = sub_1BD198918;
      *(&v154 + 1) = &block_descriptor_62_1;
      v111 = _Block_copy(&aBlock);

      v75 = [v107 actionWithTitle:v110 style:1 handler:v111];
      _Block_release(v111);

      [v99 addAction_];
      goto LABEL_49;
    }

    goto LABEL_58;
  }

LABEL_59:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD97E16C()
{
  v1 = v0;
  sub_1BE0528A4();
  sub_1BD980AD0(v0, &v25);
  v2 = sub_1BE052894();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(v0 + 80);
  *(v3 + 96) = *(v0 + 64);
  *(v3 + 112) = v5;
  *(v3 + 128) = *(v0 + 96);
  v6 = *(v0 + 16);
  *(v3 + 32) = *v0;
  *(v3 + 48) = v6;
  v7 = *(v0 + 48);
  *(v3 + 64) = *(v0 + 32);
  *(v3 + 80) = v7;
  sub_1BD980AD0(v0, &v25);
  v8 = sub_1BE052894();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v4;
  v10 = *(v1 + 80);
  *(v9 + 96) = *(v1 + 64);
  *(v9 + 112) = v10;
  *(v9 + 128) = *(v1 + 96);
  v11 = *(v1 + 16);
  *(v9 + 32) = *v1;
  *(v9 + 48) = v11;
  v12 = *(v1 + 48);
  *(v9 + 64) = *(v1 + 32);
  *(v9 + 80) = v12;
  sub_1BE051924();
  v25 = *v1;
  v26 = *(v1 + 16);
  v23 = *v1;
  v24 = *(v1 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EC8);
  MEMORY[0x1BFB3E970](v22);
  v14 = v22[0];
  if (v22[0])
  {
    v15 = [v22[0] localizedTitle];

    v14 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v22[0] = v14;
  v22[1] = v17;
  v23 = v25;
  v24 = v26;
  v18 = MEMORY[0x1BFB3E970](&v21, v13);
  v19 = v21;
  *&v23 = v21;
  MEMORY[0x1EEE9AC00](v18, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59ED8);
  sub_1BD0E5E8C(0, qword_1EBD45AD0);
  sub_1BD0DE4F4(&qword_1EBD59EE0, &qword_1EBD59ED0);
  sub_1BD0DDEBC();
  sub_1BD980BA8();
  sub_1BE050F14();
}

void sub_1BD97E4E0(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EC8);
  MEMORY[0x1BFB3E970](&v5, v3);
  v4 = v5;
  if (v5)
  {
  }

  *a2 = v4 != 0;
}

_BYTE *sub_1BD97E550(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EC8);
    return sub_1BE0518F4();
  }

  return result;
}

uint64_t sub_1BD97E5B8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v170 = a3;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F40);
  MEMORY[0x1EEE9AC00](v151, v5);
  v152 = &v143 - v6;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F38);
  MEMORY[0x1EEE9AC00](v174, v7);
  v153 = &v143 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F48);
  MEMORY[0x1EEE9AC00](v154, v9);
  v157 = &v143 - v10;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F18);
  MEMORY[0x1EEE9AC00](v168, v11);
  v156 = &v143 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F28);
  MEMORY[0x1EEE9AC00](v155, v13);
  v148 = &v143 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v149 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v158 = &v143 - v20;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80);
  MEMORY[0x1EEE9AC00](v163, v21);
  v146 = &v143 - v22;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F50);
  MEMORY[0x1EEE9AC00](v172, v23);
  v173 = &v143 - v24;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F58);
  MEMORY[0x1EEE9AC00](v164, v25);
  v166 = &v143 - v26;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F60);
  MEMORY[0x1EEE9AC00](v160, v27);
  v161 = &v143 - v28;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F08);
  MEMORY[0x1EEE9AC00](v165, v29);
  v162 = &v143 - v30;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EF8);
  MEMORY[0x1EEE9AC00](v171, v31);
  v167 = &v143 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v175 = *(v33 - 8);
  v176 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v159 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v145 = &v143 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v144 = &v143 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v150 = &v143 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v143 - v47;
  v49 = sub_1BE04BD74();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v143 - v54;
  v59.n128_f64[0] = MEMORY[0x1EEE9AC00](v56, v57);
  v60 = &v143 - v58;
  v61 = *a1;
  v62 = *(a2 + 32);
  v147 = v63;
  if (v62)
  {
    v169 = *(a2 + 24);
    v64 = v62;
    v65 = *(a2 + 48);
    if (v65)
    {
LABEL_3:
      v66 = *(a2 + 40);
      sub_1BE048C84();
      v67 = v65;
      goto LABEL_8;
    }
  }

  else
  {
    v68 = v48;
    (*(v50 + 104))(&v143 - v58, *MEMORY[0x1E69B80D0], v49, v59.n128_f64[0]);
    v69 = PKPassKitBundle();
    if (!v69)
    {
      __break(1u);
      goto LABEL_31;
    }

    v70 = v69;
    v169 = sub_1BE04B6F4();
    v64 = v71;

    (*(v50 + 8))(v60, v49);
    v48 = v68;
    v65 = *(a2 + 48);
    if (v65)
    {
      goto LABEL_3;
    }
  }

  (*(v50 + 104))(v55, *MEMORY[0x1E69B80D8], v49, v59);
  sub_1BE048C84();
  v72 = PKPassKitBundle();
  if (!v72)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v73 = v72;
  v66 = sub_1BE04B6F4();
  v67 = v74;

  (*(v50 + 8))(v55, v49);
LABEL_8:
  sub_1BE048C84();
  v75 = [v61 severity];
  if (v75 <= 3)
  {
    if (v75 < 3)
    {

      v178 = v169;
      v179 = v64;
      v76 = swift_allocObject();
      v77 = *(a2 + 80);
      *(v76 + 80) = *(a2 + 64);
      *(v76 + 96) = v77;
      *(v76 + 112) = *(a2 + 96);
      v78 = *(a2 + 16);
      *(v76 + 16) = *a2;
      *(v76 + 32) = v78;
      v79 = *(a2 + 48);
      *(v76 + 48) = *(a2 + 32);
      *(v76 + 64) = v79;
      sub_1BD980AD0(a2, v177);
      sub_1BD0DDEBC();
      sub_1BE051744();
      v81 = v175;
      v80 = v176;
      (*(v175 + 2))(v161, v48, v176);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
      sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
      v82 = v162;
      sub_1BE04F9A4();
      v83 = &qword_1EBD59F08;
      sub_1BD0DE19C(v82, v166, &qword_1EBD59F08);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      sub_1BD980CC0();
      sub_1BD980DA4();
      v88 = v167;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v82, v83);
      v89 = &qword_1EBD59EF8;
      sub_1BD0DE19C(v88, v173, &qword_1EBD59EF8);
      goto LABEL_23;
    }

    if (v75 == 3)
    {
      v97 = v66;

      v98 = v147;
      (*(v50 + 104))(v147, *MEMORY[0x1E69B80D8], v49);
      v99 = PKPassKitBundle();
      if (v99)
      {
        v100 = v99;
        v101 = sub_1BE04B6F4();
        v103 = v102;

        (*(v50 + 8))(v98, v49);
        v178 = v101;
        v179 = v103;
        v104 = swift_allocObject();
        v105 = *(a2 + 80);
        *(v104 + 80) = *(a2 + 64);
        *(v104 + 96) = v105;
        *(v104 + 112) = *(a2 + 96);
        v106 = *(a2 + 16);
        *(v104 + 16) = *a2;
        *(v104 + 32) = v106;
        v107 = *(a2 + 48);
        *(v104 + 48) = *(a2 + 32);
        *(v104 + 64) = v107;
        sub_1BD980AD0(a2, v177);
        sub_1BD0DDEBC();
        v108 = v150;
        sub_1BE051744();
        v178 = v97;
        v179 = v67;
        v109 = swift_allocObject();
        v110 = *(a2 + 80);
        *(v109 + 80) = *(a2 + 64);
        *(v109 + 96) = v110;
        *(v109 + 112) = *(a2 + 96);
        v111 = *(a2 + 16);
        *(v109 + 16) = *a2;
        *(v109 + 32) = v111;
        v112 = *(a2 + 48);
        *(v109 + 48) = *(a2 + 32);
        *(v109 + 64) = v112;
        sub_1BD980AD0(a2, v177);
        sub_1BE051744();
        v114 = v175;
        v113 = v176;
        v115 = *(v175 + 2);
        v116 = v144;
        v115(v144, v108, v176);
        v117 = v145;
        v115(v145, v48, v113);
        v118 = v146;
        v115(v146, v116, v113);
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98);
        v115((v118 + *(v119 + 48)), v117, v113);
        v120 = *(v114 + 1);
        v120(v117, v113);
        v120(v116, v113);
        sub_1BD0DE19C(v118, v161, &qword_1EBD40D80);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
        sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
        v121 = v162;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v121, v166, &qword_1EBD59F08);
        swift_storeEnumTagMultiPayload();
        sub_1BD980CC0();
        sub_1BD980DA4();
        v175 = v48;
        v122 = v167;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v121, &qword_1EBD59F08);
        sub_1BD0DE19C(v122, v173, &qword_1EBD59EF8);
        swift_storeEnumTagMultiPayload();
        sub_1BD980C34();
        sub_1BD980E88();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v122, &qword_1EBD59EF8);
        sub_1BD0DE53C(v118, &qword_1EBD40D80);
        v120(v175, v113);
        return (v120)(v150, v113);
      }

      goto LABEL_32;
    }

LABEL_33:
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  if ((v75 - 6) >= 2)
  {
    if (v75 != 4)
    {
      if (v75 == 5)
      {

        v178 = v66;
        v179 = v67;
        v124 = swift_allocObject();
        v125 = *(a2 + 80);
        *(v124 + 80) = *(a2 + 64);
        *(v124 + 96) = v125;
        *(v124 + 112) = *(a2 + 96);
        v126 = *(a2 + 16);
        *(v124 + 16) = *a2;
        *(v124 + 32) = v126;
        v127 = *(a2 + 48);
        *(v124 + 48) = *(a2 + 32);
        *(v124 + 64) = v127;
        sub_1BD980AD0(a2, v177);
        sub_1BD0DDEBC();
        sub_1BE051744();
        v81 = v175;
        v80 = v176;
        (*(v175 + 2))(v157, v48, v176);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD59F20, &qword_1EBD59F28);
        sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
        v82 = v156;
        sub_1BE04F9A4();
        v83 = &qword_1EBD59F18;
        sub_1BD0DE19C(v82, v166, &qword_1EBD59F18);
        goto LABEL_22;
      }

      goto LABEL_33;
    }

    v90 = v169;
    v178 = v169;
    v179 = v64;
    v91 = swift_allocObject();
    v92 = *(a2 + 80);
    *(v91 + 80) = *(a2 + 64);
    *(v91 + 96) = v92;
    *(v91 + 112) = *(a2 + 96);
    v93 = *(a2 + 16);
    *(v91 + 16) = *a2;
    *(v91 + 32) = v93;
    v94 = *(a2 + 48);
    *(v91 + 48) = *(a2 + 32);
    *(v91 + 64) = v94;
    sub_1BD980AD0(a2, v177);
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE051744();
    if (v90 == v66 && v64 == v67)
    {

      v95 = v157;
      v96 = v149;
    }

    else
    {
      v128 = sub_1BE053B84();

      v96 = v149;
      if ((v128 & 1) == 0)
      {
        v178 = v66;
        v179 = v67;
        v130 = swift_allocObject();
        v131 = *(a2 + 80);
        *(v130 + 80) = *(a2 + 64);
        *(v130 + 96) = v131;
        *(v130 + 112) = *(a2 + 96);
        v132 = *(a2 + 16);
        *(v130 + 16) = *a2;
        *(v130 + 32) = v132;
        v133 = *(a2 + 48);
        *(v130 + 48) = *(a2 + 32);
        *(v130 + 64) = v133;
        sub_1BD980AD0(a2, v177);
        sub_1BE051744();
        (*(v175 + 4))(v158, v48, v176);
        v129 = 0;
        v95 = v157;
        goto LABEL_29;
      }

      v95 = v157;
    }

    v129 = 1;
LABEL_29:
    v134 = v175;
    v135 = v176;
    v136 = v158;
    (*(v175 + 7))(v158, v129, 1, v176);
    v137 = *(v134 + 2);
    v137(v48, v159, v135);
    sub_1BD0DE19C(v136, v96, &qword_1EBD3C248);
    v138 = v148;
    v137(v148, v48, v135);
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F68);
    sub_1BD0DE19C(v96, v138 + *(v139 + 48), &qword_1EBD3C248);
    sub_1BD0DE53C(v96, &qword_1EBD3C248);
    v140 = *(v134 + 1);
    v140(v48, v135);
    sub_1BD0DE19C(v138, v95, &qword_1EBD59F28);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD59F20, &qword_1EBD59F28);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v141 = v156;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v141, v166, &qword_1EBD59F18);
    swift_storeEnumTagMultiPayload();
    sub_1BD980CC0();
    sub_1BD980DA4();
    v142 = v167;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v141, &qword_1EBD59F18);
    sub_1BD0DE19C(v142, v173, &qword_1EBD59EF8);
    swift_storeEnumTagMultiPayload();
    sub_1BD980C34();
    sub_1BD980E88();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v142, &qword_1EBD59EF8);
    sub_1BD0DE53C(v138, &qword_1EBD59F28);
    sub_1BD0DE53C(v158, &qword_1EBD3C248);
    return (v140)(v159, v135);
  }

  v178 = v169;
  v179 = v64;
  v84 = swift_allocObject();
  v85 = *(a2 + 80);
  *(v84 + 80) = *(a2 + 64);
  *(v84 + 96) = v85;
  *(v84 + 112) = *(a2 + 96);
  v86 = *(a2 + 16);
  *(v84 + 16) = *a2;
  *(v84 + 32) = v86;
  v87 = *(a2 + 48);
  *(v84 + 48) = *(a2 + 32);
  *(v84 + 64) = v87;
  sub_1BD980AD0(a2, v177);
  sub_1BD0DDEBC();
  sub_1BE051744();
  v81 = v175;
  v80 = v176;
  (*(v175 + 2))(v152, v48, v176);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v88 = v153;
  sub_1BE04F9A4();
  v89 = &qword_1EBD59F38;
  sub_1BD0DE19C(v88, v173, &qword_1EBD59F38);
LABEL_23:
  swift_storeEnumTagMultiPayload();
  sub_1BD980C34();
  sub_1BD980E88();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v88, v89);
  return (*(v81 + 1))(v48, v80);
}

uint64_t sub_1BD97FCF4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 localizedMessage];
  sub_1BE052434();

  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

BOOL sub_1BD97FDC8(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = [a2 localizedRecoveryDescription];
  if (v13)
  {
    v14 = v13;
    sub_1BE052434();
    v28 = a1;

    v15 = swift_allocObject();
    v15[2] = v6;
    v15[3] = a2;
    v15[4] = a3;
    v15[5] = a4;
    v15[6] = a5;
    v15[7] = a6;
    v16 = a2;
    sub_1BE048964();
    sub_1BD0D44B8(a5);
    v17 = sub_1BE052404();

    v31 = sub_1BD981080;
    v32 = v15;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v30 = sub_1BD198918;
    *(&v30 + 1) = &block_descriptor_107_2;
    v18 = _Block_copy(&aBlock);

    v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];
    _Block_release(v18);

    [v28 addAction_];
    v20 = [v16 userInfo];
    v21 = sub_1BE052244();

    v22 = sub_1BE052434();
    if (*(v21 + 16))
    {
      v24 = sub_1BD148F70(v22, v23);
      v26 = v25;

      if (v26)
      {
        sub_1BD038CD0(*(v21 + 56) + 32 * v24, &aBlock);

        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
        [v28 setPreferredAction_];

LABEL_7:
        v13 = v14;
        return v13 != 0;
      }
    }

    else
    {
    }

    aBlock = 0u;
    v30 = 0u;
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
    goto LABEL_7;
  }

  return v13 != 0;
}

id sub_1BD980080(int a1, int a2, void *a3, void *a4, void *a5, void *aBlock, const void *a7, const void *a8)
{
  v12 = _Block_copy(aBlock);
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
  if (a4)
  {
    v15 = sub_1BE052434();
    a4 = v16;
    if (a5)
    {
LABEL_3:
      v17 = sub_1BE052434();
      a5 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  if (v14)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    v14 = sub_1BD167418;
  }

  else
  {
    v21 = 0;
  }

  swift_getObjCClassMetadata();
  v22 = a3;
  v23 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(v22, v15, a4, v17, a5, sub_1BD167418, v19, sub_1BD167418, v20, v14, v21);
  sub_1BD0D4744(v14);

  return v23;
}

uint64_t sub_1BD980258(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  sub_1BD98055C(a3);
  v18 = [a3 recoveryUrl];
  if (v18)
  {
    v19 = v18;
    sub_1BE04A9F4();

    (*(v10 + 32))(v17, v13, v9);
    v20 = sub_1BE04A9C4();
    PKOpenURL();

    a4();
    return (*(v10 + 8))(v17, v9);
  }

  else if (a6)
  {
    return a6();
  }

  else
  {
    return (a4)();
  }
}

BOOL sub_1BD9803FC(int a1, int a2, void *a3, void *a4, void *aBlock, const void *a6)
{
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  if (v10)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v10 = sub_1BD167418;
  }

  else
  {
    v12 = 0;
  }

  swift_getObjCClassMetadata();
  v13 = a3;
  v14 = a4;
  v15 = sub_1BD97FDC8(v13, v14, sub_1BD166E88, v11, v10, v12);
  sub_1BD0D4744(v10);

  return v15;
}

void sub_1BD980520(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  sub_1BD98055C(v3);
}

void sub_1BD98055C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v2 = swift_allocObject();
  v48 = xmmword_1BE0B98D0;
  *(v2 + 16) = xmmword_1BE0B98D0;
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BB6E8];
  *(v2 + 32) = *MEMORY[0x1E69BB6E0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E69BB728];
  *(v2 + 48) = *MEMORY[0x1E69BB728];
  v6 = v3;
  v7 = v4;
  v8 = v5;
  if (![a1 underlyingError])
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  sub_1BD0E5E8C(0, &qword_1EBD45E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [v49 domain];
  v10 = sub_1BE052434();
  v12 = v11;

  if (v10 == sub_1BE052434() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_1BE053B84();

    if ((v14 & 1) == 0)
    {
LABEL_10:

LABEL_11:
      v33 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v17 = sub_1BE052724();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = v48;
      v35 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v36 = sub_1BE052434();
      v37 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v36;
      *(inited + 48) = v38;
      v39 = *v37;
      *(inited + 56) = *v37;
      v40 = sub_1BE052434();
      v41 = MEMORY[0x1E69BA440];
      *(inited + 64) = v40;
      *(inited + 72) = v42;
      v43 = *v41;
      *(inited + 80) = *v41;
      *(inited + 88) = sub_1BE052434();
      *(inited + 96) = v44;
      v45 = v35;
      v46 = v39;
      v47 = v43;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v32 = sub_1BE052224();

      [v33 subjects:v17 sendEvent:v32];
      goto LABEL_12;
    }
  }

  v15 = [v49 code];
  if ((v15 & 0x8000000000000000) != 0 || v15 != 6)
  {
    goto LABEL_10;
  }

  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsSubject(0);
  v17 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  v18 = swift_initStackObject();
  *(v18 + 16) = v48;
  v19 = *MEMORY[0x1E69BA680];
  *(v18 + 32) = *MEMORY[0x1E69BA680];
  v20 = sub_1BE052434();
  v21 = MEMORY[0x1E69BABE8];
  *(v18 + 40) = v20;
  *(v18 + 48) = v22;
  v23 = *v21;
  *(v18 + 56) = *v21;
  v24 = sub_1BE052434();
  v25 = MEMORY[0x1E69BA440];
  *(v18 + 64) = v24;
  *(v18 + 72) = v26;
  v27 = *v25;
  *(v18 + 80) = *v25;
  *(v18 + 88) = sub_1BE052434();
  *(v18 + 96) = v28;
  v29 = v19;
  v30 = v23;
  v31 = v27;
  sub_1BD1AAF50(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v32 = sub_1BE052224();

  [v16 subjects:v17 sendEvent:v32];

LABEL_12:
}

uint64_t sub_1BD980A04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1BD980A4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroy_109Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BD980BA8()
{
  result = qword_1EBD59EE8;
  if (!qword_1EBD59EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59ED8);
    sub_1BD980C34();
    sub_1BD980E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59EE8);
  }

  return result;
}

unint64_t sub_1BD980C34()
{
  result = qword_1EBD59EF0;
  if (!qword_1EBD59EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59EF8);
    sub_1BD980CC0();
    sub_1BD980DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59EF0);
  }

  return result;
}

unint64_t sub_1BD980CC0()
{
  result = qword_1EBD59F00;
  if (!qword_1EBD59F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F08);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59F00);
  }

  return result;
}

unint64_t sub_1BD980DA4()
{
  result = qword_1EBD59F10;
  if (!qword_1EBD59F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F18);
    sub_1BD0DE4F4(&qword_1EBD59F20, &qword_1EBD59F28);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59F10);
  }

  return result;
}

unint64_t sub_1BD980E88()
{
  result = qword_1EBD59F30;
  if (!qword_1EBD59F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F38);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59F30);
  }

  return result;
}

uint64_t objectdestroy_115Tm_0()
{

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t SetupAttentionView.init(symbolName:title:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  v10 = a9 + *(type metadata accessor for SetupAttentionView() + 32);

  return sub_1BD226B4C(a10, v10);
}

uint64_t type metadata accessor for SetupAttentionView()
{
  result = qword_1EBD59F90;
  if (!qword_1EBD59F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SetupAttentionView.init(imageName:bundle:title:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  v11 = a9 + *(type metadata accessor for SetupAttentionView() + 32);

  return sub_1BD226B4C(a11, v11);
}

uint64_t SetupAttentionView.init(image:title:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = a1;
  *(a9 + 24) = 2;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  v10 = a9 + *(type metadata accessor for SetupAttentionView() + 32);

  return sub_1BD226B4C(a8, v10);
}

uint64_t SetupAttentionView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - v5;
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[7];
  v34 = v1[6];
  v35 = v7;
  v10 = v1[9];
  v33 = v1[8];
  v11 = type metadata accessor for SetupAttentionView();
  sub_1BD0DE19C(v1 + *(v11 + 32), v6, &unk_1EBD3CF70);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v12 = sub_1BE04F4E4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F70);
  sub_1BD0DE19C(v6, a1 + v13[11], &unk_1EBD3CF70);
  v14 = a1 + v13[13];
  sub_1BD9814D0(v14);
  v15 = sub_1BE050224();
  sub_1BD0DE53C(v6, &unk_1EBD3CF70);
  v16 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F78) + 36);
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  v17 = v34;
  *a1 = v35;
  a1[1] = v8;
  a1[2] = v17;
  a1[3] = v9;
  a1[4] = v33;
  a1[5] = v10;
  *(a1 + v13[12]) = v12;
  v18 = sub_1BE0501D4();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F80) + 36);
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_1BE051CD4();
  v22 = v21;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F88) + 36);
  v24 = *(sub_1BE04EDE4() + 20);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1BE04F684();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = 0x403A000000000000;
  *(v23 + 1) = 0x403A000000000000;
  v27 = [objc_opt_self() secondarySystemBackgroundColor];
  v28 = sub_1BE0511C4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE10);
  *&v23[*(v29 + 52)] = v28;
  *&v23[*(v29 + 56)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44338);
  v31 = &v23[*(result + 36)];
  *v31 = v20;
  v31[1] = v22;
  return result;
}

uint64_t sub_1BD9814D0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FB8);
  MEMORY[0x1EEE9AC00](v35, v2);
  v4 = (&v33 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FC0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v33 - v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FC8);
  MEMORY[0x1EEE9AC00](v34, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v33 - v18);
  v21 = *v1;
  v20 = *(v1 + 8);
  if (*(v1 + 24))
  {
    v22 = *(v1 + 16);
    v23 = *v1;
    v24 = *(v1 + 8);
    if (*(v1 + 24) == 1)
    {
      sub_1BD981C5C(v23, v24, v22, 1);
      v25 = v22;
      *v8 = sub_1BE0515F4();
      swift_storeEnumTagMultiPayload();
      sub_1BD1BC5D0();
      sub_1BE048964();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v11, v4, &qword_1EBD59FC8);
      swift_storeEnumTagMultiPayload();
      sub_1BD981CD4();
      sub_1BE04F9A4();

      return sub_1BD0DE53C(v11, &qword_1EBD59FC8);
    }

    else
    {
      sub_1BD981C5C(v23, v24, v22, 2);
      v32 = v21;
      *v4 = sub_1BE051544();
      swift_storeEnumTagMultiPayload();
      sub_1BD981CD4();
      sub_1BE048964();
      sub_1BE04F9A4();
      sub_1BD981D60(v21, v20, v22, 2);
    }
  }

  else
  {
    sub_1BE048C84();
    v27 = sub_1BE051574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1F0);
    sub_1BE04EA34();
    *v19 = v27;
    v28 = sub_1BE050354();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
    v29 = sub_1BE0503B4();
    sub_1BD0DE53C(v15, &qword_1EBD49130);
    KeyPath = swift_getKeyPath();
    v31 = (v19 + *(v16 + 36));
    *v31 = KeyPath;
    v31[1] = v29;
    sub_1BD0DE19C(v19, v8, &qword_1EBD3C1D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD1BC5D0();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v11, v4, &qword_1EBD59FC8);
    swift_storeEnumTagMultiPayload();
    sub_1BD981CD4();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v11, &qword_1EBD59FC8);
    return sub_1BD0DE53C(v19, &qword_1EBD3C1D8);
  }
}

void sub_1BD981A24()
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

unint64_t sub_1BD981AC8()
{
  result = qword_1EBD59FA0;
  if (!qword_1EBD59FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F88);
    sub_1BD981B80();
    sub_1BD0DE4F4(&qword_1EBD44330, &qword_1EBD44338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59FA0);
  }

  return result;
}

unint64_t sub_1BD981B80()
{
  result = qword_1EBD59FA8;
  if (!qword_1EBD59FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F80);
    sub_1BD0DE4F4(&qword_1EBD59FB0, &qword_1EBD59F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59FA8);
  }

  return result;
}

id sub_1BD981C5C(id result, uint64_t a2, void *a3, char a4)
{
  if (a4 == 2)
  {

    return result;
  }

  else
  {
    if (a4 == 1)
    {
      v5 = a3;
    }

    else
    {
      if (a4)
      {
        return result;
      }
    }

    return sub_1BE048C84();
  }
}

unint64_t sub_1BD981CD4()
{
  result = qword_1EBD59FD0;
  if (!qword_1EBD59FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59FC8);
    sub_1BD1BC5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59FD0);
  }

  return result;
}

void sub_1BD981D60(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a4 != 2)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
      }

      return;
    }

    a1 = a3;
  }
}

uint64_t type metadata accessor for FinanceKitPredictedTransactionsView()
{
  result = qword_1EBD59FD8;
  if (!qword_1EBD59FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD981E40()
{
  sub_1BD981EF4();
  if (v0 <= 0x3F)
  {
    sub_1BD981F88();
    if (v1 <= 0x3F)
    {
      sub_1BD981FE0();
      if (v2 <= 0x3F)
      {
        sub_1BE04D214();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD981EF4()
{
  if (!qword_1EBD59FE8)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59FE8);
    }
  }
}

void sub_1BD981F88()
{
  if (!qword_1EBD59FF0)
  {
    _s9ViewModelCMa_5();
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59FF0);
    }
  }
}

unint64_t sub_1BD981FE0()
{
  result = qword_1EBD4D5B0;
  if (!qword_1EBD4D5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4D5B0);
  }

  return result;
}

void sub_1BD982048(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for FinanceKitPredictedTransactionsView();
  sub_1BE04D114();
  v6 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (v6)
  {
    *(a3 + 40) = v6;
    *a3 = sub_1BD9850A4;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    _s9ViewModelCMa_5();
    v7 = swift_allocObject();
    sub_1BE0490F4();
    sub_1BE048964();
    v8 = a1;
    *(v7 + 16) = sub_1BE0490B4();
    v9 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
    v10 = sub_1BE0495A4();
    (*(*(v10 - 8) + 56))(v7 + v9, 1, 1, v10);
    sub_1BE04D114();
    *(v7 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions) = 0;
    sub_1BE04B5C4();
    *(v7 + 24) = v8;
    sub_1BE048964();
    sub_1BE051694();

    *(a3 + 24) = v11;
    *(a3 + 32) = v12;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD9821EC(void *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v4 = v2;
    sub_1BE04D804();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0E8));
    sub_1BE048964();
    v6 = a1;
    v7 = sub_1BE04F894();
    if ([v4 _pk_settings_useStateDrivenNavigation])
    {
      [v4 _pk_settings_pushViewController_];
    }

    else
    {
      [v4 pushViewController:v7 animated:1];
    }
  }
}

void sub_1BD982324(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0F0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  if (v8)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v9 = v8;
    v10 = sub_1BE04D804();
    sub_1BD98503C(a1, v7, type metadata accessor for FinanceKitTransactionDetailView);
    v11 = &v7[*(v4 + 36)];
    *v11 = v10;
    v11[1] = v2;
    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0F8));
    sub_1BE048964();
    v13 = sub_1BE04F894();
    if ([v9 _pk_settings_useStateDrivenNavigation])
    {
      [v9 _pk_settings_pushViewController_];
    }

    else
    {
      [v9 pushViewController:v13 animated:1];
    }
  }
}

void sub_1BD9824C4(__int128 *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = *(a1 + 2);
    v4 = *(a1 + 3);
    v10 = *a1;
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v7 = v2;
    v8 = sub_1BE04D804();
    v20 = *(a1 + 1);
    v18 = a1[1];
    v19 = *(a1 + 32);
    v12 = v10;
    v13 = v5;
    v14 = v4;
    v15 = v3 & 1;
    v16 = v8;
    v17 = v1;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A100));
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v20, v11, &qword_1EBD553A0);
    sub_1BD0DE19C(&v18, v11, &qword_1EBD5A108);
    v9 = sub_1BE04F894();
    if ([v7 _pk_settings_useStateDrivenNavigation])
    {
      [v7 _pk_settings_pushViewController_];
    }

    else
    {
      [v7 pushViewController:v9 animated:1];
    }
  }
}

void sub_1BD982668(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v4 = v2;
    v5 = sub_1BE04D804();
    v6 = *(a1 + 16);
    v10 = *a1;
    v11 = v6;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = v5;
    v15 = v1;
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0D8));
    sub_1BD0F972C(a1, v9);
    sub_1BE048964();
    v8 = sub_1BE04F894();
    if ([v4 _pk_settings_useStateDrivenNavigation])
    {
      [v4 _pk_settings_pushViewController_];
    }

    else
    {
      [v4 pushViewController:v8 animated:1];
    }
  }
}

void sub_1BD9827A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v4 = v2;
    v5 = sub_1BE04D804();
    v6 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = v6;
    v7 = *(a1 + 64);
    v8 = *(a1 + 16);
    v12 = *a1;
    v13 = v8;
    v16 = v7;
    v17 = v5;
    v18 = v1;
    v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0E0));
    sub_1BD62B05C(a1, v11);
    sub_1BE048964();
    v10 = sub_1BE04F894();
    if ([v4 _pk_settings_useStateDrivenNavigation])
    {
      [v4 _pk_settings_pushViewController_];
    }

    else
    {
      [v4 pushViewController:v10 animated:1];
    }
  }
}

void sub_1BD9828E8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v4 = v2;
    v5 = sub_1BE04D804();
    v6 = a1[1];
    v10[4] = *a1;
    v10[5] = v6;
    v7 = a1[3];
    v10[6] = a1[2];
    v10[7] = v7;
    v11 = v5;
    v12 = v1;
    v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A120));
    sub_1BD9852FC(a1, v10);
    sub_1BE048964();
    v9 = sub_1BE04F894();
    if ([v4 _pk_settings_useStateDrivenNavigation])
    {
      [v4 _pk_settings_pushViewController_];
    }

    else
    {
      [v4 pushViewController:v9 animated:1];
    }
  }
}

void sub_1BD982A20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0C8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  if (v8)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v9 = v8;
    v10 = sub_1BE04D804();
    sub_1BD98503C(a1, v7, type metadata accessor for FinanceKitPredictedTransactionDetailView);
    v11 = &v7[*(v4 + 36)];
    *v11 = v10;
    v11[1] = v2;
    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0D0));
    sub_1BE048964();
    v13 = sub_1BE04F894();
    if ([v9 _pk_settings_useStateDrivenNavigation])
    {
      [v9 _pk_settings_pushViewController_];
    }

    else
    {
      [v9 pushViewController:v13 animated:1];
    }
  }
}

void sub_1BD982BC0(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for FinanceKitPredictedTransactionsView();
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = v5;
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE04F434();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FF8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A000);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A008);
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v46 = &v43 - v20;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A010);
  MEMORY[0x1EEE9AC00](v43, v21);
  v23 = &v43 - v22;
  v53 = v2;
  sub_1BD983150(v2, v13);
  v24 = sub_1BE052404();
  v25 = PKLocalizedBankConnectString(v24);

  if (v25)
  {
    v26 = sub_1BE052434();
    v28 = v27;

    v55 = v26;
    v56 = v28;
    v29 = sub_1BD9847CC();
    v30 = sub_1BD0DDEBC();
    v31 = MEMORY[0x1E69E6158];
    sub_1BE050B74();

    sub_1BD0DE53C(v13, &qword_1EBD59FF8);
    v32 = v49;
    (*(v6 + 104))(v9, *MEMORY[0x1E697C438], v49);
    v55 = v10;
    v56 = v31;
    v57 = v29;
    v58 = v30;
    swift_getOpaqueTypeConformance2();
    v34 = v45;
    v33 = v46;
    sub_1BE050E84();
    (*(v6 + 8))(v9, v32);
    (*(v44 + 8))(v17, v34);
    v35 = v52;
    sub_1BD98503C(v53, v52, type metadata accessor for FinanceKitPredictedTransactionsView);
    v36 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v37 = swift_allocObject();
    sub_1BD9849C0(v35, v37 + v36);
    v38 = &v23[*(v43 + 36)];
    sub_1BE04E7B4();
    sub_1BE0528B4();
    *v38 = &unk_1BE108AE0;
    *(v38 + 1) = v37;
    (*(v47 + 32))(v23, v33, v48);
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v39 = sub_1BE04E3C4();
    v40 = sub_1BE04D804();
    v41 = v54;
    sub_1BD0C8230(v23, v54);
    v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A060) + 36));
    *v42 = v40;
    v42[1] = v39;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD983150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A058);
  v37 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v3);
  v36 = &v35 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A070);
  MEMORY[0x1EEE9AC00](v40, v5);
  v41 = &v35 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A048);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A038);
  MEMORY[0x1EEE9AC00](v10, v11);
  v43 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A078);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5D8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v21 = *(a1 + 32);
  v47 = *(a1 + 24);
  v48 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A068);
  sub_1BE0516A4();
  v22 = v46;
  swift_getKeyPath();
  v47 = v22;
  sub_1BD9852B4(&qword_1EBD5A080, _s9ViewModelCMa_5);
  sub_1BE04B594();

  v23 = *(v22 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions);
  sub_1BE048C84();

  if (v23)
  {
    v38 = v10;
    if (*(v23 + 16))
    {
      MEMORY[0x1EEE9AC00](v24, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A088);
      sub_1BD984BD8();
      sub_1BE0504E4();

      v26 = v39;
      v27 = v42;
      (*(v39 + 16))(v41, v9, v42);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD5A040, &qword_1EBD5A048);
      sub_1BD0DE4F4(&qword_1EBD5A050, &qword_1EBD5A058);
      v28 = v43;
      sub_1BE04F9A4();
      (*(v26 + 8))(v9, v27);
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
      sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
      v31 = v36;
      sub_1BE04FC64();
      v32 = v37;
      v33 = v44;
      (*(v37 + 16))(v41, v31, v44);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD5A040, &qword_1EBD5A048);
      sub_1BD0DE4F4(&qword_1EBD5A050, &qword_1EBD5A058);
      v28 = v43;
      sub_1BE04F9A4();
      (*(v32 + 8))(v31, v33);
    }

    sub_1BD0DE19C(v28, v16, &qword_1EBD5A038);
    swift_storeEnumTagMultiPayload();
    sub_1BD9848DC();
    sub_1BD628B7C();
    sub_1BE04F9A4();
    v29 = v28;
    v30 = &qword_1EBD5A038;
  }

  else
  {
    sub_1BE04E4F4();
    *&v20[*(v17 + 36)] = 0;
    sub_1BD0DE19C(v20, v16, &qword_1EBD4D5D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD9848DC();
    sub_1BD628B7C();
    sub_1BE04F9A4();
    v29 = v20;
    v30 = &qword_1EBD4D5D8;
  }

  return sub_1BD0DE53C(v29, v30);
}

void sub_1BD98388C(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedBankConnectString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE0501D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    sub_1BD984D28();
    sub_1BD2A275C();
    sub_1BE051A54();
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A088) + 36);
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD983A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v11[1] = a1;
  swift_getKeyPath();
  sub_1BD98503C(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitPredictedTransactionsView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD9849C0(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5F0);
  sub_1BD0DE4F4(&qword_1EBD5A0C0, &qword_1EBD5A0B8);
  sub_1BD9852B4(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  sub_1BD0DE4F4(&qword_1EBD4D5E8, &qword_1EBD4D5F0);
  return sub_1BE0519C4();
}

void sub_1BD983C48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_1BE049BF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FinanceKitPredictedTransactionsView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BDA2ACEC();
  sub_1BD98503C(a2, v14, type metadata accessor for FinanceKitPredictedTransactionsView);
  (*(v6 + 16))(v9, a1, v5);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1BD9849C0(v14, v18 + v16);
  (*(v6 + 32))(v18 + v17, v9, v5);
  v19[4] = v15;
  v19[5] = a1;
  v19[6] = a2;
  sub_1BD628C9C();
  sub_1BE051704();
}

uint64_t sub_1BD983E7C(uint64_t a1)
{
  v1[5] = a1;
  sub_1BE0528A4();
  v1[6] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD983F14, v3, v2);
}

uint64_t sub_1BD983F14()
{
  v1 = v0[5];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A068);
  sub_1BE0516A4();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD983FD8;

  return sub_1BDA2BC64();
}

uint64_t sub_1BD983FD8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1BD9840F4;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1BD0F88DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD9840F4()
{
  v1 = *(v0 + 88);

  type metadata accessor for FinanceKitPredictedTransactionsView();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "    Failed to load Predicted Transactions: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BD984274(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_1BE049BF4();
  v28 = *(v3 - 8);
  v4 = v28;
  MEMORY[0x1EEE9AC00](v3, v5);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v31 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v27 = &v26 - v12;
  v13 = type metadata accessor for FinanceKitPredictedTransactionDetailView();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NavigationController();
  sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v29 = sub_1BE04E3C4();
  v18 = *(v4 + 16);
  v19 = v27;
  v18(v27, v30, v3);
  v20 = *(a1 + 32);
  v34 = *(a1 + 24);
  v35 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A068);
  sub_1BE0516A4();
  v21 = *(v33 + 16);
  sub_1BE048964();

  *v17 = sub_1BE04EEC4();
  v17[1] = v22;
  v23 = v31;
  v18(v31, v19, v3);
  v18(v32, v23, v3);
  sub_1BE051694();
  v24 = *(v28 + 8);
  v24(v23, v3);
  v24(v19, v3);
  *(v17 + *(v14 + 32)) = v21;
  sub_1BD982A20(v17);

  return sub_1BD4A06B4(v17);
}

uint64_t sub_1BD98454C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1BDA2B088();
  v7 = v6;
  v8 = *(a2 + 40);
  type metadata accessor for TransactionPresentation();
  swift_allocObject();
  v9 = v8;
  v10 = a1;
  sub_1BD6AF5A8(v10, v7, v8);

  sub_1BD9852B4(&qword_1EBD3B840, type metadata accessor for TransactionPresentation);
  sub_1BE048964();
  v11 = sub_1BE04E954();
  v13 = v12;
  sub_1BD6AE91C();

  *a3 = v11;
  a3[1] = v13;
  return result;
}

id sub_1BD98464C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8040], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v11[0] = v8;
    v11[1] = v10;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD9847CC()
{
  result = qword_1EBD5A018;
  if (!qword_1EBD5A018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59FF8);
    sub_1BD984850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A018);
  }

  return result;
}

unint64_t sub_1BD984850()
{
  result = qword_1EBD5A020;
  if (!qword_1EBD5A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A028);
    sub_1BD9848DC();
    sub_1BD628B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A020);
  }

  return result;
}

unint64_t sub_1BD9848DC()
{
  result = qword_1EBD5A030;
  if (!qword_1EBD5A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A038);
    sub_1BD0DE4F4(&qword_1EBD5A040, &qword_1EBD5A048);
    sub_1BD0DE4F4(&qword_1EBD5A050, &qword_1EBD5A058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A030);
  }

  return result;
}

uint64_t sub_1BD9849C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD984A24()
{
  v2 = *(type metadata accessor for FinanceKitPredictedTransactionsView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD983E7C(v0 + v3);
}

uint64_t sub_1BD984AF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9852B4(&qword_1EBD5A080, _s9ViewModelCMa_5);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions);
  return sub_1BE048C84();
}

unint64_t sub_1BD984BD8()
{
  result = qword_1EBD5A090;
  if (!qword_1EBD5A090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A088);
    sub_1BD984C90();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A090);
  }

  return result;
}

unint64_t sub_1BD984C90()
{
  result = qword_1EBD5A098;
  if (!qword_1EBD5A098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A0A0);
    sub_1BD984D28();
    sub_1BD2A275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A098);
  }

  return result;
}

unint64_t sub_1BD984D28()
{
  result = qword_1EBD5A0A8;
  if (!qword_1EBD5A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A0B0);
    sub_1BD0DE4F4(&qword_1EBD4D5E8, &qword_1EBD4D5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A0A8);
  }

  return result;
}

uint64_t objectdestroyTm_115()
{
  v1 = (type metadata accessor for FinanceKitPredictedTransactionsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1BD0D45CC();

  v3 = v1[9];
  v4 = sub_1BE04D214();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_1BD984EE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitPredictedTransactionsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD983C48(a1, v6, a2);
}

uint64_t sub_1BD984F64()
{
  v1 = *(type metadata accessor for FinanceKitPredictedTransactionsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE049BF4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD984274(v0 + v2, v5);
}

uint64_t sub_1BD98503C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD9850AC()
{
  result = qword_1EBD5A110;
  if (!qword_1EBD5A110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A060);
    sub_1BD985164();
    sub_1BD0DE4F4(&qword_1EBD554F0, &qword_1EBD554F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A110);
  }

  return result;
}

unint64_t sub_1BD985164()
{
  result = qword_1EBD5A118;
  if (!qword_1EBD5A118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59FF8);
    sub_1BD9847CC();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD9852B4(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A118);
  }

  return result;
}

uint64_t sub_1BD9852B4(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PeerPaymentUpdateUserInfoCoordinator.didDismissViewController()()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex) = v3;
  }
}

void PeerPaymentUpdateUserInfoCoordinator.nextViewController(completion:)(void (*a1)(uint64_t, id), uint64_t a2)
{
  v5 = sub_1BD986EF4();
  if (v5)
  {
    v7 = v5;
    a1(v5, 0);
  }

  else
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BD987AF8(v2, v6, a1, a2);
  }
}

void *PeerPaymentUpdateUserInfoCoordinator.fieldsModel.getter()
{
  v1 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id PeerPaymentUpdateUserInfoCoordinator.init(account:webService:setupContext:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_firstViewController] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account] = a1;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_webService] = a2;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_setupContext] = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v8 = a1;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v11 = objc_allocWithZone(MEMORY[0x1E69B8F40]);
  v12 = v10;
  v13 = [v11 init];
  [v13 setEndpoint_];
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v15 = result;
    [result prewarmDeviceScoreForAttributes_];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PeerPaymentUpdateUserInfoCoordinator.presentUpdateUserInfoFlow(from:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = v3;
  sub_1BD0D44B8(a2);
  v7 = a1;
  sub_1BD987FC0(v8, v8, a2, a3, v7);

  sub_1BD0D4744(a2);
}

uint64_t sub_1BD985744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1BE051F54();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v25 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1BD988D30;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_56_2;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_1BD0D44B8(a3);
  v21 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v22 = v25;
  MEMORY[0x1BFB3FDF0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v27 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v26);
}

void sub_1BD985A58(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *&Strong[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response];
    if (v10)
    {
      v11 = a2 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = Strong;
      v13 = v10;
      if ([v13 state] != 1 || (sub_1BD985CE0() & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_1BD985EB8();
      sub_1BD986398();
      v14 = sub_1BD986EF4();
      v15 = *&v12[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_firstViewController];
      *&v12[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_firstViewController] = v14;
      v16 = v14;

      if (v14)
      {
        v17 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
        [v17 setModalPresentationStyle_];
        v18 = swift_allocObject();
        *(v18 + 16) = a3;
        *(v18 + 24) = a4;
        aBlock[4] = sub_1BD988D40;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_62_2;
        v19 = _Block_copy(aBlock);
        sub_1BD0D44B8(a3);

        [a5 presentViewController:v17 animated:1 completion:v19];

        _Block_release(v19);
        return;
      }

      if (!a3)
      {
LABEL_17:

        return;
      }

      v20 = *MEMORY[0x1E69BBBC8];
      v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1BE048964();
      v22 = [v21 initWithDomain:v20 code:-1 userInfo:0];
      a3();

      goto LABEL_9;
    }
  }

  if (!a3)
  {
    return;
  }

  sub_1BE048964();
  (a3)(a2);
LABEL_9:
  sub_1BD0D4744(a3);
}

id sub_1BD985CE0()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
  if (v1)
  {
    v2 = v1;
    result = [v2 requiredFieldsByPage];
    if (result)
    {
      v4 = result;
      sub_1BD0E5E8C(0, &qword_1EBD5A1D8);
      v5 = sub_1BE052744();

      if (v5 >> 62)
      {
LABEL_23:
        v6 = sub_1BE053704();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      while (1)
      {
        v8 = v6 != v7;
        if (v6 == v7)
        {
LABEL_18:

          return v8;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB40900](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        result = [v9 requiredFields];
        if (!result)
        {
          break;
        }

        v11 = result;
        sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
        v12 = sub_1BE052744();

        if (v12 >> 62)
        {
          v13 = sub_1BE053704();
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v7;
        if (v13 >= 1)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1BD985EB8()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 requiredFieldsByPage];
  if (!v3)
  {
    goto LABEL_62;
  }

  v4 = v3;
  sub_1BD0E5E8C(0, &qword_1EBD5A1D8);
  v5 = sub_1BE052744();

  if (v5 >> 62)
  {
LABEL_59:
    v6 = sub_1BE053704();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v0;
  v36 = v2;
  v37 = v5;
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_45:

    if (v8 >> 62)
    {
      v29 = sub_1BE053704();
    }

    else
    {
      v29 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v36;
    if (v29 < 1)
    {
    }

    else
    {
      sub_1BD3F0574(v8);

      v31 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
      v32 = sub_1BE052724();

      v33 = [v31 initWithPaymentSetupFields_];

      v34 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
      swift_beginAccess();
      v30 = *(v35 + v34);
      *(v35 + v34) = v33;
    }

    return;
  }

  v7 = 0;
  v40 = v5 & 0xFFFFFFFFFFFFFF8;
  v41 = v5 & 0xC000000000000001;
  v39 = v5 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v5 = &unk_1EBD45AC0;
  v38 = v6;
  while (1)
  {
    if (v41)
    {
      v9 = MEMORY[0x1BFB40900](v7, v37);
    }

    else
    {
      if (v7 >= *(v40 + 16))
      {
        goto LABEL_53;
      }

      v9 = *(v39 + 8 * v7);
    }

    v10 = v9;
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
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
      goto LABEL_59;
    }

    v12 = [v9 requiredFields];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
    v0 = sub_1BE052744();

    v14 = v0 >> 62;
    if (v0 >> 62)
    {
      v15 = sub_1BE053704();
    }

    else
    {
      v15 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = (v8 >> 62);
    if (v8 >> 62)
    {
      v16 = sub_1BE053704();
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v15;
    v11 = __OFADD__(v16, v15);
    v17 = v16 + v15;
    if (v11)
    {
      goto LABEL_54;
    }

    v42 = v10;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v2)
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_1BE053704();
      goto LABEL_26;
    }

    if (v2)
    {
      goto LABEL_25;
    }

    v2 = (v8 & 0xFFFFFFFFFFFFFF8);
    if (v17 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = v8;
      goto LABEL_27;
    }

LABEL_26:
    v43 = sub_1BE053884();
    v2 = (v43 & 0xFFFFFFFFFFFFFF8);
LABEL_27:
    v18 = v2[2];
    v19 = v2[3];
    if (v14)
    {
      v20 = sub_1BE053704();
      if (!v20)
      {
LABEL_7:

        v8 = v43;
        if (v44 > 0)
        {
          goto LABEL_55;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v20 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    if (((v19 >> 1) - v18) < v44)
    {
      goto LABEL_56;
    }

    v21 = &v2[v18 + 4];
    if (v14)
    {
      if (v20 < 1)
      {
        goto LABEL_58;
      }

      sub_1BD0DE4F4(&unk_1EBD5A1E0, &unk_1EBD45AC0);
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0);
        v24 = sub_1BD3F5808(v45, i, v0);
        v26 = *v25;
        (v24)(v45, 0);
        *(v21 + 8 * i) = v26;
      }

      v6 = v38;
      v22 = v44;
    }

    else
    {
      v22 = v44;
      swift_arrayInitWithCopy();
    }

    v8 = v43;
    if (v22 > 0)
    {
      v27 = v2[2];
      v11 = __OFADD__(v27, v22);
      v28 = v27 + v22;
      if (v11)
      {
        goto LABEL_57;
      }

      v2[2] = v28;
    }

LABEL_8:
    if (v7 == v6)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
}

void sub_1BD986398()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v93 = v0;
  v9 = *&v0[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response];
  if (!v9)
  {
    return;
  }

  v75 = &v73 - v8;
  v99 = MEMORY[0x1E69E7CC0];
  v94 = v9;
  v10 = [v94 requiredFieldsByPage];
  if (!v10)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v11 = v10;
  v90 = sub_1BD0E5E8C(0, &qword_1EBD5A1D8);
  v12 = sub_1BE052744();

  if (v12 >> 62)
  {
    goto LABEL_92;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_93:

    v72 = MEMORY[0x1E69E7CC0];
    goto LABEL_94;
  }

LABEL_5:
  v74 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account;
  v81 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_setupContext;
  v92 = v12 & 0xC000000000000001;
  v79 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v76 = 0;
  v14 = 0;
  v78 = v12 & 0xFFFFFFFFFFFFFF8;
  v77 = v12 + 32;
  v85 = *MEMORY[0x1E69B8050];
  v84 = (v2 + 104);
  v83 = "nfoResponse8@NSError16";
  v82 = (v2 + 8);
  v15 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
  v73 = xmmword_1BE0B69E0;
  v87 = MEMORY[0x1E69E7CC0];
  v86 = v1;
  v89 = v13;
  v80 = v5;
  v88 = v12;
LABEL_8:
  if (v92)
  {
    v16 = MEMORY[0x1BFB40900](v14, v12);
  }

  else
  {
    if (v14 >= *(v78 + 16))
    {
      goto LABEL_88;
    }

    v16 = *(v77 + 8 * v14);
  }

  v2 = v16;
  v17 = __OFADD__(v14++, 1);
  if (v17)
  {
    goto LABEL_85;
  }

  v18 = [v16 requiredFields];
  if (!v18)
  {

    goto LABEL_7;
  }

  v19 = v18;
  sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
  v12 = sub_1BE052744();

  v20 = v12 >> 62;
  v95 = v14;
  v97 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v21 = sub_1BE053704();
  }

  else
  {
    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v23 = v12 & 0xC000000000000001;
  v96 = v2;
  v2 = v97;
  do
  {
    if (v21 == v22)
    {
      [v94 useDeviceValidation];
      goto LABEL_29;
    }

    if (v23)
    {
      v24 = MEMORY[0x1BFB40900](v22, v12);
    }

    else
    {
      if (v22 >= *(v2 + 16))
      {
        goto LABEL_83;
      }

      v24 = *(v12 + 8 * v22 + 32);
    }

    v1 = v24;
    if (__OFADD__(v22, 1))
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v25 = [v24 v15[224]];

    ++v22;
  }

  while ((v25 & 1) == 0);
  if (![v94 useDeviceValidation])
  {
LABEL_29:
    v26 = 0;
    if (v20)
    {
LABEL_41:
      v27 = sub_1BE053704();
      goto LABEL_42;
    }

LABEL_30:
    v27 = *(v2 + 16);
LABEL_42:
    v2 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_86;
    }

    if (v2 < 0)
    {
      goto LABEL_87;
    }

    v91 = v26;
    v42 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v23)
      {
        v44 = MEMORY[0x1BFB40900](v42, v12);
      }

      else
      {
        if (v42 >= *(v97 + 16))
        {
          goto LABEL_84;
        }

        v44 = *(v12 + 8 * v42 + 32);
      }

      v45 = v44;
      if ([v44 isFieldTypeFooter])
      {
        v46 = [v45 identifier];
        v47 = sub_1BE052434();
        v1 = v48;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1BD03B038(0, *(v43 + 2) + 1, 1, v43);
        }

        v5 = *(v43 + 2);
        v49 = *(v43 + 3);
        if (v5 >= v49 >> 1)
        {
          v43 = sub_1BD03B038((v49 > 1), v5 + 1, 1, v43);
        }

        *(v43 + 2) = v5 + 1;
        v50 = &v43[16 * v5];
        *(v50 + 4) = v47;
        *(v50 + 5) = v1;
        if (v2 == v42)
        {
LABEL_60:
          if (!*(v43 + 2))
          {

            v12 = v88;
            v13 = v89;
            v14 = v95;
            v15 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
            goto LABEL_7;
          }

          v1 = *&v93[v81];
          sub_1BE048C84();
          v51 = [v94 requiredFieldsByPage];
          v13 = v89;
          v14 = v95;
          v2 = v96;
          if (!v51)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          v52 = v51;

          v53 = sub_1BE052744();

          if (v53 >> 62)
          {
            v54 = sub_1BE053704();
          }

          else
          {
            v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v5 = v80;
          v12 = v88;
          if (v54)
          {
            v17 = __OFSUB__(v54, 1);
            v55 = v54 - 1;
            if (v17)
            {
              goto LABEL_89;
            }

            if ((v53 & 0xC000000000000001) == 0)
            {
              if ((v55 & 0x8000000000000000) != 0)
              {
                goto LABEL_90;
              }

              if (v55 < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v56 = *(v53 + 8 * v55 + 32);
                goto LABEL_70;
              }

LABEL_91:
              __break(1u);
LABEL_92:
              v13 = sub_1BE053704();
              if (!v13)
              {
                goto LABEL_93;
              }

              goto LABEL_5;
            }

            v56 = MEMORY[0x1BFB40900](v55, v53);
LABEL_70:
            v57 = v56;

            v58 = v2;
            v59 = sub_1BE053074();
          }

          else
          {

            v59 = 0;
          }

          v60 = v91 ^ 1;
          updated = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
          v62 = objc_allocWithZone(updated);
          v63 = v93;
          *&v62[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_coordinator] = v93;
          *&v62[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_visibleFieldIdentifiers] = v43;
          v62[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showCancelButton] = v60;
          v62[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showSubmitButton] = v59 & 1;
          v64 = *&v63[v79];
          v98.receiver = v62;
          v98.super_class = updated;
          sub_1BE048C84();
          v65 = v63;
          v66 = objc_msgSendSuper2(&v98, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, 0, v1, 0, v64);
          if (!v66)
          {
            goto LABEL_98;
          }

          v67 = v66;

          v2 = v86;
          (*v84)(v5, v85, v86);
          v68 = v67;
          v69 = PKPassKitBundle();
          if (!v69)
          {
            goto LABEL_97;
          }

          v70 = v69;
          v1 = sub_1BE04B6F4();

          (*v82)(v5, v2);
          v71 = sub_1BE052404();

          [v68 setTitle_];

          MEMORY[0x1BFB3F7A0]();
          v15 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();

          v87 = v99;
LABEL_7:
          if (v14 == v13)
          {

            v72 = v87;
LABEL_94:
            swift_beginAccess();
            sub_1BDA7A14C(v72);
            swift_endAccess();

            return;
          }

          goto LABEL_8;
        }
      }

      else
      {

        if (v2 == v42)
        {
          goto LABEL_60;
        }
      }

      v17 = __OFADD__(v42++, 1);
      if (v17)
      {
        __break(1u);
        goto LABEL_82;
      }
    }
  }

  if (v76)
  {
    v26 = 0;
    goto LABEL_40;
  }

  v28 = [objc_allocWithZone(PKAddressSearcherViewController) initWithStyle_];
  if (!v28)
  {
LABEL_39:
    v26 = 1;
LABEL_40:
    v76 = 1;
    if (v20)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  v29 = v28;
  v30 = [*&v93[v74] countryCode];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1BE052434();
    v34 = v33;
  }

  else
  {
    v34 = 0xE200000000000000;
    v32 = 21333;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
  inited = swift_initStackObject();
  *(inited + 16) = v73;
  *(inited + 32) = v32;
  v36 = inited + 32;
  *(inited + 40) = v34;
  sub_1BD537298(inited);
  swift_setDeallocating();
  sub_1BD1BCDE4(v36);
  v37 = sub_1BE052A24();

  [v29 setSupportedCountryCodes_];

  v5 = v75;
  v38 = v86;
  (*v84)(v75, v85, v86);
  v1 = v29;
  v39 = PKPassKitBundle();
  if (v39)
  {
    v40 = v39;
    sub_1BE04B6F4();

    (*v82)(v5, v38);
    v41 = sub_1BE052404();

    [v1 setTitle_];

    MEMORY[0x1BFB3F7A0]([v1 setDelegate_]);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v87 = v99;
    v2 = v97;
    goto LABEL_39;
  }

LABEL_100:
  __break(1u);
}

uint64_t sub_1BD986EF4()
{
  v1 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex;
  v2 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex);
  v3 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    if (v2 < sub_1BE053704())
    {
LABEL_3:
      v5 = *(v0 + v1);
      result = swift_beginAccess();
      v7 = *(v0 + v3);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](v5);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        if (v5 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_15:
          __break(1u);
          return result;
        }

        v8 = *(v7 + 8 * v5 + 32);
      }

      v9 = v8;
      result = swift_endAccess();
      v10 = *(v0 + v1);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (!v11)
      {
        *(v0 + v1) = v12;
        return v9;
      }

      goto LABEL_14;
    }
  }

  else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t sub_1BD987000(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1BE048964();
    v1(0);

    return sub_1BD0D4744(v1);
  }

  return result;
}

void sub_1BD987138(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1BE04A844();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1BD98719C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1 && !a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
      *(Strong + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response) = a1;
      v10 = Strong;
      v11 = a1;
    }

    else
    {
      v12 = a1;
    }

    if ([a1 state] == 2 && (v13 = objc_msgSend(a1, sel_userInfo)) != 0)
    {
      v14 = v13;
      v15 = [objc_opt_self() sharedInstance];
      if (v15)
      {
        v16 = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = a4;
        *(v17 + 24) = a5;
        aBlock[4] = sub_1BD988CE4;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_28_6;
        v18 = _Block_copy(aBlock);
        v19 = v14;
        sub_1BE048964();

        [v16 insertOrUpdateUserInfo:v19 completion:v18];

        _Block_release(v18);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      a4(0);
    }
  }

  else
  {
    a4(a2);
  }
}

uint64_t sub_1BD987384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3(0, a1);
  }

  if (*&Strong[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response])
  {
    v18 = a1 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {

    return a3(0, a1);
  }

  v25 = Strong;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v26 = sub_1BE052D54();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a3;
  v21[4] = a4;
  aBlock[4] = sub_1BD988D10;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_35_6;
  v22 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v23 = v26;
  MEMORY[0x1BFB3FDF0](0, v16, v11, v22);
  _Block_release(v22);

  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v24);
}

void sub_1BD9876E4(uint64_t a1, void (*a2)(void *, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD986398();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BD986EF4();
  }

  else
  {
    v7 = 0;
  }

  a2(v7, 0);
}

void PeerPaymentUpdateUserInfoCoordinator.addressSearcherViewController(_:requestsNextViewControllerWithCompletion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_1BE048964();
  v7 = sub_1BD986EF4();
  if (v7)
  {
    v9 = v7;
    a2();
  }

  else
  {
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BD987AF8(v3, v8, sub_1BD1B6CB0, v6);
  }
}

id PeerPaymentUpdateUserInfoCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentUpdateUserInfoCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD987AF8(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account);
  sub_1BE048964();
  sub_1BE048964();
  if (![v9 isEligibleForUserInfoUpdates])
  {
    goto LABEL_14;
  }

  v10 = [v9 identifier];
  if (v10)
  {
    v11 = v10;
    sub_1BE052434();

    v12 = sub_1BE052404();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69B9010]) initWithAccountIdentifier_];

  if (!v13)
  {
LABEL_14:
    v34 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    swift_beginAccess();

    a3(0, v34);

    goto LABEL_15;
  }

  v14 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = *MEMORY[0x1E69BC370];
  v35 = v15;
  v17 = [v35 submissionValuesForDestination_];
  if (!v17)
  {
LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  v19 = sub_1BE052244();

  v20 = v13;
  sub_1BD1A8284(v19);
  v21 = sub_1BE052224();

  [v20 setOverlayParameters_];

  v22 = [v35 secureSubmissionValuesForDestination_];
  if (v22)
  {
    v23 = v22;

    v24 = sub_1BE052244();

    sub_1BD1A8284(v24);

    v25 = sub_1BE052224();

    [v20 setSecureOverlayParameters_];

LABEL_10:
    v26 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
    if (v26)
    {
      v27 = v26;
      v28 = [v27 encryptionCertificates];
      [v13 setCertificates_];
    }

    v29 = [objc_opt_self() sharedService];
    if (v29)
    {
      v30 = v29;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = sub_1BD988D64;
      v32[4] = v8;
      aBlock[4] = sub_1BD988D60;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_74_1;
      v33 = _Block_copy(aBlock);
      v34 = v13;
      sub_1BE048964();

      [v30 peerPaymentUpdateUserInfoForRequest:v34 withCompletion:v33];
      _Block_release(v33);

LABEL_15:
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:

  __break(1u);
}

void sub_1BD987FC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account);
  v12 = a2;
  sub_1BD0D44B8(a3);
  v13 = a5;
  if ([v11 isEligibleForUserInfoUpdates])
  {
    v14 = [v11 identifier];
    if (v14)
    {
      v15 = v14;
      sub_1BE052434();

      v16 = sub_1BE052404();
    }

    else
    {
      v16 = 0;
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69B9010]) initWithAccountIdentifier_];

    if (v17)
    {
      v18 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
      swift_beginAccess();
      v19 = *(a1 + v18);
      if (v19)
      {
        v40 = v12;
        v41 = v13;
        v20 = *MEMORY[0x1E69BC370];
        v39 = v19;
        v21 = [v39 submissionValuesForDestination_];
        if (!v21)
        {
LABEL_18:

          sub_1BD0D4744(a3);
          __break(1u);
          goto LABEL_19;
        }

        v22 = v21;
        v23 = sub_1BE052244();

        v24 = v17;
        sub_1BD1A8284(v23);
        v25 = sub_1BE052224();

        [v24 setOverlayParameters_];

        v26 = [v39 secureSubmissionValuesForDestination_];
        if (!v26)
        {
LABEL_19:

          sub_1BD0D4744(a3);
          __break(1u);
          return;
        }

        v27 = v26;

        v28 = sub_1BE052244();

        sub_1BD1A8284(v28);

        v29 = sub_1BE052224();

        [v24 setSecureOverlayParameters_];

        v12 = v40;
        v13 = v41;
      }

      v30 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
      if (v30)
      {
        v31 = v30;
        v32 = [v31 encryptionCertificates];
        [v17 setCertificates_];
      }

      v33 = [objc_opt_self() sharedService];
      if (v33)
      {
        v34 = v33;
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v36 = swift_allocObject();
        v36[2] = v35;
        v36[3] = sub_1BD988D24;
        v36[4] = v10;
        aBlock[4] = sub_1BD988D60;
        aBlock[5] = v36;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_49_6;
        v37 = _Block_copy(aBlock);
        v38 = v17;
        sub_1BE048964();

        [v34 peerPaymentUpdateUserInfoForRequest:v38 withCompletion:v37];
        _Block_release(v37);

        return;
      }

      sub_1BD0D4744(a3);
      __break(1u);
      goto LABEL_18;
    }
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
  sub_1BD985744(v42, v12, a3, a4, v13);
}

uint64_t sub_1BD9884D8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = sub_1BD1B6F54;
  v9[4] = v8;
  v10 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  if (![v10 isEligibleForUserInfoUpdates])
  {
    goto LABEL_14;
  }

  v11 = [v10 identifier];
  if (v11)
  {
    v12 = v11;
    sub_1BE052434();

    v13 = sub_1BE052404();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69B9010]) initWithAccountIdentifier_];

  if (!v14)
  {
LABEL_14:
    v36 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_retain_n();

    a3(0);
  }

  v15 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (!v16)
  {
    goto LABEL_10;
  }

  v40 = v14;
  v17 = *MEMORY[0x1E69BC370];
  v39 = v16;
  v18 = [v39 submissionValuesForDestination_];
  if (!v18)
  {
LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = sub_1BE052244();

  v21 = v40;
  sub_1BD1A8284(v20);
  v22 = sub_1BE052224();

  [v21 setOverlayParameters_];

  v23 = [v39 secureSubmissionValuesForDestination_];
  if (v23)
  {
    v24 = v23;

    v25 = sub_1BE052244();

    sub_1BD1A8284(v25);

    v26 = sub_1BE052224();

    [v21 setSecureOverlayParameters_];

    v14 = v40;
LABEL_10:
    v27 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
    if (v27)
    {
      v28 = v27;
      v29 = [v28 encryptionCertificates];
      [v14 setCertificates_];
    }

    v30 = [objc_opt_self() sharedService];
    if (v30)
    {
      v31 = v30;
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = sub_1BD988CCC;
      v33[4] = v9;
      aBlock[4] = sub_1BD988CD8;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_224;
      v34 = _Block_copy(aBlock);
      v35 = v14;
      sub_1BE048964();

      [v31 peerPaymentUpdateUserInfoForRequest:v35 withCompletion:v34];
      _Block_release(v34);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:

  __break(1u);
  return result;
}

void sub_1BD988A2C(void *a1)
{
  v2 = [a1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v3 = sub_1BE052744();

  if (v3 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 value];

  if (v6)
  {
    v7 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
    swift_beginAccess();
    v8 = *(v1 + v7);
    [v8 prefillDefaultValuesWithPostalAddress_];
  }
}

uint64_t sub_1BD988BD8(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  swift_retain_n();
  _Block_copy(a2);
  v5 = sub_1BD986EF4();
  if (v5)
  {
    v6 = v5;
    a2[2](a2, v5);
  }

  else
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD9884D8(a1, v7, sub_1BD139BD4, v4);
  }
}

id sub_1BD988E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKAMSUIWebViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD988EB4()
{
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_mode))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1BE0B69E0;
    v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_context);
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_provisionedPasses);
    v4 = objc_allocWithZone(type metadata accessor for ProvisioningExternalDeviceFlowItem());
    swift_retain_n();
    v5 = v3;
    *(v1 + 32) = sub_1BD59FB2C(v2, v5);
    *(v1 + 40) = &off_1F3BAF118;
    v63 = v1;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    type metadata accessor for ProvisioningMoreInfoFlowSection();
    v7 = swift_allocObject();
    v7[5] = 0;
    swift_unknownObjectWeakInit();
    v7[6] = 0xD000000000000013;
    v7[7] = 0x80000001BE13B160;
    v7[8] = &type metadata for ProvisioningScreenDebugConfiguration;
    v7[2] = v2;
    v7[3] = v5;
    *(inited + 32) = v7;
    *(inited + 40) = &off_1F3B97B68;
    v8 = objc_allocWithZone(type metadata accessor for ProvisioningFinancialLabPermissionFlowItem());
    v9 = sub_1BD4F7484(v2, v5);

    *(inited + 48) = v9;
    *(inited + 56) = &off_1F3BAABC0;
    v10 = inited;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0BA770;
    v12 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_context);
    v13 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_provisionedPasses);
    v14 = objc_allocWithZone(type metadata accessor for ProvisioningExternalDeviceFlowItem());
    swift_retain_n();
    v15 = v13;
    *(v11 + 32) = sub_1BD59FB2C(v12, v15);
    *(v11 + 40) = &off_1F3BAF118;
    v16 = objc_allocWithZone(type metadata accessor for ProvisioningExpressPassSelectionFlowItem());
    sub_1BE048964();
    v17 = v15;
    v18 = sub_1BD91C564(v12, v17);

    *(v11 + 48) = v18;
    *(v11 + 56) = &off_1F3BC5FC0;
    type metadata accessor for ProvisioningMoreInfoFlowSection();
    v19 = swift_allocObject();
    v19[5] = 0;
    swift_unknownObjectWeakInit();
    v19[6] = 0xD000000000000013;
    v19[7] = 0x80000001BE13B160;
    v19[8] = &type metadata for ProvisioningScreenDebugConfiguration;
    v19[2] = v12;
    v19[3] = v17;
    *(v11 + 64) = v19;
    *(v11 + 72) = &off_1F3B97B68;
    swift_retain_n();
    v20 = v17;
    sub_1BD29011C(v12, v20);
    *(v11 + 80) = v21;
    *(v11 + 88) = &off_1F3B9AD58;
    v22 = objc_allocWithZone(type metadata accessor for ProvisioningPrecursorEducationFlowItem());
    sub_1BE048964();
    v23 = v20;
    v24 = sub_1BD7D66C0(v12, v23);

    *(v11 + 96) = v24;
    *(v11 + 104) = &off_1F3BBCD80;
    v25 = type metadata accessor for ProvisioningOptionalExpressSetupFlowItem();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v27 = &v26[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_identifier];
    *v27 = 0xD00000000000001CLL;
    *(v27 + 1) = 0x80000001BE13B140;
    *&v26[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v26[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_context] = v12;
    *&v26[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_provisionedPasses] = v23;
    v62.receiver = v26;
    v62.super_class = v25;
    sub_1BE048964();
    v28 = v23;
    *(v11 + 112) = objc_msgSendSuper2(&v62, sel_init);
    *(v11 + 120) = &off_1F3BBF9F0;
    v29 = type metadata accessor for ProvisioningWatchExtensionInstallFlowItem();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v31 = &v30[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_identifier];
    *v31 = 0xD00000000000001DLL;
    *(v31 + 1) = 0x80000001BE13B120;
    *&v30[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v30[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_context] = v12;
    *&v30[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_provisionedPasses] = v28;
    v61.receiver = v30;
    v61.super_class = v29;
    sub_1BE048964();
    v32 = v28;
    *(v11 + 128) = objc_msgSendSuper2(&v61, sel_init);
    *(v11 + 136) = &off_1F3BBB3F8;
    v33 = objc_allocWithZone(type metadata accessor for ProvisioningMakeDefaultFlowItem());
    sub_1BE048964();
    v34 = v32;
    *(v11 + 144) = sub_1BD185AC0(v12, v34);
    *(v11 + 152) = &off_1F3B94768;
    v35 = type metadata accessor for ProvisioningAMPEnrollmentFlowItem();
    v36 = objc_allocWithZone(v35);
    *&v36[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v37 = &v36[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_identifier];
    *v37 = 0xD000000000000015;
    *(v37 + 1) = 0x80000001BE13B100;
    *&v36[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v36[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_context] = v12;
    *&v36[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_provisionedPasses] = v34;
    v60.receiver = v36;
    v60.super_class = v35;
    sub_1BE048964();
    v38 = v34;
    *(v11 + 160) = objc_msgSendSuper2(&v60, sel_init);
    *(v11 + 168) = &off_1F3BC6DE0;
    v39 = type metadata accessor for ProvisioningEducationFlowItem();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v41 = &v40[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_identifier];
    *v41 = 0xD000000000000011;
    *(v41 + 1) = 0x80000001BE13B0E0;
    *&v40[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v40[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_context] = v12;
    *&v40[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_provisionedPasses] = v38;
    v59.receiver = v40;
    v59.super_class = v39;
    sub_1BE048964();
    v42 = v38;
    *(v11 + 176) = objc_msgSendSuper2(&v59, sel_init);
    *(v11 + 184) = &off_1F3B9A600;
    v43 = objc_allocWithZone(type metadata accessor for ProvisioningCarEducationFlowItem());
    *(v11 + 192) = sub_1BD2993F8(v12, v42);
    *(v11 + 200) = &off_1F3B9B0B0;
    v44 = objc_allocWithZone(type metadata accessor for ProvisioningAutoReloadSetUpFlowItem());
    *(v11 + 208) = sub_1BD7A5D58(v12, v42);
    *(v11 + 216) = &off_1F3BBB650;
    v63 = v11;
    if (PKBankConnectPostProvisioningCTAEnabled())
    {
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_1BE0B69E0;
      type metadata accessor for BankConnectAuthorizationFlowSection();
      v46 = swift_allocObject();
      v46[4] = 0;
      v46[6] = 0;
      swift_unknownObjectWeakInit();
      v46[7] = 0xD000000000000016;
      v46[8] = 0x80000001BE143990;
      v46[2] = v12;
      v46[3] = v42;
      *(v45 + 32) = v46;
      *(v45 + 40) = &off_1F3B94C88;
      sub_1BE048964();
      v47 = v42;
      sub_1BDA7A178(v45);
    }

    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1BE0B98D0;
    type metadata accessor for ProvisioningAddToWatchFlowItem();
    v49 = swift_allocObject();
    v49[4] = &type metadata for HasRemainingCredentialsToProvision;
    v49[6] = 0;
    swift_unknownObjectWeakInit();
    v49[7] = 0xD000000000000012;
    v49[8] = 0x80000001BE13B0C0;
    v49[9] = &type metadata for ProvisioningScreenDebugConfiguration;
    v49[2] = v12;
    v49[3] = v42;
    *(v48 + 32) = v49;
    *(v48 + 40) = &off_1F3B9DF80;
    swift_retain_n();
    v50 = v42;
    *(v48 + 48) = sub_1BD60AAA8(v12, v50);
    *(v48 + 56) = &off_1F3BB1C10;
    v51 = sub_1BE04BC84();
    v52 = [v51 devicePrimaryPaymentApplication];
    if (v52)
    {
      v53 = v52;
      v54 = [v52 subcredentials];

      if (v54)
      {
        sub_1BD989934();
        sub_1BD60AC0C();
        v55 = sub_1BE052A34();

        v54 = sub_1BD960F00(v55);
      }
    }

    else
    {
      v54 = 0;
    }

    v56 = objc_allocWithZone(type metadata accessor for ProvisioningHeadUnitPairingFlowItem());
    v57 = sub_1BD2DBAAC(v12, v54, v51);

    *(v48 + 64) = v57;
    *(v48 + 72) = &off_1F3B9C550;
    v10 = v48;
  }

  sub_1BDA7A178(v10);
  return v63;
}

unint64_t sub_1BD989828()
{
  result = qword_1EBD5A218;
  if (!qword_1EBD5A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A218);
  }

  return result;
}

uint64_t sub_1BD989880()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9898BC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD989934()
{
  result = qword_1EBD398B8;
  if (!qword_1EBD398B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD398B8);
  }

  return result;
}

id sub_1BD989980(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_identifier];
  *v7 = 0xD000000000000014;
  v7[1] = 0x80000001BE1439B0;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_provisionedPasses] = a2;
  sub_1BE048964();
  v8 = a2;
  v9 = sub_1BE04BC84();
  LOBYTE(a1) = [v9 isAppleCardPass];

  v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_mode] = a1;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BD989A68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = *(type metadata accessor for BusinessEmailItem(0) + 24);
  v9 = sub_1BE04AA64();
  v10 = *(*(v9 - 8) + 56);
  v10(a2 + v8, 1, 1, v9);
  v11 = [a1 companyId];
  v12 = sub_1BE052434();
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
  v15 = [a1 businessId];
  v16 = sub_1BE052434();
  v18 = v17;

  a2[2] = v16;
  a2[3] = v18;
  v19 = [a1 logoURL];
  if (v19)
  {
    v20 = v19;
    sub_1BE04A9F4();

    v21 = 0;
  }

  else
  {

    v21 = 1;
  }

  v10(v7, v21, 1, v9);
  return sub_1BD4E30B0(v7, a2 + v8);
}

uint64_t sub_1BD989C10(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD989CB0, 0, 0);
}

uint64_t sub_1BD989CB0()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD989DD8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A230);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD98CA28;
  v0[13] = &block_descriptor_225;
  v0[14] = v3;
  [v1 fetchBusinessLogoForBusinessIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD989DD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1BD98A004;
  }

  else
  {
    v2 = sub_1BD989EE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD989EE8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v6 = [v3 logoURL];
  sub_1BE04A9F4();

  v5(v1, 0, 1, v4);
  sub_1BD4E30B0(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD98A004()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98A078(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1BD98A0A0, 0, 0);
}

uint64_t sub_1BD98A0A0()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD98A1C8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A238);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD98CA28;
  v0[13] = &block_descriptor_27_2;
  v0[14] = v3;
  [v1 fetchBusinessMetadataForEmailIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD98A1C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1BD98A33C;
  }

  else
  {
    v2 = sub_1BD98A2D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD98A2D8()
{
  sub_1BD989A68(*(v0 + 144), *(v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98A33C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98A3A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD989C10(a1, a2);
}

uint64_t sub_1BD98A454(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v2[4] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98A54C, v1, 0);
}

uint64_t sub_1BD98A54C()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 84));
  v3 = *v2;
  v4 = v2[1];
  if (v3 == sub_1BE052434() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1BE053B84();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = v0[2];
  if (v8[11])
  {
    v0[8] = sub_1BE052404();
    v0[9] = sub_1BE0528A4();
    v0[10] = sub_1BE052894();
    v10 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD98A744, v10, v9);
  }

  else
  {
    v11 = v8[7];
    if (!v11)
    {
LABEL_16:

      v15 = v0[1];

      return v15(0);
    }

    v12 = v8[6];
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = sub_1BD98AC18;
    v14 = v0[4];

    return sub_1BD98B014(v14, v12, v11);
  }
}