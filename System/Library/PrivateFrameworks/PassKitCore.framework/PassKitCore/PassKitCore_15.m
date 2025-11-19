uint64_t sub_1AD4C4874()
{
  v0 = sub_1ADB06040();
  v11 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ADB06060();
  v3 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v6 = sub_1ADB068B0();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1AD4C4B58;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_16;
  v8 = _Block_copy(aBlock);

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD4C4B60(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v5, v2, v8);
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_1AD4C4B60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AD4C4BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 56);
  v7 = [v6 sid];
  v8 = sub_1ADB063B0();
  v31 = v9;
  v32 = v8;

  v10 = *(v4 + 16);
  swift_beginAccess();
  v11 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v10 + 72) managingWebService:*(v10 + 48)];
  v12 = swift_allocObject();
  v13 = [objc_allocWithZone(PKPaymentProvisioningRequest) init];
  *(v12 + 16) = v13;
  [v13 setEligibilityResponse_];
  v14 = v13;
  v15 = [v6 sid];
  v16 = sub_1ADB063B0();
  v18 = v17;

  MEMORY[0x1B26F6530](v16, v18);

  MEMORY[0x1B26F6530](62, 0xE100000000000000);
  v19 = sub_1ADB06370();

  [v14 addDiagnosticReason_];

  v20 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v22[2] = v4;
  v22[3] = v12;
  v22[4] = v21;
  v39 = sub_1AD4C52C4;
  v40 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1AD433EF4;
  v38 = &block_descriptor_31;
  v23 = _Block_copy(&aBlock);

  [v20 addOperation_];
  _Block_release(v23);
  v24 = swift_allocObject();
  v24[2] = v11;
  v24[3] = v12;
  v24[4] = v4;
  v24[5] = v32;
  v24[6] = v31;
  v24[7] = v21;
  v39 = sub_1AD4C5638;
  v40 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1AD433EF4;
  v38 = &block_descriptor_15_5;
  v25 = _Block_copy(&aBlock);

  v26 = v11;

  [v20 addOperation_];
  _Block_release(v25);
  v27 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v28 = swift_allocObject();
  v28[2] = v21;
  v28[3] = a2;
  v28[4] = a3;
  v28[5] = v12;
  v39 = sub_1AD4C5890;
  v40 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1AD434CF8;
  v38 = &block_descriptor_21_1;
  v29 = _Block_copy(&aBlock);

  v30 = [v20 evaluateWithInput:v27 completion:v29];
  _Block_release(v29);

  swift_unknownObjectRelease();
}

__n128 ProvisioningStepGenerateKeys.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
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

uint64_t ProvisioningStepGenerateKeys.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ProvisioningStepGenerateKeys.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepGenerateKeys.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD4C5134@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepGenerateKeys();
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

void sub_1AD4C5208(uint64_t a1, void *a2, void (*a3)(void *, BOOL), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v13 = *(a6 + 16);

  v14 = a2;
  v15 = v13;
  sub_1AD4C5CE4(v15, a5, a7, a3, a4, v14);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4C52E8(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, BOOL), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = sub_1ADB05CB0();
    v11 = [objc_opt_self() errorWithUnderlyingError:v10 defaultSeverity:5];

    swift_beginAccess();
    v12 = *(a2 + 16);
    *(a2 + 16) = v11;

    swift_beginAccess();
    v13 = *(a2 + 16);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1ADB06370();
      [v14 addInternalDebugDescription_];
    }

    else
    {
    }
  }

  swift_beginAccess();
  return a3(a5, *(a2 + 16) != 0);
}

void sub_1AD4C543C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  v15 = *(a7 + 56);
  v16 = *(a6 + 16);
  v17 = [v15 externalizedAuth];
  if (v17)
  {
    v18 = v17;
    v19 = a4;
    v20 = a2;
    v21 = v16;
    v22 = a3;
    v23 = sub_1ADB05D70();
    v25 = v24;

    v26 = sub_1ADB05D50();
    v27 = v23;
    a3 = v22;
    v16 = v21;
    a2 = v20;
    a4 = v19;
    sub_1AD3C757C(v27, v25);
  }

  else
  {
    v26 = 0;
  }

  v28 = sub_1ADB06370();
  v29 = swift_allocObject();
  v29[2] = a10;
  v29[3] = a6;
  v29[4] = a3;
  v29[5] = a4;
  v29[6] = a2;
  aBlock[4] = sub_1AD4C589C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD4B7970;
  aBlock[3] = &block_descriptor_27_2;
  v30 = _Block_copy(aBlock);

  v31 = a2;

  [a5 updateProvisioningRequestForEnableRequirements:v16 externalizedAuth:v26 sid:v28 completion:v30];
  _Block_release(v30);
}

uint64_t sub_1AD4C5668(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v11 = a2;
    v12 = sub_1ADB05CB0();
    v13 = [objc_opt_self() errorWithUnderlyingError:v12 defaultSeverity:5];

    swift_beginAccess();
    v14 = *(a3 + 16);
    *(a3 + 16) = v13;

    swift_beginAccess();
    v15 = *(a3 + 16);
    if (!v15)
    {

      goto LABEL_8;
    }

    v16 = v15;
    v17 = sub_1ADB06370();
    [v16 addInternalDebugDescription_];

    goto LABEL_6;
  }

  if (a1)
  {
    swift_beginAccess();
    v17 = *(a4 + 16);
    *(a4 + 16) = a1;
    v20 = a1;
LABEL_6:
  }

LABEL_8:
  swift_beginAccess();
  return a5(a7, *(a3 + 16) != 0);
}

void sub_1AD4C57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = v10;
    v12 = v10;
    v13 = 1;
  }

  else
  {
    swift_beginAccess();
    v14 = *(a7 + 16);
    v11 = v14;
    v12 = v14;
    v13 = 0;
  }

  a5(v12, v13);
}

void sub_1AD4C58AC(void *a1, void *a2, void *a3)
{
  v6 = [a1 authorizationKeyAttestation];
  [a2 setAuthorizationKeyAttestation_];

  v7 = [a1 deviceEncryptionKeyAttestation];
  [a2 setIsoDeviceEncryptionAttestation_];

  v8 = [a1 deviceEncryptionKeyAuthorization];
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

  [a2 setIsoDeviceEncryptionAuthorization_];

  v14 = [a1 transactionKeyCASDAuthorization];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1ADB05D70();
    v18 = v17;

    v19 = sub_1ADB05D50();
    sub_1AD3C757C(v16, v18);
  }

  else
  {
    v19 = 0;
  }

  [a2 setTransactionKeyAuthorization_];

  v20 = [a1 transactionKeyCASDSignature];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1ADB05D70();
    v24 = v23;

    v25 = sub_1ADB05D50();
    sub_1AD3C757C(v22, v24);
  }

  else
  {
    v25 = 0;
  }

  [a2 setTransactionKeySignature_];

  v26 = [a1 transactionKeyCASDAttestation];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1ADB05D70();
    v30 = v29;

    v31 = sub_1ADB05D50();
    sub_1AD3C757C(v28, v30);
  }

  else
  {
    v31 = 0;
  }

  [a2 setTransactionKeyAttestation_];

  v32 = [a1 progenitorKeyCASDAttestation];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1ADB05D70();
    v36 = v35;

    v37 = sub_1ADB05D50();
    sub_1AD3C757C(v34, v36);
  }

  else
  {
    v37 = 0;
  }

  [a2 setProgenitorKeyCASDAttestation_];

  v38 = [a1 transactionKeys];
  [a2 setTransactionKeys_];

  v39 = [a1 serverAttestedProvisioningData];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1ADB05D70();
    v43 = v42;

    v44 = sub_1ADB05D50();
    sub_1AD3C757C(v41, v43);
  }

  else
  {
    v44 = 0;
  }

  [a2 setServerAttestedProvisioningData_];

  v45 = [a3 accountKeyIdentifier];
  [a2 setIdentityAccountKeyIdentifier_];
}

void sub_1AD4C5C50(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v8 = a1;
    sub_1AD4C58AC(v8, a3, a4);
    a5(0);
  }

  else
  {
    a5(a2);
  }
}

