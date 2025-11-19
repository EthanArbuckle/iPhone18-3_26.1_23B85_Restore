id ProvisioningRequirementsContainer.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v4 = 0;
  *(v4 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C240);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ADB81FB0;
  v6 = sub_1AD3D3200(0, &qword_1EB59C248);
  *(v5 + 32) = v6;
  v7 = sub_1AD3D3200(0, &qword_1EB59C2D0);
  *(v5 + 40) = v7;
  sub_1ADB06990();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1ADB81FB0;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  sub_1ADB06990();

  sub_1AD4F417C(v38, &v34);
  if (!v36)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    sub_1AD4C3E44(v37);
    v18 = v38;
    goto LABEL_18;
  }

  sub_1AD4F417C(v37, &v34);
  if (!v36)
  {

LABEL_15:

    sub_1AD4C3E44(v37);
    sub_1AD4C3E44(v38);
    v18 = &v34;
LABEL_18:
    sub_1AD4C3E44(v18);

    type metadata accessor for ProvisioningRequirementsContainer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v31 = v33;
  v9 = *(v33 + 16);
  if (v9)
  {
    v10 = (v33 + 40);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *(v10 - 1);
      v13 = *v10;

      v14._countAndFlagsBits = v12;
      v14._object = v13;
      ProvisioningRequirement.RequirementType.init(rawValue:)(v14);
      v15 = v34;
      if (v34 != 35)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1AD42507C(0, *(v11 + 2) + 1, 1, v11);
        }

        v17 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v17 >= v16 >> 1)
        {
          v11 = sub_1AD42507C((v16 > 1), v17 + 1, 1, v11);
        }

        *(v11 + 2) = v17 + 1;
        v11[v17 + 32] = v15 | 0x80;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v31 + 16);
  if (v20)
  {
    v21 = (v31 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      v24._countAndFlagsBits = v22;
      v24._object = v23;
      ProvisioningRequirement.RequirementType.init(rawValue:)(v24);
      v25 = v34;
      if (v34 != 35)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1AD42507C(0, *(v11 + 2) + 1, 1, v11);
        }

        v27 = *(v11 + 2);
        v26 = *(v11 + 3);
        if (v27 >= v26 >> 1)
        {
          v11 = sub_1AD42507C((v26 > 1), v27 + 1, 1, v11);
        }

        *(v11 + 2) = v27 + 1;
        v11[v27 + 32] = v25;
      }

      v21 += 2;
      --v20;
    }

    while (v20);
  }

  *&v2[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = v11;
  v28 = sub_1ADB06980();
  sub_1AD4C3E44(v37);
  sub_1AD4C3E44(v38);
  if (v28)
  {
    v34 = 0;
    v35 = 0;
    sub_1ADB063A0();

    v28 = v35;
    if (v35)
    {
      v29 = v34;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  swift_beginAccess();
  *v4 = v29;
  *(v4 + 1) = v28;

  v32.receiver = v2;
  v32.super_class = type metadata accessor for ProvisioningRequirementsContainer();
  v30 = objc_msgSendSuper2(&v32, sel_init);

  return v30;
}

void sub_1AD4F3B88(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____PKProvisioningRequirementsContainer_requirements);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = (v3 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = *v6++;
      v10 = v11;
      if (v11 < 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AD450748(0, *(v7 + 16) + 1, 1);
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1AD450748((v8 > 1), v9 + 1, 1);
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + v9 + 32) = v10;
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v7 + 16);
  if (v12)
  {
    sub_1AD4506A8(0, v12, 0);
    v13 = 32;
    v14 = v5;
    do
    {
      v15 = ProvisioningRequirement.RequirementType.rawValue.getter();
      v48 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = v15;
        v21 = v16;
        sub_1AD4506A8((v17 > 1), v18 + 1, 1);
        v16 = v21;
        v15 = v20;
        v14 = v48;
      }

      *(v14 + 16) = v18 + 1;
      v19 = v14 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v22 = *(v3 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v24 = (v3 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      v29 = *v24++;
      v28 = v29;
      if ((v29 & 0x80000000) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AD450748(0, *(v25 + 16) + 1, 1);
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1AD450748((v26 > 1), v27 + 1, 1);
        }

        *(v25 + 16) = v27 + 1;
        *(v25 + v27 + 32) = v28;
      }

      --v22;
    }

    while (v22);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v25 + 16);
  if (v30)
  {
    v49 = v23;
    sub_1AD4506A8(0, v30, 0);
    v31 = 32;
    v32 = v49;
    do
    {
      v33 = ProvisioningRequirement.RequirementType.rawValue.getter();
      v50 = v32;
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = v33;
        v39 = v34;
        sub_1AD4506A8((v35 > 1), v36 + 1, 1);
        v34 = v39;
        v33 = v38;
        v32 = v50;
      }

      *(v32 + 16) = v36 + 1;
      v37 = v32 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      ++v31;
      --v30;
    }

    while (v30);
  }

  v40 = sub_1ADB06600();

  v41 = sub_1ADB06370();
  [a1 encodeObject:v40 forKey:v41];

  v42 = sub_1ADB06600();

  v43 = sub_1ADB06370();
  [a1 encodeObject:v42 forKey:v43];

  v44 = v47 + OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID;
  swift_beginAccess();
  if (*(v44 + 8))
  {

    v45 = sub_1ADB06370();
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_1ADB06370();
  [a1 encodeObject:v45 forKey:v46];
  swift_unknownObjectRelease();
}

id ProvisioningRequirementsContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningRequirementsContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningRequirementsContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AD4F417C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4F4398()
{
  sub_1ADB07090();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD4F4484()
{
  sub_1ADB07090();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD4F4598()
{
  sub_1ADB07090();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD4F4700()
{
  sub_1ADB07090();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD4F47E8()
{
  sub_1ADB07090();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.__allocating_init(nonce:nearbyMetadata:appearanceData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_allocWithZone(v5);
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1AD4F4A2C;

  return NearbyPeerPaymentReceiverResponseMetadata.init(nonce:nearbyMetadata:appearanceData:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1AD4F4A2C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.serializedData.getter()
{
  swift_getObjectType();
  sub_1ADB059D0();
  swift_allocObject();
  sub_1ADB059C0();
  sub_1AD4F75FC(&qword_1EB59BAA0, v0, type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata);
  v1 = sub_1ADB059B0();

  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.encryptedData.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptedData);

  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.encryptionVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptionVersion);

  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.publicKeyHash.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_publicKeyHash);

  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.ephemeralPublicKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_ephemeralPublicKey);

  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.senderAddress.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_senderAddress);

  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.receiverAddress.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverAddress);

  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.receiverImageData.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData);
  sub_1AD422FC4(v1, *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData + 8));
  return v1;
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.init(nonce:nearbyMetadata:appearanceData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[63] = a5;
  v6[64] = v5;
  v6[61] = a3;
  v6[62] = a4;
  v6[59] = a1;
  v6[60] = a2;
  v6[65] = swift_getObjectType();
  v6[66] = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  v6[67] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AD4F4ED8, 0, 0);
}

uint64_t sub_1AD4F4ED8()
{
  v147 = v0;
  v146 = *MEMORY[0x1E69E9840];
  sub_1ADB05970();
  swift_allocObject();
  sub_1ADB05960();
  sub_1AD4F75FC(&qword_1EB59BAB0, 255, type metadata accessor for NearbyPeerPaymentSenderRequestMetadata);
  sub_1ADB05950();

  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 544) = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 account];
  v4 = v3;
  *(v0 + 552) = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 supportsDeviceTap];
  v6 = [v4 paymentModeIdentifiers];
  if (!v6)
  {
    __break(1u);
    goto LABEL_46;
  }

  v14 = v6;
  v15 = [(__CFString *)v6 deviceTap];

  if (v15)
  {
    v16 = sub_1ADB063B0();
    v18 = v17;

    *(v0 + 560) = v4;
    v19 = *(v0 + 536);
    v20 = *(v0 + 504);
    *(v0 + 568) = *(v19 + 56);
    v21 = *(v19 + 64);
    *(v0 + 576) = v21;
    v141 = v21;

    v22 = [v20 displayName];
    v23 = sub_1ADB063B0();
    v25 = v24;

    *(v0 + 584) = v23;
    v143 = v25;
    *(v0 + 592) = v25;
    v26 = _s11PassKitCore17NearbyPeerPaymentO15amountFormatterSo08NSNumberH0CvgZ_0();
    *(v0 + 600) = v26;
    v27 = (v19 + 16);
    v28 = sub_1ADB06A00();
    v29 = [v26 stringForObjectValue_];

    if (v29)
    {
      v142 = sub_1ADB063B0();
      v31 = v30;
    }

    else
    {
      v142 = 0;
      v31 = 0;
    }

    v46 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ADB85690;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x80000001ADBA3260;
    *(inited + 48) = v16;
    *(inited + 56) = v18;
    *(inited + 64) = 0xD000000000000015;
    *(inited + 72) = 0x80000001ADB9C940;
    v48 = *(v46 + 48);
    *(inited + 80) = *(v46 + 40);
    *(inited + 88) = v48;
    *(inited + 96) = 0xD000000000000014;
    *(inited + 104) = 0x80000001ADBA3280;

    v6 = PKPeerPaymentContactAddressTypeToString(1);
    if (v6)
    {
      v49 = v6;
      v50 = sub_1ADB063B0();
      v52 = v51;

      *(inited + 112) = v50;
      *(inited + 120) = v52;
      *(inited + 128) = 0xD000000000000010;
      *(inited + 136) = 0x80000001ADBA32A0;
      *(inited + 144) = v23;
      *(inited + 152) = v143;
      *(inited + 160) = 0x746E756F6D61;
      *(inited + 168) = 0xE600000000000000;
      if (v31)
      {

        v53 = v31;
        v54 = v142;
      }

      else
      {
        v144 = *v27;
        v145 = *(v27 + 4);
        v55 = objc_allocWithZone(MEMORY[0x1E696AB90]);

        *(v0 + 664) = v144;
        *(v0 + 680) = v145;
        v56 = [v55 initWithDecimal_];
        v57 = [v56 stringValue];

        v54 = sub_1ADB063B0();
        v53 = v58;
      }

      v59 = *(v0 + 536);
      v61 = *(v0 + 472);
      v60 = *(v0 + 480);
      *(inited + 176) = v54;
      *(inited + 184) = v53;
      *(inited + 192) = 0x79636E6572727563;
      *(inited + 200) = 0xE800000000000000;
      v62 = v59[1];
      *(inited + 208) = *v59;
      *(inited + 216) = v62;
      strcpy((inited + 224), "recipientNonce");
      *(inited + 239) = -18;
      *(inited + 240) = v61;
      *(inited + 248) = v60;
      *(inited + 256) = 0x6E49746E65696C63;
      *(inited + 264) = 0xEA00000000006F66;
      v63 = objc_opt_self();

      v6 = [v63 clientInfoHTTPHeader];
      if (v6)
      {
        v64 = v6;

        v65 = sub_1ADB063B0();
        v67 = v66;

        *(inited + 272) = v65;
        *(inited + 280) = v67;
        *(v0 + 608) = sub_1AD4262D4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD80);
        swift_arrayDestroy();
        if (qword_1EB598130 != -1)
        {
          swift_once();
        }

        v68 = sub_1ADB05FA0();
        *(v0 + 616) = __swift_project_value_buffer(v68, qword_1EB59A9D0);

        v69 = sub_1ADB05F80();
        v70 = sub_1ADB06860();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v144 = v72;
          *v71 = 136315138;
          v73 = sub_1ADB06290();
          v75 = sub_1AD3CA88C(v73, v74, &v144);

          *(v71 + 4) = v75;
          _os_log_impl(&dword_1AD337000, v69, v70, "NearbyPeerPayment: encrypting receiver data: %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x1B26F9F20](v72, -1, -1);
          MEMORY[0x1B26F9F20](v71, -1, -1);
        }

        v76 = objc_opt_self();
        v77 = sub_1ADB06260();
        *(v0 + 456) = 0;
        v78 = [v76 dataWithJSONObject:v77 options:1 error:v0 + 456];

        v79 = *(v0 + 456);
        if (v78)
        {
          v80 = sub_1ADB05D70();
          v82 = v81;

          *(v0 + 624) = v80;
          *(v0 + 632) = v82;
          if ([objc_opt_self() useMock])
          {

            v83 = sub_1ADB05D60();
            v84 = *(v0 + 592);
            v85 = *(v0 + 584);
            v86 = *(v0 + 576);
            v87 = *(v0 + 568);
            v88 = *(v0 + 504);
            v89 = *(v0 + 512);
            v90 = (v89 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptedData);
            *v90 = v83;
            v90[1] = v91;
            v92 = (v89 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptionVersion);
            *v92 = 0;
            v92[1] = 0xE000000000000000;
            v93 = (v89 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_publicKeyHash);
            *v93 = 0;
            v93[1] = 0xE000000000000000;
            v94 = (v89 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_ephemeralPublicKey);
            *v94 = 0;
            v94[1] = 0xE000000000000000;
            v95 = (v89 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_senderAddress);
            *v95 = v87;
            v95[1] = v86;
            v96 = (v89 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverAddress);
            *v96 = v85;
            v96[1] = v84;
            v97 = [v88 imageData];
            v98 = *(v0 + 632);
            v99 = *(v0 + 624);
            v100 = *(v0 + 600);
            v101 = *(v0 + 560);
            v102 = *(v0 + 544);
            v103 = *(v0 + 536);
            if (v97)
            {
              v104 = v97;
              v105 = sub_1ADB05D70();
              v107 = v106;

              sub_1AD3C757C(v99, v98);
              sub_1AD4BC4CC(v103);
            }

            else
            {
              sub_1AD4BC4CC(*(v0 + 536));
              sub_1AD3C757C(v99, v98);

              v105 = 0;
              v107 = 0xF000000000000000;
            }

            v133 = *(v0 + 496);
            v134 = *(v0 + 504);
            v135 = *(v0 + 488);
            v136 = *(v0 + 512);
            v137 = *(v0 + 512);
            v138 = (v137 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData);
            *v138 = v105;
            v138[1] = v107;
            *(v137 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_contactAddressType) = 1;
            *(v0 + 432) = v136;
            v139 = objc_msgSendSuper2((v0 + 432), sel_init, v141);

            sub_1AD3C757C(v135, v133);

            v140 = *(v0 + 8);

            return v140(v139);
          }

          v122 = *(v0 + 544);
          v123 = swift_task_alloc();
          *(v0 + 640) = v123;
          v123[2] = v122;
          v123[3] = v80;
          v123[4] = v82;
          v124 = swift_task_alloc();
          *(v0 + 648) = v124;
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB599780);
          *v124 = v0;
          v124[1] = sub_1AD4F6ACC;
          v13 = v125;
          v11 = sub_1AD4F93C8;
          v6 = (v0 + 464);
          v9 = 0xD00000000000002ALL;
          v10 = 0x80000001ADBA32C0;
          v7 = 0;
          v8 = 0;
          v12 = v123;

          return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
        }

        v108 = v79;

        v109 = sub_1ADB05CC0();

        swift_willThrow();

        v110 = v109;
        v111 = sub_1ADB05F80();
        v112 = sub_1ADB06860();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *&v144 = v115;
          *v113 = 136315394;
          v116 = sub_1ADB06290();
          v118 = v117;

          v119 = sub_1AD3CA88C(v116, v118, &v144);

          *(v113 + 4) = v119;
          *(v113 + 12) = 2112;
          v120 = v109;
          v121 = _swift_stdlib_bridgeErrorToNSError();
          *(v113 + 14) = v121;
          *v114 = v121;
          _os_log_impl(&dword_1AD337000, v111, v112, "NearbyPeerPayment: error serializing dictionary representation of receiver data: %s error: %@", v113, 0x16u);
          sub_1AD3CAFA0(v114);
          MEMORY[0x1B26F9F20](v114, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v115);
          MEMORY[0x1B26F9F20](v115, -1, -1);
          MEMORY[0x1B26F9F20](v113, -1, -1);
        }

        else
        {
        }

        v126 = *(v0 + 600);
        v127 = *(v0 + 560);
        v128 = *(v0 + 544);
        v129 = *(v0 + 536);
        v130 = *(v0 + 496);
        v131 = *(v0 + 504);
        v132 = *(v0 + 488);
        swift_willThrow();

        sub_1AD3C757C(v132, v130);
        v42 = v129;
        goto LABEL_13;
      }

LABEL_47:
      __break(1u);
      return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v5)
  {
LABEL_8:

    if (qword_1EB598130 != -1)
    {
      swift_once();
    }

    v32 = sub_1ADB05FA0();
    __swift_project_value_buffer(v32, qword_1EB59A9D0);
    v33 = sub_1ADB05F80();
    v34 = sub_1ADB06850();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1AD337000, v33, v34, "NearbyPeerPayment: receiver data encryption failed, missing payment mode identifier", v35, 2u);
      MEMORY[0x1B26F9F20](v35, -1, -1);
    }

    v36 = *(v0 + 544);
    v37 = *(v0 + 536);
    v38 = *(v0 + 496);
    v39 = *(v0 + 504);
    v40 = *(v0 + 488);

    sub_1AD3CA7CC();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();

    sub_1AD3C757C(v40, v38);
    v42 = v37;
LABEL_13:
    sub_1AD4BC4CC(v42);
    swift_deallocPartialClassInstance();

    v43 = *(v0 + 8);

    return v43();
  }

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 448;
  *(v0 + 24) = sub_1AD4F5D5C;
  v45 = swift_continuation_init();
  *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C318);
  *(v0 + 368) = MEMORY[0x1E69E9820];
  *(v0 + 376) = 1107296256;
  *(v0 + 384) = sub_1AD4F7644;
  *(v0 + 392) = &block_descriptor_41;
  *(v0 + 400) = v45;
  [v2 updateAccountWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1AD4F5D5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AD4F5E68, 0, 0);
}

