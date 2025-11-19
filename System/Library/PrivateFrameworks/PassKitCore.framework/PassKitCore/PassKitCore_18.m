void sub_1AD50A07C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [*(v4 + 56) sid];
  v9 = sub_1ADB063B0();
  v11 = v10;

  v12 = [a1 encryptionScheme];
  sub_1ADB063B0();

  v13 = objc_allocWithZone(PKPaymentIssuerProvisioningCertificatesRequest);
  v14 = sub_1ADB06370();

  v15 = [v13 initWithEncryptionScheme_];

  if (v15)
  {
    aBlock = 1011108179;
    v24 = 0xE400000000000000;
    MEMORY[0x1B26F6530](v9, v11);
    MEMORY[0x1B26F6530](62, 0xE100000000000000);
    v16 = sub_1ADB06370();

    [v15 addDiagnosticReason_];

    v17 = *(v4 + 16);
    swift_beginAccess();
    v18 = *(v17 + 72);
    v19 = swift_allocObject();
    v19[2] = v9;
    v19[3] = v11;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = v18;
    v27 = sub_1AD50A6EC;
    v28 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1AD3C8BB0;
    v26 = &block_descriptor_46;
    v20 = _Block_copy(&aBlock);
    v21 = v18;
    v22 = v15;

    [v21 issuerProvisioningCertificatesForRequest:v22 withCompletion:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD50A2C8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id, uint64_t), uint64_t a6, void *a7)
{
  if (a1)
  {
    v10 = a1;
    v11 = [v10 nonce];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1ADB05D70();
      v15 = v14;

      v16 = sub_1ADB05D50();
      sub_1AD3C757C(v13, v15);
    }

    else
    {
      v16 = 0;
    }

    v30 = swift_allocObject();
    v30[2] = v10;
    v30[3] = a5;
    v30[4] = a6;
    aBlock[4] = sub_1AD50BCC8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD50A944;
    aBlock[3] = &block_descriptor_9_0;
    v31 = _Block_copy(aBlock);
    v32 = v10;

    [a7 signNonce:v16 withCompletion:v31];
    _Block_release(v31);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C5B8);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746C75736572;
    *(inited + 16) = xmmword_1ADB78CE0;
    *(inited + 40) = 0xE600000000000000;
    v21 = @"com.apple.passbook.payment.issuer-provisioning";
    *(inited + 48) = sub_1ADB06370();
    sub_1AD426B24(inited);
    swift_setDeallocating();
    sub_1AD50BC60(inited + 32);
    sub_1AD3D3200(0, &qword_1EB5982B0);
    v22 = sub_1ADB06260();

    PKAnalyticsSendEvent(v21, v22);

    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v23 = sub_1ADB05FA0();
    __swift_project_value_buffer(v23, qword_1EB59AB68);

    v24 = sub_1ADB05F80();
    v25 = sub_1ADB06860();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1AD3CA88C(a3, a4, aBlock);
      _os_log_impl(&dword_1AD337000, v24, v25, "[%s] ProvisioningStepAddPassRequest: failed to fetch certificates", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1B26F9F20](v27, -1, -1);
      MEMORY[0x1B26F9F20](v26, -1, -1);
    }

    v16 = [objc_opt_self() errorWithCommonType:1 severity:4];
    v28 = sub_1ADB06370();
    [v16 addInternalDebugDescription_];

    if (a2)
    {
      v29 = sub_1ADB05CB0();
    }

    else
    {
      v29 = 0;
    }

    [v16 setUnderlyingError_];

    a5(v16, 1);
  }
}

void sub_1AD50A704(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    v5 = [objc_opt_self() errorWithCommonType:1 severity:4];
    v6 = sub_1ADB06370();
    [v5 addInternalDebugDescription_];

    [v5 setUnderlyingError_];
    a4(v5, 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C5B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ADB78CE0;
    *(inited + 32) = 0x746C75736572;
    *(inited + 40) = 0xE600000000000000;
    v8 = @"com.apple.passbook.payment.issuer-provisioning";
    *(inited + 48) = sub_1ADB06370();
    sub_1AD426B24(inited);
    swift_setDeallocating();
    sub_1AD50BC60(inited + 32);
    sub_1AD3D3200(0, &qword_1EB5982B0);
    v9 = sub_1ADB06260();

    PKAnalyticsSendEvent(v8, v9);
  }

  else
  {
    sub_1AD3C7528(a1, a2);
    v13 = sub_1ADB05D50();
    [a3 setNonceSignature_];

    a4(a3, 0);

    sub_1AD422FB0(a1, a2);
  }
}

uint64_t sub_1AD50A944(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = sub_1ADB05D70();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_1AD422FB0(v2, v6);
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AD50A9F4(uint64_t a1, unint64_t a2, void (*a3)(void, id))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C5B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  v7 = @"com.apple.passbook.payment.issuer-provisioning";
  *(inited + 48) = sub_1ADB06370();
  sub_1AD426B24(inited);
  swift_setDeallocating();
  sub_1AD50BC60(inited + 32);
  sub_1AD3D3200(0, &qword_1EB5982B0);
  v8 = sub_1ADB06260();

  PKAnalyticsSendEvent(v7, v8);

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1ADB05FA0();
  __swift_project_value_buffer(v9, qword_1EB59AB68);

  v10 = sub_1ADB05F80();
  v11 = sub_1ADB06850();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1AD3CA88C(a1, a2, &v16);
    _os_log_impl(&dword_1AD337000, v10, v11, "[%s] Error: Timed out waiting for add payment pass request to be returned", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B26F9F20](v13, -1, -1);
    MEMORY[0x1B26F9F20](v12, -1, -1);
  }

  v14 = [objc_opt_self() errorWithCommonType:1 severity:4];
  v15 = sub_1ADB06370();
  [v14 addInternalDebugDescription_];

  [v14 setUnderlyingError_];
  a3(0, v14);
}

uint64_t sub_1AD50ACC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v11 = sub_1ADB06040();
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1ADB06060();
  v14 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v24 = sub_1ADB068B0();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v18 = v23;
  v17[4] = a4;
  v17[5] = v18;
  v17[6] = a6;
  v17[7] = a1;
  aBlock[4] = sub_1AD50C6D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_33_2;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  swift_unknownObjectRetain();

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD50C6E0(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  v21 = v24;
  MEMORY[0x1B26F6950](0, v16, v13, v19);
  _Block_release(v19);

  (*(v26 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v25);
}

void sub_1AD50AFDC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  if (sub_1ADB068F0())
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1ADB05FA0();
    __swift_project_value_buffer(v10, qword_1EB59AB68);

    oslog = sub_1ADB05F80();
    v11 = sub_1ADB06860();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1AD3CA88C(a2, a3, &v15);
      _os_log_impl(&dword_1AD337000, oslog, v11, "[%s] Add payment pass request returned after timeout", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1B26F9F20](v13, -1, -1);
      MEMORY[0x1B26F9F20](v12, -1, -1);
    }
  }

  else
  {
    sub_1ADB06910();
    a4(a6, 0);
  }
}

void sub_1AD50B194(int a1, void *a2, int a3, id a4, void (*a5)(void, id), uint64_t a6, void *a7, void *a8)
{
  if (!a2)
  {
    v26 = [a4 _plugIn];
    if (!v26)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = [v26 localizedContainingName];
    swift_unknownObjectRelease();
    if (!v27)
    {
      v28 = [a4 _localizedName];
      if (!v28)
      {
        v66 = PKPassKitBundle();
        if (!v66)
        {
LABEL_45:
          __break(1u);
          return;
        }

        v67 = v66;
        v68 = sub_1ADB06370();
        v69 = sub_1ADB06370();
        v70 = sub_1ADB06370();
        v27 = [v67 localizedStringForKey:v68 value:v69 table:v70];

        v29 = sub_1ADB063B0();
        v31 = v71;

LABEL_22:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59C5D0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1ADB78CE0;
        *(v32 + 56) = MEMORY[0x1E69E6158];
        *(v32 + 64) = sub_1AD436B24();
        *(v32 + 32) = v29;
        *(v32 + 40) = v31;
        v33 = PKPassKitBundle();
        if (v33)
        {
          v34 = v33;
          v35 = sub_1ADB06370();
          v36 = sub_1ADB06370();
          v37 = sub_1ADB06370();
          v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

          sub_1ADB063B0();
          sub_1ADB06380();

          v39 = PKPassKitBundle();
          if (v39)
          {
            v40 = v39;
            v41 = sub_1ADB06370();
            v42 = sub_1ADB06370();
            v43 = sub_1ADB06370();
            v44 = [v40 localizedStringForKey:v41 value:v42 table:v43];

            if (!v44)
            {
              sub_1ADB063B0();
              v44 = sub_1ADB06370();
            }

            v45 = sub_1ADB06370();

            v46 = [objc_opt_self() errorWithTitle:v44 message:v45 severity:5];

            v77 = v46;
            a5(0, v46);

            return;
          }

          goto LABEL_44;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v27 = v28;
    }

    v29 = sub_1ADB063B0();
    v31 = v30;
    goto LABEL_22;
  }

  v10 = a2;
  v11 = [a7 certificates];
  if (!v11)
  {
    __break(1u);
    goto LABEL_42;
  }

  v12 = v11;
  v73 = v10;
  v13 = sub_1ADB06610();

  v14 = *(v13 + 16);
  v76 = a7;
  if (v14)
  {
    v72 = a8;
    v15 = v13 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1AD3C94C4(v15, &aBlock);
      sub_1AD41C9D0(&aBlock, &v83);
      if (swift_dynamicCast())
      {
        v17 = *(&v84 + 1);
        if (*(&v84 + 1) >> 60 != 15)
        {
          v18 = *(&v84 + 1);
          v19 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1AD425AE0(0, *(v16 + 2) + 1, 1, v16);
          }

          v21 = *(v16 + 2);
          v20 = *(v16 + 3);
          if (v21 >= v20 >> 1)
          {
            v24 = sub_1AD425AE0((v20 > 1), v21 + 1, 1, v16);
            v22 = v18;
            v16 = v24;
          }

          else
          {
            v22 = v18;
          }

          *(v16 + 2) = v21 + 1;
          v23 = &v16[16 * v21];
          *(v23 + 4) = v19;
          *(v23 + 5) = v22;
          goto LABEL_7;
        }
      }

      else
      {
        v84 = xmmword_1ADB812F0;
        v17 = 0xF000000000000000;
      }

      sub_1AD422FB0(v84, v17);
LABEL_7:
      v15 += 32;
      if (!--v14)
      {

        a7 = v76;
        a8 = v72;
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  v47 = [a8 identifier];
  if (!v47)
  {
    sub_1ADB063B0();
    v47 = sub_1ADB06370();
  }

  v48 = [a8 addRequestConfiguration];
  v49 = sub_1ADB06600();

  v50 = [a7 nonce];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1ADB05D70();
    v54 = v53;

    v55 = sub_1ADB05D50();
    a7 = v76;
    sub_1AD3C757C(v52, v54);
  }

  else
  {
    v55 = 0;
  }

  v56 = [a7 nonceSignature];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1ADB05D70();
    v60 = v59;

    v61 = sub_1ADB05D50();
    sub_1AD3C757C(v58, v60);
  }

  else
  {
    v61 = 0;
  }

  v62 = swift_allocObject();
  v62[2] = v73;
  v62[3] = a5;
  v62[4] = a6;
  v62[5] = v76;
  v81 = sub_1AD50C728;
  v82 = v62;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v79 = sub_1AD3CE960;
  v80 = &block_descriptor_39_2;
  v63 = _Block_copy(&aBlock);
  v64 = v73;

  v65 = v76;

  [v64 generateRequestWithEntryIdentifier:v47 configuration:v48 certificateChain:v49 nonce:v55 nonceSignature:v61 completionHandler:v63];
  _Block_release(v63);
}

void sub_1AD50B914(void *a1, id a2, void (*a3)(void *, id), uint64_t a4, void *a5)
{
  [a2 invalidate];
  if (a1)
  {
    v23 = a1;
    v8 = [a5 publicKeyHash];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1ADB05D70();
      v12 = v11;

      v13 = sub_1ADB05D50();
      sub_1AD3C757C(v10, v12);
    }

    else
    {
      v13 = 0;
    }

    [v23 setPublicKeyHash_];

    v15 = [a5 nonce];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1ADB05D70();
      v19 = v18;

      v20 = sub_1ADB05D50();
      sub_1AD3C757C(v17, v19);
    }

    else
    {
      v20 = 0;
    }

    [v23 setNonce_];

    if ([v23 _hasRequiredFields_])
    {
      v23 = v23;
      a3(a1, 0);
    }

    else
    {
      v21 = [objc_opt_self() errorWithCommonType:1 severity:4];
      v22 = sub_1ADB06370();
      [v21 addInternalDebugDescription_];

      [v21 setUnderlyingError_];
      a3(0, v21);
    }
  }

  else
  {
    v23 = [objc_opt_self() errorWithCommonType:1 severity:4];
    v14 = sub_1ADB06370();
    [v23 addInternalDebugDescription_];

    [v23 setUnderlyingError_];
    a3(0, v23);
  }
}