void sub_1AD4C5CE4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, BOOL), uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  if (*(a2 + 48))
  {

    v13 = a6;
LABEL_3:
    swift_beginAccess();
    a4(a6, *(a3 + 16) != 0);

    return;
  }

  v14 = *(a2 + 24);

  v15 = a6;
  v16 = [v14 identityCredential];
  if (!v16)
  {
    goto LABEL_3;
  }

  v17 = v16;
  v18 = [v16 isoCredentialIdentifier];
  v46 = v15;
  if (v18)
  {
    sub_1ADB063B0();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [a1 setSubCredentialIdentifier_];

  v21 = [v17 attestations];
  if (v21)
  {
    v22 = v21;

    sub_1AD4C58AC(v22, a1, v17);
    swift_beginAccess();
    a4(v46, *(a3 + 16) != 0);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v23 = sub_1ADB05FA0();
    __swift_project_value_buffer(v23, qword_1EB59AB68);

    v24 = sub_1ADB05F80();
    v25 = sub_1ADB06860();

    v45 = v20;
    if (os_log_type_enabled(v24, v25))
    {
      buf = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *buf = 136315138;
      v26 = [*(a2 + 56) sid];
      v27 = sub_1ADB063B0();
      v42 = v25;
      v29 = v28;

      v30 = sub_1AD3CA88C(v27, v29, aBlock);

      *(buf + 4) = v30;
      _os_log_impl(&dword_1AD337000, v24, v42, "[%s] Generating identity provisioning attestations", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1B26F9F20](v44, -1, -1);
      MEMORY[0x1B26F9F20](buf, -1, -1);
    }

    v31 = *(a2 + 16);
    swift_beginAccess();
    v32 = *(v31 + 72);
    v33 = *(v31 + 80);
    v34 = v32;
    v35 = [v34 targetDevice];
    if (v35)
    {
      v36 = v35;
      if ([v35 respondsToSelector_])
      {
        v37 = swift_allocObject();
        v37[2] = a1;
        v37[3] = v17;
        v37[4] = sub_1AD4C6204;
        v37[5] = v12;
        v38 = a1;
        v39 = v17;

        if (v45)
        {
          v40 = sub_1ADB06370();
        }

        else
        {
          v40 = 0;
        }

        aBlock[4] = sub_1AD4C6210;
        aBlock[5] = v37;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD4B7970;
        aBlock[3] = &block_descriptor_36_3;
        v41 = _Block_copy(aBlock);

        [v36 generateIdentityProvisioningAttestationsWithISOCredential:v40 pairingID:0 completion:v41];
        _Block_release(v41);

        swift_unknownObjectRelease();
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
}

id ProvisioningCarKeyStepRequestInvite.__allocating_init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = &v7[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation];
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v7[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_isPendingEndTransferAuthorization] = 0;
  *&v7[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context] = a1;
  v11 = &v7[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential];
  *v11 = *a2;
  *(v11 + 2) = v8;
  v11[24] = v9;
  *&v7[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ProvisioningCarKeyStepRequestInvite.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = &v3[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation];
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v3[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_isPendingEndTransferAuthorization] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context] = a1;
  LOBYTE(v5) = *(a2 + 24);
  v6 = &v3[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential];
  *v6 = *a2;
  *(v6 + 2) = v4;
  v6[24] = v5;
  *&v3[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ProvisioningCarKeyStepRequestInvite();
  return objc_msgSendSuper2(&v8, sel_init);
}

id ProvisioningCarKeyStepRequestInvite.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningCarKeyStepRequestInvite.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningCarKeyStepRequestInvite();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AD4C64E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for ProvisioningCarKeyStepRequestInvite();
  v9 = objc_allocWithZone(v8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = &v9[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation];
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  v9[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_isPendingEndTransferAuthorization] = 0;
  *&v9[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context] = a1;
  v13 = &v9[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential];
  *v13 = *a2;
  *(v13 + 2) = v10;
  v13[24] = v11;
  *&v9[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState] = a3;
  v15.receiver = v9;
  v15.super_class = v8;
  result = objc_msgSendSuper2(&v15, sel_init);
  *a4 = result;
  return result;
}

uint64_t sub_1AD4C65E4()
{
  v0 = sub_1ADB06410();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADB06400();
  v4 = sub_1ADB063C0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t static ProvisioningCarKeyStepRequestInvite.archive(output:)()
{
  v0 = sub_1ADB06410();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADB06400();
  v4 = sub_1ADB063C0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1AD4C67CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1ADB06410();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1ADB06400();
  result = sub_1ADB063D0();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static ProvisioningCarKeyStepRequestInvite.unarchive(outputData:)()
{
  v0 = sub_1ADB06410();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1ADB06400();
  return sub_1ADB063D0();
}

void sub_1AD4C68EC(uint64_t a1, unint64_t a2, void *a3, char a4, char a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, char a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v20 = sub_1ADB05FA0();
  __swift_project_value_buffer(v20, qword_1EB59AB68);

  v21 = sub_1ADB05F80();
  v22 = sub_1ADB06860();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1AD3CA88C(a1, a2, &aBlock);
    _os_log_impl(&dword_1AD337000, v21, v22, "[%s] ProvisioningCarKeyStepRequestInvite: Requesting auth for invite", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1B26F9F20](v24, -1, -1);
    MEMORY[0x1B26F9F20](v23, -1, -1);
  }

  v25 = [a3 baseShareForPassTransferWithIsForCompanion_];
  if (!v25)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  v27 = a7;
  if ((a4 & 1) == 0)
  {
LABEL_10:
    v31 = [objc_allocWithZone(PKPartialShareInvitation) initWithShare:v26 pass:a8];
    [v31 setSharingInvitationFlow_];
    v46 = PKShareTransferAuthorizationPaymentRequest(v31);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = -1;
    v45 = objc_opt_self();
    v44 = sub_1ADB06370();
    v33 = swift_allocObject();
    *(v33 + 16) = a5;
    *(v33 + 24) = a6;
    *(v33 + 32) = v27;
    *(v33 + 40) = a1;
    *(v33 + 48) = a2;
    *(v33 + 56) = a11;
    *(v33 + 64) = a12;
    *(v33 + 72) = a13;
    *(v33 + 80) = v31;
    *(v33 + 88) = v32;
    *(v33 + 96) = a14;
    *(v33 + 104) = a8;
    *(v33 + 112) = a3;
    v56 = sub_1AD4CC148;
    v57 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1AD4C7BA4;
    v55 = &block_descriptor_96;
    v49 = _Block_copy(&aBlock);
    v34 = a13;
    v35 = v31;

    v36 = a8;
    v37 = a3;

    v38 = a6;
    v39 = v27;
    v40 = a12;

    v41 = swift_allocObject();
    v41[2] = v32;
    v41[3] = a15;
    v41[4] = a16;
    v56 = sub_1AD4CC1E8;
    v57 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1AD471E08;
    v55 = &block_descriptor_102;
    v42 = _Block_copy(&aBlock);

    v43 = [v45 authorizeForRequest:v46 presentationSceneIdentifier:v44 authHandler:v49 completion:v42];
    _Block_release(v42);
    _Block_release(v49);

    return;
  }

  v28 = [a6 targetDevice];
  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = [v28 deviceDescriptionForPaymentWebService_];
  if (v29)
  {
    v30 = v29;
    swift_unknownObjectRelease();
    [v26 setRecipientNickname_];

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void sub_1AD4C6DB4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, int a5, void *a6, int a7, void *a8, unint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17)
{
  v55 = a8;
  v59 = a3;
  v60 = a4;
  v57 = a1;
  v58 = a2;
  v18 = sub_1ADB05E30();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a6 targetDevice];
  if (!v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v56 = a13;
  if (([v22 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v24 = [v23 supportsSharingInAChain];
  swift_unknownObjectRelease();
  if (!v24)
  {
LABEL_9:
    v42 = sub_1ADB05D50();
    v43 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v45 = swift_allocObject();
    v45[2] = a14;
    v45[3] = v43;
    v46 = v59;
    v47 = v60;
    v45[4] = a16;
    v45[5] = v46;
    v45[6] = v47;
    v65 = sub_1AD4CC278;
    v66 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1AD4C7A30;
    v64 = &block_descriptor_112;
    v48 = _Block_copy(&aBlock);

    v49 = a16;

    [a17 createShareWithPartialShare:v56 authorization:v42 completion:{v48, v55}];
    _Block_release(v48);

    return;
  }

  v25 = objc_opt_self();
  sub_1ADB05E20();
  sub_1ADB05E00();
  (*(v19 + 8))(v21, v18);
  v26 = sub_1ADB06370();

  v27 = [v25 createDestinationWithIdentifier_];

  v28 = objc_opt_self();
  sub_1AD3DAB68();
  v29 = sub_1ADB068B0();
  v30 = [v28 createHandleForDescriptor:v27 queue:v29];

  if (v30)
  {
    v31 = [a11 targetDevice];
    if (v31)
    {
      v32 = v31;
      if ([v31 respondsToSelector_])
      {
        v33 = [v27 contraChannelTransportIdentifier];
        sub_1ADB063B0();

        v34 = swift_allocObject();
        v55 = v27;
        v35 = v34;
        v34[2] = a14;
        v34[3] = v30;
        v34[4] = a15;
        v34[5] = a16;
        v36 = v60;
        v34[6] = v59;
        v34[7] = v36;

        v37 = v30;

        v38 = a16;

        v39 = sub_1ADB06370();
        v40 = sub_1ADB05D50();
        v65 = sub_1AD4CC288;
        v66 = v35;
        aBlock = MEMORY[0x1E69E9820];
        v62 = 1107296256;
        v63 = sub_1AD4C73A8;
        v64 = &block_descriptor_118_0;
        v41 = _Block_copy(&aBlock);

        [v32 createShareInvitationForPartialShareInvitation:v56 existingTransportIdentifier:v39 authorization:v40 completion:v41];
        _Block_release(v41);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_17:
    __break(1u);
    return;
  }

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v50 = sub_1ADB05FA0();
  __swift_project_value_buffer(v50, qword_1EB59AB68);

  v51 = sub_1ADB05F80();
  v52 = sub_1ADB06860();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_1AD3CA88C(v55, a9, &aBlock);
    _os_log_impl(&dword_1AD337000, v51, v52, "[%s] ProvisioningCarKeyStepRequestInvite: Failed to create handle for local transfer", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1B26F9F20](v54, -1, -1);
    MEMORY[0x1B26F9F20](v53, -1, -1);
  }

  v59(0);
}

void sub_1AD4C73A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_1AD4C7450(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void (*a8)(uint64_t))
{
  if (!a1 || ((objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0) ? (v15 = a2 == 0) : (v15 = 1), v15))
  {
    if (a3)
    {
      v16 = sub_1ADB05CB0();
    }

    else
    {
      v16 = 0;
    }

    v33 = [objc_opt_self() errorWithUnderlyingError:v16 defaultSeverity:4];

    v34 = sub_1ADB06370();
    [v33 addInternalDebugDescription_];

    swift_beginAccess();
    v35 = *(a4 + 16);
    v36 = *(a4 + 24);
    *(a4 + 16) = v33;
    *(a4 + 24) = 0;
    v37 = *(a4 + 32);
    *(a4 + 32) = 2;
    v22 = v33;
    sub_1AD4CC25C(v35, v36, v37);
    a8(0);
    goto LABEL_15;
  }

  v17 = v14;
  swift_beginAccess();
  v19 = *(a4 + 16);
  v18 = *(a4 + 24);
  *(a4 + 16) = v17;
  *(a4 + 24) = a5;
  LOBYTE(v17) = *(a4 + 32);
  *(a4 + 32) = 1;
  v20 = a1;
  v21 = a5;
  v22 = a2;
  sub_1AD4CC25C(v19, v18, v17);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    a8(1);

LABEL_15:
    return;
  }

  v24 = Strong;
  v25 = [a7 uniqueID];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1ADB063B0();
    v29 = v28;

    v30 = &v24[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation];
    v31 = *&v24[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation];
    *v30 = a2;
    *(v30 + 1) = v27;
    *(v30 + 2) = v29;
    v32 = v22;
    sub_1AD4C9BBC(v31);

    goto LABEL_12;
  }

  __break(1u);
}

void sub_1AD4C76AC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v45 = a8;
  v46 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_1ADB05D20();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD429174(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1AD3D0E3C(v15, &qword_1EB59AE30);
    if (!a3)
    {
LABEL_4:
      v20 = [objc_opt_self() errorWithUnderlyingError:a3 defaultSeverity:4];

      v21 = sub_1ADB06370();
      [v20 addInternalDebugDescription_];

      swift_beginAccess();
      v22 = *(a4 + 16);
      v23 = *(a4 + 24);
      *(a4 + 16) = v20;
      *(a4 + 24) = 0;
      v24 = *(a4 + 32);
      *(a4 + 32) = 2;
      v25 = v20;
      sub_1AD4CC25C(v22, v23, v24);
      v46(0);

      return;
    }

LABEL_3:
    a3 = sub_1ADB05CB0();
    goto LABEL_4;
  }

  (*(v17 + 32))(v19, v15, v16);
  if (!a2)
  {
    (*(v17 + 8))(v19, v16);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v26 = a2;
  v27 = sub_1ADB05CD0();
  v29 = v28;
  swift_beginAccess();
  v30 = *(a4 + 16);
  v31 = *(a4 + 24);
  *(a4 + 16) = v27;
  *(a4 + 24) = v29;
  v32 = *(a4 + 32);
  *(a4 + 32) = 0;
  sub_1AD4CC25C(v30, v31, v32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v34 = Strong;
  v44 = v26;
  v35 = [a6 uniqueID];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1ADB063B0();
    v39 = v38;

    v40 = &v34[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation];
    v41 = *&v34[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation];
    *v40 = a2;
    *(v40 + 1) = v37;
    *(v40 + 2) = v39;
    v26 = v44;
    v42 = v44;
    sub_1AD4C9BBC(v41);

LABEL_9:
    v46(1);

    (*(v17 + 8))(v19, v16);
    return;
  }

  __break(1u);
}

uint64_t sub_1AD4C7A30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1ADB05D00();
    v12 = sub_1ADB05D20();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_1ADB05D20();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_1AD3D0E3C(v10, &qword_1EB59AE30);
}

uint64_t sub_1AD4C7BA4(uint64_t a1, void *a2, const void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = sub_1ADB05D70();
  v9 = v8;

  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v5(v7, v9, sub_1AD4CC270, v11);

  sub_1AD3C757C(v7, v9);
}

void sub_1AD4C7C84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  v5 = *(a2 + 32);
  if (v5 == 255)
  {
    v9 = [objc_opt_self() errorWithSeverity_];
    a3();
  }

  else
  {
    v8 = a2 + 16;
    v6 = *(a2 + 16);
    v7 = *(v8 + 8);
    sub_1AD4CC1F4(v6, v7, v5);
    (a3)(v6, v7, v5);
    sub_1AD4CC25C(v6, v7, v5);
  }
}

void sub_1AD4C7D5C()
{
  v1 = PKPassKitBundle();
  if (!v1)
  {
    __break(1u);
LABEL_9:

    __break(1u);
    return;
  }

  v2 = v1;
  v3 = sub_1ADB06370();
  v4 = sub_1ADB06370();
  v5 = sub_1ADB06370();
  v0 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  if (!v0)
  {
    sub_1ADB063B0();
    v0 = sub_1ADB06370();
  }

  sub_1AD4C9794();
  v6 = PKPassKitBundle();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_1ADB06370();

  v9 = sub_1ADB06370();
  v10 = sub_1ADB06370();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  if (!v11)
  {
    sub_1ADB063B0();
    v11 = sub_1ADB06370();
  }

  [objc_opt_self() errorWithTitle:v0 message:v11 severity:4];
}

void sub_1AD4C7F48(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(uint64_t, void *, uint64_t), uint64_t a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v15 = a9;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = a1;
    a2(0, 1);
    v26 = v18;
    v19 = a6;
    a4(v17, a6, 1);
  }

  else
  {
    [a6 invalidate];
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1ADB05FA0();
    __swift_project_value_buffer(v20, qword_1EB59AB68);

    v21 = sub_1ADB05F80();
    v22 = sub_1ADB06860();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v24 = v27;
      *v23 = 136315138;
      *(v23 + 4) = sub_1AD3CA88C(a7, a8, &v27);
      _os_log_impl(&dword_1AD337000, v21, v22, "[%s] ProvisioningCarKeyStepRequestInvite: Received non invitation message", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v25 = v24;
      v15 = a9;
      MEMORY[0x1B26F9F20](v25, -1, -1);
      MEMORY[0x1B26F9F20](v23, -1, -1);
    }

    a2(1, 1);
    a4(v15, 0, 2);
  }
}

uint64_t sub_1AD4C81A0(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void, void, void), uint64_t a6, uint64_t a7)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1ADB05FA0();
  __swift_project_value_buffer(v13, qword_1EB59AB68);

  v14 = a1;
  v15 = sub_1ADB05F80();
  v16 = sub_1ADB06860();

  if (os_log_type_enabled(v15, v16))
  {
    v24 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_1AD3CA88C(a3, a4, &v25);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a2 & 1;
    *(v17 + 18) = 2112;
    if (a1)
    {
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v17 + 20) = v21;
    *v18 = v22;
    _os_log_impl(&dword_1AD337000, v15, v16, "[%s] ProvisioningCarKeyStepRequestInvite: Failed to get invitation with didTimeout: %{BOOL}d error: %@", v17, 0x1Cu);
    sub_1AD3D0E3C(v18, &unk_1EB59A340);
    MEMORY[0x1B26F9F20](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B26F9F20](v19, -1, -1);
    MEMORY[0x1B26F9F20](v17, -1, -1);

    a5 = v24;
  }

  else
  {
  }

  return a5(a7, 0, 2);
}

void sub_1AD4C83C0()
{
  v1 = PKPassKitBundle();
  if (!v1)
  {
    __break(1u);
LABEL_9:

    __break(1u);
    return;
  }

  v2 = v1;
  v3 = sub_1ADB06370();
  v4 = sub_1ADB06370();
  v5 = sub_1ADB06370();
  v0 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  if (!v0)
  {
    sub_1ADB063B0();
    v0 = sub_1ADB06370();
  }

  v6 = PKPassKitBundle();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_1ADB06370();
  v9 = sub_1ADB06370();
  v10 = sub_1ADB06370();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  if (!v11)
  {
    sub_1ADB063B0();
    v11 = sub_1ADB06370();
  }

  [objc_opt_self() errorWithTitle:v0 message:v11 severity:5];
}

void sub_1AD4C85A4(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void *, void, uint64_t), uint64_t a8, void *a9, char a10, void *a11, void *a12)
{
  if ((a1 & 1) == 0 || a2)
  {
    a3();
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v25 = sub_1ADB05FA0();
    __swift_project_value_buffer(v25, qword_1EB59AB68);

    v26 = sub_1ADB05F80();
    v27 = sub_1ADB06860();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1AD3CA88C(a5, a6, &aBlock);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1AD3CA88C(0xD000000000000016, 0x80000001ADBA1F30, &aBlock);
      _os_log_impl(&dword_1AD337000, v26, v27, "[%s] ProvisioningCarKeyStepRequestInvite: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v29, -1, -1);
      MEMORY[0x1B26F9F20](v28, -1, -1);
    }

    sub_1AD4C83C0();
    v31 = v30;
    if (a2)
    {
      v32 = sub_1ADB05CB0();
    }

    else
    {
      v32 = 0;
    }

    [v31 setUnderlyingError_];

    v33 = sub_1ADB06370();
    [v31 addInternalDebugDescription_];

    v36 = v31;
    a7(v31, 0, 2);
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    *(v19 + 32) = a10;
    *(v19 + 40) = a11;
    *(v19 + 48) = a12;
    *(v19 + 56) = a5;
    *(v19 + 64) = a6;
    *(v19 + 72) = a9;
    *(v19 + 80) = a7;
    *(v19 + 88) = a8;
    v42 = sub_1AD4CBFFC;
    v43 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1AD430434;
    v41 = &block_descriptor_64;
    v35 = _Block_copy(&aBlock);
    v20 = a12;

    v21 = a9;

    v22 = a11;

    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v23[5] = a6;
    v23[6] = a7;
    v23[7] = a8;
    v42 = sub_1AD4CC03C;
    v43 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1AD471E08;
    v41 = &block_descriptor_70;
    v24 = _Block_copy(&aBlock);

    [v21 waitForMessageWithTimeout:v35 messageHandler:v24 invalidationHandler:60.0];
    _Block_release(v24);
    _Block_release(v35);
  }
}

void sub_1AD4C89D8(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, unint64_t a10, void *a11, void (*a12)(void *, uint64_t, uint64_t), uint64_t a13)
{
  v81 = a12;
  v82 = a13;
  v79 = a11;
  v80 = a9;
  v18 = sub_1ADB05D20();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2(1, 1);
  (a4)(v22);
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v78 = a4;
    v25 = a1;
    v26 = [v24 url];
    sub_1ADB05D00();

    v27 = sub_1ADB05CD0();
    v29 = v28;
    (*(v19 + 8))(v21, v18);
    v30 = objc_opt_self();
    v31 = sub_1ADB06370();
    v32 = [v30 existingChannelForURL_];

    v33 = [a7 targetDevice];
    if (v33)
    {
      v34 = v33;
      if ([v33 respondsToSelector_])
      {
        v35 = [v34 supportsSharingInAChain];
      }

      else
      {
        v35 = 0;
      }

      swift_unknownObjectRelease();
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v45 = sub_1ADB05FA0();
      __swift_project_value_buffer(v45, qword_1EB59AB68);

      v46 = sub_1ADB05F80();
      v47 = sub_1ADB06860();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v76 = v32;
        v77 = a5;
        v49 = v48;
        v50 = v27;
        v51 = v25;
        v52 = swift_slowAlloc();
        aBlock[0] = v52;
        *v49 = 136315394;
        *(v49 + 4) = sub_1AD3CA88C(v80, a10, aBlock);
        *(v49 + 12) = 1024;
        *(v49 + 14) = v35 ^ 1;
        _os_log_impl(&dword_1AD337000, v46, v47, "[%s] ProvisioningCarKeyStepRequestInvite: Received invitation url and using legacy flow: %{BOOL}d", v49, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v52);
        v53 = v52;
        v25 = v51;
        v27 = v50;
        MEMORY[0x1B26F9F20](v53, -1, -1);
        v54 = v49;
        v32 = v76;
        a5 = v77;
        MEMORY[0x1B26F9F20](v54, -1, -1);
      }

      if (v35)
      {
        v55 = v25;

        v56 = objc_opt_self();
        sub_1AD3DAB68();
        v57 = sub_1ADB068B0();
        v58 = [v56 createHandleForDescriptor:v32 queue:v57];

        if (v58)
        {
          v59 = swift_allocObject();
          v60 = v82;
          v59[2] = v81;
          v59[3] = v60;
          v61 = v78;
          v59[4] = v58;
          v59[5] = v61;
          v62 = v80;
          v59[6] = a5;
          v59[7] = v62;
          v59[8] = a10;
          aBlock[4] = sub_1AD4CC04C;
          aBlock[5] = v59;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AD4B7970;
          aBlock[3] = &block_descriptor_76_0;
          v63 = _Block_copy(aBlock);

          v64 = v58;

          [v64 attachAndFetchMessage_];

          _Block_release(v63);
        }

        else
        {
          v78();

          v65 = sub_1ADB05F80();
          v66 = sub_1ADB06860();

          v67 = os_log_type_enabled(v65, v66);
          v68 = v80;
          if (v67)
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            aBlock[0] = v70;
            *v69 = 136315394;
            *(v69 + 4) = sub_1AD3CA88C(v68, a10, aBlock);
            *(v69 + 12) = 2080;
            *(v69 + 14) = sub_1AD3CA88C(0xD00000000000001DLL, 0x80000001ADBA1F70, aBlock);
            _os_log_impl(&dword_1AD337000, v65, v66, "[%s] ProvisioningCarKeyStepRequestInvite: %s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B26F9F20](v70, -1, -1);
            MEMORY[0x1B26F9F20](v69, -1, -1);
          }

          sub_1AD4C83C0();
          v72 = v71;
          [v71 setUnderlyingError_];
          v73 = sub_1ADB06370();
          [v72 addInternalDebugDescription_];

          v74 = v72;
          v81(v72, 0, 2);
        }
      }

      else
      {
        [v79 invalidate];
        v81(v27, v29, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a4();
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
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_1AD3CA88C(v80, a10, aBlock);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_1AD3CA88C(0xD000000000000018, 0x80000001ADBA1ED0, aBlock);
      _os_log_impl(&dword_1AD337000, v37, v38, "[%s] ProvisioningCarKeyStepRequestInvite: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v40, -1, -1);
      MEMORY[0x1B26F9F20](v39, -1, -1);
    }

    sub_1AD4C83C0();
    v42 = v41;
    [v41 setUnderlyingError_];
    v43 = sub_1ADB06370();
    [v42 addInternalDebugDescription_];

    v80 = v42;
    v81(v42, 0, 2);

    v44 = v80;
  }
}

void sub_1AD4C923C(void *a1, int a2, void (*a3)(uint64_t, id, uint64_t), int a4, id a5, void (*a6)(id), int a7, uint64_t a8, unint64_t a9)
{
  if (a1 && (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0))
  {
    v15 = v14;
    v16 = a1;
    v25 = a5;
    a3(v15, a5, 1);
  }

  else
  {
    a6([a5 invalidate]);
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1ADB05FA0();
    __swift_project_value_buffer(v17, qword_1EB59AB68);

    v18 = sub_1ADB05F80();
    v19 = sub_1ADB06860();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1AD3CA88C(a8, a9, &v26);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1AD3CA88C(0xD000000000000020, 0x80000001ADBA1F90, &v26);
      _os_log_impl(&dword_1AD337000, v18, v19, "[%s] ProvisioningCarKeyStepRequestInvite: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v21, -1, -1);
      MEMORY[0x1B26F9F20](v20, -1, -1);
    }

    sub_1AD4C83C0();
    v23 = v22;
    [v22 setUnderlyingError_];
    v24 = sub_1ADB06370();
    [v23 addInternalDebugDescription_];

    v16 = v23;
    a3(v23, 0, 2);
    v25 = v16;
  }
}

void sub_1AD4C94D4(char a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void *, void, uint64_t))
{
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1ADB06C10();
  if (a1)
  {
    v11 = 0x756F2064656D6954;
  }

  else
  {
    v11 = 0x64656C696146;
  }

  if (a1)
  {
    v12 = 0xE900000000000074;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  MEMORY[0x1B26F6530](v11, v12);

  v13 = MEMORY[0x1B26F6530](0xD000000000000017, 0x80000001ADBA1F50);
  v15 = v25;
  v14 = v26;
  a2(v13);
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v16 = sub_1ADB05FA0();
  __swift_project_value_buffer(v16, qword_1EB59AB68);

  v17 = sub_1ADB05F80();
  v18 = sub_1ADB06860();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1AD3CA88C(a4, a5, &v25);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1AD3CA88C(v15, v14, &v25);
    _os_log_impl(&dword_1AD337000, v17, v18, "[%s] ProvisioningCarKeyStepRequestInvite: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v20, -1, -1);
    MEMORY[0x1B26F9F20](v19, -1, -1);
  }

  sub_1AD4C83C0();
  v22 = v21;
  [v21 setUnderlyingError_];
  v23 = sub_1ADB06370();
  [v22 addInternalDebugDescription_];

  v24 = v22;
  a6(v22, 0, 2);
}

uint64_t sub_1AD4C9794()
{
  v1 = 0xD000000000000036;
  v2 = v0 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential;
  if (*(v0 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential + 24))
  {
    return 0xD00000000000003ALL;
  }

  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = [*v2 underlyingPaymentPass];
  if (!v7)
  {
    sub_1AD3CC2E0(v4, v5, v6, 0);
    return 0xD00000000000003ALL;
  }

  v8 = v7;
  v9 = [objc_opt_self() isOwnerPass_];
  sub_1AD3CC2E0(v4, v5, v6, 0);

  if (!v9)
  {
    return 0xD00000000000003ALL;
  }

  if (v9 == 1)
  {
    return v1;
  }

  if (v9 == 2)
  {
    return 0xD000000000000037;
  }

  result = sub_1ADB06CE0();
  __break(1u);
  return result;
}

void sub_1AD4C98E8(id a1, void (*a2)(id), uint64_t a3)
{
  v6 = a1;
  if (*(v3 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_isPendingEndTransferAuthorization) == 1)
  {
    v7 = *(v3 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context);
    swift_beginAccess();
    a1 = [*(v7 + 152) endTransferAuthorization];
  }

  if ((v6 & 1) != 0 || (v8 = *(v3 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_createdShareInformation)) == 0)
  {
    a2(a1);
  }

  else
  {
    v9 = *(v3 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context);
    v11 = *(v9 + 48);
    v10 = *(v9 + 56);
    sub_1AD4C9BFC(v8);
    v12 = v10;
    v13 = v11;
    v14 = [v13 targetDevice];
    if (v14)
    {
      v15 = v14;

      v16 = sub_1ADB06370();

      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = a3;
      aBlock[4] = sub_1AD42F7F8;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD3D96E8;
      aBlock[3] = &block_descriptor_32;
      v18 = _Block_copy(aBlock);
      v19 = v8;

      [v15 revokeShareForPassIdentifier:v16 share:v19 shouldCascade:0 completion:v18];

      _Block_release(v18);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1AD4C9B20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1AD4C9B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void *sub_1AD4C9BBC(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1AD4C9BFC(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4C9C54(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void, void, void), uint64_t a8, void *a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_isPendingEndTransferAuthorization] = 0;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context);
    v18 = v16;

    swift_beginAccess();
    v19 = *(v17 + 152);

    [v19 endTransferAuthorization];
  }

  if (a3)
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1ADB05FA0();
    __swift_project_value_buffer(v20, qword_1EB59AB68);

    sub_1AD433564(a1, a2, 1);
    v21 = sub_1ADB05F80();
    v22 = sub_1ADB06860();

    sub_1AD4334E0(a1, a2, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v25 = a7;
      v26 = v39;
      *v23 = 136315394;
      *(v23 + 4) = sub_1AD3CA88C(a5, a6, &v39);
      *(v23 + 12) = 2112;
      sub_1AD4B9D7C();
      swift_allocError();
      *v27 = a1;
      sub_1AD4335B0(a1);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_1AD337000, v21, v22, "[%s] ProvisioningCarKeyStepRequestInvite: Failed to request invitation with error: %@", v23, 0x16u);
      sub_1AD3D0E3C(v24, &unk_1EB59A340);
      MEMORY[0x1B26F9F20](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v29 = v26;
      a7 = v25;
      MEMORY[0x1B26F9F20](v29, -1, -1);
      MEMORY[0x1B26F9F20](v23, -1, -1);
    }

    v31 = 0;
    v32 = 2;
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v33 = sub_1ADB05FA0();
    __swift_project_value_buffer(v33, qword_1EB59AB68);

    v34 = sub_1ADB05F80();
    v35 = sub_1ADB06860();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1AD3CA88C(a5, a6, &v39);
      _os_log_impl(&dword_1AD337000, v34, v35, "[%s] ProvisioningCarKeyStepRequestInvite: Successfully requested invitation", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1B26F9F20](v37, -1, -1);
      MEMORY[0x1B26F9F20](v36, -1, -1);
    }

    a9 = a1;
    v31 = a2;
    v32 = 1;
  }

  return a7(a9, v31, v32);
}

uint64_t sub_1AD4CA048(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState);

  v111 = a5;

  v11 = [v10 sid];
  v12 = sub_1ADB063B0();
  v14 = v13;

  if (*(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential + 24) || (v18 = [*(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential) remoteCredential]) == 0)
  {
LABEL_2:

    v15 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      (*(v16 + 32))(v15, 0, 2, a4, v111, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v19 = v18;
  v20 = [v18 serialNumber];
  if (!v20)
  {

    goto LABEL_2;
  }

  v21 = v20;
  v22 = sub_1ADB063B0();
  v24 = v23;

  v25 = [v19 passTypeIdentifier];
  if (!v25)
  {

    goto LABEL_2;
  }

  v113 = v12;
  v26 = v25;
  v107 = sub_1ADB063B0();
  v98 = v27;

  sub_1AD4C7D5C();
  v29 = v28;
  v30 = sub_1ADB06370();
  [v29 addInternalDebugDescription_];

  *(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_isPendingEndTransferAuthorization) = 1;
  v31 = *(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context);
  swift_beginAccess();
  [*(v31 + 152) startTransferAuthorization];
  v32 = [v19 personalizedVehicleIdentifier];
  v101 = v14;
  v94 = v19;
  v99 = v24;
  v112 = v22;
  if (v32)
  {
    v33 = v32;
    v103 = sub_1ADB063B0();
    v97 = v34;
  }

  else
  {
    v103 = 0;
    v97 = 0xE000000000000000;
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v37[2] = a3;
  v37[3] = a4;
  v37[4] = v111;
  v38 = swift_allocObject();
  v108 = &v93;
  v39 = v113;
  *(v38 + 2) = v36;
  *(v38 + 3) = v39;
  *(v38 + 4) = v101;
  *(v38 + 5) = sub_1AD4CBE78;
  *(v38 + 6) = v37;
  *(v38 + 7) = v29;
  v96 = v38;
  *(v38 + 8) = a1;
  v40 = *(*&a1[OBJC_IVAR____TtC11PassKitCore38ProvisioningContinuityCarClientManager_coordinator] + 24);
  MEMORY[0x1EEE9AC00](v38);
  v92[2] = sub_1AD4CBEB8;
  v92[3] = v41;
  v109 = v41;
  v104 = a3;
  swift_retain_n();
  swift_retain_n();
  v100 = v36;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v42 = v29;
  v43 = a1;
  v95 = v42;
  v110 = v43;
  v93 = v37;

  os_unfair_lock_lock(v40 + 4);
  sub_1AD4CBED4(&aBlock);
  os_unfair_lock_unlock(v40 + 4);
  v44 = aBlock;
  if (aBlock >> 62)
  {
LABEL_46:
    v45 = sub_1ADB06D00();
  }

  else
  {
    v45 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v104;
  if (v45)
  {
    v47 = &v110[OBJC_IVAR____TtC11PassKitCore38ProvisioningContinuityCarClientManager_commonCompletion];
    v48 = *&v110[OBJC_IVAR____TtC11PassKitCore38ProvisioningContinuityCarClientManager_commonCompletion];
    v49 = v96;
    *v47 = sub_1AD4CBE84;
    v47[1] = v49;

    sub_1AD3C5FB8(v48);
    v50 = objc_allocWithZone(PKSharingInvitationRequestMessage);
    v51 = sub_1ADB06370();
    v52 = sub_1ADB06370();
    v53 = sub_1ADB06370();
    v103 = [v50 initWithPassTypeIdentifier:v51 passSerialNumber:v52 personalizedVehicleIdentifier:v53];

    a4 = 0;
    v108 = (v44 & 0xC000000000000001);
    v107 = v44 & 0xFFFFFFFFFFFFFF8;
    v102 = v117;
    v106 = v44;
    v105 = v45;
    while (1)
    {
      if (v108)
      {
        v59 = MEMORY[0x1B26F6CC0](a4, v44);
        v60 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:

          goto LABEL_44;
        }
      }

      else
      {
        if (a4 >= *(v107 + 16))
        {
          __break(1u);
          goto LABEL_46;
        }

        v59 = *(v44 + 8 * a4 + 32);
        v60 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          goto LABEL_29;
        }
      }

      v112 = v59;
      v113 = v60;
      v61 = [v59 uniqueID];
      v62 = sub_1ADB063B0();
      v64 = v63;

      v65 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v66 = swift_allocObject();
      v66[2] = v65;
      v66[3] = v62;
      v66[4] = v64;
      v67 = *(v109 + 24);
      v68 = MEMORY[0x1EEE9AC00](v66);
      v92[-4] = v69;
      v92[-3] = v62;
      v92[-2] = v64;
      MEMORY[0x1EEE9AC00](v68);
      v92[-2] = sub_1AD4CBEFC;
      v92[-1] = v70;

      os_unfair_lock_lock(v67 + 4);
      sub_1AD4CBF1C(&aBlock);
      os_unfair_lock_unlock(v67 + 4);
      v71 = v117[0];
      if (LOBYTE(v117[0]) == 255)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v73 = Strong;

          sub_1AD431E14();
        }
      }

      else
      {
        v55 = aBlock;
        v54 = v116;
        sub_1AD426AE8(aBlock, v116, v117[0] & 1);

        v56 = swift_allocObject();
        *(v56 + 16) = sub_1AD4CBEF0;
        *(v56 + 24) = v66;
        v117[2] = sub_1AD4CBF38;
        v117[3] = v56;
        aBlock = MEMORY[0x1E69E9820];
        v116 = 1107296256;
        v117[0] = sub_1AD3D96E8;
        v117[1] = &block_descriptor_29_0;
        v57 = _Block_copy(&aBlock);
        v58 = v55;

        [v58 sendMessage:v103 completion:v57];

        _Block_release(v57);
        sub_1AD433A98(v55, v54, v71);
        sub_1AD433A98(v55, v54, v71);
      }

      ++a4;
      v44 = v106;
      if (v113 == v105)
      {
        goto LABEL_30;
      }
    }
  }

  swift_beginAccess();
  v74 = swift_unknownObjectWeakLoadStrong();
  if (v74)
  {
    *(v74 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_isPendingEndTransferAuthorization) = 0;
    v75 = v74;
  }

  else
  {
  }

  v76 = swift_unknownObjectWeakLoadStrong();
  if (v76)
  {
    v77 = *(v76 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context);
    v78 = v76;

    swift_beginAccess();
    v79 = *(v77 + 152);

    [v79 endTransferAuthorization];
  }

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v80 = sub_1ADB05FA0();
  __swift_project_value_buffer(v80, qword_1EB59AB68);
  v81 = v101;

  v82 = sub_1ADB05F80();
  v83 = sub_1ADB06860();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v114[0] = v86;
    *v84 = 136315394;
    *(v84 + 4) = sub_1AD3CA88C(v113, v81, v114);
    *(v84 + 12) = 2112;
    sub_1AD4B9D7C();
    swift_allocError();
    *v87 = 1;
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v84 + 14) = v88;
    *v85 = v88;
    _os_log_impl(&dword_1AD337000, v82, v83, "[%s] ProvisioningCarKeyStepRequestInvite: Failed to request invitation with error: %@", v84, 0x16u);
    sub_1AD3D0E3C(v85, &unk_1EB59A340);
    MEMORY[0x1B26F9F20](v85, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1B26F9F20](v86, -1, -1);
    MEMORY[0x1B26F9F20](v84, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v89 = *(v46 + 24);
    v90 = swift_getObjectType();
    (*(v89 + 32))(v95, 0, 2, a4, v111, v90, v89);

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_44:

  v91 = v95;

  return swift_bridgeObjectRelease_n();
}