uint64_t sub_1AD4F5E68()
{
  v143 = v0;
  v142 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 544);

  v2 = *(v0 + 448);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [v2 paymentModeIdentifiers];
  if (!v3)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v3;
  v12 = [(__CFString *)v3 deviceTap];

  if (!v12)
  {
LABEL_6:

    if (qword_1EB598130 != -1)
    {
      swift_once();
    }

    v29 = sub_1ADB05FA0();
    __swift_project_value_buffer(v29, qword_1EB59A9D0);
    v30 = sub_1ADB05F80();
    v31 = sub_1ADB06850();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1AD337000, v30, v31, "NearbyPeerPayment: receiver data encryption failed, missing payment mode identifier", v32, 2u);
      MEMORY[0x1B26F9F20](v32, -1, -1);
    }

    v33 = *(v0 + 544);
    v34 = *(v0 + 536);
    v35 = *(v0 + 496);
    v36 = *(v0 + 504);
    v37 = *(v0 + 488);

    sub_1AD3CA7CC();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

    sub_1AD3C757C(v37, v35);
    v39 = v34;
    goto LABEL_11;
  }

  v13 = sub_1ADB063B0();
  v15 = v14;

  *(v0 + 560) = v2;
  v16 = *(v0 + 536);
  v17 = *(v0 + 504);
  *(v0 + 568) = *(v16 + 56);
  v18 = *(v16 + 64);
  *(v0 + 576) = v18;
  v137 = v18;

  v19 = [v17 displayName];
  v20 = sub_1ADB063B0();
  v22 = v21;

  *(v0 + 584) = v20;
  v139 = v22;
  *(v0 + 592) = v22;
  v23 = _s11PassKitCore17NearbyPeerPaymentO15amountFormatterSo08NSNumberH0CvgZ_0();
  *(v0 + 600) = v23;
  v24 = (v16 + 16);
  v25 = sub_1ADB06A00();
  v26 = [v23 stringForObjectValue_];

  if (v26)
  {
    v138 = sub_1ADB063B0();
    v28 = v27;
  }

  else
  {
    v138 = 0;
    v28 = 0;
  }

  v42 = *(v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB85690;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001ADBA3260;
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 64) = 0xD000000000000015;
  *(inited + 72) = 0x80000001ADB9C940;
  v44 = *(v42 + 48);
  *(inited + 80) = *(v42 + 40);
  *(inited + 88) = v44;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x80000001ADBA3280;

  v3 = PKPeerPaymentContactAddressTypeToString(1);
  if (!v3)
  {
    goto LABEL_40;
  }

  v45 = v3;
  v46 = sub_1ADB063B0();
  v48 = v47;

  *(inited + 112) = v46;
  *(inited + 120) = v48;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000001ADBA32A0;
  *(inited + 144) = v20;
  *(inited + 152) = v139;
  *(inited + 160) = 0x746E756F6D61;
  *(inited + 168) = 0xE600000000000000;
  if (v28)
  {

    v49 = v28;
    v50 = v138;
  }

  else
  {
    v140 = *v24;
    v141 = *(v24 + 4);
    v51 = objc_allocWithZone(MEMORY[0x1E696AB90]);

    *(v0 + 664) = v140;
    *(v0 + 680) = v141;
    v52 = [v51 initWithDecimal_];
    v53 = [v52 stringValue];

    v50 = sub_1ADB063B0();
    v49 = v54;
  }

  v55 = *(v0 + 536);
  v57 = *(v0 + 472);
  v56 = *(v0 + 480);
  *(inited + 176) = v50;
  *(inited + 184) = v49;
  *(inited + 192) = 0x79636E6572727563;
  *(inited + 200) = 0xE800000000000000;
  v58 = v55[1];
  *(inited + 208) = *v55;
  *(inited + 216) = v58;
  strcpy((inited + 224), "recipientNonce");
  *(inited + 239) = -18;
  *(inited + 240) = v57;
  *(inited + 248) = v56;
  *(inited + 256) = 0x6E49746E65696C63;
  *(inited + 264) = 0xEA00000000006F66;
  v59 = objc_opt_self();

  v3 = [v59 clientInfoHTTPHeader];
  if (!v3)
  {
    goto LABEL_41;
  }

  v60 = v3;

  v61 = sub_1ADB063B0();
  v63 = v62;

  *(inited + 272) = v61;
  *(inited + 280) = v63;
  *(v0 + 608) = sub_1AD4262D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD80);
  swift_arrayDestroy();
  if (qword_1EB598130 != -1)
  {
    swift_once();
  }

  v64 = sub_1ADB05FA0();
  *(v0 + 616) = __swift_project_value_buffer(v64, qword_1EB59A9D0);

  v65 = sub_1ADB05F80();
  v66 = sub_1ADB06860();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v140 = v68;
    *v67 = 136315138;
    v69 = sub_1ADB06290();
    v71 = sub_1AD3CA88C(v69, v70, &v140);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_1AD337000, v65, v66, "NearbyPeerPayment: encrypting receiver data: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1B26F9F20](v68, -1, -1);
    MEMORY[0x1B26F9F20](v67, -1, -1);
  }

  v72 = objc_opt_self();
  v73 = sub_1ADB06260();
  *(v0 + 456) = 0;
  v74 = [v72 dataWithJSONObject:v73 options:1 error:v0 + 456];

  v75 = *(v0 + 456);
  if (v74)
  {
    v76 = sub_1ADB05D70();
    v78 = v77;

    *(v0 + 624) = v76;
    *(v0 + 632) = v78;
    if ([objc_opt_self() useMock])
    {

      v79 = sub_1ADB05D60();
      v80 = *(v0 + 592);
      v81 = *(v0 + 584);
      v82 = *(v0 + 576);
      v83 = *(v0 + 568);
      v84 = *(v0 + 504);
      v85 = *(v0 + 512);
      v86 = (v85 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptedData);
      *v86 = v79;
      v86[1] = v87;
      v88 = (v85 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptionVersion);
      *v88 = 0;
      v88[1] = 0xE000000000000000;
      v89 = (v85 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_publicKeyHash);
      *v89 = 0;
      v89[1] = 0xE000000000000000;
      v90 = (v85 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_ephemeralPublicKey);
      *v90 = 0;
      v90[1] = 0xE000000000000000;
      v91 = (v85 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_senderAddress);
      *v91 = v83;
      v91[1] = v82;
      v92 = (v85 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverAddress);
      *v92 = v81;
      v92[1] = v80;
      v93 = [v84 imageData];
      v94 = *(v0 + 632);
      v95 = *(v0 + 624);
      v96 = *(v0 + 600);
      v97 = *(v0 + 560);
      v98 = *(v0 + 544);
      v99 = *(v0 + 536);
      if (v93)
      {
        v100 = v93;
        v101 = sub_1ADB05D70();
        v103 = v102;

        sub_1AD3C757C(v95, v94);
        sub_1AD4BC4CC(v99);
      }

      else
      {
        sub_1AD4BC4CC(*(v0 + 536));
        sub_1AD3C757C(v95, v94);

        v101 = 0;
        v103 = 0xF000000000000000;
      }

      v129 = *(v0 + 496);
      v130 = *(v0 + 504);
      v131 = *(v0 + 488);
      v132 = *(v0 + 512);
      v133 = *(v0 + 512);
      v134 = (v133 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData);
      *v134 = v101;
      v134[1] = v103;
      *(v133 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_contactAddressType) = 1;
      *(v0 + 432) = v132;
      v135 = objc_msgSendSuper2((v0 + 432), sel_init, v137);

      sub_1AD3C757C(v131, v129);

      v136 = *(v0 + 8);

      return v136(v135);
    }

    v118 = *(v0 + 544);
    v119 = swift_task_alloc();
    *(v0 + 640) = v119;
    v119[2] = v118;
    v119[3] = v76;
    v119[4] = v78;
    v120 = swift_task_alloc();
    *(v0 + 648) = v120;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB599780);
    *v120 = v0;
    v120[1] = sub_1AD4F6ACC;
    v10 = v121;
    v8 = sub_1AD4F93C8;
    v3 = (v0 + 464);
    v6 = 0xD00000000000002ALL;
    v7 = 0x80000001ADBA32C0;
    v4 = 0;
    v5 = 0;
    v9 = v119;

    return MEMORY[0x1EEE6DE38](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v104 = v75;

  v105 = sub_1ADB05CC0();

  swift_willThrow();

  v106 = v105;
  v107 = sub_1ADB05F80();
  v108 = sub_1ADB06860();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v140 = v111;
    *v109 = 136315394;
    v112 = sub_1ADB06290();
    v114 = v113;

    v115 = sub_1AD3CA88C(v112, v114, &v140);

    *(v109 + 4) = v115;
    *(v109 + 12) = 2112;
    v116 = v105;
    v117 = _swift_stdlib_bridgeErrorToNSError();
    *(v109 + 14) = v117;
    *v110 = v117;
    _os_log_impl(&dword_1AD337000, v107, v108, "NearbyPeerPayment: error serializing dictionary representation of receiver data: %s error: %@", v109, 0x16u);
    sub_1AD3CAFA0(v110);
    MEMORY[0x1B26F9F20](v110, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x1B26F9F20](v111, -1, -1);
    MEMORY[0x1B26F9F20](v109, -1, -1);
  }

  else
  {
  }

  v122 = *(v0 + 600);
  v123 = *(v0 + 560);
  v124 = *(v0 + 544);
  v125 = *(v0 + 536);
  v126 = *(v0 + 496);
  v127 = *(v0 + 504);
  v128 = *(v0 + 488);
  swift_willThrow();

  sub_1AD3C757C(v128, v126);
  v39 = v125;
LABEL_11:
  sub_1AD4BC4CC(v39);
  swift_deallocPartialClassInstance();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1AD4F6ACC()
{
  *(*v1 + 656) = v0;

  if (v0)
  {

    v2 = sub_1AD4F734C;
  }

  else
  {

    v2 = sub_1AD4F6C54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AD4F6C54()
{
  v88 = v0;
  v87[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 464);
  if (*(v1 + 16))
  {
    v2 = sub_1AD425BEC(0x6E6F6973726576, 0xE700000000000000);
    if (v3)
    {
      if (*(v1 + 16))
      {
        v4 = (*(v1 + 56) + 16 * v2);
        v5 = *v4;
        v6 = v4[1];

        v7 = sub_1AD425BEC(0x654B63696C627570, 0xED00006873614879);
        if ((v8 & 1) != 0 && *(v1 + 16))
        {
          v9 = (*(v1 + 56) + 16 * v7);
          v11 = *v9;
          v10 = v9[1];

          v12 = sub_1AD425BEC(0xD000000000000012, 0x80000001ADB9CA30);
          if ((v13 & 1) != 0 && *(v1 + 16))
          {
            v14 = (*(v1 + 56) + 16 * v12);
            v15 = *v14;
            v16 = v14[1];

            v17 = sub_1AD425BEC(1635017060, 0xE400000000000000);
            if (v18)
            {
              v19 = v17;

              v20 = (*(v1 + 56) + 16 * v19);
              v22 = *v20;
              v21 = v20[1];

              v23 = *(v0 + 592);
              v24 = *(v0 + 584);
              v25 = *(v0 + 576);
              v26 = *(v0 + 568);
              v27 = *(v0 + 504);
              v28 = *(v0 + 512);
              v29 = (v28 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptedData);
              *v29 = v22;
              v29[1] = v21;
              v30 = (v28 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptionVersion);
              *v30 = v5;
              v30[1] = v6;
              v31 = (v28 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_publicKeyHash);
              *v31 = v11;
              v31[1] = v10;
              v32 = (v28 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_ephemeralPublicKey);
              *v32 = v15;
              v32[1] = v16;
              v33 = (v28 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_senderAddress);
              *v33 = v26;
              v33[1] = v25;
              v34 = (v28 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverAddress);
              *v34 = v24;
              v34[1] = v23;
              v35 = [v27 imageData];
              v36 = *(v0 + 632);
              v37 = *(v0 + 624);
              v38 = *(v0 + 600);
              v39 = *(v0 + 560);
              v40 = *(v0 + 544);
              v41 = *(v0 + 536);
              if (v35)
              {
                v42 = v35;
                v43 = sub_1ADB05D70();
                v45 = v44;

                sub_1AD3C757C(v37, v36);
                sub_1AD4BC4CC(v41);
              }

              else
              {
                sub_1AD4BC4CC(*(v0 + 536));
                sub_1AD3C757C(v37, v36);

                v43 = 0;
                v45 = 0xF000000000000000;
              }

              v79 = *(v0 + 496);
              v80 = *(v0 + 504);
              v81 = *(v0 + 488);
              v82 = *(v0 + 512);
              v83 = *(v0 + 512);
              v84 = (v83 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData);
              *v84 = v43;
              v84[1] = v45;
              *(v83 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_contactAddressType) = 1;
              *(v0 + 432) = v82;
              v85 = objc_msgSendSuper2((v0 + 432), sel_init);

              sub_1AD3C757C(v81, v79);

              v86 = *(v0 + 8);

              return v86(v85);
            }
          }
        }
      }
    }
  }

  v46 = sub_1ADB05F80();
  v47 = sub_1ADB06850();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v87[0] = v49;
    *v48 = 136315138;
    v50 = sub_1ADB06290();
    v52 = v51;

    v53 = sub_1AD3CA88C(v50, v52, v87);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1AD337000, v46, v47, "NearbyPeerPayment: receiver data encryption failed, fields missing from fields: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1B26F9F20](v49, -1, -1);
    MEMORY[0x1B26F9F20](v48, -1, -1);
  }

  else
  {
  }

  v54 = *(v0 + 632);
  v55 = *(v0 + 624);
  sub_1AD4F93D4();
  v56 = swift_allocError();
  *v57 = 1;
  swift_willThrow();
  sub_1AD3C757C(v55, v54);

  v58 = v56;
  v59 = sub_1ADB05F80();
  v60 = sub_1ADB06860();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v87[0] = v63;
    *v61 = 136315394;
    v64 = sub_1ADB06290();
    v66 = v65;

    v67 = sub_1AD3CA88C(v64, v66, v87);

    *(v61 + 4) = v67;
    *(v61 + 12) = 2112;
    v68 = v56;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v61 + 14) = v69;
    *v62 = v69;
    _os_log_impl(&dword_1AD337000, v59, v60, "NearbyPeerPayment: error serializing dictionary representation of receiver data: %s error: %@", v61, 0x16u);
    sub_1AD3CAFA0(v62);
    MEMORY[0x1B26F9F20](v62, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1B26F9F20](v63, -1, -1);
    MEMORY[0x1B26F9F20](v61, -1, -1);
  }

  else
  {
  }

  v70 = *(v0 + 600);
  v71 = *(v0 + 560);
  v72 = *(v0 + 544);
  v73 = *(v0 + 536);
  v74 = *(v0 + 496);
  v75 = *(v0 + 504);
  v76 = *(v0 + 488);
  swift_willThrow();

  sub_1AD3C757C(v76, v74);
  sub_1AD4BC4CC(v73);
  swift_deallocPartialClassInstance();

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_1AD4F734C()
{
  v24 = v0;
  v23[1] = *MEMORY[0x1E69E9840];
  sub_1AD3C757C(v0[78], v0[79]);
  v1 = v0[82];

  v2 = v1;
  v3 = sub_1ADB05F80();
  v4 = sub_1ADB06860();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v5 = 136315394;
    v8 = sub_1ADB06290();
    v10 = v9;

    v11 = sub_1AD3CA88C(v8, v10, v23);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v13;
    *v6 = v13;
    _os_log_impl(&dword_1AD337000, v3, v4, "NearbyPeerPayment: error serializing dictionary representation of receiver data: %s error: %@", v5, 0x16u);
    sub_1AD3CAFA0(v6);
    MEMORY[0x1B26F9F20](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B26F9F20](v7, -1, -1);
    MEMORY[0x1B26F9F20](v5, -1, -1);
  }

  else
  {
  }

  v14 = v0[75];
  v15 = v0[70];
  v16 = v0[68];
  v17 = v0[67];
  v18 = v0[62];
  v19 = v0[63];
  v20 = v0[61];
  swift_willThrow();

  sub_1AD3C757C(v20, v18);
  sub_1AD4BC4CC(v17);
  swift_deallocPartialClassInstance();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1AD4F75FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1AD4F7644(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

void sub_1AD4F76A8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C358);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  if (a2)
  {
    v8 = sub_1ADB05D50();
    (*(v5 + 16))(v7, a1, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v7, v4);
    aBlock[4] = sub_1AD4F9A94;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD4F7A5C;
    aBlock[3] = &block_descriptor_33_1;
    v11 = _Block_copy(aBlock);

    [a2 encryptData:v8 usingCertificateWithDestination:1 completion:v11];
    _Block_release(v11);
  }
}

uint64_t sub_1AD4F7880(uint64_t a1, void *a2)
{
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C358);
    return sub_1ADB066E0();
  }

  else
  {
    if (qword_1EB598130 != -1)
    {
      swift_once();
    }

    v4 = sub_1ADB05FA0();
    __swift_project_value_buffer(v4, qword_1EB59A9D0);
    v5 = a2;
    v6 = sub_1ADB05F80();
    v7 = sub_1ADB06850();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      if (a2)
      {
        v10 = a2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v8 + 4) = v11;
      *v9 = v12;
      _os_log_impl(&dword_1AD337000, v6, v7, "NearbyPeerPayment: receiver data encryption failed with error %@", v8, 0xCu);
      sub_1AD3CAFA0(v9);
      MEMORY[0x1B26F9F20](v9, -1, -1);
      MEMORY[0x1B26F9F20](v8, -1, -1);
    }

    sub_1AD4F93D4();
    swift_allocError();
    *v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C358);
    return sub_1ADB066D0();
  }
}

uint64_t sub_1AD4F7A5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1ADB06280();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t static NearbyPeerPaymentReceiverResponseMetadata.receiverData(nonce:nearbyMetadata:appearanceData:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_1ADB06720();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[9] = a6;
  v18[10] = a7;

  sub_1AD3C7528(a3, a4);
  v19 = a5;

  sub_1AD457038(0, 0, v16, &unk_1ADB856D8, v18);
}

uint64_t sub_1AD4F7C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v11;
  v8[10] = v12;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AD4F7D0C, 0, 0);
}

uint64_t sub_1AD4F7D0C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = sub_1ADB06720();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v2;
  v8[8] = v3;

  v9 = v3;
  sub_1AD3C7528(v4, v2);
  v10 = sub_1AD458EA4(0, 0, v1, &unk_1ADB858F8, v8);
  v0[12] = v10;
  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
  *v11 = v0;
  v11[1] = sub_1AD4F7EAC;
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA20](v0 + 2, v10, v12, v13, v14);
}

uint64_t sub_1AD4F7EAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AD4F7FA8, 0, 0);
}

uint64_t sub_1AD4F7FA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  if (*(v0 + 24))
  {
    v2(0);

    sub_1AD4F9A7C(v1);
  }

  else
  {
    sub_1AD4F9A88(*(v0 + 16));
    v3 = v1;
    v2(v1);

    sub_1AD4F9A7C(v1);
    sub_1AD4F9A7C(v1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AD4F8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  *(v8 + 16) = a1;
  objc_allocWithZone(type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata());

  sub_1AD3C7528(a6, a7);
  v14 = a8;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_1AD4F8194;

  return NearbyPeerPaymentReceiverResponseMetadata.init(nonce:nearbyMetadata:appearanceData:)(a4, a5, a6, a7, v14);
}

uint64_t sub_1AD4F8194(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AD4F82E0, 0, 0);
  }
}

uint64_t sub_1AD4F8618@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AD4F9808();
  *a1 = result;
  return result;
}