void sub_1AD50BBC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a3;
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1AD50BC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59C5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1AD50BD5C(void (*a1)(char *, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t (*)(void *a1), void *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v85 = a4;
  v86 = a5;
  v87 = a3;
  v68 = a2;
  v69 = a1;
  v81 = sub_1ADB06040();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1ADB06060();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1ADB06030();
  v74 = *(v75 - 8);
  v8 = MEMORY[0x1EEE9AC00](v75);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v68 - v11;
  v72 = sub_1ADB06080();
  *&v88 = *(v72 - 8);
  v12 = MEMORY[0x1EEE9AC00](v72);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v68 - v15;
  v16 = sub_1ADB068D0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*(v5 + 56) sid];
  v21 = sub_1ADB063B0();
  v83 = v22;
  v84 = v21;

  v82 = sub_1AD3D3200(0, &unk_1EB59BB10);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v23 = sub_1ADB068B0();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1AD50C6E0(&unk_1EB599FB0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB20);
  sub_1AD41E8DC(&unk_1EB599FC0, &unk_1EB59BB20);
  sub_1ADB06B00();
  v24 = sub_1ADB068E0();

  (*(v17 + 8))(v19, v16);
  v82 = v24;
  ObjectType = swift_getObjectType();
  sub_1ADB06070();
  v26 = v71;
  sub_1ADB06090();
  v27 = *(v88 + 8);
  *&v88 = v88 + 8;
  v70 = v27;
  v28 = v14;
  v29 = v72;
  v27(v28, v72);
  v30 = v74;
  v31 = *(v74 + 104);
  v32 = v73;
  v33 = v75;
  v31(v73, *MEMORY[0x1E69E7F40], v75);
  *v10 = 0;
  v31(v10, *MEMORY[0x1E69E7F28], v33);
  MEMORY[0x1B26F69C0](v26, v32, v10, ObjectType);
  v34 = *(v30 + 8);
  v34(v10, v33);
  v34(v32, v33);
  v70(v26, v29);
  v35 = swift_allocObject();
  v36 = v83;
  v35[2] = v84;
  v35[3] = v36;
  v37 = v86;
  v35[4] = v85;
  v35[5] = v37;
  v94 = sub_1AD50C6B4;
  v95 = v35;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v92 = sub_1AD471DC4;
  v93 = &block_descriptor_24_7;
  v38 = _Block_copy(&aBlock);

  v39 = v76;
  sub_1ADB06050();
  v40 = v77;
  sub_1AD509054();
  v75 = ObjectType;
  sub_1ADB06900();
  _Block_release(v38);
  (*(v80 + 8))(v40, v81);
  (*(v78 + 8))(v39, v79);

  result = [v87 certificates];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = result;
  v43 = sub_1ADB06610();

  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = v43 + 32;
    v46 = MEMORY[0x1E69E7CC0];
    v88 = xmmword_1ADB812F0;
    while (1)
    {
      sub_1AD3C94C4(v45, &aBlock);
      sub_1AD41C9D0(&aBlock, &v89);
      if (swift_dynamicCast())
      {
        v47 = *(&v90 + 1);
        if (*(&v90 + 1) >> 60 != 15)
        {
          v48 = *(&v90 + 1);
          v49 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_1AD425AE0(0, *(v46 + 2) + 1, 1, v46);
          }

          v51 = *(v46 + 2);
          v50 = *(v46 + 3);
          if (v51 >= v50 >> 1)
          {
            v54 = sub_1AD425AE0((v50 > 1), v51 + 1, 1, v46);
            v52 = v48;
            v46 = v54;
          }

          else
          {
            v52 = v48;
          }

          *(v46 + 2) = v51 + 1;
          v53 = &v46[16 * v51];
          *(v53 + 4) = v49;
          *(v53 + 5) = v52;
          goto LABEL_6;
        }
      }

      else
      {
        v90 = v88;
        v47 = 0xF000000000000000;
      }

      sub_1AD422FB0(v90, v47);
LABEL_6:
      v45 += 32;
      if (!--v44)
      {

        goto LABEL_17;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v55 = v87;
  result = [v87 nonce];
  if (!result)
  {
    goto LABEL_21;
  }

  v56 = result;
  v57 = sub_1ADB05D70();
  v59 = v58;

  result = [v55 nonceSignature];
  if (result)
  {
    v60 = result;
    v61 = sub_1ADB05D70();
    v63 = v62;

    v64 = swift_allocObject();
    v66 = v83;
    v65 = v84;
    v64[2] = v82;
    v64[3] = v65;
    v67 = v85;
    v64[4] = v66;
    v64[5] = v67;
    v64[6] = v86;

    swift_unknownObjectRetain();
    v69(v46, v57, v59, v61, v63, sub_1AD50C6C0, v64);

    sub_1AD3C757C(v61, v63);
    sub_1AD3C757C(v57, v59);
    sub_1ADB06920();
    return swift_unknownObjectRelease();
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1AD50C6E0(unint64_t *a1, void (*a2)(uint64_t))
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

id ProvisioningRequirementOracle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1AD50C790(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1ADB063B0(), sub_1ADB07090(), sub_1ADB06460(), v3 = sub_1ADB070D0(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_1ADB063B0();
      v9 = v8;
      if (v7 == sub_1ADB063B0() && v9 == v10)
      {
        break;
      }

      v12 = sub_1ADB06F50();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1AD50C8E4(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1ADB07090();
    ProvisioningRequirement.RequirementType.rawValue.getter();
    sub_1ADB06460();

    v4 = sub_1ADB070D0();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE400000000000000;
        v9 = 845247336;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE700000000000000;
            v9 = 0x656574616E616DLL;
            break;
          case 2:
            v9 = 0xD000000000000014;
            v8 = 0x80000001ADB9C240;
            break;
          case 3:
            v8 = 0xE800000000000000;
            v9 = 0x65646F6373736170;
            break;
          case 4:
            v9 = 0x6150676E6F727473;
            v10 = 1868788595;
            goto LABEL_17;
          case 5:
            v9 = 0x75536E6F69676572;
            v8 = 0xEF646574726F7070;
            break;
          case 6:
            v8 = 0xE500000000000000;
            v9 = 0x746C756461;
            break;
          case 7:
            v9 = 0x634164756F6C6369;
            v8 = 0xED0000746E756F63;
            break;
          case 8:
            v9 = 0x6E4974656C6C6177;
            v8 = 0xEF64656C6C617473;
            break;
          case 9:
            v9 = 0xD000000000000017;
            v8 = 0x80000001ADB9C2B0;
            break;
          case 0xA:
            v9 = 0xD000000000000012;
            v8 = 0x80000001ADB9C2D0;
            break;
          case 0xB:
            v9 = 0xD000000000000015;
            v8 = 0x80000001ADB9C2F0;
            break;
          case 0xC:
            v9 = 0xD000000000000011;
            v8 = 0x80000001ADB9C310;
            break;
          case 0xD:
            v9 = 0xD000000000000029;
            v8 = 0x80000001ADB9C330;
            break;
          case 0xE:
            v9 = 0xD000000000000015;
            v8 = 0x80000001ADB9C360;
            break;
          case 0xF:
            v9 = 0xD000000000000016;
            v8 = 0x80000001ADB9C380;
            break;
          case 0x10:
            v9 = 0xD000000000000012;
            v8 = 0x80000001ADB9C3A0;
            break;
          case 0x11:
            v9 = 0xD000000000000016;
            v8 = 0x80000001ADB9C3C0;
            break;
          case 0x12:
            v9 = 0xD000000000000013;
            v8 = 0x80000001ADB9C3E0;
            break;
          case 0x13:
            v9 = 0xD000000000000021;
            v8 = 0x80000001ADB9C400;
            break;
          case 0x14:
            v9 = 0xD000000000000022;
            v8 = 0x80000001ADB9C430;
            break;
          case 0x15:
            v9 = 0xD000000000000018;
            v8 = 0x80000001ADB9C460;
            break;
          case 0x16:
            v9 = 0xD000000000000016;
            v8 = 0x80000001ADB9C480;
            break;
          case 0x17:
            v8 = 0xE800000000000000;
            v9 = 0x7473657547746F6ELL;
            break;
          case 0x18:
            v9 = 0x6972616853746F6ELL;
            v10 = 1867343726;
LABEL_17:
            v8 = v10 | 0xEE00656400000000;
            break;
          case 0x19:
            v9 = 0x76416E6F6D656164;
            v8 = 0xEF656C62616C6961;
            break;
          case 0x1A:
            v9 = 0xD000000000000020;
            v8 = 0x80000001ADB9C4C0;
            break;
          case 0x1B:
            v9 = 0xD000000000000010;
            v8 = 0x80000001ADB9C4F0;
            break;
          case 0x1C:
            v9 = 0x5344496863756F74;
            v8 = 0xED0000726F736E65;
            break;
          case 0x1D:
            v9 = 0xD000000000000018;
            v8 = 0x80000001ADB9C510;
            break;
          case 0x1E:
            v9 = 0xD000000000000010;
            v8 = 0x80000001ADB9C530;
            break;
          case 0x1F:
            v9 = 0xD000000000000017;
            v8 = 0x80000001ADB9C550;
            break;
          case 0x20:
            v9 = 0xD000000000000015;
            v8 = 0x80000001ADB9C570;
            break;
          case 0x21:
            v9 = 0xD000000000000020;
            v8 = 0x80000001ADB9C590;
            break;
          case 0x22:
            v9 = 0xD000000000000016;
            v8 = 0x80000001ADB9C5C0;
            break;
          default:
            break;
        }

        v11 = 0xE400000000000000;
        v12 = 845247336;
        switch(a1)
        {
          case 1:
            v11 = 0xE700000000000000;
            if (v9 == 0x656574616E616DLL)
            {
              goto LABEL_107;
            }

            goto LABEL_108;
          case 2:
            v11 = 0x80000001ADB9C240;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 3:
            v11 = 0xE800000000000000;
            if (v9 != 0x65646F6373736170)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 4:
            v13 = 0x6150676E6F727473;
            v14 = 1868788595;
            goto LABEL_63;
          case 5:
            v17 = 0x75536E6F69676572;
            v18 = 0x6574726F7070;
            goto LABEL_90;
          case 6:
            v11 = 0xE500000000000000;
            if (v9 != 0x746C756461)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 7:
            v15 = 0x634164756F6C6369;
            v16 = 0x746E756F63;
            goto LABEL_103;
          case 8:
            v17 = 0x6E4974656C6C6177;
            v18 = 0x656C6C617473;
LABEL_90:
            v11 = v18 & 0xFFFFFFFFFFFFLL | 0xEF64000000000000;
            if (v9 != v17)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 9:
            v11 = 0x80000001ADB9C2B0;
            if (v9 != 0xD000000000000017)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 10:
            v11 = 0x80000001ADB9C2D0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 11:
            v11 = 0x80000001ADB9C2F0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 12:
            v11 = 0x80000001ADB9C310;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 13:
            v11 = 0x80000001ADB9C330;
            if (v9 != 0xD000000000000029)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 14:
            v11 = 0x80000001ADB9C360;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 15:
            v11 = 0x80000001ADB9C380;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 16:
            v11 = 0x80000001ADB9C3A0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 17:
            v11 = 0x80000001ADB9C3C0;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 18:
            v11 = 0x80000001ADB9C3E0;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 19:
            v11 = 0x80000001ADB9C400;
            if (v9 != 0xD000000000000021)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 20:
            v11 = 0x80000001ADB9C430;
            if (v9 != 0xD000000000000022)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 21:
            v11 = 0x80000001ADB9C460;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 22:
            v11 = 0x80000001ADB9C480;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 23:
            v11 = 0xE800000000000000;
            if (v9 != 0x7473657547746F6ELL)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 24:
            v13 = 0x6972616853746F6ELL;
            v14 = 1867343726;
LABEL_63:
            v11 = v14 | 0xEE00656400000000;
            if (v9 != v13)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 25:
            v11 = 0xEF656C62616C6961;
            if (v9 != 0x76416E6F6D656164)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 26:
            v11 = 0x80000001ADB9C4C0;
            if (v9 != 0xD000000000000020)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 27:
            v11 = 0x80000001ADB9C4F0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 28:
            v15 = 0x5344496863756F74;
            v16 = 0x726F736E65;
LABEL_103:
            v11 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v15)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 29:
            v12 = 0xD000000000000018;
            v11 = 0x80000001ADB9C510;
            goto LABEL_106;
          case 30:
            v11 = 0x80000001ADB9C530;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 31:
            v11 = 0x80000001ADB9C550;
            if (v9 != 0xD000000000000017)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 32:
            v11 = 0x80000001ADB9C570;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 33:
            v11 = 0x80000001ADB9C590;
            if (v9 != 0xD000000000000020)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 34:
            v11 = 0x80000001ADB9C5C0;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          default:
LABEL_106:
            if (v9 != v12)
            {
              goto LABEL_108;
            }

LABEL_107:
            if (v8 == v11)
            {

              v19 = 1;
              return v19 & 1;
            }

LABEL_108:
            v19 = sub_1ADB06F50();

            if (v19)
            {
              return v19 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v19 & 1;
            }

            break;
        }
      }
    }
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1AD50D1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1ADB07090();
  sub_1ADB06460();
  v6 = sub_1ADB070D0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1ADB06F50() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id ProvisioningRequirementOracle.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningRequirementOracle();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1AD50D37C()
{
  v2 = sub_1AD50DE88();
  sub_1AD4505BC(&unk_1F2261D58);
  v0 = sub_1AD4CEF98(v2);

  return v0;
}

uint64_t sub_1AD50D3D8(void *a1)
{
  v22 = sub_1AD50DE88();
  v2 = [a1 configuration];
  if (!v2)
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = v2;
  v4 = [v2 featureIdentifier];

  v5 = sub_1AD50DF78(v4);
  sub_1AD4505BC(v5);
  v6 = [a1 regions];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1ADB06790();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  if ((sub_1AD50D1EC(20035, 0xE200000000000000, v8) & 1) != 0 || PKEnforceUpgradedPasscodePolicyForAllRegions())
  {
    v9 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AD42507C(0, *(v22 + 2) + 1, 1, v22);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AD42507C((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = -124;
    v22 = v9;
  }

  v12 = [a1 hsa2Requirement];
  if (v12 == 2)
  {

    v13 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AD42507C(0, *(v22 + 2) + 1, 1, v22);
    }

    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1AD42507C((v16 > 1), v17 + 1, 1, v13);
    }

    *(v13 + 2) = v17 + 1;
    v13[v17 + 32] = 0x80;
    goto LABEL_26;
  }

  if (v12 == 1)
  {

    v13 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AD42507C(0, *(v22 + 2) + 1, 1, v22);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AD42507C((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v13[v15 + 32] = 0;
    goto LABEL_26;
  }

  if (v12)
  {
LABEL_34:
    result = sub_1ADB06CE0();
    __break(1u);
    return result;
  }

  v13 = v22;
LABEL_26:
  if (([a1 allowOnManagedAccount] & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AD42507C(0, *(v13 + 2) + 1, 1, v13);
    }

    v19 = *(v13 + 2);
    v18 = *(v13 + 3);
    if (v19 >= v18 >> 1)
    {
      v13 = sub_1AD42507C((v18 > 1), v19 + 1, 1, v13);
    }

    *(v13 + 2) = v19 + 1;
    v13[v19 + 32] = -116;
  }

  v20 = sub_1AD4CEF98(v13);

  return v20;
}

uint64_t sub_1AD50D730(unint64_t a1, void *a2)
{
  result = sub_1AD50DE88();
  v4 = result;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_28:
    v21 = sub_1AD4CEF98(v4);

    return v21;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B26F6CC0](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = sub_1AD50E160(v7, a2);
      v10 = *(v9 + 16);
      v11 = *(v4 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        result = sub_1ADB06D00();
        v5 = result;
        if (!result)
        {
          goto LABEL_28;
        }

        goto LABEL_3;
      }

      v13 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v15 = *(v4 + 3) >> 1, v15 >= v12))
      {
        if (*(v13 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v16 = v11 + v10;
        }

        else
        {
          v16 = v11;
        }

        v4 = sub_1AD42507C(isUniquelyReferenced_nonNull_native, v16, 1, v4);
        v15 = *(v4 + 3) >> 1;
        if (*(v13 + 16))
        {
LABEL_19:
          v17 = *(v4 + 2);
          if (v15 - v17 < v10)
          {
            goto LABEL_25;
          }

          memcpy(&v4[v17 + 32], (v13 + 32), v10);

          if (v10)
          {
            v18 = *(v4 + 2);
            v19 = __OFADD__(v18, v10);
            v20 = v18 + v10;
            if (v19)
            {
              goto LABEL_26;
            }

            *(v4 + 2) = v20;
          }

          goto LABEL_6;
        }
      }

      if (v10)
      {
        goto LABEL_24;
      }

LABEL_6:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AD50D8E8(void *a1)
{
  v1 = sub_1AD50EC78(a1);
  v2 = sub_1AD4CEF98(v1);

  return v2;
}

uint64_t sub_1AD50D924(void *a1)
{
  v4 = sub_1AD50F700(a1);
  sub_1AD4505BC(&unk_1F2261D80);
  v1 = sub_1AD50DE88();
  sub_1AD4505BC(v1);
  v2 = sub_1AD4CEF98(v4);

  return v2;
}

uint64_t sub_1AD50D988(void *a1)
{
  v4 = sub_1AD50F700(a1);
  sub_1AD4505BC(&unk_1F2261C18);
  v1 = sub_1AD50DE88();
  sub_1AD4505BC(v1);
  v2 = sub_1AD4CEF98(v4);

  return v2;
}

id ProvisioningRequirementOracle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningRequirementOracle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

PKProvisioningRequirementsContainer __swiftcall ProvisioningRequirementOracle.requirements(forAddSecureElementPassConfiguration:)(PKAddSecureElementPassConfiguration *forAddSecureElementPassConfiguration)
{
  v1 = sub_1AD50EC78(forAddSecureElementPassConfiguration);
  v2 = sub_1AD4CEF98(v1);

  v3 = type metadata accessor for ProvisioningRequirementsContainer();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = v2;
  v11.receiver = v4;
  v11.super_class = v3;
  v6 = [(PKAddSecureElementPassConfiguration *)&v11 init];
  v7 = [objc_allocWithZone(PKProvisioningRequirementsContainer) initWithContainer_];

  v9 = v7;
  result._container = v8;
  result.super.isa = v9;
  return result;
}

PKProvisioningRequirementsContainer __swiftcall ProvisioningRequirementOracle.recoverableRequirementsContainer()()
{
  v0 = type metadata accessor for ProvisioningRequirementsContainer();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = &unk_1F2261DA8;
  v8.receiver = v1;
  v8.super_class = v0;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = [objc_allocWithZone(PKProvisioningRequirementsContainer) initWithContainer_];

  v6 = v4;
  result._container = v5;
  result.super.isa = v6;
  return result;
}

char *sub_1AD50DD30(void *a1)
{
  v2 = [a1 domain];
  if (!v2)
  {
    sub_1ADB063B0();
    v2 = sub_1ADB06370();
  }

  v3 = v2;
  v4 = @"PKPaymentWebServiceErrorDomain";
  v5 = v4;
  if (v2 == @"PKPaymentWebServiceErrorDomain")
  {

    goto LABEL_12;
  }

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = [(__CFString *)v3 isEqualToString:v4];

  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_12:
  v8 = [a1 code];
  v9 = MEMORY[0x1E69E7CC0];
  if (v8 == 40501)
  {
    v9 = sub_1AD42507C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AD42507C((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = 0x80;
  }

  return v9;
}

char *sub_1AD50DE88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A0B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB86750;
  *(inited + 32) = -1953593457;
  *(inited + 36) = -29288;
  v1 = sub_1AD42507C(1, 7, 1, inited);
  *(v1 + 2) = 7;
  v1[38] = -120;
  v2 = *(v1 + 3);
  if (v2 <= 0xF)
  {
    v1 = sub_1AD42507C((v2 > 1), 8, 1, v1);
  }

  *(v1 + 2) = 8;
  v1[39] = -125;
  return v1;
}

uint64_t sub_1AD50DF78(unint64_t a1)
{
  if (a1 > 5)
  {
    result = sub_1ADB06CE0();
    __break(1u);
  }

  else
  {
    if (((1 << a1) & 0x16) != 0)
    {
      v1 = sub_1AD42507C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v3 = *(v1 + 2);
      v2 = *(v1 + 3);
      v4 = v2 >> 1;
      v5 = v3 + 1;
      if (v2 >> 1 <= v3)
      {
        v1 = sub_1AD42507C((v2 > 1), v3 + 1, 1, v1);
        v2 = *(v1 + 3);
        v4 = v2 >> 1;
      }

      *(v1 + 2) = v5;
      v1[v3 + 32] = 0x80;
      v6 = v3 + 2;
      if (v4 < (v3 + 2))
      {
        v1 = sub_1AD42507C((v2 > 1), v3 + 2, 1, v1);
        v2 = *(v1 + 3);
        v4 = v2 >> 1;
      }

      *(v1 + 2) = v6;
      v1[v5 + 32] = -127;
      if (v4 < (v3 + 3))
      {
        v1 = sub_1AD42507C((v2 > 1), v3 + 3, 1, v1);
      }

      *(v1 + 2) = v3 + 3;
      v1[v6 + 32] = -126;
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AD42507C(0, *(v1 + 2) + 1, 1, v1);
    }

    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_1AD42507C((v7 > 1), v8 + 1, 1, v1);
    }

    *(v1 + 2) = v8 + 1;
    v1[v8 + 32] = -116;
    return v1;
  }

  return result;
}

uint64_t sub_1AD50E160(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v85 = MEMORY[0x1E69E7CC0];
  v5 = [a1 accountCredential];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 account];

    if (!v7)
    {
      __break(1u);
      goto LABEL_121;
    }

    v8 = [v7 feature];

    goto LABEL_8;
  }

  if ([a1 isPeerPaymentCredential])
  {
    v8 = 1;
LABEL_8:
    v9 = sub_1AD50DF78(v8);
    sub_1AD4505BC(v9);
    goto LABEL_9;
  }

  if ([a1 credentialType] == 135)
  {
    v8 = 4;
    goto LABEL_8;
  }

LABEL_9:
  v10 = [a1 cardType];
  if (v10 < 3 || v10 == 4)
  {
    goto LABEL_19;
  }

  if (v10 == 3)
  {
    v11 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    v14 = v12 >> 1;
    v15 = v13 + 1;
    if (v12 >> 1 <= v13)
    {
      v11 = sub_1AD42507C((v12 > 1), v13 + 1, 1, v11);
      v12 = *(v11 + 3);
      v14 = v12 >> 1;
    }

    *(v11 + 2) = v15;
    v11[v13 + 32] = 0;
    v16 = v13 + 2;
    if (v14 < v16)
    {
      v11 = sub_1AD42507C((v12 > 1), v16, 1, v11);
    }

    *(v11 + 2) = v16;
    v11[v15 + 32] = 1;
    v85 = v11;
LABEL_19:
    if ([a1 isIssuerProvisioningExtensionCredential])
    {
      v17 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1AD42507C((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v17[v19 + 32] = -116;
      v85 = v17;
    }

    v20 = [a1 remoteCredential];
    if (!v20)
    {
      goto LABEL_52;
    }

    v21 = v20;
    if ([v21 credentialType] == 130)
    {

      v22 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      v25 = v23 >> 1;
      v26 = v24 + 1;
      if (v23 >> 1 <= v24)
      {
        v22 = sub_1AD42507C((v23 > 1), v24 + 1, 1, v22);
        v23 = *(v22 + 3);
        v25 = v23 >> 1;
      }

      *(v22 + 2) = v26;
      v22[v24 + 32] = -127;
      v27 = v24 + 2;
      if (v25 < v27)
      {
        v22 = sub_1AD42507C((v23 > 1), v27, 1, v22);
      }

      *(v22 + 2) = v27;
      v28 = &v22[v26];
      v29 = -108;
    }

    else
    {
      v30 = [v21 credentialType];

      if (v30 != 139)
      {
        goto LABEL_41;
      }

      v22 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
      }

      v32 = *(v22 + 2);
      v31 = *(v22 + 3);
      if (v32 >= v31 >> 1)
      {
        v22 = sub_1AD42507C((v31 > 1), v32 + 1, 1, v22);
      }

      *(v22 + 2) = v32 + 1;
      v28 = &v22[v32];
      v29 = -107;
    }

    v28[32] = v29;
    v85 = v22;
LABEL_41:
    if (PKEnforceUpgradedPasscodePolicyForAllRegions())
    {
LABEL_46:
      v38 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1AD42507C((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v38[v40 + 32] = -124;
      v85 = v38;
      goto LABEL_52;
    }

    v33 = [v21 passTypeIdentifier];
    if (!v33)
    {
      v34 = [v21 underlyingPaymentPass];
      if (!v34)
      {
        goto LABEL_51;
      }

      v35 = v34;
      v33 = [v34 passTypeIdentifier];
    }

    sub_1ADB063B0();

    v36 = sub_1ADB06370();

    v37 = [a2 isChinaRegionIdentifier_];

    if (v37)
    {
      goto LABEL_46;
    }

LABEL_51:

LABEL_52:
    v41 = [a1 shareableCredential];
    if (v41)
    {
      v42 = v41;
      v43 = v85;
      if ([v41 source] == 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
        }

        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1AD42507C((v44 > 1), v45 + 1, 1, v43);
        }

        *(v43 + 2) = v45 + 1;
        v43[v45 + 32] = -108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1AD42507C(0, *(v43 + 2) + 1, 1, v43);
      }

      v47 = *(v43 + 2);
      v46 = *(v43 + 3);
      v48 = v46 >> 1;
      v49 = v47 + 1;
      if (v46 >> 1 <= v47)
      {
        v43 = sub_1AD42507C((v46 > 1), v47 + 1, 1, v43);
        v46 = *(v43 + 3);
        v48 = v46 >> 1;
      }

      *(v43 + 2) = v49;
      v43[v47 + 32] = 0x80;
      v50 = v47 + 2;
      if (v48 < (v47 + 2))
      {
        v43 = sub_1AD42507C((v46 > 1), v47 + 2, 1, v43);
        v46 = *(v43 + 3);
        v48 = v46 >> 1;
      }

      *(v43 + 2) = v50;
      v43[v49 + 32] = -127;
      v51 = v47 + 3;
      if (v48 < (v47 + 3))
      {
        v43 = sub_1AD42507C((v46 > 1), v47 + 3, 1, v43);
        v46 = *(v43 + 3);
        v48 = v46 >> 1;
      }

      *(v43 + 2) = v51;
      v43[v50 + 32] = -125;
      if (v48 < (v47 + 4))
      {
        v43 = sub_1AD42507C((v46 > 1), v47 + 4, 1, v43);
      }

      *(v43 + 2) = v47 + 4;
      v43[v51 + 32] = -121;
      v85 = v43;
    }

    if ([a1 isContactlessProductCredential])
    {
      v52 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
      }

      v54 = *(v52 + 2);
      v53 = *(v52 + 3);
      if (v54 >= v53 >> 1)
      {
        v52 = sub_1AD42507C((v53 > 1), v54 + 1, 1, v52);
      }

      *(v52 + 2) = v54 + 1;
      v52[v54 + 32] = -125;
      v85 = v52;
    }

    v55 = [a1 remoteCredential];
    if (v55)
    {
      v56 = v55;
      if ([v55 transferType] == 2)
      {
        v57 = [v56 underlyingPaymentPass];
        if (v57 && (v58 = v57, v59 = [v57 supportedRadioTechnologies], v58, (v59 & 2) != 0))
        {
          if (v59)
          {
            v60 = &unk_1F2261390;
          }

          else
          {
            v60 = &unk_1F2261368;
          }
        }

        else
        {
          v60 = MEMORY[0x1E69E7CC0];
        }

LABEL_103:
        sub_1AD4505BC(v60);
LABEL_104:

        v77 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1AD42507C(0, *(v85 + 2) + 1, 1, v85);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        v80 = v78 >> 1;
        v81 = v79 + 1;
        if (v78 >> 1 <= v79)
        {
          v77 = sub_1AD42507C((v78 > 1), v79 + 1, 1, v77);
          v78 = *(v77 + 3);
          v80 = v78 >> 1;
        }

        *(v77 + 2) = v81;
        v77[v79 + 32] = -109;
        v82 = v79 + 2;
        if (v80 < (v79 + 2))
        {
          v77 = sub_1AD42507C((v78 > 1), v79 + 2, 1, v77);
          v78 = *(v77 + 3);
          v80 = v78 >> 1;
        }

        *(v77 + 2) = v82;
        v77[v81 + 32] = -94;
        v83 = v79 + 3;
        if (v80 < (v79 + 3))
        {
          v77 = sub_1AD42507C((v78 > 1), v79 + 3, 1, v77);
          v78 = *(v77 + 3);
          v80 = v78 >> 1;
        }

        *(v77 + 2) = v83;
        v77[v82 + 32] = -116;
        if (v80 < (v79 + 4))
        {
          v77 = sub_1AD42507C((v78 > 1), v79 + 4, 1, v77);
        }

        *(v77 + 2) = v79 + 4;
        v77[v83 + 32] = -110;
        return v77;
      }
    }

    v61 = [a1 statefulTransferCredential];
    if (v61)
    {
      v62 = v61;
      v63 = [v61 invitation];

      if (v63)
      {
        objc_opt_self();
        v64 = swift_dynamicCastObjCClass();
        if (v64)
        {
          v65 = v64;
          v56 = v63;
          v66 = [v65 radioTechnology];
          v67 = &unk_1F2261390;
          if ((v66 & 1) == 0)
          {
            v67 = &unk_1F2261368;
          }

          if ((v66 & 2) != 0)
          {
            v68 = v67;
          }

          else
          {
            v68 = v4;
          }

          sub_1AD4505BC(v68);

          goto LABEL_104;
        }
      }
    }

    v69 = [a1 carKeyTerminalPairingCredential];
    if (!v69)
    {
      v73 = [a1 localAppletSubcredentialPassCredential];
      if (!v73)
      {
        return v85;
      }

      v56 = v73;
      v74 = [v73 credentialToShare];
      if (v74)
      {
        v71 = v74;
        v72 = [v74 allSupportedRadioTechnologies];
        goto LABEL_98;
      }

      goto LABEL_122;
    }

    v56 = v69;
    v70 = [v69 configuration];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 supportedRadioTechnologies];
LABEL_98:
      v75 = v72;

      v76 = &unk_1F2261390;
      if ((v75 & 1) == 0)
      {
        v76 = &unk_1F2261368;
      }

      if ((v75 & 2) != 0)
      {
        v60 = v76;
      }

      else
      {
        v60 = v4;
      }

      goto LABEL_103;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
  }

  result = sub_1ADB06CE0();
  __break(1u);
  return result;
}

char *sub_1AD50EC78(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v3 = [a1 configurationType];
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v2 = sub_1AD42507C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = *(v2 + 2);
      v20 = *(v2 + 3);
      if (v21 >= v20 >> 1)
      {
        v2 = sub_1AD42507C((v20 > 1), v21 + 1, 1, v2);
      }

      *(v2 + 2) = v21 + 1;
      v12 = &v2[v21];
      v13 = -127;
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_45;
      }

      v2 = sub_1AD42507C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v11 = *(v2 + 2);
      v10 = *(v2 + 3);
      if (v11 >= v10 >> 1)
      {
        v2 = sub_1AD42507C((v10 > 1), v11 + 1, 1, v2);
      }

      *(v2 + 2) = v11 + 1;
      v12 = &v2[v11];
      v13 = -113;
    }

    goto LABEL_44;
  }

  if (v3 == 1)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = a1;
      v17 = [v15 supportedRadioTechnologies];
      v18 = &unk_1F2261390;
      if ((v17 & 1) == 0)
      {
        v18 = &unk_1F2261368;
      }

      if ((v17 & 2) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v2;
      }

      sub_1AD4505BC(v19);

      v2 = v48;
    }
  }

  else if (v3 == 2)
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = [v5 shareablePassConfiguration];
      if (v7 && (v8 = v7, v9 = [v7 primaryAction], v8, v9 == 1))
      {
        v2 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v22 = sub_1AD50DE88();
        sub_1AD4505BC(v22);
        v2 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1AD42507C(0, *(v48 + 16) + 1, 1, v48);
        }

        v24 = *(v2 + 2);
        v23 = *(v2 + 3);
        v25 = v23 >> 1;
        v26 = v24 + 1;
        if (v23 >> 1 <= v24)
        {
          v40 = sub_1AD42507C((v23 > 1), v24 + 1, 1, v2);
          v26 = v24 + 1;
          v2 = v40;
          v23 = *(v40 + 3);
          v25 = v23 >> 1;
        }

        *(v2 + 2) = v26;
        v2[v24 + 32] = 0;
        v27 = v24 + 2;
        if (v25 < (v24 + 2))
        {
          v41 = v26;
          v47 = v27;
          v42 = sub_1AD42507C((v23 > 1), v27, 1, v2);
          v27 = v47;
          v26 = v41;
          v2 = v42;
        }

        *(v2 + 2) = v27;
        v2[v26 + 32] = -120;
        if (PKRequiresUnifiedAccessCapableDeviceForPushableConfiguration(v5))
        {
          v29 = *(v2 + 2);
          v28 = *(v2 + 3);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v46 = sub_1AD42507C((v28 > 1), v29 + 1, 1, v2);
            v30 = v29 + 1;
            v2 = v46;
          }

          *(v2 + 2) = v30;
          v2[v29 + 32] = -108;
        }

        v31 = PKRequiresManateeForPushableConfiguration(v5);
        v33 = *(v2 + 2);
        v32 = *(v2 + 3);
        if (v31)
        {
          v34 = -127;
        }

        else
        {
          v34 = 1;
        }

        if (v33 >= v32 >> 1)
        {
          v43 = v2;
          v44 = v34;
          v45 = sub_1AD42507C((v32 > 1), v33 + 1, 1, v43);
          v34 = v44;
          v2 = v45;
        }

        *(v2 + 2) = v33 + 1;
        v2[v33 + 32] = v34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AD42507C(0, *(v2 + 2) + 1, 1, v2);
      }

      v36 = *(v2 + 2);
      v35 = *(v2 + 3);
      if (v36 >= v35 >> 1)
      {
        v2 = sub_1AD42507C((v35 > 1), v36 + 1, 1, v2);
      }

      *(v2 + 2) = v36 + 1;
      v12 = &v2[v36];
      v13 = -95;