void sub_1AD4CADE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = *(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState);

  v12 = [v11 sid];
  v13 = sub_1ADB063B0();
  v15 = v14;

  if (*(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential + 24))
  {
    goto LABEL_2;
  }

  v19 = [*(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_credential) remoteCredential];
  if (!v19)
  {
    goto LABEL_2;
  }

  v20 = v19;
  v21 = [v19 serialNumber];
  if (!v21)
  {

LABEL_2:

    goto LABEL_3;
  }

  v22 = v21;
  v39 = a1;
  v23 = [v20 passTypeIdentifier];
  if (!v23)
  {

LABEL_3:
    v16 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      (*(v17 + 32))(v16, 0, 2, a4, a5, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v24 = v23;
  v25 = [v20 personalizedVehicleIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_1ADB063B0();
  }

  v27 = objc_allocWithZone(PKSharingInvitationRequestMessage);
  v28 = sub_1ADB06370();

  v38 = [v27 initWithPassTypeIdentifier:v24 passSerialNumber:v22 personalizedVehicleIdentifier:v28];

  sub_1AD4C7D5C();
  v30 = v29;
  v31 = swift_allocObject();
  v31[2] = sub_1AD4CC308;
  v31[3] = v10;
  v31[4] = v39;
  v31[5] = v13;
  v31[6] = v15;
  v31[7] = v30;
  v44 = sub_1AD4CBF40;
  v45 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AD430434;
  v43 = &block_descriptor_39_1;
  v32 = _Block_copy(&aBlock);

  v33 = v39;

  v34 = v30;

  v35 = swift_allocObject();
  v35[2] = v13;
  v35[3] = v15;
  v35[4] = sub_1AD4CC308;
  v35[5] = v10;
  v35[6] = v34;
  v44 = sub_1AD4CBF58;
  v45 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AD43056C;
  v43 = &block_descriptor_45_2;
  v36 = _Block_copy(&aBlock);

  v37 = v34;

  [v33 sendMessageAndWaitForReply:v38 timeout:v32 messageHandler:v36 invalidationHandler:0.0];
  _Block_release(v36);
  _Block_release(v32);
}

uint64_t sub_1AD4CB234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a7;
  v12[4] = a8;
  v13 = *(a5 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState);

  v14 = [v13 sid];
  v50 = sub_1ADB063B0();
  v51 = v15;

  v16 = *(a5 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context);
  swift_beginAccess();
  v48 = *(v16 + 64);
  v17 = *(v16 + 72);
  v18 = *(v16 + 80);
  v19 = objc_opt_self();
  v52 = v18;
  v20 = v17;
  v21 = sub_1ADB06370();
  v22 = [v19 createWithRemoteAddress_];

  v23 = objc_opt_self();
  sub_1AD3DAB68();
  v24 = sub_1ADB068B0();
  v25 = [v23 createHandleForDescriptor:v22 queue:v24];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = objc_allocWithZone(PKSharingExternalInvitationRequestMessage);
    v28 = v25;
    v29 = sub_1ADB06370();
    v30 = [v27 initWithSharingSessionIdentifier_];

    v31 = swift_allocObject();
    *(v31 + 16) = sub_1AD4CBF68;
    *(v31 + 24) = v26;
    *(v31 + 32) = v50;
    *(v31 + 40) = v51;
    *(v31 + 48) = sub_1AD4CC308;
    *(v31 + 56) = v12;
    *(v31 + 64) = v28;
    *(v31 + 72) = v48;
    *(v31 + 80) = v20;
    *(v31 + 88) = v18;
    aBlock[4] = sub_1AD4CBFB8;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD3D96E8;
    aBlock[3] = &block_descriptor_58_0;
    v32 = _Block_copy(aBlock);
    v33 = v20;
    v34 = v52;
    v35 = v28;

    [v35 sendMessage:v30 completion:v32];
    _Block_release(v32);
  }

  else
  {
    v49 = a7;
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v36 = sub_1ADB05FA0();
    __swift_project_value_buffer(v36, qword_1EB59AB68);

    v37 = sub_1ADB05F80();
    v38 = sub_1ADB06860();

    v47 = v22;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_1AD3CA88C(v50, v51, aBlock);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_1AD337000, v37, v38, "[%s] ProvisioningCarKeyStepRequestInvite: Failed to acquire handle", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1B26F9F20](v40, -1, -1);
      MEMORY[0x1B26F9F20](v39, -1, -1);
    }

    else
    {
    }

    sub_1AD4C83C0();
    v43 = v42;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(a6 + 24);
      ObjectType = swift_getObjectType();
      (*(v44 + 32))(v43, 0, 2, v49, a8, ObjectType, v44);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v30 = v20;
  }
}

void sub_1AD4CB720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v10 = *(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState);

  v11 = [v10 sid];
  v12 = sub_1ADB063B0();
  v14 = v13;

  v15 = *(a2 + OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_context);
  swift_beginAccess();
  v16 = *(v15 + 144);
  if (v16)
  {
    v42 = v12;
    v43 = v14;
    v40 = *(v15 + 136);
    v39 = *(v15 + 40);
    v18 = *(v15 + 48);
    v17 = *(v15 + 56);
    swift_beginAccess();
    v38 = *(v15 + 64);
    v20 = *(v15 + 72);
    v19 = *(v15 + 80);
    sub_1AD3DAB68();
    v44 = v19;
    v21 = v18;

    v22 = v21;
    v41 = v17;
    v23 = v20;
    v24 = sub_1ADB068B0();
    v25 = [objc_allocWithZone(PKSharedPassSharesController) initWithPass:a1 webService:v22 paymentServiceProvider:0 queue:v24];

    if (v25)
    {
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v42;
      *(v27 + 24) = v43;
      *(v27 + 32) = v25;
      *(v27 + 40) = v22 != v23;
      *(v27 + 48) = v38;
      *(v27 + 56) = v23;
      *(v27 + 64) = v19;
      *(v27 + 72) = a1;
      *(v27 + 80) = v40;
      *(v27 + 88) = v16;
      *(v27 + 96) = v39;
      *(v27 + 104) = v22;
      *(v27 + 112) = v17;
      *(v27 + 120) = v26;
      *(v27 + 128) = sub_1AD4CC308;
      *(v27 + 136) = v9;
      aBlock[4] = sub_1AD4CC080;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD471DC4;
      aBlock[3] = &block_descriptor_87_2;
      v28 = _Block_copy(aBlock);
      v29 = v22;
      v30 = v41;
      v31 = v23;
      v32 = v44;
      v33 = v25;
      v34 = a1;

      [v33 updateSharesWithCompletion_];
      _Block_release(v28);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {

    v35 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      (*(v36 + 32))(v35, 0, 2, a4, a5, ObjectType, v36);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1AD4CBB08(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = qword_1EB5981C0;
  swift_retain_n();
  swift_retain_n();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_1ADB05FA0();
  __swift_project_value_buffer(v14, qword_1EB59AB68);
  v15 = a2;
  sub_1AD46C454(v9, v8, v10, v11, v12);
  v16 = sub_1ADB05F80();
  v17 = sub_1ADB06860();

  sub_1AD452868(v9, v8, v10, v11, v12);
  v33 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v35 = v11;
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v18 = 136315394;
    v32 = a3;
    v19 = [*&v15[OBJC_IVAR____TtC11PassKitCore35ProvisioningCarKeyStepRequestInvite_sharedState] sid];
    v31 = v15;
    v20 = sub_1ADB063B0();
    v21 = a5;
    v23 = v22;

    v24 = sub_1AD3CA88C(v20, v23, &v36);
    a5 = v21;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    sub_1AD46C454(v9, v8, v10, v35, v12);
    v25 = sub_1ADB06420();
    v27 = sub_1AD3CA88C(v25, v26, &v36);
    v15 = v31;

    *(v18 + 14) = v27;
    a3 = v32;
    _os_log_impl(&dword_1AD337000, v16, v33, "[%s] ProvisioningCarKeyStepRequestInvite: Requesting invite for configuration: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v30, -1, -1);
    v28 = v18;
    v11 = v35;
    MEMORY[0x1B26F9F20](v28, -1, -1);
  }

  else
  {
  }

  if (v12 > 1)
  {

    if (v12 == 2)
    {
      sub_1AD4CB234(v9, v8, v10, v11, v15, a3, a4, a5);
    }

    else
    {
      sub_1AD4CB720(v9, v15, a3, a4, a5);
    }
  }

  else
  {

    if (v12)
    {
      sub_1AD4CADE4(v8, v15, a3, a4, a5);
    }

    else
    {
      sub_1AD4CA048(v8, v15, a3, a4, a5);
    }
  }
}

id sub_1AD4CBF68()
{
  v1 = *(v0 + 16);
  [v1 closeWithCompletion_];

  return [v1 invalidate];
}

void sub_1AD4CC0E0(id a1, id a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
      }

      return;
    }

    a1 = a2;
  }
}

uint64_t objectdestroy_13Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

id sub_1AD4CC1F4(id result, id a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
      }

      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

void sub_1AD4CC25C(id a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1AD4CC0E0(a1, a2, a3);
  }
}

__n128 ProvisioningStepHomeKey.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
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

uint64_t ProvisioningStepHomeKey.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ProvisioningStepHomeKey.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepHomeKey.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD4CC584@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepHomeKey();
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

uint64_t sub_1AD4CC63C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1AD3D3200(0, &qword_1EB59BBD8);
    v4 = sub_1ADB06610();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1AD4CC6E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v8 = sub_1ADB06040();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1ADB06060();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v14 = sub_1ADB068B0();
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a4;
  v16[5] = a5;
  v17 = v21;
  v16[6] = v21;
  aBlock[4] = sub_1AD4CD290;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_15_6;
  v18 = _Block_copy(aBlock);

  v19 = v17;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v13, v10, v18);
  _Block_release(v18);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_1AD4CC9F4(uint64_t a1, unint64_t a2, void (*a3)(void *, void), uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2)
    {
      if (a2 >> 62)
      {
        if (sub_1ADB06D00())
        {
LABEL_5:
          v36 = a3;
          if ((a2 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1B26F6CC0](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_29;
            }

            v10 = *(a2 + 32);
          }

          v11 = v10;
          v12 = *(v9 + 16);
          swift_beginAccess();
          v13 = *(v12 + 64);
          v14 = [v11 localizedDescription];
          if (!v14)
          {
            sub_1ADB063B0();
            v14 = sub_1ADB06370();
          }

          v15 = PKPaymentSetupMoreInfoItemDictionaryForHomeExpress(v14, v13 == 1);

          if (v15)
          {
            sub_1ADB06280();

            v15 = sub_1ADB06260();
          }

          v16 = [objc_allocWithZone(PKPaymentSetupMoreInfoItem) initWithMoreInfoDictionary_];

          if (v16)
          {

            if (a2 >> 62)
            {
              sub_1AD3D3200(0, &unk_1EB599EA0);
              v19 = v11;

              v18 = sub_1ADB06CF0();
            }

            else
            {
              v17 = v11;

              sub_1ADB06FB0();
              sub_1AD3D3200(0, &unk_1EB599EA0);
              v18 = a2;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB00);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_1ADB789F0;
            *(v20 + 32) = v16;
            v21 = v16;
            v22 = sub_1AD42674C(MEMORY[0x1E69E7CC0]);
            if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              v28 = MEMORY[0x1E69E7CC8];
              goto LABEL_20;
            }

            v23 = [v11 uniqueID];
            if (v23)
            {
              v24 = v23;
              v25 = sub_1ADB063B0();
              v27 = v26;

              v28 = MEMORY[0x1E69E7CC8];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1AD4ECB74(v20, v25, v27, isUniquelyReferenced_nonNull_native);

LABEL_20:
              v30 = objc_allocWithZone(type metadata accessor for SEProvisionedPasses());
              SEProvisionedPasses.init(primaryPass:passes:moreInfoItemsForPass:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(v11, v18, v28, 0, 2, v22, 0, 0);
              v32 = v31;
              v33 = v31;
              v36(v32, 0);

LABEL_25:

              return;
            }

LABEL_30:
            __break(1u);
            return;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }

    if (a5)
    {
      a5 = sub_1ADB05CB0();
    }

    v34 = [objc_opt_self() errorWithUnderlyingError:a5 defaultSeverity:5];

    v35 = sub_1ADB06370();
    [v34 addInternalDebugDescription_];

    v33 = v34;
    a3(v34, 1);
    goto LABEL_25;
  }
}

void sub_1AD4CCE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  if (*(a1 + 48))
  {

LABEL_3:
    v9 = [objc_opt_self() errorWithCommonType:1 severity:5];
    v10 = sub_1ADB06370();
    [v9 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 136);
      v14 = v9;
      v13(v9, 1, a3, a4, ObjectType, v11);

LABEL_5:
      swift_unknownObjectRelease();
      return;
    }

    return;
  }

  v15 = *(a1 + 24);

  v16 = [v15 homeKeyCredential];
  if (!v16)
  {
    goto LABEL_3;
  }

  v17 = v16;
  v18 = *(a1 + 16);
  swift_beginAccess();
  v19 = *(v18 + 72);
  v20 = *(v18 + 80);
  v21 = v19;
  v22 = [v21 targetDevice];
  if (v22)
  {
    v23 = v22;

    if (([v23 respondsToSelector_] & 1) == 0)
    {

      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB599FD8);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1ADB78CE0;
    swift_unknownObjectRetain();
    v25 = [v17 serialNumber];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1ADB063B0();
      v29 = v28;

      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = sub_1AD4CD25C;
      v31[4] = v8;

      v32 = sub_1ADB06600();
      aBlock[4] = sub_1AD4CD26C;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD4CC63C;
      aBlock[3] = &block_descriptor_33;
      v33 = _Block_copy(aBlock);

      [v23 provisionHomeKeyPassForSerialNumbers:v32 completionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease_n();
      return;
    }
  }

  else
  {

    __break(1u);
  }

  swift_unknownObjectRelease();

  __break(1u);
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NearbyPeerPaymentSenderRequestMetadata.currencyAmount.getter()
{
  v0 = sub_1ADB06A00();
  v1 = sub_1ADB06370();
  v2 = PKCurrencyAmountMake(v0, v1);

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.currency.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.transactionIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.displayName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.imageData.getter()
{
  v1 = *(v0 + 72);
  sub_1AD422FC4(v1, *(v0 + 80));
  return v1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.memoText.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.idealSenderAddress.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.idealSenderAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.idealReceiverAddress.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.idealReceiverAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.quoteValidUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NearbyPeerPaymentSenderRequestMetadata() + 52);

  return sub_1AD4CD5E4(v3, a1);
}

uint64_t type metadata accessor for NearbyPeerPaymentSenderRequestMetadata()
{
  result = qword_1EB59BC10;
  if (!qword_1EB59BC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AD4CD5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.quoteValidUntil.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NearbyPeerPaymentSenderRequestMetadata() + 52);

  return sub_1AD4CD698(a1, v3);
}