uint64_t sub_1AD4F8648@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006174614464;
  v4 = 0x6574707972636E65;
  v5 = 0x80000001ADB9CA50;
  if (v2 == 6)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v2 != 6)
  {
    v5 = 0x80000001ADB9CA70;
  }

  v7 = 0xED00007373657264;
  v8 = 0x64417265646E6573;
  result = 0x7265766965636572;
  if (v2 != 4)
  {
    v8 = 0x7265766965636572;
    v7 = 0xEF73736572646441;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xED00006873614879;
  if (v2 == 2)
  {
    v11 = 0x654B63696C627570;
  }

  else
  {
    v11 = 0xD000000000000012;
  }

  if (v2 != 2)
  {
    v10 = 0x80000001ADB9CA30;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001ADB9CA10;
  }

  if (*v1 > 1u)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_1AD4F8778()
{
  v1 = *v0;
  v2 = 0x6574707972636E65;
  if (v1 == 6)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x64417265646E6573;
  if (v1 != 4)
  {
    v4 = 0x7265766965636572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 == 2)
  {
    v5 = 0x654B63696C627570;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AD4F88A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AD4F9808();
  *a1 = result;
  return result;
}

uint64_t sub_1AD4F88CC(uint64_t a1)
{
  v2 = sub_1AD4F951C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AD4F8908(uint64_t a1)
{
  v2 = sub_1AD4F951C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id NearbyPeerPaymentReceiverResponseMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyPeerPaymentReceiverResponseMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NearbyPeerPaymentReceiverResponseMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C328);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AD4F951C();
  sub_1ADB07150();
  LOBYTE(v12) = 0;
  sub_1ADB06EA0();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1ADB06EA0();
    LOBYTE(v12) = 2;
    sub_1ADB06EA0();
    LOBYTE(v12) = 3;
    sub_1ADB06EA0();
    LOBYTE(v12) = 4;
    sub_1ADB06EA0();
    LOBYTE(v12) = 5;
    sub_1ADB06EA0();
    v9 = *(v3 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData + 8);
    v12 = *(v3 + OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData);
    v13 = v9;
    v11[15] = 6;
    sub_1AD422FC4(v12, v9);
    sub_1AD3C7618();
    sub_1ADB06E90();
    sub_1AD422FB0(v12, v13);
    LOBYTE(v12) = 7;
    sub_1ADB06EC0();
  }

  return (*(v6 + 8))(v8, v5);
}

id NearbyPeerPaymentReceiverResponseMetadata.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C338);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AD4F951C();
  sub_1ADB07120();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = sub_1ADB06DE0();
    v11 = &v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptedData];
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v31) = 1;
    v13 = sub_1ADB06DE0();
    v14 = &v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_encryptionVersion];
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v31) = 2;
    v16 = sub_1ADB06DE0();
    v17 = &v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_publicKeyHash];
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v31) = 3;
    v19 = sub_1ADB06DE0();
    v20 = &v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_ephemeralPublicKey];
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v31) = 4;
    v22 = sub_1ADB06DE0();
    v23 = &v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_senderAddress];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v31) = 5;
    v25 = sub_1ADB06DE0();
    v26 = &v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverAddress];
    *v26 = v25;
    v26[1] = v27;
    v32 = 6;
    sub_1AD3C6384();
    sub_1ADB06DD0();
    *&v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_receiverImageData] = v31;
    LOBYTE(v31) = 7;
    *&v1[OBJC_IVAR____PKNearbyPeerPaymentReceiverResponseMetadata_contactAddressType] = sub_1ADB06E00();
    v30.receiver = v1;
    v30.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v30, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_1AD4F9328@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = NearbyPeerPaymentReceiverResponseMetadata.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1AD4F93D4()
{
  result = qword_1EB59C320;
  if (!qword_1EB59C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C320);
  }

  return result;
}

uint64_t sub_1AD4F9428(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AD3D0F70;

  return sub_1AD4F7C5C(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1AD4F951C()
{
  result = qword_1EB59C330;
  if (!qword_1EB59C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C330);
  }

  return result;
}

uint64_t dispatch thunk of NearbyPeerPaymentReceiverResponseMetadata.__allocating_init(nonce:nearbyMetadata:appearanceData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(v5 + 144) + **(v5 + 144));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1AD3CB1C8;

  return v14(a1, a2, a3, a4, a5);
}

unint64_t sub_1AD4F9704()
{
  result = qword_1EB59C340;
  if (!qword_1EB59C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C340);
  }

  return result;
}

unint64_t sub_1AD4F975C()
{
  result = qword_1EB59C348;
  if (!qword_1EB59C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C348);
  }

  return result;
}

unint64_t sub_1AD4F97B4()
{
  result = qword_1EB59C350;
  if (!qword_1EB59C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C350);
  }

  return result;
}

uint64_t sub_1AD4F9808()
{
  v0 = sub_1ADB06D60();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  sub_1AD3C757C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AD4F98AC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AD3CF220;

  return sub_1AD4F7C5C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AD4F99A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AD3CF220;

  return sub_1AD4F8094(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AD4F9A94(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C358);

  return sub_1AD4F7880(a1, a2);
}

uint64_t block_copy_helper_31_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ProvisioningCredentialsConfiguration.Credential.paymentCredential.getter()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id ProvisioningCredentialsConfiguration.Credential.provisioningState.getter()
{
  v1 = *v0;
  if (*(v0 + 24) > 3u)
  {

    return v1;
  }

  else if (*(v0 + 24) - 1 >= 3)
  {
    result = [v1 state];
    if (!result)
    {
      __break(1u);
    }
  }

  else
  {
    v2 = objc_allocWithZone(PKSecureElementProvisioningState);

    return [v2 init];
  }

  return result;
}

uint64_t ProvisioningCredentialsConfiguration.Credential.carKeyTransferComponents.getter()
{
  if (*(v0 + 24))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
  }

  v2 = [v1 statefulTransferCredential];

  if (v2)
  {
    v3 = [v2 invitation];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5 && (v6 = v5, (v7 = [v2 handle]) != 0))
      {
        v8 = v7;
        v9 = [v2 share];

        if (v9)
        {
          return v6;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

id ProvisioningCredentialsConfiguration.Credential.statefulTransferCredential.getter()
{
  if (*(v0 + 24))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
  }

  v2 = [v1 statefulTransferCredential];

  return v2;
}

BOOL ProvisioningCredentialsConfiguration.Credential.isAppleBalance.getter()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *v0;
  if ([v5 isAppleBalanceCredential])
  {
    sub_1AD3CC2E0(v2, v3, v4, 0);
    return 1;
  }

  else
  {
    v6 = [v5 credentialType];
    sub_1AD3CC2E0(v2, v3, v4, 0);
    return v6 == 135;
  }
}

uint64_t ProvisioningCredentialsConfiguration.Credential.isPushProvisioningCredential.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (v2 <= 2)
  {
    if (*(v0 + 24))
    {
      if (v2 != 1)
      {
        return 1;
      }
    }

    else
    {
      if ([*v0 isShareableCredential] & 1) != 0 || (objc_msgSend(v1, sel_isIdentityCredential))
      {
        return 1;
      }

      result = [v1 accountCredential];
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = [result sharingInstanceIdentifier];

      if (v5)
      {

        return 1;
      }
    }

    return 0;
  }

  if (v2 != 3)
  {
    return 0;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

void ProvisioningCredentialsConfiguration.Credential.addPassRequestConfiguration.getter()
{
  if (*(v0 + 24) - 2 >= 4)
  {
    v1 = *v0;
    if (*(v0 + 24))
    {
      v5 = v1;
    }

    else
    {
      v2 = [v1 issuerProvisioningExtensionCredential];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 entry];

        if (v4)
        {
          [v4 addRequestConfiguration];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id ProvisioningCredentialsConfiguration.Credential.pushableConfiguration.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (v2 != 3)
  {
    if (v2 == 2)
    {
      swift_unknownObjectRetain();
      return v1;
    }

    return 0;
  }

  v4 = *(v0 + 8);
  v3 = *(v0 + 16);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v1;
  v8 = [v6 metadatas];
  if (!v8)
  {
    sub_1AD3D3200(0, &unk_1EB59A7C0);
    sub_1ADB06610();
    v8 = sub_1ADB06600();
  }

  v9 = [objc_allocWithZone(PKAddShareablePassConfiguration) initWithPrimaryAction:0 credentialsMetadata:v8];

  sub_1AD3CC2E0(v1, v4, v3, 3u);
  return v9;
}

uint64_t sub_1AD4FA0E4(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1ADB06B30();
    v7 = v6;
    v8 = sub_1ADB06BA0();
    v10 = v9;
    v11 = MEMORY[0x1B26F6BE0](v5, v7, v8, v9);
    sub_1AD4FB58C(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1AD4FB58C(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_1ADB06B10();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1AD4FB598(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_1AD4FB58C(v5, v7, v4 != 0);
  return v14;
}

id ProvisioningCredentialsConfiguration.Credential.carKeyPairingConfiguration.getter()
{
  if (*(v0 + 24))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
  }

  v2 = [v1 carKeyTerminalPairingCredential];

  v3 = [v2 configuration];
  return v3;
}

BOOL ProvisioningCredentialsConfiguration.Credential.isCarKey.getter()
{
  ProvisioningCredentialsConfiguration.Credential.carKeyPassConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

void *ProvisioningCredentialsConfiguration.__allocating_init(credentials:availableDestinationDevices:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void ProvisioningCredentialsConfiguration.Credential.carKeyPassConfiguration.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v35 = *v0;
  LOBYTE(v36) = *(v0 + 24);
  v5 = ProvisioningCredentialsConfiguration.Credential.carKeyTransferComponents.getter();
  if (v5)
  {
    v8 = v5;
    v9 = v7;

    v10 = [objc_allocWithZone(PKAppletSubcredentialSharingInvitation) initWithCrossPlatformInvitation_];
    [v10 addCarKeyPassConfiguration];

LABEL_3:
    return;
  }

  if (v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v2;
  }

  v12 = [v11 carKeyTerminalPairingCredential];

  v13 = [v12 configuration];
  if (!v4 && !v13)
  {
    v14 = v2;
    v15 = [v14 localAppletSubcredentialPassCredential];
    if (v15)
    {
      v16 = v15;
      [v15 configuration];

LABEL_12:
      sub_1AD3CC2E0(v2, v1, v3, 0);
      return;
    }

    v17 = [v14 remoteCredential];
    if (!v17)
    {
      goto LABEL_12;
    }

    v8 = v17;
    if ([v17 transferType] == 2)
    {
      v18 = [v8 underlyingPaymentPass];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 paymentApplications];

        if (!v20)
        {
          __break(1u);
          goto LABEL_30;
        }

        sub_1AD3D3200(0, &unk_1EB59BAE0);
        sub_1AD4C2994(&qword_1EB599EF0, &unk_1EB59BAE0);
        v21 = sub_1ADB06790();

        v22 = sub_1AD4FA0E4(v21, &unk_1EB59BAE0);

        if (v22)
        {
          v23 = [v22 subcredentials];

          if (v23)
          {
            sub_1AD3D3200(0, &unk_1EB59BAF0);
            sub_1AD4C2994(&unk_1EB59C360, &unk_1EB59BAF0);
            v24 = sub_1ADB06790();

            v25 = sub_1AD4FA0E4(v24, &unk_1EB59BAF0);

            if (!v25)
            {
              sub_1AD3CC2E0(v2, v1, v3, 0);
              goto LABEL_3;
            }

            v26 = objc_allocWithZone(PKAddCarKeyPassConfiguration);
            v27 = v25;
            v28 = [v26 init];
            [v28 setSupportedRadioTechnologies_];
            v29 = v28;
            v30 = [v27 brandIdentifier];
            if (v30 || (v30 = [v27 manufacturerIdentifier]) != 0)
            {
              v31 = v30;
              sub_1ADB063B0();

              v32 = sub_1ADB06370();
            }

            else
            {
              v32 = 0;
            }

            [v29 setIssuerIdentifier_];

            v33 = [v27 manufacturerIdentifier];
            if (v33)
            {
              v34 = v33;
              [v29 setManufacturerIdentifier_];

              goto LABEL_12;
            }

LABEL_31:
            __break(1u);
            return;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }
    }

    sub_1AD3CC2E0(v2, v1, v3, 0);
  }
}

uint64_t ProvisioningCredentialsConfiguration.Credential.isAccountCredential.getter()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  v2 = *v0;
  if ([*v0 isAccountCredential])
  {
    return 1;
  }

  else
  {
    return [v2 isAccountReferenceCredential];
  }
}

void ProvisioningCredentialsConfiguration.Credential.transferType.getter(char *a1@<X8>)
{
  if (*(v1 + 24))
  {
LABEL_2:
    v2 = 2;
LABEL_3:
    *a1 = v2;
    return;
  }

  v3 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *v1;
  v8 = [v7 localPassCredential];
  if (!v8)
  {
LABEL_8:
    v13 = [v7 remoteCredential];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 status];
      sub_1AD3CC2E0(v4, v5, v6, 0);

      a1 = v3;
      if (v15 == 5)
      {
        v2 = 1;
        goto LABEL_3;
      }
    }

    else
    {
      sub_1AD3CC2E0(v4, v5, v6, 0);
      a1 = v3;
    }

    goto LABEL_2;
  }

  v9 = v8;
  v10 = [v8 paymentPass];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 requiresTransferSerialNumberBasedProvisioning];

    if (v12)
    {
      sub_1AD3CC2E0(v4, v5, v6, 0);
      v2 = 0;
      a1 = v3;
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1AD4FA96C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1AD4FAA04(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1AD4FAA9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_1AD4FAB34(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1AD4FAB7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_1AD4FAC14(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void sub_1AD4FACAC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

void *sub_1AD4FAD04()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1AD4FAD48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void *ProvisioningCredentialsConfiguration.init(credentials:availableDestinationDevices:)(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t ProvisioningCredentialsConfiguration.deinit()
{

  return v0;
}

uint64_t ProvisioningCredentialsConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1AD4FAE78()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ProvisioningCredentialsConfiguration.CarKeyInviteState.__allocating_init(sharedState:share:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ProvisioningCredentialsConfiguration.CarKeyInviteState.init(sharedState:share:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ProvisioningCredentialsConfiguration.CarKeyInviteState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id ProvisioningCredentialsConfiguration.Credential.invitation.getter()
{
  if (*(v0 + 24) != 3)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ProvisioningCredentialsConfiguration.Credential.passCount.getter()
{
  if (*(v0 + 24) != 2)
  {
    return 1;
  }

  v1 = [*v0 metadataProviders];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AE80);
  v2 = sub_1ADB06610();

  if (v2 >> 62)
  {
    v3 = sub_1ADB06D00();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

uint64_t ProvisioningCredentialsConfiguration.Credential.TransferType.hashValue.getter()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](v1);
  return sub_1ADB070D0();
}

id sub_1AD4FB0FC(SEL *a1)
{
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return [*v1 *a1];
  }
}

unint64_t sub_1AD4FB138()
{
  result = qword_1EB59C370;
  if (!qword_1EB59C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C370);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AD4FB3AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AD4FB3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1AD4FB58C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1AD4FB598(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B26F6C10](a1, a2, v9);
      sub_1AD3D3200(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1AD3D3200(0, a5);
    if (sub_1ADB06B60() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1ADB06B70();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1ADB069C0();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1ADB069D0();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1AD4FB7B0()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59A810);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  swift_beginAccess();
  *(v0 + 72) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return v0;
}

uint64_t TaskQueue.deinit()
{

  sub_1AD3D04F0(*(v0 + 24));
  return v0;
}

uint64_t TaskQueue.__deallocating_deinit()
{

  sub_1AD3D04F0(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1AD4FB910(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD4FB96C(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    if (*a2)
    {
      *result = *a2;
      v3 = result;
      swift_unknownObjectRelease();
      *(v3 + 8) = *(a2 + 8);

      *(v3 + 24) = *(a2 + 24);

      *(v3 + 40) = *(a2 + 40);
    }

    else
    {
      v3 = result;
      sub_1AD4FBA20(result);
      v5 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v5;
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 48) = *(a2 + 48);
    }

    return v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
  }

  return result;
}

uint64_t sub_1AD4FBA74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1AD4FBAD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void static NearbyPeerPayment.reportFailureDiagnostic(_:for:transactionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(PKPeerPaymentFailureDiagnostic) init];
  [v7 setFlowType_];
  [v7 setRole_];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 16))(v8, v9);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1ADB05CB0();
  }

  else
  {
    v12 = 0;
  }

  [v7 setError_];

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  [v7 setReasonCode_];
  if (a4)
  {
    v15 = sub_1ADB06370();
  }

  else
  {
    v15 = 0;
  }

  [v7 setTransactionIdentifier_];

  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    v20[4] = sub_1AD4FBD70;
    v20[5] = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1AD3D96E8;
    v20[3] = &block_descriptor_42;
    v18 = _Block_copy(v20);
    v19 = v7;
    [v17 reportFailureDiagnostic:v19 completion:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD4FBD70(char a1, void *a2)
{
  if (qword_1EB598130 != -1)
  {
    swift_once();
  }

  v4 = sub_1ADB05FA0();
  __swift_project_value_buffer(v4, qword_1EB59A9D0);
  v5 = a2;
  oslog = sub_1ADB05F80();
  v6 = sub_1ADB06860();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 10) = v10;
    *v8 = v11;
    _os_log_impl(&dword_1AD337000, oslog, v6, "Reported failure diagnostic with success: %{BOOL}d %@", v7, 0x12u);
    sub_1AD3D0E3C(v8, &unk_1EB59A340);
    MEMORY[0x1B26F9F20](v8, -1, -1);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }
}

double NearbyPeerPayment.ErrorUIStyle.vfxColor.getter()
{
  if (*v0)
  {
    v1 = -1;
  }

  else
  {
    v1 = 0;
  }

  *&result = vbslq_s8(vdupq_n_s32(v1), xmmword_1ADB85B90, xmmword_1ADB85B80).u64[0];
  return result;
}

uint64_t NearbyPeerPayment.AnalyticsInfo.pageTag.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NearbyPeerPayment.AnalyticsInfo.p2pSide.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall NearbyPeerPayment.AnalyticsInfo.init(pageTag:p2pSide:)(PassKitCore::NearbyPeerPayment::AnalyticsInfo_optional *__return_ptr retstr, Swift::String_optional pageTag, PassKitCore::NearbyPeerPayment::AnalyticsInfo::P2PSide_optional p2pSide)
{
  if (!pageTag.value._object)
  {
    goto LABEL_4;
  }

  if (*p2pSide.value == 2)
  {

LABEL_4:
    retstr->value.pageTag = 0u;
    retstr->value.p2pSide = 0u;
    return;
  }

  countAndFlagsBits = pageTag.value._countAndFlagsBits;
  object = pageTag.value._object;
  v6 = sub_1ADB063B0();
  retstr->value.pageTag._countAndFlagsBits = countAndFlagsBits;
  retstr->value.pageTag._object = object;
  retstr->value.p2pSide._countAndFlagsBits = v6;
  retstr->value.p2pSide._object = v7;
}

PassKitCore::NearbyPeerPayment::AnalyticsInfo __swiftcall NearbyPeerPayment.AnalyticsInfo.init(pageTag:p2pSide:)(Swift::String pageTag, PassKitCore::NearbyPeerPayment::AnalyticsInfo::P2PSide p2pSide)
{
  object = pageTag._object;
  countAndFlagsBits = pageTag._countAndFlagsBits;
  v5 = v2;
  v6 = sub_1ADB063B0();
  *v5 = countAndFlagsBits;
  v5[1] = object;
  v5[2] = v6;
  v5[3] = v7;
  result.p2pSide._object = v9;
  result.p2pSide._countAndFlagsBits = v8;
  result.pageTag._object = v7;
  result.pageTag._countAndFlagsBits = v6;
  return result;
}

unint64_t NearbyPeerPayment.FeatureError.description.getter()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3)
    {
      return 0xD000000000000019;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0xD00000000000001CLL;
      }

      goto LABEL_12;
    }

    return 0xD00000000000001BLL;
  }

  else
  {
    if (!v1)
    {
      return 0xD000000000000014;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000022;
      }

LABEL_12:
      sub_1ADB06C10();

      v3 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
      v4 = sub_1ADB06420();
      MEMORY[0x1B26F6530](v4);

      return 0xD000000000000015;
    }

    return 0xD00000000000001CLL;
  }
}

id NearbyPeerPayment.FeatureError.errorDescription.getter()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3 || v1 == 4 || v1 == 5)
    {
      goto LABEL_22;
    }
  }

  else if ((v1 - 1) < 2 || !v1)
  {
    goto LABEL_22;
  }

  v2 = sub_1ADB05CB0();
  sub_1AD4FC418(v2);
  if (v4)
  {
    v5 = [v2 localizedFailureReason];
    if (v5)
    {
      v6 = v5;
LABEL_24:
      v13 = sub_1ADB063B0();

      return v13;
    }

    goto LABEL_21;
  }

  if (v3 != 40345 && v3 != 40325)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_22:
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v9 = sub_1ADB06370();

    v10 = sub_1ADB06370();
    v11 = sub_1ADB06370();
    v12 = [v6 localizedStringForKey:v9 value:v10 table:v11];

    v2 = v12;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_1AD4FC418(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1ADB063B0();
  v5 = v4;

  if (v3 == sub_1ADB063B0() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1ADB06F50();

    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = [a1 userInfo];
  v10 = sub_1ADB06280();

  v11 = sub_1ADB063B0();
  if (!*(v10 + 16))
  {

    goto LABEL_13;
  }

  v13 = sub_1AD425BEC(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_1AD3C94C4(*(v10 + 56) + 32 * v13, v26);

  sub_1AD3D3200(0, &qword_1EB599EC0);
  if (swift_dynamicCast())
  {
    v16 = v25;
    goto LABEL_15;
  }

LABEL_14:
  v16 = a1;
LABEL_15:
  v17 = [v16 domain];
  v18 = sub_1ADB063B0();
  v20 = v19;

  if (v18 == sub_1ADB063B0() && v20 == v21)
  {
  }

  else
  {
    v23 = sub_1ADB06F50();

    if ((v23 & 1) == 0)
    {

      return;
    }
  }

  v24 = [v16 code];

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

id NearbyPeerPayment.FeatureError.recoverySuggestion.getter()
{
  v1 = 0;
  v2 = *v0;
  if (*v0 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return v1;
      }

      if (v2 != 5)
      {
        goto LABEL_12;
      }
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        goto LABEL_18;
      }

LABEL_12:
      v3 = sub_1ADB05CB0();
      sub_1AD4FC418(v3);
      if (v5)
      {
        v6 = [v3 localizedRecoverySuggestion];
        if (v6)
        {
          v7 = v6;
          v1 = sub_1ADB063B0();

          return v1;
        }
      }

      else if (v4 == 40345 || v4 == 40325)
      {

        goto LABEL_18;
      }

      return 0;
    }

    return v1;
  }

LABEL_18:
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1ADB06370();

    v11 = sub_1ADB06370();
    v12 = sub_1ADB06370();
    v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

    v1 = sub_1ADB063B0();
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t NearbyPeerPayment.FeatureError.nsError.getter()
{
  if (*v0 >= 6uLL)
  {
    return sub_1ADB05CB0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB81FB0;
  *(inited + 32) = sub_1ADB063B0();
  *(inited + 40) = v2;
  v3 = NearbyPeerPayment.FeatureError.errorDescription.getter();
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 7104878;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 80) = sub_1ADB063B0();
  *(inited + 88) = v8;
  v9 = NearbyPeerPayment.FeatureError.recoverySuggestion.getter();
  *(inited + 120) = v5;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 7104878;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  *(inited + 96) = v11;
  *(inited + 104) = v12;
  sub_1AD425D30(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989C8);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v14 = sub_1ADB06370();
  v15 = sub_1ADB06260();

  v16 = [v13 initWithDomain:v14 code:-1 userInfo:v15];

  return v16;
}

void NearbyPeerPayment.FeatureError.analyticsInfo.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (v3 <= 1)
    {
LABEL_10:
      v7 = sub_1ADB063B0();
      v9 = v10;
      goto LABEL_11;
    }
  }

  else
  {
    if ((v3 - 2) < 2)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    if (v3 == 4 || v3 == 5)
    {
      goto LABEL_10;
    }
  }

  v4 = objc_opt_self();
  v5 = sub_1ADB05CB0();
  v6 = [v4 pageTagForAppleCashSenderError_];

  v7 = sub_1ADB063B0();
  v9 = v8;

LABEL_11:
  v11 = sub_1ADB063B0();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
}