LABEL_44:
      v12[32] = v13;
    }
  }

LABEL_45:
  if ([a1 allowManagedAppleID] != 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AD42507C(0, *(v2 + 2) + 1, 1, v2);
    }

    v38 = *(v2 + 2);
    v37 = *(v2 + 3);
    if (v38 >= v37 >> 1)
    {
      v2 = sub_1AD42507C((v37 > 1), v38 + 1, 1, v2);
    }

    *(v2 + 2) = v38 + 1;
    v2[v38 + 32] = -116;
  }

  return v2;
}

uint64_t sub_1AD50F108()
{
  v0 = sub_1AD50DE88();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_1AD42507C(0, *(v0 + 2) + 1, 1, v0);
  }

  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1AD42507C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = -123;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_1AD42507C((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = -116;
  v6 = sub_1AD4CEF98(v0);

  return v6;
}

uint64_t sub_1AD50F1FC(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = sub_1AD50DE88();
  v37 = v5;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        v15 = [v3 secureElementPassConfiguration];
        v16 = sub_1AD50EC78(v15);

        sub_1AD4505BC(v16);
        goto LABEL_32;
      }

      v6 = v5;
      if ([v3 style])
      {
        if ([v3 style] != 1)
        {
LABEL_24:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1AD42507C(0, *(v6 + 2) + 1, 1, v6);
          }

          v18 = *(v6 + 2);
          v19 = *(v6 + 3);
          v20 = v18 + 1;
          if (v18 >= v19 >> 1)
          {
            v28 = v6;
            v29 = *(v6 + 2);
            v30 = sub_1AD42507C((v19 > 1), v18 + 1, 1, v28);
            v18 = v29;
            v6 = v30;
          }

          *(v6 + 2) = v20;
          v6[v18 + 32] = -122;
          v37 = v6;
          if ([v3 allowManagedAppleID] != 1)
          {
            v22 = *(v6 + 2);
            v21 = *(v6 + 3);
            if (v22 >= v21 >> 1)
            {
              v6 = sub_1AD42507C((v21 > 1), v22 + 1, 1, v6);
            }

            *(v6 + 2) = v22 + 1;
            v6[v22 + 32] = -116;
            v37 = v6;
          }

          goto LABEL_32;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AD42507C(0, *(v6 + 2) + 1, 1, v6);
        }

        v7 = *(v6 + 2);
        v8 = *(v6 + 3);
        v9 = v7 + 1;
        if (v7 >= v8 >> 1)
        {
          v34 = v6;
          v35 = *(v6 + 2);
          v36 = sub_1AD42507C((v8 > 1), v7 + 1, 1, v34);
          v7 = v35;
          v6 = v36;
        }

        v10 = -127;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AD42507C(0, *(v6 + 2) + 1, 1, v6);
        }

        v7 = *(v6 + 2);
        v17 = *(v6 + 3);
        v9 = v7 + 1;
        if (v7 >= v17 >> 1)
        {
          v31 = v6;
          v32 = *(v6 + 2);
          v33 = sub_1AD42507C((v17 > 1), v7 + 1, 1, v31);
          v7 = v32;
          v6 = v33;
        }

        v10 = -123;
      }

      *(v6 + 2) = v9;
      v6[v7 + 32] = v10;
      goto LABEL_24;
    }

    v11 = sub_1AD50E160(v3, a2);
LABEL_14:
    sub_1AD4505BC(v11);
    goto LABEL_32;
  }

  if (v4 != 3)
  {
    v11 = sub_1AD50F108();
    goto LABEL_14;
  }

  v12 = ProvisioningCredentialsConfiguration.Credential.pushableConfiguration.getter();
  if (v12)
  {
    v13 = [v12 secureElementPassConfiguration];
    v14 = sub_1AD50EC78(v13);

    sub_1AD4505BC(v14);
    swift_unknownObjectRelease();
  }

LABEL_32:
  v23 = v37;
  if (PKEnforceUpgradedPasscodePolicyForAllRegions())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1AD42507C(0, *(v37 + 2) + 1, 1, v37);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1AD42507C((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v23[v25 + 32] = -124;
  }

  v26 = sub_1AD4CEF98(v23);

  return v26;
}

uint64_t sub_1AD50F58C(void *a1, void *a2)
{
  if (PKEnforceUpgradedPasscodePolicyForAllRegions() || (v4 = [a1 region]) != 0 && (v5 = v4, v6 = objc_msgSend(a2, sel_isChinaRegionIdentifier_, v4), v5, v6))
  {
    v7 = sub_1AD42507C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AD42507C((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v7[v9 + 32] = -124;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if ([a1 hasEnableRequirements])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AD42507C(0, *(v7 + 2) + 1, 1, v7);
    }

    v11 = *(v7 + 2);
    v10 = *(v7 + 3);
    if (v11 >= v10 >> 1)
    {
      v7 = sub_1AD42507C((v10 > 1), v11 + 1, 1, v7);
    }

    *(v7 + 2) = v11 + 1;
    v7[v11 + 32] = -110;
  }

  v12 = sub_1AD4CEF98(v7);

  return v12;
}

uint64_t sub_1AD50F700(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A0B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1ADB86760;
  *(v2 + 32) = -2088264807;
  *(v2 + 36) = -116;
  if (([a1 isFollowupAction] & 1) == 0)
  {
    v2 = sub_1AD42507C(1, 6, 1, v2);
    *(v2 + 16) = 6;
    *(v2 + 37) = -102;
  }

  return v2;
}

uint64_t dispatch thunk of ProvisioningRequirementOracle.requirements(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
}

uint64_t dispatch thunk of ProvisioningRequirementOracle.requirements(for:webService:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
}

void sub_1AD50F9F8(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1AD41C9D0(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1AD4EC44C(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_1AD4C3E44(a1);
    sub_1AD433814(a2, v6);

    sub_1AD4C3E44(v6);
  }
}

uint64_t sub_1AD50FA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1AD4EC6B0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1AD425BEC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1AD4B0B84();
        v16 = v18;
      }

      result = sub_1AD4B02D8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1AD50FB94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a3 == -1)
  {
    v14 = sub_1AD425BEC(a4, a5);
    v16 = v15;

    if (v16)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AD4B1298();
        v18 = v20;
      }

      sub_1AD47A35C(*(*(v18 + 56) + 24 * v14), *(*(v18 + 56) + 24 * v14 + 8), *(*(v18 + 56) + 24 * v14 + 16));
      result = sub_1AD4B4928(v14, v18);
      *v6 = v18;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_1AD4EC838(a1, a2, a3, a4, a5, v12);

    *v5 = v19;
  }

  return result;
}

void ProvisioningStepDeviceAssessment.generateAssessment(fieldsModel:completion:)(void *a1, void (*a2)(id, void), uint64_t a3)
{
  v4 = v3;
  v8 = [*(v3 + 56) sid];
  v9 = sub_1ADB063B0();
  v11 = v10;

  v12 = sub_1AD5103D4();
  if (v12)
  {
    v13 = v12;

    v14 = v13;
    v15 = PKPassKitCoreBundle();
    v16 = [objc_allocWithZone(PKODIServiceProviderAssessment) initWithServiceProviderIdentifier:v14 locationBundle:v15];

    [v16 setAllowPartialAssessment_];
    [v16 startAssessment];
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a2;
    v48 = a2;
    v17[4] = a3;
    v18 = swift_allocObject();
    *(v18 + 16) = MEMORY[0x1E69E7CC8];
    v19 = v16;
    swift_retain_n();
    v20 = v19;
    v21 = [a1 paymentSetupFieldWithIdentifier_];
    v22 = *MEMORY[0x1E6998418];
    if (v21 && (v23 = [v21 displayString]) != 0)
    {
      v24 = v23;
      v25 = sub_1ADB063B0();
      v47 = v17;
      v26 = v18;
      v27 = v20;
      v28 = v21;
      v29 = v14;
      v31 = v30;

      *(&v50 + 1) = MEMORY[0x1E69E6158];
      *&aBlock = v25;
      *(&aBlock + 1) = v31;
      v14 = v29;
      v21 = v28;
      v20 = v27;
      v18 = v26;
      v17 = v47;
    }

    else
    {
      aBlock = 0u;
      v50 = 0u;
    }

    sub_1AD50F9F8(&aBlock, v22);
    v32 = *(v4 + 16);
    swift_beginAccess();
    v33 = *(v32 + 152);
    if (v33)
    {
      v34 = swift_allocObject();
      v34[2] = v18;
      v34[3] = sub_1AD5107DC;
      v34[4] = v17;
      v51 = sub_1AD510838;
      v52 = v34;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v50 = sub_1AD3C8BB0;
      *(&v50 + 1) = &block_descriptor_47;
      v35 = _Block_copy(&aBlock);
      v36 = v33;

      [v36 fetchMessageSessionWithCompletion_];

      _Block_release(v35);
    }

    else
    {
      v45 = [objc_allocWithZone(MEMORY[0x1E69983B0]) init];
      type metadata accessor for ODIAttributeKey(0);
      sub_1AD5107E0();

      v46 = sub_1ADB06260();

      [v45 setAttributes_];

      [v20 updateAssessment_];
      [v20 computeAssessment];
      v48(v20, 0);
    }
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v37 = sub_1ADB05FA0();
    __swift_project_value_buffer(v37, qword_1EB59AB68);

    v38 = sub_1ADB05F80();
    v39 = sub_1ADB06860();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = a2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&aBlock = v42;
      *v41 = 136315138;
      v43 = sub_1AD3CA88C(v9, v11, &aBlock);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_1AD337000, v38, v39, "[%s] ProvisioningStepDeviceAssessment: Unable to find assessment service", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1B26F9F20](v42, -1, -1);
      v44 = v41;
      a2 = v40;
      MEMORY[0x1B26F9F20](v44, -1, -1);
    }

    else
    {
    }

    a2(0, 2);
  }
}

__n128 ProvisioningStepDeviceAssessment.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
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

uint64_t ProvisioningStepDeviceAssessment.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ProvisioningStepDeviceAssessment.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepDeviceAssessment.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD510338@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepDeviceAssessment();
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