uint64_t sub_1AD4CD698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id NearbyPeerPaymentSenderRequestMetadata.init(amount:transactionIdentifier:appearanceData:memoText:quoteValidUntil:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a2;
  v52 = a5;
  v53 = a8;
  v54 = a4;
  v12 = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 72) = xmmword_1ADB812F0;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0u;
  v16[136] = 1;
  v17 = *(v14 + 52);
  v18 = sub_1ADB05DE0();
  v19 = *(*(v18 - 8) + 56);
  v55 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = [a1 amount];
  if (v20 && (v21 = v20, v50 = a6, v56 = 0, v57 = 0, v58 = 0, v59 = 1, sub_1ADB06A10(), v21, (v59 & 1) == 0))
  {
    v48 = a7;
    v49 = v12;
    v27 = v56;
    v28 = v57;
    v29 = v58;
    result = [a1 currency];
    if (result)
    {
      v30 = result;
      v31 = sub_1ADB063B0();
      v33 = v32;

      *v16 = v31;
      *(v16 + 1) = v33;
      *(v16 + 2) = v27;
      *(v16 + 3) = v28;
      *(v16 + 8) = v29;
      *(v16 + 5) = v51;
      *(v16 + 6) = a3;
      v34 = v54;
      v35 = [v54 displayName];
      v36 = sub_1ADB063B0();
      v38 = v37;

      *(v16 + 7) = v36;
      *(v16 + 8) = v38;
      v39 = [v34 imageData];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1ADB05D70();
        v43 = v42;
      }

      else
      {

        v41 = 0;
        v43 = 0xF000000000000000;
      }

      v44 = v49;
      v45 = v50;
      v46 = v53;
      sub_1AD422FB0(*(v16 + 9), *(v16 + 10));
      *(v16 + 9) = v41;
      *(v16 + 10) = v43;
      *(v16 + 11) = v52;
      *(v16 + 12) = v45;
      sub_1AD4CD698(v48, &v16[v55]);
      sub_1AD4CEB70(v16, v46);
      (*(v13 + 56))(v46, 0, 1, v44);
      return sub_1AD4BC4CC(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    if (qword_1EB598130 != -1)
    {
      swift_once();
    }

    v22 = sub_1ADB05FA0();
    __swift_project_value_buffer(v22, qword_1EB59A9D0);
    v23 = sub_1ADB05F80();
    v24 = sub_1ADB06850();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1AD337000, v23, v24, "NearbyPeerPayment: attempted to generate sender metadata without an amount", v25, 2u);
      MEMORY[0x1B26F9F20](v25, -1, -1);
    }

    sub_1AD4CDB24(a7);
    sub_1AD422FB0(*(v16 + 9), *(v16 + 10));
    sub_1AD4CDB24(&v16[v55]);
    return (*(v13 + 56))(v53, 1, 1, v12);
  }

  return result;
}

uint64_t sub_1AD4CDB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.serializedData.getter()
{
  sub_1ADB059D0();
  swift_allocObject();
  sub_1ADB059C0();
  type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  sub_1AD4CEC28(&qword_1EB59BBE0, type metadata accessor for NearbyPeerPaymentSenderRequestMetadata);
  v0 = sub_1ADB059B0();

  return v0;
}

Swift::Void __swiftcall NearbyPeerPaymentSenderRequestMetadata.update(for:)(PKPeerPaymentProfileAppearanceData a1)
{
  isa = a1.super.isa;
  v3 = [(objc_class *)a1.super.isa displayName];
  v4 = sub_1ADB063B0();
  v6 = v5;

  v1[7] = v4;
  v1[8] = v6;
  v7 = [(objc_class *)isa imageData];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1ADB05D70();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_1AD422FB0(v1[9], v1[10]);
  v1[9] = v9;
  v1[10] = v11;
}

uint64_t sub_1AD4CDD54(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000014;
    v6 = 0x6C457265646E6573;
    if (a1 != 8)
    {
      v6 = 0x6C615665746F7571;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x747865546F6D656DLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x79636E6572727563;
    v2 = 0xD000000000000015;
    v3 = 0x4E79616C70736964;
    if (a1 != 3)
    {
      v3 = 0x7461446567616D69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746E756F6D61;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AD4CDEC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AD4CDD54(*a1);
  v5 = v4;
  if (v3 == sub_1AD4CDD54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ADB06F50();
  }

  return v8 & 1;
}

uint64_t sub_1AD4CDF4C()
{
  v1 = *v0;
  sub_1ADB07090();
  sub_1AD4CDD54(v1);
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD4CDFB0()
{
  sub_1AD4CDD54(*v0);
  sub_1ADB06460();
}

uint64_t sub_1AD4CE004()
{
  v1 = *v0;
  sub_1ADB07090();
  sub_1AD4CDD54(v1);
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD4CE064@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AD4CEF4C();
  *a1 = result;
  return result;
}

uint64_t sub_1AD4CE094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AD4CDD54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AD4CE0DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AD4CEF4C();
  *a1 = result;
  return result;
}

uint64_t sub_1AD4CE104(uint64_t a1)
{
  v2 = sub_1AD4CEBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AD4CE140(uint64_t a1)
{
  v2 = sub_1AD4CEBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BBE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AD4CEBD4();
  sub_1ADB07150();
  v15 = 0;
  sub_1ADB06EA0();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 32);
    v12 = 1;
    type metadata accessor for Decimal(0);
    sub_1AD4CEC28(&qword_1EB59BBF8, type metadata accessor for Decimal);
    sub_1ADB06ED0();
    LOBYTE(v13) = 2;
    sub_1ADB06EA0();
    LOBYTE(v13) = 3;
    sub_1ADB06EA0();
    v9 = *(v3 + 80);
    *&v13 = *(v3 + 72);
    *(&v13 + 1) = v9;
    v12 = 4;
    sub_1AD422FC4(v13, v9);
    sub_1AD3C7618();
    sub_1ADB06E90();
    sub_1AD422FB0(v13, *(&v13 + 1));
    LOBYTE(v13) = 5;
    sub_1ADB06E50();
    LOBYTE(v13) = 6;
    sub_1ADB06E50();
    LOBYTE(v13) = 7;
    sub_1ADB06E50();
    LOBYTE(v13) = 8;
    sub_1ADB06EB0();
    type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
    LOBYTE(v13) = 9;
    sub_1ADB05DE0();
    sub_1AD4CEC28(&qword_1EB5995B0, MEMORY[0x1E6969530]);
    sub_1ADB06E90();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NearbyPeerPaymentSenderRequestMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BC00);
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v43 - v8;
  v10 = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 72) = xmmword_1ADB812F0;
  v14 = *(v11 + 60);
  v15 = sub_1ADB05DE0();
  v16 = *(*(v15 - 8) + 56);
  v47 = v14;
  v48 = v13;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1AD4CEBD4();
  v44 = v9;
  sub_1ADB07120();
  if (v2)
  {
    v49 = v2;
    v23 = v48;
    __swift_destroy_boxed_opaque_existential_1(v46);
LABEL_4:
    sub_1AD422FB0(v23[9], v23[10]);
    goto LABEL_5;
  }

  v18 = v7;
  LOBYTE(v52) = 0;
  v19 = v44;
  v20 = v45;
  v21 = sub_1ADB06DE0();
  v49 = 0;
  v23 = v48;
  *v48 = v21;
  v23[1] = v22;
  type metadata accessor for Decimal(0);
  v55 = 1;
  sub_1AD4CEC28(&qword_1EB59BC08, type metadata accessor for Decimal);
  v25 = v49;
  sub_1ADB06E10();
  if (v25)
  {
    v49 = v25;
    (*(v18 + 8))(v19, v20);
    v26 = 0;
    v27 = 0;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v46);

    if (v26)
    {

      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (!v27)
    {
      goto LABEL_4;
    }

    v28 = 0;
LABEL_15:

    sub_1AD422FB0(v23[9], v23[10]);
    if (v28)
    {

      goto LABEL_6;
    }

LABEL_5:

LABEL_6:

    return sub_1AD4CDB24(v23 + v47);
  }

  *(v23 + 1) = v52;
  *(v23 + 8) = v53;
  LOBYTE(v50) = 2;
  v23[5] = sub_1ADB06DE0();
  v23[6] = v29;
  LOBYTE(v50) = 3;
  v30 = sub_1ADB06DE0();
  v49 = 0;
  v23[7] = v30;
  v23[8] = v31;
  v54 = 4;
  sub_1AD3C6384();
  v32 = v49;
  sub_1ADB06DD0();
  v49 = v32;
  if (v32)
  {
LABEL_20:
    (*(v18 + 8))(v19, v20);
    v26 = 1;
    v27 = 1;
    goto LABEL_10;
  }

  v33 = v50;
  v34 = v51;
  sub_1AD422FB0(v23[9], v23[10]);
  v23[9] = v33;
  v23[10] = v34;
  LOBYTE(v50) = 5;
  v35 = v49;
  v36 = sub_1ADB06D90();
  if (v35)
  {
    v49 = v35;
    goto LABEL_20;
  }

  v23[11] = v36;
  v23[12] = v37;
  LOBYTE(v50) = 6;
  v23[13] = sub_1ADB06D90();
  v23[14] = v38;
  LOBYTE(v50) = 7;
  v23[15] = sub_1ADB06D90();
  v23[16] = v39;
  LOBYTE(v50) = 8;
  v40 = sub_1ADB06DF0();
  v49 = 0;
  *(v23 + 136) = v40 & 1;
  LOBYTE(v50) = 9;
  sub_1AD4CEC28(&qword_1EB599580, MEMORY[0x1E6969530]);
  v41 = v49;
  sub_1ADB06DD0();
  v49 = v41;
  if (v41)
  {
    (*(v18 + 8))(v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v23 = v48;

    v28 = 1;
    goto LABEL_15;
  }

  (*(v18 + 8))(v44, v45);
  v42 = v48;
  sub_1AD4CD698(v6, v48 + v47);
  sub_1AD4CEB70(v42, v43);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return sub_1AD4BC4CC(v42);
}

uint64_t sub_1AD4CEB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AD4CEBD4()
{
  result = qword_1EB59BBF0;
  if (!qword_1EB59BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59BBF0);
  }

  return result;
}

uint64_t sub_1AD4CEC28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AD4CEC98()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    sub_1AD4CED90(319, &qword_1EB59BC20);
    if (v1 <= 0x3F)
    {
      sub_1AD4CED90(319, &qword_1EB5980B0);
      if (v2 <= 0x3F)
      {
        sub_1AD4CEDDC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AD4CED90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1ADB06A20();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AD4CEDDC()
{
  if (!qword_1EB598BA8)
  {
    sub_1ADB05DE0();
    v0 = sub_1ADB06A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB598BA8);
    }
  }
}

unint64_t sub_1AD4CEE48()
{
  result = qword_1EB59BC28;
  if (!qword_1EB59BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59BC28);
  }

  return result;
}

unint64_t sub_1AD4CEEA0()
{
  result = qword_1EB59BC30;
  if (!qword_1EB59BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59BC30);
  }

  return result;
}

unint64_t sub_1AD4CEEF8()
{
  result = qword_1EB59BC38;
  if (!qword_1EB59BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59BC38);
  }

  return result;
}

uint64_t sub_1AD4CEF4C()
{
  v0 = sub_1ADB06D60();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AD4CEF98(uint64_t a1)
{
  v2 = 0;
  v3 = sub_1AD425E60(MEMORY[0x1E69E7CC0]);
  v42 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v41 = v6;
      sub_1AD424B78(&v42, &v41);
      --v4;
    }

    while (v4);
    v7 = v42;
  }

  else
  {
    v7 = v3;
  }

  v8 = 0;
  v9 = v7 + 8;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7[8];
  v13 = (v10 + 63) >> 6;
  v14 = MEMORY[0x1E69E7CC0];
  v38 = v7 + 8;
  v39 = v7;
  v37 = v13;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_13:
  while (1)
  {
    v2 = *(v7[7] + ((v8 << 9) | (8 * __clz(__rbit64(v12)))));
    v16 = *(v2 + 16);
    if (!v16)
    {
      break;
    }

    v17 = *(v2 + 32);
    v18 = v16 - 1;
    if (v16 != 1)
    {
      v40 = v14;

      v19 = 33;
      while (2)
      {
        v20 = *(v2 + v19);
        v21 = 0xE400000000000000;
        v22 = 845247336;
        switch(v17 & 0x7F)
        {
          case 1:
            v21 = 0xE700000000000000;
            v22 = 0x656574616E616DLL;
            break;
          case 2:
            v22 = 0xD000000000000014;
            v21 = 0x80000001ADB9C240;
            break;
          case 3:
            v21 = 0xE800000000000000;
            v22 = 0x65646F6373736170;
            break;
          case 4:
            v22 = 0x6150676E6F727473;
            v23 = 1868788595;
            goto LABEL_31;
          case 5:
            v22 = 0x75536E6F69676572;
            v21 = 0xEF646574726F7070;
            break;
          case 6:
            v21 = 0xE500000000000000;
            v22 = 0x746C756461;
            break;
          case 7:
            v22 = 0x634164756F6C6369;
            v21 = 0xED0000746E756F63;
            break;
          case 8:
            v22 = 0x6E4974656C6C6177;
            v21 = 0xEF64656C6C617473;
            break;
          case 9:
            v22 = 0xD000000000000017;
            v21 = 0x80000001ADB9C2B0;
            break;
          case 0xA:
            v22 = 0xD000000000000012;
            v21 = 0x80000001ADB9C2D0;
            break;
          case 0xB:
            v22 = 0xD000000000000015;
            v21 = 0x80000001ADB9C2F0;
            break;
          case 0xC:
            v22 = 0xD000000000000011;
            v21 = 0x80000001ADB9C310;
            break;
          case 0xD:
            v22 = 0xD000000000000029;
            v21 = 0x80000001ADB9C330;
            break;
          case 0xE:
            v22 = 0xD000000000000015;
            v21 = 0x80000001ADB9C360;
            break;
          case 0xF:
            v22 = 0xD000000000000016;
            v21 = 0x80000001ADB9C380;
            break;
          case 0x10:
            v22 = 0xD000000000000012;
            v21 = 0x80000001ADB9C3A0;
            break;
          case 0x11:
            v22 = 0xD000000000000016;
            v21 = 0x80000001ADB9C3C0;
            break;
          case 0x12:
            v22 = 0xD000000000000013;
            v21 = 0x80000001ADB9C3E0;
            break;
          case 0x13:
            v22 = 0xD000000000000021;
            v21 = 0x80000001ADB9C400;
            break;
          case 0x14:
            v22 = 0xD000000000000022;
            v21 = 0x80000001ADB9C430;
            break;
          case 0x15:
            v22 = 0xD000000000000018;
            v21 = 0x80000001ADB9C460;
            break;
          case 0x16:
            v22 = 0xD000000000000016;
            v21 = 0x80000001ADB9C480;
            break;
          case 0x17:
            v21 = 0xE800000000000000;
            v22 = 0x7473657547746F6ELL;
            break;
          case 0x18:
            v22 = 0x6972616853746F6ELL;
            v23 = 1867343726;
LABEL_31:
            v21 = v23 | 0xEE00656400000000;
            break;
          case 0x19:
            v22 = 0x76416E6F6D656164;
            v21 = 0xEF656C62616C6961;
            break;
          case 0x1A:
            v22 = 0xD000000000000020;
            v21 = 0x80000001ADB9C4C0;
            break;
          case 0x1B:
            v22 = 0xD000000000000010;
            v21 = 0x80000001ADB9C4F0;
            break;
          case 0x1C:
            v22 = 0x5344496863756F74;
            v21 = 0xED0000726F736E65;
            break;
          case 0x1D:
            v22 = 0xD000000000000018;
            v21 = 0x80000001ADB9C510;
            break;
          case 0x1E:
            v22 = 0xD000000000000010;
            v21 = 0x80000001ADB9C530;
            break;
          case 0x1F:
            v22 = 0xD000000000000017;
            v21 = 0x80000001ADB9C550;
            break;
          case 0x20:
            v22 = 0xD000000000000015;
            v21 = 0x80000001ADB9C570;
            break;
          case 0x21:
            v22 = 0xD000000000000020;
            v21 = 0x80000001ADB9C590;
            break;
          case 0x22:
            v22 = 0xD000000000000016;
            v21 = 0x80000001ADB9C5C0;
            break;
          default:
            break;
        }

        v24 = 0xE400000000000000;
        v25 = 845247336;
        switch(*(v2 + v19) & 0x7F)
        {
          case 1:
            v24 = 0xE700000000000000;
            if (v22 == 0x656574616E616DLL)
            {
              goto LABEL_121;
            }

            goto LABEL_126;
          case 2:
            v24 = 0x80000001ADB9C240;
            if (v22 != 0xD000000000000014)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 3:
            v24 = 0xE800000000000000;
            if (v22 != 0x65646F6373736170)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 4:
            v26 = 0x6150676E6F727473;
            v27 = 1868788595;
            goto LABEL_77;
          case 5:
            v30 = 0x75536E6F69676572;
            v31 = 0x6574726F7070;
            goto LABEL_104;
          case 6:
            v24 = 0xE500000000000000;
            if (v22 != 0x746C756461)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 7:
            v28 = 0x634164756F6C6369;
            v29 = 0x746E756F63;
            goto LABEL_117;
          case 8:
            v30 = 0x6E4974656C6C6177;
            v31 = 0x656C6C617473;
LABEL_104:
            v24 = v31 & 0xFFFFFFFFFFFFLL | 0xEF64000000000000;
            if (v22 != v30)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 9:
            v24 = 0x80000001ADB9C2B0;
            if (v22 != 0xD000000000000017)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0xA:
            v24 = 0x80000001ADB9C2D0;
            if (v22 != 0xD000000000000012)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0xB:
            v24 = 0x80000001ADB9C2F0;
            if (v22 != 0xD000000000000015)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0xC:
            v24 = 0x80000001ADB9C310;
            if (v22 != 0xD000000000000011)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0xD:
            v24 = 0x80000001ADB9C330;
            if (v22 != 0xD000000000000029)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0xE:
            v24 = 0x80000001ADB9C360;
            if (v22 != 0xD000000000000015)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0xF:
            v24 = 0x80000001ADB9C380;
            if (v22 != 0xD000000000000016)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x10:
            v24 = 0x80000001ADB9C3A0;
            if (v22 != 0xD000000000000012)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x11:
            v24 = 0x80000001ADB9C3C0;
            if (v22 != 0xD000000000000016)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x12:
            v24 = 0x80000001ADB9C3E0;
            if (v22 != 0xD000000000000013)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x13:
            v24 = 0x80000001ADB9C400;
            if (v22 != 0xD000000000000021)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x14:
            v24 = 0x80000001ADB9C430;
            if (v22 != 0xD000000000000022)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x15:
            v24 = 0x80000001ADB9C460;
            if (v22 != 0xD000000000000018)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x16:
            v24 = 0x80000001ADB9C480;
            if (v22 != 0xD000000000000016)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x17:
            v24 = 0xE800000000000000;
            if (v22 != 0x7473657547746F6ELL)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x18:
            v26 = 0x6972616853746F6ELL;
            v27 = 1867343726;
LABEL_77:
            v24 = v27 | 0xEE00656400000000;
            if (v22 != v26)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x19:
            v24 = 0xEF656C62616C6961;
            if (v22 != 0x76416E6F6D656164)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x1A:
            v24 = 0x80000001ADB9C4C0;
            if (v22 != 0xD000000000000020)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x1B:
            v24 = 0x80000001ADB9C4F0;
            if (v22 != 0xD000000000000010)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x1C:
            v28 = 0x5344496863756F74;
            v29 = 0x726F736E65;
LABEL_117:
            v24 = v29 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v22 != v28)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x1D:
            v25 = 0xD000000000000018;
            v24 = 0x80000001ADB9C510;
            goto LABEL_120;
          case 0x1E:
            v24 = 0x80000001ADB9C530;
            if (v22 != 0xD000000000000010)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x1F:
            v24 = 0x80000001ADB9C550;
            if (v22 != 0xD000000000000017)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x20:
            v24 = 0x80000001ADB9C570;
            if (v22 != 0xD000000000000015)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x21:
            v24 = 0x80000001ADB9C590;
            if (v22 != 0xD000000000000020)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          case 0x22:
            v24 = 0x80000001ADB9C5C0;
            if (v22 != 0xD000000000000016)
            {
              goto LABEL_126;
            }

            goto LABEL_121;
          default:
LABEL_120:
            if (v22 != v25)
            {
              goto LABEL_126;
            }

LABEL_121:
            if (v21 == v24)
            {

              if (v17 < 0 || v20 < 0)
              {
LABEL_16:
                v17 |= 0x80u;
              }
            }

            else
            {
LABEL_126:
              v32 = (v17 | v20);
              v33 = sub_1ADB06F50();

              if ((v33 & 1) != 0 && v32 < 0)
              {
                goto LABEL_16;
              }
            }

            ++v19;
            if (--v18)
            {
              continue;
            }

            v9 = v38;
            v7 = v39;
            v13 = v37;
            v14 = v40;
            break;
        }

        break;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AD42507C(0, *(v14 + 2) + 1, 1, v14);
    }

    v35 = *(v14 + 2);
    v34 = *(v14 + 3);
    if (v35 >= v34 >> 1)
    {
      v14 = sub_1AD42507C((v34 > 1), v35 + 1, 1, v14);
    }

    v12 &= v12 - 1;
    *(v14 + 2) = v35 + 1;
    v14[v35 + 32] = v17;
    if (!v12)
    {
LABEL_9:
      while (1)
      {
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          return v14;
        }

        v12 = v9[v15];
        ++v8;
        if (v12)
        {
          v8 = v15;
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1AD4CFBB4()
{
  sub_1ADB06C10();
  MEMORY[0x1B26F6530](0xD000000000000033, 0x80000001ADBA2130);
  if (*(v0 + OBJC_IVAR___PKSetupAssistantRequirementsCheckResult_shouldRun))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___PKSetupAssistantRequirementsCheckResult_shouldRun))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1B26F6530](v1, v2);

  MEMORY[0x1B26F6530](0xD000000000000017, 0x80000001ADBA2170);
  type metadata accessor for PKPaymentSetupAssistantRequirements(0);
  sub_1ADB06CD0();
  MEMORY[0x1B26F6530](4071483, 0xE300000000000000);
  return 0;
}