uint64_t static NearbyPeerPayment.AirdropError.isAirDropDomain(_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001ADBA37C0 == a2)
  {
    return 1;
  }

  else
  {
    return sub_1ADB06F50();
  }
}

unint64_t NearbyPeerPayment.AirdropError.description.getter()
{
  v1 = sub_1ADB06000();
  v24 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  v7 = sub_1ADB06020();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for NearbyPeerPayment.AirdropError();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD50021C(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v24;
      (*(v24 + 32))(v6, v16, v1);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1ADB06C10();

      v25 = 0xD00000000000001BLL;
      v26 = 0x80000001ADBA3800;
      (*(v18 + 16))(v4, v6, v1);
      v19 = sub_1ADB06420();
      MEMORY[0x1B26F6530](v19);

      v20 = v25;
      (*(v18 + 8))(v6, v1);
    }

    else
    {
      return 0xD00000000000001ALL;
    }
  }

  else
  {
    (*(v8 + 32))(v13, v16, v7);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1ADB06C10();

    v25 = 0xD00000000000001ELL;
    v26 = 0x80000001ADBA3820;
    (*(v8 + 16))(v11, v13, v7);
    v21 = sub_1ADB06420();
    MEMORY[0x1B26F6530](v21);

    v20 = v25;
    (*(v8 + 8))(v13, v7);
  }

  return v20;
}

id NearbyPeerPayment.AirdropError.errorDescription.getter()
{
  v44 = sub_1ADB06000();
  v46 = *(v44 - 8);
  v1 = MEMORY[0x1EEE9AC00](v44);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v45 = v42 - v4;
  v5 = sub_1ADB05FD0();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ADB06020();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v42 - v13;
  v15 = type metadata accessor for NearbyPeerPayment.AirdropError();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[1] = 0x80000001ADBA35F0;
  sub_1AD50021C(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v45 = v0;
    v46 = v5;
    (*(v9 + 32))(v14, v17, v8);
    (*(v9 + 16))(v12, v14, v8);
    v23 = (*(v9 + 88))(v12, v8);
    if (v23 != *MEMORY[0x1E69CDC60])
    {
      v31 = v23;
      v32 = *MEMORY[0x1E69CDC70];
      v33 = *(v9 + 8);
      v33(v14, v8);
      if (v31 != v32)
      {
        v33(v12, v8);
      }

      goto LABEL_21;
    }

    (*(v9 + 96))(v12, v8);
    (*(v43 + 32))(v7, v12, v46);
    if (sub_1ADB05FB0() == 0xD000000000000016 && 0x80000001ADBA37C0 == v24)
    {
    }

    else
    {
      v34 = sub_1ADB06F50();

      if ((v34 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (sub_1ADB05FC0() == 1)
    {
      sub_1AD4FD728();
      (*(v43 + 8))(v7, v46);
      (*(v9 + 8))(v14, v8);

      goto LABEL_21;
    }

LABEL_18:
    (*(v43 + 8))(v7, v46);
    (*(v9 + 8))(v14, v8);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = v45;
    v20 = v46;
    v21 = v44;
    (*(v46 + 32))(v45, v17, v44);
    (*(v20 + 16))(v3, v19, v21);
    v22 = (*(v20 + 88))(v3, v21);
    if (v22 == *MEMORY[0x1E69CDB78])
    {
      (*(v20 + 8))(v19, v21);
    }

    else if (v22 == *MEMORY[0x1E69CDB80])
    {
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_24;
      }

      v26 = result;
      v27 = sub_1ADB06370();
      v28 = sub_1ADB06370();
      v29 = sub_1ADB06370();
      v30 = [v26 &selRef_onboardingItems + 4];

      sub_1ADB063B0();
      (*(v46 + 8))(v19, v21);
    }

    else
    {
      v35 = *(v20 + 8);
      v35(v19, v21);
      v35(v3, v21);
    }
  }

LABEL_21:
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v37 = sub_1ADB06370();

    v38 = sub_1ADB06370();
    v39 = sub_1ADB06370();
    v40 = [v36 localizedStringForKey:v37 value:v38 table:v39];

    v41 = sub_1ADB063B0();
    return v41;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_1AD4FD728()
{
  v0 = PKCurrentRegion();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1ADB063B0();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v7 = [result account];

  result = PKPassKitBundle();
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = result;
  v9 = sub_1ADB06370();
  v10 = sub_1ADB06370();
  v11 = sub_1ADB06370();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_1ADB063B0();
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v2 == 21333 && v4 == 0xE200000000000000)
  {

    goto LABEL_11;
  }

  v14 = sub_1ADB06F50();

  if ((v14 & 1) == 0)
  {
LABEL_16:
    result = PKPassKitBundle();
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_11:
  if (v7)
  {
    v15 = [v7 state];
    if (v15 == 3)
    {
      result = PKPassKitBundle();
      if (result)
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }

    if (v15 != 2)
    {

      return v13;
    }

    result = PKPassKitBundle();
    if (result)
    {
LABEL_17:
      v16 = result;
      v17 = sub_1ADB06370();
      v18 = sub_1ADB06370();
      v19 = sub_1ADB06370();
      v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

      sub_1ADB063B0();
      return v13;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = result;

  v22 = [v21 passbookHasBeenDeleted];

  result = PKPassKitBundle();
  v23 = result;
  if (v22)
  {
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v24 = sub_1ADB06370();
    v25 = sub_1ADB06370();
    v26 = sub_1ADB06370();
    v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

    v13 = sub_1ADB063B0();
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_29:
    v32 = result;
    v33 = sub_1ADB06370();
    v34 = sub_1ADB06370();
    v35 = sub_1ADB06370();
    v36 = [v32 localizedStringForKey:v33 value:v34 table:v35];

    sub_1ADB063B0();
    return v13;
  }

  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v28 = sub_1ADB06370();
  v29 = sub_1ADB06370();
  v30 = sub_1ADB06370();
  v31 = [v23 localizedStringForKey:v28 value:v29 table:v30];

  v13 = sub_1ADB063B0();
  result = PKPassKitBundle();
  if (result)
  {
    goto LABEL_29;
  }

LABEL_39:
  __break(1u);
  return result;
}

id NearbyPeerPayment.AirdropError.recoverySuggestion.getter()
{
  v44 = sub_1ADB06000();
  v46 = *(v44 - 8);
  v1 = MEMORY[0x1EEE9AC00](v44);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v43 - v4;
  v5 = sub_1ADB05FD0();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ADB06020();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for NearbyPeerPayment.AirdropError();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD50021C(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v29 = v0;
    v30 = v43;
    (*(v9 + 32))(v14, v17, v8);
    (*(v9 + 16))(v12, v14, v8);
    if ((*(v9 + 88))(v12, v8) != *MEMORY[0x1E69CDC60])
    {
      v40 = *(v9 + 8);
      v40(v14, v8);
      v40(v12, v8);
      return 0;
    }

    v46 = v29;
    (*(v9 + 96))(v12, v8);
    v31 = v30;
    (*(v30 + 32))(v7, v12, v5);
    if (sub_1ADB05FB0() == 0xD000000000000016 && 0x80000001ADBA37C0 == v32)
    {
    }

    else
    {
      v41 = sub_1ADB06F50();

      if ((v41 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (sub_1ADB05FC0() == 1)
    {
      sub_1AD4FD728();
      v38 = v42;
      (*(v31 + 8))(v7, v5);
      (*(v9 + 8))(v14, v8);

      return v38;
    }

LABEL_18:
    (*(v31 + 8))(v7, v5);
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v33 = result;
    v34 = sub_1ADB06370();
    v35 = sub_1ADB06370();
    v36 = sub_1ADB06370();
    v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

    v38 = sub_1ADB063B0();
    return v38;
  }

  v19 = v45;
  v20 = v46;
  v21 = v44;
  (*(v46 + 32))(v45, v17, v44);
  (*(v20 + 16))(v3, v19, v21);
  if ((*(v20 + 88))(v3, v21) == *MEMORY[0x1E69CDB80])
  {
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1ADB06370();
      v25 = sub_1ADB06370();
      v26 = sub_1ADB06370();
      v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

      v28 = sub_1ADB063B0();
      (*(v20 + 8))(v19, v21);
      return v28;
    }

    goto LABEL_22;
  }

  v39 = *(v20 + 8);
  v39(v19, v21);
  v39(v3, v21);
  return 0;
}

id NearbyPeerPayment.AirdropError.nsError.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB81FB0;
  *(inited + 32) = sub_1ADB063B0();
  *(inited + 40) = v1;
  v2 = NearbyPeerPayment.AirdropError.errorDescription.getter();
  v4 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 7104878;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 80) = sub_1ADB063B0();
  *(inited + 88) = v7;
  v8 = NearbyPeerPayment.AirdropError.recoverySuggestion.getter();
  *(inited + 120) = v4;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 7104878;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v11;
  sub_1AD425D30(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989C8);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v13 = sub_1ADB06370();
  v14 = sub_1ADB06260();

  v15 = [v12 initWithDomain:v13 code:-1 userInfo:v14];

  return v15;
}

uint64_t NearbyPeerPayment.AirdropError.diagnosticCode.getter()
{
  v0 = sub_1ADB05FD0();
  v35 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ADB06020();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = sub_1ADB06000();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyPeerPayment.AirdropError();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD50021C(v36, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 7;
    }

    v17 = v34;
    (*(v34 + 32))(v12, v15, v10);
    v18 = (*(v17 + 88))(v12, v10);
    if (v18 == *MEMORY[0x1E69CDB78])
    {
      return 4;
    }

    if (v18 == *MEMORY[0x1E69CDB88] || v18 == *MEMORY[0x1E69CDB80])
    {
      return 5;
    }

    if (v18 == *MEMORY[0x1E69CDB70])
    {
      return 1;
    }

    (*(v17 + 8))(v12, v10);
    return 0;
  }

  v20 = v35;
  (*(v4 + 32))(v9, v15, v3);
  (*(v4 + 16))(v7, v9, v3);
  v21 = (*(v4 + 88))(v7, v3);
  v22 = v3;
  if (v21 != *MEMORY[0x1E69CDC60])
  {
    if (v21 == *MEMORY[0x1E69CDC88])
    {
      goto LABEL_17;
    }

    if (v21 == *MEMORY[0x1E69CDC70] || v21 == *MEMORY[0x1E69CDC78])
    {
      (*(v4 + 8))(v9, v3);
      return 5;
    }

    if (v21 == *MEMORY[0x1E69CDC80])
    {
LABEL_17:
      (*(v4 + 8))(v9, v3);
      return 4;
    }

    if (v21 == *MEMORY[0x1E69CDC68])
    {
      (*(v4 + 8))(v9, v3);
      return 1;
    }

    v30 = *MEMORY[0x1E69CDC58];
    v31 = *(v4 + 8);
    v32 = v21;
    v31(v9, v22);
    if (v32 == v30)
    {
      return 2;
    }

    v31(v7, v22);
    return 0;
  }

  (*(v4 + 96))(v7, v3);
  v23 = v2;
  (*(v20 + 32))(v2, v7, v0);
  if (sub_1ADB05FB0() == 0xD000000000000016 && 0x80000001ADBA37C0 == v24)
  {

LABEL_19:
    if (sub_1ADB05FC0() == 1)
    {
      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v27 = result;
      v28 = [result account];

      if (v28)
      {
        if ([v28 state] == 2)
        {

          (*(v20 + 8))(v23, v0);
          (*(v4 + 8))(v9, v3);
          return 8;
        }

        v29 = [v28 state];

        (*(v20 + 8))(v23, v0);
        (*(v4 + 8))(v9, v3);
        if (v29 == 3)
        {
          return 8;
        }

        return 0;
      }
    }

    goto LABEL_24;
  }

  v26 = sub_1ADB06F50();

  if (v26)
  {
    goto LABEL_19;
  }

LABEL_24:
  (*(v20 + 8))(v23, v0);
  (*(v4 + 8))(v9, v3);
  return 0;
}

uint64_t NearbyPeerPayment.AirdropError.analyticsInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v1 = sub_1ADB06000();
  v2 = *(v1 - 8);
  v44 = v1;
  v45 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v42 - v6;
  v8 = sub_1ADB05FD0();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ADB06020();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = type metadata accessor for NearbyPeerPayment.AirdropError();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1ADB063B0();
  v49 = v21;
  sub_1AD50021C(v47, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = v43;
    (*(v12 + 32))(v17, v20, v11);
    (*(v12 + 16))(v15, v17, v11);
    v27 = (*(v12 + 88))(v15, v11);
    if (v27 != *MEMORY[0x1E69CDC60])
    {
      if (v27 == *MEMORY[0x1E69CDC70])
      {

        v31 = sub_1ADB063B0();
        v30 = v37;
        (*(v12 + 8))(v17, v11);
        goto LABEL_12;
      }

      v41 = *(v12 + 8);
      v41(v17, v11);
      v41(v15, v11);
      goto LABEL_22;
    }

    (*(v12 + 96))(v15, v11);
    v28 = v8;
    (*(v26 + 32))(v10, v15, v8);
    if (sub_1ADB05FB0() == 0xD000000000000016 && 0x80000001ADBA37C0 == v29)
    {

      v30 = v49;
      v31 = v46;
    }

    else
    {
      v38 = sub_1ADB06F50();

      v30 = v49;
      v31 = v46;
      if ((v38 & 1) == 0)
      {
LABEL_19:
        v34 = v48;
        (*(v26 + 8))(v10, v28);
        (*(v12 + 8))(v17, v11);
        goto LABEL_13;
      }
    }

    if (sub_1ADB05FC0() == 1)
    {

      v31 = sub_1ADB063B0();
      v30 = v39;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v23 = v44;
    v24 = v45;
    (*(v45 + 32))(v7, v20, v44);
    (*(v24 + 16))(v5, v7, v23);
    v25 = (*(v24 + 88))(v5, v23);
    if (v25 == *MEMORY[0x1E69CDB78] || v25 == *MEMORY[0x1E69CDB80])
    {

      v31 = sub_1ADB063B0();
      v30 = v33;
      (*(v24 + 8))(v7, v23);
      goto LABEL_12;
    }

    v40 = *(v24 + 8);
    v40(v7, v23);
    v40(v5, v23);
LABEL_22:
    v34 = v48;
    v30 = v49;
    v31 = v46;
    goto LABEL_13;
  }

  v31 = sub_1ADB063B0();
  v30 = v32;
LABEL_12:
  v34 = v48;
LABEL_13:
  result = sub_1ADB063B0();
  *v34 = v31;
  v34[1] = v30;
  v34[2] = result;
  v34[3] = v36;
  return result;
}

unint64_t NearbyPeerPayment.ForwardedError.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

id NearbyPeerPayment.ForwardedError.errorDescription.getter()
{
  result = PKPassKitBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_1ADB06370();

    v3 = sub_1ADB06370();
    v4 = sub_1ADB06370();
    v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

    v6 = sub_1ADB063B0();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NearbyPeerPayment.ForwardedError.recoverySuggestion.getter()
{
  result = PKPassKitBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_1ADB06370();

    v3 = sub_1ADB06370();
    v4 = sub_1ADB06370();
    v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

    v6 = sub_1ADB063B0();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NearbyPeerPayment.ForwardedError.nsError.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB81FB0;
  *(inited + 32) = sub_1ADB063B0();
  *(inited + 40) = v3;
  v4 = NearbyPeerPayment.ForwardedError.errorDescription.getter();
  v6 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 7104878;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 80) = sub_1ADB063B0();
  *(inited + 88) = v9;
  v10 = NearbyPeerPayment.ForwardedError.recoverySuggestion.getter();
  *(inited + 120) = v6;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 7104878;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  *(inited + 96) = v12;
  *(inited + 104) = v13;
  sub_1AD425D30(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989C8);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = sub_1ADB06370();
  v16 = sub_1ADB06260();

  v17 = [v14 initWithDomain:v15 code:v1 userInfo:v16];

  return v17;
}

uint64_t NearbyPeerPayment.ForwardedError.codableError.getter@<X0>(uint64_t a1@<X8>)
{
  if (NearbyPeerPayment.ForwardedError.nsError.getter())
  {
    sub_1ADB05FE0();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_1ADB05FD0();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

PassKitCore::NearbyPeerPayment::ForwardedError_optional __swiftcall NearbyPeerPayment.ForwardedError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1AD4FF720@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1AD4FF764()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

unint64_t NearbyPeerPayment.InternalError.description.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000030;
  v4 = 0xD00000000000001DLL;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

id NearbyPeerPayment.InternalError.nsError.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v3 = sub_1ADB06370();
  v4 = [v2 initWithDomain:v3 code:v1 userInfo:0];

  return v4;
}

uint64_t NearbyPeerPayment.InternalError.analyticsInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1ADB063B0();
  v6 = v5;
  if (v3 == 3)
  {

    v7 = sub_1ADB063B0();
    v6 = v8;
  }

  else
  {
    v7 = v4;
  }

  result = sub_1ADB063B0();
  *a1 = v7;
  a1[1] = v6;
  a1[2] = result;
  a1[3] = v10;
  return result;
}

PassKitCore::NearbyPeerPayment::InternalError_optional __swiftcall NearbyPeerPayment.InternalError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1AD4FF9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = sub_1AD3C81D8();

  return MEMORY[0x1EEE6B588](a1, a2, v5, v6);
}

id sub_1AD4FFA14()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v3 = sub_1ADB06370();
  v4 = [v2 initWithDomain:v3 code:v1 userInfo:0];

  return v4;
}

unint64_t sub_1AD4FFA94()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000030;
  v4 = 0xD00000000000001DLL;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t _s11PassKitCore17NearbyPeerPaymentO12AirdropErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADB06000();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ADB06020();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbyPeerPayment.AirdropError();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C478);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_1AD50021C(a1, &v29 - v18);
  sub_1AD50021C(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = v32;
    sub_1AD50021C(v19, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v26 + 32))(v9, &v19[v20], v7);
      v24 = MEMORY[0x1B26F60A0](v15, v9);
      v27 = *(v26 + 8);
      v27(v9, v7);
      v27(v15, v7);
      goto LABEL_12;
    }

    (*(v26 + 8))(v15, v7);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1AD50021C(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v30;
      v22 = v31;
      (*(v30 + 32))(v6, &v19[v20], v31);
      v24 = MEMORY[0x1B26F6080](v13, v6);
      v25 = *(v23 + 8);
      v25(v6, v22);
      v25(v13, v22);
LABEL_12:
      sub_1AD500AAC(v19);
      return v24 & 1;
    }

    (*(v30 + 8))(v13, v31);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_1AD3D0E3C(v19, &qword_1EB59C478);
    v24 = 0;
    return v24 & 1;
  }

  sub_1AD500AAC(v19);
  v24 = 1;
  return v24 & 1;
}