id sub_1AD5103D4()
{
  v1 = v0;
  v21 = *(v0 + 24);
  v22 = *(v0 + 40);
  LOBYTE(v23) = *(v0 + 48);
  ProvisioningCredentialsConfiguration.Credential.carKeyPassConfiguration.getter();
  if (!v2)
  {
    v5 = *(v0 + 48);
    if (v5 > 1)
    {
      if (v5 - 2 >= 2)
      {
        if (v5 == 4)
        {
          v3 = MEMORY[0x1E69985D8];
        }

        else
        {
          v3 = MEMORY[0x1E69985F0];
        }

        return *v3;
      }

      goto LABEL_3;
    }

    if (*(v0 + 48))
    {
      v3 = MEMORY[0x1E69985C8];
      return *v3;
    }

    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v1 + 40);
    v9 = v7;
    v10 = [v9 remoteCredential];
    if (v10)
    {
      v11 = v10;
      if ([v10 transferType] == 2)
      {
        v12 = MEMORY[0x1E6998560];
      }

      else
      {
        v12 = MEMORY[0x1E69985B8];
      }

      v14 = *v12;

      goto LABEL_28;
    }

    if ([v9 isExternalOfferCredential])
    {
      v13 = MEMORY[0x1E69985C8];
    }

    else
    {
      v15 = [v9 shareableCredential];
      if (v15)
      {

        if (*(*(v1 + 16) + 33) == -16384)
        {
          v13 = MEMORY[0x1E69985D0];
        }

        else
        {
          v13 = MEMORY[0x1E69985A0];
        }
      }

      else if (([v9 isDigitalIssuanceProductCredential] & 1) != 0 || objc_msgSend(v9, sel_isPurchasedProductCredential))
      {
        v13 = MEMORY[0x1E69985F8];
      }

      else if ([v9 isIdentityCredential])
      {
        v13 = MEMORY[0x1E69985C0];
      }

      else
      {
        v16 = [v9 accountCredential];
        if (v16)
        {
          v17 = v16;
          result = [v16 account];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v18 = result;
          v19 = [result feature];

          if (v19 == 2)
          {
            v20 = MEMORY[0x1E69985A8];
          }

          else if (v19 == 1)
          {
            v20 = MEMORY[0x1E69985B0];
          }

          else
          {
            v20 = MEMORY[0x1E69985E0];
          }

          v14 = *v20;

LABEL_28:
          sub_1AD3CC2E0(v7, v6, v8, 0);
          return v14;
        }

        if ([v9 isPeerPaymentCredential])
        {
          v13 = MEMORY[0x1E69985B0];
        }

        else
        {
          [v9 isAppleBalanceCredential];
          v13 = MEMORY[0x1E69985E0];
        }
      }
    }

    v14 = *v13;
    goto LABEL_28;
  }

LABEL_3:
  v3 = MEMORY[0x1E69985A0];
  return *v3;
}

void sub_1AD5106A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v5 = *MEMORY[0x1E6998438];
  v9 = MEMORY[0x1E69E6370];
  v8[0] = a1 != 0;
  swift_beginAccess();
  sub_1AD50F9F8(v8, v5);
  swift_endAccess();
  v6 = [objc_allocWithZone(MEMORY[0x1E69983B0]) init];
  swift_beginAccess();
  type metadata accessor for ODIAttributeKey(0);
  sub_1AD5107E0();

  v7 = sub_1ADB06260();

  [v6 setAttributes_];

  a4(v6);
}

unint64_t sub_1AD5107E0()
{
  result = qword_1EB5983A0;
  if (!qword_1EB5983A0)
  {
    type metadata accessor for ODIAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5983A0);
  }

  return result;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s11PassKitCore32ProvisioningStepDeviceAssessmentC18terminateOperation7success6output10completionySb_So020PKODIServiceProviderG0CSgSgyyctF_0(char a1, void *a2, uint64_t (*a3)(void))
{
  if (a2 >= 2)
  {
    v6 = a2;
    if ([v6 currentAssessmentDidTimeout])
    {
      v7 = 2;
    }

    else
    {
      v7 = (a1 & 1) == 0;
    }

    [v6 provideSessionFeedback_];
    sub_1AD510964(a2);
  }

  return a3();
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore32ProvisioningStepDeviceAssessmentC0G6ResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1AD510964(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1AD510974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v57 = a4;
  v10[4] = a5;
  v11 = *(a2 + 56);

  v12 = [v11 sid];
  v13 = sub_1ADB063B0();
  v15 = v14;

  v16 = sub_1AD5103D4();
  if (v16)
  {
    v17 = v16;

    v18 = v17;
    v19 = PKPassKitCoreBundle();
    v20 = [objc_allocWithZone(PKODIServiceProviderAssessment) initWithServiceProviderIdentifier:v18 locationBundle:v19];
    v56 = v18;

    [v20 setAllowPartialAssessment_];
    [v20 startAssessment];
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_1AD510FFC;
    v21[4] = v10;
    v55 = swift_allocObject();
    *(v55 + 16) = MEMORY[0x1E69E7CC8];
    v22 = v20;
    swift_retain_n();
    v23 = v22;
    v24 = [a1 paymentSetupFieldWithIdentifier_];
    v25 = *MEMORY[0x1E6998418];
    if (v24 && (v26 = [v24 displayString]) != 0)
    {
      v27 = v26;
      v54 = a2;
      v28 = v24;
      v29 = a5;
      v30 = sub_1ADB063B0();
      v31 = a3;
      v32 = v23;
      v34 = v33;

      *(&v59 + 1) = MEMORY[0x1E69E6158];
      *&aBlock = v30;
      *(&aBlock + 1) = v34;
      a5 = v29;
      v24 = v28;
      v23 = v32;
      a3 = v31;
      a2 = v54;
    }

    else
    {
      aBlock = 0u;
      v59 = 0u;
    }

    sub_1AD50F9F8(&aBlock, v25);
    v35 = *(a2 + 16);
    swift_beginAccess();
    v36 = *(v35 + 152);
    if (v36)
    {
      v37 = swift_allocObject();
      v37[2] = v55;
      v37[3] = sub_1AD511074;
      v37[4] = v21;
      v60 = sub_1AD51106C;
      v61 = v37;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v59 = sub_1AD3C8BB0;
      *(&v59 + 1) = &block_descriptor_24_8;
      v38 = _Block_copy(&aBlock);
      v39 = v36;

      [v39 fetchMessageSessionWithCompletion_];

      _Block_release(v38);

      return;
    }

    v48 = [objc_allocWithZone(MEMORY[0x1E69983B0]) init];
    type metadata accessor for ODIAttributeKey(0);
    sub_1AD5107E0();

    v49 = sub_1ADB06260();

    [v48 setAttributes_];

    [v23 updateAssessment_];
    [v23 computeAssessment];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      (*(v50 + 72))(v23, 0, v57, a5, ObjectType, v50);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v40 = sub_1ADB05FA0();
    __swift_project_value_buffer(v40, qword_1EB59AB68);

    v41 = sub_1ADB05F80();
    v42 = sub_1ADB06860();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = a5;
      v45 = swift_slowAlloc();
      *&aBlock = v45;
      *v43 = 136315138;
      v46 = sub_1AD3CA88C(v13, v15, &aBlock);

      *(v43 + 4) = v46;
      _os_log_impl(&dword_1AD337000, v41, v42, "[%s] ProvisioningStepDeviceAssessment: Unable to find assessment service", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v47 = v45;
      a5 = v44;
      MEMORY[0x1B26F9F20](v47, -1, -1);
      MEMORY[0x1B26F9F20](v43, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = *(a3 + 24);
      v53 = swift_getObjectType();
      (*(v52 + 72))(0, 2, v57, a5, v53, v52);

      swift_unknownObjectRelease();
      return;
    }
  }
}

uint64_t sub_1AD511008(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  [v2 updateAssessment_];
  [v2 computeAssessment];
  return v3(v2, 0);
}

void sub_1AD511B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD511D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD51203C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD5122B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD512514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD512890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1AD512B1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

BOOL PKAppleBalanceInStoreTopUpTokenTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 0;
  if (v1 != @"barcode")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"barcode"], v2, !v3))
    {
      v4 = 1;
    }
  }

  return v4;
}

__CFString *PKAppleBalanceInStoreTopUpTokenTypeToString(uint64_t a1)
{
  if (a1)
  {
    return @"unknown";
  }

  else
  {
    return @"barcode";
  }
}

uint64_t PKAppleBalanceInStoreTopUpTokenStateFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"valid")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 2;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"valid"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"invalid" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"invalid"], v6, v7))
    {
      v4 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 0;
LABEL_9:

  return v4;
}

__CFString *PKAppleBalanceInStoreTopUpTokenStateToString(uint64_t a1)
{
  v1 = @"valid";
  if (a1 == 1)
  {
    v1 = @"invalid";
  }

  if (a1 == 2)
  {
    return @"unknown";
  }

  else
  {
    return v1;
  }
}

__CFString *PKDynamicProvisioningPageLayoutToString(uint64_t a1)
{
  v1 = @"compact";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"default";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPeerPaymentPaymentModeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"deviceTap")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"deviceTap"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"messages" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"messages"], v6, (v7 & 1) != 0))
    {
      v4 = 1;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"messagesGroup" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"messagesGroup"], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 2;
LABEL_12:

  return v4;
}

__CFString *PKPeerPaymentPaymentModeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C4408[a1 - 1];
  }
}

BOOL PKPeerPaymentContactAddressTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"displayName")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"displayName"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKPeerPaymentContactAddressTypeToString(uint64_t a1)
{
  if (a1)
  {
    return @"displayName";
  }

  else
  {
    return @"default";
  }
}

__CFString *PKPeerPaymentAccountResolutionStateToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E79C43D8[a1];
  }
}

BOOL PKPeerPaymentAccountShouldContactSupport(void *a1)
{
  v1 = a1;
  v2 = [v1 state];
  if (v2 > 3 || v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v1 stateReason];
    if ((v4 - 2) >= 7)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = [v1 role] == 0;
    }
  }

  return v5;
}

uint64_t PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 state];
  v6 = [v4 activationState];

  v8 = v6 == 4 && v5 != 4;
  ShouldContactSupport = PKPeerPaymentAccountShouldContactSupport(v3);
  if (ShouldContactSupport)
  {
    v10 = [v3 identityVerificationRequired];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 currentBalance];
  v12 = [v11 amount];
  v13 = [MEMORY[0x1E696AB90] zero];
  v14 = [v12 compare:v13];

  if (v8)
  {
    v15 = [v3 identityVerificationRequired];
    if (v5 == 3)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = 3;
    }
  }

  else
  {
    v18 = ShouldContactSupport | v10;
    if (v5 == 4)
    {
      v18 = 1;
    }

    v19 = 3;
    if (!ShouldContactSupport)
    {
      v19 = 4;
    }

    if (v10)
    {
      v19 = 2;
    }

    v20 = 5;
    if (v14 != -1)
    {
      v20 = 0;
    }

    if (v18)
    {
      v17 = v19;
    }

    else
    {
      v17 = v20;
    }
  }

  return v17;
}

uint64_t PKPeerPaymentShouldDisplayPaymentHint(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  ShouldDisplayResultForDetectedAmount = PKPeerPaymentShouldDisplayResultForDetectedAmount(v6, v5, [a3 count] > 1);

  return ShouldDisplayResultForDetectedAmount;
}

uint64_t PKPeerPaymentShouldDisplayResultForDetectedAmount(void *a1, void *a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412802;
    *v26 = v5;
    *&v26[8] = 2112;
    *&v26[10] = v6;
    *&v26[18] = 1024;
    *&v26[20] = a3;
    _os_log_debug_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEBUG, "Received call to PKPeerPaymentShouldDisplayResultForDetectedAmount() with amount: %@ currency: %@ hasMultipleRecipients: %d", &v25, 0x1Cu);
  }

  if ((PKPeerPaymentIsAvailable() & 1) == 0)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v25) = 0;
    v13 = "Rejecting result because peer payments are not available";
    goto LABEL_48;
  }

  if ((PKPeerPaymentMessagesExtensionIsVisible() & 1) == 0)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v25) = 0;
    v13 = "Rejecting result because the peer payment messages extension is not visible";
LABEL_48:
    _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, v13, &v25, 2u);
LABEL_13:

    v14 = 0;
    v15 = 0;
    if (PKUseMockSURFServer())
    {
      goto LABEL_43;
    }

LABEL_14:
    v16 = PKSharedCacheGetStringForKey(@"MinimumPeerPaymentSendAmount");
    v17 = PKSharedCacheGetStringForKey(@"MaximumPeerPaymentSendAmount");
    v18 = v17;
    if (v14)
    {
      if (v5 && v16 && v17)
      {
        v19 = [MEMORY[0x1E696AB90] decimalNumberWithString:v16];
        if ([v5 compare:v19] == -1)
        {
        }

        else
        {
          v20 = [MEMORY[0x1E696AB90] decimalNumberWithString:v18];
          v21 = [v5 compare:v20];

          if (v21 != 1)
          {
            v15 = 1;
LABEL_33:
            v22 = PKSharedCacheGetStringForKey(@"PeerPaymentSendCurrency");
            v23 = v22;
            if (v15)
            {
              if (v6 && v22 && ([v6 isEqualToString:v22] & 1) != 0)
              {
                v15 = 1;
              }

              else
              {
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  v25 = 138412546;
                  *v26 = v6;
                  *&v26[8] = 2112;
                  *&v26[10] = v23;
                  _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Rejecting result for unsupported currency. Detected Currency: %@, Supported Currency: %@", &v25, 0x16u);
                }

                v15 = 0;
              }
            }

            goto LABEL_42;
          }
        }
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412802;
        *v26 = v5;
        *&v26[8] = 2112;
        *&v26[10] = v16;
        *&v26[18] = 2112;
        *&v26[20] = v18;
        _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Rejecting result that is not in the supported amount range. Detected Amount: %@, Minimum: %@, Maximum: %@", &v25, 0x20u);
      }
    }

    v15 = 0;
    goto LABEL_33;
  }

  if (!PKUseMockSURFServer())
  {
    if (PKSharedCacheGetBoolForKey(@"CanSendPeerPayments"))
    {
      v14 = 1;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Rejecting result because PKSharedCacheCanSendPeerPaymentsKey is false", &v25, 2u);
      }

      v14 = 0;
    }

    goto LABEL_14;
  }

  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"1"];
  v9 = [v5 compare:v8];

  if (v9 == -1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      v12 = "Rejecting result because amount is below the mock server's minimum send amount";
      goto LABEL_50;
    }

LABEL_27:
    v15 = 0;
    v16 = v7;
LABEL_42:

    goto LABEL_43;
  }

  v10 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"500"];
  v11 = [v5 compare:v10];

  if (v11 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      v12 = "Rejecting result because amount is above the mock server's maximum send amount";
LABEL_50:
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, v12, &v25, 2u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v15 = 1;
LABEL_43:
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v25 = 67109890;
    *v26 = v15;
    *&v26[4] = 2112;
    *&v26[6] = v5;
    *&v26[14] = 2112;
    *&v26[16] = v6;
    *&v26[24] = 1024;
    *&v26[26] = a3;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_INFO, "Returning %d for PKPeerPaymentShouldDisplayResultForDetectedAmount() with amount: %@ currency: %@ hasMultipleRecipients: %d", &v25, 0x22u);
  }

  return v15;
}

uint64_t PKPeerPaymentIsAvailable()
{
  v4 = *MEMORY[0x1E69E9840];
  if (PKUseMockSURFServer())
  {
    BoolForKey = 1;
  }

  else
  {
    BoolForKey = PKSharedCacheGetBoolForKey(@"RegisteredForPeerPayments");
  }

  v1 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = BoolForKey;
    _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentIsAvailable() called, returning %d", v3, 8u);
  }

  return BoolForKey;
}

uint64_t PKPeerPaymentMessagesExtensionIsVisible()
{
  v5 = *MEMORY[0x1E69E9840];
  if (PKIsManagedAppleID())
  {
    v0 = 0;
  }

  else if (PKUseMockSURFServer())
  {
    v0 = 1;
  }

  else
  {
    if (PKStoreDemoModeEnabled())
    {
      HasMockPeerPaymentPass = PKDeviceHasMockPeerPaymentPass();
    }

    else
    {
      HasMockPeerPaymentPass = PKSharedCacheGetBoolForKey(@"PeerPaymentMessagesExtensionVisible");
    }

    v0 = HasMockPeerPaymentPass;
  }

  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesExtensionIsVisible() called, returning %d", v4, 8u);
  }

  return v0;
}

uint64_t PKPeerPaymentShouldAllowPaymentForRecipientAddress(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  IsAvailable = PKPeerPaymentIsAvailable();
  if (PKUseMockSURFServer())
  {
    BoolForKey = 1;
  }

  else
  {
    BoolForKey = PKSharedCacheGetBoolForKey(@"CanSendPeerPayments");
  }

  v4 = PKIDSNormalizedAddress(v1);
  v5 = [v4 length];

  if (v5 > 3)
  {
    v6 = IsAvailable & BoolForKey;
  }

  else
  {
    v6 = 0;
  }

  v7 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138413314;
    v10 = v1;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = IsAvailable;
    v15 = 1024;
    v16 = BoolForKey;
    v17 = 1024;
    v18 = v5 > 3;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentShouldAllowPaymentForRecipientAddress() called for address %@, returning %d.\navailable: %d, canSendPayments: %d, hasNormalizedAddress: %d", &v9, 0x24u);
  }

  return v6;
}

id PKPeerPaymentGetSendPaymentSensitiveURL(void *a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v8 setScheme:@"sms-private"];
  [v8 setPath:@"open"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:@"iMessage"];
  [v9 addObject:v10];

  if ([v5 length])
  {
    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"recipient" value:v5];
    [v9 addObject:v11];
  }

  v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"appBundleID" value:@"com.apple.PassbookUIService.PeerPaymentMessagesExtension"];
  [v9 addObject:v12];

  if (v6 && [v7 length])
  {
    v26 = @"Currency";
    v13 = [v6 stringValue];
    v24[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:2];
    v25 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v27[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

    v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:0 error:0];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
      if ([v18 length])
      {
        v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"appPayload" value:v18];
        [v9 addObject:v19];
      }
    }
  }

  v20 = [v9 copy];
  [v8 setQueryItems:v20];

  v21 = [v8 URL];

  return v21;
}

id PKPeerPaymentGetTopUpSensitiveURL()
{
  if (+[PKWalletVisibility isWalletVisible])
  {
    v0 = @"shoebox://";
  }

  else
  {
    v0 = @"prefs:root=PASSBOOK&path=";
  }

  v1 = [(__CFString *)v0 stringByAppendingString:@"peerPaymentTopUp"];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];

  return v2;
}

id PKPeerPaymentGetTermsAcceptanceSensitiveURL()
{
  if (+[PKWalletVisibility isWalletVisible])
  {
    v0 = @"shoebox://";
  }

  else
  {
    v0 = @"prefs:root=PASSBOOK&path=";
  }

  v1 = [(__CFString *)v0 stringByAppendingString:@"peerPaymentTermsAcceptance"];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];

  return v2;
}