id SetupAssistantRequirementsChecker.__allocating_init(targetDevice:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PKSetupAssistantRequirementsChecker_targetDevice] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SetupAssistantRequirementsChecker.init(targetDevice:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PKSetupAssistantRequirementsChecker_targetDevice] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetupAssistantRequirementsChecker();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1AD4CFE88(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ProvisioningRequirementOracle()) init];
  v7 = sub_1AD50F700(a1);
  sub_1AD4505BC(&unk_1F2261BF0);
  v3 = sub_1AD50DE88();
  sub_1AD4505BC(v3);
  v4 = sub_1AD4CEF98(v7);

  v5 = sub_1AD4D01E0(v4, a1);

  return v5;
}

id sub_1AD4D0034(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ProvisioningRequirementOracle()) init];
  v7 = sub_1AD50F700(a1);
  sub_1AD4505BC(&unk_1F2261C18);
  v3 = sub_1AD50DE88();
  sub_1AD4505BC(v3);
  v4 = sub_1AD4CEF98(v7);

  v5 = sub_1AD4D01E0(v4, a1);

  return v5;
}

id sub_1AD4D01E0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v66[1] = *MEMORY[0x1E69E9840];
  v64 = a1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;

    v8 = 0;
    while (1)
    {
      LOBYTE(v65[0]) = *(v7 + v8) & 0x7F;
      if (ProvisioningRequirement.RequirementType.rawValue.getter() == 0xD000000000000020 && 0x80000001ADB9C4C0 == v9)
      {
        break;
      }

      v11 = sub_1ADB06F50();

      if (v11)
      {
        goto LABEL_12;
      }

      if (v6 == ++v8)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v11 = 1;
  }

  else
  {

    v8 = 0;
    v11 = 0;
  }

LABEL_12:
  v12 = [a2 allowsCachedCardRequirements];
  if (byte_1EB59BC40 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v59 = v13;
  if (v11 & 1) != 0 && (v13)
  {
    sub_1AD4D08B4(v8, v65);
    v5 = v64;
  }

  v14 = type metadata accessor for ProvisioningRequirementsContainer();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v15[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = v5;
  v63.receiver = v15;
  v63.super_class = v14;
  v17 = objc_msgSendSuper2(&v63, sel_init);
  v18 = [objc_allocWithZone(PKProvisioningRequirementsContainer) initWithContainer_];

  v19 = *(v3 + OBJC_IVAR___PKSetupAssistantRequirementsChecker_targetDevice);
  v61 = v18;
  if (([v19 respondsToSelector_] & 1) != 0 && (v65[0] = 0, objc_msgSend(v19, sel_meetsProvisioningRequirements_missingRequirements_, v18, v65), v65[0]))
  {
    v60 = v65[0];
    v20 = [v60 container];
    sub_1ADB06AC0();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v21 = v66[0];
      v22 = *(v66[0] + OBJC_IVAR____PKProvisioningRequirementsContainer_requirements);

      goto LABEL_24;
    }
  }

  else
  {
    v60 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v25 = (v22 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = *v25++;
      v29 = v30;
      if (v30 < 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65[0] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AD450748(0, v26[2] + 1, 1);
          v26 = v65[0];
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          sub_1AD450748((v27 > 1), v28 + 1, 1);
          v26 = v65[0];
        }

        v26[2] = v28 + 1;
        *(v26 + v28 + 32) = v29;
      }

      --v23;
    }

    while (v23);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v32 = v26[2];
  if (v32)
  {
    v65[0] = v24;
    sub_1AD450728(0, v32, 0);
    v33 = v65[0];
    v34 = *(v65[0] + 2);
    v35 = 32;
    do
    {
      v36 = *(v26 + v35);
      v65[0] = v33;
      v37 = v33[3];
      if (v34 >= v37 >> 1)
      {
        sub_1AD450728((v37 > 1), v34 + 1, 1);
        v33 = v65[0];
      }

      v33[2] = v34 + 1;
      *(v33 + v34 + 32) = v36 & 0x7F;
      ++v35;
      ++v34;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v38 = sub_1AD49922C(v33);

  v65[0] = v38;
  if (v11)
  {
    if (v59)
    {
      if (byte_1EB59BC40 != 2 && (byte_1EB59BC40 & 1) == 0)
      {
        sub_1AD494FDC(v66, 26);
        v38 = v65[0];
      }
    }

    else
    {

      v39 = sub_1AD50C8E4(26, v38);

      byte_1EB59BC40 = (v39 & 1) == 0;
    }
  }

  v40 = sub_1AD50C8E4(7, v38);

  if (v40)
  {
    sub_1AD497E20(7, v66);
    v41 = 1;
    v38 = v65[0];
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_1AD50C8E4(3, v38);

  if (v42)
  {
    v41 |= 2uLL;
    sub_1AD497E20(3, v66);
  }

  v43 = v65[0];

  v44 = sub_1AD50C8E4(22, v43);

  if (v44)
  {
    v41 |= 4uLL;
    sub_1AD497E20(22, v66);
    v43 = v65[0];
  }

  v45 = v43[2];
  if (v45)
  {
    if (qword_1EB5981C8 != -1)
    {
      swift_once();
    }

    v46 = sub_1ADB05FA0();
    __swift_project_value_buffer(v46, qword_1EB59AB80);
    v47 = sub_1ADB05F80();
    v48 = sub_1ADB06860();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66[0] = v50;
      *v49 = 136315138;
      sub_1AD499D34();

      v51 = sub_1ADB067A0();
      v53 = v52;

      v54 = sub_1AD3CA88C(v51, v53, v66);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1AD337000, v47, v48, "SetupAssistantRequirementsChecker: Skipping because requirements are not met: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1B26F9F20](v50, -1, -1);
      MEMORY[0x1B26F9F20](v49, -1, -1);
    }
  }

  v55 = type metadata accessor for SetupAssistantRequirementsCheckResult();
  v56 = objc_allocWithZone(v55);
  v56[OBJC_IVAR___PKSetupAssistantRequirementsCheckResult_shouldRun] = v45 == 0;
  *&v56[OBJC_IVAR___PKSetupAssistantRequirementsCheckResult_missingRequirements] = v41;
  v62.receiver = v56;
  v62.super_class = v55;
  v57 = objc_msgSendSuper2(&v62, sel_init);

  return v57;
}

uint64_t sub_1AD4D08B4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AD5056D0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    *a2 = *(v5 + a1 + 32);
    result = memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

id SetupAssistantRequirementsChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AD4D09E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void ProvisioningStepReadCard.readCard(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_commonCompletion);
  v4 = *(v2 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_commonCompletion);
  *v3 = a1;
  v3[1] = a2;

  sub_1AD3C5FB8(v4);

  sub_1AD4D15D4();
}

uint64_t sub_1AD4D0B8C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidStartPolling);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AD42F824;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AD3C5F14(v4);
}

uint64_t sub_1AD4D0C2C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AD4D48E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidStartPolling);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AD3C5F14(v3);
  return sub_1AD3C5FB8(v8);
}

uint64_t sub_1AD4D0D6C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidFindCard);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AD42F824;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AD3C5F14(v4);
}

uint64_t sub_1AD4D0E0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AD4D48E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidFindCard);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AD3C5F14(v3);
  return sub_1AD3C5FB8(v8);
}

uint64_t sub_1AD4D0F4C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onFailedToReadCard);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AD42F7F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AD3C5F14(v4);
}

uint64_t sub_1AD4D0FEC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AD4D4760;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onFailedToReadCard);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AD3C5F14(v3);
  return sub_1AD3C5FB8(v8);
}

uint64_t sub_1AD4D10C0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1AD3C5F14(*v2);
  return v3;
}

uint64_t sub_1AD4D1124(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_1AD3C5FB8(v7);
}

id ProvisioningStepReadCard.init(context:credential:sharedState:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v18 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  v9 = &v3[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_commonCompletion];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_reader;
  sub_1AD3D3200(0, &qword_1EB59A670);
  v11 = sub_1ADB068B0();
  v12 = [objc_allocWithZone(PKSTSTapToProvisionReader) initWithReplyQueue_];

  *&v4[v10] = v12;
  *&v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_tearEventCount] = 0;
  *&v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_timeoutEventCount] = 0;
  *&v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer] = 0;
  *&v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer] = 0;
  v13 = &v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidStartPolling];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidFindCard];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onFailedToReadCard];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_context] = a1;
  v16 = &v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_credential];
  *v16 = v18;
  *(v16 + 2) = v7;
  v16[24] = v8;
  *&v4[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_sharedState] = a3;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for ProvisioningStepReadCard();
  return objc_msgSendSuper2(&v19, sel_init);
}

id ProvisioningStepReadCard.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningStepReadCard.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningStepReadCard();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AD4D1544@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(type metadata accessor for ProvisioningStepReadCard());
  result = ProvisioningStepReadCard.init(context:credential:sharedState:)(a1, a2, a3);
  *a4 = result;
  return result;
}

void sub_1AD4D15D4()
{
  v1 = [objc_allocWithZone(PKPaymentTapToProvisionConfigurationRequest) init];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_context);
    swift_beginAccess();
    v4 = *(v3 + 72);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1AD4D4854;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD4B7970;
    aBlock[3] = &block_descriptor_70_0;
    v6 = _Block_copy(aBlock);
    v7 = v4;
    v8 = v2;

    [v7 tapToProvisionConfigurationForRequest:v8 completion:v6];

    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD4D173C(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = a1;
      sub_1AD4D1AF8(v6);
    }

    else
    {
      if (a2)
      {
        a2 = sub_1ADB05CB0();
      }

      v7 = [objc_opt_self() errorWithUnderlyingError:a2 defaultSeverity:4];

      v8 = sub_1ADB06370();
      [v7 addInternalDebugDescription_];

      v6 = v7;
      sub_1AD4D1848(v7, 2u);

      v5 = v6;
    }
  }
}

uint64_t sub_1AD4D1848(void *a1, unsigned __int8 a2)
{
  v5 = sub_1ADB06040();
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1ADB06060();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v11 = sub_1ADB068B0();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  aBlock[4] = sub_1AD4D4824;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_58_1;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_1AD4D4830(a1, a2);

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v10, v7, v13);
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

void sub_1AD4D1AF8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_timeoutEventCount);
  v4 = PKDeviceModel();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  sub_1ADB063B0();

  if (sub_1ADB06510())
  {

    goto LABEL_5;
  }

  v6 = sub_1ADB06510();

  if ((v6 & 1) == 0)
  {
LABEL_9:
    if (v3 >= 4)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

LABEL_5:
  if (v3 >= 1)
  {
LABEL_6:

    sub_1AD4D1848(1, 3u);
    return;
  }

LABEL_10:
  v7 = [*(v1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_sharedState) sid];
  if (!v7)
  {
    sub_1ADB063B0();
    v7 = sub_1ADB06370();
  }

  v8 = v1;
  v9 = sub_1ADB063B0();
  v11 = v10;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1ADB05FA0();
  __swift_project_value_buffer(v12, qword_1EB59AB68);

  v13 = sub_1ADB05F80();
  v14 = sub_1ADB06860();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1AD3CA88C(v9, v11, v33);
    _os_log_impl(&dword_1AD337000, v13, v14, "[%s] Starting card reader", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B26F9F20](v16, -1, -1);
    MEMORY[0x1B26F9F20](v15, -1, -1);
  }

  v17 = v8;
  v18 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_reader;
  [*(v17 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_reader) setDelegate_];
  v19 = [objc_allocWithZone(PKSTSTapToProvisionParameters) init];
  [v19 setSid_];

  v20 = [a1 nonce];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1ADB05D70();
    v24 = v23;

    v25 = sub_1ADB05D50();
    sub_1AD3C757C(v22, v24);
    [v19 setNonce_];

    [v19 setCountryCode_];
    [v19 setCurrencyCode_];
    [v19 setTimeout_];
    v26 = *(v17 + v18);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v9;
    v28[4] = v11;
    v28[5] = a1;
    v28[6] = v19;
    v33[4] = sub_1AD4D485C;
    v33[5] = v28;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1107296256;
    v33[2] = sub_1AD4B7970;
    v33[3] = &block_descriptor_77;
    v29 = _Block_copy(v33);
    v30 = v26;
    v31 = a1;
    v32 = v19;

    [v30 provisionCardWithParameters:v32 completion:v29];
    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD4D1F78(void *a1, void *a2, uint64_t a3, uint64_t a4, id a5, void *a6, void *a7)
{
  v120 = a7;
  v12 = sub_1ADB06040();
  v118 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1ADB06060();
  v117 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (!a1)
    {
      if (sub_1AD4D38C8(a2))
      {
        sub_1AD4D1848(0, 3u);
        v34 = v19;
LABEL_46:

        return;
      }

      v45 = sub_1AD4D3A10(a2);
      v46 = sub_1AD4D3C9C(a2);
      v115 = a6;
      if (v46)
      {
        v119 = v19;
        v120 = a5;
        if (qword_1EB5981C0 != -1)
        {
          swift_once();
        }

        v47 = sub_1ADB05FA0();
        __swift_project_value_buffer(v47, qword_1EB59AB68);
        v48 = v120;

        v49 = sub_1ADB05F80();
        v50 = sub_1ADB06860();

        v51 = os_log_type_enabled(v49, v50);
        v116 = a4;
        if (v51)
        {
          v52 = swift_slowAlloc();
          v114 = v49;
          v53 = v45;
          v54 = a4;
          v55 = v52;
          v56 = swift_slowAlloc();
          aBlock[0] = v56;
          *v55 = 136315138;
          v57 = v54;
          v45 = v53;
          *(v55 + 4) = sub_1AD3CA88C(v57, v48, aBlock);
          v49 = v114;
          _os_log_impl(&dword_1AD337000, v114, v50, "[%s] Timed out reading card!", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          MEMORY[0x1B26F9F20](v56, -1, -1);
          MEMORY[0x1B26F9F20](v55, -1, -1);
        }

        v19 = v119;
        v58 = *&v119[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_timeoutEventCount];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        *&v119[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_timeoutEventCount] = v60;
        a4 = v116;
        a5 = v120;
      }

      else if ([v45 severity] > 4)
      {
        v95 = sub_1ADB06370();
        [v45 addInternalDebugDescription_];

        v96 = v45;
        v97 = v45;
        v34 = v96;
        sub_1AD4D1848(v97, 1u);

        goto LABEL_46;
      }

      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v120 = v45;
      v98 = sub_1ADB05FA0();
      __swift_project_value_buffer(v98, qword_1EB59AB68);

      v99 = sub_1ADB05F80();
      v100 = sub_1ADB06860();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v116 = a4;
        v102 = v101;
        v103 = swift_slowAlloc();
        aBlock[0] = v103;
        *v102 = 136315138;
        *(v102 + 4) = sub_1AD3CA88C(v116, a5, aBlock);
        _os_log_impl(&dword_1AD337000, v99, v100, "[%s] Received recoverable failure", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x1B26F9F20](v103, -1, -1);
        MEMORY[0x1B26F9F20](v102, -1, -1);
      }

      sub_1AD3D3200(0, &qword_1EB59A670);
      v104 = sub_1ADB068B0();
      v105 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v106 = swift_allocObject();
      v107 = v115;
      *(v106 + 16) = v105;
      *(v106 + 24) = v107;
      aBlock[4] = sub_1AD4D486C;
      aBlock[5] = v106;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD471DC4;
      aBlock[3] = &block_descriptor_84_0;
      v108 = _Block_copy(aBlock);
      v109 = v107;

      sub_1ADB06050();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1AD3D76F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
      sub_1AD3D7750();
      sub_1ADB06B00();
      MEMORY[0x1B26F6950](0, v17, v14, v108);
      _Block_release(v108);

      (*(v118 + 8))(v14, v12);
      (*(v117 + 8))(v17, v15);
      v110 = &v19[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onFailedToReadCard];
      swift_beginAccess();
      v111 = *v110;
      if (*v110)
      {

        v111(v112);
        sub_1AD3C5FB8(v111);
      }

      v34 = v120;
      goto LABEL_46;
    }

    v20 = Strong;
    v21 = a5;
    v22 = a6;
    v116 = a4;
    v23 = a1;
    v24 = [v23 network];
    v119 = v20;
    v25 = *(v20 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_context);
    swift_beginAccess();
    v26 = *(v25 + 72);
    v27 = *(v25 + 80);
    v28 = v26;
    v29 = [v28 supportedRegionFeatureOfType:19 didFailOSVersionRequirements:0];
    if (v29)
    {
      v30 = v29;
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v32 = v31;
        v33 = [v28 targetDevice];
        if (!v33)
        {
LABEL_53:
          __break(1u);
          return;
        }

        v34 = v23;
        v35 = [v32 isSupportedForNetwork:v24 device:v33];
        swift_unknownObjectRelease();

        v36 = v22;
        if ((v35 & 1) == 0)
        {
          v37 = v21;
          if (qword_1EB5981C0 != -1)
          {
            swift_once();
          }

          v38 = sub_1ADB05FA0();
          __swift_project_value_buffer(v38, qword_1EB59AB68);

          v39 = sub_1ADB05F80();
          v40 = sub_1ADB06860();

          v41 = os_log_type_enabled(v39, v40);
          v42 = v119;
          if (v41)
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v121 = v44;
            *v43 = 136315138;
            *(v43 + 4) = sub_1AD3CA88C(v116, v37, &v121);
            _os_log_impl(&dword_1AD337000, v39, v40, "[%s] Network blocked via config", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            MEMORY[0x1B26F9F20](v44, -1, -1);
            MEMORY[0x1B26F9F20](v43, -1, -1);
          }

          sub_1AD4D1848(0, 3u);
          goto LABEL_46;
        }

LABEL_24:
        v61 = *&v119[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_credential];
        v62 = v119[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_credential + 24];
        v63 = v21;
        if (v62 > 3)
        {
          v64 = v61;
        }

        else
        {
          if (v62 - 1 >= 3)
          {
            v65 = [v61 state];
            v66 = v119;
            if (!v65)
            {
              __break(1u);
              goto LABEL_50;
            }

LABEL_29:
            v67 = [v36 nonce];
            if (v67)
            {
              v68 = v67;
              v69 = sub_1ADB05D70();
              v71 = v70;

              sub_1ADB05D40();
              sub_1AD3C757C(v69, v71);
              v72 = sub_1ADB06370();
            }

            else
            {
              v72 = 0;
            }

            [v65 setNonce_];

            if (qword_1EB5981C0 == -1)
            {
LABEL_33:
              v73 = sub_1ADB05FA0();
              __swift_project_value_buffer(v73, qword_1EB59AB68);

              v74 = sub_1ADB05F80();
              v75 = sub_1ADB06860();

              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                v77 = swift_slowAlloc();
                v121 = v77;
                *v76 = 136315138;
                *(v76 + 4) = sub_1AD3CA88C(v116, v63, &v121);
                _os_log_impl(&dword_1AD337000, v74, v75, "[%s] Successfully read card date!", v76, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v77);
                MEMORY[0x1B26F9F20](v77, -1, -1);
                MEMORY[0x1B26F9F20](v76, -1, -1);
              }

              v78 = [v34 encryptedTapData];
              v79 = sub_1ADB05D70();
              v81 = v80;

              v82 = [v34 casdCertificate];
              v83 = sub_1ADB05D70();
              v85 = v84;

              v86 = [v120 transactionID];
              v87 = sub_1ADB05D70();
              v89 = v88;

              v90 = objc_allocWithZone(PKPaymentTapToProvisionData);
              v91 = sub_1ADB05D50();
              sub_1AD3C757C(v79, v81);
              v92 = sub_1ADB05D50();
              sub_1AD3C757C(v83, v85);
              v93 = sub_1ADB05D50();
              sub_1AD3C757C(v87, v89);
              v94 = [v90 initWithEncryptedData:v91 casdCertificate:v92 transactionID:v93];

              if (v94)
              {
                sub_1AD4D1848(v94, 0);

                v34 = v94;
                goto LABEL_46;
              }

              goto LABEL_52;
            }

LABEL_50:
            swift_once();
            goto LABEL_33;
          }

          v64 = [objc_allocWithZone(PKSecureElementProvisioningState) init];
        }

        v65 = v64;
        v66 = v119;
        goto LABEL_29;
      }

      v27 = v28;
    }

    else
    {
      v30 = v28;
    }

    v34 = v23;

    v36 = v22;
    goto LABEL_24;
  }
}