uint64_t _s11PassKitCore17NearbyPeerPaymentO12FeatureErrorO2eeoiySbAE_AEtFZ_0(void **a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      if (v3 != 3)
      {
        goto LABEL_18;
      }
    }

    else if (v2 == 4)
    {
      if (v3 != 4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_15;
      }

      if (v3 != 5)
      {
LABEL_18:
        sub_1AD500B08(*a2);
        sub_1AD500B08(v2);
        v6 = 0;
        goto LABEL_21;
      }
    }

LABEL_20:
    sub_1AD500B08(*a2);
    v6 = 1;
    goto LABEL_21;
  }

  if (!v2)
  {
    if (v3)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (v2 == 2)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v3 < 6)
  {
    goto LABEL_18;
  }

  sub_1AD3D3200(0, &qword_1EB5982B0);
  sub_1AD500B08(v3);
  sub_1AD500B08(v2);
  sub_1AD500B08(v3);
  sub_1AD500B08(v2);
  v4 = sub_1ADB05CB0();
  v5 = sub_1ADB05CB0();
  v6 = sub_1ADB069D0();

  sub_1AD500B18(v3);
  sub_1AD500B18(v2);
LABEL_21:
  sub_1AD500B18(v2);
  sub_1AD500B18(v3);
  return v6 & 1;
}

id _s11PassKitCore17NearbyPeerPaymentO15amountFormatterSo08NSNumberH0CvgZ_0()
{
  v0 = sub_1ADB05E60();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumFractionDigits_];
  [v4 setUsesGroupingSeparator_];
  [v4 setNumberStyle_];
  sub_1ADB05E40();
  sub_1ADB05E50();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    v7 = sub_1ADB06370();
  }

  else
  {
    v7 = 0;
  }

  [v4 setDecimalSeparator_];

  return v4;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for NearbyPeerPayment.AirdropError()
{
  result = qword_1EB59C448;
  if (!qword_1EB59C448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AD50021C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPayment.AirdropError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AD500284()
{
  result = qword_1EB59C3E0;
  if (!qword_1EB59C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C3E0);
  }

  return result;
}

unint64_t sub_1AD5002DC()
{
  result = qword_1EB59C3E8;
  if (!qword_1EB59C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C3E8);
  }

  return result;
}

unint64_t sub_1AD500370()
{
  result = qword_1EB59C3F0;
  if (!qword_1EB59C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C3F0);
  }

  return result;
}

unint64_t sub_1AD5003C4()
{
  result = qword_1EB59C3F8;
  if (!qword_1EB59C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C3F8);
  }

  return result;
}

unint64_t sub_1AD500418()
{
  result = qword_1EB59C400;
  if (!qword_1EB59C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C400);
  }

  return result;
}

uint64_t sub_1AD500470(void *a1)
{
  a1[1] = sub_1AD500530(&qword_1EB59C408);
  a1[2] = sub_1AD500530(&qword_1EB59C410);
  result = sub_1AD500530(&qword_1EB59C418);
  a1[3] = result;
  return result;
}

uint64_t sub_1AD500530(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NearbyPeerPayment.AirdropError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AD500578()
{
  result = qword_1EB59C428;
  if (!qword_1EB59C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C428);
  }

  return result;
}

uint64_t sub_1AD50060C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1AD500660()
{
  result = qword_1EB59C430;
  if (!qword_1EB59C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C430);
  }

  return result;
}

unint64_t sub_1AD5006B4()
{
  result = qword_1EB59C438;
  if (!qword_1EB59C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C438);
  }

  return result;
}

unint64_t sub_1AD500710()
{
  result = qword_1EB59C440;
  if (!qword_1EB59C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C440);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore17NearbyPeerPaymentO12FeatureErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AD500834(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AD50088C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void sub_1AD5008EC()
{
  sub_1AD500998(319, &qword_1EB59C458, MEMORY[0x1E69CDC90]);
  if (v0 <= 0x3F)
  {
    sub_1AD500998(319, &qword_1EB59C460, MEMORY[0x1E69CDB90]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1AD500998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AD500A04()
{
  result = qword_1EB59C468;
  if (!qword_1EB59C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C468);
  }

  return result;
}

unint64_t sub_1AD500A58()
{
  result = qword_1EB59C470;
  if (!qword_1EB59C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C470);
  }

  return result;
}

uint64_t sub_1AD500AAC(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPayment.AirdropError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1AD500B08(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

void sub_1AD500B18(id a1)
{
  if (a1 >= 6)
  {
  }
}

id ProvisioningCarKeyStepTransact.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = &v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_commonCompletion];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sessionHandle] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_session] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_timeout] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_context] = a1;
  LOBYTE(v5) = *(a2 + 24);
  v6 = &v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_credential];
  *v6 = *a2;
  *(v6 + 2) = v4;
  v6[24] = v5;
  *&v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sharedState] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ProvisioningCarKeyStepTransact();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1AD500C5C(void *a1)
{
  v3 = sub_1ADB06040();
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1ADB06060();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v9 = sub_1ADB068B0();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1AD502DDC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_43;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD41E894(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v8, v5, v11);
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_1AD500F44(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_timeout;
  if (*(a1 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_timeout))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1ADB06910();
    swift_unknownObjectRelease();
    *(a1 + v4) = 0;
    swift_unknownObjectRelease();
  }

  v5 = (a1 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_commonCompletion);
  v6 = *(a1 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_commonCompletion);
  v7 = *(a1 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_commonCompletion + 8);
  *v5 = 0;
  v5[1] = 0;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a2;
  sub_1AD3C5F14(v6);
  v9 = a2;
  sub_1AD502340(sub_1AD502DFC, v8);

  return sub_1AD3C5FB8(v6);
}

id ProvisioningCarKeyStepTransact.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningCarKeyStepTransact.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningCarKeyStepTransact();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AD5011BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(type metadata accessor for ProvisioningCarKeyStepTransact());
  result = ProvisioningCarKeyStepTransact.init(context:credential:sharedState:)(a1, a2, a3);
  *a4 = result;
  return result;
}

void sub_1AD501240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2)
    {
      v10 = a2;
      sub_1AD501458(v10);
    }

    else
    {
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v11 = sub_1ADB05FA0();
      __swift_project_value_buffer(v11, qword_1EB59AB68);

      v12 = sub_1ADB05F80();
      v13 = sub_1ADB06850();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1AD3CA88C(a4, a5, &v18);
        _os_log_impl(&dword_1AD337000, v12, v13, "[%s] ProvisioningCarKeyStepTransact: Failed to download pass", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1B26F9F20](v15, -1, -1);
        MEMORY[0x1B26F9F20](v14, -1, -1);
      }

      v16 = [objc_opt_self() errorWithSeverity_];
      v17 = sub_1ADB06370();
      [v16 addInternalDebugDescription_];

      v10 = v16;
      sub_1AD500C5C(v16);

      v9 = v10;
    }
  }
}

void sub_1AD501458(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sharedState) sid];
  v4 = sub_1ADB063B0();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = v4;
  v9[5] = v6;
  v14[4] = sub_1AD502E8C;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1AD3C8BB0;
  v14[3] = &block_descriptor_55_1;
  v10 = _Block_copy(v14);
  v11 = a1;

  v12 = [v7 startContactlessInterfaceSessionWithCompletion_];
  _Block_release(v10);
  v13 = *(v1 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sessionHandle);
  *(v1 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sessionHandle) = v12;
}

void sub_1AD5015C4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v10 = sub_1ADB06040();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v68 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1ADB06060();
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ADB06030();
  v64 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v63 = (v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v62 = v55 - v16;
  v17 = sub_1ADB06080();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v55 - v21;
  v23 = sub_1ADB068D0();
  v59 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (a1)
    {
      v57 = v13;
      v58 = a5;
      v28 = *(Strong + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_session);
      *(Strong + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_session) = a1;
      v29 = a1;

      [v29 setDelegate_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB00);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1ADB789F0;
      v31 = [a4 devicePrimaryPaymentApplication];
      if (v31)
      {
        *(v30 + 32) = v31;
        sub_1AD3D3200(0, &unk_1EB59BAE0);
        v32 = sub_1ADB06600();

        v33 = [a4 paymentPass];
        if (v33)
        {
          v34 = v33;
          v35 = [v29 activatePaymentApplications:v32 forPaymentPass:v33];

          if (v35 && [v29 authorizeAndStartCardEmulationWithCredential:0 deferAuthorization:0])
          {
            v55[1] = sub_1AD3D3200(0, &unk_1EB59BB10);
            sub_1AD3D3200(0, &qword_1EB59A670);
            v36 = sub_1ADB068B0();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            v55[0] = sub_1AD41E894(&unk_1EB599FB0, MEMORY[0x1E69E80B0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB20);
            v56 = v29;
            sub_1AD41E8DC(&unk_1EB599FC0, &unk_1EB59BB20);
            sub_1ADB06B00();
            v37 = sub_1ADB068E0();

            (*(v59 + 8))(v25, v23);
            ObjectType = swift_getObjectType();
            sub_1ADB06070();
            sub_1ADB06090();
            v39 = v61;
            v40 = *(v60 + 8);
            v40(v20, v61);
            v41 = v62;
            v42 = ObjectType;
            v59 = ObjectType;
            sub_1AD508F64(v62);
            v43 = v63;
            sub_1AD508FD8(v63);
            MEMORY[0x1B26F69C0](v22, v41, v43, v42);
            v44 = *(v64 + 8);
            v45 = v43;
            v46 = v57;
            v44(v45, v57);
            v44(v41, v46);
            v40(v22, v39);
            v47 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v48 = swift_allocObject();
            v49 = v67;
            v48[2] = v58;
            v48[3] = v49;
            v48[4] = v47;
            aBlock[4] = sub_1AD502E98;
            aBlock[5] = v48;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1AD471DC4;
            aBlock[3] = &block_descriptor_62_1;
            v50 = _Block_copy(aBlock);

            v51 = v65;
            sub_1AD509050();
            v52 = v68;
            sub_1AD509054();
            sub_1ADB06900();
            _Block_release(v50);
            (*(v70 + 8))(v52, v71);
            (*(v66 + 8))(v51, v69);

            *&v27[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_timeout] = v37;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            sub_1ADB06920();

            swift_unknownObjectRelease();
            return;
          }

          v54 = [objc_opt_self() errorWithSeverity_];
          sub_1AD500C5C(v54);

          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    if (a2)
    {
      v53 = sub_1ADB05CB0();
    }

    else
    {
      v53 = 0;
    }

    v54 = [objc_opt_self() errorWithUnderlyingError:v53 defaultSeverity:4];

    sub_1AD500C5C(v54);
LABEL_16:

    return;
  }

  if (a1)
  {
    [a1 invalidateSession];
  }
}

void sub_1AD501E94(uint64_t a1, unint64_t a2)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1ADB05FA0();
  __swift_project_value_buffer(v4, qword_1EB59AB68);

  v5 = sub_1ADB05F80();
  v6 = sub_1ADB06850();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1AD3CA88C(a1, a2, v14);
    _os_log_impl(&dword_1AD337000, v5, v6, "[%s] ProvisioningCarKeyStepTransact: Timed out waiting for transaction", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B26F9F20](v8, -1, -1);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }

  v9 = [objc_opt_self() errorWithSeverity_];
  v10 = sub_1ADB06370();
  [v9 addInternalDebugDescription_];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = v9;
    sub_1AD500C5C(v9);
  }
}

void sub_1AD502088(uint64_t a1, NSObject *a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a3;
    v7 = *&Strong[*a3];
    *&Strong[v6] = 0;
  }

  dispatch_group_leave(a2);
}

Swift::Void __swiftcall ProvisioningCarKeyStepTransact.contactlessInterfaceSessionDidTerminate(_:)(PKContactlessInterfaceSession_optional *a1)
{
  v1 = [objc_opt_self() errorWithSeverity_];
  sub_1AD500C5C(v1);
}

void sub_1AD502260()
{
  v0 = [objc_opt_self() errorWithSeverity_];
  sub_1AD500C5C(v0);
}