id PKPeerPaymentGetVerifyIdentitySensitiveURL()
{
  if (+[PKWalletVisibility isWalletVisible])
  {
    v0 = @"shoebox://";
  }

  else
  {
    v0 = @"prefs:root=PASSBOOK&path=";
  }

  v1 = [(__CFString *)v0 stringByAppendingString:@"peerPaymentVerifyIdentity"];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];

  return v2;
}

id PKPeerPaymentGetSetupSensitiveURLForPreferencesWithCurrencyAmount(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK&path="];
  [v7 appendString:@"peerPaymentSetup"];
  [v7 appendString:@"&"];
  if (v5)
  {
    [v7 appendString:@"setupAmount"];
    [v7 appendString:@"="];
    v8 = [v5 amount];
    v9 = [v8 stringValue];

    v10 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];
    [v7 appendString:v11];

    [v7 appendString:@"&"];
    [v7 appendString:@"setupCurreny"];
    [v7 appendString:@"="];
    v12 = [v5 currency];
    v13 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v14 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v13];
    [v7 appendString:v14];

    [v7 appendString:@"&"];
  }

  [v7 appendString:@"setupFlowState"];
  [v7 appendString:@"="];
  v15 = PKPeerPaymentRegistrationFlowStateToString(a2);
  v16 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v17 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v16];
  [v7 appendString:v17];

  if (v6)
  {
    [v7 appendString:@"&"];
    [v7 appendString:@"setupSenderAddress"];
    [v7 appendString:@"="];
    v18 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v19 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v18];
    [v7 appendString:v19];
  }

  v20 = MEMORY[0x1E695DFF8];
  v21 = [v7 copy];
  v22 = [v20 URLWithString:v21];

  return v22;
}

id PKPeerPaymentGetSetupSensitiveURLWithConfiguration(void *a1)
{
  v1 = a1;
  v2 = [v1 currencyAmount];
  v3 = [v1 senderAddress];
  v4 = [v1 registrationFlowState];
  if (+[PKWalletVisibility isWalletVisible])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v5 setScheme:@"shoebox"];
    [v5 setHost:@"peerPaymentSetup"];
    v6 = [MEMORY[0x1E695DF70] array];
    if (v2)
    {
      v7 = MEMORY[0x1E696AF60];
      v8 = [v2 amount];
      v9 = [v8 stringValue];
      v10 = [v7 queryItemWithName:@"setupAmount" value:v9];
      [v6 addObject:v10];

      v11 = MEMORY[0x1E696AF60];
      v12 = [v2 currency];
      v13 = [v11 queryItemWithName:@"setupCurreny" value:v12];
      [v6 addObject:v13];
    }

    v14 = MEMORY[0x1E696AF60];
    v15 = PKPeerPaymentRegistrationFlowStateToString(v4);
    v16 = [v14 queryItemWithName:@"setupFlowState" value:v15];
    [v6 addObject:v16];

    if (v3)
    {
      v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"setupSenderAddress" value:v3];
      [v6 addObject:v17];
    }

    v18 = [v1 paymentMode] - 1;
    if (v18 > 2)
    {
      v19 = @"unknown";
    }

    else
    {
      v19 = off_1E79C4408[v18];
    }

    v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"setupPaymentMode" value:v19];
    [v6 addObject:v21];

    [v5 setQueryItems:v6];
    v20 = [v5 URL];
  }

  else
  {
    v20 = PKPeerPaymentGetSetupSensitiveURLForPreferencesWithCurrencyAmount(v2, v4, v3);
  }

  return v20;
}

void PKPeerPaymentSetMessagesExtensionIsVisible(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentSetMessagesExtensionIsVisible() called with value %d", v4, 8u);
  }

  PKSharedCacheSetBoolForKey(a1, @"PeerPaymentMessagesExtensionVisible");
  v3 = dispatch_time(0, 1000000000);
  dispatch_after(v3, MEMORY[0x1E69E96A0], &__block_literal_global_2);
}

void __PKPeerPaymentSetMessagesExtensionIsVisible_block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  IsVisible = PKPeerPaymentMessagesExtensionIsVisible();
  v1 = [MEMORY[0x1E696ABB0] defaultCenter];
  v4 = @"visible";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:IsVisible];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v1 postNotificationName:@"PKPeerPaymentMessagesExtensionVisibilityChangedNotification" object:0 userInfo:v3];
}

void PKAppleCashReportMessagesStickerExtensionVisibilityChanged()
{
  v0 = dispatch_time(0, 1000000000);
  v1 = MEMORY[0x1E69E96A0];

  dispatch_after(v0, v1, &__block_literal_global_234);
}

void __PKAppleCashReportMessagesStickerExtensionVisibilityChanged_block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  IsVisible = PKAppleCashStickerPackIsVisible();
  v1 = [MEMORY[0x1E696ABB0] defaultCenter];
  v4 = @"visible";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:IsVisible];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v1 postNotificationName:@"PKAppleCashMessagesStickerExtensionVisibilityChangedNotification" object:0 userInfo:v3];
}

uint64_t PKAppleCashStickerPackIsVisible()
{
  result = PKAppleCashStickerPackIsEligibleForDownload();
  if (result)
  {
    v1 = +[PKMobileAssetManager sharedInstance];
    v2 = [v1 hasCashStickers];

    return v2;
  }

  return result;
}

uint64_t PKAppleCashStickerPackIsEligibleForDownload()
{
  if (PKIsManagedAppleID())
  {
    return 0;
  }

  if (PKUseMockSURFServer())
  {
    return 1;
  }

  if (PKStoreDemoModeEnabled())
  {

    return PKDeviceHasMockPeerPaymentPass();
  }

  else
  {

    return PKSharedCacheGetBoolForKey(@"PeerPaymentIsSetup");
  }
}

void PKPeerPaymentProcessMessageWithDataURLAndSessionIdentifier(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"sessionIdentifier";
  v8[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PKPeerPaymentProcessMessageWithDataURLAndProperties(v5, v6);
}

void PKPeerPaymentProcessMessageWithDataURLAndProperties(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (qword_1ED6D16B8 == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&qword_1ED6D16B8, &__block_literal_global_237);
    if (v3)
    {
LABEL_3:
      v5 = PKPeerPaymentMessageDataWithDataURL(v3);
      if (!v5)
      {
        v6 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, &v6->super.super, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentProcessMessageWithDataURLAndProperties() called with invalid data url.", buf, 2u);
        }

        goto LABEL_19;
      }

      v6 = [[PKProtobufPeerPaymentMessage alloc] initWithData:v5];
      v7 = PKLogFacilityTypeGetObject(0xCuLL);
      v8 = v7;
      if (!v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentProcessMessageWithDataURLAndProperties() called with invalid message.", buf, 2u);
        }

        v6 = 0;
        goto LABEL_19;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v20 = PKPeerPaymentMessageDictionaryRepresentationFromProtobuf(v6, 2);
        *buf = 138412546;
        *&buf[4] = v20;
        v29 = 2112;
        v30 = v4;
        _os_log_debug_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEBUG, "PKPeerPaymentProcessMessageWithDataURLAndProperties() called with message %@ and properties %@.", buf, 0x16u);
      }

      v9 = [(PKProtobufPeerPaymentMessage *)v6 type];
      if (v9 == 3)
      {
        v14 = [(PKProtobufPeerPaymentMessage *)v6 recurringPaymentIdentifier];
        v13 = objc_alloc_init(PKPeerPaymentRecurringPaymentMemo);
        *buf = 0;
        v15 = [(PKProtobufPeerPaymentMessage *)v6 recurringPaymentColor];
        PKSemanticColorFromString(v15, buf);

        [(PKPeerPaymentRecurringPaymentMemo *)v13 setColor:*buf];
        v16 = [(PKProtobufPeerPaymentMessage *)v6 recurringPaymentEmoji];
        [(PKPeerPaymentRecurringPaymentMemo *)v13 setEmoji:v16];

        v17 = [(PKProtobufPeerPaymentMessage *)v6 memo];
        [(PKPeerPaymentRecurringPaymentMemo *)v13 setText:v17];

        v18 = _MergedGlobals_184;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __PKPeerPaymentProcessMessageWithDataURLAndProperties_block_invoke_2;
        v21[3] = &unk_1E79C43B8;
        v22 = v14;
        v19 = v14;
        [v18 updateRecurringPaymentMemo:v13 identifier:v19 completion:v21];
      }

      else
      {
        if (v9 != 2)
        {
          if (v9 == 1)
          {
            [_MergedGlobals_184 receivedPeerPaymentMessageData:v5];
          }

          goto LABEL_19;
        }

        v10 = [(PKProtobufPeerPaymentMessage *)v6 requestToken];
        v11 = _MergedGlobals_184;
        v27 = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __PKPeerPaymentProcessMessageWithDataURLAndProperties_block_invoke_240;
        v23[3] = &unk_1E79C4390;
        v24 = v10;
        v6 = v6;
        v25 = v6;
        v26 = v4;
        v13 = v10;
        [v11 peerPaymentPendingRequestsForRequestTokens:v12 completion:v23];
      }

LABEL_19:
      goto LABEL_23;
    }
  }

  v5 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentProcessMessageWithDataURLAndProperties() called with nil data url.", buf, 2u);
  }

LABEL_23:
}

uint64_t __PKPeerPaymentProcessMessageWithDataURLAndProperties_block_invoke()
{
  v0 = objc_alloc_init(PKPeerPaymentService);
  v1 = _MergedGlobals_184;
  _MergedGlobals_184 = v0;

  v2 = _MergedGlobals_184;

  return [v2 suspendAccountChangedNotifications];
}

void __PKPeerPaymentProcessMessageWithDataURLAndProperties_block_invoke_240(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  if (!v3)
  {
    v3 = objc_alloc_init(PKPeerPaymentPendingRequest);
    [(PKPeerPaymentPendingRequest *)v3 setRequestToken:*(a1 + 32)];
  }

  v4 = [*(a1 + 40) senderAddress];
  v5 = PKBestGuessNormalizedEmailOrPhoneNumber(v4);

  v6 = [*(a1 + 40) recipientAddress];
  v7 = PKBestGuessNormalizedEmailOrPhoneNumber(v6);

  if ([*(a1 + 40) hasDecimalAmount])
  {
    v8 = [*(a1 + 40) decimalAmount];
    v9 = PKProtoSupportDecimalNumberFromProtobuf(v8);
  }

  else
  {
    v9 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:objc_msgSend(*(a1 + 40) exponent:"amount") isNegative:{4294967294, 0}];
  }

  v10 = [*(a1 + 40) currency];
  v11 = PKCurrencyAmountCreate(v9, v10, 0);

  v12 = [*(a1 + 40) memo];
  v13 = [*(a1 + 48) objectForKey:@"sessionIdentifier"];
  v14 = [v13 UUIDString];
  [(PKPeerPaymentPendingRequest *)v3 setRequesterAddress:v5];
  [(PKPeerPaymentPendingRequest *)v3 setRequesteeAddress:v7];
  [(PKPeerPaymentPendingRequest *)v3 setCurrencyAmount:v11];
  [(PKPeerPaymentPendingRequest *)v3 setMemo:v12];
  [(PKPeerPaymentPendingRequest *)v3 setSessionID:v14];
  v15 = [MEMORY[0x1E695DF00] date];
  [(PKPeerPaymentPendingRequest *)v3 setRequestDate:v15];

  [(PKPeerPaymentPendingRequest *)v3 setStatus:@"unknown"];
  if ([*(a1 + 40) messagesContext] == 2)
  {
    v16 = [*(a1 + 48) PKStringForKey:@"messageGUID"];
    [(PKPeerPaymentPendingRequest *)v3 setMessageGUID:v16];
    [(PKPeerPaymentPendingRequest *)v3 setContext:2];
  }

  else
  {
    [(PKPeerPaymentPendingRequest *)v3 setContext:1];
  }

  v17 = _MergedGlobals_184;
  v19[0] = v3;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v17 insertOrUpdatePeerPaymentPendingRequests:v18 shouldScheduleNotifications:1];
}

void __PKPeerPaymentProcessMessageWithDataURLAndProperties_block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Memo updated for recurring payment %@", &v4, 0xCu);
  }
}

id PKPeerPaymentGetAppleCashFamilySettingsSensitiveURLForAltDSID(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v2 setScheme:@"settings-navigation"];
  [v2 setHost:@"com.apple.Settings.Family"];
  if ([v1 length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"familyPath=/members/%@/appleCash", v1];
    [v2 setQuery:v3];
  }

  v4 = [v2 URL];

  return v4;
}

uint64_t PKSupportsManateeForAppleCashForIDS()
{
  v6 = *MEMORY[0x1E69E9840];
  BoolForKey = PKSharedCacheGetBoolForKey(@"PeerPaymentSupportsManatee");
  v1 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = @"NO";
    if (BoolForKey)
    {
      v2 = @"YES";
    }

    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "[PKPeerPaymentUtilities supportsManateeForAppleCash] called with result %@", &v4, 0xCu);
  }

  return BoolForKey;
}

uint64_t PKSupportsRegionForAppleCashForIDS()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = PKCurrentRegion();
  v1 = +[PKPaymentWebService sharedService];
  v2 = [v1 context];
  v3 = [v2 configuration];

  v4 = [v3 peerPaymentEnabledForRegion:v0];
  v5 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v8 = 138412546;
    v9 = v0;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "[PKPeerPaymentUtilities supportsRegionForAppleCash] called with region %@. Enabled: %@", &v8, 0x16u);
  }

  return v4;
}

void PKPeerPaymentSetIsSetup(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  BoolForKey = PKSharedCacheGetBoolForKey(@"PeerPaymentIsSetup");
  if (BoolForKey != a1)
  {
    v3 = BoolForKey;
    v4 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = v3;
      v8 = 2048;
      v9 = a1;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentUtilities: PKPeerPaymentSetIsSetup %ld -> %ld", &v6, 0x16u);
    }

    PKSharedCacheSetBoolForKey(a1, @"PeerPaymentIsSetup");
    v5 = +[PKMobileAssetManager sharedInstance];
    [v5 updateCashStickersIfNecessary];
  }
}

uint64_t PKPeerPaymentCanPerformAccountServicePayments(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 state] == 1 && objc_msgSend(v3, "stage") == 3;
  v6 = [v4 devicePrimaryPaymentApplication];

  v7 = [v3 termsAcceptanceRequired] ^ 1;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8 & v7;
}

uint64_t PKPeerPaymentNeedsResolutionToPerformAccountServicePayments(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 state] == 1 && objc_msgSend(v3, "stage") == 2;
  v6 = [v4 devicePrimaryPaymentApplication];

  v7 = [v3 termsAcceptanceRequired] ^ 1;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8 & v7;
}

id PKPeerPaymentDisplayNameWithNamesAndPreferences(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = [v5 shareLastName];
    v9 = v6;
    if (v7 && v8)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v7];
      v11 = [v9 stringByAppendingString:v10];

      v9 = v11;
    }
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

id PKPeerPaymentEncryptDataUsingPrivacySchemeWithCert(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  cf = 0;
  v5 = v3;
  if ([v5 destination] != 1)
  {
    v14 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PKPeerPaymentEncryptionCertificateDestinationToString([v5 destination]);
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "NearbyPeerPayment: could not validate trust for cert with destination: %@", buf, 0xCu);
    }

    v13 = 0;
    v12 = v5;
    goto LABEL_10;
  }

  v6 = PKNearbyPeerPaymentEncryptionOIDValue();
  if (v6)
  {
    v7 = v6;
    [v6 length];
  }

  v8 = [v5 encryptionCertificates];
  v9 = PKCreateAndValidateTrustWithCertsUsingMarkerOIDs(v8, &cf);

  if (v9)
  {
    v10 = [v5 encryptionCertificates];
    v11 = [v10 firstObject];
    v12 = PKPublicKeyFromCertificate(v11);

    if (v12)
    {
      v13 = PKEncryptDataUsingPrivacyScheme(v4, [v5 encryptionScheme], v12);
    }

    else
    {
      v13 = 0;
    }

LABEL_10:

    goto LABEL_12;
  }

  v13 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t PKPeerPaymentIsEligibleForDeviceTapPayment(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && ([v4 devicePrimaryPaymentApplication], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "state"), v6, v7 == 7))
  {
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "NearbyPeerPayment: pass is in lost mode", &v25, 2u);
    }

    v9 = 0;
  }

  else
  {
    if ([v3 supportsDeviceTap] && objc_msgSend(v3, "state") == 1)
    {
      v10 = [v3 paymentModeIdentifiers];
      v11 = v10 != 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 secureElementPass];
    v13 = [v12 devicePrimaryPaymentApplication];
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = [v3 stage] != 0;
    }

    v15 = +[PKAppleAccountManager sharedInstance];
    v16 = [v15 appleAccountInformation];
    v17 = [v16 aidaAccountAvailable];

    if (v17)
    {
      v18 = +[PKPassLibrary sharedInstance];
      v19 = [v18 passbookHasBeenDeleted] ^ 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = @"NO";
      if (v11)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      if (v14)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v25 = 138412802;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      if (v19)
      {
        v21 = @"YES";
      }

      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "NearbyPeerPayment: accountSupportsNearbyPeerPayment: %@; isGhostPass: %@; clientIsEligible: %@", &v25, 0x20u);
    }

    v9 = v19 & (v11 | v14);
  }

  return v9;
}

void PKUpdatePeerPaymentBalanceUsagePreference(void *a1, int a2)
{
  v5 = a1;
  v3 = [v5 settings];
  if (((v3 >> 11) & 1) == a2)
  {
    v4 = 2048;
    if (a2)
    {
      v4 = 0;
    }

    [v5 setSettings:v3 & 0xFFFFFFFFFFFFF7FFLL | v4];
  }
}

uint64_t PKPeerPaymentAccountIsFDICInsured(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stage];
    if (v3 <= 3)
    {
      v4 = 8u >> (v3 & 0xF);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL PKPeerPaymentAccountCanPerformManualIdentityVerification(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    v5 = a2;
    v6 = [v3 state] == 1 && objc_msgSend(v3, "stage") == 2;
    v7 = [v3 role];
    v8 = [v5 activationState];

    v9 = v7 != 1 && v6;
    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v4 = v9;
    }
  }

  return v4;
}

BOOL PKPeerPaymentSignatureIsValid(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 dataUsingEncoding:4];
    v7 = v6;
    if (!v6)
    {
      v8 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "PKPeerPaymentSignatureIsValid: Failed to convert transaction string to data", &v18, 2u);
      }

      v13 = 0;
      goto LABEL_27;
    }

    v8 = [v6 SHA256Hash];
    if (!v8)
    {
      v9 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "PKPeerPaymentSignatureIsValid: Failed to compute SHA256 hash", &v18, 2u);
      }

      v13 = 0;
      goto LABEL_26;
    }

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:0];
    if (v9)
    {
      ApplePinned = SecPolicyCreateApplePinned();
      if (ApplePinned)
      {
        v11 = ApplePinned;
        v12 = SecCMSVerify();
        CFRelease(v11);
        v13 = v12 == 0;
        v14 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          if (v12)
          {
            v15 = @"failed";
          }

          else
          {
            v15 = @"succeeded";
          }

          v18 = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = SecCopyErrorMessageString(v12, 0);
          _os_log_debug_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEBUG, "PKPeerPaymentSignatureIsValid: Result: %@. Status: %@", &v18, 0x16u);
        }

        goto LABEL_25;
      }

      v14 = PKLogFacilityTypeGetObject(0xCuLL);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        v13 = 0;