void sub_1AD4D2B98(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer);

    [v5 invalidate];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = a2;
    aBlock[4] = sub_1AD4D4874;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD44AE68;
    aBlock[3] = &block_descriptor_91_0;
    v12 = _Block_copy(aBlock);
    v13 = a2;

    v14 = [v8 scheduledTimerWithTimeInterval:0 repeats:v12 block:8.0];
    _Block_release(v12);
    v15 = *&v7[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer];
    *&v7[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer] = v14;
  }
}

uint64_t sub_1AD4D2D70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1ADB06040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ADB06060();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v12 = sub_1ADB068B0();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a3;
  aBlock[4] = sub_1AD4D48BC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_98;
  v16 = _Block_copy(aBlock);
  v17 = a3;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v11, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1AD4D3050(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer))
    {
      sub_1AD4D30C0();
      sub_1AD4D1AF8(a2);
    }
  }
}

void sub_1AD4D30C0()
{
  v1 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer;
  [*(v0 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer;
  [*(v0 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer) invalidate];
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;
}

void sub_1AD4D3134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  sub_1AD4D30C0();
  v6 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_reader;
  [*(a1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_reader) setDelegate_];
  v7 = *(a1 + v6);
  v13[0] = 0;
  if ([v7 cancelProvisionAndReturnError_])
  {
    v8 = v13[0];
  }

  else
  {
    v9 = v13[0];
    v10 = sub_1ADB05CC0();

    swift_willThrow();
  }

  v11 = (a1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_commonCompletion);
  v12 = *(a1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_commonCompletion);
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0;
    v12(a2, a3);
    sub_1AD3C5FB8(v12);
  }
}

uint64_t sub_1AD4D3250(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0x7261655464726163;
      }

      if (a1 == 6)
      {
        return 0x6E69616741797274;
      }

      return 0x726143726568746FLL;
    }

    switch(a1)
    {
      case 8:
        return 0x656E6F6850656573;
      case 9:
        return 0xD000000000000013;
      case 10:
        return 0x6F72724564726163;
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7964616572;
    }

    if (a1 == 1)
    {
      return 0x6465746365746564;
    }

    return 0;
  }

  if (a1 == 2)
  {
    return 0x656C6C65636E6163;
  }

  if (a1 == 3)
  {
    return 0x6465736F6C63;
  }

  return 0x6465766F6D6572;
}

void sub_1AD4D33D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer];
    *&Strong[OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer] = 0;
  }
}

uint64_t sub_1AD4D3434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ADB06040();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1ADB06060();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v13 = sub_1ADB068B0();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v12, v9, v16);
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v18);
}

void sub_1AD4D36E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidStartPolling);
    v2 = Strong;
    swift_beginAccess();
    v3 = *v1;
    sub_1AD3C5F14(*v1);

    if (v3)
    {
      v3();
      sub_1AD3C5FB8(v3);
    }
  }
}

uint64_t sub_1AD4D37EC(uint64_t (*a1)(id))
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1AD4D30C0();
  v3 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_reader;
  [*(v1 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_reader) setDelegate_];
  v4 = *(v1 + v3);
  v9[0] = 0;
  if ([v4 cancelProvisionAndReturnError_])
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_1ADB05CC0();

    swift_willThrow();
  }

  return a1(v5);
}

void *sub_1AD4D38C8(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
    sub_1AD3D3200(0, &qword_1EB599EC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v10 domain];
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

        return 0;
      }
    }

    v9 = [v10 code];

    return (v9 == 20007);
  }

  return result;
}

id sub_1AD4D3A10(id a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
  sub_1AD3D3200(0, &qword_1EB599EC0);
  if (swift_dynamicCast())
  {
    v3 = [v15 domain];
    v4 = sub_1ADB063B0();
    v6 = v5;

    if (v4 == sub_1ADB063B0() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_1ADB06F50();

      if ((v9 & 1) == 0)
      {

        goto LABEL_9;
      }
    }

    v11 = [v15 code];
    v12 = 5;
    if (v11 <= 20006)
    {
      if (v11 <= 20002)
      {
        if ((v11 - 20000) < 3)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if (v11 != 20003 && v11 != 20004)
      {
        v13 = 20005;
        goto LABEL_30;
      }
    }

    else
    {
      if (v11 > 20199)
      {
        if (v11 > 20901)
        {
          if (v11 == 20902)
          {
            goto LABEL_34;
          }

          v13 = 20998;
        }

        else
        {
          if (v11 == 20200)
          {
            goto LABEL_34;
          }

          v13 = 20900;
        }

LABEL_30:
        if (v11 != v13)
        {
          goto LABEL_31;
        }

LABEL_34:
        v1 = sub_1ADB05CB0();
        v10 = [objc_opt_self() errorWithUnderlyingError:v1 defaultSeverity:v12];

        goto LABEL_35;
      }

      if (v11 != 20007)
      {
        if (v11 == 20008)
        {
          goto LABEL_34;
        }

        if (v11 != 20009)
        {
LABEL_31:
          if (v11 == 20006)
          {
            v12 = 4;
          }

          else
          {
            v12 = 5;
          }

          goto LABEL_34;
        }
      }
    }

    v12 = 4;
    goto LABEL_34;
  }

LABEL_9:
  v1 = sub_1ADB05CB0();
LABEL_10:
  v10 = [objc_opt_self() errorWithUnderlyingError:v1 defaultSeverity:5];
LABEL_35:

  return v10;
}

void *sub_1AD4D3C9C(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
    sub_1AD3D3200(0, &qword_1EB599EC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v10 domain];
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

        return 0;
      }
    }

    v9 = [v10 code];

    return (v9 == 20004);
  }

  return result;
}

void sub_1AD4D3DE4(uint64_t a1)
{
  v2 = v1;
  v4 = [*(&v1->isa + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_sharedState) sid];
  v5 = sub_1ADB063B0();
  v7 = v6;

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1ADB05FA0();
  __swift_project_value_buffer(v8, qword_1EB59AB68);

  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06860();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    osloga = v2;
    aBlock = swift_slowAlloc();
    v12 = aBlock;
    *v11 = 136315394;
    *(v11 + 4) = sub_1AD3CA88C(v5, v7, &aBlock);
    *(v11 + 12) = 2080;
    v13 = sub_1AD4D3250(a1);
    v15 = sub_1AD3CA88C(v13, v14, &aBlock);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1AD337000, v9, v10, "[%s] Received card reader event: '%s'", v11, 0x16u);
    swift_arrayDestroy();
    v16 = v12;
    v2 = osloga;
    MEMORY[0x1B26F9F20](v16, -1, -1);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  if (a1 <= 4)
  {
    if (a1 > 1)
    {
LABEL_9:

      return;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_9;
      }

      if (*(&v2->isa + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer))
      {

        oslog = sub_1ADB05F80();
        v17 = sub_1ADB06860();

        if (os_log_type_enabled(oslog, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock = v19;
          *v18 = 136315394;
          v20 = sub_1AD3CA88C(v5, v7, &aBlock);

          *(v18 + 4) = v20;
          *(v18 + 12) = 2080;
          v21 = sub_1AD3CA88C(0x6465746365746564, 0xE800000000000000, &aBlock);

          *(v18 + 14) = v21;
          _os_log_impl(&dword_1AD337000, oslog, v17, "[%s] Ignoring event: '%s'", v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B26F9F20](v19, -1, -1);
          MEMORY[0x1B26F9F20](v18, -1, -1);

          return;
        }

        goto LABEL_26;
      }

      sub_1AD4D30C0();
      v22 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidFindCard;
    }

    else
    {

      v22 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidStartPolling;
    }

    v27 = (v2 + v22);
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {

      v28(v29);
      sub_1AD3C5FB8(v28);
    }

    return;
  }

  if (a1 != 5)
  {
    goto LABEL_9;
  }

  v23 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer;
  if (*(&v2->isa + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_eventCooldownTimer))
  {
    return;
  }

  sub_1AD4D30C0();
  v24 = OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_tearEventCount;
  if (*(&v2->isa + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_tearEventCount) >= 6)
  {
    v25 = [objc_opt_self() errorWithSeverity_];
    v26 = sub_1ADB06370();
    [v25 addInternalDebugDescription_];

    oslog = v25;
    sub_1AD4D1848(v25, 2u);

LABEL_26:

    return;
  }

  v30 = (v2 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onFailedToReadCard);
  swift_beginAccess();
  v31 = *v30;
  if (*v30)
  {

    v31(v32);
    sub_1AD3C5FB8(v31);
  }

  v33 = *(&v2->isa + v24);
  v34 = __OFADD__(v33, 1);
  v35 = (v33 + 1);
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(&v2->isa + v24) = v35;
    v36 = objc_opt_self();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = sub_1AD4D4788;
    v52 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1AD44AE68;
    v50 = &block_descriptor_34;
    v38 = _Block_copy(&aBlock);

    v39 = [v36 scheduledTimerWithTimeInterval:0 repeats:v38 block:2.0];
    _Block_release(v38);
    v40 = *(&v2->isa + v23);
    *(&v2->isa + v23) = v39;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = sub_1AD4D47D8;
    v52 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1AD44AE68;
    v50 = &block_descriptor_52_0;
    v42 = _Block_copy(&aBlock);

    v43 = [v36 scheduledTimerWithTimeInterval:0 repeats:v42 block:8.0];
    _Block_release(v42);
    v44 = *(&v2->isa + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer);
    *(&v2->isa + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_readFailureTimeoutTimer) = v43;
  }
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore24ProvisioningStepReadCardC0fG6ResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AD4D4810(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

id sub_1AD4D4830(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_80Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t TaskContainer.OpaqueIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1ADB07090();
  MEMORY[0x1B26F7130](a1);
  return sub_1ADB070D0();
}

uint64_t sub_1AD4D498C()
{
  sub_1ADB07090();
  sub_1AD3CBA18(v2, *v0);
  return sub_1ADB070D0();
}

uint64_t sub_1AD4D4A60(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0;
  swift_beginAccess();
  *(v5 + 16) = 0;

  v15 = a1(v14, v13);
  if (v6)
  {

    (*(v11 + 32))(a5, v13, a3);
  }

  else
  {
    v16 = v15;
    swift_unknownObjectRelease();
    *(v8 + 16) = v16;
  }

  return v8;
}

uint64_t sub_1AD4D4C58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a7;
  v9 = v7;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  swift_beginAccess();
  *(v7 + 16) = 0;

  v17 = a2(v16, a1, v15);
  if (v8)
  {

    (*(v13 + 32))(v21, v15, a5);
  }

  else
  {
    v18 = v17;
    swift_unknownObjectRelease();
    *(v9 + 16) = v18;
  }

  return v9;
}

uint64_t sub_1AD4D4E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 16) = 0;
  swift_beginAccess();
  *(v9 + 16) = 0;

  v19 = v23[5];
  v20 = a3(v18, a1, a2, v17);
  if (v19)
  {

    (*(v15 + 32))(a9, v17, a7);
  }

  else
  {
    v21 = v20;
    swift_unknownObjectRelease();
    *(v10 + 16) = v21;
  }

  return v10;
}

void *sub_1AD4D5074(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, void *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a3;
  v8 = v7;
  v13 = *v7;
  v23 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[2] = 0;
  swift_beginAccess();
  v7[2] = 0;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = *(v13 + 80);
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a1;
  v16[8] = a2;
  v16[9] = v7;

  v17 = swift_retain_n();
  v18 = v16;
  v19 = v26;
  v20 = v25(v17, &unk_1ADB849C0, v18, v15);
  if (v19)
  {

    (*(v23 + 32))(v24, v15, a5);
  }

  else
  {
    v21 = v20;
    swift_unknownObjectRelease();

    v8[2] = v21;
  }

  return v8;
}

uint64_t sub_1AD4D524C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1AD3CF220;

  return v11(a1, a6);
}

void *sub_1AD4D540C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, void *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v28 = a8;
  v29 = a4;
  v30 = a3;
  v16 = *v9;
  v27 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[2] = 0;
  swift_beginAccess();
  v10[2] = 0;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = *(v16 + 80);
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v19[8] = v28;
  v19[9] = a1;
  v19[10] = a2;
  v19[11] = v10;

  v20 = swift_retain_n();
  v21 = v19;
  v22 = v31;
  v23 = v30(v20, &unk_1ADB849B0, v21, v18);
  if (v22)
  {

    (*(v27 + 32))(a9, v18, a6);
  }

  else
  {
    v24 = v23;
    swift_unknownObjectRelease();

    v10[2] = v24;
  }

  return v10;
}

uint64_t sub_1AD4D55F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v17;
  v8[4] = *(a8 - 8);
  v12 = swift_task_alloc();
  v8[5] = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[6] = v13;
  *v13 = v8;
  v13[1] = sub_1AD4D5770;

  return v15(a1, a6, v12);
}

uint64_t sub_1AD4D5770()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AD4D58A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AD4D58A8()
{
  (*(v0[4] + 32))(v0[3], v0[5], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AD4D5928(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {

    v6 = sub_1ADB06730();
  }

  return v6 & 1;
}

uint64_t sub_1AD4D59F0()
{
  swift_beginAccess();
  sub_1ADB06760();
  sub_1ADB06A20();
  swift_getWitnessTable();
  return sub_1ADB06A30();
}

uint64_t TaskContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TaskContainer.hashValue.getter()
{
  sub_1ADB07090();
  sub_1AD4D59F0();
  return sub_1ADB070D0();
}

uint64_t sub_1AD4D5BB4()
{
  sub_1ADB07090();
  sub_1AD4D59F0();
  return sub_1ADB070D0();
}

uint64_t AnyTaskContainer.OpaqueIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1ADB07090();
  MEMORY[0x1B26F7130](a1);
  return sub_1ADB070D0();
}

uint64_t sub_1AD4D5C3C()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](v1);
  return sub_1ADB070D0();
}

uint64_t sub_1AD4D5CB0()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](v1);
  return sub_1ADB070D0();
}

unint64_t sub_1AD4D5D30()
{
  result = qword_1EB59BD48[0];
  if (!qword_1EB59BD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB59BD48);
  }

  return result;
}

uint64_t sub_1AD4D5FBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AD4D6020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AD4D6068(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1AD4D60D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AD3CF220;

  JUMPOUT(0x1AD4D55F8);
}

void sub_1AD4D61E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AD3CF220;

  JUMPOUT(0x1AD4D524CLL);
}

void sub_1AD4D6334(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

char *sub_1AD4D63A0(uint64_t a1, __int128 *a2, int a3)
{
  v32 = a3;
  v31 = a2[2];
  v6 = *(a2 + 6);
  v7 = sub_1ADB05FA0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_urlSession] = 0;
  v11 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_delegateQueue;
  v12 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v12 setMaxConcurrentOperationCount_];
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask] = 0;
  v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_hasExplicitlyDisconnected] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingInterval] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTolerance] = 0x4000000000000000;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_connectionTimeout] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_connectionAttemptCount] = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_connectionAttemptLimit] = 2;
  v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_hasReportedError] = 0;
  v13 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_websocketURL;
  v14 = sub_1ADB05D20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = *a2;
  v29 = a2[1];
  v30 = v17;
  v33 = a1;
  v16(&v3[v13], a1, v14);
  v18 = &v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_remoteIdentifier];
  v19 = v29;
  *v18 = v30;
  *(v18 + 1) = v19;
  *(v18 + 2) = v31;
  *(v18 + 6) = v6;
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier] = v32;
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_1EB59AA18);
  v21 = *(v8 + 16);
  v21(&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_logger], v20, v7);
  v22 = type metadata accessor for RemoteNetworkPaymentWebsocketURLSession();
  v34.receiver = v3;
  v34.super_class = v22;
  v23 = objc_msgSendSuper2(&v34, sel_init);
  v21(v10, &v23[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_logger], v7);
  v24 = v23;
  v25 = sub_1ADB05F80();
  v26 = sub_1ADB06830();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 33685760;
    *(v27 + 4) = *&v24[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

    _os_log_impl(&dword_1AD337000, v25, v26, "Websocket %{public}hd: Initialized URLSession WebSocket", v27, 6u);
    MEMORY[0x1B26F9F20](v27, -1, -1);
  }

  else
  {
  }

  (*(v15 + 8))(v33, v14);
  (*(v8 + 8))(v10, v7);
  return v24;
}

id sub_1AD4D675C()
{
  v1 = sub_1ADB05FA0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_logger, v1);
  v5 = v0;
  v6 = sub_1ADB05F80();
  v7 = sub_1ADB06840();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 33685760;
    *(v8 + 4) = *(&v5->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v6, v7, "Websocket %{public}hd: Deinit", v8, 6u);
    MEMORY[0x1B26F9F20](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  (*(v2 + 8))(v4, v1);
  v9 = type metadata accessor for RemoteNetworkPaymentWebsocketURLSession();
  v11.receiver = v5;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t type metadata accessor for RemoteNetworkPaymentWebsocketURLSession()
{
  result = qword_1EB59BF38;
  if (!qword_1EB59BF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1AD4D6AA4()
{
  v1 = [objc_opt_self() defaultSessionConfiguration];
  [v1 setRequestCachePolicy_];
  [v1 setWaitsForConnectivity_];
  [v1 setTimeoutIntervalForRequest_];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_1ADB063B0();

    v3 = sub_1ADB06370();
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E698DCC8]) initWithIdentifier_];

  [v1 set:v4 appleIDContext:?];
  v5 = [objc_opt_self() sessionWithConfiguration:v1 delegate:v0 delegateQueue:*(v0 + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_delegateQueue)];

  return v5;
}

void sub_1AD4D6C1C()
{
  v1 = sub_1ADB05920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0;
  v6 = sub_1ADB05F80();
  v7 = sub_1ADB06830();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 33685760;
    *(v8 + 4) = *(&v5->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v6, v7, "Websocket %{public}hd: Connect called", v8, 6u);
    MEMORY[0x1B26F9F20](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask;
  if (*(&v5->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask))
  {
    v26 = v5;
    v27 = sub_1ADB05F80();
    v10 = sub_1ADB06850();
    if (os_log_type_enabled(v27, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 33685760;
      v12 = v26;
      *(v11 + 4) = *(&v26->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, v27, v10, "Websocket %{public}hd: Websocket task already exists", v11, 6u);
      MEMORY[0x1B26F9F20](v11, -1, -1);
      v13 = v27;
    }

    else
    {

      v13 = v26;
    }
  }

  else
  {
    v14 = *(&v5->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_connectionAttemptCount);
    v15 = __OFADD__(v14, 1);
    v16 = (v14 + 1);
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(&v5->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_connectionAttemptCount) = v16;
      sub_1AD4D8A04(v5 + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_websocketURL, v4);
      v17 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_urlSession;
      v18 = *(&v5->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_urlSession);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v21 = sub_1AD4D6AA4();
        v22 = *(&v5->isa + v17);
        *(&v5->isa + v17) = v21;
        v19 = v21;
      }

      v20 = sub_1ADB058E0();
      v23 = [(objc_class *)v19 webSocketTaskWithRequest:v20];

      v24 = v23;
      [v24 resume];
      v25 = *(&v5->isa + v9);
      *(&v5->isa + v9) = v24;

      sub_1AD4D7798();
      (*(v2 + 8))(v4, v1);
    }
  }
}

void sub_1AD4D6F74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_hasExplicitlyDisconnected;
  v3 = v0[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_hasExplicitlyDisconnected];
  v10 = v0;
  oslog = sub_1ADB05F80();
  v4 = sub_1ADB06830();
  v5 = os_log_type_enabled(oslog, v4);
  if (v3)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 33685760;
      *(v6 + 4) = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, oslog, v4, "Websocket %{public}hd: Disconnect already been called", v6, 6u);
      MEMORY[0x1B26F9F20](v6, -1, -1);
      v7 = oslog;
    }

    else
    {

      v7 = v10;
    }
  }

  else
  {
    if (v5)
    {
      v8 = swift_slowAlloc();
      *v8 = 33685760;
      *(v8 + 4) = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, oslog, v4, "Websocket %{public}hd: Disconnect called", v8, 6u);
      MEMORY[0x1B26F9F20](v8, -1, -1);
      v9 = oslog;
    }

    else
    {

      v9 = v10;
    }

    v1[v2] = 1;
    sub_1AD4D9A24();
  }
}