uint64_t sub_1AD502340(uint64_t a1, uint64_t a2)
{
  v32 = sub_1ADB06040();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ADB06060();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch_group_create();
  v11 = *(v2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sessionHandle);
  v12 = "Code" + 4;
  if (v11)
  {
    v13 = v11;
    dispatch_group_enter(v10);
    v14 = a1;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v10;
    v41 = sub_1AD502E50;
    v42 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1AD471DC4;
    v40 = &block_descriptor_38;
    v17 = _Block_copy(&aBlock);
    v18 = v10;

    [v13 invalidateSessionWithCompletion_];
    v19 = v17;
    a1 = v14;
    v12 = "";
    _Block_release(v19);
  }

  v20 = *(v2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_session);
  if (v20)
  {
    v21 = v20;
    dispatch_group_enter(v10);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v10;
    v41 = sub_1AD502E2C;
    v42 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v38 = *(v12 + 8);
    v39 = sub_1AD471DC4;
    v40 = &block_descriptor_31_0;
    v24 = _Block_copy(&aBlock);
    v25 = v10;

    [v21 invalidateSessionWithCompletion_];
    _Block_release(v24);
  }

  sub_1AD3D3200(0, &qword_1EB59A670);
  v26 = sub_1ADB068B0();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v41 = sub_1AD42F7F8;
  v42 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v38 = *(v12 + 8);
  v39 = sub_1AD471DC4;
  v40 = &block_descriptor_22_1;
  v28 = _Block_copy(&aBlock);

  sub_1ADB06050();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1AD41E894(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
  v29 = v32;
  sub_1ADB06B00();
  sub_1ADB06890();
  _Block_release(v28);

  (*(v35 + 8))(v6, v29);
  (*(v33 + 8))(v9, v34);
}

void sub_1AD502814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 2) = a3;
  *(v9 + 3) = a4;
  *(v9 + 4) = a5;
  v10 = *(a2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sharedState);

  v11 = [v10 sid];
  v12 = sub_1ADB063B0();
  v14 = v13;

  if (*(a2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_credential + 24))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_credential);
  }

  v16 = [v15 carKeyTerminalPairingCredential];

  v17 = [v16 configuration];
  if (v17)
  {
    if ([v17 supportedRadioTechnologies] == 1)
    {
      v18 = *(a2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_context);
      swift_beginAccess();
      if (!*(v18 + 64) && *(v18 + 33) != -16384)
      {
        v21 = (a2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_commonCompletion);
        v22 = *(a2 + OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_commonCompletion);
        *v21 = sub_1AD502E74;
        v21[1] = v9;

        sub_1AD3C5FB8(v22);
        v23 = *(v18 + 48);
        v24 = sub_1ADB05CE0();
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = v12;
        v26[4] = v14;
        aBlock[4] = sub_1AD502E80;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD49A998;
        aBlock[3] = &block_descriptor_48_3;
        v27 = _Block_copy(aBlock);

        [v23 passAtURL:v24 completion:v27];
        _Block_release(v27);

        return;
      }
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v19 + 104))(0, a4, a5, ObjectType, v19);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1AD502B40(void *a1)
{
  if (a1)
  {
    if ([a1 success])
    {

      sub_1AD500C5C(0);
    }

    else
    {
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v2 = sub_1ADB05FA0();
      __swift_project_value_buffer(v2, qword_1EB59AB68);
      v3 = v1;
      v4 = sub_1ADB05F80();
      v5 = sub_1ADB06850();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v16 = v7;
        *v6 = 136315138;
        v8 = [*&v3[OBJC_IVAR____TtC11PassKitCore30ProvisioningCarKeyStepTransact_sharedState] sid];
        v9 = sub_1ADB063B0();
        v11 = v10;

        v12 = sub_1AD3CA88C(v9, v11, &v16);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1AD337000, v4, v5, "[%s] ProvisioningCarKeyStepTransact: Failed to transact", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        MEMORY[0x1B26F9F20](v7, -1, -1);
        MEMORY[0x1B26F9F20](v6, -1, -1);
      }

      v13 = [objc_opt_self() errorWithSeverity_];
      v14 = sub_1ADB06370();
      [v13 addInternalDebugDescription_];

      v15 = v13;
      sub_1AD500C5C(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD502DFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_1AD502F10(char a1)
{
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t ProvisioningStrongPasscodeAssertion.deinit()
{
  sub_1AD503CB0();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t ProvisioningStrongPasscodeAssertion.__deallocating_deinit()
{
  sub_1AD503CB0();
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1AD503028(int a1, void *a2, uint64_t (*a3)(void *, void), uint64_t a4, id a5, uint64_t a6, uint64_t a7)
{
  if (([a5 respondsToSelector_] & 1) == 0)
  {
    return a3(a2, 0);
  }

  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a2;
  v13[6] = a7;
  v17[4] = sub_1AD504404;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1AD3D96E8;
  v17[3] = &block_descriptor_48_4;
  v14 = _Block_copy(v17);

  v15 = a2;

  [a5 notePasscodeUpgradeFlowWillBeginWithCompletion_];
  _Block_release(v14);
}

uint64_t sub_1AD503190(char a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (!a2)
    {
      swift_beginAccess();
      v12 = 0;
      *(a7 + 16) = 1;
      return a4(a6, v12);
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    v13 = sub_1ADB05CB0();
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v14 = [objc_opt_self() errorWithUnderlyingError:v13 defaultSeverity:5];

  v12 = 1;
  swift_beginAccess();
  v15 = *(a3 + 16);
  *(a3 + 16) = v14;

  swift_beginAccess();
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = v16;
    sub_1ADB06C10();
    MEMORY[0x1B26F6530](0xD000000000000034, 0x80000001ADBA3EE0);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BA78);
    v19 = sub_1ADB06420();
    MEMORY[0x1B26F6530](v19);

    v20 = sub_1ADB06370();

    [v17 addInternalDebugDescription_];

    v12 = 1;
  }

  return a4(a6, v12);
}

uint64_t sub_1AD503368(int a1, void *a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ([a5 respondsToSelector_])
  {
    v15 = swift_allocObject();
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a3;
    v15[5] = a4;
    v15[6] = a2;
    v15[7] = a7;
    v15[8] = a8;
    aBlock[4] = sub_1AD5043D0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD3D96E8;
    aBlock[3] = &block_descriptor_42_3;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v17 = a2;

    [a5 enforceUpgradedPasscodePolicyWithCompletion_];
    _Block_release(v16);
  }

  else
  {
    v19 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    v20 = *(a6 + 16);
    *(a6 + 16) = v19;

    swift_beginAccess();
    v21 = *(a6 + 16);
    if (v21)
    {
      v22 = v21;
      v23 = sub_1ADB06370();
      [v22 addInternalDebugDescription_];
    }

    return a3(a2, 1);
  }
}

uint64_t sub_1AD50358C(char a1, void *a2, id a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if ([a3 respondsToSelector_])
    {
      [a3 notePasscodeUpgradeFlowDidEnd];
    }

    v14 = sub_1ADB05CB0();
    v15 = [objc_opt_self() errorWithUnderlyingError:v14 defaultSeverity:5];

    swift_beginAccess();
    v16 = *(a4 + 16);
    *(a4 + 16) = v15;

    swift_beginAccess();
    v17 = *(a4 + 16);
    if (v17)
    {
      v18 = v17;
      sub_1ADB06C10();
      MEMORY[0x1B26F6530](0xD000000000000031, 0x80000001ADBA3EA0);
      v19 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BA78);
      v20 = sub_1ADB06420();
      MEMORY[0x1B26F6530](v20);

      v21 = sub_1ADB06370();

      [v18 addInternalDebugDescription_];
    }
  }

  else
  {
    swift_beginAccess();
    *(a8 + 16) = a1 & 1;
    swift_beginAccess();
    *(a9 + 16) = 1;
  }

  return a5(a7, a2 != 0);
}

void sub_1AD50379C(int a1, void *a2, void (*a3)(void *, void), uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ([a5 respondsToSelector_])
  {
    v15 = swift_allocObject();
    v15[2] = a6;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a2;
    v15[6] = a7;
    v18[4] = sub_1AD5043B8;
    v18[5] = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1AD3D96E8;
    v18[3] = &block_descriptor_36_4;
    v16 = _Block_copy(v18);

    v17 = a2;

    [a5 startRequiringUpgradedPasscodeWithCompletion_];
    _Block_release(v16);
  }

  else if ([a5 respondsToSelector_])
  {
    swift_beginAccess();
    [a5 startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy_];
    a3(a2, 0);
  }
}

uint64_t sub_1AD503930(char a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (!a2)
    {
      swift_beginAccess();
      v12 = 0;
      *(a7 + 16) = 1;
      return a4(a6, v12);
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    v13 = sub_1ADB05CB0();
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v14 = [objc_opt_self() errorWithUnderlyingError:v13 defaultSeverity:5];

  v12 = 1;
  swift_beginAccess();
  v15 = *(a3 + 16);
  *(a3 + 16) = v14;

  swift_beginAccess();
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = v16;
    sub_1ADB06C10();
    MEMORY[0x1B26F6530](0xD000000000000032, 0x80000001ADBA3E10);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BA78);
    v19 = sub_1ADB06420();
    MEMORY[0x1B26F6530](v19);

    v20 = sub_1ADB06370();

    [v17 addInternalDebugDescription_];

    v12 = 1;
  }

  return a4(a6, v12);
}

void sub_1AD503B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7, char a8, void *a9, void *a10, uint64_t a11)
{
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    swift_beginAccess();
    if (!*(a5 + 16))
    {
      v15 = [objc_opt_self() errorWithSeverity_];
      swift_beginAccess();
      v16 = *(a5 + 16);
      *(a5 + 16) = v15;
    }
  }

  swift_beginAccess();
  v17 = *(a5 + 16);
  if (v17)
  {
    v18 = v17;
    a6(v17, 1);
  }

  else
  {
    swift_beginAccess();
    v19 = *(a11 + 16);
    type metadata accessor for ProvisioningStrongPasscodeAssertion();
    v20 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59A810);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v20 + 32) = a10;
    *(v20 + 40) = v21;
    *(v20 + 48) = 1;
    *(v20 + 16) = a8;
    *(v20 + 24) = a9;
    *(v20 + 49) = v19;
    v22 = a10;

    v23 = a9;
    a6(v20, 0);
  }
}

void sub_1AD503CB0()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 4);
  sub_1AD433C1C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (v4 == 1)
  {
    v2 = [*(v0 + 24) targetDevice];
    if (v2)
    {
      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        [v3 notePasscodeUpgradeFlowDidEnd];
      }

      if ([v3 respondsToSelector_])
      {
        [v3 endRequiringUpgradedPasscodeIfNecessary];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void _s11PassKitCore35ProvisioningStrongPasscodeAssertionC7acquire3for10completionyAA0D6DeviceV_ys6ResultOyACSo19PKProvisioningErrorCGctFZ_0(char *a1, uint64_t a2, uint64_t a3)
{
  v22 = *a1;
  v23 = *(a1 + 2);
  v25 = *(a1 + 1);
  v3 = [v25 targetDevice];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v6;
    v9[4] = v7;
    v30 = sub_1AD5042F0;
    v31 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1AD433EF4;
    v29 = &block_descriptor_44;
    v10 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v5 addOperation_];
    _Block_release(v10);
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = v6;
    v11[4] = v8;
    v11[5] = v7;
    v30 = sub_1AD504314;
    v31 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1AD433EF4;
    v29 = &block_descriptor_18_1;
    v12 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v5 addOperation_];
    _Block_release(v12);
    v13 = swift_allocObject();
    v13[2] = v4;
    v13[3] = v6;
    v13[4] = v7;
    v13[5] = v8;
    v30 = sub_1AD504370;
    v31 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1AD433EF4;
    v29 = &block_descriptor_24_6;
    v14 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v5 addOperation_];
    _Block_release(v14);
    v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v6;
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;
    *(v16 + 48) = v22;
    *(v16 + 56) = v25;
    *(v16 + 64) = v23;
    *(v16 + 72) = v8;
    v30 = sub_1AD50437C;
    v31 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1AD434CF8;
    v29 = &block_descriptor_30_4;
    v17 = _Block_copy(&aBlock);
    v18 = v23;

    v19 = v25;

    v20 = [v5 evaluateWithInput:v15 completion:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD504204(_BYTE *a1@<X8>)
{
  if (*(v1 + 48) == 1)
  {
    *(v1 + 48) = 0;
    *a1 = 1;
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_14Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 ProvisioningStepBiometricBinding.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningStepBiometricBinding.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningStepBiometricBinding.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepBiometricBinding.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD504574@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepBiometricBinding();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore32ProvisioningStepBiometricBindingC0G6ResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1AD504648(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 ProvisioningStepUpdateAccounts.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningStepUpdateAccounts.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningStepUpdateAccounts.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepUpdateAccounts.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD504780@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepUpdateAccounts();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_1AD504838(uint64_t a1, void *a2, uint64_t (*a3)(void, void))
{
  if (a2)
  {
    if (qword_1EB598128 != -1)
    {
      swift_once();
    }

    v5 = sub_1ADB05FA0();
    __swift_project_value_buffer(v5, qword_1EB59A9B8);
    v6 = a2;
    v7 = sub_1ADB05F80();
    v8 = sub_1ADB06850();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1AD337000, v7, v8, "Failed to update accounts post provisioning with error %@", v9, 0xCu);
      sub_1AD3CAFA0(v10);
      MEMORY[0x1B26F9F20](v10, -1, -1);
      MEMORY[0x1B26F9F20](v9, -1, -1);
    }
  }

  return a3(0, 0);
}

uint64_t CNPostalAddress.streetLineCount.getter()
{
  v1 = [v0 street];
  v2 = sub_1ADB063B0();
  v4 = v3;

  v8[0] = 10;
  v8[1] = 0xE100000000000000;
  v7[2] = v8;
  v5 = *(sub_1AD5052E8(0x7FFFFFFFFFFFFFFFLL, 0, sub_1AD5056E4, v7, v2, v4, v8) + 16);

  return v5;
}

Swift::String __swiftcall CNPostalAddress.streetLine(at:)(Swift::Int at)
{
  v3 = [v1 street];
  v4 = sub_1ADB063B0();
  v6 = v5;

  v27 = 10;
  v28 = 0xE100000000000000;
  v26 = &v27;
  v7 = *(sub_1AD5052E8(0x7FFFFFFFFFFFFFFFLL, 0, sub_1AD50595C, v25, v4, v6, 0xAuLL) + 16);

  if (v7 <= at)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_9;
  }

  v8 = [v1 street];
  v9 = sub_1ADB063B0();
  v11 = v10;

  v27 = 10;
  v28 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v12);
  v24[2] = &v27;
  v13 = sub_1AD5052E8(0x7FFFFFFFFFFFFFFFLL, 0, sub_1AD50595C, v24, v9, v11, v25);
  if (at < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v13 + 16) <= at)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = (v13 + 32 * at);
  v16 = v15[4];
  v17 = v15[5];
  v18 = v15[6];
  v19 = v15[7];

  v20 = MEMORY[0x1B26F64D0](v16, v17, v18, v19);
  v22 = v21;

  v14 = v22;
  v13 = v20;
LABEL_9:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_1AD504C28(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = a3(0);
      v7 = sub_1ADB06650();
      *(v7 + 16) = a2;
      v8 = *(v6 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = *(v8 + 16);
      v10(v7 + v9, v5, v6);
      v11 = a2 - 1;
      if (a2 != 1)
      {
        v12 = *(v8 + 72);
        v13 = v7 + v12 + v9;
        do
        {
          v10(v13, v5, v6);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v14 = a3(0);
    (*(*(v14 - 8) + 8))(v5, v14);
    return v7;
  }

  return result;
}

Swift::Void __swiftcall CNMutablePostalAddress.setStreetLine(_:at:)(Swift::String _, Swift::Int at)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  KeyPath = [v2 street];
  v8 = sub_1ADB063B0();
  v10 = v9;

  *&v29 = 10;
  *(&v29 + 1) = 0xE100000000000000;
  v27[2] = &v29;
  v11 = v8;
  v12 = 0;
  v13 = sub_1AD5052E8(0x7FFFFFFFFFFFFFFFLL, 0, sub_1AD50595C, v27, v11, v10, &v29);
  v32 = v13;
  v14 = at + 1;
  if (__OFADD__(at, 1))
  {
    goto LABEL_16;
  }

  v12 = v13;
  if (*(v13 + 16) < v14)
  {
    v15 = sub_1ADB06A60();
    v19 = sub_1AD50580C(v15, v16, v17, v18, v14 - *(v12 + 2));

    sub_1AD4503D8(v19);
    v12 = v32;
  }

  KeyPath = sub_1ADB06A60();
  object = v20;
  countAndFlagsBits = v21;
  v14 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (at < 0)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    while (*(v12 + 2) > at)
    {
      v23 = &v12[32 * at];
      *(v23 + 4) = KeyPath;
      *(v23 + 5) = object;
      *(v23 + 6) = countAndFlagsBits;
      *(v23 + 7) = v14;

      KeyPath = swift_getKeyPath();
      countAndFlagsBits = *(v12 + 2);

      v14 = 32 * countAndFlagsBits;
      while (1)
      {
        object = countAndFlagsBits;
        if (!countAndFlagsBits)
        {
          goto LABEL_13;
        }

        if (countAndFlagsBits > *(v12 + 2))
        {
          break;
        }

        --countAndFlagsBits;
        v24 = *&v12[v14 + 16];
        at = *&v12[v14 + 24];
        v29 = *&v12[v14];
        v30 = v24;
        v31 = at;

        swift_getAtKeyPath();

        v14 -= 32;
        if ((v28 & 1) == 0)
        {

          v25 = *(v12 + 2);

          if (v25 < object)
          {
            __break(1u);
LABEL_13:
          }

          v29 = object;
          v30 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C520);
          sub_1AD505754();
          sub_1AD5057B8();
          sub_1ADB06590();

          v26 = sub_1ADB06370();

          [v3 setStreet_];

          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v12 = sub_1AD5056BC(v12);
      if (at < 0)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

id sub_1AD505048(void *a1, uint64_t a2, Swift::Int a3)
{
  v4 = a1;
  CNPostalAddress.streetLine(at:)(a3);

  v5 = sub_1ADB06370();

  return v5;
}

id sub_1AD5050C0(void *a1)
{
  v3.receiver = a1;
  v3.super_class = MEMORY[0x1E695CF30];
  v1 = objc_msgSendSuper2(&v3, sel_street1);

  return v1;
}

uint64_t CNMutablePostalAddress.street1.setter(uint64_t a1, uint64_t a2)
{
  CNMutablePostalAddress.setStreetLine(_:at:)(*&a1, 0);
}

id sub_1AD505160(void *a1)
{
  v3.receiver = a1;
  v3.super_class = MEMORY[0x1E695CF30];
  v1 = objc_msgSendSuper2(&v3, sel_street2);

  return v1;
}

uint64_t sub_1AD5051BC(SEL *a1)
{
  v4.super_class = MEMORY[0x1E695CF30];
  v1 = objc_msgSendSuper2(&v4, *a1);
  v2 = sub_1ADB063B0();

  return v2;
}

void sub_1AD50522C(void *a1, uint64_t a2, uint64_t a3, Swift::Int a4)
{
  v6 = sub_1ADB063B0();
  v8 = v7;
  v10 = a1;
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  CNMutablePostalAddress.setStreetLine(_:at:)(v9, a4);
}

uint64_t CNMutablePostalAddress.street2.setter(uint64_t a1, uint64_t a2)
{
  CNMutablePostalAddress.setStreetLine(_:at:)(*&a1, 1);
}

unint64_t sub_1AD5052E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1ADB06550();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1AD424E64(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1AD424E64((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1ADB06530();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1ADB06480();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1ADB06480();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1ADB06550();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1AD424E64(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1ADB06550();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1AD424E64(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1AD424E64((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1ADB06480();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AD505700()
{
  result = qword_1EB59C518;
  if (!qword_1EB59C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C518);
  }

  return result;
}

unint64_t sub_1AD505754()
{
  result = qword_1EB59C528;
  if (!qword_1EB59C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59C520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C528);
  }

  return result;
}

unint64_t sub_1AD5057B8()
{
  result = qword_1EB59C530;
  if (!qword_1EB59C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C530);
  }

  return result;
}

void *sub_1AD50580C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a5)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v8 = result;
    v10 = sub_1ADB06650();
    v11 = v10;
    v10[2] = a5;
    v10[4] = v8;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    v12 = a5 - 1;
    if (v12)
    {
      v13 = v10 + 11;
      do
      {
        *(v13 - 3) = v8;
        *(v13 - 2) = a2;
        *(v13 - 1) = a3;
        *v13 = a4;

        v13 += 4;
        --v12;
      }

      while (v12);
    }

    return v11;
  }

  return result;
}

void *sub_1AD5058C0(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1ADB06650();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void ProvisioningStepIngestPass.ingest(for:eligibilityResponse:assertions:fieldsModel:completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = *(v6 + 64);
  v15 = *(v6 + 72);
  v16 = *(v6 + 80);
  *(v6 + 64) = *a3;
  *(v6 + 72) = v11;
  *(v6 + 80) = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  sub_1AD440D2C(v14, v15, v16);
  v20 = *(v6 + 96);
  *(v6 + 96) = a2;
  v21 = a2;

  v22 = *(v6 + 88);
  *(v6 + 88) = a4;
  v23 = a4;

  v24 = [*(v6 + 56) sid];
  if (!v24)
  {
    sub_1ADB063B0();
    v24 = sub_1ADB06370();
  }

  v25 = *(v6 + 16);
  swift_beginAccess();
  v26 = 0;
  v27 = *(v25 + 16);
  if (!*(v6 + 48))
  {
    v26 = *(v6 + 24);
  }

  [v27 setState:5 forCredential:{v26, a1}];

  swift_beginAccess();
  v28 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v25 + 72) managingWebService:*(v25 + 48)];
  aBlock[6] = &unk_1F241AC40;
  v29 = swift_dynamicCastObjCProtocolConditional();
  if (v29)
  {
    [v28 setDataProvider_];
  }

  v30 = [*(v25 + 16) cloudStoreCoordinator];
  v31 = sub_1AD506284();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a5;
  v33[4] = a6;
  aBlock[4] = sub_1AD46BEC4;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD3C8BB0;
  aBlock[3] = &block_descriptor_45;
  v34 = _Block_copy(aBlock);

  [v28 downloadAndIngestPassesForResponse:v36 cloudStoreCoordinatorDelegate:v30 ingestionProperties:v31 sid:v24 completion:v34];
  _Block_release(v34);

  swift_unknownObjectRelease();
}

void ProvisioningStepIngestPass.ingest(for:deviceCredential:assertions:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *(v5 + 64);
  v13 = *(v5 + 72);
  v14 = *(v5 + 80);
  *(v5 + 64) = *a3;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  v15 = v11;
  v16 = v9;
  v17 = v10;
  sub_1AD440D2C(v12, v13, v14);
  v18 = [*(v5 + 56) sid];
  if (!v18)
  {
    sub_1ADB063B0();
    v18 = sub_1ADB06370();
  }

  v19 = *(v5 + 16);
  swift_beginAccess();
  v20 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v19 + 72) managingWebService:*(v19 + 48)];
  v21 = sub_1ADB05CE0();
  swift_beginAccess();
  v22 = [*(v19 + 16) cloudStoreCoordinator];
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a4;
  v24[4] = a5;
  v26[4] = sub_1AD46C508;
  v26[5] = v24;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1AD507DCC;
  v26[3] = &block_descriptor_10_0;
  v25 = _Block_copy(v26);

  [v20 downloadAndIngestPassForPassURL:v21 deviceCredential:a2 cloudStoreCoordinatorDelegate:v22 ingestionProperties:0 sid:v18 completion:v25];
  _Block_release(v25);

  swift_unknownObjectRelease();
}

__n128 ProvisioningStepIngestPass.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  *(v6 + 64) = 1;
  return result;
}

uint64_t ProvisioningStepIngestPass.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  *(v3 + 64) = 1;
  return v3;
}