LABEL_25:

LABEL_26:
LABEL_27:

        goto LABEL_28;
      }

      LOWORD(v18) = 0;
      v16 = "PKPeerPaymentSignatureIsValid: Failed to create security policy";
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(0xCuLL);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      LOWORD(v18) = 0;
      v16 = "PKPeerPaymentSignatureIsValid: Failed to decode base64 signature";
    }

    _os_log_error_impl(&dword_1AD337000, v14, OS_LOG_TYPE_ERROR, v16, &v18, 2u);
    goto LABEL_24;
  }

  v7 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "PKPeerPaymentSignatureIsValid: Invalid input - transaction or signature is nil", &v18, 2u);
  }

  v13 = 0;
LABEL_28:

  return v13;
}

uint64_t PKProtobufInstantFundsOutFeeSummaryItemReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id PKPaymentWebServiceProxyObjectInterface()
{
  if (qword_1ED6D16C8 != -1)
  {
    dispatch_once(&qword_1ED6D16C8, &__block_literal_global_3);
  }

  v1 = _MergedGlobals_185;

  return v1;
}

void __PKPaymentWebServiceProxyObjectInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F23C2A90];
  v1 = _MergedGlobals_185;
  _MergedGlobals_185 = v0;

  v2 = _MergedGlobals_185;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_passesOfType_completion_ argumentIndex:0 ofReply:1];

  v6 = _MergedGlobals_185;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_cachedFeatureApplicationsForProvisioningWithCompletion_ argumentIndex:0 ofReply:1];

  v10 = _MergedGlobals_185;
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_featureApplicationsForProvisioningWithCompletion_ argumentIndex:0 ofReply:1];

  v14 = _MergedGlobals_185;
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v14 setClasses:v17 forSelector:sel_updatedAccountsForProvisioningWithCompletion_ argumentIndex:0 ofReply:1];

  v18 = _MergedGlobals_185;
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v18 setClasses:v21 forSelector:sel_updatedAccountsForProvisioningWithCompletion_ argumentIndex:1 ofReply:1];

  v22 = _MergedGlobals_185;
  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  [v22 setClasses:v25 forSelector:sel_provisionHomeKeyPassForSerialNumbers_completionHandler_ argumentIndex:0 ofReply:1];

  v26 = _MergedGlobals_185;
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v26 setClasses:v29 forSelector:sel_availableHomeKeyPassesWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v30 = _MergedGlobals_185;
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  [v30 setClasses:v33 forSelector:sel_familyMembersWithCompletion_ argumentIndex:0 ofReply:1];

  v34 = _MergedGlobals_185;
  v35 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v34 setClasses:v35 forSelector:sel_triggerCloudStoreZoneCreationForAccount_withCompletion_ argumentIndex:0 ofReply:0];

  [_MergedGlobals_185 setClass:objc_opt_class() forSelector:sel_currentSecureElementSnapshot_ argumentIndex:0 ofReply:1];
  v36 = _MergedGlobals_185;
  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = [v37 setWithObjects:{v38, v39, v40, v41, objc_opt_class(), 0}];
  [v36 setClasses:v42 forSelector:sel_reserveStorageForAppletTypes_metadata_completion_ argumentIndex:1 ofReply:0];

  v43 = _MergedGlobals_185;
  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
  [v43 setClasses:v46 forSelector:sel_reserveStorageForAppletTypes_metadata_completion_ argumentIndex:0 ofReply:1];

  v47 = _MergedGlobals_185;
  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [v47 setClasses:v50 forSelector:sel_deleteReservation_completion_ argumentIndex:0 ofReply:0];

  v51 = objc_alloc(MEMORY[0x1E695DFD8]);
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v78 = [v51 initWithObjects:{v52, v53, v54, v55, v56, v57, v58, v59, objc_opt_class(), 0}];
  [_MergedGlobals_185 setClasses:v78 forSelector:sel_addPendingProvisionings_completion_ argumentIndex:0 ofReply:0];
  v60 = _MergedGlobals_185;
  v61 = MEMORY[0x1E695DFD8];
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = [v61 setWithObjects:{v62, v63, v64, objc_opt_class(), 0}];
  [v60 setClasses:v65 forSelector:sel_generateAuxiliaryCapabilitiesForRequirements_completion_ argumentIndex:0 ofReply:0];

  v66 = _MergedGlobals_185;
  v67 = MEMORY[0x1E695DFD8];
  v68 = objc_opt_class();
  v69 = objc_opt_class();
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = [v67 setWithObjects:{v68, v69, v70, v71, objc_opt_class(), 0}];
  [v66 setClasses:v72 forSelector:sel_generateAuxiliaryCapabilitiesForRequirements_completion_ argumentIndex:0 ofReply:1];

  v73 = _MergedGlobals_185;
  v74 = MEMORY[0x1E695DFD8];
  v75 = objc_opt_class();
  v76 = objc_opt_class();
  v77 = [v74 setWithObjects:{v75, v76, objc_opt_class(), 0}];
  [v73 setClasses:v77 forSelector:sel_activeFPANCardsWithOptions_completion_ argumentIndex:0 ofReply:1];
}

void sub_1AD5296A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52AAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52ABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52B6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52B838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52BADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52BD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52BFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52C9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52CDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52D5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52D828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52D978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52EF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AD52F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52F7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52FAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD52FBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD532F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AD533214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

__CFString *PKPaymentSetupMoreInfoItemTypeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79C4FD8[a1];
  }
}

uint64_t PKPaymentSetupMoreInfoItemTypeFromDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ExpressEducation"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ExpressEducationV2"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKPaymentSetupMoreInfoItemDictionaryForExpressUpgradeMarket(void *a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v9];
    v13 = PKForceDefaultEmbeddedMarketStrings();
    if (v12 && (v13 & 1) == 0)
    {
      v48 = v11;
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = PKLocalizedStringInMarketBundle(&cfstr_ExpressTransit.isa, v12, 0);
      [v14 setObject:v15 forKeyedSubscript:@"title"];

      v16 = PKLocalizedStringInMarketBundle(&cfstr_ExpressTransit_0.isa, v12, 0);
      [v14 setObject:v16 forKeyedSubscript:@"linkText"];

      v17 = PKLocalizedStringInMarketBundle(&cfstr_ExpressTransit_1.isa, v12, 0);
      [v14 setObject:v17 forKeyedSubscript:@"linkURL"];

      [v14 setObject:@"ExpressEducationV2" forKeyedSubscript:@"type"];
      v18 = expressTransitUpgradeBodyKey(a2, 1, a3);
      v19 = PKLocalizedStringInMarketBundle(v18, v12, 0);
      v20 = v19;
      if ((a3 & 1) == 0 && (!v19 || [v19 isEqualToString:v18]))
      {
        v21 = expressTransitUpgradeBodyKey(a2, 1, 1);

        v22 = PKLocalizedStringInMarketBundle(v21, v12, 0);

        v20 = v22;
        v18 = v21;
      }

      [v14 setObject:v20 forKeyedSubscript:@"body"];

      v23 = PKLocalizedStringInMarketBundle(&cfstr_ExpressTransit_2.isa, v12, 0);
      if (([v23 isEqualToString:@"EXPRESS_TRANSIT_EDUCATION_NEXT_ACTION"] & 1) == 0)
      {
        [v14 setObject:v23 forKeyedSubscript:@"nextAction"];
      }

      v24 = PKLocalizedStringInMarketBundle(&cfstr_ExpressTransit_3.isa, v12, 0);
      if (([v24 isEqualToString:@"EXPRESS_TRANSIT_EDUCATION_DONE_ACTION"] & 1) == 0)
      {
        [v14 setObject:v24 forKeyedSubscript:@"doneAction"];
      }

      v25 = PKLocalizedStringInMarketBundle(&cfstr_ExpressTransit_4.isa, v12, 0);
      if (([v25 isEqualToString:@"EXPRESS_TRANSIT_EDUCATION_ALT_ACTION"] & 1) == 0)
      {
        [v14 setObject:v25 forKeyedSubscript:@"altAction"];
      }

      v26 = [MEMORY[0x1E696AD98] numberWithBool:a3];
      [v14 setObject:v26 forKeyedSubscript:@"hideAltAction"];

      if (v48)
      {
        [v14 setObject:v48 forKeyedSubscript:@"reportingMetadata"];
      }

      v27 = [v14 copy];

      v11 = v48;
      goto LABEL_41;
    }

    if (!v13)
    {
LABEL_21:
      v28 = PKLogFacilityTypeGetObject(0xDuLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "PKPaymentSetupMoreInfoItem: Falling back to embedded Express Education screen.";
        v30 = buf;
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if ((PKForceDefaultEmbeddedMarketStrings() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v28 = PKLogFacilityTypeGetObject(0xDuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 0;
    v29 = "PKPaymentSetupMoreInfoItem: Internal Setting forcing default embedded strings for the Express Education screen.";
    v30 = &v50;
LABEL_23:
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, v29, v30, 2u);
  }

LABEL_24:

  if (v10 && [v10 isAccessPass])
  {
    v31 = v10;
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = PKLocalizedCredentialString(&cfstr_AccessExpressE.isa, 0);
    [v27 setObject:v32 forKeyedSubscript:@"title"];

    [v27 setObject:@"ExpressEducationV2" forKeyedSubscript:@"type"];
    v33 = v31;
    if ([v33 isCarKeyPass])
    {
      if (([v33 supportedRadioTechnologies] & 2) != 0)
      {
        v36 = @"EXPRESS_CAR_KEY_ADDED_FACEID_UWB_PHONE_BODY";
      }

      else
      {
        IsAvailable = PKPearlIsAvailable();
        v35 = @"EXPRESS_CAR_KEY_ADDED_TOUCHID_PHONE_ONLY_BODY";
        if (IsAvailable)
        {
          v35 = @"EXPRESS_CAR_KEY_ADDED_FACEID_PHONE_ONLY_BODY";
        }

        v36 = v35;
      }

      v44 = PKLocalizedCredentialString(&v36->isa, 0);
    }

    else
    {
      if (PKPearlIsAvailable())
      {
        v43 = @"EXPRESS_ACCESS_FOOTER_FACEID";
      }

      else
      {
        v43 = @"EXPRESS_ACCESS_FOOTER_TOUCHID";
      }

      v44 = PKLocalizedPaymentString(&v43->isa, 0);
    }

    [v27 setObject:v44 forKeyedSubscript:@"body"];
    v45 = PKLocalizedCredentialString(&cfstr_AccessExpressT.isa, 0);
    [v27 setObject:v45 forKeyedSubscript:@"altAction"];

    v46 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [v27 setObject:v46 forKeyedSubscript:@"hideAltAction"];
  }

  else
  {
    v37 = v11;
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = PKLocalizedTransitString(&cfstr_ExpressTransit.isa, 0);
    [v27 setObject:v38 forKeyedSubscript:@"title"];

    v39 = PKLocalizedTransitString(&cfstr_ExpressTransit_0.isa, 0);
    [v27 setObject:v39 forKeyedSubscript:@"linkText"];

    [v27 setObject:@"https://support.apple.com/HT207958" forKeyedSubscript:@"linkURL"];
    [v27 setObject:@"ExpressEducationV2" forKeyedSubscript:@"type"];
    v40 = expressTransitUpgradeBodyKey(a2, 0, a3);
    v41 = PKLocalizedTransitString(v40, 0);
    [v27 setObject:v41 forKeyedSubscript:@"body"];

    v42 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [v27 setObject:v42 forKeyedSubscript:@"hideAltAction"];

    if (v37)
    {
      [v27 setObject:v37 forKeyedSubscript:@"reportingMetadata"];
    }
  }

LABEL_41:

  return v27;
}

__CFString *expressTransitUpgradeBodyKey(int a1, int a2, int a3)
{
  v6 = @"EXPRESS_TRANSIT_EDUCATION_BODY_DISABLEABLE";
  if (a3)
  {
    v6 = @"EXPRESS_TRANSIT_EDUCATION_BODY";
  }

  v7 = v6;
  if (a1)
  {
    v8 = @"EXPRESS_TRANSIT_EDUCATION_BODY_WATCH_DISABLEABLE";
    if (a3)
    {
      v8 = @"EXPRESS_TRANSIT_EDUCATION_BODY_WATCH";
    }

LABEL_20:
    v14 = v8;

    v7 = v14;
    goto LABEL_29;
  }

  IsAvailable = PKNearFieldLowPowerSupportIsAvailable();
  v10 = PKPearlIsAvailable();
  if (IsAvailable)
  {
    v8 = @"EXPRESS_TRANSIT_EDUCATION_BODY_LPEM_TOUCHID_DISABLEABLE";
    if (a3)
    {
      v8 = @"EXPRESS_TRANSIT_EDUCATION_BODY_LPEM_TOUCHID";
    }

    v11 = @"EXPRESS_TRANSIT_EDUCATION_BODY_LPEM_D79_DISABLEABLE";
    if (a3)
    {
      v11 = @"EXPRESS_TRANSIT_EDUCATION_BODY_LPEM_D79";
    }

    v12 = @"EXPRESS_TRANSIT_EDUCATION_BODY_LPEM_FACEID_DISABLEABLE";
    if (a2)
    {
      v8 = v11;
    }

    v13 = @"EXPRESS_TRANSIT_EDUCATION_BODY_D3x_DISABLEABLE";
    if (a3)
    {
      v12 = @"EXPRESS_TRANSIT_EDUCATION_BODY_LPEM_FACEID";
      v13 = @"EXPRESS_TRANSIT_EDUCATION_BODY_D3x";
    }

    if (!a2)
    {
      v13 = v12;
    }

    if (v10)
    {
      v8 = v13;
    }

    goto LABEL_20;
  }

  v15 = @"EXPRESS_TRANSIT_EDUCATION_BODY_FACEID_DISABLEABLE";
  if (a3)
  {
    v15 = @"EXPRESS_TRANSIT_EDUCATION_BODY_FACEID";
    v16 = @"EXPRESS_TRANSIT_EDUCATION_BODY_PEARL";
  }

  else
  {
    v16 = @"EXPRESS_TRANSIT_EDUCATION_BODY_PEARL_DISABLEABLE";
  }

  if (a2)
  {
    v15 = v16;
  }

  if (v10)
  {
    v14 = v15;
  }

  else
  {
    v14 = v7;
  }

LABEL_29:
  v17 = v14;

  return v14;
}

id PKPaymentSetupMoreInfoItemDictionaryForHomeExpress(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = PKLocalizedHomeKeyString(&cfstr_MoreInfoTitle.isa, 0);
  [v4 setObject:v5 forKeyedSubscript:@"title"];

  if (a2)
  {
    v6 = @"MORE_INFO_BODY_WATCH";
  }

  else
  {
    IsAvailable = PKPearlIsAvailable();
    v8 = @"MORE_INFO_BODY_IPHONE_TOUCHID";
    if (IsAvailable)
    {
      v8 = @"MORE_INFO_BODY_IPHONE_FACEID";
    }

    v6 = v8;
  }

  v9 = PKLocalizedHomeKeyString(&v6->isa, &stru_1F2281668.isa, v3);
  [v4 setObject:v9 forKeyedSubscript:@"body"];

  [v4 setObject:@"ExpressEducationV2" forKeyedSubscript:@"type"];
  v10 = PKLocalizedHomeKeyString(&cfstr_MoreInfoDone.isa, 0);
  [v4 setObject:v10 forKeyedSubscript:@"doneAction"];

  return v4;
}

uint64_t PKPaymentDeviceMetadataFieldsFromStrings(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = a1;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v35)
  {
    v36 = 0;
    goto LABEL_39;
  }

  v36 = 0;
  v34 = *v38;
  v1 = @"uniqueDeviceIdentifier";
  v2 = @"uniqueChipIdentifier";
  do
  {
    v3 = 0;
    do
    {
      v4 = v1;
      v5 = v2;
      if (*v38 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v37 + 1) + 8 * v3);
      if (v6 == @"secureElementIdentifier")
      {
        goto LABEL_9;
      }

      v7 = v6;
      if (!v6)
      {
        goto LABEL_11;
      }

      v8 = [(__CFString *)v6 isEqualToString:@"secureElementIdentifier"];

      if (v8)
      {
LABEL_9:
        v9 = v36 | 1;
        goto LABEL_10;
      }

      v10 = v7;
      v1 = v4;
      if (v10 != v4)
      {
        v11 = v10;
        v12 = [(__CFString *)v10 isEqualToString:v4];

        v1 = v4;
        if (!v12)
        {
          v13 = v11;
          v2 = v5;
          if (v13 == v5 || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:v5], v14, v2 = v5, v15))
          {
            v36 |= 4uLL;
            goto LABEL_12;
          }

          v16 = v14;
          if (v16 == @"serialNumber" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"serialNumber"], v17, v18))
          {
            v9 = v36 | 8;
            goto LABEL_10;
          }

          v19 = v17;
          if (v19 == @"deviceName" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"deviceName"], v20, v21))
          {
            v9 = v36 | 0x10;
            goto LABEL_10;
          }

          v22 = v20;
          if (v22 == @"phoneNumber" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"phoneNumber"], v23, v24))
          {
            v9 = v36 | 0x20;
            goto LABEL_10;
          }

          v25 = v23;
          if (v25 == @"signedPhoneNumber" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"signedPhoneNumber"], v26, v27))
          {
            v9 = v36 | 0x40;
            goto LABEL_10;
          }

          v28 = v26;
          if (v28 == @"location" || (v29 = v28, v30 = [(__CFString *)v28 isEqualToString:@"location"], v29, v30))
          {
            v9 = v36 | 0x80;
LABEL_10:
            v36 = v9;
          }

LABEL_11:
          v2 = v5;
LABEL_12:
          v1 = v4;
          goto LABEL_13;
        }
      }

      v36 |= 2uLL;
      v2 = v5;
LABEL_13:
      ++v3;
    }

    while (v35 != v3);
    v31 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    v1 = v4;
    v2 = v5;
    v35 = v31;
  }

  while (v31);
LABEL_39:

  return v36;
}

id PKPaymentDeviceMetadataFieldsToString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    v4 = 1;
    do
    {
      if ((v4 & a1) != 0)
      {
        if (v4 > 15)
        {
          if (v4 > 63)
          {
            if (v4 == 64)
            {
              v5 = @"signedPhoneNumber";
              goto LABEL_22;
            }

            if (v4 == 128)
            {
              v5 = @"location";
              goto LABEL_22;
            }
          }

          else
          {
            if (v4 == 16)
            {
              v5 = @"deviceName";
              goto LABEL_22;
            }

            if (v4 == 32)
            {
              v5 = @"phoneNumber";
              goto LABEL_22;
            }
          }
        }

        else if (v4 > 3)
        {
          if (v4 == 4)
          {
            v5 = @"uniqueChipIdentifier";
            goto LABEL_22;
          }

          if (v4 == 8)
          {
            v5 = @"serialNumber";
            goto LABEL_22;
          }
        }

        else
        {
          v5 = @"secureElementIdentifier";
          if (v4 == 1)
          {
            goto LABEL_22;
          }

          if (v4 == 2)
          {
            v5 = @"uniqueDeviceIdentifier";
LABEL_22:
            [v2 addObject:v5];
          }
        }
      }

      v4 = 1 << v3++;
    }

    while (v4 <= a1);
  }

  v6 = [v2 description];

  return v6;
}