void sub_1AD4D711C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1ADB06950();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1ADB06410();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = *&v2[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask];
  if (!v10)
  {
    v32 = v2;
    v33 = sub_1ADB05F80();
    v16 = sub_1ADB06850();
    if (!os_log_type_enabled(v33, v16))
    {

      v30 = v32;
      goto LABEL_15;
    }

    v17 = swift_slowAlloc();
    *v17 = 33685760;
    v18 = v32;
    *(v17 + 4) = *(&v32->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v33, v16, "Websocket %{public}hd: Send Data: Websocket task does not exist", v17, 6u);
    MEMORY[0x1B26F9F20](v17, -1, -1);
LABEL_13:
    v30 = v33;
LABEL_15:

    return;
  }

  v11 = v10;
  if ([v11 state])
  {
    v33 = v11;
    v12 = v2;
    v13 = sub_1ADB05F80();
    v14 = sub_1ADB06850();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 33686016;
      *(v15 + 4) = *&v12[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

      *(v15 + 6) = 2048;
      *(v15 + 8) = [v33 state];

      _os_log_impl(&dword_1AD337000, v13, v14, "Websocket %{public}hd: Send Data: Websocket not connected %ld, skipping payload", v15, 0x10u);
      MEMORY[0x1B26F9F20](v15, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v19 = v2;
  sub_1AD3C7528(a1, a2);
  v20 = sub_1ADB05F80();
  v21 = sub_1ADB06840();
  sub_1AD3C757C(a1, a2);
  v22 = os_log_type_enabled(v20, v21);
  v33 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    LODWORD(v32) = v21;
    v24 = v23;
    v31 = swift_slowAlloc();
    v34 = v31;
    *v24 = 33686018;
    *(v24 + 4) = *(&v19->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

    *(v24 + 6) = 2080;
    sub_1ADB063F0();
    v25 = sub_1ADB063D0();
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v25 = 7104878;
      v27 = 0xE300000000000000;
    }

    v28 = sub_1AD3CA88C(v25, v27, &v34);

    *(v24 + 8) = v28;
    _os_log_impl(&dword_1AD337000, v20, v32, "Websocket %{public}hd: Send Data Payload: %s", v24, 0x10u);
    v29 = v31;
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1B26F9F20](v29, -1, -1);
    MEMORY[0x1B26F9F20](v24, -1, -1);
  }

  else
  {
  }

  *v8 = a1;
  v8[1] = a2;
  (*(v6 + 104))(v8, *MEMORY[0x1E6969F28], v5);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1AD3C7528(a1, a2);

  sub_1ADB06940();

  (*(v6 + 8))(v8, v5);
}

void sub_1AD4D7600(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
      v5 = v3;
      v6 = sub_1ADB05F80();
      v7 = sub_1ADB06850();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 33686018;
        *(v8 + 4) = *(&v5->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

        *(v8 + 6) = 2112;
        v10 = a1;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 8) = v11;
        *v9 = v11;
        _os_log_impl(&dword_1AD337000, v6, v7, "Websocket %{public}hd: Send data payload failure: %@", v8, 0x10u);
        sub_1AD3D0E3C(v9, &unk_1EB59A340);
        MEMORY[0x1B26F9F20](v9, -1, -1);
        MEMORY[0x1B26F9F20](v8, -1, -1);
      }

      else
      {

        v6 = v5;
      }

      v12 = a1;
      sub_1AD4D96D4(a1);
    }
  }
}

void sub_1AD4D7798()
{
  v1 = *&v0[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask];
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = v1;

    sub_1ADB06960();
  }

  else
  {
    v8 = v0;
    oslog = sub_1ADB05F80();
    v5 = sub_1ADB06850();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 33685760;
      *(v6 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, oslog, v5, "Websocket %{public}hd: Listen: Websocket task does not exist", v6, 6u);
      MEMORY[0x1B26F9F20](v6, -1, -1);
      v7 = oslog;
    }

    else
    {

      v7 = v8;
    }
  }
}

void sub_1AD4D7938(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BF80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = aBlock - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_delegateQueue);

    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_1AD4DA69C(a1, v9);
    v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    sub_1AD4DA70C(v9, v16 + v15);
    *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    aBlock[4] = sub_1AD4DA77C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = &block_descriptor_64_0;
    v17 = _Block_copy(aBlock);
    v18 = a3;

    [v12 addOperationWithBlock_];
    _Block_release(v17);
  }
}

void sub_1AD4D7B64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1ADB06410();
  v81 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ADB06950();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BF80);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v77 - v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  sub_1AD4DA69C(a2, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = v82;
    (*(v9 + 32))(v82, v16, v8);
    (*(v9 + 16))(v12, v25, v8);
    v26 = (*(v9 + 88))(v12, v8);
    if (v26 == *MEMORY[0x1E6969F28])
    {
      (*(v9 + 96))(v12, v8);
      v27 = *v12;
      v28 = v12[1];
      v29 = v18;
      sub_1AD3C7528(v27, v28);
      v30 = sub_1ADB05F80();
      v31 = sub_1ADB06840();
      sub_1AD3C757C(v27, v28);
      v81 = v30;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v83 = v80;
        *v32 = 33686018;
        *(v32 + 4) = *&v29[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

        *(v32 + 6) = 2080;
        sub_1ADB063F0();
        v33 = sub_1ADB063D0();
        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v33 = 7104878;
          v35 = 0xE300000000000000;
        }

        v36 = v29;
        v37 = v31;
        v38 = sub_1AD3CA88C(v33, v35, &v83);

        *(v32 + 8) = v38;
        v39 = v37;
        v29 = v36;
        v40 = v81;
        _os_log_impl(&dword_1AD337000, v81, v39, "Websocket %{public}hd: Receive Data Payload: %s", v32, 0x10u);
        v41 = v80;
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1B26F9F20](v41, -1, -1);
        MEMORY[0x1B26F9F20](v32, -1, -1);
      }

      else
      {
      }

      v54 = swift_unknownObjectWeakLoadStrong();
      if (!v54)
      {
        v57 = sub_1AD3C757C(v27, v28);
        goto LABEL_39;
      }

      v55 = v54;
      v56 = v29;
      sub_1AD4DA818(v27, v28, v55);
      sub_1AD3C757C(v27, v28);
    }

    else
    {
      if (v26 != *MEMORY[0x1E6969F30])
      {
        v58 = v18;
        v59 = sub_1ADB05F80();
        v60 = sub_1ADB06850();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 33685760;
          *(v61 + 4) = *(&v58->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

          _os_log_impl(&dword_1AD337000, v59, v60, "Websocket %{public}hd: Unknown message type received", v61, 6u);
          MEMORY[0x1B26F9F20](v61, -1, -1);
        }

        else
        {

          v59 = v58;
        }

        v57 = (*(v9 + 8))(v12, v8);
        goto LABEL_39;
      }

      (*(v9 + 96))(v12, v8);
      v43 = *v12;
      v42 = v12[1];
      v44 = v18;

      v45 = sub_1ADB05F80();
      v46 = sub_1ADB06840();

      v47 = os_log_type_enabled(v45, v46);
      v79 = v43;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v80 = v44;
        v49 = v48;
        v50 = swift_slowAlloc();
        v78 = v42;
        v51 = v43;
        v52 = v50;
        v83 = v50;
        *v49 = 33686018;
        *(v49 + 4) = *&v80[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

        *(v49 + 6) = 2080;
        *(v49 + 8) = sub_1AD3CA88C(v51, v78, &v83);
        _os_log_impl(&dword_1AD337000, v45, v46, "Websocket %{public}hd: Receive String Payload: %s)", v49, 0x10u);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1B26F9F20](v52, -1, -1);
        v53 = v49;
        v44 = v80;
        MEMORY[0x1B26F9F20](v53, -1, -1);
      }

      else
      {
      }

      v70 = swift_unknownObjectWeakLoadStrong();
      if (!v70)
      {

        goto LABEL_39;
      }

      v71 = v70;
      v72 = v44;
      sub_1ADB063F0();
      v73 = sub_1ADB063C0();
      v75 = v74;

      (v81[1].isa)(v7, v5);
      if (v75 >> 60 != 15)
      {
        sub_1AD4DA818(v73, v75, v71);

        swift_unknownObjectRelease();
        v57 = sub_1AD422FB0(v73, v75);
        goto LABEL_39;
      }

      sub_1AD4790F0(0xD000000000000028, 0x80000001ADBA27A0);
    }

    v57 = swift_unknownObjectRelease();
LABEL_39:
    sub_1AD4D7798(v57);

    (*(v9 + 8))(v82, v8);
    return;
  }

  v19 = *v16;
  v20 = [a3 response];
  if (v20)
  {
    v21 = v20;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v23 = v22;
    if (v22)
    {
      v24 = [v22 statusCode] == 401;
    }

    else
    {

      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  if ((*(v18 + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_hasExplicitlyDisconnected) & 1) != 0 || v24)
  {
  }

  else
  {
    v62 = v18;
    v63 = v19;
    v64 = sub_1ADB05F80();
    v65 = sub_1ADB06850();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 33686018;
      *(v66 + 4) = *(&v62->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      *(v66 + 6) = 2112;
      v68 = v19;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 8) = v69;
      *v67 = v69;
      _os_log_impl(&dword_1AD337000, v64, v65, "Websocket %{public}hd: Receive failure: %@", v66, 0x10u);
      sub_1AD3D0E3C(v67, &unk_1EB59A340);
      MEMORY[0x1B26F9F20](v67, -1, -1);
      MEMORY[0x1B26F9F20](v66, -1, -1);
    }

    else
    {

      v64 = v62;
    }

    v76 = v19;
    sub_1AD4D96D4(v19);
  }
}

void sub_1AD4D8488()
{
  v1 = *&v0[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask];
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1AD4DA684;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD4D6334;
    aBlock[3] = &block_descriptor_46_1;
    v3 = _Block_copy(aBlock);
    v4 = v1;

    [v4 sendPingWithPongReceiveHandler_];
    _Block_release(v3);
  }

  else
  {
    v8 = v0;
    oslog = sub_1ADB05F80();
    v5 = sub_1ADB06850();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 33685760;
      *(v6 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, oslog, v5, "Websocket %{public}hd: Ping: Websocket task does not exist", v6, 6u);
      MEMORY[0x1B26F9F20](v6, -1, -1);
      v7 = oslog;
    }

    else
    {

      v7 = v8;
    }
  }
}

void sub_1AD4D8654(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_delegateQueue);

    v5 = swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = a1;
    v10[4] = sub_1AD4DA68C;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1AD471DC4;
    v10[3] = &block_descriptor_53_0;
    v8 = _Block_copy(v10);
    v9 = a1;

    [v4 addOperationWithBlock_];
    _Block_release(v8);
  }
}

void sub_1AD4D87BC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = a2;
      v6 = v4;
      v7 = sub_1ADB05F80();
      v8 = sub_1ADB06850();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 33686018;
        *(v9 + 4) = *&v6[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

        *(v9 + 6) = 2112;
        v11 = a2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 8) = v12;
        *v10 = v12;
        _os_log_impl(&dword_1AD337000, v7, v8, "Websocket %{public}hd: Ping failed: %@", v9, 0x10u);
        sub_1AD3D0E3C(v10, &unk_1EB59A340);
        MEMORY[0x1B26F9F20](v10, -1, -1);
        MEMORY[0x1B26F9F20](v9, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v13 = Strong;
      v14 = sub_1ADB05F80();
      v15 = sub_1ADB06840();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 33685760;
        *(v16 + 4) = *(&v13->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

        _os_log_impl(&dword_1AD337000, v14, v15, "Websocket %{public}hd: Ping succeeded", v16, 6u);
        MEMORY[0x1B26F9F20](v16, -1, -1);
      }

      else
      {

        v14 = v13;
      }

      v17 = *(&v13->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer);
      *(&v13->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer) = 0;

      sub_1AD4D9420();
    }
  }
}

uint64_t sub_1AD4D8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1ADB05D20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ADB05920();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  sub_1ADB05910();
  sub_1AD4D8DC8();
  sub_1ADB05900();
  v14 = v3;
  v15 = sub_1ADB05F80();
  v16 = sub_1ADB06840();
  if (os_log_type_enabled(v15, v16))
  {
    v28 = a2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 33686274;
    *(v17 + 4) = *&v14[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

    *(v17 + 6) = 2080;
    swift_beginAccess();
    sub_1AD4DA63C(&unk_1EB59BF70, MEMORY[0x1E6967EC8]);
    v19 = sub_1ADB06EF0();
    v21 = sub_1AD3CA88C(v19, v20, &v29);

    *(v17 + 8) = v21;
    *(v17 + 16) = 2080;
    swift_beginAccess();
    v22 = sub_1ADB058F0();
    swift_endAccess();
    if (!v22)
    {
      sub_1AD4262D4(MEMORY[0x1E69E7CC0]);
    }

    v23 = sub_1ADB06290();
    v25 = v24;

    v26 = sub_1AD3CA88C(v23, v25, &v29);

    *(v17 + 18) = v26;
    _os_log_impl(&dword_1AD337000, v15, v16, "Websocket %{public}hd: Connection request: %s - Headers: %s", v17, 0x1Au);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v18, -1, -1);
    MEMORY[0x1B26F9F20](v17, -1, -1);

    a2 = v28;
  }

  else
  {
  }

  swift_beginAccess();
  (*(v11 + 16))(a2, v13, v10);
  return (*(v11 + 8))(v13, v10);
}

id sub_1AD4D8DC8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedService];
  if (!v2)
  {
    v18 = v0;
    v19 = sub_1ADB05F80();
    v20 = sub_1ADB06850();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 33685760;
      *(v21 + 4) = *&v18[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

      _os_log_impl(&dword_1AD337000, v19, v20, "Websocket %{public}hd: Connection request: Web service not available", v21, 6u);
      MEMORY[0x1B26F9F20](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_1AD4262D4(MEMORY[0x1E69E7CC0]);
  v68 = v4;
  result = [v3 _appleAccountInformation];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result authorizationHeader];

  if (v7)
  {
    v8 = sub_1ADB063B0();
    v10 = v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v4;
    sub_1AD4EC6B0(v8, v10, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
    v68 = v4;
  }

  v12 = [v3 targetDevice];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 secureElementIdentifiers];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1ADB06610();

      v17 = sub_1AD3D1ADC(v16);
    }

    else
    {
      v17 = 0;
    }

    v22 = sub_1ADB063B0();
    v24 = v23;
    v25 = [v13 bridgedClientInfo];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1ADB063B0();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    sub_1AD50FA8C(v27, v29, v22, v24);
    v30 = [v13 deviceRegion];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1ADB063B0();
      v34 = v33;

      v35 = sub_1ADB063B0();
      v37 = v36;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      sub_1AD4EC6B0(v32, v34, v35, v37, v38);
      swift_unknownObjectRelease();

      if (!v17)
      {
        goto LABEL_20;
      }

LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
      sub_1AD488320();
      v43 = sub_1ADB062F0();
      v45 = v44;

      v46 = sub_1ADB063B0();
      v48 = v47;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      sub_1AD4EC6B0(v43, v45, v46, v48, v49);

      goto LABEL_23;
    }

    swift_unknownObjectRelease();
    if (v17)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  v39 = [objc_opt_self() secureElementIdentifiers];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1ADB06610();

    v42 = sub_1AD3D1ADC(v41);

    if (v42)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v50 = [objc_opt_self() clientInfoHTTPHeader];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1ADB063B0();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  sub_1AD50FA8C(v52, v54, 0xD000000000000013, 0x80000001ADBA2700);
  v55 = &v1[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_remoteIdentifier];
  v56 = *&v1[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_remoteIdentifier + 8];
  if (v56)
  {
    v58 = v55[3];
    v57 = v55[4];
    v59 = *v55;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4EC6B0(v58, v57, 0xD00000000000001DLL, 0x80000001ADBA2750, v60);

    v61 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4EC6B0(v59, v56, 0xD000000000000021, 0x80000001ADBA2770, v61);
  }

  if (PKRemoteNetworkPaymentSkipAuthenticationHeader())
  {
    v62 = v1;
    v63 = sub_1ADB05F80();
    v64 = sub_1ADB06850();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 33685760;
      *(v65 + 4) = *(&v62->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, v63, v64, "Websocket %{public}hd: Fetch connection options: Adding skip authentication header", v65, 6u);
      MEMORY[0x1B26F9F20](v65, -1, -1);
    }

    else
    {

      v63 = v62;
    }

    v66 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4EC6B0(1702195828, 0xE400000000000000, 0xD000000000000020, 0x80000001ADBA2720, v66);

    return v68;
  }

  else
  {

    return v68;
  }
}

void sub_1AD4D9420()
{
  v1 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer;
  if (*&v0[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer])
  {
    v12 = v0;
    oslog = sub_1ADB05F80();
    v2 = sub_1ADB06850();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 33685760;
      *(v3 + 4) = *(&v12->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, oslog, v2, "Websocket %{public}hd: Ping scheduled but timer already exists", v3, 6u);
      MEMORY[0x1B26F9F20](v3, -1, -1);
      v4 = oslog;
    }

    else
    {

      v4 = v12;
    }
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    aBlock[4] = sub_1AD4DA600;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD44AE68;
    aBlock[3] = &block_descriptor_35;
    v6 = _Block_copy(aBlock);
    v7 = objc_opt_self();
    v8 = v0;
    v9 = [v7 timerWithTimeInterval:0 repeats:v6 block:10.0];
    _Block_release(v6);

    [v9 setTolerance_];
    v10 = [objc_opt_self() mainRunLoop];
    [v10 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

    v11 = *&v0[v1];
    *&v0[v1] = v9;
  }
}

void sub_1AD4D965C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1AD4D96D4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v22 = v1;
    oslog = sub_1ADB05F80();
    v8 = sub_1ADB06850();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 33685760;
      *(v9 + 4) = *(&v22->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, oslog, v8, "Websocket %{public}hd: No delegate to inform of error", v9, 6u);
      MEMORY[0x1B26F9F20](v9, -1, -1);
      goto LABEL_7;
    }

LABEL_12:

    v10 = v22;
    goto LABEL_13;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_hasReportedError;
  if (*(v1 + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_hasReportedError))
  {
    v22 = v1;
    oslog = sub_1ADB05F80();
    v6 = sub_1ADB06850();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 33685760;
      *(v7 + 4) = *(&v22->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, oslog, v6, "Websocket %{public}hd: Already reported an error, not informing delegate", v7, 6u);
      MEMORY[0x1B26F9F20](v7, -1, -1);
      swift_unknownObjectRelease();
LABEL_7:
      v10 = oslog;
LABEL_13:

      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v11 = v1;
  v12 = a1;
  v13 = v1;
  v14 = sub_1ADB05F80();
  v15 = sub_1ADB06830();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 33686018;
    *(v16 + 4) = *&v11[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

    *(v16 + 6) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v18 = sub_1ADB07020();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = sub_1AD3CA88C(v18, v20, &v24);

    *(v16 + 8) = v21;
    _os_log_impl(&dword_1AD337000, v14, v15, "Websocket %{public}hd: Report error: %s", v16, 0x10u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1B26F9F20](v17, -1, -1);
    MEMORY[0x1B26F9F20](v16, -1, -1);
  }

  else
  {
  }

  v13[v5] = 1;
  sub_1AD4D9F20(a1, v4);
  swift_unknownObjectRelease();
}

void sub_1AD4D9A24()
{
  v1 = v0;
  v2 = sub_1ADB05F80();
  v3 = sub_1ADB06830();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 33685760;
    *(v4 + 4) = *(&v1->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v2, v3, "Websocket %{public}hd: Cleaning up state", v4, 6u);
    MEMORY[0x1B26F9F20](v4, -1, -1);
  }

  else
  {

    v2 = v1;
  }

  v5 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer;
  [*(&v1->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer) invalidate];
  v6 = *(&v1->isa + v5);
  *(&v1->isa + v5) = 0;

  v7 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask;
  v8 = *(&v1->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask);
  if (v8)
  {
    [v8 cancelWithCloseCode:1000 reason:0];
    v9 = *(&v1->isa + v7);
  }

  else
  {
    v9 = 0;
  }

  *(&v1->isa + v7) = 0;

  v10 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_urlSession;
  [*(&v1->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_urlSession) invalidateAndCancel];
  v11 = *(&v1->isa + v10);
  *(&v1->isa + v10) = 0;
}