uint64_t ProvisioningStepIngestPass.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_1AD440D2C(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t ProvisioningStepIngestPass.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_1AD440D2C(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

__n128 sub_1AD505FE0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepIngestPass();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *(v8 + 64) = 1;
  *a4 = v8;
  return result;
}

uint64_t ProvisioningStepIngestPass.terminateOperation(success:output:completion:)(char a1, char *a2, uint64_t (*a3)(void))
{
  if ((a1 & 1) == 0 && a2)
  {
    v5 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
    swift_beginAccess();
    v6 = *&a2[v5];
    v7 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v8 = *(v6 + 16);
    v9 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
    v10 = a2;

    result = swift_beginAccess();
    if (v8)
    {
      v12 = 0;
      v13 = v6 + 40;
      v24 = v10;
      v25 = a3;
      while (1)
      {
        v14 = (v13 + 16 * v12);
        v15 = v12;
        while (1)
        {
          if (v15 >= *(v6 + 16))
          {
            __break(1u);
            return result;
          }

          v16 = *&a2[v9];
          if (*(v16 + 16))
          {
            break;
          }

LABEL_6:
          ++v15;
          v14 += 2;
          if (v8 == v15)
          {
            v10 = v24;
            a3 = v25;
            goto LABEL_17;
          }
        }

        v18 = *(v14 - 1);
        v17 = *v14;

        v19 = sub_1AD425BEC(v18, v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v16 + 56) + 8 * v19);

        MEMORY[0x1B26F6680](v22);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ADB06640();
        }

        v12 = v15 + 1;
        result = sub_1ADB06670();
        v7 = v26;
        v13 = v6 + 40;
        v23 = v8 - 1 == v15;
        v10 = v24;
        a3 = v25;
        if (v23)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }

LABEL_17:

    sub_1AD508264(v7, 0, 0);
  }

  return a3();
}

uint64_t sub_1AD506284()
{
  v1 = [objc_allocWithZone(PKPassIngestionProperties) init];
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v15 = *(v0 + 24);
  v16 = v2;
  v17 = v3;
  ProvisioningCredentialsConfiguration.Credential.transferType.getter(&v14);
  if (v14 == 2)
  {
    return v1;
  }

  if ((v14 & 1) == 0)
  {
    return v1;
  }

  if (*(v0 + 48))
  {
    return v1;
  }

  v5 = [*(v0 + 24) remoteCredential];
  if (!v5)
  {
    return v1;
  }

  v6 = v5;
  v7 = [v5 transferableFromDevices];
  if (!v7)
  {

    return v1;
  }

  v8 = v7;
  sub_1AD3D3200(0, qword_1EB59C5A0);
  v9 = sub_1ADB06610();

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_15:

    return v1;
  }

  result = sub_1ADB06D00();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B26F6CC0](0, v9);
    goto LABEL_12;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_12:
    v11 = v10;

    v12 = [objc_allocWithZone(PKPassProvisioningMetadata) init];
    [v12 setSourceDeviceType_];
    v13 = [v11 name];
    [v12 setLocalizedSourceDeviceDescription_];

    [v1 setProvisioningMetadata_];
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AD50647C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v8 = sub_1ADB06040();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1ADB06060();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v14 = sub_1ADB068B0();
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v17 = v22;
  v16[4] = a2;
  v16[5] = v17;
  v16[6] = a5;
  aBlock[4] = sub_1AD508E0C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_53_1;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v13, v10, v18);
  _Block_release(v18);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

uint64_t sub_1AD5067B8(uint64_t a1, void *a2, void *a3, unint64_t a4, char **a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AD506844(a2, a3, a4, a5);
  }

  return result;
}

void sub_1AD506844(void *a1, id a2, unint64_t a3, char **a4)
{
  v5 = v4;
  v10 = 0xD000000000000015;
  v11 = [*(v4 + 56) sid];
  v12 = sub_1ADB063B0();
  v14 = v13;

  if (!a1)
  {

    v153 = 0;
    if (!a2)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  v153 = [a1 provisioningResponse];
  if (a2)
  {

    v15 = [a1 provisionedPasses];
    v16 = [v15 array];

    v17 = sub_1ADB06610();
    v18 = sub_1AD3D1D58(v17);

    if (v18)
    {
      if (v18 >> 62)
      {
        goto LABEL_98;
      }

      v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        while (1)
        {
          v155[0] = MEMORY[0x1E69E7CC0];
          sub_1ADB06CA0();
          if ((v14 & 0x8000000000000000) != 0)
          {
            break;
          }

          v10 = a4;
          if ((v18 & 0xC000000000000001) != 0)
          {
            v17 = 0;
            v12 = &selRef_result;
            while (1)
            {
              v5 = [MEMORY[0x1B26F6CC0](v17 v18)];
              swift_unknownObjectRelease();
              if (!v5)
              {
                break;
              }

              ++v17;
              sub_1ADB06C80();
              a4 = *(v155[0] + 2);
              sub_1ADB06CB0();
              sub_1ADB06CC0();
              sub_1ADB06C90();
              if (v14 == v17)
              {
                goto LABEL_28;
              }
            }

            __break(1u);
LABEL_94:
            __break(1u);
          }

          else
          {
            a4 = (v18 + 32);
            v12 = &selRef_result;
            while (1)
            {
              v27 = *a4;
              v17 = [v27 secureElementPass];

              if (!v17)
              {
                break;
              }

              sub_1ADB06C80();
              v5 = *(v155[0] + 2);
              sub_1ADB06CB0();
              sub_1ADB06CC0();
              sub_1ADB06C90();
              ++a4;
              if (!--v14)
              {
LABEL_28:

                v28 = v155[0];
                v10 = 0xD000000000000015;
                goto LABEL_100;
              }
            }
          }

          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          v14 = sub_1ADB06D00();
          if (!v14)
          {
            goto LABEL_99;
          }
        }

        __break(1u);
        goto LABEL_107;
      }

LABEL_99:

      v28 = MEMORY[0x1E69E7CC0];
LABEL_100:
      sub_1AD508264(v28, v10 + 6, 0x80000001ADBA40A0);
    }

LABEL_101:
    a1 = sub_1ADB05CB0();
LABEL_102:
    v69 = [objc_opt_self() errorWithUnderlyingError:a1 defaultSeverity:5];

    v70 = sub_1ADB06370();
    [v69 addInternalDebugDescription_];

    v71 = v69;
    (a3)(v69, 1);

LABEL_103:

    return;
  }

  a2 = a1;
  v19 = [a2 provisionedPasses];
  v20 = [v19 array];

  v21 = sub_1ADB06610();
  v10 = sub_1AD3D1D58(v21);

  if (!v10)
  {
LABEL_109:

    v72 = [objc_opt_self() errorWithSeverity_];
    v73 = sub_1ADB06370();
    [v72 addInternalDebugDescription_];

    v74 = v72;
    (a3)(v72, 1);

    goto LABEL_103;
  }

  v17 = v10 >> 62;
  if (v10 >> 62)
  {
LABEL_107:
    v18 = sub_1ADB06D00();
    if (!v18)
    {
      goto LABEL_108;
    }

    goto LABEL_17;
  }

  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_108:

    goto LABEL_109;
  }

LABEL_17:
  v142 = v12;
  v148 = a2;
  v151 = v5;
  v141 = a4;
  v12 = (v10 & 0xC000000000000001);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1B26F6CC0](0, v10);