void sub_1AD53E610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

BOOL _LocationMeetsAccuracyCriteria(void *a1)
{
  v1 = a1;
  [v1 horizontalAccuracy];
  v3 = v2;
  v4 = *MEMORY[0x1E6985CB8];
  v5 = [v1 timestamp];

  [v5 timeIntervalSinceNow];
  v7 = v6 <= 300.0;

  return v3 <= v4 && v7;
}

uint64_t PKPhysicalCardActionTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1 == @"disable")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v3 = [@"disable" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"enable" || (v6 = v5, v7 = [@"enable" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 1;
      goto LABEL_18;
    }

    v8 = v6;
    if (v8 == @"deactivate" || (v9 = v8, v10 = [@"deactivate" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_18;
    }

    v11 = v9;
    if (v11 == @"activate" || (v12 = v11, v13 = [@"activate" isEqualToString:v11], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_18;
    }

    v14 = v12;
    if (v14 == @"replace" || (v15 = v14, v16 = [@"replace" isEqualToString:v14], v15, v16))
    {
      v4 = 5;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_4:
  v4 = 2;
LABEL_18:

  return v4;
}

__CFString *PKStringFromPhysicalCardActionType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C51C8[a1 - 1];
  }
}

id PKBannerServiceInterface()
{
  if (qword_1EB59FF58 != -1)
  {
    dispatch_once(&qword_1EB59FF58, &__block_literal_global_5);
  }

  v1 = _MergedGlobals_1;

  return v1;
}

void __PKBannerServiceInterface_block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.wallet.banner"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F247C788];
  [v4 setServer:v0];

  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F23EC900];
  [v4 setClient:v1];

  [v4 setClientMessagingExpectation:0];
  v2 = [v4 copy];
  v3 = _MergedGlobals_1;
  _MergedGlobals_1 = v2;

  if (_MergedGlobals_1)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD545914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD545CD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id _PKEnumValueToString(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = objc_autoreleasePoolPush();
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [v12 componentsSeparatedByString:{@", "}];
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v28 + 1) + 8 * i) mutableCopy];
        CFStringTrimWhitespace(v20);
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [v14 count];
  v27 = &a9;
  if (v21 < 1)
  {
LABEL_12:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%lu is not a known %@", a1, v11}];
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = 0;
    while (1)
    {
      v23 = v27++;
      if (*v23 == a1)
      {
        break;
      }

      if (v21 == ++v22)
      {
        goto LABEL_12;
      }
    }
  }

  v24 = [v14 objectAtIndexedSubscript:v22];
  v25 = [v24 copy];

  objc_autoreleasePoolPop(v13);

  return v25;
}

id _PKEnumValueValidateString(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  _PKEnumValueFromStringVAList(v12, v13, v15, &a9);

  return 0;
}

__CFString *PKSecureElementAccessPassTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"access";
  }

  else
  {
    return off_1E79C7680[a1 - 1];
  }
}

uint64_t PKVirtualCardVPANOriginForString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqual:@"DPAN_PROVISIONING"])
    {
      v3 = 1;
    }

    else if ([v2 isEqual:@"VIRTUAL_CARD_ISSUANCE_IN_WALLET"])
    {
      v3 = 2;
    }

    else if ([v2 isEqual:@"VIRTUAL_CARD_REFRESH"])
    {
      v3 = 3;
    }

    else if ([v2 isEqual:@"IN_APP_TRANSACTION"])
    {
      v3 = 4;
    }

    else if ([v2 isEqual:@"WEB_TRANSACTION"])
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *PKVirtualCardVPANOriginToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E79C76B0[a1 - 1];
  }
}

uint64_t PKWebServicesPaymentCardTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqual:@"payment"] & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"credit") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"debit"))
    {
      v3 = 1;
    }

    else if ([v2 isEqual:@"transit"])
    {
      v3 = 2;
    }

    else if ([v2 isEqual:@"access"])
    {
      v3 = 3;
    }

    else if ([v2 isEqual:@"unifiedaccess"])
    {
      v3 = 4;
    }

    else if ([v2 isEqual:@"identity"])
    {
      v3 = 5;
    }

    else if ([v2 isEqual:@"iso18013"])
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *PKWebServicesPaymentCardTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C76D8[a1 - 1];
  }
}

id PKPushProvisioningSecurityOptionsToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"AllowProvisioningOnLockedDevice"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PKPushProvisioningSecurityOptionsFromString(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 componentsSeparatedByString:{@", "}];
  v2 = [v1 containsObject:@"AllowProvisioningOnLockedDevice"];

  return v2;
}

__CFString *PKPushProvisioningSharingStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C7700[a1 - 1];
  }
}

uint64_t PKPushProvisioningSharingStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_14;
  }

  v3 = v1;
  if (v3 != @"available")
  {
    v4 = v3;
    v5 = [(__CFString *)v3 isEqualToString:@"available"];

    if ((v5 & 1) == 0)
    {
      v7 = v4;
      if (v7 == @"consumed" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"consumed"], v8, (v9 & 1) != 0))
      {
        v6 = 2;
        goto LABEL_15;
      }

      v10 = v8;
      if (v10 == @"revoked" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"revoked"], v11, (v12 & 1) != 0))
      {
        v6 = 3;
        goto LABEL_15;
      }

      v13 = v11;
      if (v13 == @"expired" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"expired"], v14, v15))
      {
        v6 = 4;
        goto LABEL_15;
      }

LABEL_14:
      v6 = 0;
      goto LABEL_15;
    }
  }

  v6 = 1;
LABEL_15:

  return v6;
}

__CFString *PKPassLifecycleStateToString(uint64_t a1)
{
  v1 = @"active";
  if (a1 == 1)
  {
    v1 = @"expired";
  }

  if (a1 == 2)
  {
    return @"removed";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPaymentCardTypeFromWebServicesCardType(uint64_t a1)
{
  v1 = 4;
  if (a1 != 5)
  {
    v1 = a1;
  }

  if (a1 == 4)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

id PKExpressTransitModes()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"transit.felica.suica";
  v2[1] = @"type_a.generic";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];

  return v0;
}

uint64_t PKExpressPassTypeForExpressMode(void *a1)
{
  v1 = a1;
  v2 = PKExpressTransitModes();
  v3 = [v2 containsObject:v1];

  if (v3)
  {
    v4 = 1;
  }

  else if ([v1 hasPrefix:@"access.hid."])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PKPassAutomaticSelectionTechnologyTypeForExpressEnteredObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqual:@"express.transit.suica"])
    {
      v3 = 1;
    }

    else if ([v2 isEqual:@"express.access.hid"])
    {
      v3 = 2;
    }

    else if ([v2 isEqual:@"express.generic-a"])
    {
      v3 = 3;
    }

    else if ([v2 isEqual:@"express.single-poll"])
    {
      v3 = 7;
    }

    else if ([v2 isEqual:@"express.ecp2"])
    {
      v3 = 4;
    }

    else if ([v2 isEqual:@"express.transit.cathay"])
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PKPaymentTransactionStatusFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"pending"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"approved"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"declined"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"refunded"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"failed"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"canceled"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"rejected"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"expired"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"preauth"])
  {
    v2 = 8;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

__CFString *PKPaymentTransactionStatusToString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C7720[a1];
  }
}

uint64_t PKPaymentTransactionDeclinedReasonFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"insufficientFunds"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"wrongPIN"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"internationalTransactionPreCIP"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"overSpendLimit"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"fraudSuspected"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"fraudConfirmed"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"fraudSuspectedRetry"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"fraudConfirmedSingleCard"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"blocked"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"cardDisabled"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"cardCancelled"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"cardNotActivated"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"cardExpired"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"accountStatus"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"accountStatusContact"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"outOfPolicy"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"restrictedCountry"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"verificationFailed"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"verificationFailedAddress"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"verificationFailedZip"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"verificationFailedSecurityCode"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"other"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"EMVError"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"spendDisabled"])
  {
    v2 = 22;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentTransactionDeclinedReasonToString(unint64_t a1)
{
  if (a1 > 0x18)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C7768[a1];
  }
}

id PKPaymentTransactionDeclinedReasonLocalizedString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 - 1;
  if (a1 - 1) <= 0x17 && ((0xF7FFFFu >> v10))
  {
    v11 = PKLocalizedFeatureString(off_1E79C7830[v10], 2, 0, a4, a5, a6, a7, a8, v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t PKPaymentDocumentTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"driverslicense" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"stateid" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentDocumentTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C78F0[a1];
  }
}

id PKDisplayableErrorCustomWithType(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = v13;
  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v14 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A598]];
  }

  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  if (v12)
  {
    [v14 addEntriesFromDictionary:v12];
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKDisplayableError" code:a1 userInfo:v14];

  return v15;
}

id PKDisplayableErrorForCommonType(uint64_t a1, void *a2)
{
  v37[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  switch(a1)
  {
    case -1:
    case 1:
      v4 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar_0.isa, 0);
      v6 = 1;
      goto LABEL_18;
    case 0:
      v4 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa, 0);
      v6 = 0;
      goto LABEL_18;
    case 2:
      v4 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa, 0);
      v6 = 2;
      goto LABEL_18;
    case 3:
      v4 = PKLocalizedPaymentString(&cfstr_IneligibleRegi.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_IneligibleRegi_0.isa, 0);
      v6 = 3;
      goto LABEL_18;
    case 4:
      v4 = PKLocalizedPaymentString(&cfstr_NonApplePayReg.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_NonApplePayReg_0.isa, 0);
      v36[0] = *MEMORY[0x1E696A590];
      v9 = PKLocalizedPaymentString(&cfstr_NonApplePayReg_1.isa, 0);
      v35 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v37[0] = v10;
      v36[1] = @"PKErrorRecoveryURL";
      v11 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/en-us/HT204003"];
      v37[1] = v11;
      v36[2] = @"PKErrorSeverity";
      v12 = PKProvisioningErrorSeverityToString(5);
      v37[2] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
      v14 = 4;
      goto LABEL_12;
    case 5:
      v4 = PKLocalizedPaymentString(&cfstr_U13NoCardsTitl.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_U13NoCardsMess.isa, 0);
      v6 = 5;
      goto LABEL_18;
    case 6:
      v4 = PKLocalizedPaymentString(&cfstr_AccountRequire.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_AccountRequire_0.isa, 0);
      v33[0] = *MEMORY[0x1E696A590];
      v9 = PKLocalizedPaymentString(&cfstr_AccountRequire_1.isa, 0);
      v32 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v34[0] = v10;
      v33[1] = @"PKErrorRecoveryURL";
      v11 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
      v34[1] = v11;
      v33[2] = @"PKErrorSeverity";
      v12 = PKProvisioningErrorSeverityToString(4);
      v34[2] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
      v14 = 6;
LABEL_12:
      v15 = PKDisplayableErrorCustomWithType(v14, v4, v5, v3, v13);

      goto LABEL_21;
    case 7:
      v4 = PKLocalizedPaymentString(&cfstr_NoCardToAddTit.isa, 0);
      v5 = PKLocalizedPaymentString(&cfstr_NoCardToAddMes.isa, 0);
      v6 = 7;
      goto LABEL_18;
    case 8:
      v7 = MEMORY[0x1E696ADA0];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PKMaxPaymentCards()];
      v4 = [v7 localizedStringFromNumber:v8 numberStyle:0];

      if (PKDisableDynamicSEAllocation())
      {
        PKLocalizedPaymentString(&cfstr_DeviceProvisio_0.isa, &stru_1F2281668.isa, v4);
      }

      else
      {
        PKLocalizedPaymentString(&cfstr_DeviceProvisio.isa, 0);
      }
      v5 = ;
      v9 = PKLocalizedPaymentString(&cfstr_DeviceProvisio_1.isa, 0);
      v15 = PKDisplayableErrorCustomWithType(8, v9, v5, v3, 0);
LABEL_21:

      goto LABEL_24;
    case 9:
      v4 = PKLocalizedPaymentString(&cfstr_PasscodeRequir.isa, 0);
      if (PKPearlIsAvailable())
      {
        v5 = PKLocalizedPearlString(&cfstr_PasscodeRequir_0.isa, 0);
        v30[0] = *MEMORY[0x1E696A590];
        v16 = PKLocalizedPearlString(&cfstr_PasscodeRequir_1.isa, 0);
        v29 = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        v31[0] = v17;
        v31[1] = MEMORY[0x1E695E118];
        v30[1] = @"PKDisplayableErrorIsPreferredActionKey";
        v30[2] = @"PKErrorRecoveryURL";
        v18 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Pearl"];
        v31[2] = v18;
        v30[3] = @"PKErrorSeverity";
        v19 = PKProvisioningErrorSeverityToString(4);
        v31[3] = v19;
        v20 = MEMORY[0x1E695DF20];
        v21 = v31;
        v22 = v30;
      }

      else
      {
        v5 = PKLocalizedPaymentString(&cfstr_PasscodeRequir_2.isa, 0);
        v27[0] = *MEMORY[0x1E696A590];
        v16 = PKLocalizedPaymentString(&cfstr_PasscodeRequir_3.isa, 0);
        v26 = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        v28[0] = v17;
        v28[1] = MEMORY[0x1E695E118];
        v27[1] = @"PKDisplayableErrorIsPreferredActionKey";
        v27[2] = @"PKErrorRecoveryURL";
        v18 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=TOUCHID_PASSCODE&path=TOUCHID_PASSCODE"];
        v28[2] = v18;
        v27[3] = @"PKErrorSeverity";
        v19 = PKProvisioningErrorSeverityToString(4);
        v28[3] = v19;
        v20 = MEMORY[0x1E695DF20];
        v21 = v28;
        v22 = v27;
      }

      v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:4];

      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:9 userInfo:0];
      v15 = PKDisplayableErrorCustomWithType(9, v4, v5, v24, v23);

      goto LABEL_24;
    case 10:
      v4 = PKLocalizedDeletableString(&cfstr_WalletUninstal.isa, 0);
      v5 = PKLocalizedDeletableString(&cfstr_WalletUninstal_0.isa, 0);
      v6 = 10;
      goto LABEL_18;
    case 11:
      v4 = PKLocalizedString(&cfstr_PassErrorManag.isa, 0);
      v5 = PKLocalizedString(&cfstr_PassErrorManag_0.isa, 0);
      v6 = 11;
LABEL_18:
      v15 = PKDisplayableErrorCustomWithType(v6, v4, v5, v3, 0);
LABEL_24:

      break;
    default:
      v15 = 0;
      break;
  }

  return v15;
}

id PKTitleForDisplayableError(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (!v3)
  {
    v4 = [v1 localizedFailureReason];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v1 localizedDescription];
    }

    v3 = v6;
  }

  return v3;
}

uint64_t PKFeatureIdentifierFromPaymentSetupFeatureType(uint64_t a1)
{
  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

uint64_t PKPaymentSetupFeatureTypeFromPKFeatureIdentifier(uint64_t a1)
{
  v1 = 2;
  if (a1 != 4)
  {
    v1 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t PKFeatureIdentifierFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"ccs"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"peerpayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"asp"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"savings"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKFeatureIdentifierToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C7908[a1 - 1];
  }
}

__CFString *PKAMPCardEligibilityStatusToString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C7930[a1];
  }
}

__CFString *PKPaymentCryptogramTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"PSD2";
  }

  else
  {
    return @"legacy";
  }
}

uint64_t PKPaymentSetupFieldSourceFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"cameraCapture"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"autofill"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"autofillEdited"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"manual"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentSetupFieldSourceToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C7978[a1 - 1];
  }
}

uint64_t PKEncryptionSchemeStringIsValid(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"EV_RSA_v2")
  {
    goto LABEL_10;
  }

  if (!v1)
  {
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"EV_RSA_v2"];

  if ((v3 & 1) == 0)
  {
    v4 = v2;
    if (v4 != @"EV_ECC_v2")
    {
      v5 = v4;
      v6 = [(__CFString *)v4 isEqualToString:@"EV_ECC_v2"];

      if ((v6 & 1) == 0)
      {
        v7 = v5;
        if (v7 != @"EV_ECC_v1-ASN.1")
        {
          v8 = v7;
          v9 = [(__CFString *)v7 isEqualToString:@"EV_ECC_v1-ASN.1"];

          if ((v9 & 1) == 0)
          {
            v10 = v8;
            if (v10 != @"EV_ECC_v1")
            {
              v11 = v10;
              v12 = [(__CFString *)v10 isEqualToString:@"EV_ECC_v1"];

              if ((v12 & 1) == 0)
              {
                v15 = v11;
                if (v15 == @"EV_ECC_v3")
                {
                  v13 = 1;
                }

                else
                {
                  v13 = [(__CFString *)v15 isEqualToString:@"EV_ECC_v3"];
                }

                goto LABEL_12;
              }
            }
          }
        }
      }
    }
  }

LABEL_10:
  v13 = 1;
LABEL_13:

  return v13;
}

uint64_t PKUserNotificationActionFromUNNotificationActionIdentifier(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E69833F8];
  v3 = v1;
  v4 = v3;
  if (v2 == v3)
  {

    goto LABEL_7;
  }

  if (v3 && v2)
  {
    v5 = [v3 isEqualToString:v2];

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v6 = 1;
    goto LABEL_18;
  }

LABEL_9:
  v7 = *MEMORY[0x1E69833E0];
  v8 = v4;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v4 || !v7)
    {

LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }

    v10 = [v8 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v6 = 2;
LABEL_18:

  return v6;
}

void PKViewVisibilityStateAdvanceState(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5 && a1 != a2 && (a2 | a1) <= 3)
  {
    v11 = v5;
    if (a1 == 2 && a2 == 1 || !a1 && a2 == 3)
    {
      (*(v5 + 2))(v5, a2);
      v5 = v11;
    }

    else
    {
      v6 = (a2 - 3) < 0xFEu;
      if (a1 != 1)
      {
        v6 = 0;
      }

      v7 = a1 != 3 && v6;
      v8 = a1 == 3 && (a2 - 1) < 2;
      do
      {
        a1 = (a1 + 1) & 3;
        if (a1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        v10 = a1 == 2 && v7;
        if (!v9 && !v10)
        {
          (*(v5 + 2))(v11, a1);
          v5 = v11;
        }
      }

      while (a2 != a1);
    }
  }
}

__CFString *PKPassHomeKeyLiveRenderTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E79C79C0[a1 - 1];
  }
}

__CFString *PKPaymentAuthorizationFundingModeToString(uint64_t a1)
{
  if (a1)
  {
    return @"paymentOffer";
  }

  else
  {
    return @"none";
  }
}

BOOL PKPassFeatureTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"access.sharing")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"access.sharing"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKPassFeatureTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"access.sharing";
  }

  else
  {
    return 0;
  }
}

__CFString *PKPayLaterMerchandisingEntitlementTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"payInFourMerchandising";
  }

  else
  {
    return @"unknown";
  }
}