uint64_t sub_1AD4D9DF8()
{
  result = sub_1ADB05D20();
  if (v1 <= 0x3F)
  {
    result = sub_1ADB05FA0();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1AD4D9F20(void *a1, void *a2)
{
  v4 = sub_1ADB05F00();
  v46 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BF48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_1ADB05F10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v14 = 7104878;
  v15 = sub_1ADB05FA0();
  __swift_project_value_buffer(v15, qword_1EB59AA18);
  v16 = a2;
  v17 = a1;
  v18 = sub_1ADB05F80();
  v19 = sub_1ADB06850();

  if (os_log_type_enabled(v18, v19))
  {
    v42 = v12;
    v43 = v4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v21;
    *v20 = 33686018;
    *(v20 + 4) = *&v16[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier];

    *(v20 + 6) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v22 = sub_1ADB07020();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_1AD3CA88C(v22, v24, &v49);

    *(v20 + 8) = v25;
    _os_log_impl(&dword_1AD337000, v18, v19, "Session %{public}hd: Websocket error: %s", v20, 0x10u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1B26F9F20](v21, -1, -1);
    MEMORY[0x1B26F9F20](v20, -1, -1);

    v4 = v43;
    v14 = 7104878;
    v12 = v42;
  }

  else
  {
  }

  v26 = v47;
  if (!a1)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_14;
  }

  v49 = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
  v28 = swift_dynamicCast();
  (*(v12 + 56))(v10, v28 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_14:
    sub_1AD3D0E3C(v10, &qword_1EB59BF48);
    goto LABEL_15;
  }

  (*(v12 + 32))(v26, v10, v11);
  sub_1AD4DA63C(&qword_1EB59BF60, MEMORY[0x1E6969C20]);
  v29 = v44;
  v30 = v26;
  sub_1ADB05C80();
  v31 = v45;
  sub_1ADB05EF0();
  sub_1AD4DA63C(&qword_1EB59BF68, MEMORY[0x1E6969BF8]);
  sub_1ADB065A0();
  sub_1ADB065A0();
  v32 = *(v46 + 8);
  v32(v31, v4);
  v32(v29, v4);
  if (v49 == v48)
  {
    v33 = 0x80000001ADBA26C0;
    (*(v12 + 8))(v30, v11);
    v34 = 0xD000000000000038;
    v35 = 6;
    goto LABEL_19;
  }

  (*(v12 + 8))(v30, v11);
  v14 = 7104878;
LABEL_15:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1ADB06C10();

  v49 = 0xD00000000000001ALL;
  v50 = 0x80000001ADBA26A0;
  if (a1)
  {
    swift_getErrorValue();
    v14 = sub_1ADB07020();
    v37 = v36;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  MEMORY[0x1B26F6530](v14, v37);

  v34 = v49;
  v33 = v50;
  v35 = 5;
LABEL_19:
  if (v16[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported] == 1)
  {
    sub_1AD47A500(v34, v33, v35);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ADB78CE0;
    *(inited + 32) = v34;
    *(inited + 40) = v33;
    *(inited + 48) = v35;
    sub_1AD4757F0(0, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v39 = v16[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state];
  v16[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state] = 8;
  return sub_1AD474328(v39);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4DA63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AD4DA69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4DA70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AD4DA77C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BF80) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1AD4D7B64(v3, v0 + v2, v4);
}

void sub_1AD4DA818(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v6 = sub_1ADB05FA0();
  __swift_project_value_buffer(v6, qword_1EB59AA18);
  v7 = a3;
  v8 = sub_1ADB05F80();
  v9 = sub_1ADB06830();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 33685760;
    *(v10 + 4) = *(&v7->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v8, v9, "Session %{public}hd: Processing onMessage", v10, 6u);
    MEMORY[0x1B26F9F20](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  v11 = *(&v7->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
  if (v11 == 6)
  {
    sub_1AD478C28();
  }

  else
  {
    if (v11 != 5)
    {
      if (v11 == 3)
      {
        sub_1AD4774D8(a1, a2);
        return;
      }

      v12 = v7;
      v13 = sub_1ADB05F80();
      v14 = sub_1ADB06830();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 33685760;
        *(v15 + 4) = *(&v12->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

        _os_log_impl(&dword_1AD337000, v13, v14, "Session %{public}hd: Received unsolicited message, treating as merchant update", v15, 6u);
        MEMORY[0x1B26F9F20](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }
    }

    sub_1AD4779F4(a1, a2);
  }
}

void sub_1AD4DAA40(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1ADB05F80();
    v10 = sub_1ADB06830();
    v11 = os_log_type_enabled(v9, v10);
    switch(a1)
    {
      case 2:
        if (!v11)
        {
          goto LABEL_14;
        }

        v13 = swift_slowAlloc();
        *v13 = 33685760;
        *(v13 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

        v14 = "Websocket %{public}hd: URLSession: task:didCompleteWithError: Credential renewal failed";
        break;
      case 1:
        if (!v11)
        {
          goto LABEL_14;
        }

        v13 = swift_slowAlloc();
        *v13 = 33685760;
        *(v13 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

        v14 = "Websocket %{public}hd: URLSession: task:didCompleteWithError: Credential renewal rejected";
        break;
      case 0:
        if (v11)
        {
          v12 = swift_slowAlloc();
          *v12 = 33685760;
          *(v12 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

          _os_log_impl(&dword_1AD337000, v9, v10, "Websocket %{public}hd: URLSession: task:didCompleteWithError: Renewed credential", v12, 6u);
          MEMORY[0x1B26F9F20](v12, -1, -1);
        }

        else
        {

          v9 = v8;
        }

        [a3 cancel];
        v15 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask);
        *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask) = 0;

        sub_1AD4D6C1C();
        goto LABEL_18;
      default:
        if (v11)
        {
          v13 = swift_slowAlloc();
          *v13 = 33685760;
          *(v13 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

          v14 = "Websocket %{public}hd: URLSession: task:didCompleteWithError: Unknown credential renewal state";
          break;
        }

LABEL_14:

        v9 = v8;
        goto LABEL_15;
    }

    _os_log_impl(&dword_1AD337000, v9, v10, v14, v13, 6u);
    MEMORY[0x1B26F9F20](v13, -1, -1);
LABEL_15:

    sub_1AD4D96D4(a4);
LABEL_18:
  }
}

void sub_1AD4DACAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = objc_opt_self();

  v10 = a3;
  v11 = a4;
  v12 = [v9 sharedService];
  if (v12)
  {
    v13 = v12;
    v19[4] = sub_1AD4DBDE0;
    v19[5] = v8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1AD4D965C;
    v19[3] = &block_descriptor_72_1;
    v14 = _Block_copy(v19);

    [v13 _renewAppleAccountWithCompletionHandler_];
    _Block_release(v14);
  }

  else
  {
    v15 = a1;
    v16 = sub_1ADB05F80();
    v17 = sub_1ADB06850();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 33685760;
      *(v18 + 4) = *(&v15->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, v16, v17, "Websocket %{public}hd: handleAuthenticationFailure: Web service not available", v18, 6u);
      MEMORY[0x1B26F9F20](v18, -1, -1);
    }

    else
    {

      v16 = v15;
    }

    sub_1AD4DAA40(2, a2, v10, a4);
  }
}

void sub_1AD4DAEEC()
{
  v1 = v0;
  v2 = sub_1ADB05F80();
  v3 = sub_1ADB06830();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 33685760;
    *(v4 + 4) = *(&v1->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v2, v3, "Websocket %{public}hd: Did connect", v4, 6u);
    MEMORY[0x1B26F9F20](v4, -1, -1);
  }

  else
  {

    v2 = v1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v7 = sub_1ADB05FA0();
    __swift_project_value_buffer(v7, qword_1EB59AA18);
    v8 = v6;
    v9 = sub_1ADB05F80();
    v10 = sub_1ADB06830();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 33685760;
      *(v11 + 4) = *&v8[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Websocket connected", v11, 6u);
      MEMORY[0x1B26F9F20](v11, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v12 = v8[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state];
    v8[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state] = 2;
    sub_1AD474328(v12);
    sub_1AD475544();
    swift_unknownObjectRelease();
  }

  sub_1AD4D9420();
}

void sub_1AD4DB0FC(void *a1)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v2 = sub_1ADB05FA0();
  __swift_project_value_buffer(v2, qword_1EB59AA18);
  v3 = a1;
  v4 = sub_1ADB05F80();
  v5 = sub_1ADB06830();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 33685760;
    *(v6 + 4) = *(&v3->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v4, v5, "Session %{public}hd: Websocket disconnected", v6, 6u);
    MEMORY[0x1B26F9F20](v6, -1, -1);
  }

  else
  {

    v4 = v3;
  }

  if ((*(&v3->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported) & 1) == 0)
  {
    sub_1AD4757F0(0, &unk_1F2261C40);
    sub_1AD47A2E0(&unk_1F2261C60);
  }

  v7 = *(&v3->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
  *(&v3->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 8;
  sub_1AD474328(v7);
}

void *sub_1AD4DB258(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = v3;
  sub_1AD422FC4(a2, a3);
  v8 = sub_1ADB05F80();
  v9 = sub_1ADB06830();
  sub_1AD422FB0(a2, a3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 33686274;
    *(v10 + 4) = *&v7[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

    *(v10 + 6) = 2048;
    *(v10 + 8) = a1;
    *(v10 + 16) = 2080;
    sub_1AD422FC4(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BF90);
    v12 = sub_1ADB06420();
    v14 = sub_1AD3CA88C(v12, v13, &v18);

    *(v10 + 18) = v14;
    _os_log_impl(&dword_1AD337000, v8, v9, "Websocket %{public}hd: Did disconnect, code: %ld, reason: %s", v10, 0x1Au);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B26F9F20](v11, -1, -1);
    MEMORY[0x1B26F9F20](v10, -1, -1);
  }

  else
  {
  }

  v15 = OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer;
  [*&v7[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_pingTimer] invalidate];
  v16 = *&v7[v15];
  *&v7[v15] = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AD4DB0FC(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD4DB434(void *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = sub_1ADB05F80();
  v6 = sub_1ADB06850();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 33686018;
    *(v7 + 4) = *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

    *(v7 + 6) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v9 = sub_1ADB07020();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_1AD3CA88C(v9, v11, &v14);

    *(v7 + 8) = v12;
    _os_log_impl(&dword_1AD337000, v5, v6, "Websocket %{public}hd: URLSession didBecomeInvalidWithError: %s", v7, 0x10u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B26F9F20](v8, -1, -1);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }

  else
  {
  }

  v13 = *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_urlSession];
  *&v3[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_urlSession] = 0;
}

void sub_1AD4DB5C0(uint64_t a1, void *a2)
{
  v4 = *&v2[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_webSocketTask];
  if (!v4)
  {
    goto LABEL_10;
  }

  sub_1AD3C766C();
  v5 = v4;
  if ((sub_1ADB069D0() & 1) == 0)
  {

LABEL_10:
    v14 = v2;
    v15 = a2;
    v16 = sub_1ADB05F80();
    v17 = sub_1ADB06850();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v61 = v19;
      *v18 = 33686018;
      *(v18 + 4) = *&v14[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

      *(v18 + 6) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = sub_1ADB07020();
        v22 = v21;
      }

      else
      {
        v20 = 7104878;
        v22 = 0xE300000000000000;
      }

      v23 = sub_1AD3CA88C(v20, v22, &v61);

      *(v18 + 8) = v23;
      _os_log_impl(&dword_1AD337000, v16, v17, "Websocket %{public}hd: URLSession: task:didCompleteWithError: Unknown task, error: %s", v18, 0x10u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1B26F9F20](v19, -1, -1);
      MEMORY[0x1B26F9F20](v18, -1, -1);
    }

    else
    {
    }

    sub_1AD4D96D4(a2);
    return;
  }

  v6 = [v5 response];
  if (!v6)
  {
LABEL_18:
    v24 = v2;
    v25 = a2;
    v26 = sub_1ADB05F80();
    v27 = sub_1ADB06850();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v61 = v29;
      *v28 = 33686018;
      *(v28 + 4) = *&v24[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

      *(v28 + 6) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v30 = sub_1ADB07020();
        v32 = v31;
      }

      else
      {
        v30 = 7104878;
        v32 = 0xE300000000000000;
      }

      v48 = sub_1AD3CA88C(v30, v32, &v61);

      *(v28 + 8) = v48;
      _os_log_impl(&dword_1AD337000, v26, v27, "Websocket %{public}hd: URLSession: task:didCompleteWithError with an unknown kind of response, error: %s", v28, 0x10u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B26F9F20](v29, -1, -1);
      MEMORY[0x1B26F9F20](v28, -1, -1);
    }

    else
    {
    }

    sub_1AD4D96D4(a2);

    return;
  }

  v60 = v6;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v7 statusCode];
  if (v9 == 200)
  {
    v59 = v2;
    v33 = sub_1ADB05F80();
    v34 = sub_1ADB06840();
    if (!os_log_type_enabled(v33, v34))
    {

      v56 = v59;
LABEL_43:

      return;
    }

    v35 = swift_slowAlloc();
    *v35 = 33685760;
    *(v35 + 4) = *&v59[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

    _os_log_impl(&dword_1AD337000, v33, v34, "Websocket %{public}hd: URLSession: task:didCompleteWithError: Received Status Code 200", v35, 6u);
    MEMORY[0x1B26F9F20](v35, -1, -1);

LABEL_42:
    v56 = v60;
    goto LABEL_43;
  }

  if (v9 == 401)
  {
    v10 = v2;
    v11 = sub_1ADB05F80();
    v12 = sub_1ADB06850();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 33685760;
      *(v13 + 4) = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, v11, v12, "Websocket %{public}hd: URLSession: task:didCompleteWithError: Received Status Code 401", v13, 6u);
      MEMORY[0x1B26F9F20](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    if (*(&v10->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_connectionAttemptCount) >= 3)
    {
      v49 = v10;
      v50 = sub_1ADB05F80();
      v51 = sub_1ADB06850();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 33685760;
        *(v52 + 4) = *(&v49->isa + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier);

        _os_log_impl(&dword_1AD337000, v50, v51, "Websocket %{public}hd: URLSession: task:didCompleteWithError: Exceeded connection attempt limit, aborting", v52, 6u);
        MEMORY[0x1B26F9F20](v52, -1, -1);
      }

      else
      {

        v50 = v49;
      }

      sub_1AD4D96D4(a2);
      goto LABEL_42;
    }

    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = v5;

    v55 = a2;
    sub_1AD4DACAC(v10, v53, v54, a2);
  }

  else
  {
    v36 = v2;
    v37 = a2;
    v38 = v60;
    v39 = sub_1ADB05F80();
    v40 = sub_1ADB06850();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v38;
      v43 = swift_slowAlloc();
      v61 = v43;
      *v41 = 33686274;
      *(v41 + 4) = *&v36[OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_sessionIdentifier];

      *(v41 + 6) = 2048;
      *(v41 + 8) = [v8 statusCode];
      v44 = v42;

      *(v41 + 16) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v45 = sub_1ADB07020();
        v47 = v46;
      }

      else
      {
        v45 = 7104878;
        v47 = 0xE300000000000000;
      }

      v57 = sub_1AD3CA88C(v45, v47, &v61);

      *(v41 + 18) = v57;
      _os_log_impl(&dword_1AD337000, v39, v40, "Websocket %{public}hd: URLSession: task:didCompleteWithError: Status Code: %ld, Error: %s", v41, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1B26F9F20](v43, -1, -1);
      MEMORY[0x1B26F9F20](v41, -1, -1);

      v38 = v44;
    }

    else
    {
    }

    if (a2)
    {
      v58 = a2;
      sub_1AD4D96D4(a2);
    }

    else
    {
    }
  }
}

uint64_t sub_1AD4DBDEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t static ProvisioningCarKeyStepTrackKey.TrackedPass.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB59C060 = a1;
  return result;
}

id ProvisioningCarKeyStepTrackKey.TrackedPass.__allocating_init(passURL:subcredential:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_passURL;
  v7 = sub_1ADB05D20();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id ProvisioningCarKeyStepTrackKey.TrackedPass.init(passURL:subcredential:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_passURL;
  v6 = sub_1ADB05D20();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ProvisioningCarKeyStepTrackKey.TrackedPass();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for ProvisioningCarKeyStepTrackKey.TrackedPass()
{
  result = qword_1EB59C088;
  if (!qword_1EB59C088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ProvisioningCarKeyStepTrackKey.TrackedPass.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1ADB05D20();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  sub_1AD3D3200(0, &qword_1EB59C070);
  v14 = sub_1ADB06980();
  if (!v14 || (v15 = v14, (*(v8 + 56))(v6, 1, 1, v7), sub_1AD4DC57C(), sub_1ADB06D50(), v15, (*(v8 + 48))(v6, 1, v7) == 1))
  {

LABEL_4:
    type metadata accessor for ProvisioningCarKeyStepTrackKey.TrackedPass();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = *(v8 + 32);
  v17(v11, v6, v7);
  v17(v13, v11, v7);
  v18 = OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_passURL;
  (*(v8 + 16))(&v1[OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_passURL], v13, v7);
  sub_1AD3D3200(0, &unk_1EB59BAF0);
  v19 = sub_1ADB06980();
  v20 = *(v8 + 8);
  v20(v13, v7);
  if (!v19)
  {

    v20(&v2[v18], v7);
    goto LABEL_4;
  }

  *&v2[OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential] = v19;
  v21 = type metadata accessor for ProvisioningCarKeyStepTrackKey.TrackedPass();
  v23.receiver = v2;
  v23.super_class = v21;
  v22 = objc_msgSendSuper2(&v23, sel_init);

  return v22;
}

unint64_t sub_1AD4DC57C()
{
  result = qword_1EB59C078;
  if (!qword_1EB59C078)
  {
    sub_1ADB05D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59C078);
  }

  return result;
}

void sub_1AD4DC5FC(void *a1)
{
  v2 = v1;
  v4 = sub_1ADB05CE0();
  v5 = sub_1ADB06370();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential);
  v7 = sub_1ADB06370();
  [a1 encodeObject:v6 forKey:v7];
}

id ProvisioningCarKeyStepTrackKey.TrackedPass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningCarKeyStepTrackKey.TrackedPass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningCarKeyStepTrackKey.TrackedPass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 ProvisioningCarKeyStepTrackKey.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
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

uint64_t ProvisioningCarKeyStepTrackKey.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ProvisioningCarKeyStepTrackKey.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningCarKeyStepTrackKey.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD4DC9A4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningCarKeyStepTrackKey();
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

uint64_t sub_1AD4DCA64()
{
  result = sub_1ADB05D20();
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

void sub_1AD4DCB90(void *a1@<X8>)
{
  v25 = *(v1 + 24);
  v26 = *(v1 + 40);
  LOBYTE(v27) = *(v1 + 48);
  v3 = ProvisioningCredentialsConfiguration.Credential.carKeyTransferComponents.getter();
  if (v3)
  {
    v6 = v3;
    v7 = v5;

    v8 = [v6 vehicleIssuer];
    v9 = sub_1ADB063B0();
    v11 = v10;

    v12 = [v6 vehicleModel];
    v13 = sub_1ADB063B0();
    v15 = v14;

    v16 = 1;
  }

  else
  {
    if (*(v1 + 48))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v1 + 24);
    }

    v18 = [v17 carKeyTerminalPairingCredential];

    v9 = [v18 configuration];
    if (v9)
    {
      v19 = v9;
      v20 = [v19 issuerIdentifier];
      if (v20)
      {
        v21 = v20;
        v9 = sub_1ADB063B0();
        v11 = v22;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      v23 = [v19 localizedDescription];

      if (v23)
      {
        v13 = sub_1ADB063B0();
        v15 = v24;
      }

      else
      {

        v13 = 0;
        v15 = 0;
      }

      v16 = 0;
    }

    else
    {
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v11 = 1;
    }
  }

  *a1 = v9;
  a1[1] = v11;
  a1[2] = v13;
  a1[3] = v15;
  a1[4] = v16;
}

uint64_t sub_1AD4DCD7C(uint64_t a1, void *a2, uint64_t (*a3)(void *, void), uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *(a5 + 40);
  v18 = *(a5 + 48);
  aBlock = *(a5 + 24);
  v48 = v17;
  LOBYTE(v49) = v18;
  v19 = ProvisioningCredentialsConfiguration.Credential.carKeyTransferComponents.getter();
  if (!v19)
  {
    return a3(a2, 0);
  }

  v22 = v20;
  v23 = v21;

  v24 = [v23 activationOptions];
  if (!v24 || (v25 = v24, v26 = [v24 optionOfType_], v25, !v26) || (v27 = objc_msgSend(v26, sel_value), v26, !v27))
  {

    return a3(a2, 0);
  }

  v28 = [a6 targetDevice];
  if (!v28)
  {
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  if (([v28 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return a3(a2, 0);
  }

  v30 = [a7 identifier];
  if (!v30)
  {
LABEL_18:
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  v31 = v30;
  v46 = sub_1ADB063B0();
  v33 = v32;

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v34 = sub_1ADB05FA0();
  __swift_project_value_buffer(v34, qword_1EB59AB68);

  v35 = sub_1ADB05F80();
  v36 = sub_1ADB06860();

  if (os_log_type_enabled(v35, v36))
  {
    log = v35;
    v37 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v37 = 136315394;
    *(v37 + 4) = sub_1AD3CA88C(a8, a9, &aBlock);
    *(v37 + 12) = 2080;
    v38 = sub_1AD3CA88C(v46, v33, &aBlock);

    *(v37 + 14) = v38;
    _os_log_impl(&dword_1AD337000, log, v36, "[%s] Fetching shareData for key identifier: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v45, -1, -1);
    MEMORY[0x1B26F9F20](v37, -1, -1);
  }

  else
  {
  }

  v40 = swift_allocObject();
  v40[2] = a10;
  v40[3] = a11;
  v40[4] = a3;
  v40[5] = a4;
  v40[6] = a2;
  v50 = sub_1AD4DF104;
  v51 = v40;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v48 = sub_1AD4B7970;
  v49 = &block_descriptor_61_0;
  v41 = _Block_copy(&aBlock);
  v42 = v23;

  v43 = a2;

  [v29 carKeyGetPretrackShareDataForShare:v42 completion:v41];
  _Block_release(v41);
  swift_unknownObjectRelease();
}