LABEL_20:
    v149 = v22;
    v143 = v17;
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v23 = sub_1ADB05FA0();
    __swift_project_value_buffer(v23, qword_1EB59AB68);

    v24 = sub_1ADB05F80();
    v25 = sub_1ADB06860();

    v146 = v14;
    if (os_log_type_enabled(v24, v25))
    {
      v5 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      v155[0] = a2;
      *v5 = 136315394;
      *(v5 + 4) = sub_1AD3CA88C(v142, v14, v155);
      *(v5 + 12) = 2050;
      if (v143)
      {
        v26 = sub_1ADB06D00();
      }

      else
      {
        v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v5 + 14) = v26;

      _os_log_impl(&dword_1AD337000, v24, v25, "[%s] ProvisioningStepIngestPass: successfully ingested %{public}ld passes", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(a2);
      MEMORY[0x1B26F9F20](a2, -1, -1);
      MEMORY[0x1B26F9F20](v5, -1, -1);
    }

    else
    {
    }

    v14 = 0;
    v152 = v10 & 0xFFFFFFFFFFFFFF8;
    a4 = &selRef_result;
    v150 = MEMORY[0x1E69E7CC8];
    v147 = v10;
    while (2)
    {
      v17 = v14;
      while (1)
      {
        if (v12)
        {
          v29 = MEMORY[0x1B26F6CC0](v17, v10);
        }

        else
        {
          if (v17 >= *(v152 + 16))
          {
            goto LABEL_97;
          }

          v29 = *(v10 + 8 * v17 + 32);
        }

        a2 = v29;
        v14 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_94;
        }

        v30 = [v29 a4[188]];
        if (!v30)
        {
          goto LABEL_156;
        }

        v31 = v30;
        v5 = [v30 uniqueID];

        if (v5)
        {
          break;
        }

        ++v17;
        if (v14 == v18)
        {
          goto LABEL_56;
        }
      }

      v144 = a3;
      v32 = sub_1ADB063B0();
      v17 = v33;

      v145 = [a2 suppressMakeDefaultPaymentPassOffer];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v150;
      v5 = v32;
      a3 = sub_1AD425BEC(v32, v17);
      v36 = *(v150 + 16);
      v37 = (v35 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_112;
      }

      v39 = v35;
      if (*(v150 + 24) < v38)
      {
        sub_1AD4AFE88(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1AD425BEC(v5, v17);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_161;
        }

        a3 = v40;
        a4 = &selRef_result;
        if ((v39 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_51:

        v150 = v155[0];
        *(*(v155[0] + 7) + a3) = v145;

        goto LABEL_52;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        a4 = &selRef_result;
        if (v35)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_1AD4B1984();
        a4 = &selRef_result;
        if (v39)
        {
          goto LABEL_51;
        }
      }

LABEL_47:
      v42 = v155[0];
      *(v155[0] + (a3 >> 6) + 8) |= 1 << a3;
      v43 = (*(v42 + 48) + 16 * a3);
      *v43 = v5;
      v43[1] = v17;
      v44 = v42;
      *(*(v42 + 56) + a3) = v145;

      v45 = *(v44 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_155;
      }

      v150 = v44;
      *(v44 + 16) = v47;
LABEL_52:
      a3 = v144;
      v10 = v147;
      if (v14 != v18)
      {
        continue;
      }

      break;
    }

LABEL_56:
    v48 = *(v151 + 24);
    v49 = *(v151 + 48);
    if (v49 > 2)
    {
      if (v49 - 4 < 2)
      {
        goto LABEL_61;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (*(v151 + 48))
      {
        if (v49 != 1)
        {
          v50 = 1;
LABEL_73:
          v56 = [v149 a4[188]];
          if (!v56)
          {
            goto LABEL_157;
          }

          v18 = v56;
          v144 = v50;
          if (v143)
          {
            v17 = sub_1ADB06D00();
          }

          else
          {
            v17 = *(v152 + 16);
          }

          a2 = MEMORY[0x1E69E7CC0];
          v145 = v49;
          if (v17)
          {
            v155[0] = MEMORY[0x1E69E7CC0];
            sub_1ADB06CA0();
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_154;
            }

            v5 = 0;
            while (1)
            {
              v57 = v12 ? MEMORY[0x1B26F6CC0](v5, v10) : *(v10 + 8 * v5 + 32);
              v58 = v57;
              a4 = [v58 a4[188]];

              if (!a4)
              {
                goto LABEL_96;
              }

              ++v5;
              sub_1ADB06C80();
              a2 = *(v155[0] + 2);
              sub_1ADB06CB0();
              sub_1ADB06CC0();
              sub_1ADB06C90();
              a4 = &selRef_result;
              if (v17 == v5)
              {
                a2 = v155[0];
                break;
              }
            }
          }

          v14 = &selRef_level;
          v59 = [v148 moreInfoItems];
          if (v59)
          {
            v60 = v59;
            sub_1AD3D3200(0, &unk_1EB59B390);
            v5 = sub_1ADB06610();
          }

          else
          {
            v5 = MEMORY[0x1E69E7CC0];
          }

          LODWORD(v12) = [v148 expressModeSetupOptional];
          LODWORD(v17) = [v148 expressEnabled];
          if (v5 >> 62)
          {
            goto LABEL_113;
          }

          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_114;
          }

          goto LABEL_91;
        }

LABEL_61:
        if (v153)
        {
          v51 = [v153 externalProvisioningOptions];
          v50 = v51;
          if (v51)
          {
            v52 = v51;
            v49 = 0;
            goto LABEL_73;
          }
        }

        else
        {
          v50 = 0;
        }

        v49 = 2;
        goto LABEL_73;
      }

      if (([*(v151 + 24) isShareableCredential] & 1) == 0 && (objc_msgSend(v48, sel_isIdentityCredential) & 1) == 0)
      {
        v53 = [v48 accountCredential];
        if (!v53)
        {
          goto LABEL_61;
        }

        v54 = v53;
        v55 = [v53 sharingInstanceIdentifier];

        if (!v55)
        {
          goto LABEL_61;
        }
      }
    }

    v49 = 2;
    v50 = 1;
    goto LABEL_73;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v10 + 32);
    goto LABEL_20;
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  if (sub_1ADB06D00())
  {
LABEL_91:
    v61 = [v18 uniqueID];
    if (!v61)
    {
      goto LABEL_160;
    }

    v62 = v61;
    v63 = sub_1ADB063B0();
    v65 = v64;

    v66 = MEMORY[0x1E69E7CC8];
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v155[0] = v66;
    sub_1AD4ECB74(v5, v63, v65, v67);

    v68 = v155[0];
  }

  else
  {
LABEL_114:

    v68 = MEMORY[0x1E69E7CC8];
  }

  objc_allocWithZone(type metadata accessor for SEProvisionedPasses());

  SEProvisionedPasses.init(primaryPass:passes:moreInfoItemsForPass:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(v18, a2, v68, v144, v145, v150, v12, v17);
  v76 = v75;
  v77 = *(v151 + 96);
  if (v77 && (v78 = [v77 identifier]) != 0)
  {
    v79 = v78;
    v80 = sub_1ADB063B0();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v83 = &v76[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_cardIdentifier];
  swift_beginAccess();
  *v83 = v80;
  v83[1] = v82;

  v84 = 0;
  v85 = *(v151 + 64);
  v86 = *(v151 + 72);
  v87 = *(v151 + 80);
  if (v85 != 1)
  {
    v88 = v85;
    v84 = v85;
  }

  sub_1AD46C5E8(v85, v86, v87);
  sub_1AD440D2C(v85, v86, v87);
  v89 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_notificationSuppressionAssertion;
  swift_beginAccess();
  v90 = *&v76[v89];
  *&v76[v89] = v84;

  v91 = 0;
  v92 = *(v151 + 64);
  v93 = *(v151 + 72);
  v94 = *(v151 + 80);
  if (v92 != 1)
  {
    v95 = v94;
    v91 = v94;
  }

  sub_1AD46C5E8(v92, v93, v94);
  sub_1AD440D2C(v92, v93, v94);
  v96 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_contactlessInterfaceSuppressionAssertion;
  swift_beginAccess();
  v97 = *&v76[v96];
  *&v76[v96] = v91;

  v98 = 0;
  if (!*(v151 + 48))
  {
    v98 = *(v151 + 24);
  }

  v99 = [v98 carKeyTerminalPairingCredential];

  v100 = [v99 configuration];
  if (v100)
  {
    v101 = [v100 provisioningTemplateIdentifier];

    if (v101)
    {
      v100 = sub_1ADB063B0();
      v103 = v102;

      goto LABEL_130;
    }

    v100 = 0;
  }

  v103 = 0;
LABEL_130:
  v104 = &v76[OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_provisioningTemplateIdentifier];
  swift_beginAccess();
  *v104 = v100;
  *(v104 + 1) = v103;

  v105 = v76;
  v106 = sub_1ADB05F80();
  v107 = sub_1ADB06860();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v154[0] = v110;
    *v108 = 136315394;
    *(v108 + 4) = sub_1AD3CA88C(v142, v146, v154);
    *(v108 + 12) = 2112;
    *(v108 + 14) = v105;
    *v109 = v105;
    v111 = v105;
    _os_log_impl(&dword_1AD337000, v106, v107, "[%s] provisionedPass: %@", v108, 0x16u);
    sub_1AD3CAFA0(v109);
    MEMORY[0x1B26F9F20](v109, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1B26F9F20](v110, -1, -1);
    MEMORY[0x1B26F9F20](v108, -1, -1);
  }

  v112 = [v149 secureElementPass];
  if (!v112)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v113 = v112;

  v114 = *(v151 + 16);
  v115 = *(v114 + 33);
  v116 = v115 >> 14;
  if (v115 >> 14 > 1)
  {
    if (v116 != 2)
    {
      goto LABEL_138;
    }
  }

  else if (v116)
  {
    goto LABEL_138;
  }

  if (v115)
  {
    goto LABEL_140;
  }

LABEL_138:
  v117 = [objc_opt_self() sharedInstance];
  if (v117)
  {
    v118 = v117;
    [v117 completedDiscoveryItemCTAWithCompletion_];

LABEL_140:
    if (*(v151 + 48))
    {
      v119 = 0;
    }

    else
    {
      v119 = *(v151 + 24);
    }

    v120 = [v119 state];

    if (v120)
    {
      [v120 setEligibilityResponse_];
    }

    [v120 setProvisioningResponse_];
    swift_beginAccess();
    v121 = 0;
    v122 = *(v114 + 16);
    if (!*(v151 + 48))
    {
      v121 = *(v151 + 24);
    }

    sub_1AD3D3200(0, &qword_1EB5988B8);
    v123 = v122;
    v124 = sub_1ADB06600();

    v125 = [v148 *(v14 + 2552)];
    [v123 updateStateAfterProvisioning:v120 credential:v121 passes:v124 moreInfoItems:v125];

    v127 = *(v114 + 48);
    v126 = *(v114 + 56);
    v128 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
    swift_beginAccess();
    v129 = *&v105[v128];
    if (v129[2])
    {
      v131 = v129[4];
      v130 = v129[5];
      v132 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
      swift_beginAccess();
      v133 = *&v105[v132];
      if (*(v133 + 16))
      {
        v134 = v126;

        v135 = v127;
        v136 = sub_1AD425BEC(v131, v130);
        v138 = v137;

        if (v138)
        {
          v139 = *(*(v133 + 56) + 8 * v136);

          sub_1AD507E50(v139);

          v140 = v105;
          (a3)(v105, 0);
          sub_1AD3D784C(v144, v145);

          return;
        }

        goto LABEL_153;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  sub_1ADB06FF0();
  __break(1u);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD507A90(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v8 = sub_1ADB06040();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1ADB06060();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v14 = sub_1ADB068B0();
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v17 = v22;
  v16[4] = a2;
  v16[5] = v17;
  v16[6] = a5;
  aBlock[4] = sub_1AD508E0C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_34_1;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v13, v10, v18);
  _Block_release(v18);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_1AD507DCC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_1AD507E50(id a1)
{
  if ((*(v1 + 48) > 3u || !*(v1 + 48) && [*(v1 + 24) isFPANCredential]) && objc_msgSend(a1, sel_cardType) == 1)
  {
    v3 = [a1 devicePrimaryPaymentApplication];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 paymentNetworkIdentifier];
    }

    else
    {
      v5 = 0;
    }

    v6 = PKDisplayablePaymentNetworkNameForPaymentCredentialType(v5);
    v7 = *(v1 + 88);
    if (!v7)
    {
      goto LABEL_24;
    }

    v33 = v6;
    v32 = v7;
    v8 = [a1 primaryAccountIdentifier];
    if (!v8)
    {
      sub_1ADB063B0();
      v8 = sub_1ADB06370();
    }

    v9 = [a1 uniqueID];
    v10 = PKAutoFillCardDescriptorPairFrom(v32, v8, v9, v33);

    if (!v10)
    {
      v6 = v32;
LABEL_24:

      return;
    }

    v11 = [(PKFPANCardDescriptorCredentialPair *)v10 descriptor];
    v12 = [(PKFPANCardDescriptorCredentialPair *)v10 credential];
    v13 = *(v1 + 16);
    v14 = *(v13 + 40);
    v16 = *(v13 + 48);
    v15 = *(v13 + 56);
    v34 = v15;
    if (*(v1 + 48))
    {
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v28 = *(v1 + 24);
      v31 = v15;
      v29 = v16;
      v30 = [v28 fpanCredential];
      if (v30)
      {
        v34 = v30;

LABEL_23:
        v6 = v34;
        goto LABEL_24;
      }
    }

    v19 = [v16 targetDevice];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    if ([v19 respondsToSelector_])
    {
      v21 = [(PKFPANCardDescriptorCredentialPair *)v10 descriptor];
      v22 = [(PKFPANCardDescriptorCredentialPair *)v10 credential];
      v23 = swift_allocObject();
      *(v23 + 16) = v11;
      *(v23 + 24) = v14;
      *(v23 + 32) = v16;
      *(v23 + 40) = v34;
      *(v23 + 48) = v12;
      aBlock[4] = sub_1AD508EAC;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD508F60;
      aBlock[3] = &block_descriptor_40_1;
      v24 = _Block_copy(aBlock);
      v35 = v34;
      v25 = v11;
      v26 = v12;

      v27 = v16;

      [v20 canSaveFPANCardWithDescriptor:v21 credential:v22 completion:v24];
      _Block_release(v24);

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_23;
  }
}

void sub_1AD508264(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v6 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  v65 = v5;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v9 = aBlock;
    sub_1AD4506A8(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
LABEL_53:
      __break(1u);
    }

    else
    {
      v62 = v4;
      v8 = aBlock[0];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v5 = 0;
        do
        {
          MEMORY[0x1B26F6CC0](v5, v65);
          v10 = [swift_unknownObjectRetain() uniqueID];
          if (v10)
          {
            v11 = v10;
            v12 = sub_1ADB063B0();
            v14 = v13;
          }

          else
          {
            v12 = 0;
            v14 = 0;
          }

          swift_unknownObjectRelease_n();
          if (!v14)
          {
            goto LABEL_49;
          }

          aBlock[0] = v8;
          v4 = *(v8 + 16);
          v15 = *(v8 + 24);
          if (v4 >= v15 >> 1)
          {
            sub_1AD4506A8((v15 > 1), v4 + 1, 1);
            v8 = aBlock[0];
          }

          ++v5;
          *(v8 + 16) = v4 + 1;
          v16 = v8 + 16 * v4;
          *(v16 + 32) = v12;
          *(v16 + 40) = v14;
        }

        while (v7 != v5);
LABEL_21:
        v4 = v62;
        v5 = v65;
        goto LABEL_22;
      }

      v17 = (v5 + 32);
      while (1)
      {
        v9 = *v17;
        v18 = [v9 uniqueID];
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v20 = sub_1ADB063B0();
        v22 = v21;

        if (!v22)
        {
          goto LABEL_55;
        }

        aBlock[0] = v8;
        v24 = *(v8 + 16);
        v23 = *(v8 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1AD4506A8((v23 > 1), v24 + 1, 1);
          v8 = aBlock[0];
        }

        *(v8 + 16) = v24 + 1;
        v25 = v8 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        ++v17;
        if (!--v7)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_55:
    __break(1u);
    return;
  }

LABEL_22:
  aBlock[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
  sub_1AD43FACC(&qword_1EB59C220, &qword_1EB59A750);
  v26 = sub_1ADB062F0();
  v28 = v27;

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v29 = sub_1ADB05FA0();
  __swift_project_value_buffer(v29, qword_1EB59AB68);

  v30 = sub_1ADB05F80();
  v31 = sub_1ADB06860();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v32 = 136315394;
    v33 = [*(v4 + 56) sid];
    v34 = sub_1ADB063B0();
    v35 = v6;
    v36 = v26;
    v38 = v37;

    v39 = v34;
    v5 = v65;
    v40 = sub_1AD3CA88C(v39, v38, aBlock);

    *(v32 + 4) = v40;
    *(v32 + 12) = 2080;
    v41 = v36;
    v6 = v35;
    v42 = sub_1AD3CA88C(v41, v28, aBlock);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_1AD337000, v30, v31, "[%s] Removing provisioned passes: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v63, -1, -1);
    MEMORY[0x1B26F9F20](v32, -1, -1);
  }

  else
  {
  }

  v43 = *(v4 + 16);
  swift_beginAccess();
  v44 = *(v43 + 72);
  v4 = *(v43 + 80);
  if (!v6)
  {
    v64 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
      return;
    }

LABEL_31:
    v60 = v5 & 0xC000000000000001;
    v59 = v5 & 0xFFFFFFFFFFFFFF8;
    v45 = v44;
    v58 = v4;
    v46 = v45;
    v47 = 0;
    v9 = &selRef_organizationName;
    while (1)
    {
      if (v60)
      {
        v48 = MEMORY[0x1B26F6CC0](v47, v5);
        v4 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v47 >= *(v59 + 16))
        {
          goto LABEL_50;
        }

        v48 = *(v5 + 8 * v47 + 32);
        v4 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v7 = sub_1ADB06D00();
          goto LABEL_3;
        }
      }

      v49 = v48;
      v50 = [v49 paymentPass];
      v51 = [objc_allocWithZone(PKPaymentDeprovisionRequest) initWithPaymentPass_];

      if (a3)
      {
        v52 = sub_1ADB06370();
        v53 = swift_allocObject();
        *(v53 + 16) = v46;
        *(v53 + 24) = v51;
        aBlock[4] = sub_1AD508DF8;
        aBlock[5] = v53;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD508F60;
        aBlock[3] = &block_descriptor_27_3;
        v54 = _Block_copy(aBlock);
        v6 = v46;
        v55 = v51;

        [v6 diagnosticSessionWithReason:v52 sessionHandler:v54];
        _Block_release(v54);
      }

      else
      {
        [v46 deprovisionForRequest:v51 completion:{0, v58}];
      }

      v56 = [v46 targetDevice];
      if (!v56)
      {
        goto LABEL_53;
      }

      v57 = v56;
      v5 = v65;
      if ([v56 respondsToSelector_])
      {
        v6 = v46;
        [v57 paymentWebService:v6 removePass:v49 withCompletionHandler:0];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      ++v47;
      if (v4 == v64)
      {

        return;
      }
    }
  }

  v64 = sub_1ADB06D00();
  if (v64)
  {
    goto LABEL_31;
  }
}

void sub_1AD50894C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EB598188 != -1)
  {
    swift_once();
  }

  v10 = sub_1ADB05FA0();
  __swift_project_value_buffer(v10, qword_1EB59AAC0);
  v11 = a1;
  v12 = sub_1ADB05F80();
  v13 = sub_1ADB06860();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = a1;
    v16 = v11;
    _os_log_impl(&dword_1AD337000, v12, v13, "Can save result: %@", v14, 0xCu);
    sub_1AD3CAFA0(v15);
    MEMORY[0x1B26F9F20](v15, -1, -1);
    MEMORY[0x1B26F9F20](v14, -1, -1);
  }

  if (a1)
  {
    v28 = v11;
    v17 = [v28 matchedCard];
    if (v17)
    {
      v18 = v17;
      v19 = [a2 primaryAccountIdentifier];
      [v18 setPrimaryAccountIdentifier_];

      v20 = [a2 passUniqueIdentifier];
      [v18 setPassUniqueIdentifier_];

      v21 = [a4 targetDevice];
      if (v21)
      {
        v22 = v21;
        if ([v21 respondsToSelector_])
        {
          v33 = nullsub_3;
          v34 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v30 = 1107296256;
          v31 = sub_1AD4D6334;
          v32 = &block_descriptor_46_3;
          v23 = _Block_copy(&aBlock);
          v24 = v18;

          [v22 updateFPANCardWithDescriptor:v24 credential:a6 completion:v23];
          _Block_release(v23);

          swift_unknownObjectRelease();
          return;
        }

LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      __break(1u);
      goto LABEL_24;
    }

    if ([v28 savableFields])
    {
      v25 = [a4 targetDevice];
      if (v25)
      {
        v26 = v25;
        if ([v25 respondsToSelector_])
        {
          v33 = nullsub_3;
          v34 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v30 = 1107296256;
          v31 = sub_1AD4D6334;
          v32 = &block_descriptor_43_1;
          v27 = _Block_copy(&aBlock);

          [v26 insertFPANCardWithDescriptor:a2 credential:a6 completion:v27];
          _Block_release(v27);

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      return;
    }
  }
}

void (*sub_1AD508E24(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B26F6CC0](a2, a3);
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
    return sub_1AD508EA4;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_30Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AD508F64@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1ADB06030();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1AD508FD8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1ADB06030();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1AD509054()
{
  sub_1ADB06040();
  sub_1AD50C6E0(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
  return sub_1ADB06B00();
}

__n128 ProvisioningStepAddPassRequest.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningStepAddPassRequest.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningStepAddPassRequest.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepAddPassRequest.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD50923C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepAddPassRequest();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_1AD509310(void *a1, char a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
      swift_willThrowTypedImpl();
      aBlock[0] = a1;
      sub_1AD4F9A88(a1);
      v15 = a1;
      sub_1AD3D3200(0, &qword_1EB599EB0);
      if (swift_dynamicCast())
      {
        v16 = aBlock[6];
      }

      else
      {
        v16 = [objc_opt_self() errorWithCommonType:1 severity:4];
        v21 = sub_1ADB06370();
        [v16 addInternalDebugDescription_];

        [v16 setUnderlyingError_];
      }

      a4(v16, 1);
      sub_1AD4F9A7C(a1);
    }

    v17 = swift_allocObject();
    v17[2] = a6;
    v17[3] = a7;
    v17[4] = a4;
    v17[5] = a5;
    v17[6] = a1;
    v18 = *(v14 + 24);
    if (*(v14 + 48))
    {
      if (*(v14 + 48) == 1)
      {
        v20 = *(v14 + 32);
        v19 = *(v14 + 40);
        sub_1AD4F9A88(a1);

        sub_1AD4F9A88(a1);

        sub_1AD3DF24C(v18, v20, v19, 1u);

        sub_1AD50BD5C(v20, v19, a1, sub_1AD50BD1C, v17);

        sub_1AD4F9A7C(a1);
      }

      sub_1AD4F9A88(a1);

      sub_1AD4F9A88(a1);
    }

    else
    {
      sub_1AD4F9A88(a1);

      sub_1AD4F9A88(a1);

      v22 = [v18 issuerProvisioningExtensionCredential];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 extension];
        if (v24)
        {
          v25 = v24;
          v26 = [v23 entry];
          v27 = v23;
          if (v26)
          {
            v28 = v26;
            v29 = objc_opt_self();
            v30 = swift_allocObject();
            v30[2] = v25;
            v30[3] = sub_1AD50BD1C;
            v30[4] = v17;
            v30[5] = a1;
            v30[6] = v28;
            aBlock[4] = sub_1AD50BD4C;
            aBlock[5] = v30;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1AD50BBC8;
            aBlock[3] = &block_descriptor_18_2;
            v55 = v27;
            v31 = _Block_copy(aBlock);
            v32 = v25;
            sub_1AD4F9A88(a1);
            v33 = v32;

            v34 = v28;

            v35 = [v29 beginWithExtension:v33 completion:v31];
            _Block_release(v31);

            swift_unknownObjectRelease();
            sub_1AD4F9A7C(a1);
          }
        }

        v44 = [objc_opt_self() errorWithCommonType:1 severity:4];
        v45 = sub_1ADB06370();
        [v44 addInternalDebugDescription_];

        v54 = v44;
        [v44 setUnderlyingError_];
        if (qword_1EB5981C0 != -1)
        {
          swift_once();
        }

        v46 = sub_1ADB05FA0();
        __swift_project_value_buffer(v46, qword_1EB59AB68);

        v47 = sub_1ADB05F80();
        v48 = sub_1ADB06860();

        if (os_log_type_enabled(v47, v48))
        {
          v57 = v23;
          v49 = swift_slowAlloc();
          log = v47;
          v50 = swift_slowAlloc();
          aBlock[0] = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_1AD3CA88C(a6, a7, aBlock);
          _os_log_impl(&dword_1AD337000, log, v48, "[%s] ProvisioningStepAddPassRequest: nil addPassRequest", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x1B26F9F20](v50, -1, -1);
          v51 = v49;
          v23 = v57;
          MEMORY[0x1B26F9F20](v51, -1, -1);
        }

        else
        {
        }

        v52 = v54;
        a4(v54, 1);

        sub_1AD4F9A7C(a1);
      }
    }

    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v36 = sub_1ADB05FA0();
    __swift_project_value_buffer(v36, qword_1EB59AB68);

    v37 = sub_1ADB05F80();
    v38 = sub_1ADB06860();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v56 = a4;
      aBlock[0] = swift_slowAlloc();
      v40 = aBlock[0];
      *v39 = 136315138;
      *(v39 + 4) = sub_1AD3CA88C(a6, a7, aBlock);
      _os_log_impl(&dword_1AD337000, v37, v38, "[%s] ProvisioningStepAddPassRequest: unable to generate payment request based on credential", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v41 = v40;
      a4 = v56;
      MEMORY[0x1B26F9F20](v41, -1, -1);
      MEMORY[0x1B26F9F20](v39, -1, -1);
    }

    v42 = [objc_opt_self() errorWithCommonType:1 severity:4];
    v43 = sub_1ADB06370();
    [v42 addInternalDebugDescription_];

    [v42 setUnderlyingError_];
    a4(v42, 1);

    sub_1AD4F9A7C(a1);
  }

  return result;
}

void sub_1AD509B94(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, void *a7)
{
  if (a1)
  {
    v39 = a1;
    v12 = [a7 publicKeyHash];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1ADB05D70();
      v16 = v15;

      v17 = sub_1ADB05D50();
      sub_1AD3C757C(v14, v16);
    }

    else
    {
      v17 = 0;
    }

    [v39 setPublicKeyHash_];

    v24 = [a7 nonce];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1ADB05D70();
      v28 = v27;

      v29 = sub_1ADB05D50();
      sub_1AD3C757C(v26, v28);
    }

    else
    {
      v29 = 0;
    }

    [v39 setNonce_];

    if ([v39 _hasRequiredFields_])
    {
      v39 = v39;
      a5(a1, 0);
    }

    else
    {
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v30 = sub_1ADB05FA0();
      __swift_project_value_buffer(v30, qword_1EB59AB68);

      v31 = sub_1ADB05F80();
      v32 = sub_1ADB06860();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v40 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_1AD3CA88C(a3, a4, &v40);
        _os_log_impl(&dword_1AD337000, v31, v32, "[%s] ProvisioningStepAddPassRequest: missing required fields", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1B26F9F20](v34, -1, -1);
        MEMORY[0x1B26F9F20](v33, -1, -1);
      }

      v35 = [objc_opt_self() errorWithCommonType:1 severity:4];
      v36 = sub_1ADB06370();
      [v35 addInternalDebugDescription_];

      [v35 setUnderlyingError_];
      a5(v35, 1);
    }
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1ADB05FA0();
    __swift_project_value_buffer(v19, qword_1EB59AB68);

    v20 = sub_1ADB05F80();
    v21 = sub_1ADB06860();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1AD3CA88C(a3, a4, &v40);
      _os_log_impl(&dword_1AD337000, v20, v21, "[%s] ProvisioningStepAddPassRequest: nil addPassRequest", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B26F9F20](v23, -1, -1);
      MEMORY[0x1B26F9F20](v22, -1, -1);
    }

    if (a2)
    {
      v39 = a2;
    }

    else
    {
      v39 = [objc_opt_self() errorWithCommonType:1 severity:4];
      v37 = sub_1ADB06370();
      [v39 addInternalDebugDescription_];

      [v39 setUnderlyingError_];
    }

    v38 = a2;
    a5(v39, 1);
  }
}