__CFString *PKTerminalPublicKeySchemeToString(__CFString *result)
{
  if (result)
  {
    if (result == 1)
    {
      return @"aliro.v1";
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t PKApplePayUserEducationDemoSourceFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"appIntent")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v3 = [@"appIntent" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"settings" || (v6 = v5, v7 = [@"settings" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_18;
    }

    v8 = v6;
    if (v8 == @"notification" || (v9 = v8, v10 = [@"notification" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_18;
    }

    v11 = v9;
    if (v11 == @"discoveryCard" || (v12 = v11, v13 = [@"discoveryCard" isEqualToString:v11], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_18;
    }

    v14 = v12;
    if (v14 == @"external" || (v15 = v14, v16 = [@"external" isEqualToString:v14], v15, v16))
    {
      v4 = 5;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_4:
  v4 = 1;
LABEL_18:

  return v4;
}

__CFString *PKApplePayUserEducationDemoSourceToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C79F8[a1 - 1];
  }
}

__CFString *PKAppIconBundleIdentifier()
{
  if (PKIsPad())
  {
    return @"com.apple.PassbookStub";
  }

  else
  {
    return @"com.apple.Passbook";
  }
}

__CFString *PKAppIconUTI()
{
  if (PKIsPad())
  {
    return @"com.apple.application-icon.passbook-stub.wallet";
  }

  else
  {
    return @"com.apple.application-icon.passbook.wallet";
  }
}

uint64_t PKRadioTechnologyFromStrings(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isEqualToString:@"BT"])
        {
          v4 |= 2uLL;
        }

        v4 |= [v7 isEqualToString:@"NFC"];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PKRadioTechnologiesFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  v2 = PKRadioTechnologyFromStrings(v1);

  return v2;
}

__CFString *PKRadioTechnologyToString(uint64_t a1)
{
  v1 = @"NFC";
  if (a1 == 2)
  {
    v1 = @"BT";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"NONE";
  }
}

id PKRadioTechnologiesToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"NFC"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"BT"];
  }

  if (![v3 count])
  {
    [v3 addObject:@"NONE"];
  }

  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

uint64_t PKRadioTechnologyFromNumbers(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v4 |= [v7 isEqualToNumber:&unk_1F23B4910];
        if ([v7 isEqualToNumber:&unk_1F23B4928])
        {
          v4 |= 2uLL;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t PKRadioTechnologyForConfigurationTechnology(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 2) != 0)
  {
    if (qword_1ED6D1708 != -1)
    {
      dispatch_once(&qword_1ED6D1708, &__block_literal_global_7);
    }

    if ((_MergedGlobals_188 & 1) == 0)
    {
      v2 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Removing BT due to device not supporting UWB interactions", v4, 2u);
      }

      return v1 & 0xFFFFFFFFFFFFFFFDLL;
    }
  }

  return v1;
}

uint64_t __IsNearbyInteractionSupported_block_invoke()
{
  v0 = getNISessionClass[0]();
  if (!v0)
  {
    v1 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "Cannot find NISession class", v3, 2u);
    }
  }

  result = [(objc_class *)v0 isSupported];
  _MergedGlobals_188 = result;
  return result;
}

Class initNISession()
{
  if (qword_1ED6D1718 != -1)
  {
    dispatch_once(&qword_1ED6D1718, &__block_literal_global_31);
  }

  result = objc_getClass("NISession");
  qword_1ED6D1710 = result;
  getNISessionClass[0] = NISessionFunction;
  return result;
}

void *__LoadNearbyInteraction_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/NearbyInteraction.framework/NearbyInteraction", 2);
  LoadNearbyInteraction_frameworkLibrary = result;
  return result;
}

void sub_1AD54E900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD54FB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5508A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD550DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD551290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5513BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD551604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5518BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD551B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD551C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD551F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5524C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5528EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD555A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t PKPaymentApplicationMatchesSTSEventCredential(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 applicationIdentifier];
  v6 = [v4 identifier];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v7 && v8)
    {
      v10 = [v7 isEqualToString:v8];
    }
  }

  v11 = [v4 subIdentifier];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v3 subcredentials];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __PKPaymentApplicationMatchesSTSEventCredential_block_invoke;
    v15[3] = &unk_1E79C7E70;
    v16 = v12;
    v10 = [v13 pk_hasObjectPassingTest:v15];
  }

  return v10;
}

void __PKPaymentApplicationsArrayMatch_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = a2;
  if (([*(a1 + 32) containsIndex:a3] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = v21;
    v9 = [v7 applicationIdentifier];
    v10 = [v8 applicationIdentifier];

    v11 = v9;
    v12 = v10;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if (!v11 || !v12)
      {

LABEL_12:
        goto LABEL_15;
      }

      v14 = [v11 isEqualToString:v12];

      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v15 = [v7 subcredentials];
    v16 = [v7 subcredentials];
    if (v15 | v16)
    {
      v17 = v16;
      v18 = [v15 pk_setByApplyingBlock:&__block_literal_global_530];
      v19 = [v17 pk_setByApplyingBlock:&__block_literal_global_532];
      v20 = [v18 isEqualToSet:v19];

      if (!v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [*(a1 + 32) addIndex:a3];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

LABEL_15:
}

uint64_t __PKPaymentApplicationMatchesSTSEventCredential_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

id PDDeviceSpecificLocalizedStringKeyForKey(void *a1)
{
  v1 = a1;
  if (PKIsPhone())
  {
    v2 = @"_IPHONE";
LABEL_5:
    v3 = [v1 stringByAppendingString:v2];
    goto LABEL_7;
  }

  if (PKIsPad())
  {
    v2 = @"_IPAD";
    goto LABEL_5;
  }

  v3 = v1;
LABEL_7:
  v4 = v3;

  return v4;
}

id PKPassLocalizedStringWithFormat(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = _PKPassLocalizedStringWithFileAndFormat(a1, a2, a3, &a9);

  return v9;
}

id _PKPassLocalizedStringWithFileAndFormat(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [a2 passLocalizedStringForKey:v7];
  v10 = [v9 isEqualToString:v7];
  if (!v9 || v10)
  {
    v11 = PKPassKitBundle();
    v12 = [v11 localizedStringForKey:v7 value:&stru_1F227FD28 table:@"pass_localizable"];

    v9 = v12;
  }

  if (v8)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [MEMORY[0x1E695DF58] currentLocale];
    v21 = 0;
    v15 = [v13 initWithValidatedFormat:v9 validFormatSpecifiers:v8 locale:v14 arguments:a4 error:&v21];
    v16 = v21;

    if (v15)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = v7;
    }

    v19 = v18;

    v9 = v19;
  }

  return v9;
}

id PKPassLocalizedHomeKeyStringWithFormat(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = _PKPassLocalizedStringWithFileAndFormat(a1, a2, a3, &a9);

  return v9;
}

id PKPassLocalizedStringForStateWithFormat(NSString *a1, PKSecureElementPass *a2, NSString *a3, ...)
{
  va_start(va, a3);
  v3 = 0;
  if (a1 && a2)
  {
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = [(PKSecureElementPass *)v7 effectiveContactlessPaymentApplicationState];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = _PKPaymentApplicationStateLocalizationStringPostfix(v9);
    v12 = [v10 initWithFormat:@"%@_%@", v8, v11];

    v13 = _PKPassLocalizedStringWithFileAndFormat(v12, v7, v6, va);

    v14 = v13;
    v15 = v12;
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      if (!v15 || !v14)
      {

        v18 = v14;
        goto LABEL_11;
      }

      v17 = [v14 isEqualToString:v15];

      v18 = v14;
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    v18 = 0;
LABEL_11:
    v3 = v18;
  }

  return v3;
}

__CFString *_PKPaymentApplicationStateLocalizationStringPostfix(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E79C7FF8[a1 - 1];
  }
}

id PKPassLocalizedStringForStateWithFormat(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  if (a1 && a2)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = a4;
    v15 = a2;
    v16 = a1;
    v17 = [v13 alloc];
    v18 = _PKPaymentApplicationStateLocalizationStringPostfix(a3);
    v19 = [v17 initWithFormat:@"%@_%@", v16, v18];

    v20 = _PKPassLocalizedStringWithFileAndFormat(v19, v15, v14, &a9);

    v21 = v20;
    v22 = v19;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if (!v22 || !v21)
      {

        v25 = v21;
        goto LABEL_11;
      }

      v24 = [v21 isEqualToString:v22];

      v25 = v21;
      if (!v24)
      {
        goto LABEL_11;
      }
    }

    v25 = 0;
LABEL_11:
    v9 = v25;
  }

  return v9;
}

id PKCoreLocalizedString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitCoreBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedTransitString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Transit_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedPearlString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Pearl_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedPeerPaymentRecurringString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"PeerPaymentRecurring_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedPeerPaymentString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"PeerPayment_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedCardNumbersString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"CardNumbers_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedFeatureString(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a2 - 1) > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E79C8070[a2 - 1];
  }

  v11 = a3;
  v12 = a1;
  v13 = PKPassKitBundle();
  v14 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v12, 0, v10, v13, v11, 0, &a9);

  return v14;
}

id PKLocalizedApplyFeatureString(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a2 - 1) > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E79C8070[a2 - 1];
  }

  v12 = a4;
  v13 = a3;
  v14 = a1;
  v15 = PKPassKitBundle();
  v16 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v14, v13, v11, v15, v12, 0, &a9);

  return v16;
}

id PKLocalizedFeatureStringWithDefaultValue(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a2 - 1) > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E79C8070[a2 - 1];
  }

  v12 = a4;
  v13 = a3;
  v14 = a1;
  v15 = PKPassKitBundle();
  v16 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v14, 0, v11, v15, v12, v13, &a9);

  return v16;
}

id PKLocalizedAMPString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Aurum_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedAppleBalanceString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"AppleBalance_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedAquamanString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Aquaman_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedMerchantTokensString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"MerchantTokens_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedIdentityString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Identity_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedShareableCredentialString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"ShareableCredential_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedD5xString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"D5x_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedSettingsString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"WalletSettings_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedVirtualCardString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"VirtualCard_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedCashVPANString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"CashVPAN_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedHideMyEmailString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"PaymentSheetHME_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedOrderManagementString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"OrderManagement_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedFundsTransferString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"FundsTransfer_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedHomeKeyString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"HomeKey_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedDiscoveryString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Discovery_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedCredentialString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Credential_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedStringInMarketBundle(NSString *a1, NSBundle *a2, NSString *a3, ...)
{
  va_start(va, a3);
  v3 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(a1, 0, @"Localizable", a2, a3, 0, va);

  return v3;
}

NSString *PKLocalizedStringInMobileAssetsStringsBundle(NSString *a1, NSBundle *a2, NSString *a3, ...)
{
  va_start(va, a3);
  v5 = a1;
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v5, 0, @"Localizable", a2, a3, 0, va);
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    v10 = 0;
    v9 = v6;
LABEL_7:

    goto LABEL_8;
  }

  v9 = v7;
  v10 = v6;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = v7;
  v10 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  v11 = [(NSString *)v6 isEqualToString:v7];

  if (!v11)
  {
    goto LABEL_9;
  }

  v10 = 0;
LABEL_8:

  v6 = v10;
LABEL_9:

  return v6;
}

id PKDynamicLocalizedFeatureString(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = a3;
  v13 = PKMobileAssetStringsIdentifierFromFeatureIdentifier(a2);
  v14 = v13;
  if ((a2 - 1) > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E79C8070[a2 - 1];
  }

  if (v13)
  {
    v16 = _PKDynamicLocalizedString(v11, v13, v15, v12, &a9);
  }

  else
  {
    v17 = PKPassKitBundle();
    v16 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v11, 0, v15, v17, v12, 0, &a9);
  }

  v18 = v16;

  return v18;
}

id _PKDynamicLocalizedString(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a2;
  v13 = +[PKMobileAssetManager sharedInstance];
  v14 = [v13 cachedStringsBundleWithIdentifier:v12];

  if (!v14 || (_PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v9, 0, @"Localizable", v14, v11, 0, a5), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 0;
    goto LABEL_8;
  }

  v16 = v15;
  v17 = v9;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_8;
  }

  if (!v17)
  {
    v21 = v16;
    goto LABEL_9;
  }

  v19 = [v16 isEqualToString:v17];

  if (v19)
  {
LABEL_8:
    v20 = PKPassKitBundle();
    v21 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v9, 0, v10, v20, v11, 0, a5);

    v16 = v20;
LABEL_9:

    v16 = v21;
  }

  return v16;
}

id PKDynamicLocalizedAppleCardString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKMobileAssetStringsIdentifierFromFeatureIdentifier(2);
  v6 = _PKDynamicLocalizedString(v4, v5, @"CCS_Localizable", v3, va);

  return v6;
}

id PKDynamicLocalizedPeerPaymentString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKMobileAssetStringsIdentifierFromFeatureIdentifier(1);
  v6 = _PKDynamicLocalizedString(v4, v5, @"PeerPayment_Localizable", v3, va);

  return v6;
}

id PKLocalizedStringInStationCodeBundle(NSString *a1, NSBundle *a2, NSString *a3, ...)
{
  va_start(va, a3);
  v3 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(a1, 0, @"Localizable", a2, a3, 0, va);

  return v3;
}

id PKLocalizedDeletableString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Deletable_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedBankConnectString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"BankConnect_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedPayWithPointsString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"PayWithRewards_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedPersonalizationStringForPassBundle(void *a1, void *a2)
{
  if (a1)
  {
    a1 = [a2 localizedStringForKey:a1 value:a1 table:@"personalization"];
    v2 = vars8;
  }

  return a1;
}

id PKLocalizedReceiptStringForReceiptBundle(void *a1, void *a2)
{
  if (a1)
  {
    a1 = [a2 localizedStringForKey:a1 value:a1 table:@"receipt"];
    v2 = vars8;
  }

  return a1;
}

id PKGregorianMonthSpecificLocalizedStringKeyForKey(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 > 6)
  {
    if (a2 <= 9)
    {
      if (a2 == 7)
      {
        v5 = @"_JULY";
      }

      else if (a2 == 8)
      {
        v5 = @"_AUGUST";
      }

      else
      {
        v5 = @"_SEPTEMBER";
      }

      goto LABEL_26;
    }

    switch(a2)
    {
      case 10:
        v5 = @"_OCTOBER";
        goto LABEL_26;
      case 11:
        v5 = @"_NOVEMBER";
        goto LABEL_26;
      case 12:
        v5 = @"_DECEMBER";
        goto LABEL_26;
    }
  }

  else
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v5 = @"_APRIL";
      }

      else if (a2 == 5)
      {
        v5 = @"_MAY";
      }

      else
      {
        v5 = @"_JUNE";
      }

      goto LABEL_26;
    }

    switch(a2)
    {
      case 1:
        v5 = @"_JANUARY";
        goto LABEL_26;
      case 2:
        v5 = @"_FEBRUARY";
        goto LABEL_26;
      case 3:
        v5 = @"_MARCH";
LABEL_26:
        v6 = [v3 stringByAppendingString:v5];
        goto LABEL_27;
    }
  }

  v6 = v3;
LABEL_27:
  v7 = v6;

  return v7;
}

id PKLocalizedSEPAuthorizationErrorString(uint64_t a1)
{
  v2 = 0;
  IsAvailable = PKPearlIsAvailable();
  v4 = IsAvailable;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 != 4)
      {
        goto LABEL_13;
      }

      v5 = @"GENERIC_ERROR_AUTHENTICATION_ERROR_IDENTITY_TOUCHID";
      goto LABEL_9;
    }

LABEL_8:
    v5 = @"GENERIC_ERROR_AUTHENTICATION_ERROR_TOUCHID";
LABEL_9:
    v6 = @"GENERIC_ERROR_AUTHENTICATION_ERROR_FACEID";
    goto LABEL_10;
  }

  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v5 = @"PAYMENT_ERROR_AUTHENTICATION_ERROR_TOUCHID";
  v6 = @"PAYMENT_ERROR_AUTHENTICATION_ERROR_FACEID";
LABEL_10:
  if (IsAvailable)
  {
    v5 = v6;
  }

  v2 = v5;
LABEL_13:
  if (v4)
  {
    PKLocalizedPearlString(v2, 0);
  }

  else
  {
    PKLocalizedPaymentString(v2, 0);
  }
  v7 = ;

  return v7;
}

id PKLocalizationKeyForPassType(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v4 = [a2 secureElementPass];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = [v4 cardType];
  if (v6 == 4)
  {
    v10 = [v5 identityType];
    if (v10 < 6)
    {
      v8 = &off_1E79C80C8[v10];
      goto LABEL_10;
    }

LABEL_11:
    v11 = v3;
    goto LABEL_12;
  }

  if (v6 != 3)
  {
    goto LABEL_11;
  }

  v7 = [v5 accessType];
  if ((v7 - 1) >= 6)
  {
    goto LABEL_11;
  }

  v8 = &off_1E79C8098[v7 - 1];
LABEL_10:
  v11 = [v3 stringByAppendingString:*v8];
LABEL_12:
  v9 = v11;

LABEL_13:

  return v9;
}

id PKLocalizedApplicationAuthorizationString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Vienna_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedPaymentOffersString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"PaymentOffers_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedRemoteNetworkPaymentString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"RemoteNetworkPayment_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedTicketingString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Ticketing_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedHomeKitUWBString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"HomeKitUWB_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedFlightString(NSString *a1, NSString *a2, ...)
{
  va_start(va, a2);
  v3 = a2;
  v4 = a1;
  v5 = PKPassKitBundle();
  v6 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(v4, 0, @"Flight_Localizable", v5, v3, 0, va);

  return v6;
}

id PKLocalizedHowToUseWalletStringWithBundle(NSString *a1, NSBundle *a2, NSString *a3, ...)
{
  va_start(va, a3);
  v3 = _PKLocalizedStringForLocalizationFromTableInBundleWithValidFormatSpecifiersAndDefaultValue(a1, 0, @"HowToUseWallet_Localizable", a2, a3, 0, va);

  return v3;
}

uint64_t PKPaymentSetupFieldTypeFromString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if ([@"text" isEqualToString:v1])
    {
      v2 = 1;
    }

    else if ([@"date" isEqualToString:v1])
    {
      v2 = 2;
    }

    else if ([@"label" isEqualToString:v1])
    {
      v2 = 3;
    }

    else if ([@"footer" isEqualToString:v1])
    {
      v2 = 4;
    }

    else if ([@"picker" isEqualToString:v1])
    {
      v2 = 5;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentSetupFieldTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C8438[a1 - 1];
  }
}

uint64_t PKPaymentSetupFieldSubmissionSecurityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"none" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"none"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"encrypted" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"encrypted"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"encryptedPerField" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"encryptedPerField"], v11, v12))
      {
        v5 = 2;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t PKPaymentSetupFieldTextAlignmentFromString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if ([@"leading" isEqualToString:v1])
    {
      v2 = 1;
    }

    else if ([@"trailing" isEqualToString:v1])
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPaymentSetupFieldLabelAlignmentFromString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if ([@"left" isEqualToString:v1])
    {
      v2 = 1;
    }

    else if ([@"center" isEqualToString:v1])
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKExpirationDateFormatter()
{
  if (qword_1EB5B7CB0 != -1)
  {
    dispatch_once(&qword_1EB5B7CB0, &__block_literal_global_965);
  }

  v1 = qword_1EB5B7CA8;

  return v1;
}